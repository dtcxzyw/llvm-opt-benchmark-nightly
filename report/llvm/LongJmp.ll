Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LongJmp?download=true
inline.NumInlined: 3136
inline.NumDeleted: 1507
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK4llvm4bolt11LongJmpPass16getSymbolAddressERKNS0_13BinaryContextEPKNS_8MCSymbolEPKNS0_16BinaryBasicBlockE:bb.a
  br i1 %.not.i, label %_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm4bolt13BinaryContext19getBinaryDataByNameENS_9StringRefE.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !558, !noalias !792
  br label %_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit

bb.k:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i11, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !560
  br label %_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit

_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit: ; preds = %bb.j, %_ZNK4llvm4bolt13BinaryContext19getBinaryDataByNameENS_9StringRefE.exit.i, %_ZNK4llvm9StringMapIPNS_4bolt10BinaryDataENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.i, %_ZNK4llvm8MCSymbol7getNameEv.exit.i, %bb.k
  %.0 = phi i64 [ %i.da, %bb.k ], [ %i.cy, %bb.j ], [ 14, %_ZNK4llvm4bolt13BinaryContext19getBinaryDataByNameENS_9StringRefE.exit.i ], [ 14, %_ZNK4llvm9StringMapIPNS_4bolt10BinaryDataENS_15MallocAllocatorEE4findENS_9StringRefE.exit.i.i.i ], [ 14, %_ZNK4llvm8MCSymbol7getNameEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.l

bb.l:                                             ; preds = %_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit
  %.1 = phi i64 [ %i.an, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E4findES5_.exit ], [ %.0, %_ZNK4llvm4bolt13BinaryContext14getSymbolValueERKNS_8MCSymbolE.exit ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERb(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 9 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !194, !nonnull !43, !align !195 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store ptr %2, ptr %i.a, align 8, !tbaa !209
  %i.j = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEiNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !218  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 1528 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !800
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !821
  %i.q = shl i32 %i.p, 3
  %i.r = icmp eq i32 %i.l, %i.q
  br i1 %i.r, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !564
  br label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.s = load atomic i8, ptr @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp acquire, align 8
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.e, !prof !822

bb.c:                                             ; preds = %bb.b
  %i.u = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp) #21
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 1568
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207  ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1288
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(536) %i.w) #21
  store i32 %i.aa, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp, align 4, !tbaa !218
  %i.ab = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ac = load atomic i8, ptr @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %bb.h, !prof !822

bb.f:                                             ; preds = %bb.e
  %i.ae = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr) #21
  %.not38 = icmp eq i32 %i.ae, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 1568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !207 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1296
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(536) %i.ag) #21
  store i32 %i.ak, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr, align 4, !tbaa !218
  %i.al = call ptr @llvm.invariant.start.p0(i64 4, ptr nonnull @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr) #21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.am = load atomic i8, ptr @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.i, label %bb.k, !prof !822

bb.i:                                             ; preds = %bb.h
  %i.ao = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask) #21
  %.not39 = icmp eq i32 %i.ao, 0
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp, align 4, !tbaa !218
  %i.aq = zext nneg i32 %i.ap to i64
  %notmask = shl nsw i64 -1, %i.aq
  store i64 %notmask, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask, align 8, !tbaa !281
  %i.ar = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask) #21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.as = load atomic i8, ptr @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.n, !prof !822

