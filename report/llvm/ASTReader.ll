Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ASTReader?download=true
inline.NumInlined: 33820
inline.NumDeleted: 13736
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 67
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5clang9ASTReader16ReadOptionsBlockERN4llvm15BitstreamCursorENS1_9StringRefEjbRNS_17ASTReaderListenerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.j:                                             ; preds = %bb.i
  br label %bb.y

bb.k:                                             ; preds = %bb.i
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !952
  store i32 0, ptr %i.l, align 8, !tbaa !873
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  call void @_ZN4llvm15BitstreamCursor10readRecordEjRNS_15SmallVectorImplImEEPNS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %20, ptr noundef nonnull align 8 dereferenceable(344) %0, i32 noundef %.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef null) #36
  %i.ac = load i8, ptr %i.o, align 8
  %i.ad = trunc i8 %i.ac to i1                    ; 2 uses
  %i.ae = xor i1 %i.ad, true
  br i1 %i.ad, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i65, label %bb.m

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i65: ; preds = %bb.k
  %i.af = load i64, ptr %20, align 8, !tbaa !1695, !noalias !3975
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr null, ptr %20, align 8, !tbaa !1695, !noalias !3975
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.ag, ptr %9, align 8, !tbaa !1697
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %i.ah = load ptr, ptr %9, align 8, !tbaa !1697  ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN4llvm5ErrorD2Ev.exit68, label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i65
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !159
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #36, !inline_history !16
  br label %_ZN4llvm5ErrorD2Ev.exit68

_ZN4llvm5ErrorD2Ev.exit68:                        ; preds = %bb.l, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.am = load i32, ptr %20, align 8, !tbaa !952
  switch i32 %i.am, label %bb.w [
    i32 1, label %bb.n
    i32 6, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
    i32 4, label %bb.s
    i32 5, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.an = call noundef zeroext i1 @_ZN5clang9ASTReader20ParseLanguageOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerEb(ptr noundef nonnull align 8 dereferenceable(528) %18, ptr %1, i64 %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %4)
  %spec.select = select i1 %i.an, i32 5, i32 %.049
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  call void @_ZN5clang14CodeGenOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(2496) %7) #36
  %i.ao = load ptr, ptr %18, align 8, !tbaa !872  ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !167
  %i.aq = load i64, ptr %i.r, align 8
  %i.ar = shl i64 %i.ap, 28
  %i.as = and i64 %i.ar, 1879048192
  %i.at = and i64 %i.aq, -1879048193
  %i.au = or disjoint i64 %i.at, %i.as            ; 2 uses
  store i64 %i.au, ptr %i.r, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !167
  %i.ax = load i64, ptr %i.s, align 8
  %i.ay = shl i64 %i.aw, 48
  %i.az = and i64 %i.ay, 844424930131968
  %i.ba = and i64 %i.ax, -844424930131969
  %i.bb = or disjoint i64 %i.ba, %i.az            ; 2 uses
  store i64 %i.bb, ptr %i.s, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !167
  %i.be = shl i64 %i.bd, 50
  %i.bf = and i64 %i.be, 3377699720527872
  %i.bg = and i64 %i.bb, -3377699720527873
  %i.bh = or disjoint i64 %i.bf, %i.bg
  store i64 %i.bh, ptr %i.s, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !167
  %i.bk = shl i64 %i.bj, 57
  %i.bl = and i64 %i.bk, 432345564227567616
  %i.bm = and i64 %i.au, -432345564227567617
  %i.bn = or disjoint i64 %i.bl, %i.bm
  store i64 %i.bn, ptr %i.r, align 8
  %i.bo = load ptr, ptr %5, align 8, !tbaa !159
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(2496) %7, ptr %1, i64 %2, i1 noundef zeroext %i.q, i1 noundef zeroext %4) #36, !inline_history !3976
  call void @_ZN5clang14CodeGenOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(2496) dereferenceable(2496) %7) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %spec.select55 = select i1 %i.br, i32 5, i32 %.049
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.bs = call noundef zeroext i1 @_ZN5clang9ASTReader18ParseTargetOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerEb(ptr noundef nonnull align 8 dereferenceable(528) %18, ptr %1, i64 %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %4)
  %spec.select56 = select i1 %i.bs, i32 5, i32 %.049
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  br i1 %4, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = call noundef zeroext i1 @_ZN5clang9ASTReader22ParseFileSystemOptionsERKN4llvm11SmallVectorImLj64EEEbRNS_17ASTReaderListenerE(ptr noundef nonnull align 8 dereferenceable(528) %18, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %spec.select57 = select i1 %i.bt, i32 5, i32 %.049
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  br i1 %4, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef zeroext i1 @_ZN5clang9ASTReader24ParseHeaderSearchOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerE(ptr noundef nonnull align 8 dereferenceable(528) %18, ptr %1, i64 %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %spec.select58 = select i1 %i.bu, i32 5, i32 %.049
  br label %bb.w

bb.u:                                             ; preds = %bb.m
  br i1 %4, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = call noundef zeroext i1 @_ZN5clang9ASTReader24ParsePreprocessorOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(528) %18, ptr %1, i64 %2, i1 noundef zeroext %i.q, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %spec.select59 = select i1 %i.bv, i32 5, i32 %.049
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.s, %bb.u, %_ZN4llvm5ErrorD2Ev.exit68
  %.8 = phi i32 [ %.049, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.049, %bb.m ], [ %spec.select, %bb.n ], [ %spec.select55, %bb.o ], [ %spec.select56, %bb.p ], [ %.049, %bb.u ], [ %spec.select59, %bb.v ], [ %.049, %bb.q ], [ %spec.select57, %bb.r ], [ %.049, %bb.s ], [ %spec.select58, %bb.t ]
  %.2 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.1, %bb.m ], [ %.1, %bb.n ], [ %.1, %bb.o ], [ %.1, %bb.p ], [ %.1, %bb.u ], [ %.1, %bb.v ], [ %.1, %bb.q ], [ %.1, %bb.r ], [ %.1, %bb.s ], [ %.1, %bb.t ]
  %i.bw = load i8, ptr %i.o, align 8
  %i.bx = trunc i8 %i.bw to i1
  br i1 %i.bx, label %bb.x, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %20, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.x
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !159
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.by) #36, !inline_history !9
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.w, %bb.x, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %_ZN4llvm8ExpectedIjED2Ev.exit, %bb.i, %bb.i, %_ZN4llvm5ErrorD2Ev.exit63
  %.10 = phi i32 [ %.049, %_ZN4llvm5ErrorD2Ev.exit63 ], [ %.8, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.049, %bb.j ], [ %.049, %bb.i ], [ %.049, %bb.i ]
  %.348 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit63 ], [ %i.ae, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.i ]
  %.4 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit63 ], [ %.2, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.049, %bb.j ], [ 1, %bb.i ], [ 1, %bb.i ] ; 2 uses
  %i.cc = load i8, ptr %i.n, align 8
  %i.cd = trunc i8 %i.cc to i1
  br i1 %i.cd, label %bb.z, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

bb.z:                                             ; preds = %bb.y
  %i.ce = load ptr, ptr %19, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i71, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i72

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i72: ; preds = %bb.z
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #36, !inline_history !13
  br label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit: ; preds = %bb.y, %bb.z, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br i1 %.348, label %bb.g, label %bb.aa, !llvm.loop !3973

