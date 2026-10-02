Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v01?download=true
inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ZSTD_decompressBlock:bb.a
bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.084.i.i = phi ptr [ %i.brf, %bb.iq ], [ %i.bqf, %bb.ir ]
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bpg, i64 8 ; 5 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %.084.i.i, i64 8 ; 4 uses
  %i.bri = icmp ugt ptr %i.bph, %i.bld
  br i1 %i.bri, label %bb.it, label %bb.iw

bb.it:                                            ; preds = %bb.is
  %i.brj = icmp ult ptr %i.brg, %i.ble
  br i1 %i.brj, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.brk = ptrtoint ptr %i.brg to i64
  %i.brl = sub i64 %i.blf, %i.brk                 ; 2 uses
  %i.brm = icmp sgt i64 %i.brl, 0
  br i1 %i.brm, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.iu, %.lr.ph.i.i.i
  %.011.i.i.i = phi ptr [ %i.brn, %.lr.ph.i.i.i ], [ %i.brg, %bb.iu ] ; 2 uses
  %.0910.i.i.i = phi ptr [ %i.bro, %.lr.ph.i.i.i ], [ %i.brh, %bb.iu ] ; 2 uses
  %.09.val.i.i.i = load i64, ptr %.0910.i.i.i, align 1
  store i64 %.09.val.i.i.i, ptr %.011.i.i.i, align 1
  %i.brn = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8 ; 2 uses
  %i.bro = getelementptr inbounds nuw i8, ptr %.0910.i.i.i, i64 8
  %i.brp = icmp ult ptr %i.brn, %i.ble
  br i1 %i.brp, label %.lr.ph.i.i.i, label %ZSTD_wildcopy.exit.i.i, !llvm.loop !49

ZSTD_wildcopy.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.iu
  %i.brq = getelementptr inbounds i8, ptr %i.brh, i64 %i.brl
  br label %bb.iv

bb.iv:                                            ; preds = %ZSTD_wildcopy.exit.i.i, %bb.it
  %.087.i.i = phi ptr [ %i.ble, %ZSTD_wildcopy.exit.i.i ], [ %i.brg, %bb.it ] ; 7 uses
  %.185.i.i = phi ptr [ %i.brq, %ZSTD_wildcopy.exit.i.i ], [ %i.brh, %bb.it ] ; 7 uses
  %.185.i.i561 = ptrtoaddr ptr %.185.i.i to i64
  %i.brr = icmp ult ptr %.087.i.i, %i.bph
  br i1 %i.brr, label %iter.check578, label %ZSTD_wildcopy.exit104.i.i

iter.check578:                                    ; preds = %bb.iv
  %i.brs = add nsw i64 %.156.i.i, 4
  %i.brt = add nsw i64 %i.brs, %.153.i.i
  %i.bru = add i64 %i.brt, %i.bpk
  %i.brv = add nsw i64 %.156.i.i, 8
  %i.brw = add i64 %i.brv, %i.bpk
  %umax562 = tail call i64 @llvm.umax.i64(i64 %i.blh, i64 %i.brw)
  %i.brx = sub i64 %i.bru, %umax562               ; 7 uses
  %min.iters.check563 = icmp ult i64 %i.brx, 8
  br i1 %min.iters.check563, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check578
  %i.bry = add nsw i64 %.156.i.i, 8
  %i.brz = add i64 %i.bry, %i.bpk
  %umax560 = tail call i64 @llvm.umax.i64(i64 %i.blh, i64 %i.brz)
  %i.bsa = sub i64 %.185.i.i561, %umax560
  %diff.check = icmp ugt i64 %i.bsa, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check564

vector.main.loop.iter.check564:                   ; preds = %vector.memcheck
  %min.iters.check565 = icmp ult i64 %i.brx, 32
  br i1 %min.iters.check565, label %vec.epilog.ph582, label %vector.ph566

vector.ph566:                                     ; preds = %vector.main.loop.iter.check564
  %i.bsb = and i64 %i.brx, 24
  %n.vec567 = and i64 %i.brx, -32                 ; 5 uses
  %i.bsc = getelementptr i8, ptr %.185.i.i, i64 %n.vec567
  %i.bsd = getelementptr i8, ptr %.087.i.i, i64 %n.vec567
  br label %vector.body568

