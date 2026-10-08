Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelLowering?download=true
inline.NumInlined: 31494
inline.NumDeleted: 6083
loop-unroll.NumCompletelyUnrolled: 148
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 162
begin_hunk_0_@_ZNK4llvm21AArch64TargetLowering17PerformDAGCombineEPNS_6SDNodeERNS_14TargetLowering15DAGCombinerInfoE:bb.a
bb.nh:                                            ; preds = %bb.ng
  %i.bmk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !384 ; 4 uses
  %.sroa.079.0.copyload.i.i = load ptr, ptr %i.bml, align 8, !tbaa !394 ; 7 uses
  %.sroa.982.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bml, i64 8
  %.sroa.982.0.copyload.i.i = load i32, ptr %.sroa.982.0..sroa_idx.i.i, align 8, !tbaa !337 ; 2 uses
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bml, i64 40
  %.sroa.074.0.copyload.i.i = load ptr, ptr %i.bmm, align 8, !tbaa !394 ; 7 uses
  %.sroa.977.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bml, i64 48
  %.sroa.977.0.copyload.i.i = load i32, ptr %.sroa.977.0..sroa_idx.i.i, align 8, !tbaa !337 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bmn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bmo = load i64, ptr %i.bmn, align 8, !tbaa !389
  store i64 %i.bmo, ptr %4, align 8, !tbaa !389
  %i.bmp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bmq = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.bmr = load i32, ptr %i.bmq, align 4, !tbaa !390
  store i32 %i.bmr, ptr %i.bmp, align 8, !tbaa !392
  %i.bms = tail call fastcc noundef zeroext i1 @_ZL33isEssentiallyExtractHighSubvectorN4llvm7SDValueE(ptr %.sroa.079.0.copyload.i.i)
  br i1 %i.bms, label %bb.ni, label %bb.nk

bb.ni:                                            ; preds = %bb.nh
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload.i.i, i64 24
  %i.bmu = load i32, ptr %i.bmt, align 8, !tbaa !383
  %i.bmv = icmp eq i32 %i.bmu, 230
  br i1 %i.bmv, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 24
  %i.bmx = load i32, ptr %i.bmw, align 8, !tbaa !383
  %i.bmy = icmp eq i32 %i.bmx, 248
  br i1 %i.bmy, label %.sink.split.i.i, label %bb.nn

bb.nk:                                            ; preds = %bb.ni, %bb.nh
  %i.bmz = tail call fastcc noundef zeroext i1 @_ZL33isEssentiallyExtractHighSubvectorN4llvm7SDValueE(ptr %.sroa.074.0.copyload.i.i)
  br i1 %i.bmz, label %bb.nl, label %.sink.split.sink.split.i1005

bb.nl:                                            ; preds = %bb.nk
  %i.bna = getelementptr inbounds nuw i8, ptr %.sroa.079.0.copyload.i.i, i64 24
  %i.bnb = load i32, ptr %i.bna, align 8, !tbaa !383
  %i.bnc = icmp eq i32 %i.bnb, 230
  br i1 %i.bnc, label %bb.nm, label %.sink.split.sink.split.i1005

bb.nm:                                            ; preds = %bb.nl
  %i.bnd = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload.i.i, i64 24
  %i.bne = load i32, ptr %i.bnd, align 8, !tbaa !383
  %i.bnf = icmp eq i32 %i.bne, 248
  br i1 %i.bnf, label %.sink.split.i.i, label %bb.nn