bb.aa:                                            ; preds = %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit
  %i.ci = load ptr, ptr %18, align 8, !tbaa !872  ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.k
  br i1 %i.cj, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.ci) #36
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit60.thread, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit
  %.5 = phi i32 [ %.4, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit ], [ 1, %_ZN4llvm5ErrorD2Ev.exit60.thread ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang9ASTReader20ParseLanguageOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
_ZN5clang12SanitizerSet3setENS_13SanitizerMaskEb.exit:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.clang::LangOptions", align 8 ; 62 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.llvm::Triple", align 8     ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @_ZN5clang11LangOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(1136) %6) #36
  %i.f = load ptr, ptr %0, align 8, !tbaa !872    ; 100 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !167
  %i.h = load i64, ptr %6, align 8
  %i.i = and i64 %i.g, 1
  %i.j = and i64 %i.h, -274877906944
  %i.k = or disjoint i64 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !167
  %i.n = shl i64 %i.m, 1
  %i.o = and i64 %i.n, 2
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !167
  %i.s = shl i64 %i.r, 2
  %i.t = and i64 %i.s, 4
  %i.u = or disjoint i64 %i.p, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !167
  %i.x = shl i64 %i.w, 3
  %i.y = and i64 %i.x, 8
  %i.z = or disjoint i64 %i.u, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !167
  %i.ac = shl i64 %i.ab, 4
  %i.ad = and i64 %i.ac, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ag = shl i64 %i.af, 5
  %i.ah = and i64 %i.ag, 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !167
  %i.ak = shl i64 %i.aj, 6
  %i.al = and i64 %i.ak, 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.an = load i64, ptr %i.am, align 8, !tbaa !167
  %i.ao = shl i64 %i.an, 7
  %i.ap = and i64 %i.ao, 128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !167
  %i.as = shl i64 %i.ar, 8
  %i.at = and i64 %i.as, 256
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.av = load i64, ptr %i.au, align 8, !tbaa !167
  %i.aw = shl i64 %i.av, 9
  %i.ax = and i64 %i.aw, 512
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !167
  %i.ba = shl i64 %i.az, 10
  %i.bb = and i64 %i.ba, 1024
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !167
  %i.be = shl i64 %i.bd, 11
  %i.bf = and i64 %i.be, 2048
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !167
  %i.bi = shl i64 %i.bh, 12
  %i.bj = and i64 %i.bi, 4096
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !167
  %i.bm = shl i64 %i.bl, 13
  %i.bn = and i64 %i.bm, 8192
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !167
  %i.bq = shl i64 %i.bp, 14
  %i.br = and i64 %i.bq, 16384
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !167
  %i.bu = shl i64 %i.bt, 15
  %i.bv = and i64 %i.bu, 32768
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !167
  %i.by = shl i64 %i.bx, 16
  %i.bz = and i64 %i.by, 65536
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !167
  %i.cc = shl i64 %i.cb, 17
  %i.cd = and i64 %i.cc, 131072
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !167
  %i.cg = shl i64 %i.cf, 18
  %i.ch = and i64 %i.cg, 262144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !167
  %i.ck = shl i64 %i.cj, 19
  %i.cl = and i64 %i.ck, 524288
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !167
  %i.co = shl i64 %i.cn, 20
  %i.cp = and i64 %i.co, 1048576
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !167
  %i.cs = shl i64 %i.cr, 21
  %i.ct = and i64 %i.cs, 2097152
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !167
  %i.cw = shl i64 %i.cv, 22
  %i.cx = and i64 %i.cw, 4194304
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !167
  %i.da = shl i64 %i.cz, 23
  %i.db = and i64 %i.da, 8388608
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !167
  %i.de = shl i64 %i.dd, 24
  %i.df = and i64 %i.de, 16777216
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !167
  %i.di = shl i64 %i.dh, 25
  %i.dj = and i64 %i.di, 33554432
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !167
  %i.dm = shl i64 %i.dl, 26
  %i.dn = and i64 %i.dm, 67108864
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !167
  %i.dq = shl i64 %i.dp, 27
  %i.dr = and i64 %i.dq, 134217728
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !167
  %i.du = shl i64 %i.dt, 28
  %i.dv = and i64 %i.du, 268435456
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !167
  %i.dy = shl i64 %i.dx, 29
  %i.dz = and i64 %i.dy, 536870912
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !167
  %i.ec = shl i64 %i.eb, 30
  %i.ed = and i64 %i.ec, 1073741824
  %i.ee = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = shl i64 %i.ef, 31
  %i.eh = and i64 %i.eg, 2147483648
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !167
  %i.ek = shl i64 %i.ej, 32
  %i.el = and i64 %i.ek, 4294967296
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.en = load i64, ptr %i.em, align 8, !tbaa !167
  %i.eo = shl i64 %i.en, 33
  %i.ep = and i64 %i.eo, 8589934592
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !167
  %i.es = shl i64 %i.er, 34
  %i.et = and i64 %i.es, 17179869184
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !167
  %i.ew = shl i64 %i.ev, 35
  %i.ex = and i64 %i.ew, 34359738368
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 288
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !167
  %i.fa = shl i64 %i.ez, 36
  %i.fb = and i64 %i.fa, 68719476736
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !167
  %i.fe = shl i64 %i.fd, 37
  %i.ff = and i64 %i.fe, 137438953472
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.z, %i.ad
  %.masked1655.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ah
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1655.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.al
  %.masked1658.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ap
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1658.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.at
  %.masked1660.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ax
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1660.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bb
  %.masked1662.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bf
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1662.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bj
  %.masked1664.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bn
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1664.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.br
  %.masked1666.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bv
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1666.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bz
  %.masked1668.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.cd
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1668.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ch
  %.masked1670.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.cl
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1670.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.cp
  %.masked1672.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ct
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1672.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.cx
  %.masked1674.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.db
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1674.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.df
  %.masked1676.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.dj
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1676.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.dn
  %.masked1678.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.dr
  %.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1678.masked.masked.masked.masked.masked.masked.masked.masked, %i.dv
  %.masked1680.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked, %i.dz
  %.masked.masked.masked.masked.masked.masked = or i64 %.masked1680.masked.masked.masked.masked.masked.masked, %i.ed
  %.masked1682.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked, %i.eh
  %.masked.masked.masked.masked = or i64 %.masked1682.masked.masked.masked.masked, %i.el
  %.masked1684.masked.masked = or i64 %.masked.masked.masked.masked, %i.ep
  %.masked.masked = or i64 %.masked1684.masked.masked, %i.et
  %.masked1686 = or i64 %.masked.masked, %i.ex
  %i.fg = or i64 %.masked1686, %i.fb
  %i.fh = or disjoint i64 %i.fg, %i.ff
  store i64 %i.fh, ptr %6, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !167
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fl = and i64 %i.fj, 4294967295
  %i.fm = getelementptr inbounds nuw i8, ptr %i.f, i64 312
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !167
  %i.fo = shl i64 %i.fn, 32
  %i.fp = and i64 %i.fo, 4294967296
  %i.fq = or disjoint i64 %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !167
  %i.ft = shl i64 %i.fs, 33
  %i.fu = and i64 %i.ft, 8589934592
  %i.fv = or disjoint i64 %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !167
  %i.fy = shl i64 %i.fx, 34
  %i.fz = and i64 %i.fy, 17179869184
  %i.ga = or disjoint i64 %i.fv, %i.fz
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 336
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !167
  %i.gd = shl i64 %i.gc, 35
  %i.ge = and i64 %i.gd, 34359738368
  %i.gf = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !167
  %i.gh = shl i64 %i.gg, 36
  %i.gi = and i64 %i.gh, 68719476736
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !167
  %i.gl = shl i64 %i.gk, 37
  %i.gm = and i64 %i.gl, 137438953472
  %i.gn = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !167
  %i.gp = shl i64 %i.go, 38
  %i.gq = and i64 %i.gp, 274877906944
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !167
  %i.gt = shl i64 %i.gs, 39
  %i.gu = and i64 %i.gt, 549755813888
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !167
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 4 uses
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = shl i64 %i.gw, 36
  %i.ha = and i64 %i.gz, 206158430208
  %i.hb = and i64 %i.gy, -9007130535264257
  %i.hc = or disjoint i64 %i.hb, %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 384
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !167
  %i.hf = shl i64 %i.he, 38
  %i.hg = and i64 %i.hf, 824633720832
  %i.hh = or disjoint i64 %i.hc, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.f, i64 392
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !167
  %i.hk = shl i64 %i.hj, 40
  %i.hl = and i64 %i.hk, 1099511627776
  %i.hm = getelementptr inbounds nuw i8, ptr %i.f, i64 400
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !167
  %i.ho = shl i64 %i.hn, 41
  %i.hp = and i64 %i.ho, 2199023255552
  %i.hq = getelementptr inbounds nuw i8, ptr %i.f, i64 408
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !167
  %i.hs = shl i64 %i.hr, 42
  %i.ht = and i64 %i.hs, 4398046511104
  %i.hu = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !167
  %i.hw = shl i64 %i.hv, 43
  %i.hx = and i64 %i.hw, 8796093022208
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !167
  %i.ia = shl i64 %i.hz, 44
  %i.ib = and i64 %i.ia, 17592186044416
  %i.ic = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !167
  %i.ie = shl i64 %i.id, 45
  %i.if = and i64 %i.ie, 35184372088832
  %i.ig = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !167
  %i.ii = shl i64 %i.ih, 46
  %i.ij = and i64 %i.ii, 70368744177664
  %i.ik = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !167
  %i.im = shl i64 %i.il, 47
  %i.in = and i64 %i.im, 140737488355328
  %i.io = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !167
  %i.iq = shl i64 %i.ip, 48
  %i.ir = and i64 %i.iq, 281474976710656
  %i.is = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.it = load i64, ptr %i.is, align 8, !tbaa !167
  %i.iu = shl i64 %i.it, 49
  %i.iv = and i64 %i.iu, 562949953421312
  %i.iw = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !167
  %i.iy = shl i64 %i.ix, 50
  %i.iz = and i64 %i.iy, 1125899906842624
  %i.ja = getelementptr inbounds nuw i8, ptr %i.f, i64 480
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !167
  %i.jc = shl i64 %i.jb, 51
  %i.jd = and i64 %i.jc, 2251799813685248
  %i.je = getelementptr inbounds nuw i8, ptr %i.f, i64 488
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !167
  %i.jg = shl i64 %i.jf, 52
  %i.jh = and i64 %i.jg, 4503599627370496
  %i.ji = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !167
  %i.jk = shl i64 %i.jj, 40
  %i.jl = and i64 %i.jk, 3298534883328
  %i.jm = or disjoint i64 %i.jl, %i.hh
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !167
  %i.jp = shl i64 %i.jo, 53
  %i.jq = and i64 %i.jp, 9007199254740992
  %i.jr = getelementptr inbounds nuw i8, ptr %i.f, i64 512
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !167
  %i.jt = shl i64 %i.js, 54
  %i.ju = and i64 %i.jt, 18014398509481984
  %i.jv = getelementptr inbounds nuw i8, ptr %i.f, i64 520
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !167
  %i.jx = shl i64 %i.jw, 55
  %i.jy = and i64 %i.jx, 36028797018963968
  %i.jz = getelementptr inbounds nuw i8, ptr %i.f, i64 528
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !167
  %i.kb = shl i64 %i.ka, 56
  %i.kc = and i64 %i.kb, 72057594037927936
  %i.kd = getelementptr inbounds nuw i8, ptr %i.f, i64 536
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !167
  %i.kf = shl i64 %i.ke, 57
  %i.kg = and i64 %i.kf, 144115188075855872
  %i.kh = getelementptr inbounds nuw i8, ptr %i.f, i64 544
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !167
  %i.kj = shl i64 %i.ki, 58
  %i.kk = and i64 %i.kj, 288230376151711744
  %i.kl = getelementptr inbounds nuw i8, ptr %i.f, i64 552
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !167
  %i.kn = shl i64 %i.km, 59
  %i.ko = and i64 %i.kn, 576460752303423488
  %i.kp = getelementptr inbounds nuw i8, ptr %i.f, i64 560
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !167
  %i.kr = shl i64 %i.kq, 60
  %i.ks = and i64 %i.kr, 1152921504606846976
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 568
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !167
  %i.kv = shl i64 %i.ku, 61
  %i.kw = and i64 %i.kv, 2305843009213693952
  %i.kx = getelementptr inbounds nuw i8, ptr %i.f, i64 576
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !167
  %i.kz = shl i64 %i.ky, 62
  %.masked.masked1689.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.ga, %i.ge
  %.masked1688.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %.masked.masked1689.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.gi
  %.masked.masked1693.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1688.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.gm
  %.masked1692.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1693.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.gq
  %.masked.masked1696.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1692.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.gu
  %.masked1695.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1696.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.hl
  %.masked.masked1699.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1695.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.hp
  %.masked1698.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1699.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ht
  %.masked.masked1702.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1698.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.hx
  %.masked1701.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1702.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ib
  %.masked.masked1705.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1701.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.if
  %.masked1704.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1705.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ij
  %.masked.masked1708.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1704.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.in
  %.masked1707.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1708.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ir
  %.masked.masked1711.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1707.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.iv
  %.masked1710.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1711.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.iz
  %.masked.masked1714.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1710.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.jd
  %.masked1713.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1714.masked.masked.masked.masked.masked.masked.masked.masked, %i.jh
  %.masked.masked1717.masked.masked.masked.masked.masked.masked = or i64 %.masked1713.masked.masked.masked.masked.masked.masked.masked.masked, %i.jq
  %.masked1716.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1717.masked.masked.masked.masked.masked.masked, %i.ju
  %.masked.masked1720.masked.masked.masked.masked = or i64 %.masked1716.masked.masked.masked.masked.masked.masked, %i.jy
  %.masked1719.masked.masked.masked.masked = or i64 %.masked.masked1720.masked.masked.masked.masked, %i.kc
  %.masked.masked1723.masked.masked = or i64 %.masked1719.masked.masked.masked.masked, %i.kg
  %.masked1722.masked.masked = or i64 %.masked.masked1723.masked.masked, %i.kk
  %.masked.masked1726 = or i64 %.masked1722.masked.masked, %i.ko
  %.masked1725 = or i64 %.masked.masked1726, %i.ks
  %i.la = or i64 %.masked1725, %i.kw
  %i.lb = or i64 %i.la, %i.kz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.f, i64 584
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !167
  %i.le = shl i64 %i.ld, 63
  %i.lf = and i64 %i.lb, 9223372036854775807
  %i.lg = or disjoint i64 %i.lf, %i.le
  store i64 %i.lg, ptr %i.fk, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %i.f, i64 592
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !167
  %i.lj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8
  %i.ll = and i64 %i.li, 1
  %i.lm = and i64 %i.lk, -72057594037927936
  %i.ln = or disjoint i64 %i.lm, %i.ll
  %i.lo = getelementptr inbounds nuw i8, ptr %i.f, i64 600
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !167
  %i.lq = shl i64 %i.lp, 1
  %i.lr = and i64 %i.lq, 2
  %i.ls = or disjoint i64 %i.ln, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.f, i64 608
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !167
  %i.lv = shl i64 %i.lu, 2
  %i.lw = and i64 %i.lv, 4
  %i.lx = or disjoint i64 %i.ls, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %i.f, i64 616
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !167
  %i.ma = shl i64 %i.lz, 3
  %i.mb = and i64 %i.ma, 8
  %i.mc = or disjoint i64 %i.lx, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.me = load i64, ptr %i.md, align 8, !tbaa !167
  %i.mf = shl i64 %i.me, 4
  %i.mg = and i64 %i.mf, 16
  %i.mh = getelementptr inbounds nuw i8, ptr %i.f, i64 632
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !167
  %i.mj = shl i64 %i.mi, 5
  %i.mk = and i64 %i.mj, 32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.f, i64 640
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !167
  %i.mn = shl i64 %i.mm, 6
  %i.mo = and i64 %i.mn, 64
  %i.mp = getelementptr inbounds nuw i8, ptr %i.f, i64 648
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !167
  %i.mr = shl i64 %i.mq, 7
  %i.ms = and i64 %i.mr, 128
  %i.mt = getelementptr inbounds nuw i8, ptr %i.f, i64 656
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !167
  %i.mv = shl i64 %i.mu, 8
  %i.mw = and i64 %i.mv, 256
  %i.mx = getelementptr inbounds nuw i8, ptr %i.f, i64 664
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !167
  %i.mz = shl i64 %i.my, 9
  %i.na = and i64 %i.mz, 512
  %i.nb = getelementptr inbounds nuw i8, ptr %i.f, i64 672
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !167
  %i.nd = shl i64 %i.nc, 10
  %i.ne = and i64 %i.nd, 1024
  %i.nf = getelementptr inbounds nuw i8, ptr %i.f, i64 680
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !167
  %i.nh = shl i64 %i.ng, 11
  %i.ni = and i64 %i.nh, 2048
  %i.nj = getelementptr inbounds nuw i8, ptr %i.f, i64 688
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !167
  %i.nl = shl i64 %i.nk, 12
  %i.nm = and i64 %i.nl, 4096
  %i.nn = getelementptr inbounds nuw i8, ptr %i.f, i64 696
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !167
  %i.np = shl i64 %i.no, 13
  %i.nq = and i64 %i.np, 536862720
  %i.nr = getelementptr inbounds nuw i8, ptr %i.f, i64 704
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !167
  %i.nt = shl i64 %i.ns, 29
  %i.nu = and i64 %i.nt, 536870912
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 712
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !167
  %i.nx = shl i64 %i.nw, 30
  %i.ny = and i64 %i.nx, 1073741824
  %i.nz = getelementptr inbounds nuw i8, ptr %i.f, i64 720
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !167
  %i.ob = shl i64 %i.oa, 31
  %i.oc = and i64 %i.ob, 2147483648
  %i.od = getelementptr inbounds nuw i8, ptr %i.f, i64 728
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !167
  %i.of = shl i64 %i.oe, 32
  %i.og = and i64 %i.of, 4294967296
  %i.oh = getelementptr inbounds nuw i8, ptr %i.f, i64 736
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !167
  %i.oj = shl i64 %i.oi, 33
  %i.ok = and i64 %i.oj, 8589934592
  %i.ol = getelementptr inbounds nuw i8, ptr %i.f, i64 744
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !167
  %i.on = shl i64 %i.om, 34
  %i.oo = and i64 %i.on, 17179869184
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 752
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !167
  %i.or = shl i64 %i.oq, 35
  %i.os = and i64 %i.or, 34359738368
  %i.ot = getelementptr inbounds nuw i8, ptr %i.f, i64 760
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !167
  %i.ov = shl i64 %i.ou, 36
  %i.ow = and i64 %i.ov, 68719476736
  %i.ox = getelementptr inbounds nuw i8, ptr %i.f, i64 768
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !167
  %i.oz = shl i64 %i.oy, 37
  %i.pa = and i64 %i.oz, 137438953472
  %i.pb = getelementptr inbounds nuw i8, ptr %i.f, i64 776
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !167
  %i.pd = shl i64 %i.pc, 38
  %i.pe = and i64 %i.pd, 274877906944
  %i.pf = getelementptr inbounds nuw i8, ptr %i.f, i64 784
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !167
  %i.ph = shl i64 %i.pg, 39
  %i.pi = and i64 %i.ph, 549755813888
  %i.pj = getelementptr inbounds nuw i8, ptr %i.f, i64 792
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !167
  %i.pl = shl i64 %i.pk, 40
  %i.pm = and i64 %i.pl, 1099511627776
  %i.pn = load ptr, ptr %0, align 8, !tbaa !872   ; 100 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 800
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !167
  %i.pq = shl i64 %i.pp, 41
  %i.pr = and i64 %i.pq, 2199023255552
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pn, i64 808
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !167
  %i.pu = shl i64 %i.pt, 42
  %i.pv = and i64 %i.pu, 4398046511104
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pn, i64 816
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !167
  %i.py = shl i64 %i.px, 43
  %i.pz = and i64 %i.py, 8796093022208
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pn, i64 824
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !167
  %i.qc = shl i64 %i.qb, 44
  %i.qd = and i64 %i.qc, 17592186044416
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pn, i64 832
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !167
  %i.qg = shl i64 %i.qf, 42
  %i.qh = and i64 %i.qg, 30786325577728
  %i.qi = or disjoint i64 %i.qh, %i.jm
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pn, i64 840
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !167
  %i.ql = shl i64 %i.qk, 45
  %i.qm = and i64 %i.ql, 35184372088832
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pn, i64 848
  %i.qo = load i64, ptr %i.qn, align 8, !tbaa !167
  %i.qp = shl i64 %i.qo, 46
  %i.qq = and i64 %i.qp, 70368744177664
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pn, i64 856
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !167
  %i.qt = shl i64 %i.qs, 47
  %i.qu = and i64 %i.qt, 140737488355328
  %i.qv = getelementptr inbounds nuw i8, ptr %i.pn, i64 864
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !167
  %i.qx = shl i64 %i.qw, 48
  %i.qy = and i64 %i.qx, 281474976710656
  %i.qz = getelementptr inbounds nuw i8, ptr %i.pn, i64 872
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !167
  %i.rb = shl i64 %i.ra, 49
  %i.rc = and i64 %i.rb, 562949953421312
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pn, i64 880
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !167
  %i.rf = shl i64 %i.re, 50
  %i.rg = and i64 %i.rf, 1125899906842624
  %i.rh = getelementptr inbounds nuw i8, ptr %i.pn, i64 888
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !167
  %i.rj = shl i64 %i.ri, 51
  %i.rk = and i64 %i.rj, 2251799813685248
  %i.rl = getelementptr inbounds nuw i8, ptr %i.pn, i64 896
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !167
  %i.rn = shl i64 %i.rm, 52
  %i.ro = and i64 %i.rn, 4503599627370496
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pn, i64 904
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !167
  %i.rr = shl i64 %i.rq, 53
  %i.rs = and i64 %i.rr, 9007199254740992
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pn, i64 912
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !167
  %i.rv = shl i64 %i.ru, 54
  %i.rw = and i64 %i.rv, 18014398509481984
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pn, i64 920
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !167
  %i.rz = shl i64 %i.ry, 55
  %i.sa = and i64 %i.rz, 36028797018963968
  %.masked.masked1729.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.mc, %i.mg
  %.masked1728.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1729.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.mk
  %.masked.masked1733.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1728.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.mo
  %.masked1732.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1733.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ms
  %.masked.masked1736.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1732.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.mw
  %.masked1735.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1736.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.na
  %.masked.masked1739.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1735.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ne
  %.masked1738.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1739.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ni
  %.masked.masked1742.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1738.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.nm
  %.masked1741.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1742.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.nq
  %.masked.masked1745.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1741.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.nu
  %.masked1744.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1745.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ny
  %.masked.masked1748.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1744.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.oc
  %.masked1747.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1748.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.og
  %.masked.masked1751.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1747.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ok
  %.masked1750.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1751.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.oo
  %.masked.masked1754.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1750.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.os
  %.masked1753.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1754.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ow
  %.masked.masked1757.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1753.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pa
  %.masked1756.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1757.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pe
  %.masked.masked1760.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1756.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pi
  %.masked1759.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1760.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pm
  %.masked.masked1763.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1759.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pr
  %.masked1762.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1763.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pv
  %.masked.masked1766.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1762.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.pz
  %.masked1765.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1766.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.qd
  %.masked.masked1769.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1765.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.qm
  %.masked1768.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked1769.masked.masked.masked.masked.masked.masked.masked, %i.qq
  %.masked.masked1772.masked.masked.masked.masked.masked = or i64 %.masked1768.masked.masked.masked.masked.masked.masked.masked, %i.qu
  %.masked1771.masked.masked.masked.masked.masked = or i64 %.masked.masked1772.masked.masked.masked.masked.masked, %i.qy
  %.masked.masked1775.masked.masked.masked = or i64 %.masked1771.masked.masked.masked.masked.masked, %i.rc
  %.masked1774.masked.masked.masked = or i64 %.masked.masked1775.masked.masked.masked, %i.rg
  %.masked.masked1778.masked = or i64 %.masked1774.masked.masked.masked, %i.rk
  %.masked1777.masked = or i64 %.masked.masked1778.masked, %i.ro
  %.masked = or i64 %.masked1777.masked, %i.rs
  %i.sb = or i64 %.masked, %i.rw
  %i.sc = or disjoint i64 %i.sb, %i.sa
  store i64 %i.sc, ptr %i.lj, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pn, i64 928
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !167
  %i.sf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.sg = and i64 %i.se, 4294967295
  %i.sh = getelementptr inbounds nuw i8, ptr %i.pn, i64 936
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !167
  %i.sj = shl i64 %i.si, 32
  %i.sk = or disjoint i64 %i.sj, %i.sg
  store i64 %i.sk, ptr %i.sf, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pn, i64 944
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !167
  %i.sn = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8
  %i.sp = and i64 %i.sm, 1
  %i.sq = and i64 %i.so, 4294967294
  %i.sr = or disjoint i64 %i.sq, %i.sp
  %i.ss = getelementptr inbounds nuw i8, ptr %i.pn, i64 952
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !167
  %i.su = shl i64 %i.st, 32
  %i.sv = or disjoint i64 %i.sr, %i.su
  store i64 %i.sv, ptr %i.sn, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.pn, i64 960
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !167
  %i.sy = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.sz = and i64 %i.sx, 4294967295
  %i.ta = load i64, ptr %i.sy, align 8
  %i.tb = and i64 %i.ta, -9223372036854775808
  %i.tc = or disjoint i64 %i.tb, %i.sz
  %i.td = getelementptr inbounds nuw i8, ptr %i.pn, i64 968
  %i.te = load i64, ptr %i.td, align 8, !tbaa !167
  %i.tf = shl i64 %i.te, 32
  %i.tg = and i64 %i.tf, 4294967296
  %i.th = or disjoint i64 %i.tc, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pn, i64 976
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !167
  %i.tk = shl i64 %i.tj, 33
  %i.tl = and i64 %i.tk, 8589934592
  %i.tm = or disjoint i64 %i.th, %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.pn, i64 984
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !167
  %i.tp = shl i64 %i.to, 34
  %i.tq = and i64 %i.tp, 17179869184
  %i.tr = or disjoint i64 %i.tm, %i.tq
  %i.ts = getelementptr inbounds nuw i8, ptr %i.pn, i64 992
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !167
  %i.tu = shl i64 %i.tt, 35
  %i.tv = and i64 %i.tu, 103079215104
  %i.tw = getelementptr inbounds nuw i8, ptr %i.pn, i64 1000
  %i.tx = load i64, ptr %i.tw, align 8, !tbaa !167
  %i.ty = shl i64 %i.tx, 37
  %i.tz = and i64 %i.ty, 137438953472
  %i.ua = getelementptr inbounds nuw i8, ptr %i.pn, i64 1008
  %i.ub = load i64, ptr %i.ua, align 8, !tbaa !167
  %i.uc = shl i64 %i.ub, 38
  %i.ud = and i64 %i.uc, 274877906944
  %i.ue = getelementptr inbounds nuw i8, ptr %i.pn, i64 1016
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !167
  %i.ug = shl i64 %i.uf, 39
  %i.uh = and i64 %i.ug, 549755813888
  %i.ui = getelementptr inbounds nuw i8, ptr %i.pn, i64 1024
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !167
  %i.uk = shl i64 %i.uj, 40
  %i.ul = and i64 %i.uk, 1099511627776
  %i.um = getelementptr inbounds nuw i8, ptr %i.pn, i64 1032
  %i.un = load i64, ptr %i.um, align 8, !tbaa !167
  %i.uo = shl i64 %i.un, 41
  %i.up = and i64 %i.uo, 2199023255552
  %i.uq = getelementptr inbounds nuw i8, ptr %i.pn, i64 1040
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !167
  %i.us = shl i64 %i.ur, 42
  %i.ut = and i64 %i.us, 4398046511104
  %i.uu = getelementptr inbounds nuw i8, ptr %i.pn, i64 1048
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !167
  %i.uw = shl i64 %i.uv, 43
  %i.ux = and i64 %i.uw, 8796093022208
  %i.uy = getelementptr inbounds nuw i8, ptr %i.pn, i64 1056
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !167
  %i.va = shl i64 %i.uz, 44
  %i.vb = and i64 %i.va, 17592186044416
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pn, i64 1064
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !167
  %i.ve = shl i64 %i.vd, 45
  %i.vf = and i64 %i.ve, 35184372088832
  %i.vg = getelementptr inbounds nuw i8, ptr %i.pn, i64 1072
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !167
  %i.vi = shl i64 %i.vh, 46
  %i.vj = and i64 %i.vi, 70368744177664
  %i.vk = getelementptr inbounds nuw i8, ptr %i.pn, i64 1080
  %i.vl = load i64, ptr %i.vk, align 8, !tbaa !167
  %i.vm = shl i64 %i.vl, 47
  %i.vn = and i64 %i.vm, 140737488355328
  %i.vo = getelementptr inbounds nuw i8, ptr %i.pn, i64 1088
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !167
  %i.vq = shl i64 %i.vp, 48
  %i.vr = and i64 %i.vq, 281474976710656
  %i.vs = getelementptr inbounds nuw i8, ptr %i.pn, i64 1096
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !167
  %i.vu = shl i64 %i.vt, 49
  %i.vv = and i64 %i.vu, 562949953421312
  %i.vw = getelementptr inbounds nuw i8, ptr %i.pn, i64 1104
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !167
  %i.vy = shl i64 %i.vx, 50
  %i.vz = and i64 %i.vy, 1125899906842624
  %i.wa = getelementptr inbounds nuw i8, ptr %i.pn, i64 1112
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !167
  %i.wc = shl i64 %i.wb, 51
  %i.wd = and i64 %i.wc, 2251799813685248
  %i.we = getelementptr inbounds nuw i8, ptr %i.pn, i64 1120
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !167
  %i.wg = shl i64 %i.wf, 52
  %i.wh = and i64 %i.wg, 4503599627370496
  %i.wi = getelementptr inbounds nuw i8, ptr %i.pn, i64 1128
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !167
  %i.wk = shl i64 %i.wj, 45
  %i.wl = and i64 %i.wk, 246290604621824
  %i.wm = getelementptr inbounds nuw i8, ptr %i.pn, i64 1136
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !167
  %i.wo = shl i64 %i.wn, 53
  %i.wp = and i64 %i.wo, 9007199254740992
  %i.wq = getelementptr inbounds nuw i8, ptr %i.pn, i64 1144
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !167
  %i.ws = shl i64 %i.wr, 54
  %i.wt = and i64 %i.ws, 18014398509481984
  %i.wu = getelementptr inbounds nuw i8, ptr %i.pn, i64 1152
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !167
  %i.ww = shl i64 %i.wv, 55
  %i.wx = and i64 %i.ww, 36028797018963968
  %i.wy = getelementptr inbounds nuw i8, ptr %i.pn, i64 1160
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !167
  %i.xa = shl i64 %i.wz, 56
  %i.xb = and i64 %i.xa, 1080863910568919040
  %i.xc = getelementptr inbounds nuw i8, ptr %i.pn, i64 1168
  %i.xd = load i64, ptr %i.xc, align 8, !tbaa !167
  %i.xe = shl i64 %i.xd, 60
  %i.xf = and i64 %i.xe, 1152921504606846976
  %i.xg = getelementptr inbounds nuw i8, ptr %i.pn, i64 1176
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !167
  %i.xi = shl i64 %i.xh, 48
  %i.xj = and i64 %i.xi, 844424930131968
  %i.xk = getelementptr inbounds nuw i8, ptr %i.pn, i64 1184
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !167
  %i.xm = shl i64 %i.xl, 50
  %i.xn = and i64 %i.xm, 7881299347898368
  %.masked1822 = or disjoint i64 %i.wl, %i.qi
  %i.xo = or i64 %i.xj, %.masked1822
  %i.xp = or disjoint i64 %i.xo, %i.xn
  store i64 %i.xp, ptr %i.gx, align 8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.pn, i64 1192
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !167
  %i.xs = shl i64 %i.xr, 61
  %i.xt = and i64 %i.xs, 2305843009213693952
  %i.xu = getelementptr inbounds nuw i8, ptr %i.pn, i64 1200
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !167
  %i.xw = shl i64 %i.xv, 62
  %i.xx = and i64 %i.xw, 4611686018427387904
  %.masked1781.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.tr, %i.tv
  %.masked1783.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1781.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.tz
  %.masked1785.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1783.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ud
  %.masked1787.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1785.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.uh
  %.masked1789.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1787.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ul
  %.masked1791.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1789.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.up
  %.masked1793.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1791.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ut
  %.masked1795.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1793.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ux
  %.masked1797.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1795.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vb
  %.masked1799.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1797.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vf
  %.masked1801.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1799.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vj
  %.masked1803.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1801.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vn
  %.masked1805.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1803.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vr
  %.masked1807.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1805.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.vv
  %.masked1809.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1807.masked.masked.masked.masked.masked.masked.masked.masked, %i.vz
  %.masked1811.masked.masked.masked.masked.masked.masked = or i64 %.masked1809.masked.masked.masked.masked.masked.masked.masked, %i.wd
  %.masked1813.masked.masked.masked.masked.masked = or i64 %.masked1811.masked.masked.masked.masked.masked.masked, %i.wh
  %.masked1815.masked.masked.masked.masked = or i64 %.masked1813.masked.masked.masked.masked.masked, %i.wp
  %.masked1817.masked.masked.masked = or i64 %.masked1815.masked.masked.masked.masked, %i.wt
  %.masked1819.masked.masked = or i64 %.masked1817.masked.masked.masked, %i.wx
  %.masked1824.masked = or i64 %.masked1819.masked.masked, %i.xb
  %.masked1826 = or i64 %.masked1824.masked, %i.xf
  %i.xy = or i64 %.masked1826, %i.xt
  %i.xz = or disjoint i64 %i.xy, %i.xx
  store i64 %i.xz, ptr %i.sy, align 8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.pn, i64 1208
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !167
  %i.yc = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.yd = and i64 %i.yb, 4294967295
  %i.ye = load i64, ptr %i.yc, align 8
  %i.yf = and i64 %i.ye, -8589934592
  %i.yg = or disjoint i64 %i.yf, %i.yd
  %i.yh = getelementptr inbounds nuw i8, ptr %i.pn, i64 1216
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !167
  %i.yj = shl i64 %i.yi, 32
  %i.yk = and i64 %i.yj, 4294967296
  %i.yl = or disjoint i64 %i.yg, %i.yk
  store i64 %i.yl, ptr %i.yc, align 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.pn, i64 1224
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !167
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.yp = and i64 %i.yn, 4294967295
  %i.yq = load i64, ptr %i.yo, align 8
  %i.yr = and i64 %i.yq, -549755813888
  %i.ys = or disjoint i64 %i.yr, %i.yp
  %i.yt = getelementptr inbounds nuw i8, ptr %i.pn, i64 1232
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !167
  %i.yv = shl i64 %i.yu, 32
  %i.yw = and i64 %i.yv, 4294967296
  %i.yx = or disjoint i64 %i.ys, %i.yw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.pn, i64 1240
  %i.yz = load i64, ptr %i.yy, align 8, !tbaa !167
  %i.za = shl i64 %i.yz, 33
  %i.zb = and i64 %i.za, 8589934592
  %i.zc = or disjoint i64 %i.yx, %i.zb
  %i.zd = getelementptr inbounds nuw i8, ptr %i.pn, i64 1248
  %i.ze = load i64, ptr %i.zd, align 8, !tbaa !167
  %i.zf = shl i64 %i.ze, 34
  %i.zg = and i64 %i.zf, 17179869184
  %i.zh = or disjoint i64 %i.zc, %i.zg
  %i.zi = getelementptr inbounds nuw i8, ptr %i.pn, i64 1256
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !167
  %i.zk = shl i64 %i.zj, 35
  %i.zl = and i64 %i.zk, 34359738368
  %i.zm = getelementptr inbounds nuw i8, ptr %i.pn, i64 1264
  %i.zn = load i64, ptr %i.zm, align 8, !tbaa !167
  %i.zo = shl i64 %i.zn, 36
  %i.zp = and i64 %i.zo, 68719476736
  %i.zq = getelementptr inbounds nuw i8, ptr %i.pn, i64 1272
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !167
  %i.zs = shl i64 %i.zr, 37
  %i.zt = and i64 %i.zs, 137438953472
  %i.zu = getelementptr inbounds nuw i8, ptr %i.pn, i64 1280
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !167
  %i.zw = shl i64 %i.zv, 38
  %i.zx = and i64 %i.zw, 274877906944
  %.masked1829.masked = or disjoint i64 %i.zh, %i.zl
  %.masked1831 = or i64 %.masked1829.masked, %i.zp
  %i.zy = or i64 %.masked1831, %i.zt
  %i.zz = or disjoint i64 %i.zy, %i.zx
  store i64 %i.zz, ptr %i.yo, align 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.pn, i64 1288
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !167
  %i.aac = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.aad = and i64 %i.aab, 4294967295
  %i.aae = load i64, ptr %i.aac, align 8
  %i.aaf = and i64 %i.aae, -274877906944
  %i.aag = or disjoint i64 %i.aaf, %i.aad
  %i.aah = getelementptr inbounds nuw i8, ptr %i.pn, i64 1296
  %i.aai = load i64, ptr %i.aah, align 8, !tbaa !167
  %i.aaj = shl i64 %i.aai, 32
  %i.aak = and i64 %i.aaj, 4294967296
  %i.aal = or disjoint i64 %i.aag, %i.aak
  %i.aam = getelementptr inbounds nuw i8, ptr %i.pn, i64 1304
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !167
  %i.aao = shl i64 %i.aan, 33
  %i.aap = and i64 %i.aao, 8589934592
  %i.aaq = or disjoint i64 %i.aal, %i.aap
  %i.aar = getelementptr inbounds nuw i8, ptr %i.pn, i64 1312
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !167
  %i.aat = shl i64 %i.aas, 34
  %i.aau = and i64 %i.aat, 17179869184
  %i.aav = or disjoint i64 %i.aaq, %i.aau
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.pn, i64 1320
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !167
  %i.aay = shl i64 %i.aax, 35
  %i.aaz = and i64 %i.aay, 34359738368
  %i.aba = getelementptr inbounds nuw i8, ptr %i.pn, i64 1328
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !167
  %i.abc = shl i64 %i.abb, 36
  %i.abd = and i64 %i.abc, 68719476736
  %i.abe = getelementptr inbounds nuw i8, ptr %i.pn, i64 1336
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !167
  %i.abg = shl i64 %i.abf, 37
  %i.abh = and i64 %i.abg, 137438953472
  %.masked1834 = or disjoint i64 %i.aav, %i.aaz
  %i.abi = or i64 %.masked1834, %i.abd
  %i.abj = or disjoint i64 %i.abi, %i.abh
  store i64 %i.abj, ptr %i.aac, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %i.pn, i64 1344
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !167
  %i.abm = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.abn = and i64 %i.abl, 4294967295
  %i.abo = getelementptr inbounds nuw i8, ptr %i.pn, i64 1352
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !167
  %i.abq = shl i64 %i.abp, 32
  %i.abr = or disjoint i64 %i.abq, %i.abn
  store i64 %i.abr, ptr %i.abm, align 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.pn, i64 1360
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !167
  %i.abu = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.abv = and i64 %i.abt, 4294967295
  %i.abw = load i64, ptr %i.abu, align 8
  %i.abx = and i64 %i.abw, -4503599627370496
  %i.aby = or disjoint i64 %i.abx, %i.abv
  %i.abz = getelementptr inbounds nuw i8, ptr %i.pn, i64 1368
  %i.aca = load i64, ptr %i.abz, align 8, !tbaa !167
  %i.acb = shl i64 %i.aca, 32
  %i.acc = and i64 %i.acb, 4294967296
  %i.acd = or disjoint i64 %i.aby, %i.acc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.pn, i64 1376
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !167
  %i.acg = shl i64 %i.acf, 33
  %i.ach = and i64 %i.acg, 8589934592
  %i.aci = or disjoint i64 %i.acd, %i.ach
  %i.acj = getelementptr inbounds nuw i8, ptr %i.pn, i64 1384
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !167
  %i.acl = shl i64 %i.ack, 34
  %i.acm = and i64 %i.acl, 17179869184
  %i.acn = or disjoint i64 %i.aci, %i.acm
  %i.aco = getelementptr inbounds nuw i8, ptr %i.pn, i64 1392
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !167
  %i.acq = shl i64 %i.acp, 35
  %i.acr = and i64 %i.acq, 34359738368
  %i.acs = getelementptr inbounds nuw i8, ptr %i.pn, i64 1400
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !167
  %i.acu = shl i64 %i.act, 36
  %i.acv = and i64 %i.acu, 68719476736
  %i.acw = getelementptr inbounds nuw i8, ptr %i.pn, i64 1408
  %i.acx = load i64, ptr %i.acw, align 8, !tbaa !167
  %i.acy = shl i64 %i.acx, 37
  %i.acz = and i64 %i.acy, 137438953472
  %i.ada = getelementptr inbounds nuw i8, ptr %i.pn, i64 1416
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !167
  %i.adc = shl i64 %i.adb, 38
  %i.add = and i64 %i.adc, 274877906944
  %i.ade = getelementptr inbounds nuw i8, ptr %i.pn, i64 1424
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !167
  %i.adg = shl i64 %i.adf, 39
  %i.adh = and i64 %i.adg, 549755813888
  %i.adi = getelementptr inbounds nuw i8, ptr %i.pn, i64 1432
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !167
  %i.adk = shl i64 %i.adj, 40
  %i.adl = and i64 %i.adk, 1099511627776
  %i.adm = getelementptr inbounds nuw i8, ptr %i.pn, i64 1440
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !167
  %i.ado = getelementptr inbounds nuw i8, ptr %6, i64 216 ; 2 uses
  %i.adp = load i64, ptr %i.ado, align 8
  %i.adq = and i64 %i.adn, 65535
  %i.adr = and i64 %i.adp, -2147483648
  %i.ads = or disjoint i64 %i.adr, %i.adq
  %i.adt = getelementptr inbounds nuw i8, ptr %i.pn, i64 1448
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !167
  %i.adv = shl i64 %i.adu, 41
  %i.adw = and i64 %i.adv, 2199023255552
  %i.adx = getelementptr inbounds nuw i8, ptr %i.pn, i64 1456
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !167
  %i.adz = shl i64 %i.ady, 42
  %i.aea = and i64 %i.adz, 4398046511104
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.pn, i64 1464
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !167
  %i.aed = shl i64 %i.aec, 43
  %i.aee = and i64 %i.aed, 8796093022208
  %i.aef = getelementptr inbounds nuw i8, ptr %i.pn, i64 1472
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !167
  %i.aeh = shl i64 %i.aeg, 44
  %i.aei = and i64 %i.aeh, 17592186044416
  %i.aej = getelementptr inbounds nuw i8, ptr %i.pn, i64 1480
  %i.aek = load i64, ptr %i.aej, align 8, !tbaa !167
  %i.ael = shl i64 %i.aek, 45
  %i.aem = and i64 %i.ael, 35184372088832
  %i.aen = getelementptr inbounds nuw i8, ptr %i.pn, i64 1488
  %i.aeo = load i64, ptr %i.aen, align 8, !tbaa !167
  %i.aep = shl i64 %i.aeo, 46
  %i.aeq = and i64 %i.aep, 70368744177664
  %i.aer = getelementptr inbounds nuw i8, ptr %i.pn, i64 1496
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !167
  %i.aet = shl i64 %i.aes, 47
  %i.aeu = and i64 %i.aet, 140737488355328
  %i.aev = getelementptr inbounds nuw i8, ptr %i.pn, i64 1504
  %i.aew = load i64, ptr %i.aev, align 8, !tbaa !167
  %i.aex = shl i64 %i.aew, 48
  %i.aey = and i64 %i.aex, 281474976710656
  %i.aez = getelementptr inbounds nuw i8, ptr %i.pn, i64 1512
  %i.afa = load i64, ptr %i.aez, align 8, !tbaa !167
  %i.afb = shl i64 %i.afa, 49
  %i.afc = and i64 %i.afb, 562949953421312
  %i.afd = getelementptr inbounds nuw i8, ptr %i.pn, i64 1520
  %i.afe = load i64, ptr %i.afd, align 8, !tbaa !167
  %i.aff = shl i64 %i.afe, 50
  %i.afg = and i64 %i.aff, 1125899906842624
  %i.afh = getelementptr inbounds nuw i8, ptr %i.pn, i64 1528
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !167
  %i.afj = shl i64 %i.afi, 51
  %i.afk = and i64 %i.afj, 2251799813685248
  %.masked1837.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.acn, %i.acr
  %.masked1839.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1837.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.acv
  %.masked1841.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1839.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.acz
  %.masked1843.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1841.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.add
  %.masked1845.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1843.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.adh
  %.masked1847.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1845.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.adl
  %.masked1849.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1847.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.adw
  %.masked1851.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1849.masked.masked.masked.masked.masked.masked.masked.masked, %i.aea
  %.masked1853.masked.masked.masked.masked.masked.masked = or i64 %.masked1851.masked.masked.masked.masked.masked.masked.masked, %i.aee
  %.masked1855.masked.masked.masked.masked.masked = or i64 %.masked1853.masked.masked.masked.masked.masked.masked, %i.aei
  %.masked1857.masked.masked.masked.masked = or i64 %.masked1855.masked.masked.masked.masked.masked, %i.aem
  %.masked1859.masked.masked.masked = or i64 %.masked1857.masked.masked.masked.masked, %i.aeq
  %.masked1861.masked.masked = or i64 %.masked1859.masked.masked.masked, %i.aeu
  %.masked1863.masked = or i64 %.masked1861.masked.masked, %i.aey
  %.masked1865 = or i64 %.masked1863.masked, %i.afc
  %i.afl = or i64 %.masked1865, %i.afg
  %i.afm = or disjoint i64 %i.afl, %i.afk
  store i64 %i.afm, ptr %i.abu, align 8
  %i.afn = getelementptr inbounds nuw i8, ptr %i.pn, i64 1536
  %i.afo = load i64, ptr %i.afn, align 8, !tbaa !167
  %i.afp = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.afq = and i64 %i.afo, 4294967295
  %i.afr = load i64, ptr %i.afp, align 8
  %i.afs = and i64 %i.afr, -140737488355328
  %i.aft = or disjoint i64 %i.afs, %i.afq
  %i.afu = getelementptr inbounds nuw i8, ptr %i.pn, i64 1544
  %i.afv = load i64, ptr %i.afu, align 8, !tbaa !167
  %i.afw = shl i64 %i.afv, 32
  %i.afx = and i64 %i.afw, 4294967296
  %i.afy = or disjoint i64 %i.aft, %i.afx
  %i.afz = getelementptr inbounds nuw i8, ptr %i.pn, i64 1552
  %i.aga = load i64, ptr %i.afz, align 8, !tbaa !167
  %i.agb = shl i64 %i.aga, 33
  %i.agc = and i64 %i.agb, 8589934592
  %i.agd = or disjoint i64 %i.afy, %i.agc
  %i.age = getelementptr inbounds nuw i8, ptr %i.pn, i64 1560
  %i.agf = load i64, ptr %i.age, align 8, !tbaa !167
  %i.agg = shl i64 %i.agf, 34
  %i.agh = and i64 %i.agg, 17179869184
  %i.agi = or disjoint i64 %i.agd, %i.agh
  %i.agj = getelementptr inbounds nuw i8, ptr %i.pn, i64 1568
  %i.agk = load i64, ptr %i.agj, align 8, !tbaa !167
  %i.agl = shl i64 %i.agk, 35
  %i.agm = and i64 %i.agl, 34359738368
  %i.agn = getelementptr inbounds nuw i8, ptr %i.pn, i64 1576
  %i.ago = load i64, ptr %i.agn, align 8, !tbaa !167
  %i.agp = shl i64 %i.ago, 36
  %i.agq = and i64 %i.agp, 68719476736
  %i.agr = getelementptr inbounds nuw i8, ptr %i.pn, i64 1584
  %i.ags = load i64, ptr %i.agr, align 8, !tbaa !167
  %i.agt = shl i64 %i.ags, 37
  %i.agu = and i64 %i.agt, 137438953472
  %i.agv = getelementptr inbounds nuw i8, ptr %i.pn, i64 1592
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !167
  %i.agx = shl i64 %i.agw, 16
  %i.agy = and i64 %i.agx, 196608
  %i.agz = or disjoint i64 %i.agy, %i.ads
  %i.aha = load ptr, ptr %0, align 8, !tbaa !872  ; 97 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 1600
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !167
  %i.ahd = shl i64 %i.ahc, 38
  %i.ahe = and i64 %i.ahd, 274877906944
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.aha, i64 1608
  %i.ahg = load i64, ptr %i.ahf, align 8, !tbaa !167
  %i.ahh = shl i64 %i.ahg, 39
  %i.ahi = and i64 %i.ahh, 549755813888
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.aha, i64 1616
  %i.ahk = load i64, ptr %i.ahj, align 8, !tbaa !167
  %i.ahl = shl i64 %i.ahk, 40
  %i.ahm = and i64 %i.ahl, 1099511627776
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.aha, i64 1624
  %i.aho = load i64, ptr %i.ahn, align 8, !tbaa !167
  %i.ahp = shl i64 %i.aho, 41
  %i.ahq = and i64 %i.ahp, 2199023255552
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aha, i64 1632
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !167
  %i.aht = shl i64 %i.ahs, 42
  %i.ahu = and i64 %i.aht, 4398046511104
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.aha, i64 1640
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !167
  %i.ahx = shl i64 %i.ahw, 43
  %i.ahy = and i64 %i.ahx, 8796093022208
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.aha, i64 1648
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !167
  %i.aib = shl i64 %i.aia, 44
  %i.aic = and i64 %i.aib, 17592186044416
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aha, i64 1656
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !167
  %i.aif = shl i64 %i.aie, 45
  %i.aig = and i64 %i.aif, 35184372088832
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aha, i64 1664
  %i.aii = load i64, ptr %i.aih, align 8, !tbaa !167
  %i.aij = shl i64 %i.aii, 46
  %i.aik = and i64 %i.aij, 70368744177664
  %.masked1868.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.agi, %i.agm
  %.masked1870.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1868.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.agq
  %.masked1872.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1870.masked.masked.masked.masked.masked.masked.masked.masked, %i.agu
  %.masked1874.masked.masked.masked.masked.masked.masked = or i64 %.masked1872.masked.masked.masked.masked.masked.masked.masked, %i.ahe
  %.masked1876.masked.masked.masked.masked.masked = or i64 %.masked1874.masked.masked.masked.masked.masked.masked, %i.ahi
  %.masked1878.masked.masked.masked.masked = or i64 %.masked1876.masked.masked.masked.masked.masked, %i.ahm
  %.masked1880.masked.masked.masked = or i64 %.masked1878.masked.masked.masked.masked, %i.ahq
  %.masked1882.masked.masked = or i64 %.masked1880.masked.masked.masked, %i.ahu
  %.masked1884.masked = or i64 %.masked1882.masked.masked, %i.ahy
  %.masked1886 = or i64 %.masked1884.masked, %i.aic
  %i.ail = or i64 %.masked1886, %i.aig
  %i.aim = or disjoint i64 %i.ail, %i.aik
  store i64 %i.aim, ptr %i.afp, align 8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aha, i64 1672
  %i.aio = load i64, ptr %i.ain, align 8, !tbaa !167
  %i.aip = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.aiq = and i64 %i.aio, 4294967295
  %i.air = getelementptr inbounds nuw i8, ptr %i.aha, i64 1680
  %i.ais = load i64, ptr %i.air, align 8, !tbaa !167
  %i.ait = shl i64 %i.ais, 32
  %i.aiu = and i64 %i.ait, 4294967296
  %i.aiv = or disjoint i64 %i.aiq, %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aha, i64 1688
  %i.aix = load i64, ptr %i.aiw, align 8, !tbaa !167
  %i.aiy = shl i64 %i.aix, 33
  %i.aiz = and i64 %i.aiy, 8589934592
  %i.aja = or disjoint i64 %i.aiv, %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aha, i64 1696
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !167
  %i.ajd = shl i64 %i.ajc, 34
  %i.aje = and i64 %i.ajd, 17179869184
  %i.ajf = or disjoint i64 %i.aja, %i.aje
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aha, i64 1704
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !167
  %i.aji = shl i64 %i.ajh, 35
  %i.ajj = and i64 %i.aji, 34359738368
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aha, i64 1712
  %i.ajl = load i64, ptr %i.ajk, align 8, !tbaa !167
  %i.ajm = shl i64 %i.ajl, 36
  %i.ajn = and i64 %i.ajm, 68719476736
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aha, i64 1720
  %i.ajp = load i64, ptr %i.ajo, align 8, !tbaa !167
  %i.ajq = shl i64 %i.ajp, 37
  %i.ajr = and i64 %i.ajq, 137438953472
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.aha, i64 1728
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !167
  %i.aju = shl i64 %i.ajt, 38
  %i.ajv = and i64 %i.aju, 274877906944
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.aha, i64 1736
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !167
  %i.ajy = shl i64 %i.ajx, 39
  %i.ajz = and i64 %i.ajy, 549755813888
  %i.aka = getelementptr inbounds nuw i8, ptr %i.aha, i64 1744
  %i.akb = load i64, ptr %i.aka, align 8, !tbaa !167
  %i.akc = shl i64 %i.akb, 40
  %i.akd = and i64 %i.akc, 1099511627776
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aha, i64 1752
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !167
  %i.akg = shl i64 %i.akf, 41
  %i.akh = and i64 %i.akg, 2199023255552
  %i.aki = getelementptr inbounds nuw i8, ptr %i.aha, i64 1760
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !167
  %i.akk = shl i64 %i.akj, 42
  %i.akl = and i64 %i.akk, 4398046511104
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aha, i64 1768
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !167
  %i.ako = shl i64 %i.akn, 43
  %i.akp = and i64 %i.ako, 8796093022208
  %i.akq = getelementptr inbounds nuw i8, ptr %i.aha, i64 1776
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !167
  %i.aks = shl i64 %i.akr, 44
  %i.akt = and i64 %i.aks, 17592186044416
  %i.aku = getelementptr inbounds nuw i8, ptr %i.aha, i64 1784
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !167
  %i.akw = shl i64 %i.akv, 45
  %i.akx = and i64 %i.akw, 35184372088832
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aha, i64 1792
  %i.akz = load i64, ptr %i.aky, align 8, !tbaa !167
  %i.ala = shl i64 %i.akz, 18
  %i.alb = and i64 %i.ala, 786432
  %i.alc = or disjoint i64 %i.alb, %i.agz
  %i.ald = getelementptr inbounds nuw i8, ptr %i.aha, i64 1800
  %i.ale = load i64, ptr %i.ald, align 8, !tbaa !167
  %i.alf = shl i64 %i.ale, 46
  %i.alg = and i64 %i.alf, 70368744177664
  %i.alh = getelementptr inbounds nuw i8, ptr %i.aha, i64 1808
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !167
  %i.alj = shl i64 %i.ali, 47
  %i.alk = and i64 %i.alj, 140737488355328
  %i.all = getelementptr inbounds nuw i8, ptr %i.aha, i64 1816
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !167
  %i.aln = shl i64 %i.alm, 20
  %i.alo = and i64 %i.aln, 7340032
  %i.alp = or disjoint i64 %i.alo, %i.alc
  %i.alq = getelementptr inbounds nuw i8, ptr %i.aha, i64 1824
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !167
  %i.als = shl i64 %i.alr, 48
  %i.alt = and i64 %i.als, 281474976710656
  %i.alu = getelementptr inbounds nuw i8, ptr %i.aha, i64 1832
  %i.alv = load i64, ptr %i.alu, align 8, !tbaa !167
  %i.alw = shl i64 %i.alv, 49
  %i.alx = and i64 %i.alw, 562949953421312
  %i.aly = getelementptr inbounds nuw i8, ptr %i.aha, i64 1840
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !167
  %i.ama = shl i64 %i.alz, 50
  %i.amb = and i64 %i.ama, 1125899906842624
  %i.amc = getelementptr inbounds nuw i8, ptr %i.aha, i64 1848
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !167
  %i.ame = shl i64 %i.amd, 51
  %i.amf = and i64 %i.ame, 2251799813685248
  %i.amg = getelementptr inbounds nuw i8, ptr %i.aha, i64 1856
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !167
  %i.ami = shl i64 %i.amh, 52
  %i.amj = and i64 %i.ami, 4503599627370496
  %i.amk = getelementptr inbounds nuw i8, ptr %i.aha, i64 1864
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !167
  %i.amm = shl i64 %i.aml, 53
  %i.amn = and i64 %i.amm, 9007199254740992
  %i.amo = getelementptr inbounds nuw i8, ptr %i.aha, i64 1872
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !167
  %i.amq = shl i64 %i.amp, 54
  %i.amr = and i64 %i.amq, 18014398509481984
  %i.ams = getelementptr inbounds nuw i8, ptr %i.aha, i64 1880
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !167
  %i.amu = shl i64 %i.amt, 55
  %i.amv = and i64 %i.amu, 36028797018963968
  %i.amw = getelementptr inbounds nuw i8, ptr %i.aha, i64 1888
  %i.amx = load i64, ptr %i.amw, align 8, !tbaa !167
  %i.amy = shl i64 %i.amx, 56
  %i.amz = and i64 %i.amy, 72057594037927936
  %i.ana = getelementptr inbounds nuw i8, ptr %i.aha, i64 1896
  %i.anb = load i64, ptr %i.ana, align 8, !tbaa !167
  %i.anc = shl i64 %i.anb, 57
  %i.and = and i64 %i.anc, 144115188075855872
  %i.ane = getelementptr inbounds nuw i8, ptr %i.aha, i64 1904
  %i.anf = load i64, ptr %i.ane, align 8, !tbaa !167
  %i.ang = shl i64 %i.anf, 23
  %i.anh = and i64 %i.ang, 25165824
  %i.ani = getelementptr inbounds nuw i8, ptr %i.aha, i64 1912
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !167
  %i.ank = shl i64 %i.anj, 58
  %i.anl = and i64 %i.ank, 288230376151711744
  %i.anm = getelementptr inbounds nuw i8, ptr %i.aha, i64 1920
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !167
  %i.ano = shl i64 %i.ann, 59
  %i.anp = and i64 %i.ano, 576460752303423488
  %i.anq = getelementptr inbounds nuw i8, ptr %i.aha, i64 1928
  %i.anr = load i64, ptr %i.anq, align 8, !tbaa !167
  %i.ans = shl i64 %i.anr, 25
  %i.ant = and i64 %i.ans, 100663296
  %i.anu = getelementptr inbounds nuw i8, ptr %i.aha, i64 1936
  %i.anv = load i64, ptr %i.anu, align 8, !tbaa !167
  %i.anw = shl i64 %i.anv, 27
  %i.anx = and i64 %i.anw, 402653184
  %i.any = getelementptr inbounds nuw i8, ptr %i.aha, i64 1944
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !167
  %i.aoa = shl i64 %i.anz, 29
  %i.aob = and i64 %i.aoa, 1610612736
  %.masked1871.masked = or disjoint i64 %i.anh, %i.alp
  %.masked1873 = or i64 %i.ant, %.masked1871.masked
  %13 = or i64 %.masked1873, %i.anx
  %14 = or disjoint i64 %13, %i.aob
  store i64 %14, ptr %i.ado, align 8
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.aha, i64 1952
  %i.aod = load i64, ptr %i.aoc, align 8, !tbaa !167
  %i.aoe = shl i64 %i.aod, 32
  %i.aof = and i64 %i.aoe, 12884901888
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aha, i64 1960
  %i.aoh = load i64, ptr %i.aog, align 8, !tbaa !167
  %i.aoi = shl i64 %i.aoh, 60
  %i.aoj = and i64 %i.aoi, 1152921504606846976
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aha, i64 1968
  %i.aol = load i64, ptr %i.aok, align 8, !tbaa !167
  %i.aom = shl i64 %i.aol, 61
  %i.aon = and i64 %i.aom, 2305843009213693952
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aha, i64 1976
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !167
  %i.aoq = shl i64 %i.aop, 62
  %.masked1889.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.ajf, %i.ajj
  %.masked1891.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %.masked1889.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ajn
  %.masked1893.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1891.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ajr
  %.masked1895.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1893.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ajv
  %.masked1897.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1895.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.ajz
  %.masked1899.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1897.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akd
  %.masked1901.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1899.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akh
  %.masked1903.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1901.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akl
  %.masked1905.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1903.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akp
  %.masked1907.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1905.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akt
  %.masked1909.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1907.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.akx
  %.masked1911.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1909.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.alg
  %.masked1913.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1911.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.alk
  %.masked1915.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1913.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.alt
  %.masked1917.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1915.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.alx
  %.masked1919.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1917.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.amb
  %.masked1921.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1919.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.amf
  %.masked1923.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1921.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.amj
  %.masked1925.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1923.masked.masked.masked.masked.masked.masked.masked.masked, %i.amn
  %.masked1927.masked.masked.masked.masked.masked.masked = or i64 %.masked1925.masked.masked.masked.masked.masked.masked.masked, %i.amr
  %.masked1929.masked.masked.masked.masked.masked = or i64 %.masked1927.masked.masked.masked.masked.masked.masked, %i.amv
  %.masked1931.masked.masked.masked.masked = or i64 %.masked1929.masked.masked.masked.masked.masked, %i.amz
  %.masked1933.masked.masked.masked = or i64 %.masked1931.masked.masked.masked.masked, %i.and
  %.masked1942.masked.masked = or i64 %.masked1933.masked.masked.masked, %i.anl
  %.masked1944.masked = or i64 %.masked1942.masked.masked, %i.anp
  %.masked1946 = or i64 %.masked1944.masked, %i.aoj
  %i.aor = or i64 %.masked1946, %i.aon
  %i.aos = or i64 %i.aor, %i.aoq
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aha, i64 1984
  %i.aou = load i64, ptr %i.aot, align 8, !tbaa !167
  %i.aov = shl i64 %i.aou, 63
  %i.aow = and i64 %i.aos, 9223372036854775807
  %i.aox = or disjoint i64 %i.aow, %i.aov
  store i64 %i.aox, ptr %i.aip, align 8
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aha, i64 1992
  %i.aoz = load i64, ptr %i.aoy, align 8, !tbaa !167
  %i.apa = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.apb = load i64, ptr %i.apa, align 8
  %i.apc = and i64 %i.aoz, 1
  %i.apd = and i64 %i.apb, 4294901760
  %i.ape = or disjoint i64 %i.apd, %i.apc
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aha, i64 2000
  %i.apg = load i64, ptr %i.apf, align 8, !tbaa !167
  %i.aph = shl i64 %i.apg, 1
  %i.api = and i64 %i.aph, 2
  %i.apj = or disjoint i64 %i.ape, %i.api
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aha, i64 2008
  %i.apl = load i64, ptr %i.apk, align 8, !tbaa !167
  %i.apm = shl i64 %i.apl, 2
  %i.apn = and i64 %i.apm, 4
  %i.apo = or disjoint i64 %i.apj, %i.apn
  %i.app = getelementptr inbounds nuw i8, ptr %i.aha, i64 2016
  %i.apq = load i64, ptr %i.app, align 8, !tbaa !167
  %i.apr = shl i64 %i.apq, 3
  %i.aps = and i64 %i.apr, 8
  %i.apt = or disjoint i64 %i.apo, %i.aps
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aha, i64 2024
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !167
  %i.apw = shl i64 %i.apv, 4
  %i.apx = and i64 %i.apw, 16
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aha, i64 2032
  %i.apz = load i64, ptr %i.apy, align 8, !tbaa !167
  %i.aqa = shl i64 %i.apz, 34
  %i.aqb = and i64 %i.aqa, 51539607552
  %15 = or disjoint i64 %i.aqb, %i.aof
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aha, i64 2040
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !167
  %i.aqe = shl i64 %i.aqd, 5
  %i.aqf = and i64 %i.aqe, 32
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aha, i64 2048
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !167
  %i.aqi = shl i64 %i.aqh, 6
  %i.aqj = and i64 %i.aqi, 64
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aha, i64 2056
  %i.aql = load i64, ptr %i.aqk, align 8, !tbaa !167
  %i.aqm = shl i64 %i.aql, 36
  %i.aqn = and i64 %i.aqm, 206158430208
  %16 = or disjoint i64 %i.aqn, %15
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aha, i64 2064
  %i.aqp = load i64, ptr %i.aqo, align 8, !tbaa !167
  %i.aqq = shl i64 %i.aqp, 7
  %i.aqr = and i64 %i.aqq, 128
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aha, i64 2072
  %i.aqt = load i64, ptr %i.aqs, align 8, !tbaa !167
  %i.aqu = shl i64 %i.aqt, 8
  %i.aqv = and i64 %i.aqu, 256
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aha, i64 2080
  %i.aqx = load i64, ptr %i.aqw, align 8, !tbaa !167
  %i.aqy = shl i64 %i.aqx, 9
  %i.aqz = and i64 %i.aqy, 512
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aha, i64 2088
  %i.arb = load i64, ptr %i.ara, align 8, !tbaa !167
  %i.arc = shl i64 %i.arb, 10
  %i.ard = and i64 %i.arc, 1024
  %i.are = getelementptr inbounds nuw i8, ptr %i.aha, i64 2096
  %i.arf = load i64, ptr %i.are, align 8, !tbaa !167
  %i.arg = shl i64 %i.arf, 11
  %i.arh = and i64 %i.arg, 2048
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aha, i64 2104
  %i.arj = load i64, ptr %i.ari, align 8, !tbaa !167
  %i.ark = shl i64 %i.arj, 38
  %i.arl = and i64 %i.ark, 824633720832
  %17 = or disjoint i64 %i.arl, %16
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aha, i64 2112
  %i.arn = load i64, ptr %i.arm, align 8, !tbaa !167
  %i.aro = shl i64 %i.arn, 40
  %i.arp = and i64 %i.aro, 7696581394432
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aha, i64 2120
  %i.arr = load i64, ptr %i.arq, align 8, !tbaa !167
  %i.ars = shl i64 %i.arr, 43
  %i.art = and i64 %i.ars, 61572651155456
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aha, i64 2128
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !167
  %i.arw = shl i64 %i.arv, 12
  %i.arx = and i64 %i.arw, 4096
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aha, i64 2136
  %i.arz = load i64, ptr %i.ary, align 8, !tbaa !167
  %i.asa = shl i64 %i.arz, 13
  %i.asb = and i64 %i.asa, 8192
  %i.asc = getelementptr inbounds nuw i8, ptr %i.aha, i64 2144
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !167
  %i.ase = shl i64 %i.asd, 46
  %i.asf = and i64 %i.ase, 492581209243648
  %i.asg = getelementptr inbounds nuw i8, ptr %i.aha, i64 2152
  %i.ash = load i64, ptr %i.asg, align 8, !tbaa !167
  %i.asi = shl i64 %i.ash, 49
  %i.asj = and i64 %i.asi, 3940649673949184
  %i.ask = getelementptr inbounds nuw i8, ptr %i.aha, i64 2160
  %i.asl = load i64, ptr %i.ask, align 8, !tbaa !167
  %i.asm = shl i64 %i.asl, 52
  %i.asn = and i64 %i.asm, 31525197391593472
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aha, i64 2168
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !167
  %i.asq = shl i64 %i.asp, 55
  %i.asr = and i64 %i.asq, 252201579132747776
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aha, i64 2176
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !167
  %i.asu = shl i64 %i.ast, 14
  %i.asv = and i64 %i.asu, 16384
  %i.asw = getelementptr inbounds nuw i8, ptr %i.aha, i64 2184
  %i.asx = load i64, ptr %i.asw, align 8, !tbaa !167
  %i.asy = shl i64 %i.asx, 15
  %i.asz = and i64 %i.asy, 32768
  %i.ata = getelementptr inbounds nuw i8, ptr %i.aha, i64 2192
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !167
  %i.atc = shl i64 %i.atb, 58
  %i.atd = and i64 %i.atc, 864691128455135232
  %i.ate = getelementptr inbounds nuw i8, ptr %i.aha, i64 2200
  %i.atf = load i64, ptr %i.ate, align 8, !tbaa !167
  %i.atg = shl i64 %i.atf, 60
  %.masked1975.masked.masked.masked.masked.masked = or disjoint i64 %17, %i.arp
  %.masked1977.masked.masked.masked.masked = or disjoint i64 %.masked1975.masked.masked.masked.masked.masked, %i.art
  %.masked1979.masked.masked.masked = or i64 %.masked1977.masked.masked.masked.masked, %i.asf
  %.masked1981.masked.masked = or i64 %.masked1979.masked.masked.masked, %i.asj
  %.masked1987.masked = or i64 %.masked1981.masked.masked, %i.asn
  %.masked1989 = or i64 %.masked1987.masked, %i.asr
  %i.ath = or i64 %.masked1989, %i.atd
  %i.ati = or i64 %i.ath, %i.atg
  %i.atj = getelementptr inbounds nuw i8, ptr %i.aha, i64 2208
  %i.atk = load i64, ptr %i.atj, align 8, !tbaa !167
  %i.atl = shl i64 %i.atk, 32
  %.masked1951.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.apt, %i.apx
  %.masked1955.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1951.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.aqf
  %.masked1957.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1955.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.aqj
  %.masked1959.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1957.masked.masked.masked.masked.masked.masked.masked.masked, %i.aqr
  %.masked1961.masked.masked.masked.masked.masked.masked.a = or i64 %.masked1959.masked.masked.masked.masked.masked.masked.masked, %i.aqv
  %.masked1963.masked.masked.masked.masked.masked = or i64 %.masked1961.masked.masked.masked.masked.masked.masked.a, %i.aqz
  %.masked1971.masked.masked.masked.masked = or i64 %.masked1963.masked.masked.masked.masked.masked, %i.ard
  %.masked1973.masked.masked.masked = or i64 %.masked1971.masked.masked.masked.masked, %i.arh
  %.masked1983.masked.masked = or i64 %.masked1973.masked.masked.masked, %i.arx
  %.masked1985.masked = or i64 %.masked1983.masked.masked, %i.asb
  %.masked1991 = or i64 %.masked1985.masked, %i.asv
  %i.atm = or i64 %.masked1991, %i.asz
  %i.atn = or disjoint i64 %i.atm, %i.atl
  store i64 %i.atn, ptr %i.apa, align 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.aha, i64 2216
  %i.atp = load i64, ptr %i.ato, align 8, !tbaa !167
  %i.atq = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.atr = and i64 %i.atp, 4294967295
  %i.ats = load i64, ptr %i.atq, align 8
  %i.att = and i64 %i.ats, -8589934592
  %i.atu = or disjoint i64 %i.att, %i.atr
  %i.atv = getelementptr inbounds nuw i8, ptr %i.aha, i64 2224
  %i.atw = load i64, ptr %i.atv, align 8, !tbaa !167
  %i.atx = shl i64 %i.atw, 62
  %i.aty = and i64 %i.ati, 4611686014132420608
  %i.atz = or disjoint i64 %i.aty, %i.atx
  %18 = lshr exact i64 %i.atz, 32
  %19 = trunc nuw i64 %18 to i32
  %20 = getelementptr inbounds nuw i8, ptr %6, i64 220
  store i32 %19, ptr %20, align 4
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aha, i64 2232
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !167
  %i.auc = shl i64 %i.aub, 32
  %i.aud = and i64 %i.auc, 4294967296
  %i.aue = or disjoint i64 %i.aud, %i.atu
  store i64 %i.aue, ptr %i.atq, align 8
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aha, i64 2240
  %i.aug = load i64, ptr %i.auf, align 8, !tbaa !167
  %i.auh = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.aui = trunc i64 %i.aug to i16
  %i.auj = and i16 %i.aui, 3
  %i.auk = getelementptr inbounds nuw i8, ptr %i.aha, i64 2248
  %i.aul = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.aum = load <4 x i64>, ptr %i.auk, align 8, !tbaa !167 ; 2 uses
  %i.aun = shufflevector <4 x i64> %i.aum, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.auo = and <2 x i64> %i.aun, splat (i64 4294967295)
  %i.aup = shufflevector <4 x i64> %i.aum, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.auq = shl <2 x i64> %i.aup, splat (i64 32)
  %i.aur = or disjoint <2 x i64> %i.auq, %i.auo
  store <2 x i64> %i.aur, ptr %i.aul, align 8
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aha, i64 2280
  %i.aut = load i64, ptr %i.aus, align 8, !tbaa !167
  %i.auu = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.auv = load i64, ptr %i.auu, align 8
  %i.auw = and i64 %i.aut, 1
  %i.aux = and i64 %i.auv, 4294967294
  %i.auy = or disjoint i64 %i.aux, %i.auw
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aha, i64 2288
  %i.ava = load i64, ptr %i.auz, align 8, !tbaa !167
  %i.avb = shl i64 %i.ava, 32
  %i.avc = or disjoint i64 %i.auy, %i.avb
  store i64 %i.avc, ptr %i.auu, align 8
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aha, i64 2296
  %i.ave = load i64, ptr %i.avd, align 8, !tbaa !167
  %i.avf = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.avg = and i64 %i.ave, 4294967295
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aha, i64 2304
  %i.avi = load i64, ptr %i.avh, align 8, !tbaa !167
  %i.avj = shl i64 %i.avi, 32
  %i.avk = or disjoint i64 %i.avj, %i.avg
  store i64 %i.avk, ptr %i.avf, align 8
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aha, i64 2312
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !167
  %i.avn = trunc i64 %i.avm to i16
  %i.avo = shl i16 %i.avn, 2
  %i.avp = and i16 %i.avo, 12
  %i.avq = or disjoint i16 %i.avp, %i.auj
  %i.avr = getelementptr inbounds nuw i8, ptr %i.aha, i64 2320
  %i.avs = load i64, ptr %i.avr, align 8, !tbaa !167
  %i.avt = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.avu = load i64, ptr %i.avt, align 8
  %i.avv = and i64 %i.avs, 1
  %i.avw = and i64 %i.avu, 4278190080
  %i.avx = or disjoint i64 %i.avw, %i.avv
  %i.avy = getelementptr inbounds nuw i8, ptr %i.aha, i64 2328
  %i.avz = load i64, ptr %i.avy, align 8, !tbaa !167
  %i.awa = shl i64 %i.avz, 1
  %i.awb = and i64 %i.awa, 2
  %i.awc = or disjoint i64 %i.avx, %i.awb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.aha, i64 2336
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !167
  %i.awf = shl i64 %i.awe, 2
  %i.awg = and i64 %i.awf, 4
  %i.awh = or disjoint i64 %i.awc, %i.awg
  %i.awi = getelementptr inbounds nuw i8, ptr %i.aha, i64 2344
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !167
  %i.awk = shl i64 %i.awj, 3
  %i.awl = and i64 %i.awk, 8
  %i.awm = or disjoint i64 %i.awh, %i.awl
  %i.awn = getelementptr inbounds nuw i8, ptr %i.aha, i64 2352
  %i.awo = load i64, ptr %i.awn, align 8, !tbaa !167
  %i.awp = shl i64 %i.awo, 4
  %i.awq = and i64 %i.awp, 16
  %i.awr = getelementptr inbounds nuw i8, ptr %i.aha, i64 2360
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !167
  %i.awt = shl i64 %i.aws, 5
  %i.awu = and i64 %i.awt, 32
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aha, i64 2368
  %i.aww = load i64, ptr %i.awv, align 8, !tbaa !167
  %i.awx = shl i64 %i.aww, 6
  %i.awy = and i64 %i.awx, 192
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aha, i64 2376
  %i.axa = load i64, ptr %i.awz, align 8, !tbaa !167
  %i.axb = shl i64 %i.axa, 8
  %i.axc = and i64 %i.axb, 256
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aha, i64 2384
  %i.axe = load i64, ptr %i.axd, align 8, !tbaa !167
  %i.axf = shl i64 %i.axe, 9
  %i.axg = and i64 %i.axf, 512
  %i.axh = getelementptr inbounds nuw i8, ptr %i.aha, i64 2392
  %i.axi = load i64, ptr %i.axh, align 8, !tbaa !167
  %i.axj = shl i64 %i.axi, 10
  %i.axk = and i64 %i.axj, 1024
  %i.axl = load ptr, ptr %0, align 8, !tbaa !872  ; 85 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 2400
  %i.axn = load i64, ptr %i.axm, align 8, !tbaa !167
  %i.axo = shl i64 %i.axn, 11
  %i.axp = and i64 %i.axo, 2048
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axl, i64 2408
  %i.axr = load i64, ptr %i.axq, align 8, !tbaa !167
  %i.axs = shl i64 %i.axr, 12
  %i.axt = and i64 %i.axs, 4096
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axl, i64 2416
  %i.axv = load i64, ptr %i.axu, align 8, !tbaa !167
  %i.axw = shl i64 %i.axv, 13
  %i.axx = and i64 %i.axw, 8192
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axl, i64 2424
  %i.axz = load i64, ptr %i.axy, align 8, !tbaa !167
  %i.aya = trunc i64 %i.axz to i16
  %i.ayb = shl i16 %i.aya, 4
  %i.ayc = and i16 %i.ayb, 240
  %i.ayd = or disjoint i16 %i.ayc, %i.avq
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axl, i64 2432
  %i.ayf = load i64, ptr %i.aye, align 8, !tbaa !167
  %i.ayg = shl i64 %i.ayf, 14
  %i.ayh = and i64 %i.ayg, 507904
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axl, i64 2440
  %i.ayj = load i64, ptr %i.ayi, align 8, !tbaa !167
  %i.ayk = shl i64 %i.ayj, 19
  %i.ayl = and i64 %i.ayk, 16252928
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axl, i64 2448
  %i.ayn = load i64, ptr %i.aym, align 8, !tbaa !167
  %i.ayo = shl i64 %i.ayn, 32
  %.masked1994.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.awm, %i.awq
  %.masked1996.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1994.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.awu
  %.masked1998.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked1996.masked.masked.masked.masked.masked.masked.masked.masked, %i.awy
  %.masked2000.masked.masked.masked.masked.masked.masked = or i64 %.masked1998.masked.masked.masked.masked.masked.masked.masked, %i.axc
  %.masked2002.masked.masked.masked.masked.masked = or i64 %.masked2000.masked.masked.masked.masked.masked.masked, %i.axg
  %.masked2004.masked.masked.masked.masked = or i64 %.masked2002.masked.masked.masked.masked.masked, %i.axk
  %.masked2006.masked.masked.masked = or i64 %.masked2004.masked.masked.masked.masked, %i.axp
  %.masked2008.masked.masked = or i64 %.masked2006.masked.masked.masked, %i.axt
  %.masked2010.masked = or i64 %.masked2008.masked.masked, %i.axx
  %.masked2012 = or i64 %.masked2010.masked, %i.ayh
  %i.ayp = or i64 %.masked2012, %i.ayl
  %i.ayq = or disjoint i64 %i.ayp, %i.ayo
  store i64 %i.ayq, ptr %i.avt, align 8
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axl, i64 2456
  %i.ays = load i64, ptr %i.ayr, align 8, !tbaa !167
  %i.ayt = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.ayu = load i64, ptr %i.ayt, align 8
  %i.ayv = and i64 %i.ays, 1
  %i.ayw = and i64 %i.ayu, 4294967264
  %i.ayx = or disjoint i64 %i.ayw, %i.ayv
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axl, i64 2464
  %i.ayz = load i64, ptr %i.ayy, align 8, !tbaa !167
  %i.aza = shl i64 %i.ayz, 1
  %i.azb = and i64 %i.aza, 2
  %i.azc = or disjoint i64 %i.ayx, %i.azb
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axl, i64 2472
  %i.aze = load i64, ptr %i.azd, align 8, !tbaa !167
  %i.azf = shl i64 %i.aze, 2
  %i.azg = and i64 %i.azf, 4
  %i.azh = or disjoint i64 %i.azc, %i.azg
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axl, i64 2480
  %i.azj = load i64, ptr %i.azi, align 8, !tbaa !167
  %i.azk = trunc i64 %i.azj to i16
  %i.azl = shl i16 %i.azk, 8
  %i.azm = and i16 %i.azl, 768
  %i.azn = or disjoint i16 %i.azm, %i.ayd
  %i.azo = getelementptr inbounds nuw i8, ptr %i.axl, i64 2488
  %i.azp = load i64, ptr %i.azo, align 8, !tbaa !167
  %i.azq = shl i64 %i.azp, 3
  %i.azr = and i64 %i.azq, 8
  %i.azs = or disjoint i64 %i.azh, %i.azr
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axl, i64 2496
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !167
  %i.azv = shl i64 %i.azu, 4
  %i.azw = and i64 %i.azv, 16
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axl, i64 2504
  %i.azy = load i64, ptr %i.azx, align 8, !tbaa !167
  %i.azz = trunc i64 %i.azy to i16
  %i.baa = shl i16 %i.azz, 10
  %i.bab = and i16 %i.baa, 1024
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axl, i64 2512
  %i.bad = load i64, ptr %i.bac, align 8, !tbaa !167
  %i.bae = shl i64 %i.bad, 32
  %i.baf = or disjoint i64 %i.azs, %i.azw
  %i.bag = or disjoint i64 %i.baf, %i.bae
  store i64 %i.bag, ptr %i.ayt, align 8
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axl, i64 2520
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !167
  %i.baj = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.bak = load i64, ptr %i.baj, align 8
  %i.bal = and i64 %i.bai, 1
  %i.bam = and i64 %i.bak, 4294967288
  %i.ban = or disjoint i64 %i.bam, %i.bal
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axl, i64 2528
  %i.bap = load i64, ptr %i.bao, align 8, !tbaa !167
  %i.baq = shl i64 %i.bap, 1
  %i.bar = and i64 %i.baq, 2
  %i.bas = or disjoint i64 %i.ban, %i.bar
  %i.bat = getelementptr inbounds nuw i8, ptr %i.axl, i64 2536
  %i.bau = load i64, ptr %i.bat, align 8, !tbaa !167
  %i.bav = shl i64 %i.bau, 2
  %i.baw = and i64 %i.bav, 4
  %i.bax = or disjoint i64 %i.bas, %i.baw
  %i.bay = getelementptr inbounds nuw i8, ptr %i.axl, i64 2544
  %i.baz = load i64, ptr %i.bay, align 8, !tbaa !167
  %i.bba = trunc i64 %i.baz to i16
  %i.bbb = shl i16 %i.bba, 11
  %i.bbc = and i16 %i.bbb, 6144
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.axl, i64 2552
  %i.bbe = load i64, ptr %i.bbd, align 8, !tbaa !167
  %i.bbf = shl i64 %i.bbe, 32
  %i.bbg = or disjoint i64 %i.bax, %i.bbf
  store i64 %i.bbg, ptr %i.baj, align 8
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.axl, i64 2560
  %i.bbi = load i64, ptr %i.bbh, align 8, !tbaa !167
  %i.bbj = trunc i64 %i.bbi to i16
  %i.bbk = shl i16 %i.bbj, 13
  %i.bbl = or disjoint i16 %i.bab, %i.azn
  %i.bbm = or disjoint i16 %i.bbc, %i.bbl
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.axl, i64 2568
  %i.bbo = load i64, ptr %i.bbn, align 8, !tbaa !167
  %i.bbp = trunc i64 %i.bbo to i16
  %i.bbq = shl i16 %i.bbp, 15
  %i.bbr = and i16 %i.bbk, 24576
  %21 = or i16 %i.bbr, %i.bbm
  %i.bbs = or disjoint i16 %21, %i.bbq
  store i16 %i.bbs, ptr %i.auh, align 8
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.axl, i64 2576
  %i.bbu = load i64, ptr %i.bbt, align 8, !tbaa !167
  %i.bbv = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.bbw = load i64, ptr %i.bbv, align 8
  %i.bbx = and i64 %i.bbu, 1
  %i.bby = and i64 %i.bbw, 4294966784
  %i.bbz = or disjoint i64 %i.bby, %i.bbx
  %i.bca = getelementptr inbounds nuw i8, ptr %i.axl, i64 2584
  %i.bcb = load i64, ptr %i.bca, align 8, !tbaa !167
  %i.bcc = shl i64 %i.bcb, 1
  %i.bcd = and i64 %i.bcc, 2
  %i.bce = or disjoint i64 %i.bbz, %i.bcd
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.axl, i64 2592
  %i.bcg = load i64, ptr %i.bcf, align 8, !tbaa !167
  %i.bch = shl i64 %i.bcg, 2
  %i.bci = and i64 %i.bch, 4
  %i.bcj = or disjoint i64 %i.bce, %i.bci
  %i.bck = getelementptr inbounds nuw i8, ptr %i.axl, i64 2600
  %i.bcl = load i64, ptr %i.bck, align 8, !tbaa !167
  %i.bcm = shl i64 %i.bcl, 3
  %i.bcn = and i64 %i.bcm, 8
  %i.bco = or disjoint i64 %i.bcj, %i.bcn
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.axl, i64 2608
  %i.bcq = load i64, ptr %i.bcp, align 8, !tbaa !167
  %i.bcr = shl i64 %i.bcq, 4
  %i.bcs = and i64 %i.bcr, 16
  %i.bct = getelementptr inbounds nuw i8, ptr %i.axl, i64 2616
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !167
  %i.bcv = shl i64 %i.bcu, 5
  %i.bcw = and i64 %i.bcv, 32
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.axl, i64 2624
  %i.bcy = load i64, ptr %i.bcx, align 8, !tbaa !167
  %i.bcz = shl i64 %i.bcy, 6
  %i.bda = and i64 %i.bcz, 64
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.axl, i64 2632
  %i.bdc = load i64, ptr %i.bdb, align 8, !tbaa !167
  %i.bdd = shl i64 %i.bdc, 7
  %i.bde = and i64 %i.bdd, 128
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.axl, i64 2640
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !167
  %i.bdh = shl i64 %i.bdg, 8
  %i.bdi = and i64 %i.bdh, 256
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.axl, i64 2648
  %i.bdk = load i64, ptr %i.bdj, align 8, !tbaa !167
  %i.bdl = shl i64 %i.bdk, 32
  %.masked2019.masked.masked.masked = or disjoint i64 %i.bco, %i.bcs
  %.masked2021.masked.masked = or i64 %.masked2019.masked.masked.masked, %i.bcw
  %.masked2023.masked = or i64 %.masked2021.masked.masked, %i.bda
  %.masked2025 = or i64 %.masked2023.masked, %i.bde
  %i.bdm = or i64 %.masked2025, %i.bdi
  %i.bdn = or disjoint i64 %i.bdm, %i.bdl
  store i64 %i.bdn, ptr %i.bbv, align 8
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.axl, i64 2656
  %i.bdp = load i64, ptr %i.bdo, align 8, !tbaa !167
  %i.bdq = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.bdr = and i64 %i.bdp, 4294967295
  %i.bds = getelementptr inbounds nuw i8, ptr %i.axl, i64 2664
  %i.bdt = load i64, ptr %i.bds, align 8, !tbaa !167
  %i.bdu = shl i64 %i.bdt, 32
  %i.bdv = or disjoint i64 %i.bdu, %i.bdr
  store i64 %i.bdv, ptr %i.bdq, align 8
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.axl, i64 2672
  %i.bdx = load i64, ptr %i.bdw, align 8, !tbaa !167
  %i.bdy = getelementptr inbounds nuw i8, ptr %6, i64 192
  %i.bdz = and i64 %i.bdx, 4294967295
  %i.bea = getelementptr inbounds nuw i8, ptr %i.axl, i64 2680
  %i.beb = load i64, ptr %i.bea, align 8, !tbaa !167
  %i.bec = getelementptr inbounds nuw i8, ptr %6, i64 226 ; 2 uses
  %i.bed = trunc i64 %i.beb to i8
  %i.bee = load i8, ptr %i.bec, align 2
  %i.bef = and i8 %i.bed, 1
  %i.beg = and i8 %i.bee, -2
  %i.beh = or disjoint i8 %i.beg, %i.bef
  store i8 %i.beh, ptr %i.bec, align 2
  %i.bei = getelementptr inbounds nuw i8, ptr %i.axl, i64 2688
  %i.bej = load i64, ptr %i.bei, align 8, !tbaa !167
  %i.bek = shl i64 %i.bej, 32
  %i.bel = or disjoint i64 %i.bek, %i.bdz
  store i64 %i.bel, ptr %i.bdy, align 8
  %i.bem = getelementptr inbounds nuw i8, ptr %i.axl, i64 2696
  %i.ben = load i64, ptr %i.bem, align 8, !tbaa !167
  %i.beo = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.bep = and i64 %i.ben, 4294967295
  %i.beq = load i64, ptr %i.beo, align 8
  %i.ber = and i64 %i.beq, -266287972352
  %i.bes = or disjoint i64 %i.ber, %i.bep
  %i.bet = getelementptr inbounds nuw i8, ptr %i.axl, i64 2704
  %i.beu = load i64, ptr %i.bet, align 8, !tbaa !167
  %i.bev = shl i64 %i.beu, 32
  %i.bew = and i64 %i.bev, 4294967296
  %i.bex = or disjoint i64 %i.bes, %i.bew
  %i.bey = getelementptr inbounds nuw i8, ptr %i.axl, i64 2712
  %i.bez = load i64, ptr %i.bey, align 8, !tbaa !167
  %i.bfa = icmp ne i64 %i.bez, 0
  %i.bfb = getelementptr inbounds nuw i8, ptr %6, i64 1033
  %i.bfc = zext i1 %i.bfa to i8
  store i8 %i.bfc, ptr %i.bfb, align 1, !tbaa !4020
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.axl, i64 2720
  %i.bfe = load i64, ptr %i.bfd, align 8, !tbaa !167
  %i.bff = shl i64 %i.bfe, 34
  %i.bfg = and i64 %i.bff, 17179869184
  %i.bfh = or disjoint i64 %i.bfg, %i.bex
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.axl, i64 2728
  %i.bfj = load i64, ptr %i.bfi, align 8, !tbaa !167
  %i.bfk = shl i64 %i.bfj, 35
  %i.bfl = and i64 %i.bfk, 34359738368
  %i.bfm = or disjoint i64 %i.bfh, %i.bfl
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.axl, i64 2736
  %i.bfo = load i64, ptr %i.bfn, align 8, !tbaa !167
  %i.bfp = shl i64 %i.bfo, 36
  %i.bfq = and i64 %i.bfp, 68719476736
  %22 = or disjoint i64 %i.bfm, %i.bfq
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.axl, i64 2744
  %i.bfs = load i64, ptr %i.bfr, align 8, !tbaa !167
  %i.bft = shl i64 %i.bfs, 37
  %i.bfu = and i64 %i.bft, 137438953472
  %i.bfv = or disjoint i64 %22, %i.bfu
  store i64 %i.bfv, ptr %i.beo, align 8
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.axl, i64 2752
  %i.bfx = load i64, ptr %i.bfw, align 8, !tbaa !167
  %i.bfy = and i64 %i.bfx, 4294967295
  %i.bfz = load i64, ptr %i.gx, align 8
  %i.bga = and i64 %i.bfz, -68719476736
  %i.bgb = or disjoint i64 %i.bga, %i.bfy
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.axl, i64 2760
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !167
  %i.bge = shl i64 %i.bgd, 32
  %i.bgf = and i64 %i.bge, 4294967296
  %i.bgg = or disjoint i64 %i.bgb, %i.bgf
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.axl, i64 2768
  %i.bgi = load i64, ptr %i.bgh, align 8, !tbaa !167
  %i.bgj = shl i64 %i.bgi, 33
  %i.bgk = and i64 %i.bgj, 8589934592
  %i.bgl = or disjoint i64 %i.bgg, %i.bgk
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.axl, i64 2776
  %i.bgn = load i64, ptr %i.bgm, align 8, !tbaa !167
  %i.bgo = shl i64 %i.bgn, 34
  %i.bgp = and i64 %i.bgo, 17179869184
  %i.bgq = or disjoint i64 %i.bgl, %i.bgp
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.axl, i64 2784
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !167
  %i.bgt = shl i64 %i.bgs, 35
  %i.bgu = and i64 %i.bgt, 34359738368
  %i.bgv = or disjoint i64 %i.bgq, %i.bgu
  store i64 %i.bgv, ptr %i.gx, align 8
  %i.bgw = getelementptr inbounds nuw i8, ptr %6, i64 232 ; 2 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.axl, i64 2792
  %i.bgy = load i64, ptr %i.bgx, align 8, !tbaa !167
  %.not1448 = icmp ne i64 %i.bgy, 0
  %.sroa.03.0.copyload.i = load i64, ptr %i.bgw, align 8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 240 ; 2 uses
  %i.bgz = and i64 %.sroa.03.0.copyload.i, -7457959874823978496
  %masksel = zext i1 %.not1448 to i64
  %.pn16.i = or disjoint i64 %i.bgz, %masksel
  %i.bha = getelementptr inbounds nuw i8, ptr %i.axl, i64 2800
  %i.bhb = load i64, ptr %i.bha, align 8, !tbaa !167
  %.not1449 = icmp eq i64 %i.bhb, 0
  %masksel1450 = select i1 %.not1449, i64 0, i64 2
  %.pn16.i567 = or disjoint i64 %.pn16.i, %masksel1450
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.axl, i64 2808
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !167
  %.not1451 = icmp eq i64 %i.bhd, 0
  %masksel1452 = select i1 %.not1451, i64 0, i64 4
  %.pn16.i573 = or disjoint i64 %.pn16.i567, %masksel1452
  %i.bhe = getelementptr inbounds nuw i8, ptr %i.axl, i64 2816
  %i.bhf = load i64, ptr %i.bhe, align 8, !tbaa !167
  %.not1453 = icmp eq i64 %i.bhf, 0
  %masksel1454 = select i1 %.not1453, i64 0, i64 8
  %.pn16.i579 = or disjoint i64 %.pn16.i573, %masksel1454
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.axl, i64 2824
  %i.bhh = load i64, ptr %i.bhg, align 8, !tbaa !167
  %.not1455 = icmp eq i64 %i.bhh, 0
  %masksel1456 = select i1 %.not1455, i64 0, i64 16
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.axl, i64 2832
  %i.bhj = load i64, ptr %i.bhi, align 8, !tbaa !167
  %.not1457 = icmp eq i64 %i.bhj, 0
  %masksel1458 = select i1 %.not1457, i64 0, i64 32
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.axl, i64 2840
  %i.bhl = load i64, ptr %i.bhk, align 8, !tbaa !167
  %.not1459 = icmp eq i64 %i.bhl, 0
  %masksel1460 = select i1 %.not1459, i64 0, i64 64
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.axl, i64 2848
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !167
  %.not1461 = icmp eq i64 %i.bhn, 0
  %masksel1462 = select i1 %.not1461, i64 0, i64 128
  %i.bho = getelementptr inbounds nuw i8, ptr %i.axl, i64 2856
  %i.bhp = load i64, ptr %i.bho, align 8, !tbaa !167
  %.not1463 = icmp eq i64 %i.bhp, 0
  %masksel1464 = select i1 %.not1463, i64 0, i64 256
  %i.bhq = getelementptr inbounds nuw i8, ptr %i.axl, i64 2864
  %i.bhr = load i64, ptr %i.bhq, align 8, !tbaa !167
  %.not1465 = icmp eq i64 %i.bhr, 0
  %masksel1466 = select i1 %.not1465, i64 0, i64 1024
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.axl, i64 2872
  %i.bht = load i64, ptr %i.bhs, align 8, !tbaa !167
  %.not1467 = icmp eq i64 %i.bht, 0
  %masksel1468 = select i1 %.not1467, i64 0, i64 2048
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.axl, i64 2880
  %i.bhv = load i64, ptr %i.bhu, align 8, !tbaa !167
  %.not1469 = icmp eq i64 %i.bhv, 0
  %masksel1470 = select i1 %.not1469, i64 0, i64 4096
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.axl, i64 2888
  %i.bhx = load i64, ptr %i.bhw, align 8, !tbaa !167
  %.not1471 = icmp eq i64 %i.bhx, 0
  %masksel1472 = select i1 %.not1471, i64 0, i64 8192
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.axl, i64 2896
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !167
  %.not1473 = icmp eq i64 %i.bhz, 0
  %masksel1474 = select i1 %.not1473, i64 0, i64 16384
  %i.bia = getelementptr inbounds nuw i8, ptr %i.axl, i64 2904
  %i.bib = load i64, ptr %i.bia, align 8, !tbaa !167
  %.not1475 = icmp eq i64 %i.bib, 0
  %masksel1476 = select i1 %.not1475, i64 0, i64 32768
  %i.bic = getelementptr inbounds nuw i8, ptr %i.axl, i64 2912
  %i.bid = load i64, ptr %i.bic, align 8, !tbaa !167
  %.not1477 = icmp eq i64 %i.bid, 0
  %masksel1478 = select i1 %.not1477, i64 0, i64 65536
  %i.bie = getelementptr inbounds nuw i8, ptr %i.axl, i64 2920
  %i.bif = load i64, ptr %i.bie, align 8, !tbaa !167
  %.not1479 = icmp eq i64 %i.bif, 0
  %masksel1480 = select i1 %.not1479, i64 0, i64 131072
  %i.big = getelementptr inbounds nuw i8, ptr %i.axl, i64 2928
  %i.bih = load i64, ptr %i.big, align 8, !tbaa !167
  %.not1481 = icmp eq i64 %i.bih, 0
  %masksel1482 = select i1 %.not1481, i64 0, i64 262144
  %i.bii = getelementptr inbounds nuw i8, ptr %i.axl, i64 2936
  %i.bij = load i64, ptr %i.bii, align 8, !tbaa !167
  %.not1483 = icmp eq i64 %i.bij, 0
  %masksel1484 = select i1 %.not1483, i64 0, i64 524288
  %i.bik = getelementptr inbounds nuw i8, ptr %i.axl, i64 2944
  %i.bil = load i64, ptr %i.bik, align 8, !tbaa !167
  %.not1485 = icmp eq i64 %i.bil, 0
  %masksel1486 = select i1 %.not1485, i64 0, i64 1048576
  %i.bim = getelementptr inbounds nuw i8, ptr %i.axl, i64 2952
  %i.bin = load i64, ptr %i.bim, align 8, !tbaa !167
  %.not1487 = icmp eq i64 %i.bin, 0
  %masksel1488 = select i1 %.not1487, i64 0, i64 2097152
  %i.bio = getelementptr inbounds nuw i8, ptr %i.axl, i64 2960
  %i.bip = load i64, ptr %i.bio, align 8, !tbaa !167
  %.not1489 = icmp eq i64 %i.bip, 0
  %masksel1490 = select i1 %.not1489, i64 0, i64 4194304
  %i.biq = getelementptr inbounds nuw i8, ptr %i.axl, i64 2968
  %i.bir = load i64, ptr %i.biq, align 8, !tbaa !167
  %.not1491 = icmp eq i64 %i.bir, 0
  %masksel1492 = select i1 %.not1491, i64 0, i64 8388608
  %i.bis = getelementptr inbounds nuw i8, ptr %i.axl, i64 2976
  %i.bit = load i64, ptr %i.bis, align 8, !tbaa !167
  %.not1493 = icmp eq i64 %i.bit, 0
  %masksel1494 = select i1 %.not1493, i64 0, i64 16777216
  %i.biu = getelementptr inbounds nuw i8, ptr %i.axl, i64 2984
  %i.biv = load i64, ptr %i.biu, align 8, !tbaa !167
  %.not1495 = icmp eq i64 %i.biv, 0
  %masksel1496 = select i1 %.not1495, i64 0, i64 33554432
  %i.biw = getelementptr inbounds nuw i8, ptr %i.axl, i64 2992
  %i.bix = load i64, ptr %i.biw, align 8, !tbaa !167
  %.not1497 = icmp eq i64 %i.bix, 0
  %masksel1498 = select i1 %.not1497, i64 0, i64 67108864
  %i.biy = getelementptr inbounds nuw i8, ptr %i.axl, i64 3000
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !167
  %.not1499 = icmp eq i64 %i.biz, 0
  %masksel1500 = select i1 %.not1499, i64 0, i64 134217728
  %i.bja = getelementptr inbounds nuw i8, ptr %i.axl, i64 3008
  %i.bjb = load i64, ptr %i.bja, align 8, !tbaa !167
  %.not1501 = icmp eq i64 %i.bjb, 0
  %masksel1502 = select i1 %.not1501, i64 0, i64 268435456
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.axl, i64 3016
  %i.bjd = load i64, ptr %i.bjc, align 8, !tbaa !167
  %.not1503 = icmp eq i64 %i.bjd, 0
  %masksel1504 = select i1 %.not1503, i64 0, i64 536870912
  %i.bje = getelementptr inbounds nuw i8, ptr %i.axl, i64 3024
  %i.bjf = load i64, ptr %i.bje, align 8, !tbaa !167
  %.not1505 = icmp eq i64 %i.bjf, 0
  %masksel1506 = select i1 %.not1505, i64 0, i64 1073741824
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.axl, i64 3032
  %i.bjh = load i64, ptr %i.bjg, align 8, !tbaa !167
  %.not1507 = icmp eq i64 %i.bjh, 0
  %masksel1508 = select i1 %.not1507, i64 0, i64 2147483648
  %i.bji = getelementptr inbounds nuw i8, ptr %i.axl, i64 3040
  %i.bjj = load i64, ptr %i.bji, align 8, !tbaa !167
  %.not1509 = icmp eq i64 %i.bjj, 0
  %masksel1510 = select i1 %.not1509, i64 0, i64 4294967296
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.axl, i64 3048
  %i.bjl = load i64, ptr %i.bjk, align 8, !tbaa !167
  %.not1511 = icmp eq i64 %i.bjl, 0
  %masksel1512 = select i1 %.not1511, i64 0, i64 17179869184
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.axl, i64 3056
  %i.bjn = load i64, ptr %i.bjm, align 8, !tbaa !167
  %.not1513 = icmp eq i64 %i.bjn, 0
  %masksel1514 = select i1 %.not1513, i64 0, i64 34359738368
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.axl, i64 3064
  %i.bjp = load i64, ptr %i.bjo, align 8, !tbaa !167
  %.not1515 = icmp eq i64 %i.bjp, 0
  %masksel1516 = select i1 %.not1515, i64 0, i64 68719476736
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.axl, i64 3072
  %i.bjr = load i64, ptr %i.bjq, align 8, !tbaa !167
  %.not1517 = icmp eq i64 %i.bjr, 0
  %masksel1518 = select i1 %.not1517, i64 0, i64 137438953472
  %i.bjs = load ptr, ptr %0, align 8, !tbaa !872  ; 16 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3080
  %i.bju = load i64, ptr %i.bjt, align 8, !tbaa !167
  %.not1519 = icmp eq i64 %i.bju, 0
  %.sroa.24.0.copyload.i776 = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !168
  %masksel1520 = select i1 %.not1519, i64 0, i64 274877906944
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3088
  %i.bjw = load i64, ptr %i.bjv, align 8, !tbaa !167
  %.not1521 = icmp eq i64 %i.bjw, 0
  %masksel1522 = select i1 %.not1521, i64 0, i64 549755813888
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3096
  %i.bjy = load i64, ptr %i.bjx, align 8, !tbaa !167
  %.not1523 = icmp eq i64 %i.bjy, 0
  %masksel1524 = select i1 %.not1523, i64 0, i64 2199023255552
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3104
  %i.bka = load i64, ptr %i.bjz, align 8, !tbaa !167
  %.not1525 = icmp eq i64 %i.bka, 0
  %masksel1526 = select i1 %.not1525, i64 0, i64 4398046511104
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3112
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !167
  %.not1527 = icmp eq i64 %i.bkc, 0
  %masksel1528 = select i1 %.not1527, i64 0, i64 8796093022208
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3120
  %i.bke = load i64, ptr %i.bkd, align 8, !tbaa !167
  %.not1529 = icmp eq i64 %i.bke, 0
  %masksel1530 = select i1 %.not1529, i64 0, i64 17592186044416
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3128
  %i.bkg = load i64, ptr %i.bkf, align 8, !tbaa !167
  %.not1531 = icmp eq i64 %i.bkg, 0
  %masksel1532 = select i1 %.not1531, i64 0, i64 35184372088832
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3136
  %i.bki = load i64, ptr %i.bkh, align 8, !tbaa !167
  %.not1533 = icmp eq i64 %i.bki, 0
  %masksel1534 = select i1 %.not1533, i64 0, i64 70368744177664
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3144
  %i.bkk = load i64, ptr %i.bkj, align 8, !tbaa !167
  %.not1535 = icmp eq i64 %i.bkk, 0
  %masksel1536 = select i1 %.not1535, i64 0, i64 140737488355328
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3152
  %i.bkm = load i64, ptr %i.bkl, align 8, !tbaa !167
  %.not1537 = icmp eq i64 %i.bkm, 0
  %masksel1538 = select i1 %.not1537, i64 0, i64 281474976710656
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3160
  %i.bko = load i64, ptr %i.bkn, align 8, !tbaa !167
  %.not1539 = icmp eq i64 %i.bko, 0
  %masksel1540 = select i1 %.not1539, i64 0, i64 562949953421312
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3168
  %i.bkq = load i64, ptr %i.bkp, align 8, !tbaa !167
  %.not1541 = icmp eq i64 %i.bkq, 0
  %masksel1542 = select i1 %.not1541, i64 0, i64 1125899906842624
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3176
  %i.bks = load i64, ptr %i.bkr, align 8, !tbaa !167
  %.not1543 = icmp eq i64 %i.bks, 0
  %masksel1544 = select i1 %.not1543, i64 0, i64 2251799813685248
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3184
  %i.bku = load i64, ptr %i.bkt, align 8, !tbaa !167
  %.not1545 = icmp eq i64 %i.bku, 0
  %masksel1546 = select i1 %.not1545, i64 0, i64 4503599627370496
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3192
  %i.bkw = load i64, ptr %i.bkv, align 8, !tbaa !167
  %.not1547 = icmp eq i64 %i.bkw, 0
  %masksel1548 = select i1 %.not1547, i64 0, i64 9007199254740992
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bjs, i64 3200
  %i.bky = load i64, ptr %i.bkx, align 8, !tbaa !167
  %.not1549 = icmp eq i64 %i.bky, 0
  %masksel1550 = select i1 %.not1549, i64 0, i64 18014398509481984
  %23 = load ptr, ptr %0, align 8, !tbaa !872     ; 13 uses
  %i.bkz = getelementptr inbounds nuw i8, ptr %23, i64 3208
  %i.bla = load i64, ptr %i.bkz, align 8, !tbaa !167
  %.not1551 = icmp eq i64 %i.bla, 0
  %masksel1552 = select i1 %.not1551, i64 0, i64 72057594037927936
  %i.blb = getelementptr inbounds nuw i8, ptr %23, i64 3216
  %i.blc = load i64, ptr %i.blb, align 8, !tbaa !167
  %.not1553 = icmp eq i64 %i.blc, 0
  %masksel1554 = select i1 %.not1553, i64 0, i64 144115188075855872
  %i.bld = getelementptr inbounds nuw i8, ptr %23, i64 3224
  %i.ble = load i64, ptr %i.bld, align 8, !tbaa !167
  %.not1555 = icmp eq i64 %i.ble, 0
  %masksel1556 = select i1 %.not1555, i64 0, i64 288230376151711744
  %i.blf = getelementptr inbounds nuw i8, ptr %23, i64 3232
  %i.blg = load i64, ptr %i.blf, align 8, !tbaa !167
  %.not1557 = icmp eq i64 %i.blg, 0
  %.masked1944.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %.pn16.i579, %masksel1456
  %.masked1945.masked.masked.masked.masked.masked.masked = or i64 %.masked1944.masked.masked.masked.masked.masked.masked.masked, %masksel1458
  %.masked1946.masked.masked.masked.masked.masked = or i64 %.masked1945.masked.masked.masked.masked.masked.masked, %masksel1460
  %.masked2045.masked.masked.masked.masked = or i64 %.masked1946.masked.masked.masked.masked.masked, %masksel1462
  %.masked2028.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2045.masked.masked.masked.masked, %masksel1464
  %.masked2029.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2028.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1466
  %.masked2030.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2029.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1468
  %.masked2031.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2030.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1470
  %.masked2032.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2031.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1472
  %.masked2033.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2032.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1474
  %.masked2034.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2033.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1476
  %.masked2035.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2034.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1478
  %.masked2036.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2035.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1480
  %.masked2037.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2036.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1482
  %.masked2038.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2037.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1484
  %.masked2039.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2038.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1486
  %.masked2040.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2039.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1488
  %.masked2041.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2040.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1490
  %.masked2042.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2041.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1492
  %.masked2043.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2042.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1494
  %.masked2044.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2043.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1496
  %.masked2045.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2044.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1498
  %.masked2046.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2045.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1500
  %.masked2047.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2046.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1502
  %.masked2048.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2047.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1504
  %.masked2049.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2048.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1506
  %.masked2050.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2049.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1508
  %.masked2051.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2050.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1510
  %.masked2052.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2051.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1512
  %.masked2053.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2052.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1514
  %.masked2054.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2053.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1516
  %.masked2055.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2054.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1518
  %.masked2056.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2055.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1520
  %.masked2057.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2056.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1522
  %.masked2058.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2057.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1524
  %.masked2059.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2058.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1526
  %.masked2060.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2059.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1528
  %.masked2061.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2060.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1530
  %.masked2062.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2061.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1532
  %.masked2063.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2062.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1534
  %.masked2064.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2063.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1536
  %.masked2065.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2064.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1538
  %.masked2066.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2065.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1540
  %.masked2067.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2066.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1542
  %.masked2068.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2067.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1544
  %.masked2069.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2068.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1546
  %.masked2070.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2069.masked.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1548
  %.masked2071.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked2070.masked.masked.masked.masked.masked.masked.masked.masked, %masksel1550
  %.masked2072.masked.masked.masked.masked.masked.masked = or i64 %.masked2071.masked.masked.masked.masked.masked.masked.masked, %masksel1552
  %.masked2073.masked.masked.masked.masked.masked = or i64 %.masked2072.masked.masked.masked.masked.masked.masked, %masksel1554
  %.masked2074.masked.masked.masked.masked = or i64 %.masked2073.masked.masked.masked.masked.masked, %masksel1556
  %masksel1558 = select i1 %.not1557, i64 0, i64 2305843009213693952
  %.masked2076.masked.masked = or disjoint i64 %.masked2074.masked.masked.masked.masked, %masksel1558
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 3240
  %25 = load i64, ptr %24, align 8, !tbaa !167
  %.not1559 = icmp eq i64 %25, 0
  %masksel1560 = select i1 %.not1559, i64 0, i64 4611686018427387904
  %.pn16.i897 = or disjoint i64 %.masked2076.masked.masked, %masksel1560
  store i64 %.pn16.i897, ptr %i.bgw, align 8
  %i.blh = getelementptr inbounds nuw i8, ptr %23, i64 3248
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !167
  %.not1561 = icmp ne i64 %i.bli, 0
  %i.blj = and i64 %.sroa.24.0.copyload.i776, -1738
  %masksel1562 = zext i1 %.not1561 to i64
  %.pn14.i = or disjoint i64 %i.blj, %masksel1562
  %i.blk = getelementptr inbounds nuw i8, ptr %23, i64 3256
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !167
  %.not1563 = icmp eq i64 %i.bll, 0
  %masksel1564 = select i1 %.not1563, i64 0, i64 8
  %.pn14.i910 = or disjoint i64 %masksel1564, %.pn14.i
  %i.blm = getelementptr inbounds nuw i8, ptr %23, i64 3264
  %i.bln = load i64, ptr %i.blm, align 8, !tbaa !167
  %.not1565 = icmp eq i64 %i.bln, 0
  %masksel1566 = select i1 %.not1565, i64 0, i64 64
  %.pn14.i917 = or disjoint i64 %masksel1566, %.pn14.i910
  %i.blo = getelementptr inbounds nuw i8, ptr %23, i64 3272
  %i.blp = load i64, ptr %i.blo, align 8, !tbaa !167
  %.not1567 = icmp eq i64 %i.blp, 0
  %masksel1568 = select i1 %.not1567, i64 0, i64 128
  %.pn14.i924 = or disjoint i64 %.pn14.i917, %masksel1568
  %i.blq = getelementptr inbounds nuw i8, ptr %23, i64 3280
  %i.blr = load i64, ptr %i.blq, align 8, !tbaa !167
  %.not1569 = icmp eq i64 %i.blr, 0
  %masksel1570 = select i1 %.not1569, i64 0, i64 512
  %.pn14.i931 = or disjoint i64 %masksel1570, %.pn14.i924
  %i.bls = getelementptr inbounds nuw i8, ptr %23, i64 3288
  %i.blt = load i64, ptr %i.bls, align 8, !tbaa !167
  %.not1571 = icmp eq i64 %i.blt, 0
  %masksel1572 = select i1 %.not1571, i64 0, i64 1024
  %.pn14.i938 = or disjoint i64 %.pn14.i931, %masksel1572
  store i64 %.pn14.i938, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !168
  %i.blu = getelementptr inbounds nuw i8, ptr %23, i64 3296
  %i.blv = load i64, ptr %i.blu, align 8, !tbaa !167
  %i.blw = trunc i64 %i.blv to i32                ; 2 uses
  %.not1573 = icmp eq i32 %i.blw, 0
  br i1 %.not1573, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5clang12SanitizerSet3setENS_13SanitizerMaskEb.exit
  %i.blx = getelementptr inbounds nuw i8, ptr %6, i64 704
  %i.bly = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.bma = getelementptr inbounds nuw i8, ptr %6, i64 712 ; 3 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %6, i64 720
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956
  %.pre1592 = load ptr, ptr %0, align 8, !tbaa !872
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5clang12SanitizerSet3setENS_13SanitizerMaskEb.exit
  %i.bmc = phi ptr [ %23, %_ZN5clang12SanitizerSet3setENS_13SanitizerMaskEb.exit ], [ %.pre1592, %._crit_edge.loopexit ] ; 6 uses
  %.01447.lcssa = phi i32 [ 413, %_ZN5clang12SanitizerSet3setENS_13SanitizerMaskEb.exit ], [ %i.btf, %._crit_edge.loopexit ] ; 6 uses
  %i.bmd = add i32 %.01447.lcssa, 1
  %i.bme = zext i32 %.01447.lcssa to i64
  %i.bmf = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bme
  %i.bmg = load i64, ptr %i.bmf, align 8, !tbaa !167
  %i.bmh = trunc i64 %i.bmg to i32
  %i.bmi = add i32 %.01447.lcssa, 2
  %i.bmj = zext i32 %i.bmd to i64
  %i.bmk = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bmj
  %i.bml = load i64, ptr %i.bmk, align 8, !tbaa !167 ; 3 uses
  %i.bmm = add i32 %.01447.lcssa, 3
  %i.bmn = zext i32 %i.bmi to i64
  %i.bmo = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bmn
  %i.bmp = load i64, ptr %i.bmo, align 8, !tbaa !167 ; 3 uses
  %i.bmq = add i32 %.01447.lcssa, 4
  %i.bmr = zext i32 %i.bmm to i64
  %i.bms = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bmr
  %i.bmt = load i64, ptr %i.bms, align 8, !tbaa !167 ; 2 uses
  %i.bmu = and i64 %i.bmp, 4294967295
  %i.bmv = icmp eq i64 %i.bmu, 0
  br i1 %i.bmv, label %bb.a, label %bb.b

