Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Win64EHDumper?download=true
inline.NumInlined: 1505
inline.NumDeleted: 741
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm7Win64EHL15printDecodedWODERNS_13ScopedPrinterERNS_11raw_ostreamERKNS0_10DecodedWODE:bb.a
  %i.kv = ptrtoint ptr %i.ks to i64
  %i.kw = ptrtoint ptr %i.ku to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = icmp ult i64 %i.kx, 26
  br i1 %i.ky, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kz = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.112, i64 noundef 26) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

bb.bi:                                            ; preds = %bb.bg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.ku, ptr noundef nonnull align 1 dereferenceable(26) @.str.112, i64 26, i1 false)
  %i.la = load ptr, ptr %i.kt, align 8, !tbaa !54
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 26
  store ptr %i.lb, ptr %i.kt, align 8, !tbaa !54
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

_ZN4llvm11raw_ostreamlsEPKc.exit99:               ; preds = %bb.bh, %bb.bi
  %.0.i.i98 = phi ptr [ %i.kz, %bb.bh ], [ %0, %bb.bi ]
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !399
  %i.le = zext i8 %i.ld to i64
  %i.lf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i98, i64 noundef %i.le) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.ae, %bb.ad, %bb.r, %bb.q, %bb.p, %bb.g, %bb.f, %bb.e, %_ZN4llvm11raw_ostreamlsEPKc.exit99, %_ZN4llvm11raw_ostreamlsEPKc.exit96, %_ZN4llvm11raw_ostreamlsEPKc.exit93, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit90, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit84, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit78, %bb.ah, %bb.ag, %bb.af, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7Win64EH6Dumper9printDataERKNS1_7ContextE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %4 = alloca %class.anon.121, align 1            ; 3 uses
  %5 = alloca %"class.llvm::object::content_iterator", align 8 ; 8 uses
  %6 = alloca %"class.llvm::Expected.74", align 8 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef.12", align 8 ; 6 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !13, !align !14 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21, !noalias !400
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.d = load ptr, ptr %i.c, align 8, !noalias !400
  %i.e = tail call { i64, ptr } %i.d(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #17, !noalias !400, !inline_history !403 ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 3 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !21, !noalias !400
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.j = load ptr, ptr %i.i, align 8, !noalias !400
  %i.k = tail call { i64, ptr } %i.j(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #17, !noalias !400, !inline_history !403 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store i64 %i.f, ptr %5, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.n, align 8
  %i.o = icmp ne ptr %i.g, %i.m
  %.not.i.i.i.i59 = icmp ne i64 %i.f, %i.l
  %.not2.i60 = select i1 %i.o, i1 true, i1 %.not.i.i.i.i59
  br i1 %.not2.i60, label %.lr.ph62, label %._crit_edge

.lr.ph62:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.b:                                             ; preds = %.lr.ph62, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52
  %lhsv.i.i.i.i61 = phi i64 [ %i.f, %.lr.ph62 ], [ %lhsv.i.i.i.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52 ]
  %i.r = phi ptr [ %i.g, %.lr.ph62 ], [ %i.by, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21, !noalias !404
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !404
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.74") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 %lhsv.i.i.i.i61) #17, !inline_history !407
  %i.v = load i8, ptr %i.p, align 8               ; 2 uses
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.043.0.copyload = load ptr, ptr %6, align 8, !tbaa !51
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !52
  br label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.b
  %i.x = load i64, ptr %6, align 8, !tbaa !82, !noalias !408
  %i.y = inttoptr i64 %i.x to ptr
  store ptr null, ptr %6, align 8, !tbaa !82, !noalias !408
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.y, ptr %3, align 8, !tbaa !87
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.z = load ptr, ptr %3, align 8, !tbaa !87     ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #17, !inline_history !89
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %.pre = load i8, ptr %i.p, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.c
  %i.ae = phi i8 [ %i.v, %bb.c ], [ %.pre, %_ZN4llvm5ErrorD2Ev.exit ]
  %.sroa.043.0 = phi ptr [ %.sroa.043.0.copyload, %bb.c ], [ null, %_ZN4llvm5ErrorD2Ev.exit ] ; 4 uses
  %.sroa.6.0 = phi i64 [ %.sroa.6.0.copyload, %bb.c ], [ 0, %_ZN4llvm5ErrorD2Ev.exit ] ; 2 uses
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.f, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %6, align 8, !tbaa !82    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #17, !inline_history !90
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.not.i.i35 = icmp eq i64 %.sroa.6.0, 6
  br i1 %.not.i.i35, label %_ZN4llvmneENS_9StringRefES0_.exit, label %_ZN4llvmneENS_9StringRefES0_.exit.thread

_ZN4llvmneENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %i.ak = load i32, ptr %.sroa.043.0, align 1
  %i.al = xor i32 %i.ak, 1633972270
  %i.am = getelementptr i8, ptr %.sroa.043.0, i64 4
  %i.an = load i16, ptr %i.am, align 1
  %i.ao = zext i16 %i.an to i32
  %i.ap = xor i32 %i.ao, 24948
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not53 = icmp eq i32 %i.as, 0
  br i1 %.not53, label %_ZN4llvmneENS_9StringRefES0_.exit.thread50, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52

_ZN4llvmneENS_9StringRefES0_.exit.thread:         ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %.not.i = icmp ult i64 %.sroa.6.0, 7
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread
  %i.at = load i32, ptr %.sroa.043.0, align 1
  %i.au = xor i32 %i.at, 1633972270
  %i.av = getelementptr i8, ptr %.sroa.043.0, i64 3
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = xor i32 %i.aw, 610366561
  %i.ay = or i32 %i.au, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZN4llvmneENS_9StringRefES0_.exit.thread50, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52

_ZN4llvmneENS_9StringRefES0_.exit.thread50:       ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !13, !align !14
  %i.bd = call noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.be = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !13, !align !14
  call void @_ZNK4llvm6object14COFFObjectFile18getSectionContentsEPKNS0_12coff_sectionERNS_8ArrayRefIhEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr noundef nonnull align 8 dereferenceable(232) %i.be, ptr noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %7) #17
  %i.bf = load ptr, ptr %8, align 8, !tbaa !87    ; 2 uses
  %.not54 = icmp eq ptr %i.bf, null
  br i1 %.not54, label %_ZN4llvm5ErrorD2Ev.exit36, label %bb.g

bb.g:                                             ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread50
  store ptr %i.bf, ptr %9, align 8, !tbaa !87
  store ptr null, ptr %8, align 8, !tbaa !87
  %i.bg = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !13, !align !14
  %i.bh = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bg) #17 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr %i.bi, i64 %i.bj) #20
  unreachable

_ZN4llvm5ErrorD2Ev.exit36:                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.thread50
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.bk = load i64, ptr %i.q, align 8, !tbaa !222
  %.fr = freeze i64 %i.bk                         ; 4 uses
  %i.bl = icmp eq i64 %.fr, 0
  br i1 %i.bl, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit36
  %i.bm = load ptr, ptr %7, align 8, !tbaa !224   ; 2 uses
  %i.bn = urem i64 %.fr, 12
  %.idx = sub nuw i64 %.fr, %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %.not55 = icmp ult i64 %.fr, 12
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.057 = phi ptr [ %i.bt, %.lr.ph ], [ %i.bm, %bb.h ] ; 2 uses
  %.02656 = phi i64 [ %i.bs, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !38, !nonnull !13, !align !14
  %i.bq = call noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232) %i.bp, ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.br = mul nuw i64 %.02656, 12
  call void @_ZN4llvm7Win64EH6Dumper20printRuntimeFunctionERKNS1_7ContextEPKNS_6object12coff_sectionEmRKNS0_15RuntimeFunctionE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.bq, i64 noundef %i.br, ptr noundef nonnull align 1 dereferenceable(12) %.057)
  %i.bs = add nuw nsw i64 %.02656, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.057, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.bo
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.h, %_ZN4llvm5ErrorD2Ev.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread52