.sink.split.i.i:                                  ; preds = %bb.nm, %bb.nj
  %.sroa.074.0.copyload.sink.i.i = phi ptr [ %.sroa.079.0.copyload.i.i, %bb.nj ], [ %.sroa.074.0.copyload.i.i, %bb.nm ]
  %.sroa.849.0.ph.i.i = phi i32 [ %.sroa.977.0.copyload.i.i, %bb.nj ], [ %.sroa.982.0.copyload.i.i, %bb.nm ]
  %.sroa.046.0.ph.i.i = phi ptr [ %.sroa.074.0.copyload.i.i, %bb.nj ], [ %.sroa.079.0.copyload.i.i, %bb.nm ]
  %i.bng = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload.sink.i.i, i64 40
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !384
  %.sroa.061.0.copyload64.i.i = load ptr, ptr %i.bnh, align 8, !tbaa !394
  br label %bb.nn

bb.nn:                                            ; preds = %.sink.split.i.i, %bb.nm, %bb.nj
  %.sroa.061.0.i.i = phi ptr [ %.sroa.074.0.copyload.i.i, %bb.nm ], [ %.sroa.079.0.copyload.i.i, %bb.nj ], [ %.sroa.061.0.copyload64.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.849.0.i.i = phi i32 [ %.sroa.982.0.copyload.i.i, %bb.nm ], [ %.sroa.977.0.copyload.i.i, %bb.nj ], [ %.sroa.849.0.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %.sroa.046.0.i.i = phi ptr [ %.sroa.079.0.copyload.i.i, %bb.nm ], [ %.sroa.074.0.copyload.i.i, %bb.nj ], [ %.sroa.046.0.ph.i.i, %.sink.split.i.i ] ; 3 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %.sroa.046.0.i.i, i64 40
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !384 ; 3 uses
  %.sroa.028.0.copyload.i.i1007 = load ptr, ptr %i.bnj, align 8, !tbaa !394 ; 5 uses
  %.sroa.9.0..sroa_idx.i.i1008 = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  %.sroa.9.0.copyload.i.i1009 = load i32, ptr %.sroa.9.0..sroa_idx.i.i1008, align 8, !tbaa !337 ; 4 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bnj, i64 12
  %.sroa.12.0.copyload.i.i = load i32, ptr %.sroa.12.0..sroa_idx.i.i, align 4 ; 2 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload.i.i1007, i64 48
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !379
  %i.bnm = zext i32 %.sroa.9.0.copyload.i.i1009 to i64
  %i.bnn = getelementptr inbounds nuw [16 x i8], ptr %i.bnl, i64 %i.bnm ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i1010 = load i16, ptr %i.bnn, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i.i.i1011 = getelementptr inbounds nuw i8, ptr %i.bnn, i64 8
  %.sroa.21.0.copyload.i.i.i.i1012 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i.i1011, align 8, !tbaa !380
  %i.bno = getelementptr inbounds nuw i8, ptr %.sroa.028.0.copyload.i.i1007, i64 24
  %i.bnp = load i32, ptr %i.bno, align 8, !tbaa !383
  %i.bnq = icmp eq i32 %i.bnp, 582
  br i1 %i.bnq, label %.sink.split.sink.split.i1005, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.bnr = tail call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr nonnull %.sroa.028.0.copyload.i.i1007, i32 %.sroa.9.0.copyload.i.i1009, i1 noundef zeroext false) #35
  br i1 %i.bnr, label %.sink.split.sink.split.i1005, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bns = getelementptr inbounds nuw i8, ptr %.sroa.061.0.i.i, i64 40
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !384
  %.sroa.022.0.copyload24.i.i = load ptr, ptr %i.bnt, align 8, !tbaa !394
  %i.bnu = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload24.i.i, i64 56
  %i.bnv = load ptr, ptr %i.bnu, align 8, !tbaa !690 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bnv, null
  br i1 %.not4.i.i.i.i, label %.thread92.i.i, label %.lr.ph.i.i.i.i1013

.lr.ph.i.i.i.i1013:                               ; preds = %bb.np, %.lr.ph.i.i.i.i1013
  %.06.i.i.i.i = phi i64 [ %i.bny, %.lr.ph.i.i.i.i1013 ], [ 0, %bb.np ]
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.bnx, %.lr.ph.i.i.i.i1013 ], [ %i.bnv, %bb.np ]
  %i.bnw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i, i64 32
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !691 ; 2 uses
  %i.bny = add i64 %.06.i.i.i.i, 1                ; 2 uses
  %.not.i.i.i.i1014 = icmp eq ptr %i.bnx, null
  br i1 %.not.i.i.i.i1014, label %.lr.ph.preheader.i.i, label %.lr.ph.i.i.i.i1013, !llvm.loop !2104

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i.i.i1013
  %.not.i.i1015 = icmp eq i64 %i.bny, 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ns, %.lr.ph.preheader.i.i
  %.sroa.017.0117.i.i = phi ptr [ %i.boj, %bb.ns ], [ %i.bnv, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.054.0116.i.i = phi ptr [ %.sroa.054.1.i.i, %bb.ns ], [ null, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.sroa.017.0117.i.i, i64 16
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !689 ; 4 uses
  %i.bob = icmp eq ptr %i.boa, %.sroa.061.0.i.i
  br i1 %i.bob, label %bb.ns, label %bb.nq

bb.nq:                                            ; preds = %.lr.ph.i.i
  %i.boc = getelementptr inbounds nuw i8, ptr %i.boa, i64 24
  %i.bod = load i32, ptr %i.boc, align 8, !tbaa !383
  %.not139.i.i = icmp eq i32 %i.bod, 167
  br i1 %.not139.i.i, label %bb.nr, label %.thread.i.i

bb.nr:                                            ; preds = %bb.nq
  %i.boe = getelementptr inbounds nuw i8, ptr %i.boa, i64 40
  %i.bof = load ptr, ptr %i.boe, align 8, !tbaa !384 ; 2 uses
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bof, i64 40
  %.sroa.097.0.copyload.i.i = load ptr, ptr %i.bog, align 8, !tbaa !394
  %.sroa.298.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bof, i64 48
  %.sroa.298.0.copyload.i.i = load i32, ptr %.sroa.298.0..sroa_idx.i.i, align 8, !tbaa !337
  %i.boh = tail call noundef zeroext i1 @_ZN4llvm14isNullConstantENS_7SDValueE(ptr %.sroa.097.0.copyload.i.i, i32 %.sroa.298.0.copyload.i.i) #35
  br i1 %i.boh, label %bb.ns, label %.thread.i.i

bb.ns:                                            ; preds = %bb.nr, %.lr.ph.i.i
  %.sroa.054.1.i.i = phi ptr [ %.sroa.054.0116.i.i, %.lr.ph.i.i ], [ %i.boa, %bb.nr ] ; 2 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %.sroa.017.0117.i.i, i64 32
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !691 ; 2 uses
  %.not113.i.i = icmp eq ptr %i.boj, null
  br i1 %.not113.i.i, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.ns, %bb.nr, %bb.nq
  %.sroa.054.0.lcssa.i.i = phi ptr [ %.sroa.054.0116.i.i, %bb.nq ], [ %.sroa.054.1.i.i, %bb.ns ], [ %.sroa.054.0116.i.i, %bb.nr ] ; 10 uses
  %.3.i.i = phi i1 [ false, %bb.nq ], [ %.not.i.i1015, %bb.ns ], [ false, %bb.nr ]
  %.not114.i.i = icmp eq ptr %.sroa.054.0.lcssa.i.i, null
  br i1 %.not114.i.i, label %.thread92.i.i, label %bb.nt

bb.nt:                                            ; preds = %.thread.i.i
  %i.bok = getelementptr inbounds nuw i8, ptr %.sroa.054.0.lcssa.i.i, i64 56
  %i.bol = load ptr, ptr %i.bok, align 8, !tbaa !690 ; 3 uses
  %.not.i.i144.i.i = icmp eq ptr %i.bol, null
  br i1 %.not.i.i144.i.i, label %.thread92.i.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016

_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016:        ; preds = %bb.nt
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 32
  %i.bon = load ptr, ptr %i.bom, align 8, !tbaa !691
  %i.boo = icmp eq ptr %i.bon, null
  %or.cond.i.i1017 = select i1 %i.boo, i1 %.3.i.i, i1 false
  br i1 %or.cond.i.i1017, label %bb.nu, label %.thread92.i.i

bb.nu:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bol, i64 16
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !689 ; 2 uses
  %i.bor = getelementptr inbounds nuw i8, ptr %i.boq, i64 24
  %i.bos = load i32, ptr %i.bor, align 8, !tbaa !383
  %i.bot = load i32, ptr %i.d, align 8, !tbaa !383
  %.not140.i.i = icmp eq i32 %i.bos, %i.bot
  br i1 %.not140.i.i, label %bb.nv, label %.thread92.i.i

bb.nv:                                            ; preds = %bb.nu
  %i.bou = getelementptr inbounds nuw i8, ptr %i.boq, i64 40
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !384 ; 4 uses
  %i.bow = load ptr, ptr %i.bov, align 8, !tbaa !385 ; 3 uses
  %i.box = icmp eq ptr %i.bow, %.sroa.054.0.lcssa.i.i
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bov, i64 8
  %i.boz = load i32, ptr %i.boy, align 8          ; 2 uses
  %i.bpa = icmp eq i32 %i.boz, 0
  %i.bpb = select i1 %i.box, i1 %i.bpa, i1 false
  br i1 %i.bpb, label %bb.nw, label %bb.ny

bb.nw:                                            ; preds = %bb.nv
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bov, i64 40
  %i.bpd = load ptr, ptr %i.bpc, align 8, !tbaa !385 ; 2 uses
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpd, i64 24
  %i.bpf = load i32, ptr %i.bpe, align 8, !tbaa !383
  %i.bpg = icmp eq i32 %i.bpf, 230
  br i1 %i.bpg, label %bb.nx, label %.thread92.i.i

bb.nx:                                            ; preds = %bb.nw
  %.sroa.8.0..sroa_idx.i.i1032 = getelementptr inbounds nuw i8, ptr %i.bov, i64 48
  %.sroa.8.0.copyload.i.i1033 = load i32, ptr %.sroa.8.0..sroa_idx.i.i1032, align 8, !tbaa !337
  br label %.thread92.i.i

bb.ny:                                            ; preds = %bb.nv
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bow, i64 24
  %i.bpi = load i32, ptr %i.bph, align 8, !tbaa !383
  %i.bpj = icmp eq i32 %i.bpi, 230
  br i1 %i.bpj, label %bb.nz, label %.thread92.i.i

bb.nz:                                            ; preds = %bb.ny
  br label %.thread92.i.i

.thread92.i.i:                                    ; preds = %bb.nz, %bb.ny, %bb.nx, %bb.nw, %bb.nu, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016, %bb.nt, %.thread.i.i, %bb.np
  %.sroa.054.0.lcssa132.i.i = phi ptr [ %.sroa.054.0.lcssa.i.i, %bb.nx ], [ %.sroa.054.0.lcssa.i.i, %bb.nw ], [ %.sroa.054.0.lcssa.i.i, %bb.nz ], [ %.sroa.054.0.lcssa.i.i, %bb.ny ], [ %.sroa.054.0.lcssa.i.i, %bb.nu ], [ %.sroa.054.0.lcssa.i.i, %bb.nt ], [ null, %.thread.i.i ], [ %.sroa.054.0.lcssa.i.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016 ], [ null, %bb.np ]
  %.sroa.8.0.i.i = phi i32 [ %.sroa.8.0.copyload.i.i1033, %bb.nx ], [ 0, %bb.nw ], [ %i.boz, %bb.nz ], [ 0, %bb.ny ], [ 0, %bb.nu ], [ 0, %bb.nt ], [ 0, %.thread.i.i ], [ 0, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016 ], [ 0, %bb.np ] ; 2 uses
  %.sroa.040.0.i.i = phi ptr [ %i.bpd, %bb.nx ], [ null, %bb.nw ], [ %i.bow, %bb.nz ], [ null, %bb.ny ], [ null, %bb.nu ], [ null, %bb.nt ], [ null, %.thread.i.i ], [ null, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016 ], [ null, %bb.np ] ; 3 uses
  %.6.i.i = phi i1 [ true, %bb.nx ], [ false, %bb.nw ], [ true, %bb.nz ], [ false, %bb.ny ], [ false, %bb.nu ], [ false, %bb.nt ], [ false, %.thread.i.i ], [ false, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i.i1016 ], [ false, %bb.np ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.bpk = getelementptr inbounds nuw i8, ptr %.sroa.046.0.i.i, i64 48
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !379
  %i.bpm = zext i32 %.sroa.849.0.i.i to i64
  %i.bpn = getelementptr inbounds nuw [16 x i8], ptr %i.bpl, i64 %i.bpm ; 2 uses
  %.sroa.0.0.copyload.i.i145.i.i = load i16, ptr %i.bpn, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i146.i.i = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %.sroa.21.0.copyload.i.i147.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i146.i.i, align 8, !tbaa !380
  store i16 %.sroa.0.0.copyload.i.i145.i.i, ptr %5, align 8
  %i.bpo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.sroa.21.0.copyload.i.i147.i.i, ptr %i.bpo, align 8
  %i.bpp = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !683
  %i.bpr = call { i16, ptr } @_ZNK4llvm3EVT28getDoubleNumVectorElementsVTERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bpq) ; 2 uses
  %i.bps = extractvalue { i16, ptr } %i.bpr, 0    ; 6 uses
  %i.bpt = extractvalue { i16, ptr } %i.bpr, 1    ; 6 uses
  br i1 %.6.i.i, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %.thread92.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.bpu = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 54, ptr noundef nonnull align 8 dereferenceable(12) %3, i16 %i.bps, ptr %i.bpt) #35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %.fca.0.extract79.i.i = extractvalue { ptr, i32 } %i.bpu, 0 ; 2 uses
  %.fca.1.extract80.i.i = extractvalue { ptr, i32 } %i.bpu, 1 ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %.fca.0.extract79.i.i, i64 48
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !379
  %i.bpx = zext i32 %.fca.1.extract80.i.i to i64
  %i.bpy = getelementptr inbounds nuw [16 x i8], ptr %i.bpw, i64 %i.bpx ; 2 uses
  %.sroa.0.0.copyload.i.i150.i.i = load i16, ptr %i.bpy, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i151.i.i = getelementptr inbounds nuw i8, ptr %i.bpy, i64 8
  %.sroa.21.0.copyload.i.i152.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i151.i.i, align 8, !tbaa !380
  br label %bb.od

bb.ob:                                            ; preds = %.thread92.i.i
  %i.bpz = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i.i, i64 40
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !384 ; 3 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %i.bqa, align 8, !tbaa !394 ; 4 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 24
  %i.bqc = load i32, ptr %i.bqb, align 8, !tbaa !383
  %i.bqd = icmp eq i32 %i.bqc, 582
  br i1 %i.bqd, label %_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.thread20.i, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bqe = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i, i64 48
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !379
  %.sroa.10.0..sroa_idx.i.i1030 = getelementptr inbounds nuw i8, ptr %i.bqa, i64 8
  %.sroa.10.0.copyload.i.i1031 = load i32, ptr %.sroa.10.0..sroa_idx.i.i1030, align 8, !tbaa !337 ; 3 uses
  %i.bqg = zext i32 %.sroa.10.0.copyload.i.i1031 to i64
  %i.bqh = getelementptr inbounds nuw [16 x i8], ptr %i.bqf, i64 %i.bqg ; 2 uses
  %.sroa.21.0..sroa_idx.i.i15199.i.i = getelementptr inbounds nuw i8, ptr %i.bqh, i64 8
  %.sroa.21.0.copyload.i.i152100.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i15199.i.i, align 8, !tbaa !380
  %.sroa.0.0.copyload.i.i15098.i.i = load i16, ptr %i.bqh, align 8, !tbaa !227
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bqa, i64 12
  %.sroa.14.0.copyload.i.i = load i32, ptr %.sroa.14.0..sroa_idx.i.i, align 4
  %i.bqi = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueEb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr nonnull %.sroa.03.0.copyload.i.i, i32 %.sroa.10.0.copyload.i.i1031, i1 noundef zeroext false) #35
  br i1 %i.bqi, label %_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.thread20.i, label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.oa
  %.sroa.21.0.copyload.i.i152111.i.i = phi ptr [ %.sroa.21.0.copyload.i.i152100.i.i, %bb.oc ], [ %.sroa.21.0.copyload.i.i152.i.i, %bb.oa ]
  %.sroa.0.0.copyload.i.i150109.i.i = phi i16 [ %.sroa.0.0.copyload.i.i15098.i.i, %bb.oc ], [ %.sroa.0.0.copyload.i.i150.i.i, %bb.oa ]
  %.sroa.03.0108.i.i = phi ptr [ %.sroa.03.0.copyload.i.i, %bb.oc ], [ %.fca.0.extract79.i.i, %bb.oa ] ; 2 uses
  %.sroa.10.0106.i.i = phi i32 [ %.sroa.10.0.copyload.i.i1031, %bb.oc ], [ %.fca.1.extract80.i.i, %bb.oa ] ; 2 uses
  %.sroa.14.0103.i.i = phi i32 [ %.sroa.14.0.copyload.i.i, %bb.oc ], [ undef, %bb.oa ] ; 2 uses
  %.not.i.i.i1018 = icmp ne i16 %.sroa.0.0.copyload.i.i.i.i1010, %i.bps
  %i.bqj = icmp ne ptr %.sroa.21.0.copyload.i.i.i.i1012, %i.bpt
  %i.bqk = select i1 %.not.i.i.i1018, i1 true, i1 %i.bqj
  br i1 %i.bqk, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od
  store ptr %.sroa.028.0.copyload.i.i1007, ptr %6, align 8, !tbaa !394
  %.sroa.9.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.9.0.copyload.i.i1009, ptr %.sroa.9.0..sroa_idx32.i.i, align 8, !tbaa !337
  %.sroa.12.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.12.0.copyload.i.i, ptr %.sroa.12.0..sroa_idx36.i.i, align 4
  %i.bql = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.bps, ptr %i.bpt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #35 ; 2 uses
  %.fca.0.extract63.i.i = extractvalue { ptr, i32 } %i.bql, 0
  %.fca.1.extract64.i.i = extractvalue { ptr, i32 } %i.bql, 1
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od
  %.sroa.9.0.i.i = phi i32 [ %.fca.1.extract64.i.i, %bb.oe ], [ %.sroa.9.0.copyload.i.i1009, %bb.od ]
  %.sroa.028.0.i.i = phi ptr [ %.fca.0.extract63.i.i, %bb.oe ], [ %.sroa.028.0.copyload.i.i1007, %bb.od ]
  %.not.i155.i.i = icmp ne i16 %.sroa.0.0.copyload.i.i150109.i.i, %i.bps
  %i.bqm = icmp ne ptr %.sroa.21.0.copyload.i.i152111.i.i, %i.bpt
  %i.bqn = select i1 %.not.i155.i.i, i1 true, i1 %i.bqm
  br i1 %i.bqn, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %bb.of
  store ptr %.sroa.03.0108.i.i, ptr %7, align 8, !tbaa !394
  %.sroa.10.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.10.0106.i.i, ptr %.sroa.10.0..sroa_idx7.i.i, align 8, !tbaa !337
  %.sroa.14.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.14.0103.i.i, ptr %.sroa.14.0..sroa_idx11.i.i, align 4
  %i.bqo = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.bps, ptr %i.bpt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %7) #35 ; 2 uses
  %.fca.0.extract50.i.i = extractvalue { ptr, i32 } %i.bqo, 0
  %.fca.1.extract51.i.i = extractvalue { ptr, i32 } %i.bqo, 1
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %bb.of
  %.sroa.10.1.i.i = phi i32 [ %.fca.1.extract51.i.i, %bb.og ], [ %.sroa.10.0106.i.i, %bb.of ]
  %.sroa.03.1.i.i = phi ptr [ %.fca.0.extract50.i.i, %bb.og ], [ %.sroa.03.0108.i.i, %bb.of ]
  store ptr %.sroa.03.1.i.i, ptr %8, align 8, !tbaa !394
  %.sroa.10.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %.sroa.10.1.i.i, ptr %.sroa.10.0..sroa_idx9.i.i, align 8, !tbaa !337
  %.sroa.14.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %.sroa.14.0103.i.i, ptr %.sroa.14.0..sroa_idx13.i.i, align 4
  store ptr %.sroa.028.0.i.i, ptr %9, align 8, !tbaa !394
  %.sroa.9.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.9.0.i.i, ptr %.sroa.9.0..sroa_idx34.i.i, align 8, !tbaa !337
  %.sroa.12.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 %.sroa.12.0.copyload.i.i, ptr %.sroa.12.0..sroa_idx38.i.i, align 4
  %i.bqp = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 875, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %i.bps, ptr %i.bpt, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #35 ; 2 uses
  %.fca.0.extract35.i.i = extractvalue { ptr, i32 } %i.bqp, 0 ; 2 uses
  %.fca.1.extract36.i.i = extractvalue { ptr, i32 } %i.bqp, 1 ; 2 uses
  %i.bqq = load i16, ptr %5, align 8, !tbaa !361  ; 3 uses
  %.not.i.i156.i.i = icmp eq i16 %i.bqq, 0
  br i1 %.not.i.i156.i.i, label %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i1029, label %.split.i.i.i1019