bb.l:                                             ; preds = %bb.k
  %i.au = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask) #21
  %.not40 = icmp eq i32 %i.au, 0
  br i1 %.not40, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i32, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE16RangeSingleInstr, align 4, !tbaa !218
  %i.aw = add nsw i32 %i.av, -1
  %i.ax = zext nneg i32 %i.aw to i64
  %notmask41 = shl nsw i64 -1, %i.ax
  store i64 %notmask41, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask, align 8, !tbaa !281
  %i.ay = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1568
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !207 ; 2 uses
  %i.bb = load ptr, ptr %2, align 8, !tbaa !270
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 864
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(536) %i.ba, ptr noundef nonnull align 8 dereferenceable(128) %i.bb, i32 noundef 0) #21 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 752
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !265, !noalias !823
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 760
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !266, !noalias !823 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 772
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !267, !noalias !823 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = add i32 %i.bl, -1                       ; 2 uses
  %i.bo = ptrtoint ptr %i.bf to i64
  %i.bp = mul i64 %i.bo, -4658895280553007687     ; 2 uses
  %i.bq = lshr i64 %i.bp, 31
  %i.br = xor i64 %i.bq, %i.bp
  %i.bs = trunc i64 %i.br to i32
  %i.bt = and i32 %i.bn, %i.bs                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !218
  %i.by = and i32 %i.bt, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i.i.i, label %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit, !prof !255

.lr.ph.i.i.i:                                     ; preds = %bb.o, %bb.p
  %i.cb = phi i64 [ %i.ch, %bb.p ], [ %i.bu, %bb.o ]
  %.017.i.i.i = phi i32 [ %i.cg, %bb.p ], [ %i.bt, %bb.o ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.cb ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = icmp eq ptr %i.bf, %i.cd
  br i1 %i.ce, label %bb.q, label %bb.p, !prof !256

bb.p:                                             ; preds = %.lr.ph.i.i.i
  %i.cf = add nuw i32 %.017.i.i.i, 1
  %i.cg = and i32 %i.cf, %i.bn                    ; 3 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = lshr i64 %i.ch, 5
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !218
  %i.cl = and i32 %i.cg, 31
  %i.cm = lshr i32 %i.ck, %i.cl
  %i.cn = trunc i32 %i.cm to i1
  br i1 %i.cn, label %.lr.ph.i.i.i, label %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit, !prof !257

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !209
  br label %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit

_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit: ; preds = %bb.p, %bb.n, %bb.o, %bb.q
  %i.cq = phi ptr [ %i.cp, %bb.q ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.p ]
  %i.cr = call noundef i64 @_ZNK4llvm4bolt11LongJmpPass16getSymbolAddressERKNS0_13BinaryContextEPKNS_8MCSymbolEPKNS0_16BinaryBasicBlockE(ptr noundef nonnull align 8 dereferenceable(268) %1, ptr noundef nonnull align 8 dereferenceable(2268) %i.h, ptr noundef %i.bf, ptr noundef %i.cq) ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store ptr %2, ptr %i.b, align 8, !tbaa !209
  %i.ct = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEmNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_mEEEES5_mS7_SA_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i45 = extractvalue { ptr, i8 } %i.ct, 0
  %i.cu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i45, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !281 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %7 = icmp ugt i64 %i.cv, %i.cr
  %8 = sub nuw i64 %i.cv, %i.cr
  %i.cw = sub nuw i64 %i.cr, %i.cv
  %9 = select i1 %7, i64 %8, i64 %i.cw            ; 2 uses
  %i.cx = load i64, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE15SingleInstrMask, align 8, !tbaa !281
  %i.cy = and i64 %9, %i.cx
  %.not42 = icmp eq i64 %i.cy, 0
  br i1 %.not42, label %_ZN4llvm5ErrorD2Ev.exit46, label %bb.r

_ZN4llvm5ErrorD2Ev.exit46:                        ; preds = %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit
  store ptr null, ptr %0, align 8, !tbaa !564
  br label %bb.aq

bb.r:                                             ; preds = %_ZN4llvm4bolt14BinaryFunction21getBasicBlockForLabelEPKNS_8MCSymbolE.exit
  %i.cz = load i64, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE12ShortJmpMask, align 8, !tbaa !281
  %i.da = and i64 %i.cz, %9
  %.not43 = icmp eq i64 %i.da, 0
  br i1 %.not43, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  %i.db = load i32, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp, align 4, !tbaa !218
  %.not44 = icmp slt i32 %i.l, %i.db
  br i1 %.not44, label %bb.t, label %_ZN4llvm5ErrorD2Ev.exit47

_ZN4llvm5ErrorD2Ev.exit47:                        ; preds = %bb.s
  store ptr null, ptr %0, align 8, !tbaa !564
  br label %bb.aq

bb.t:                                             ; preds = %bb.s
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !194, !nonnull !43, !align !195 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1568 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !207 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 1368
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !198
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1232
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(536) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %i.bf, ptr noundef %i.di, i1 noundef zeroext false) #21, !inline_history !797
  %i.dm = load ptr, ptr %2, align 8, !tbaa !565   ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !210 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.do, %i.dm
  br i1 %.not.i.i.i.i, label %_ZN4llvm4bolt16BinaryBasicBlock5clearEv.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dt, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i ], [ %i.dm, %bb.t ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.dq) #21
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.do
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !210
  br label %_ZN4llvm4bolt16BinaryBasicBlock5clearEv.exit.i