bb.a:                                             ; preds = %._crit_edge
  %i.bmw = and i64 %i.bml, 4294967295
  br label %_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit

bb.b:                                             ; preds = %._crit_edge
  %i.bmx = and i64 %i.bmt, 4294967295
  %i.bmy = icmp eq i64 %i.bmx, 0
  br i1 %i.bmy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bmz = and i64 %i.bml, 4294967295
  %i.bna = shl i64 %i.bmp, 32
  %i.bnb = add i64 %i.bna, 9223372032559808512
  %i.bnc = or disjoint i64 %i.bnb, %i.bmz
  %i.bnd = or i64 %i.bnc, -9223372036854775808
  br label %_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit

bb.d:                                             ; preds = %bb.b
  %i.bne = add i64 %i.bmt, 2147483647
  %i.bnf = and i64 %i.bml, 4294967295
  %i.bng = shl i64 %i.bmp, 32
  %i.bnh = add i64 %i.bng, 9223372032559808512
  %i.bni = or disjoint i64 %i.bnh, %i.bnf
  %i.bnj = or i64 %i.bni, -9223372036854775808
  %i.bnk = and i64 %i.bne, 2147483647
  %i.bnl = or disjoint i64 %i.bnk, 2147483648
  br label %_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit

_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi i64 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.bnl, %bb.d ]
  %.sroa.0.0.i = phi i64 [ %i.bmw, %bb.a ], [ %i.bnd, %bb.c ], [ %i.bnj, %bb.d ]
  %i.bnm = getelementptr inbounds nuw i8, ptr %6, i64 392
  store i32 %i.bmh, ptr %i.bnm, align 8, !tbaa !4021
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 396
  store i64 %.sroa.0.0.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !168
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 404
  store i64 %.sroa.4.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 4, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !4022)
  %i.bnn = add i32 %.01447.lcssa, 5               ; 2 uses
  %i.bno = zext i32 %i.bmq to i64
  %i.bnp = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bno
  %i.bnq = load i64, ptr %i.bnp, align 8, !tbaa !167, !noalias !4022 ; 2 uses
  %i.bnr = zext i32 %i.bnn to i64
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.bmc, i64 %i.bnr ; 3 uses
  %i.bnt = and i64 %i.bnq, 4294967295             ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.bnt, 3             ; 2 uses
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bns, i64 %.idx.i
  %i.bnv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  store ptr %i.bnv, ptr %8, align 8, !tbaa !162, !alias.scope !4022
  %i.bnw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store i64 0, ptr %i.bnw, align 8, !tbaa !166, !alias.scope !4022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36, !noalias !4022
  store i64 %i.bnt, ptr %i.e, align 8, !tbaa !167, !noalias !4022
  %i.bnx = icmp samesign ugt i64 %i.bnt, 15
  br i1 %i.bnx, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit
  %i.bny = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #36 ; 2 uses
  store ptr %i.bny, ptr %8, align 8, !tbaa !165, !alias.scope !4022
  %i.bnz = load i64, ptr %i.e, align 8, !tbaa !167, !noalias !4022
  store i64 %i.bnz, ptr %i.bnv, align 8, !tbaa !168, !alias.scope !4022
  br label %.lr.ph.i.i.i.i.preheader