vector.body568:                                   ; preds = %vector.ph566, %vector.body568
  %index569 = phi i64 [ 0, %vector.ph566 ], [ %index.next573, %vector.body568 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.185.i.i, i64 %index569 ; 2 uses
  %next.gep570 = getelementptr i8, ptr %.087.i.i, i64 %index569 ; 2 uses
  %i.bse = getelementptr i8, ptr %next.gep, i64 16
  %wide.load571 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !13
  %wide.load572 = load <16 x i8>, ptr %i.bse, align 1, !tbaa !13
  %i.bsf = getelementptr i8, ptr %next.gep570, i64 16
  store <16 x i8> %wide.load571, ptr %next.gep570, align 1, !tbaa !13
  store <16 x i8> %wide.load572, ptr %i.bsf, align 1, !tbaa !13
  %index.next573 = add nuw i64 %index569, 32      ; 2 uses
  %i.bsg = icmp eq i64 %index.next573, %n.vec567
  br i1 %i.bsg, label %middle.block574, label %vector.body568, !llvm.loop !50

middle.block574:                                  ; preds = %vector.body568
  %cmp.n575 = icmp eq i64 %i.brx, %n.vec567
  br i1 %cmp.n575, label %ZSTD_wildcopy.exit104.i.i, label %vec.epilog.iter.check580

vec.epilog.iter.check580:                         ; preds = %middle.block574
  %min.epilog.iters.check581 = icmp eq i64 %i.bsb, 0
  br i1 %min.epilog.iters.check581, label %.lr.ph.i.i.preheader, label %vec.epilog.ph582, !prof !59

vec.epilog.ph582:                                 ; preds = %vector.main.loop.iter.check564, %vec.epilog.iter.check580
  %vec.epilog.resume.val576 = phi i64 [ %n.vec567, %vec.epilog.iter.check580 ], [ 0, %vector.main.loop.iter.check564 ]
  %n.vec583 = and i64 %i.brx, -8                  ; 4 uses
  %i.bsh = getelementptr i8, ptr %.185.i.i, i64 %n.vec583
  %i.bsi = getelementptr i8, ptr %.087.i.i, i64 %n.vec583
  br label %vec.epilog.vector.body584

vec.epilog.vector.body584:                        ; preds = %vec.epilog.vector.body584, %vec.epilog.ph582
  %index585 = phi i64 [ %vec.epilog.resume.val576, %vec.epilog.ph582 ], [ %index.next589, %vec.epilog.vector.body584 ] ; 3 uses
  %next.gep586 = getelementptr i8, ptr %.185.i.i, i64 %index585
  %next.gep587 = getelementptr i8, ptr %.087.i.i, i64 %index585
  %wide.load588 = load <8 x i8>, ptr %next.gep586, align 1, !tbaa !13
  store <8 x i8> %wide.load588, ptr %next.gep587, align 1, !tbaa !13
  %index.next589 = add nuw i64 %index585, 8       ; 2 uses
  %i.bsj = icmp eq i64 %index.next589, %n.vec583
  br i1 %i.bsj, label %vec.epilog.middle.block590, label %vec.epilog.vector.body584, !llvm.loop !51

vec.epilog.middle.block590:                       ; preds = %vec.epilog.vector.body584
  %cmp.n591 = icmp eq i64 %i.brx, %n.vec583
  br i1 %cmp.n591, label %ZSTD_wildcopy.exit104.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check578, %vector.memcheck, %vec.epilog.iter.check580, %vec.epilog.middle.block590
  %.2108.i.i.ph = phi ptr [ %.185.i.i, %iter.check578 ], [ %.185.i.i, %vector.memcheck ], [ %i.bsc, %vec.epilog.iter.check580 ], [ %i.bsh, %vec.epilog.middle.block590 ]
  %.188107.i.i.ph = phi ptr [ %.087.i.i, %iter.check578 ], [ %.087.i.i, %vector.memcheck ], [ %i.bsd, %vec.epilog.iter.check580 ], [ %i.bsi, %vec.epilog.middle.block590 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.2108.i.i = phi ptr [ %i.bsk, %.lr.ph.i.i ], [ %.2108.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.188107.i.i = phi ptr [ %i.bsm, %.lr.ph.i.i ], [ %.188107.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bsk = getelementptr inbounds nuw i8, ptr %.2108.i.i, i64 1
  %i.bsl = load i8, ptr %.2108.i.i, align 1, !tbaa !13
  %i.bsm = getelementptr inbounds nuw i8, ptr %.188107.i.i, i64 1 ; 2 uses
  store i8 %i.bsl, ptr %.188107.i.i, align 1, !tbaa !13
  %i.bsn = icmp ult ptr %i.bsm, %i.bph
  br i1 %i.bsn, label %.lr.ph.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !52

bb.iw:                                            ; preds = %bb.is
  %i.bso = icmp samesign ugt i64 %.153.i.i, 4
  br i1 %i.bso, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i

.lr.ph.i100.i.i:                                  ; preds = %bb.iw, %.lr.ph.i100.i.i
  %.011.i101.i.i = phi ptr [ %i.bsp, %.lr.ph.i100.i.i ], [ %i.brg, %bb.iw ] ; 2 uses
  %.0910.i102.i.i = phi ptr [ %i.bsq, %.lr.ph.i100.i.i ], [ %i.brh, %bb.iw ] ; 2 uses
  %.09.val.i103.i.i = load i64, ptr %.0910.i102.i.i, align 1
  store i64 %.09.val.i103.i.i, ptr %.011.i101.i.i, align 1
  %i.bsp = getelementptr inbounds nuw i8, ptr %.011.i101.i.i, i64 8 ; 2 uses
  %i.bsq = getelementptr inbounds nuw i8, ptr %.0910.i102.i.i, i64 8
  %i.bsr = icmp ult ptr %i.bsp, %i.bph
  br i1 %i.bsr, label %.lr.ph.i100.i.i, label %ZSTD_wildcopy.exit104.i.i, !llvm.loop !49

ZSTD_wildcopy.exit104.i.i:                        ; preds = %.lr.ph.i100.i.i, %.lr.ph.i.i, %middle.block574, %vec.epilog.middle.block590, %bb.iw, %bb.iv
  br i1 %i.bqd, label %bb.ix, label %ZSTD_execSequence.exit.i

bb.ix:                                            ; preds = %ZSTD_wildcopy.exit104.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bph, ptr nonnull align 16 %i.c, i64 %.183.i.i, i1 false)
  br label %ZSTD_execSequence.exit.i

ZSTD_execSequence.exit.i:                         ; preds = %bb.ix, %ZSTD_wildcopy.exit104.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bss = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bpj
  %i.bst = icmp ugt i32 %i.boe, 64
  br i1 %i.bst, label %ZSTD_decompressSequences.exit, label %bb.hs

FSE_reloadDStream.exit.thread.i:                  ; preds = %FSE_reloadDStream.exit.i
  %i.bsu = icmp ne i32 %.sroa.19.8.i, 64
  %i.bsv = icmp ne ptr %.sroa.41113.8.i, %.7120.i.i
  %brmerge.i = select i1 %i.bsv, i1 true, i1 %i.bsu
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.iy

bb.iy:                                            ; preds = %FSE_reloadDStream.exit.thread.i
  %i.bsw = ptrtoint ptr %.0131189.i to i64
  %i.bsx = sub i64 %i.blb, %i.bsw                 ; 2 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %.057200.i, i64 %i.bsx ; 3 uses
  %.not.i = icmp ugt ptr %i.bsy, %i.s
  br i1 %.not.i, label %ZSTD_decompressSequences.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %.not71.i = icmp eq ptr %i.aue, %.0131189.i
  br i1 %.not71.i, label %bb.jc, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %.not72.i = icmp eq ptr %.057200.i, %.0131189.i
  br i1 %.not72.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.057200.i, ptr align 1 %.0131189.i, i64 %i.bsx, i1 false)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja, %bb.iz
  %.4.i = phi ptr [ %i.bsy, %bb.ja ], [ %i.bsy, %bb.jb ], [ %.057200.i, %bb.iz ]
  %i.bsz = ptrtoint ptr %.4.i to i64
  %i.bta = ptrtoint ptr %1 to i64
  %i.btb = sub i64 %i.bsz, %i.bta
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %bb.il, %bb.ik, %bb.ij, %bb.ii, %bb.ih, %bb.ig, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit84.i, %FSE_initDState.exit92.i, %bb.a, %.sink.split.i.i, %bb.g, %bb.d, %bb.b, %bb.k, %bb.j, %ZSTD_decompressLiterals.exit.i, %bb.jc, %bb.iy, %FSE_reloadDStream.exit.thread.i, %ZSTD_execSequence.exit.thread167.i, %FSE_initDStream.exit.i, %bb.hg, %bb.gy, %bb.gw, %ZSTDv01_decodeSeqHeaders.exit.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i, %ZSTDv01_decodeLiteralsBlock.exit
  %.0 = phi i64 [ -1, %ZSTD_decompressLiterals.exit.i ], [ %i.aua, %ZSTDv01_decodeLiteralsBlock.exit ], [ %.786.i.ph.i, %ZSTDv01_decodeSeqHeaders.exit.thread.i ], [ %i.btb, %bb.jc ], [ %i.bfo, %ZSTDv01_decodeSeqHeaders.exit.i ], [ -20, %FSE_reloadDStream.exit.thread.i ], [ -20, %bb.gw ], [ -20, %FSE_initDStream.exit.i ], [ -70, %bb.iy ], [ -20, %bb.hg ], [ -20, %ZSTD_execSequence.exit.thread167.i ], [ -20, %bb.gy ], [ -1, %.sink.split.i.i ], [ -70, %bb.g ], [ -72, %bb.d ], [ -1, %bb.b ], [ -70, %bb.k ], [ -20, %bb.j ], [ -20, %FSE_initDState.exit92.i ], [ -20, %FSE_initDState.exit84.i ], [ -72, %bb.a ], [ -20, %ZSTD_execSequence.exit.i ], [ -70, %bb.il ], [ -70, %bb.ik ], [ -20, %bb.ij ], [ -70, %bb.ii ], [ -20, %bb.ih ], [ -20, %bb.ig ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv01_decompress(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.ZSTDv01_Dctx_s, align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 10264
  store ptr %0, ptr %i.a, align 8, !tbaa !34
  %5 = call i64 @ZSTDv01_decompressDCtx(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret i64 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ZSTDv01_findFrameSizeInfoLegacy(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %1, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.c:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 1
  %.not = icmp eq i32 %i.b, 515190781
  br i1 %.not, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 -10, ptr %2, align 8, !tbaa !60
  br label %.thread51

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = add i64 %1, -4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread89
  %.03474 = phi i64 [ %i.ac, %.thread89 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03573 = phi i64 [ %i.ab, %.thread89 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.03772 = phi ptr [ %i.aa, %.thread89 ], [ %i.d, %.lr.ph.preheader ] ; 5 uses
  %i.e = load i8, ptr %.03772, align 1, !tbaa !13
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = lshr i32 %i.f, 6
  switch i32 %i.g, label %bb.e [
    i32 3, label %.loopexit
    i32 2, label %.thread
  ]

._crit_edge:                                      ; preds = %.thread89
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.e:                                             ; preds = %.lr.ph
  %i.h = shl nuw nsw i32 %i.f, 16
  %i.i = and i32 %i.h, 458752
  %i.j = getelementptr inbounds nuw i8, ptr %.03772, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.03772, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !13
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 8
  %i.r = or disjoint i32 %i.q, %i.m               ; 2 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = add i64 %.03573, -3                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %bb.g

.thread:                                          ; preds = %.lr.ph
  %i.v = add i64 %.03573, -3                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %.thread89

bb.f:                                             ; preds = %.thread, %bb.e
  store i64 -72, ptr %2, align 8, !tbaa !60
  br label %.thread51

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.r, 0
  br i1 %i.x, label %.loopexit, label %.thread89

.thread89:                                        ; preds = %.thread, %bb.g
  %.0.i.ph8891 = phi i64 [ %i.s, %bb.g ], [ 1, %.thread ] ; 2 uses
  %i.y = phi i64 [ %i.t, %bb.g ], [ %i.v, %.thread ]
  %i.z = getelementptr inbounds nuw i8, ptr %.03772, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0.i.ph8891
  %i.ab = sub nuw i64 %i.y, %.0.i.ph8891          ; 2 uses
  %i.ac = add i64 %.03474, 1
  %i.ad = icmp ult i64 %i.ab, 3
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %.lr.ph
  %.138.ph = getelementptr inbounds nuw i8, ptr %.03772, i64 3
  %i.ae = ptrtoint ptr %.138.ph to i64
  %i.af = ptrtoint ptr %0 to i64
  %i.ag = sub i64 %i.ae, %i.af
  store i64 %i.ag, ptr %2, align 8, !tbaa !60
  %i.ah = shl i64 %.03474, 17
  br label %.thread51

.thread51:                                        ; preds = %bb.f, %._crit_edge, %.loopexit, %bb.d, %bb.b
  %.sink = phi i64 [ -2, %bb.f ], [ -2, %._crit_edge ], [ %i.ah, %.loopexit ], [ -2, %bb.d ], [ -2, %bb.b ]
  store i64 %.sink, ptr %3, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef i64 @ZSTDv01_resetDCtx(ptr nofree noundef writeonly captures(none) initializes((10256, 10280), (10284, 10288)) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272
  store i64 4, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10284
  store i32 0, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret i64 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noalias noundef ptr @ZSTDv01_createDCtx() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(10288) ptr @malloc(i64 noundef 10288) #17 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 10272
  store i64 4, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 10284
  store i32 0, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 10256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef i64 @ZSTDv01_freeDCtx(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #16
  ret i64 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZSTDv01_nextSrcSizeToDecompress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @ZSTDv01_decompressContinue(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10272 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !35
  %.not = icmp eq i64 %4, %i.b
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10256 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %.not44 = icmp eq ptr %1, %i.d
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10264
  store ptr %1, ptr %i.e, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10284 ; 6 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  switch i32 %i.g, label %bb.k [
    i32 0, label %bb.e
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %3, align 1
  %.not47 = icmp eq i32 %i.h, 515190781
  br i1 %.not47, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.f, align 4, !tbaa !36
  store i64 3, ptr %i.a, align 8, !tbaa !35
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  %i.i = load i8, ptr %3, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = lshr i32 %i.j, 6                         ; 2 uses
  switch i32 %i.k, label %bb.h [
    i32 3, label %ZSTDv01_getcBlockSize.exit
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = shl nuw nsw i32 %i.j, 16
  %i.m = and i32 %i.l, 458752
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
end_hunk_0