_ZN4llvm4bolt16BinaryBasicBlock5clearEv.exit.i:   ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i.i.i, %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 168
  store i32 0, ptr %i.du, align 8, !tbaa !250
  %i.dv = load ptr, ptr %5, align 8, !tbaa !270   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !270 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.dv, %i.dx
  br i1 %.not4.i.i, label %_ZN4llvm4bolt16BinaryBasicBlock15addInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm4bolt16BinaryBasicBlock5clearEv.exit.i
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.v

bb.v:                                             ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i, %.lr.ph.i.i
  %.sroa.02.05.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dz, %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i ] ; 7 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 128 ; 2 uses
  call void @_ZN4llvm4bolt16BinaryBasicBlock16adjustNumPseudosERKNS_6MCInstEi(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02.05.i.i, i32 noundef 1) #21
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !210 ; 8 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !211
  %.not.i.i.i10.i = icmp eq ptr %i.ea, %i.eb
  br i1 %.not.i.i.i10.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ea, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02.05.i.i, i64 16, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  store i32 0, ptr %i.ef, align 8, !tbaa !204
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  store i32 6, ptr %i.eg, align 4, !tbaa !205
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !204 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ei, 0
  %i.ej = icmp eq ptr %i.ea, %.sroa.02.05.i.i
  %or.cond.i.i.i.i.i.i = or i1 %i.ej, %.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = icmp ugt i32 %i.ei, 6
  br i1 %i.ek, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.el = zext i32 %i.ei to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.ec, ptr noundef nonnull %i.ee, i64 noundef %i.el, i64 noundef 16) #21
  %.pre.i.i.i.i.i.i = load i32, ptr %i.eh, align 8, !tbaa !204 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.pre.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !45
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i, %bb.x
  %i.em = phi ptr [ %.pre.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i ], [ %i.ee, %bb.x ]
  %i.en = phi i32 [ %.pre.i.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i.i.i.i.i ], [ %i.ei, %bb.x ]
  %i.eo = zext i32 %i.en to i64
  %i.ep = load ptr, ptr %i.ed, align 8, !tbaa !45
  %gepdiff.i.i.i.i.i.i.i = shl nuw nsw i64 %i.eo, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 8 %i.ep, i64 %gepdiff.i.i.i.i.i.i.i, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i:                        ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i.i.i.i.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i.i.i.i.i.i
  store i32 %i.ei, ptr %i.ef, align 8, !tbaa !204
  br label %_ZN4llvm6MCInstC2ERKS0_.exit.i.i.i.i

_ZN4llvm6MCInstC2ERKS0_.exit.i.i.i.i:             ; preds = %.sink.split.i.i.i.i.i.i.i, %bb.w
  %i.eq = load ptr, ptr %i.dn, align 8, !tbaa !210
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  store ptr %i.er, ptr %i.dn, align 8, !tbaa !210
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i

bb.y:                                             ; preds = %bb.v
  call void @_ZNSt6vectorIN4llvm6MCInstESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr %i.ea, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.02.05.i.i)
  br label %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i