.split.i.i.i1019:                                 ; preds = %bb.oh
  %i.bqr = add i16 %i.bqq, -163
  %spec.select.i.i.i.i.i1020 = icmp ult i16 %i.bqr, 53
  br i1 %spec.select.i.i.i.i.i1020, label %bb.oi, label %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i1021

_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i1029: ; preds = %bb.oh
  %i.bqs = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br i1 %i.bqs, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i1029, %.split.i.i.i1019
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.117) #36
  unreachable

_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i1021: ; preds = %.split.i.i.i1019
  %i.bqt = zext i16 %i.bqq to i64
  %i.bqu = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT23getVectorMinNumElementsEvE10NElemTable, i64 %i.bqt
  %i.bqv = getelementptr i8, ptr %i.bqu, i64 -2
  %i.bqw = load i16, ptr %i.bqv, align 2, !tbaa !228
  %i.bqx = zext i16 %i.bqw to i32
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i1022

bb.oj:                                            ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit.i.i.i1029
  %i.bqy = call noundef i32 @_ZNK4llvm3EVT28getExtendedVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  br label %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i1022

_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i1022: ; preds = %bb.oj, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i1021
  %i.bqz = phi i32 [ %i.bqx, %_ZNK4llvm3MVT20getVectorNumElementsEv.exit.i.i.i1021 ], [ %i.bqy, %bb.oj ]
  %i.bra = zext i32 %i.bqz to i64
  %i.brb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i64 noundef %i.bra, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 8, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #35 ; 2 uses
  %.fca.0.extract28.i.i = extractvalue { ptr, i32 } %i.brb, 0
  %.fca.1.extract29.i.i = extractvalue { ptr, i32 } %i.brb, 1
  %.sroa.022.0.copyload.i.i1023 = load i16, ptr %5, align 8, !tbaa !227
  %.sroa.224.0.copyload.i.i1024 = load ptr, ptr %i.bpo, align 8, !tbaa !380
  store ptr %.fca.0.extract35.i.i, ptr %10, align 8, !tbaa !394
  %.sroa.544.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %.fca.1.extract36.i.i, ptr %.sroa.544.0..sroa_idx.i.i, align 8, !tbaa !337
  store ptr %.fca.0.extract28.i.i, ptr %11, align 8, !tbaa !394
  %.sroa.433.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract29.i.i, ptr %.sroa.433.0..sroa_idx.i.i, align 8, !tbaa !337
  %i.brc = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.022.0.copyload.i.i1023, ptr %.sroa.224.0.copyload.i.i1024, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #35 ; 2 uses
  %.fca.0.extract18.i.i1025 = extractvalue { ptr, i32 } %i.brc, 0
  %.fca.1.extract19.i.i1026 = extractvalue { ptr, i32 } %i.brc, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr nonnull %.sroa.046.0.i.i, i32 %.sroa.849.0.i.i, ptr %.fca.0.extract18.i.i1025, i32 %.fca.1.extract19.i.i1026) #35
  br i1 %.6.i.i, label %bb.ok, label %_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.i