._crit_edge.i.i.i:                                ; preds = %_ZN5clang9ASTReader16ReadVersionTupleERKN4llvm11SmallVectorImLj64EEERj.exit
  %.not7.i.i.i.i = icmp eq i64 %i.bnt, 0
  br i1 %.not7.i.i.i.i, label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.09.i.i.i.i.ph = phi ptr [ %i.bnv, %._crit_edge.i.i.i ], [ %i.bny, %._crit_edge.i.i.thread.i ] ; 2 uses
  %i.boa = add nsw i64 %.idx.i, -8                ; 2 uses
  %i.bob = lshr exact i64 %i.boa, 3
  %i.boc = add nuw nsw i64 %i.bob, 1
  %xtraiter2083 = and i64 %i.boc, 7               ; 2 uses
  %lcmp.mod2084.not = icmp eq i64 %xtraiter2083, 0
  br i1 %lcmp.mod2084.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.bog, %.lr.ph.i.i.i.i.prol ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi ptr [ %i.bof, %.lr.ph.i.i.i.i.prol ], [ %i.bns, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter2085 = phi i64 [ %prol.iter2085.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.bod = load i64, ptr %.068.i.i.i.i.prol, align 8, !tbaa !167
  %i.boe = trunc i64 %i.bod to i8
  store i8 %i.boe, ptr %.09.i.i.i.i.prol, align 1, !tbaa !168
  %i.bof = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter2085.next = add i64 %prol.iter2085, 1 ; 2 uses
  %prol.iter2085.cmp.not = icmp eq i64 %prol.iter2085.next, %xtraiter2083
  br i1 %prol.iter2085.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3979

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.bog, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi ptr [ %i.bns, %.lr.ph.i.i.i.i.preheader ], [ %i.bof, %.lr.ph.i.i.i.i.prol ]
  %i.boh = icmp ult i64 %i.boa, 56
  br i1 %i.boh, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.bpn, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi ptr [ %i.bpm, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.boi = load i64, ptr %.068.i.i.i.i, align 8, !tbaa !167
  %i.boj = trunc i64 %i.boi to i8
  store i8 %i.boj, ptr %.09.i.i.i.i, align 1, !tbaa !168
  %i.bok = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 8
  %i.bol = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  %i.bom = load i64, ptr %i.bok, align 8, !tbaa !167
  %i.bon = trunc i64 %i.bom to i8
  store i8 %i.bon, ptr %i.bol, align 1, !tbaa !168
  %i.boo = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 16
  %i.bop = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 2
  %i.boq = load i64, ptr %i.boo, align 8, !tbaa !167
  %i.bor = trunc i64 %i.boq to i8
  store i8 %i.bor, ptr %i.bop, align 1, !tbaa !168
  %i.bos = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 24
  %i.bot = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 3
  %i.bou = load i64, ptr %i.bos, align 8, !tbaa !167
  %i.bov = trunc i64 %i.bou to i8
  store i8 %i.bov, ptr %i.bot, align 1, !tbaa !168
  %i.bow = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 32
  %i.box = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.boy = load i64, ptr %i.bow, align 8, !tbaa !167
  %i.boz = trunc i64 %i.boy to i8
  store i8 %i.boz, ptr %i.box, align 1, !tbaa !168
  %i.bpa = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 40
  %i.bpb = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 5
  %i.bpc = load i64, ptr %i.bpa, align 8, !tbaa !167
  %i.bpd = trunc i64 %i.bpc to i8
  store i8 %i.bpd, ptr %i.bpb, align 1, !tbaa !168
  %i.bpe = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 48
  %i.bpf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 6
  %i.bpg = load i64, ptr %i.bpe, align 8, !tbaa !167
  %i.bph = trunc i64 %i.bpg to i8
  store i8 %i.bph, ptr %i.bpf, align 1, !tbaa !168
  %i.bpi = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 56
  %i.bpj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 7
  %i.bpk = load i64, ptr %i.bpi, align 8, !tbaa !167
  %i.bpl = trunc i64 %i.bpk to i8
  store i8 %i.bpl, ptr %i.bpj, align 1, !tbaa !168
  %i.bpm = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 64 ; 2 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.bpm, %i.bnu
  br i1 %.not.i.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre6.i.i.i = load i64, ptr %i.e, align 8, !tbaa !167, !noalias !4022
  %.pre7.i.i.i = load ptr, ptr %8, align 8, !tbaa !165, !alias.scope !4022
  br label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit

_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit: ; preds = %._crit_edge.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i
  %i.bpo = phi ptr [ %.pre7.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ %i.bnv, %._crit_edge.i.i.i ]
  %i.bpp = phi i64 [ %.pre6.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ 0, %._crit_edge.i.i.i ] ; 2 uses
  %i.bpq = trunc i64 %i.bnq to i32
  store i64 %i.bpp, ptr %i.bnw, align 8, !tbaa !166, !alias.scope !4022
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpo, i64 %i.bpp
  store i8 0, ptr %i.bpr, align 1, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36, !noalias !4022
  %i.bps = add i32 %i.bnn, %i.bpq                 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %6, i64 672 ; 4 uses
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !165 ; 6 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %6, i64 688 ; 2 uses
  %i.bpw = icmp eq ptr %i.bpu, %i.bpv
  %i.bpx = load ptr, ptr %8, align 8, !tbaa !165  ; 5 uses
  %i.bpy = icmp eq ptr %i.bpx, %i.bnv             ; 2 uses
  br i1 %i.bpw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit
  br i1 %i.bpy, label %bb.e, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit
  br i1 %i.bpy, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bpz = load i64, ptr %i.bnw, align 8, !tbaa !166 ; 3 uses
  %i.bqa = icmp ult i64 %i.bpz, 16
  call void @llvm.assume(i1 %i.bqa)
  switch i64 %i.bpz, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.f
  ]
end_hunk_0
begin_hunk_1_@_ZN5clang9ASTReader28readUnhashedControlBlockImplEPNS_13serialization10ModuleFileEN4llvm9StringRefES5_jbPNS_17ASTReaderListenerEb:bb.a
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !159
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kk) #36, !inline_history !9
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %bb.bz, %bb.ca, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.cb

bb.cb:                                            ; preds = %bb.i, %_ZN4llvm8ExpectedIjED2Ev.exit, %bb.h, %bb.h, %_ZN4llvm5ErrorD2Ev.exit68
  %.6 = phi i32 [ %.048, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.452, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.048, %bb.i ], [ %.048, %bb.h ], [ %.048, %bb.h ]
  %.347 = phi i1 [ false, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %i.bh, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.h ]
  %.4 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit68 ], [ %.2, %_ZN4llvm8ExpectedIjED2Ev.exit ], [ %.048, %bb.i ], [ 1, %bb.h ], [ 1, %bb.h ] ; 2 uses
  %i.ko = load i8, ptr %i.y, align 8
  %i.kp = trunc i8 %i.ko to i1
  br i1 %i.kp, label %bb.cc, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