_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i: ; preds = %bb.y, %_ZN4llvm6MCInstC2ERKS0_.exit.i.i.i.i
  %.not.i.i = icmp eq ptr %i.dz, %i.dx
  br i1 %.not.i.i, label %_ZN4llvm4bolt16BinaryBasicBlock15addInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit.i, label %bb.v, !llvm.loop !798

_ZN4llvm4bolt16BinaryBasicBlock15addInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit.i: ; preds = %_ZN4llvm4bolt16BinaryBasicBlock14addInstructionERKNS_6MCInstE.exit.i.i, %_ZN4llvm4bolt16BinaryBasicBlock5clearEv.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.et = load i8, ptr %i.es, align 8, !tbaa !824, !range !42, !noundef !43
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN4llvm4bolt16BinaryBasicBlock15addInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit.i
  %i.ev = load ptr, ptr %i.df, align 8, !tbaa !207 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1192
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(536) %i.ev, ptr noundef nonnull align 8 dereferenceable(192) %2) #21, !inline_history !797
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN4llvm4bolt16BinaryBasicBlock15addInstructionsIN9__gnu_cxx17__normal_iteratorIPNS_6MCInstESt6vectorIS5_SaIS5_EEEEEEvT_SB_.exit.i
  %i.ez = load ptr, ptr %5, align 8, !tbaa !565   ; 3 uses
  %i.fa = load ptr, ptr %i.dw, align 8, !tbaa !210 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ez, %i.fa
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.aa, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ff, %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i ], [ %i.ez, %bb.aa ] ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !45 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i
  call void @free(ptr noundef %i.fc) #21
  br label %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i:   ; preds = %bb.ab, %.lr.ph.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i11.i = icmp eq ptr %i.ff, %i.fa
  br i1 %.not.i.i.i11.i, label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm6MCInstEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !565
  br label %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i