_ZNK4llvm9StringRef11starts_withES0_.exit.thread52: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit, %_ZN4llvmneENS_9StringRefES0_.exit.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit, %.loopexit
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !217 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 136
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(48) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %5) #17, !inline_history !411
  %i.by = load ptr, ptr %i.n, align 8, !tbaa !217 ; 2 uses
  %i.bz = icmp ne ptr %i.by, %i.m
  %lhsv.i.i.i.i = load i64, ptr %5, align 8       ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.l
  %.not2.i = select i1 %i.bz, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %._crit_edge
}

declare noundef ptr @_ZNK4llvm6object14COFFObjectFile14getCOFFSectionERKNS0_10SectionRefE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #6

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, ptr } @_ZNK4llvm6object14COFFObjectFile13getCOFFSymbolERKNS0_9SymbolRefE(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !412, !nonnull !13, !align !14 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !190
  %i.h = load i64, ptr %i.e, align 8, !tbaa !52
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i64 noundef %i.h) #17
  ret i32 %i.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !414, !nonnull !13, !align !14 ; 2 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !52
  %i.g = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i64 noundef %i.f) #17
  ret i32 %i.g
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare { i32, ptr } @_ZN4llvm16errorToErrorCodeENS_5ErrorE(ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #3

declare { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjiEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416, !nonnull !13, !align !14 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !362
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !190
  %i.h = load i32, ptr %i.e, align 8, !tbaa !190
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i32 noundef %i.h) #17
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418, !nonnull !13, !align !420
  tail call void @_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.llvm::StringRef", align 8   ; 12 uses
  store ptr %2, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %3, ptr %i.c, align 8
  %i.d = call i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %4) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.034.0.extract.trunc = trunc i64 %i.d to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.f = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.b) #17
  %i.g = load i64, ptr %i.b, align 8
  %spec.select.i = select i1 %i.f, i64 0, i64 %i.g ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.h = call noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef %.sroa.034.0.extract.trunc) #17
  %i.i = add i64 %spec.select.i, 2
  %.0.i = select i1 %i.h, i64 %i.i, i64 %spec.select.i
  %i.j = load i32, ptr %0, align 4, !tbaa !190
  %i.k = zext i32 %i.j to i64
  call void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.k, i32 noundef %.sroa.034.0.extract.trunc, i64 %.0.i, i8 1) #17
  br label %bb.c

