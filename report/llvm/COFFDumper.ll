Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/COFFDumper?download=true
inline.NumInlined: 6522
inline.NumDeleted: 2471
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN12_GLOBAL__N_110COFFDumper14printCGProfileEv:bb.a

bb.q:                                             ; preds = %._crit_edge, %_ZN4llvm18BinaryStreamReaderD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper18printCallGraphInfoEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper15printBBAddrMapsEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_110COFFDumper12printAddrsigEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %2 = alloca %"class.llvm::Expected.151", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %class.anon.131, align 1            ; 3 uses
  %6 = alloca %"class.llvm::object::content_iterator", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Expected", align 8    ; 9 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 2 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !339
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.e = load ptr, ptr %i.d, align 8, !noalias !339
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #24, !noalias !339, !inline_history !218 ; 2 uses
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 3 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !11, !noalias !339
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 360
  %i.k = load ptr, ptr %i.j, align 8, !noalias !339
  %i.l = tail call { i64, ptr } %i.k(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #24, !noalias !339, !inline_history !218 ; 2 uses
  %i.m = extractvalue { i64, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.l, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i64 %i.g, ptr %6, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.o, align 8
  %i.p = icmp ne ptr %i.h, %i.n
  %.not.i.i.i.i95 = icmp ne i64 %i.g, %i.m
  %.not2.i96 = select i1 %i.p, i1 true, i1 %.not.i.i.i.i95
  br i1 %.not2.i96, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %lhsv.i.i.i.i97 = phi i64 [ %i.g, %.lr.ph ], [ %lhsv.i.i.i.i, %.critedge ] ; 2 uses
  %i.r = phi ptr [ %i.h, %.lr.ph ], [ %i.ay, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11, !noalias !342
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !342
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 %lhsv.i.i.i.i97) #24, !inline_history !225
  %i.v = load i8, ptr %i.q, align 8               ; 2 uses
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.058.0.copyload = load ptr, ptr %7, align 8, !tbaa !192
  %.sroa.659.0.copyload = load i64, ptr %.sroa.659.0..sroa_idx, align 8, !tbaa !165
  %i.x = icmp eq i64 %.sroa.659.0.copyload, 13
  br label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.b
  %i.y = load i64, ptr %7, align 8, !tbaa !229, !noalias !345
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %7, align 8, !tbaa !229, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.z, ptr %4, align 8, !tbaa !96
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.aa = load ptr, ptr %4, align 8, !tbaa !96    ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #24, !inline_history !287
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.pre = load i8, ptr %i.q, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %bb.c
  %i.af = phi i8 [ %i.v, %bb.c ], [ %.pre, %_ZN4llvm5ErrorD2Ev.exit ]
  %.sroa.058.0 = phi ptr [ %.sroa.058.0.copyload, %bb.c ], [ null, %_ZN4llvm5ErrorD2Ev.exit ] ; 2 uses
  %.sroa.659.0 = phi i1 [ %i.x, %bb.c ], [ false, %_ZN4llvm5ErrorD2Ev.exit ]
  %i.ag = trunc i8 %i.af to i1
  br i1 %i.ag, label %bb.f, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %7, align 8, !tbaa !229   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #24, !inline_history !348
  br label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit:       ; preds = %bb.e, %bb.f, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.sroa.659.0, label %_ZN4llvmeqENS_9StringRefES0_.exit, label %.critedge

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit
  %i.al = load i64, ptr %.sroa.058.0, align 1
  %i.am = xor i64 %i.al, 7233167400276618286
  %i.an = getelementptr i8, ptr %.sroa.058.0, i64 5
  %i.ao = load i64, ptr %i.an, align 1
  %i.ap = xor i64 %i.ao, 7451613993608962399
  %i.aq = or i64 %i.am, %i.ap
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread, label %.critedge

.critedge:                                        ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.au = load ptr, ptr %i.o, align 8, !tbaa !219 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %6) #24, !inline_history !256
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !219 ; 2 uses
  %i.az = icmp ne ptr %i.ay, %i.n
  %lhsv.i.i.i.i = load i64, ptr %6, align 8       ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %lhsv.i.i.i.i, %i.m
  %.not2.i = select i1 %i.az, i1 true, i1 %.not.i.i.i.i
  br i1 %.not2.i, label %bb.b, label %._crit_edge

.thread:                                          ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bb = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ba) #24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !349
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !11, !noalias !349
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !349
  call void %i.be(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.151") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 %lhsv.i.i.i.i97) #24, !noalias !349, !inline_history !251
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = load i8, ptr %i.bf, align 8, !noalias !349
  %i.bh = trunc i8 %i.bg to i1
  br i1 %i.bh, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit35

._crit_edge:                                      ; preds = %.critedge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.l

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %.thread
  %i.bi = extractvalue { ptr, i64 } %i.bb, 1
  %i.bj = extractvalue { ptr, i64 } %i.bb, 0
  %i.bk = load i64, ptr %2, align 8, !tbaa !229, !noalias !352
  %i.bl = inttoptr i64 %i.bk to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !349
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr %i.bl, ptr %1, align 8, !tbaa !96, !alias.scope !355
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %1, ptr %i.bj, i64 %i.bi) #25
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit35:     ; preds = %.thread
  %i.bm = load ptr, ptr %2, align 8, !tbaa !317, !noalias !349 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !319, !noalias !349 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !349
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !166, !nonnull !88, !align !104 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(44) %i.bq, ptr nonnull @.str.161, i64 7) #24, !inline_history !85
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo ; 3 uses
  %.not98 = icmp samesign eq i64 %i.bo, 0
  br i1 %.not98, label %_ZN4llvm9ListScopeD2Ev.exit, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit35, %bb.k
  %.01899 = phi ptr [ %i.cx, %bb.k ], [ %i.bm, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit35 ] ; 4 uses
  %i.bv = icmp eq ptr %.01899, %i.bu
  br i1 %i.bv, label %.preheader._crit_edge, label %.lr.ph115, !prof !358