_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i:    ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i.i, %bb.aa
  %i.fg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exitthread-pre-split.i.i ], [ %i.ez, %bb.aa ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm5ErrorD2Ev.exit49, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !211
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #24
  br label %_ZN4llvm5ErrorD2Ev.exit49

_ZN4llvm5ErrorD2Ev.exit49:                        ; preds = %bb.ac, %_ZSt8_DestroyIPN4llvm6MCInstEEvT_S3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.fm = load i32, ptr @_ZZN4llvm4bolt11LongJmpPass9relaxStubERNS0_16BinaryBasicBlockERbE13RangeShortJmp, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store ptr %2, ptr %i.c, align 8, !tbaa !209
  %i.fn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_4bolt16BinaryBasicBlockEiNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_iEEEES5_iS7_SA_E24lookupOrInsertIntoBucketIS5_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i48 = extractvalue { ptr, i8 } %i.fn, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i48, i64 8
  store i32 %i.fm, ptr %i.fo, align 4, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  store i8 1, ptr %3, align 1, !tbaa !566
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS3_St14default_deleteIS3_EESaIS9_EENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_SB_EEEES4_SB_SD_SG_E8moveFromERSH_:bb.a
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !218
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !218
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1149

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !209
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1152
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !585
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !585
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !218
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !218
  %i.bd = add i32 %.0.i25, -1
  %i.be = and i32 %i.bd, %.0.i25                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1150

._crit_edge:                                      ; preds = %._crit_edge.i, %.lr.ph29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph29, !llvm.loop !1151

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !610
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !611
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !611
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS2_St14default_deleteIS2_EESaIS8_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !608
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #21
  store i32 0, ptr %i.d, align 4, !tbaa !610
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS2_St14default_deleteIS2_EESaIS8_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS2_St14default_deleteIS2_EESaIS8_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_SA_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_4bolt16BinaryBasicBlockESt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISC_EENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_SE_EEEES7_SE_SG_SJ_E8moveFromERSK_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEEZNS1_11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) #3 align 2 {
bb.a:
  tail call void @_ZN4llvm4bolt11LongJmpPass18relaxLocalBranchesERNS0_14BinaryFunctionE(ptr nonnull readnone align 8 poison, ptr noundef nonnull align 8 dereferenceable(1360) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4llvm4bolt14BinaryFunctionEEZNS1_11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !595
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !646
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !622
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_1E9_M_invokeERKSt9_Any_dataS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !1154
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm4bolt13BinaryContext10shouldEmitERKNS0_14BinaryFunctionE(ptr noundef nonnull align 8 dereferenceable(2268) %.val, ptr noundef nonnull align 8 dereferenceable(1360) %1) #21
  br i1 %i.a, label %bb.b, label %"_ZSt10__invoke_rIbRZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_1JRKNS1_14BinaryFunctionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.c = load i8, ptr %i.b, align 8, !tbaa !530, !range !42, !noundef !43
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  br label %"_ZSt10__invoke_rIbRZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_1JRKNS1_14BinaryFunctionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit"

"_ZSt10__invoke_rIbRZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_1JRKNS1_14BinaryFunctionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit": ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm4bolt14BinaryFunctionEEZNS1_11LongJmpPass14runOnFunctionsERNS1_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #16 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !595
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !646
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !623
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm4bolt11LongJmpPass14runOnFunctionsERNS2_13BinaryContextEE3$_1E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_LongJmp.cpp() #17 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZN4optsL10GroupStubsE, i32 noundef 0, i32 noundef 0) #21
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 120), align 8, !tbaa !226
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 128), align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZN4optsL10GroupStubsE, align 8, !tbaa !35
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 144), align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL10GroupStubsE, ptr nonnull align 1 dereferenceable(12) @.str, i64 11) #21
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 32), align 8, !tbaa !1155
  store i64 28, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 40), align 8, !tbaa !281
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 120), align 8, !tbaa !226
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 137), align 1, !tbaa !633
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL10GroupStubsE, i64 136), align 8, !tbaa !1156
  tail call void @_ZN4llvm2cl6Option11addCategoryERNS0_14OptionCategoryE(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL10GroupStubsE, ptr noundef nonnull align 8 dereferenceable(32) @_ZN4opts15BoltOptCategoryE) #21
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZN4optsL10GroupStubsE) #21
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZN4optsL10GroupStubsE, ptr nonnull @__dso_handle) #21 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold noreturn nounwind }

!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}
!llvm.errno.tbaa = !{!33}