.critedge:                                        ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !tbaa !421  ; 3 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withEc.exit.i

_ZNK4llvm9StringRef11starts_withEc.exit.i:        ; preds = %.critedge
  %i.n = load ptr, ptr %4, align 8, !tbaa !422    ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !23
  %i.p = icmp eq i8 %i.o, 43                      ; 4 uses
  br i1 %i.p, label %_ZN4llvm9StringRef13consume_frontEc.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZN4llvm9StringRef13consume_frontEc.exit:         ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.r = add i64 %i.l, -1                         ; 3 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !51
  store i64 %i.r, ptr %i.c, align 8, !tbaa !52
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_ZN4llvm9StringRef13consume_frontES0_.exit26, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %_ZNK4llvm9StringRef11starts_withEc.exit.i, %_ZN4llvm9StringRef13consume_frontEc.exit
  %i.s = phi i64 [ %i.r, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ %i.l, %_ZNK4llvm9StringRef11starts_withEc.exit.i ]
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !422 ; 2 uses
  %lhsc = load i8, ptr %.pre.i, align 1
  %i.t = icmp eq i8 %lhsc, 78
  br i1 %i.t, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i11

_ZNK4llvm9StringRef11starts_withES0_.exit.i11:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i10 = load ptr, ptr %4, align 8, !tbaa !422 ; 2 uses
  %lhsc38 = load i8, ptr %.pre.i10, align 1
  %i.u = icmp eq i8 %lhsc38, 110
  br i1 %i.u, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i17

_ZNK4llvm9StringRef11starts_withES0_.exit.i17:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i11
  %.pre.i16 = load ptr, ptr %4, align 8, !tbaa !422 ; 2 uses
  %lhsc39 = load i8, ptr %.pre.i16, align 1
  %i.v = icmp eq i8 %lhsc39, 68
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i23

_ZNK4llvm9StringRef11starts_withES0_.exit.i23:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i17
  %.pre.i22 = load ptr, ptr %4, align 8, !tbaa !422 ; 2 uses
  %lhsc40 = load i8, ptr %.pre.i22, align 1
  %i.w = icmp eq i8 %lhsc40, 100
  br i1 %i.w, label %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i23, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i22.sink = phi ptr [ %.pre.i16, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ %.pre.i10, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ %.pre.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %.pre.i22, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.ph = phi i1 [ %i.p, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.p, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %.0.ph = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i17 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i11 ], [ 1, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i22.sink, i64 1
  %i.y = add i64 %i.s, -1
  store ptr %i.x, ptr %4, align 8, !tbaa !51
  store i64 %i.y, ptr %i.c, align 8, !tbaa !52
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26:     ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, %_ZN4llvm9StringRef13consume_frontEc.exit, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23
  %i.z = phi i1 [ %i.p, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ true, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ false, %.critedge ]
  %.0 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.0.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ 0, %.critedge ]
end_hunk_0