bb.g:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv113, 7
  %i.bw = icmp eq ptr %i.cf, %i.bu
  br i1 %i.bw, label %.preheader._crit_edge, label %.lr.ph115, !prof !359, !llvm.loop !360

.lr.ph115:                                        ; preds = %.preheader, %bb.g
  %.029.i115 = phi i64 [ %.130.i, %bb.g ], [ 0, %.preheader ]
  %.031.i114 = phi ptr [ %i.cf, %bb.g ], [ %.01899, %.preheader ] ; 2 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %.preheader ] ; 5 uses
  %i.bx = load i8, ptr %.031.i114, align 1, !tbaa !128 ; 2 uses
  %i.by = and i8 %i.bx, 127                       ; 3 uses
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = icmp samesign ugt i64 %indvars.iv113, 62
  br i1 %i.ca, label %bb.h, label %bb.i, !prof !130

bb.h:                                             ; preds = %.lr.ph115
  %.not44.i = icmp eq i64 %indvars.iv113, 63
  %.not.i36 = icmp samesign ugt i8 %i.by, 1
  %i.cb = icmp ne i8 %i.by, 0
  %or.cond43.i = select i1 %.not44.i, i1 %.not.i36, i1 %i.cb
  br i1 %or.cond43.i, label %.preheader._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph115
  %i.cc = icmp samesign ult i64 %indvars.iv113, 64
  %i.cd = shl i64 %i.bz, %indvars.iv113
  %i.ce = select i1 %i.cc, i64 %i.cd, i64 0, !prof !361
  %.130.i = add i64 %i.ce, %.029.i115             ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.031.i114, i64 1 ; 3 uses
  %i.cg = icmp slt i8 %i.bx, 0
  br i1 %i.cg, label %bb.g, label %bb.k, !llvm.loop !360