bb.ok:                                            ; preds = %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i1022
  %i.brd = getelementptr inbounds nuw i8, ptr %.sroa.040.0.i.i, i64 48
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !379
  %i.brf = zext i32 %.sroa.8.0.i.i to i64
  %i.brg = getelementptr inbounds nuw [16 x i8], ptr %i.bre, i64 %i.brf ; 2 uses
  %.sroa.0.0.copyload.i.i157.i.i = load i16, ptr %i.brg, align 8, !tbaa !227
  %.sroa.21.0..sroa_idx.i.i158.i.i = getelementptr inbounds nuw i8, ptr %i.brg, i64 8
  %.sroa.21.0.copyload.i.i159.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i158.i.i, align 8, !tbaa !380
  store ptr %.fca.0.extract35.i.i, ptr %12, align 8, !tbaa !394
  %.sroa.544.0..sroa_idx45.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %.fca.1.extract36.i.i, ptr %.sroa.544.0..sroa_idx45.i.i, align 8, !tbaa !337
  %i.brh = getelementptr inbounds nuw i8, ptr %.sroa.054.0.lcssa132.i.i, i64 40
  %i.bri = load ptr, ptr %i.brh, align 8, !tbaa !384
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bri, i64 40
  %i.brk = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, i32 noundef 167, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 %.sroa.0.0.copyload.i.i157.i.i, ptr %.sroa.21.0.copyload.i.i159.i.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %12, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %i.brj) #35 ; 2 uses
  %.fca.0.extract.i.i1027 = extractvalue { ptr, i32 } %i.brk, 0
  %.fca.1.extract.i.i1028 = extractvalue { ptr, i32 } %i.brk, 1
  call void @_ZN4llvm12SelectionDAG18ReplaceAllUsesWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.c, ptr %.sroa.040.0.i.i, i32 %.sroa.8.0.i.i, ptr %.fca.0.extract.i.i1027, i32 %.fca.1.extract.i.i1028) #35
  br label %_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.i

_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.thread20.i: ; preds = %bb.oc, %bb.ob
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %.sink.split.sink.split.i1005

_ZL22tryCombineMULLWithUZP1PN4llvm6SDNodeERNS_14TargetLowering15DAGCombinerInfoERNS_12SelectionDAGE.exit.i: ; preds = %bb.ok, %_ZNK4llvm3EVT20getVectorNumElementsEv.exit.i.i1022
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %_ZL20performSpliceCombinePN4llvm6SDNodeERNS_12SelectionDAGE.exit

end_hunk_0