bb.cc:                                            ; preds = %bb.cb
  %i.kq = load ptr, ptr %18, align 8, !tbaa !1695 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i94, label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95: ; preds = %bb.cc
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !159
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(8) %i.kq) #36, !inline_history !13
  br label %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit

_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit: ; preds = %bb.cb, %bb.cc, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br i1 %.347, label %bb.f, label %bb.cd, !llvm.loop !4767

bb.cd:                                            ; preds = %_ZN4llvm8ExpectedINS_14BitstreamEntryEED2Ev.exit
  %i.ku = load ptr, ptr %17, align 8, !tbaa !872  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.v
  br i1 %i.kv, label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @free(ptr noundef %i.ku) #36
  br label %_ZN4llvm11SmallVectorImLj64EED2Ev.exit

_ZN4llvm11SmallVectorImLj64EED2Ev.exit:           ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit64, %_ZN4llvm5ErrorD2Ev.exit65, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit
  %.5 = phi i32 [ 1, %_ZN4llvm5ErrorD2Ev.exit64 ], [ %.4, %_ZN4llvm11SmallVectorImLj64EED2Ev.exit ], [ 1, %_ZN4llvm5ErrorD2Ev.exit65 ]
  call void @_ZN4llvm11SmallVectorINS_15BitstreamCursor5BlockELj8EED2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.e) #36
  %i.kw = load ptr, ptr %i.d, align 8, !tbaa !1815 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !1814 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kw, %i.ky
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cf, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lq, %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i ], [ %i.kw, %bb.cf ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1820 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph.i.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load atomic i64, ptr %i.lb acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lb, align 8, !tbaa !1825
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lf, align 4, !tbaa !1826
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !159
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36, !inline_history !21
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !159
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36, !inline_history !21
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i

bb.ci:                                            ; preds = %bb.cg
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !168
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ln = add nsw i32 %i.le, -1
  store i32 %i.ln, ptr %i.lb, align 8, !tbaa !952
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.lo = atomicrmw volatile add ptr %i.lb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.le, %bb.cj ], [ %i.lo, %bb.ck ]
  %i.lp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.lp, label %bb.cl, label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i, !prof !994

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #36
  br label %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ch, %.lr.ph.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lq, %i.ky
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN4llvm13BitCodeAbbrevEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.d, align 8, !tbaa !1815
  br label %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i, %bb.cf
  %i.lr = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exitthread-pre-split.i.i ], [ %i.kw, %bb.cf ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.lr, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm15BitstreamCursorD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i
  %i.ls = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1817
  %i.lu = ptrtoint ptr %i.lt to i64
  %i.lv = ptrtoint ptr %i.lr to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %i.lr, i64 noundef %i.lw) #37
  br label %_ZN4llvm15BitstreamCursorD2Ev.exit