!0 = distinct !{null}
!1 = distinct !{!1, !215}
!2 = distinct !{!2, !215}
!3 = distinct !{null}
!4 = distinct !{!4, !215}
!5 = distinct !{null}
!6 = distinct !{!6, !215}
!7 = distinct !{null}
!8 = distinct !{!8, !215}
!9 = distinct !{!9, !215}
!10 = distinct !{!10, !215}
!11 = distinct !{!11, !215}
!12 = distinct !{!12, !215}
!13 = distinct !{!13, !215}
!14 = distinct !{!14, !215}
!15 = distinct !{!15, !215}
!16 = distinct !{!16, !215}
!17 = distinct !{!17, !215}
!18 = distinct !{!18, !215}
!19 = distinct !{!19, !215}
!20 = distinct !{!20, !215}
!21 = distinct !{!21, !215}
!22 = distinct !{!22, !215}
!23 = distinct !{!23, !215}
!24 = distinct !{!24, !215}
!25 = distinct !{!25, !215}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"uwtable", i32 2}
!28 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!29 = !{!"Simple C++ TBAA"}
!30 = !{!"omnipotent char", !29, i64 0}
!31 = !{!"int", !30, i64 0}
!32 = !{!"__libc_errno", !31, i64 0}
!33 = !{!32, !31, i64 0}
!34 = !{!"vtable pointer", !29, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"any pointer", !30, i64 0}
!37 = !{!"_ZTSSt14_Function_base", !30, i64 0, !36, i64 16}
!38 = !{!37, !36, i64 16}
!39 = !{!"any p2 pointer", !36, i64 0}
!40 = !{!"bool", !30, i64 0}
!41 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !39, i64 0, !31, i64 8, !31, i64 12, !40, i64 16}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !36, i64 0, !31, i64 8, !31, i64 12}
!45 = !{!44, !36, i64 0}
!46 = !{!"p1 _ZTSN4llvm8MCSymbolE", !36, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"p1 _ZTSN4llvm6MCInstE", !36, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!50 = !{!"_ZTSNSt12_Vector_baseIN4llvm6MCInstESaIS1_EE12_Vector_implE", !49, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseIN4llvm6MCInstESaIS1_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorIN4llvm6MCInstESaIS1_EE", !51, i64 0}
!53 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_4bolt16BinaryBasicBlockEvEE", !44, i64 0}
!54 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_4bolt16BinaryBasicBlockELb1EEE", !53, i64 0}
!55 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_4bolt16BinaryBasicBlockEEE", !54, i64 0}
!56 = !{!"_ZTSN4llvm11SmallVectorIPNS_4bolt16BinaryBasicBlockELj0EEE", !55, i64 0}
!57 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEvEE", !44, i64 0}
!58 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELb1EEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt16BinaryBasicBlock16BinaryBranchInfoEEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt16BinaryBasicBlock16BinaryBranchInfoELj0EEE", !59, i64 0}
!61 = !{!"p1 _ZTSN4llvm4bolt14BinaryFunctionE", !36, i64 0}
!62 = !{!"_ZTSSt4pairIjjE", !31, i64 0, !31, i64 4}
!63 = !{!"p1 _ZTSSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS5_EE", !36, i64 0}
!64 = !{!"_ZTSSt10_Head_baseILm0EPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EELb0EE", !63, i64 0}
!65 = !{!"_ZTSSt11_Tuple_implILm0EJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !64, i64 0}
!66 = !{!"_ZTSSt5tupleIJPSt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EEE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_implISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !66, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_dataISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_ELb1ELb1EE", !67, i64 0}
!69 = !{!"_ZTSSt10unique_ptrISt6vectorISt4pairIjPKN4llvm8MCSymbolEESaIS6_EESt14default_deleteIS8_EE", !68, i64 0}
!70 = !{!"long", !30, i64 0}
!71 = !{!"_ZTSN4llvm4bolt11FragmentNumE", !31, i64 0}
!72 = !{!"_ZTSN4llvm4bolt16BinaryBasicBlockE", !52, i64 0, !56, i64 24, !56, i64 40, !60, i64 56, !56, i64 72, !56, i64 88, !61, i64 104, !46, i64 112, !62, i64 120, !62, i64 128, !69, i64 136, !31, i64 144, !31, i64 148, !70, i64 152, !31, i64 160, !31, i64 164, !31, i64 168, !31, i64 172, !71, i64 176, !40, i64 180, !40, i64 181, !70, i64 184}
!73 = !{!72, !61, i64 104}
!74 = !{!"_ZTSN4llvm4bolt14BinaryFunction5StateE", !30, i64 0}
!75 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_8MCSymbolEvEE", !44, i64 0}
!76 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_8MCSymbolELb1EEE", !75, i64 0}
!77 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_8MCSymbolEEE", !76, i64 0}
!78 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_8MCSymbolELj1EEE", !30, i64 0}
!79 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj1EEE", !77, i64 0, !78, i64 16}
!80 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE", !44, i64 0}
!81 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EEE", !80, i64 0}
!82 = !{!"_ZTSN4llvm15SmallVectorImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !81, i64 0}
!83 = !{!"_ZTSN4llvm11SmallVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELj0EEE", !82, i64 0}
!84 = !{!"p1 _ZTSN4llvm4bolt13BinarySectionE", !36, i64 0}
!85 = !{!"short", !30, i64 0}
!86 = !{!"p1 _ZTSN4llvm4bolt13BinaryContextE", !36, i64 0}
!87 = !{!"p1 _ZTSN4llvm4bolt14BinaryLoopInfoE", !36, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm4bolt14BinaryLoopInfoELb0EE", !87, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !88, i64 0}
!90 = !{!"_ZTSSt5tupleIJPN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !90, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_ELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt10unique_ptrIN4llvm4bolt14BinaryLoopInfoESt14default_deleteIS2_EE", !92, i64 0}
!94 = !{!"p1 _ZTSN4llvm17DominatorTreeBaseINS_4bolt16BinaryBasicBlockELb0EEE", !36, i64 0}
!95 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEELb0EE", !94, i64 0}
!96 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !95, i64 0}
!97 = !{!"_ZTSSt5tupleIJPN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EEE", !96, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_ELb1ELb1EE", !98, i64 0}
!100 = !{!"_ZTSSt10unique_ptrIN4llvm17DominatorTreeBaseINS0_4bolt16BinaryBasicBlockELb0EEESt14default_deleteIS4_EE", !99, i64 0}
!101 = !{!"_ZTSSt4lessImE"}
!102 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !101, i64 0}
!103 = !{!"_ZTSSt14_Rb_tree_color", !30, i64 0}
!104 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !36, i64 0}
!105 = !{!"_ZTSSt18_Rb_tree_node_base", !103, i64 0, !104, i64 8, !104, i64 16, !104, i64 24}
!106 = !{!"_ZTSSt15_Rb_tree_header", !105, i64 0, !70, i64 32}
!107 = !{!"_ZTSNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE13_Rb_tree_implIS3_Lb1EEE", !102, i64 0, !106, i64 8}
!108 = !{!"_ZTSSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE", !107, i64 0}
!109 = !{!"_ZTSSt3setImSt4lessImESaImEE", !108, i64 0}
!110 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairImEE", !36, i64 0}
!111 = !{!"p1 int", !36, i64 0}
!112 = !{!"_ZTSN4llvm8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImvEENS1_12DenseSetPairImEEEE", !110, i64 0, !111, i64 8, !31, i64 16, !31, i64 20}
!113 = !{!"_ZTSN4llvm6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImvEENS0_12DenseSetPairImEEEEEE", !112, i64 0}
!114 = !{!"_ZTSN4llvm8DenseSetImNS_12DenseMapInfoImvEEEE", !113, i64 0}
!115 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPS2_EE", !36, i64 0}
!116 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPS1_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE", !115, i64 0, !111, i64 8, !31, i64 16, !31, i64 20}
!117 = !{!"p1 omnipotent char", !36, i64 0}
!118 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !117, i64 0}
!119 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !118, i64 0, !70, i64 8, !30, i64 16}
!120 = !{!"_ZTSN4llvm15SmallPtrSetImplIPNS_4bolt14BinaryFunctionEEE", !41, i64 0}
!121 = !{!"_ZTSN4llvm11SmallPtrSetIPNS_4bolt14BinaryFunctionELj1EEE", !120, i64 0, !30, i64 24}
!122 = !{!"float", !30, i64 0}
!123 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_4bolt19IndirectCallProfileEvEE", !44, i64 0}
!124 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_4bolt19IndirectCallProfileELb1EEE", !123, i64 0}
!125 = !{!"_ZTSN4llvm15SmallVectorImplINS_4bolt19IndirectCallProfileEEE", !124, i64 0}
!126 = !{!"_ZTSN4llvm18SmallVectorStorageINS_4bolt19IndirectCallProfileELj4EEE", !30, i64 0}
!127 = !{!"_ZTSN4llvm11SmallVectorINS_4bolt19IndirectCallProfileELj4EEE", !125, i64 0, !126, i64 16}
!128 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairImPNS_9DWARFUnitEEE", !36, i64 0}
!129 = !{!"_ZTSN4llvm8DenseMapImPNS_9DWARFUnitENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEE", !128, i64 0, !111, i64 8, !31, i64 16, !31, i64 20}
!130 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockEEE", !36, i64 0}
!131 = !{!"_ZTSN4llvm8DenseMapIPKNS_8MCSymbolEPNS_4bolt16BinaryBasicBlockENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEE", !130, i64 0, !111, i64 8, !31, i64 16, !31, i64 20}
!132 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIjjEvEE", !44, i64 0}
!133 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIjjELb1EEE", !132, i64 0}
!134 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIjjEEE", !133, i64 0}
!135 = !{!"_ZTSN4llvm11SmallVectorISt4pairIjjELj0EEE", !134, i64 0}
!136 = !{!"_ZTSSt4lessIjE"}
!137 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !136, i64 0}
!138 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !137, i64 0, !106, i64 8}
!139 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjPN4llvm8MCSymbolEESt10_Select1stIS5_ESt4lessIjESaIS5_EE", !138, i64 0}
!140 = !{!"_ZTSSt3mapIjPN4llvm8MCSymbolESt4lessIjESaISt4pairIKjS2_EEE", !139, i64 0}
!141 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE13_Rb_tree_implIS8_Lb1EEE", !137, i64 0, !106, i64 8}
!142 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm6MCInstEESt10_Select1stIS4_ESt4lessIjESaIS4_EE", !141, i64 0}
!143 = !{!"_ZTSSt3mapIjN4llvm6MCInstESt4lessIjESaISt4pairIKjS1_EEE", !142, i64 0}
!144 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_16MCCFIInstructionEvEE", !44, i64 0}
!145 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_16MCCFIInstructionELb0EEE", !144, i64 0}
!146 = !{!"_ZTSN4llvm15SmallVectorImplINS_16MCCFIInstructionEEE", !145, i64 0}
!147 = !{!"_ZTSN4llvm11SmallVectorINS_16MCCFIInstructionELj0EEE", !146, i64 0}
!148 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIiNS_11SmallVectorIiLj4EEEEE", !36, i64 0}
!149 = !{!"_ZTSN4llvm8DenseMapIiNS_11SmallVectorIiLj4EEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS2_EEEE", !148, i64 0, !111, i64 8, !31, i64 16, !31, i64 20}
!150 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEvEE", !44, i64 0}
!151 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELb1EEE", !150, i64 0}
!152 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEEEE", !151, i64 0}
!153 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_4bolt11FragmentNumENS2_14BinaryFunction8CallSiteEELj0EEE", !152, i64 0}
!154 = !{!"_ZTSN4llvm8ArrayRefIhEE", !117, i64 0, !70, i64 8}
!155 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonImvEE", !44, i64 0}
!156 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseImLb1EEE", !155, i64 0}
!157 = !{!"_ZTSN4llvm15SmallVectorImplImEE", !156, i64 0}
!158 = !{!"_ZTSN4llvm11SmallVectorImLj0EEE", !157, i64 0}
!159 = !{!"_ZTSN4llvm11SmallVectorIPNS_8MCSymbolELj0EEE", !77, i64 0}
!160 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt8optionalINS_4bolt11FragmentNumEEvEE", !44, i64 0}
!161 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt8optionalINS_4bolt11FragmentNumEELb1EEE", !160, i64 0}
!162 = !{!"_ZTSN4llvm15SmallVectorImplISt8optionalINS_4bolt11FragmentNumEEEE", !161, i64 0}
!163 = !{!"_ZTSN4llvm11SmallVectorISt8optionalINS_4bolt11FragmentNumEELj0EEE", !162, i64 0}
!164 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !137, i64 0, !106, i64 8}
!165 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE", !164, i64 0}
!166 = !{!"_ZTSSt8multimapIjjSt4lessIjESaISt4pairIKjjEEE", !165, i64 0}
!167 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmPN4llvm4bolt9JumpTableEESt10_Select1stIS6_ESt4lessImESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !102, i64 0, !106, i64 8}
end_hunk_1