.preheader._crit_edge:                            ; preds = %.preheader, %bb.h, %bb.g
  %.0.ph = phi ptr [ @.str.163, %bb.g ], [ @.str.164, %bb.h ], [ @.str.163, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.ch, align 1, !tbaa !362
  %i.ci = load i8, ptr %.0.ph, align 1, !tbaa !128
  %.not.i37 = icmp eq i8 %i.ci, 0
  br i1 %.not.i37, label %_ZN4llvm5TwineC2EPKc.exit, label %bb.j

bb.j:                                             ; preds = %.preheader._crit_edge
  store ptr %.0.ph, ptr %9, align 8, !tbaa !128
  br label %_ZN4llvm5TwineC2EPKc.exit

_ZN4llvm5TwineC2EPKc.exit:                        ; preds = %.preheader._crit_edge, %bb.j
  %storemerge.i38 = phi i8 [ 3, %bb.j ], [ 1, %.preheader._crit_edge ]
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 %storemerge.i38, ptr %i.cj, align 8, !tbaa !365
  call void @_ZN4llvm6object11createErrorERKNS_5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %8, ptr noundef nonnull align 8 dereferenceable(34) %9)
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.cl = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ck) #24 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr %i.cm, i64 %i.cn) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.co = ptrtoint ptr %i.cf to i64
  %i.cp = ptrtoint ptr %.01899 to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = load ptr, ptr %i.bp, align 8, !tbaa !166, !nonnull !88, !align !104
  %i.cs = trunc i64 %.130.i to i32
  %i.ct = call fastcc { ptr, i64 } @_ZN12_GLOBAL__N_110COFFDumper13getSymbolNameEj(ptr noundef nonnull align 8 dereferenceable(496) %0, i32 noundef %i.cs) ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1
  call void @_ZN4llvm13ScopedPrinter11printNumberImEEvNS_9StringRefES2_T_(ptr noundef nonnull align 8 dereferenceable(44) %i.cr, ptr nonnull @.str.162, i64 3, ptr %i.cu, i64 %i.cv, i64 noundef %.130.i)
  %i.cw = and i64 %i.cq, 4294967295
  %i.cx = getelementptr inbounds nuw i8, ptr %.01899, i64 %i.cw ; 2 uses
  %.not = icmp eq ptr %i.cx, %i.bu
  br i1 %.not, label %_ZN4llvm9ListScopeD2Ev.exit, label %.preheader, !llvm.loop !366

_ZN4llvm9ListScopeD2Ev.exit:                      ; preds = %bb.k, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit35
  %i.cy = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 280
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(44) %i.bq) #24, !inline_history !110
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %_ZN4llvm9ListScopeD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper10printNotesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper21printELFLinkerOptionsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper15printStackSizesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper19printSectionDetailsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper21printArchSpecificInfoEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper11printMemtagEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper21printSectionsAsSFrameENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_110COFFDumper16printCOFFImportsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(496) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %2 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.llvm::object::content_iterator.187", align 8 ; 8 uses
  %5 = alloca %"class.llvm::object::content_iterator.187", align 8 ; 5 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %9 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %10 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %13 = alloca %"class.llvm::iterator_range.169", align 8 ; 5 uses
  %14 = alloca %"class.llvm::object::content_iterator.170", align 8 ; 11 uses
  %15 = alloca %"class.llvm::object::content_iterator.170", align 8 ; 5 uses
  %16 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %17 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %22 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %23 = alloca %"class.llvm::iterator_range.186", align 8 ; 2 uses
  %24 = alloca %"class.llvm::iterator_range.186", align 8 ; 2 uses
  %25 = alloca %"class.llvm::iterator_range.188", align 8 ; 5 uses
  %26 = alloca %"class.llvm::object::content_iterator.189", align 8 ; 10 uses
  %27 = alloca %"class.llvm::object::content_iterator.189", align 8 ; 5 uses
  %28 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %29 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %30 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 9 uses
  %31 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %32 = alloca %"class.llvm::Error", align 8      ; 2 uses
  %33 = alloca %"class.llvm::iterator_range.186", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  call void @_ZNK4llvm6object14COFFObjectFile18import_directoriesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.169") align 8 %13, ptr noundef nonnull align 8 dereferenceable(232) %i.g) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(48) %13, i64 24, i1 false), !tbaa.struct !289
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !289
  %i.i = call noundef zeroext i1 @_ZNK4llvm6object23ImportDirectoryEntryRefeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15) #24
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm9DictScopeD2Ev.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !13
  call void @_ZNK4llvm6object14COFFObjectFile24delay_import_directoriesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.188") align 8 %25, ptr noundef nonnull align 8 dereferenceable(232) %i.k) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(48) %25, i64 24, i1 false), !tbaa.struct !367
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %i.l = getelementptr inbounds nuw i8, ptr %25, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !367
  %i.m = call noundef zeroext i1 @_ZNK4llvm6object28DelayImportDirectoryEntryRefeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %27) #24
  br i1 %i.m, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %28, i64 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %33, i64 32
  br label %bb.h

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm9DictScopeD2Ev.exit
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !166, !nonnull !88, !align !104 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.x, ptr nonnull @.str.165, i64 6) #24, !inline_history !167
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  call void @_ZNK4llvm6object23ImportDirectoryEntryRef7getNameERNS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(16) %16) #24
  %i.ab = load ptr, ptr %17, align 8, !tbaa !96   ; 2 uses
  %.not65 = icmp eq ptr %i.ab, null
  br i1 %.not65, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.ab, ptr %18, align 8, !tbaa !96
end_hunk_0