_ZN4llvm15BitstreamCursorD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN4llvm13BitCodeAbbrevEEEvT_S5_.exit.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang9ASTReader22ParseDiagnosticOptionsERKN4llvm11SmallVectorImLj64EEENS1_9StringRefEbRNS_17ASTReaderListenerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(528) %0, ptr %1, i64 %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.clang::DiagnosticOptions", align 8 ; 26 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.e, align 8, !tbaa !166
  store i8 0, ptr %i.d, align 8, !tbaa !168
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !162
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 0, ptr %i.h, align 8, !tbaa !166
  store i8 0, ptr %i.g, align 8, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !162
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.k, align 8, !tbaa !166
  store i8 0, ptr %i.j, align 8, !tbaa !168
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 120, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8
  store i64 1776, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 42949672966, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 214748364810, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = and i64 %i.r, -8589934592                ; 2 uses
  %i.t = or disjoint i64 %i.s, 4294967312
  store i64 %i.t, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 8, ptr %i.u, align 8
  %i.v = and i16 %i.n, -1024                      ; 2 uses
  store i16 %i.v, ptr %i.m, align 8
  %i.w = load ptr, ptr %0, align 8, !tbaa !872    ; 34 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !167
  %i.y = and i64 %i.x, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !167
  %i.ab = shl i64 %i.aa, 1
  %i.ac = and i64 %i.ab, 2
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !167
  %i.ag = shl i64 %i.af, 2
  %i.ah = and i64 %i.ag, 4
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !167
  %i.al = shl i64 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.an = load i64, ptr %i.am, align 8, !tbaa !167
  %i.ao = shl i64 %i.an, 4
  %8 = and i64 %i.ao, 16
  %.masked = and i64 %i.al, 8
  %9 = or disjoint i64 %i.ai, %.masked
  %i.ap = or disjoint i64 %9, %8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !167
  %i.as = shl i64 %i.ar, 5
  %.masked139 = and i64 %i.as, 32
  %i.at = or disjoint i64 %i.ap, %.masked139
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.av = load i64, ptr %i.au, align 8, !tbaa !167
  %i.aw = shl i64 %i.av, 6
  %.masked140 = and i64 %i.aw, 64
  %i.ax = or disjoint i64 %i.at, %.masked140
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !167
  %i.ba = shl i64 %i.az, 7
  %.masked141 = and i64 %i.ba, 128
  %i.bb = or disjoint i64 %i.ax, %.masked141
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !167
  %i.be = shl i64 %i.bd, 8
  %10 = and i64 %i.be, 256
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !167
  %i.bh = shl i64 %i.bg, 9
  %i.bi = and i64 %i.bh, 512
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !167
  %i.bl = shl i64 %i.bk, 10
  %i.bm = and i64 %i.bl, 1024
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !167
  %i.bp = shl i64 %i.bo, 11
  %i.bq = and i64 %i.bp, 2048
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !167
  %i.bt = shl i64 %i.bs, 12
  %i.bu = and i64 %i.bt, 4096
  %i.bv = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !167
  %i.bx = shl i64 %i.bw, 13
  %i.by = and i64 %i.bx, 8192
  %i.bz = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !167
  %i.cb = shl i64 %i.ca, 14
  %i.cc = and i64 %i.cb, 16384
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !167
  %i.cf = shl i64 %i.ce, 15
  %i.cg = and i64 %i.cf, 32768
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !167
  %i.cj = shl i64 %i.ci, 16
  %i.ck = and i64 %i.cj, 196608
  %i.cl = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !167
  %i.cn = trunc i64 %i.cm to i16
  %i.co = shl i16 %i.cn, 1
  %i.cp = and i16 %i.co, 6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !167
  %i.cs = trunc i64 %i.cr to i16
  %i.ct = shl i16 %i.cs, 3
  %i.cu = and i16 %i.ct, 24
  %i.cv = or disjoint i16 %i.cp, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !167
  %i.cy = shl i64 %i.cx, 18
  %i.cz = and i64 %i.cy, 262144
  %i.da = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %i.db = load i64, ptr %i.da, align 8, !tbaa !167
  %i.dc = trunc i64 %i.db to i16
  %i.dd = shl i16 %i.dc, 5
  %i.de = and i16 %i.dd, 32
  %i.df = or disjoint i16 %i.cv, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !167
  %i.di = shl i64 %i.dh, 19
  %i.dj = and i64 %i.di, 524288
  %i.dk = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !167
  %i.dm = trunc i64 %i.dl to i16
  %i.dn = shl i16 %i.dm, 6
  %i.do = and i16 %i.dn, 960
  %i.dp = or disjoint i16 %i.df, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !167
  %i.ds = shl i64 %i.dr, 20
  %i.dt = and i64 %i.ds, 1048576
  %i.du = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !167
  %i.dw = shl i64 %i.dv, 21
  %i.dx = and i64 %i.dw, 2097152
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !167
  %i.ea = shl i64 %i.dz, 22
  %i.eb = and i64 %i.ea, 4194304
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or disjoint i64 %i.bb, %10
  %.masked120.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bi
  %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked120.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bm
  %.masked123.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked.masked.masked, %i.bq
  %.masked.masked.masked.masked.masked.masked.masked.masked = or i64 %.masked123.masked.masked.masked.masked.masked.masked.masked.masked, %i.bu
  %.masked125.masked.masked.masked.masked.masked.masked = or i64 %.masked.masked.masked.masked.masked.masked.masked.masked, %i.by
  %.masked143.masked.masked.masked.masked.masked = or i64 %.masked125.masked.masked.masked.masked.masked.masked, %i.cc
  %.masked145.masked.masked.masked.masked = or i64 %.masked143.masked.masked.masked.masked.masked, %i.cg
  %.masked147.masked.masked.masked = or i64 %.masked145.masked.masked.masked.masked, %i.ck
  %.masked149.masked.masked = or i64 %.masked147.masked.masked.masked, %i.cz
  %.masked151.masked = or i64 %.masked149.masked.masked, %i.dj
  %.masked153 = or i64 %.masked151.masked, %i.dt
  %i.ec = or i64 %.masked153, %i.dx
  %i.ed = or disjoint i64 %i.ec, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !167
  %i.eg = shl i64 %i.ef, 32
  %i.eh = add nuw nsw i64 %i.ed, %i.eg
  store i64 %i.eh, ptr %5, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %i.ej = load <4 x i64>, ptr %i.ei, align 8, !tbaa !167 ; 2 uses
  %i.ek = shufflevector <4 x i64> %i.ej, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.el = and <2 x i64> %i.ek, splat (i64 4294967295)
  %i.em = shufflevector <4 x i64> %i.ej, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.en = shl <2 x i64> %i.em, splat (i64 32)
  %i.eo = or disjoint <2 x i64> %i.en, %i.el
  store <2 x i64> %i.eo, ptr %i.o, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.w, i64 248
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !167
  %i.er = and i64 %i.eq, 4294967295
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  %i.et = load i64, ptr %i.es, align 8, !tbaa !167
  %i.eu = shl i64 %i.et, 32
  %i.ev = and i64 %i.eu, 4294967296
  %i.ew = or disjoint i64 %i.er, %i.ev
  %i.ex = or disjoint i64 %i.ew, %i.s
  store i64 %i.ex, ptr %i.q, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !167
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !167
  %i.fd = shl i64 %i.fc, 32
  %i.fe = or disjoint i64 %i.fd, %i.fa
  store i64 %i.fe, ptr %i.u, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !167
  %i.fh = trunc i64 %i.fg to i16
  %i.fi = and i16 %i.fh, 1
  %i.fj = or disjoint i16 %i.dp, %i.fi
  %i.fk = or disjoint i16 %i.fj, %i.v
  store i16 %i.fk, ptr %i.m, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !167
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %.not110 = icmp eq i32 %i.fn, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.fo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 160
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %.0109.lcssa = phi i32 [ 37, %bb.a ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.fs = zext i32 %.0109.lcssa to i64
  %i.ft = load ptr, ptr %0, align 8, !tbaa !872
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !167
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %.not48113 = icmp eq i32 %i.fw, 0
  br i1 %.not48113, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %._crit_edge
  %i.fx = add i32 %.0109.lcssa, 1
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 208
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0112 = phi i32 [ %i.fn, %.lr.ph ], [ %i.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.0109111 = phi i32 [ 37, %.lr.ph ], [ %i.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  %i.gd = add i32 %.0109111, 1                    ; 2 uses
  %i.ge = zext i32 %.0109111 to i64
  %i.gf = load ptr, ptr %0, align 8, !tbaa !872, !noalias !4781 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !167, !noalias !4781 ; 2 uses
  %i.gi = zext i32 %i.gd to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gi ; 3 uses
  %i.gk = and i64 %i.gh, 4294967295               ; 4 uses
  %.idx.i = shl nuw nsw i64 %i.gk, 3              ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.idx.i
  store ptr %i.fo, ptr %6, align 8, !tbaa !162, !alias.scope !4781
  store i64 0, ptr %i.fp, align 8, !tbaa !166, !alias.scope !4781
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36, !noalias !4781
  store i64 %i.gk, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  %i.gm = icmp samesign ugt i64 %i.gk, 15
  br i1 %i.gm, label %._crit_edge.i.i.thread.i, label %._crit_edge.i.i.i

._crit_edge.i.i.thread.i:                         ; preds = %bb.b
  %i.gn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #36 ; 2 uses
  store ptr %i.gn, ptr %6, align 8, !tbaa !165, !alias.scope !4781
  %i.go = load i64, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  store i64 %i.go, ptr %i.fo, align 8, !tbaa !168, !alias.scope !4781
  br label %.lr.ph.i.i.i.i.preheader

._crit_edge.i.i.i:                                ; preds = %bb.b
  %.not7.i.i.i.i = icmp eq i64 %i.gk, 0
  br i1 %.not7.i.i.i.i, label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i, %._crit_edge.i.i.thread.i
  %.09.i.i.i.i.ph = phi ptr [ %i.fo, %._crit_edge.i.i.i ], [ %i.gn, %._crit_edge.i.i.thread.i ] ; 2 uses
  %i.gp = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.gq = lshr exact i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1
  %xtraiter = and i64 %i.gr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.09.i.i.i.i.prol = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.prol ], [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.i.prol = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.prol ], [ %i.gj, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.gs = load i64, ptr %.068.i.i.i.i.prol, align 8, !tbaa !167
  %i.gt = trunc i64 %i.gs to i8
  store i8 %i.gt, ptr %.09.i.i.i.i.prol, align 1, !tbaa !168
  %i.gu = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i.prol, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4775

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.09.i.i.i.i.unr = phi ptr [ %.09.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gv, %.lr.ph.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.preheader ], [ %i.gu, %.lr.ph.i.i.i.i.prol ]
  %i.gw = icmp ult i64 %i.gp, 56
  br i1 %i.gw, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ic, %.lr.ph.i.i.i.i ], [ %.09.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i.i = phi ptr [ %i.ib, %.lr.ph.i.i.i.i ], [ %.068.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.gx = load i64, ptr %.068.i.i.i.i, align 8, !tbaa !167
  %i.gy = trunc i64 %i.gx to i8
  store i8 %i.gy, ptr %.09.i.i.i.i, align 1, !tbaa !168
  %i.gz = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 1
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !167
  %i.hc = trunc i64 %i.hb to i8
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !168
  %i.hd = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 2
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !167
  %i.hg = trunc i64 %i.hf to i8
  store i8 %i.hg, ptr %i.he, align 1, !tbaa !168
  %i.hh = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 3
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !167
  %i.hk = trunc i64 %i.hj to i8
  store i8 %i.hk, ptr %i.hi, align 1, !tbaa !168
  %i.hl = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 4
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !167
  %i.ho = trunc i64 %i.hn to i8
  store i8 %i.ho, ptr %i.hm, align 1, !tbaa !168
  %i.hp = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 40
  %i.hq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 5
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !167
  %i.hs = trunc i64 %i.hr to i8
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !168
  %i.ht = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 6
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !167
  %i.hw = trunc i64 %i.hv to i8
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !168
  %i.hx = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 56
  %i.hy = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 7
  %i.hz = load i64, ptr %i.hx, align 8, !tbaa !167
  %i.ia = trunc i64 %i.hz to i8
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !168
  %i.ib = getelementptr inbounds nuw i8, ptr %.068.i.i.i.i, i64 64 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  %.not.i.i.i.i.7 = icmp eq ptr %i.ib, %i.gl
  br i1 %.not.i.i.i.i.7, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  %.pre6.i.i.i = load i64, ptr %i.b, align 8, !tbaa !167, !noalias !4781
  %.pre7.i.i.i = load ptr, ptr %6, align 8, !tbaa !165, !alias.scope !4781
  br label %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit

_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit: ; preds = %._crit_edge.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i
  %i.id = phi ptr [ %.pre7.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ %i.fo, %._crit_edge.i.i.i ]
  %i.ie = phi i64 [ %.pre6.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKmEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i ], [ 0, %._crit_edge.i.i.i ] ; 2 uses
  %i.if = trunc i64 %i.gh to i32
  store i64 %i.ie, ptr %i.fp, align 8, !tbaa !166, !alias.scope !4781
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ie
  store i8 0, ptr %i.ig, align 1, !tbaa !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36, !noalias !4781
  %i.ih = add i32 %i.gd, %i.if                    ; 2 uses
  %i.ii = load ptr, ptr %i.fq, align 8, !tbaa !869 ; 6 uses
  %i.ij = load ptr, ptr %i.fr, align 8, !tbaa !871
  %.not.i.i = icmp eq ptr %i.ii, %i.ij
  br i1 %.not.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5clang9ASTReader10ReadStringB5cxx11ERKN4llvm15SmallVectorImplImEERj.exit
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 3 uses
end_hunk_1
