Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 51
begin_hunk_0_@decode_frame:bb.a
.preheader.i.i.i.preheader:                       ; preds = %bb.mw
  %xtraiter3719 = and i64 %i.bcf, 1
  %i.bch = icmp eq i32 %.0721, 1
  br i1 %i.bch, label %.preheader.i.i.i.epil.preheader, label %.preheader.i.i.i.preheader.new

.preheader.i.i.i.preheader.new:                   ; preds = %.preheader.i.i.i.preheader
  %unroll_iter3722 = and i64 %i.bcf, 2147483646
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.i.i.i.preheader.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %indvars.iv.next.i.i.i.1, %.preheader.i.i.i ] ; 4 uses
  %niter3723 = phi i64 [ 0, %.preheader.i.i.i.preheader.new ], [ %niter3723.next.1, %.preheader.i.i.i ]
  %i.bci = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i
  %i.bcj = load i8, ptr %i.bci, align 1, !tbaa !80
  %i.bck = zext i8 %i.bcj to i64
  %i.bcl = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bck
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !80
  %i.bcn = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 %indvars.iv.i.i.i
  store i8 %i.bcm, ptr %i.bco, align 1, !tbaa !80
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i.i.i
  %i.bcq = load i8, ptr %i.bcp, align 1, !tbaa !80
  %i.bcr = zext i8 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcr
  %i.bct = load i8, ptr %i.bcs, align 1, !tbaa !80
  %i.bcu = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 %indvars.iv.next.i.i.i
  store i8 %i.bct, ptr %i.bcv, align 1, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter3723.next.1 = add i64 %niter3723, 2       ; 2 uses
  %niter3723.ncmp.1 = icmp eq i64 %niter3723.next.1, %unroll_iter3722
  br i1 %niter3723.ncmp.1, label %deinvert_buffer.exit.i.i.unr-lcssa, label %.preheader.i.i.i, !llvm.loop !145

bb.mx:                                            ; preds = %bb.mw
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

deinvert_buffer.exit.i.i.unr-lcssa:               ; preds = %.preheader.i.i.i
  %lcmp.mod3720.not = icmp eq i64 %xtraiter3719, 0
  br i1 %lcmp.mod3720.not, label %deinvert_buffer.exit.i.i, label %.preheader.i.i.i.epil.preheader

.preheader.i.i.i.epil.preheader:                  ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.preheader
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.1, %deinvert_buffer.exit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3721 = trunc i32 %.0721 to i1
  call void @llvm.assume(i1 %lcmp.mod3721)
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i.i.epil.init
  %i.bcx = load i8, ptr %i.bcw, align 1, !tbaa !80
  %i.bcy = zext i8 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bcy
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !80
  %i.bdb = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %indvars.iv.i.i.i.epil.init
  store i8 %i.bda, ptr %i.bdc, align 1, !tbaa !80
  br label %deinvert_buffer.exit.i.i

deinvert_buffer.exit.i.i:                         ; preds = %deinvert_buffer.exit.i.i.unr-lcssa, %.preheader.i.i.i.epil.preheader
  %i.bdd = load ptr, ptr %i.axd, align 8, !tbaa !144
  br label %bb.my

bb.my:                                            ; preds = %deinvert_buffer.exit.i.i, %bb.mv
  %.059.i.i = phi ptr [ %i.bdd, %deinvert_buffer.exit.i.i ], [ %i.azl, %bb.mv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.axl, i8 0, i64 104, i1 false)
  store ptr %.059.i.i, ptr %5, align 8, !tbaa !146
  store i32 %.0721, ptr %i.axl, align 8, !tbaa !149
  store ptr %i.bcd, ptr %i.axm, align 8, !tbaa !150
  store i32 %i.bcb, ptr %i.axn, align 8, !tbaa !151
  %i.bde = call i32 @inflateInit_(ptr noundef nonnull %5, ptr noundef nonnull @.str.1846, i32 noundef 112) #16 ; 3 uses
  %.not.i70.i.i = icmp eq i32 %i.bde, 0
  br i1 %.not.i70.i.i, label %bb.mz, label %tiff_uncompress.exit.thread81.i.i

tiff_uncompress.exit.thread81.i.i:                ; preds = %bb.my
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.1847, i32 noundef %i.bde) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %.loopexit951

bb.mz:                                            ; preds = %bb.my
  %i.bdf = call i32 @inflate(ptr noundef nonnull %5, i32 noundef 2) #16 ; 2 uses
  %i.bdg = call i32 @inflateEnd(ptr noundef nonnull %5) #16 ; 0 uses
  %i.bdh = load i64, ptr %i.axo, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %switch.i.i = icmp ult i32 %i.bdf, 2
  br i1 %switch.i.i, label %tiff_uncompress.exit.thread.i.i, label %.loopexit951

.loopexit951:                                     ; preds = %bb.mz, %tiff_uncompress.exit.thread81.i.i
  %.0.i7186.i.i = phi i32 [ %i.bde, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdf, %bb.mz ]
  %.07485.i.i = phi i64 [ %i.bcc, %tiff_uncompress.exit.thread81.i.i ], [ %i.bdh, %bb.mz ]
  %i.bdi = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bdj = sext i32 %.2.i to i64
  %i.bdk = sext i32 %.829 to i64
  %i.bdl = mul nsw i64 %i.bdj, %i.bdk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdi, i32 noundef 16, ptr noundef nonnull @.str.1844, i64 noundef %.07485.i.i, i64 noundef %i.bdl, i32 noundef %.0.i7186.i.i) #16
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

tiff_uncompress.exit.thread.i.i:                  ; preds = %bb.mz
  %i.bdm = sext i32 %.2.i to i64                  ; 4 uses
  %i.bdn = sext i32 %i.bca to i64
  %i.bdo = mul nsw i64 %i.bdn, %i.bdm             ; 2 uses
  %i.bdp = icmp ult i64 %i.bdh, %i.bdo
  br i1 %i.bdp, label %bb.na, label %.preheader91.i.i

.preheader91.i.i:                                 ; preds = %tiff_uncompress.exit.thread.i.i
  %i.bdq = icmp sgt i32 %.829, 0
  br i1 %i.bdq, label %.lr.ph102.i.i, label %tiff_unpack_strip.exit.thread893.sink.split

.lr.ph102.i.i:                                    ; preds = %.preheader91.i.i
  %i.bdr = icmp sgt i32 %.2.i, 0                  ; 3 uses
  %i.bds = sext i32 %.2303.i to i64               ; 2 uses
  %i.bdt = zext i32 %.2.i to i64                  ; 10 uses
  %i.bdu = shl nuw nsw i64 %i.bdt, 1
  %i.bdv = getelementptr i8, ptr %.2299.i, i64 %i.bdu
  %invariant.gep3969 = getelementptr i8, ptr %i.bcd, i64 %i.bdt
  %min.iters.check3419 = icmp ult i32 %.2.i, 8
  %n.vec3421 = and i64 %i.bdt, 2147483640         ; 2 uses
  %i.bdw = and i64 %i.bdt, 7
  %cmp.n3431 = icmp eq i64 %n.vec3421, %i.bdt
  br label %bb.nb

bb.na:                                            ; preds = %tiff_uncompress.exit.thread.i.i
  %i.bdx = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bdx, i32 noundef 16, ptr noundef nonnull @.str.1845, i64 noundef %i.bdh, i64 noundef %i.bdo) #16
  call void @av_free(ptr noundef nonnull %i.bcd) #16
  br label %tiff_unpack_strip.exit.thread

bb.nb:                                            ; preds = %bb.nf, %.lr.ph102.i.i
  %indvar3411 = phi i64 [ %indvar.next3412, %bb.nf ], [ 0, %.lr.ph102.i.i ] ; 3 uses
  %.0101.i375.i = phi i32 [ %i.bfz, %bb.nf ], [ 0, %.lr.ph102.i.i ] ; 3 uses
  %.05899.i.i = phi ptr [ %i.bfx, %bb.nf ], [ %.2299.i, %.lr.ph102.i.i ] ; 8 uses
  %.16097.i.i = phi ptr [ %i.bfy, %bb.nf ], [ %i.bcd, %.lr.ph102.i.i ] ; 7 uses
  %i.bdy = mul i64 %indvar3411, %i.bds
  %scevgep3413 = getelementptr i8, ptr %i.bdv, i64 %i.bdy
  %i.bdz = mul i64 %indvar3411, %i.bdm
  %gep3970 = getelementptr i8, ptr %invariant.gep3969, i64 %i.bdz
  %i.bea = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.beb = icmp ult i32 %i.bea, 8
  br i1 %i.beb, label %bb.nc, label %horizontal_fill.exit.sink.split.i.i

bb.nc:                                            ; preds = %bb.nb
  %i.bec = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 136
  %i.bee = load i32, ptr %i.bed, align 8, !tbaa !138
  %i.bef = icmp eq i32 %i.bee, 11
  br i1 %i.bef, label %bb.nd, label %horizontal_fill.exit.sink.split.i.i

bb.nd:                                            ; preds = %bb.nc
  switch i32 %i.bea, label %horizontal_fill.exit.sink.split.i.i [
    i32 1, label %.preheader.i.i
    i32 2, label %.preheader87.i.i
    i32 4, label %.preheader89.i.i
  ]

.preheader89.i.i:                                 ; preds = %bb.nd
  br i1 %i.bdr, label %.lr.ph.i.i.preheader, label %horizontal_fill.exit.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader89.i.i
  br i1 %min.iters.check3419, label %.lr.ph.i.i.preheader3482, label %vector.memcheck3410

vector.memcheck3410:                              ; preds = %.lr.ph.i.i.preheader
  %bound03415 = icmp ult ptr %.05899.i.i, %gep3970
  %bound13416 = icmp ult ptr %.16097.i.i, %scevgep3413
  %found.conflict3417 = and i1 %bound03415, %bound13416
  br i1 %found.conflict3417, label %.lr.ph.i.i.preheader3482, label %vector.body3422

vector.body3422:                                  ; preds = %vector.memcheck3410, %vector.body3422
  %index3423 = phi i64 [ %index.next3429, %vector.body3422 ], [ 0, %vector.memcheck3410 ] ; 2 uses
  %i.beg = xor i64 %index3423, -1
  %i.beh = add i64 %i.beg, %i.bdt                 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %.16097.i.i, i64 %i.beh
  %i.bej = getelementptr inbounds i8, ptr %i.bei, i64 -7
  %wide.load3424 = load <8 x i8>, ptr %i.bej, align 1, !tbaa !80, !alias.scope !153 ; 2 uses
  %i.bek = shl nuw nsw i64 %i.beh, 1
  %i.bel = getelementptr i8, ptr %.05899.i.i, i64 %i.bek
  %i.bem = getelementptr i8, ptr %i.bel, i64 -14
  %reverse3426 = lshr <8 x i8> %wide.load3424, splat (i8 4)
  %reverse3427 = and <8 x i8> %wide.load3424, splat (i8 15)
  %interleaved.vec3428 = shufflevector <8 x i8> %reverse3426, <8 x i8> %reverse3427, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3428, ptr %i.bem, align 1, !tbaa !80, !alias.scope !156, !noalias !153
  %index.next3429 = add nuw i64 %index3423, 8     ; 2 uses
  %i.ben = icmp eq i64 %index.next3429, %n.vec3421
  br i1 %i.ben, label %middle.block3430, label %vector.body3422, !llvm.loop !158

middle.block3430:                                 ; preds = %vector.body3422
  br i1 %cmp.n3431, label %horizontal_fill.exit.i.i, label %.lr.ph.i.i.preheader3482

.lr.ph.i.i.preheader3482:                         ; preds = %vector.memcheck3410, %.lr.ph.i.i.preheader, %middle.block3430
  %indvars.iv.i.i.ph = phi i64 [ %i.bdt, %vector.memcheck3410 ], [ %i.bdt, %.lr.ph.i.i.preheader ], [ %i.bdw, %middle.block3430 ]
  br label %.lr.ph.i.i

.preheader87.i.i:                                 ; preds = %bb.nd
  br i1 %i.bdr, label %.lr.ph94.i.i, label %horizontal_fill.exit.i.i

.preheader.i.i:                                   ; preds = %bb.nd
  br i1 %i.bdr, label %.lr.ph96.i.i, label %horizontal_fill.exit.i.i

.lr.ph96.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph96.i.i
  %indvars.iv109.i.i = phi i64 [ %indvars.iv.next110.i.i, %.lr.ph96.i.i ], [ %i.bdt, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next110.i.i = add nsw i64 %indvars.iv109.i.i, -1 ; 3 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %.16097.i.i, i64 %indvars.iv.next110.i.i
  %i.bep = shl nsw i64 %indvars.iv.next110.i.i, 3
  %i.beq = getelementptr i8, ptr %.05899.i.i, i64 %i.bep
  %i.ber = load i8, ptr %i.beo, align 1, !tbaa !80
  %i.bes = insertelement <8 x i8> poison, i8 %i.ber, i64 0
  %i.bet = shufflevector <8 x i8> %i.bes, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.beu = lshr <8 x i8> %i.bet, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.bev = and <8 x i8> %i.beu, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.bev, ptr %i.beq, align 1, !tbaa !80
  %i.bew = icmp samesign ugt i64 %indvars.iv109.i.i, 1
  br i1 %i.bew, label %.lr.ph96.i.i, label %horizontal_fill.exit.i.i, !llvm.loop !159

.lr.ph94.i.i:                                     ; preds = %.preheader87.i.i, %.lr.ph94.i.i
  %indvars.iv106.i.i = phi i64 [ %indvars.iv.next107.i.i, %.lr.ph94.i.i ], [ %i.bdt, %.preheader87.i.i ] ; 2 uses
  %indvars.iv.next107.i.i = add nsw i64 %indvars.iv106.i.i, -1 ; 3 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %.16097.i.i, i64 %indvars.iv.next107.i.i
  %i.bey = load i8, ptr %i.bex, align 1, !tbaa !80 ; 4 uses
  %i.bez = and i8 %i.bey, 3
  %i.bfa = shl nsw i64 %indvars.iv.next107.i.i, 2
  %i.bfb = getelementptr i8, ptr %.05899.i.i, i64 %i.bfa ; 4 uses
  %i.bfc = getelementptr i8, ptr %i.bfb, i64 3
  store i8 %i.bez, ptr %i.bfc, align 1, !tbaa !80
  %i.bfd = lshr i8 %i.bey, 2
  %i.bfe = and i8 %i.bfd, 3
  %i.bff = getelementptr i8, ptr %i.bfb, i64 2
  store i8 %i.bfe, ptr %i.bff, align 1, !tbaa !80
  %i.bfg = lshr i8 %i.bey, 4
  %i.bfh = and i8 %i.bfg, 3
  %i.bfi = getelementptr i8, ptr %i.bfb, i64 1
  store i8 %i.bfh, ptr %i.bfi, align 1, !tbaa !80
  %i.bfj = lshr i8 %i.bey, 6
  store i8 %i.bfj, ptr %i.bfb, align 1, !tbaa !80
  %i.bfk = icmp samesign ugt i64 %indvars.iv106.i.i, 1
  br i1 %i.bfk, label %.lr.ph94.i.i, label %horizontal_fill.exit.i.i, !llvm.loop !160

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader3482, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader3482 ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.bfl = getelementptr inbounds nuw i8, ptr %.16097.i.i, i64 %indvars.iv.next.i.i
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !80 ; 2 uses
  %i.bfn = and i8 %i.bfm, 15
  %i.bfo = shl nuw nsw i64 %indvars.iv.next.i.i, 1
  %i.bfp = getelementptr i8, ptr %.05899.i.i, i64 %i.bfo ; 2 uses
  %i.bfq = getelementptr i8, ptr %i.bfp, i64 1
  store i8 %i.bfn, ptr %i.bfq, align 1, !tbaa !80
  %i.bfr = lshr i8 %i.bfm, 4
  store i8 %i.bfr, ptr %i.bfp, align 1, !tbaa !80
  %i.bfs = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.bfs, label %.lr.ph.i.i, label %horizontal_fill.exit.i.i, !llvm.loop !161

horizontal_fill.exit.sink.split.i.i:              ; preds = %bb.nd, %bb.nc, %bb.nb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.05899.i.i, ptr align 1 %.16097.i.i, i64 %i.bdm, i1 false)
  br label %horizontal_fill.exit.i.i

horizontal_fill.exit.i.i:                         ; preds = %.lr.ph.i.i, %.lr.ph94.i.i, %.lr.ph96.i.i, %middle.block3430, %horizontal_fill.exit.sink.split.i.i, %.preheader.i.i, %.preheader87.i.i, %.preheader89.i.i
  br i1 %i.bac, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %horizontal_fill.exit.i.i
  %i.bft = add nsw i32 %.0101.i375.i, %.121604
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.05899.i.i, i32 noundef %i.bft)
  %i.bfu = load i32, ptr %i.axa, align 8, !tbaa !29
  %i.bfv = add nsw i32 %.0101.i375.i, -1
  %i.bfw = add i32 %i.bfv, %i.bfu
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %horizontal_fill.exit.i.i
  %.1.i376.i = phi i32 [ %i.bfw, %bb.ne ], [ %.0101.i375.i, %horizontal_fill.exit.i.i ]
  %i.bfx = getelementptr i8, ptr %.05899.i.i, i64 %i.bds
  %i.bfy = getelementptr i8, ptr %.16097.i.i, i64 %i.bdm
  %i.bfz = add nsw i32 %.1.i376.i, 1              ; 2 uses
  %i.bga = icmp slt i32 %i.bfz, %.829
  %indvar.next3412 = add i64 %indvar3411, 1
  br i1 %i.bga, label %bb.nb, label %tiff_unpack_strip.exit.thread893.sink.split, !llvm.loop !162

bb.ng:                                            ; preds = %bb.mr
  %i.bgb = sext i32 %.2.i to i64                  ; 5 uses
  %i.bgc = sext i32 %.829 to i64
  %i.bgd = mul nsw i64 %i.bgb, %i.bgc             ; 4 uses
  br i1 %i.bac, label %bb.nh, label %bb.ni

bb.nh:                                            ; preds = %bb.ng
  %i.bge = load i32, ptr %i.axa, align 8, !tbaa !29 ; 2 uses
  %i.bgf = add i32 %.829, -1
  %i.bgg = add i32 %i.bgf, %i.bge
  %i.bgh = sdiv i32 %i.bgg, %i.bge
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %bb.ng
  %i.bgi = phi i32 [ %i.bgh, %bb.nh ], [ %.829, %bb.ng ]
  %i.bgj = call noalias ptr @av_malloc(i64 noundef %i.bgd) #16 ; 9 uses
  %.not67.i378.i = icmp eq ptr %i.bgj, null
  br i1 %.not67.i378.i, label %tiff_unpack_strip.exit.thread, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.bgk = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not68.i379.i = icmp eq i32 %i.bgk, 0
  %.pre.i.i = zext nneg i32 %.0721 to i64         ; 4 uses
  br i1 %.not68.i379.i, label %._crit_edge113.i.i, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axd, ptr noundef nonnull %i.axe, i64 noundef %.pre.i.i) #16
  %i.bgl = load ptr, ptr %i.axd, align 8, !tbaa !144
  %.not.i.i380.i = icmp eq ptr %i.bgl, null
  br i1 %.not.i.i380.i, label %bb.nl, label %.preheader.i.i381.i.preheader

.preheader.i.i381.i.preheader:                    ; preds = %bb.nk
  %xtraiter3714 = and i64 %.pre.i.i, 1
  %i.bgm = icmp eq i32 %.0721, 1
  br i1 %i.bgm, label %.preheader.i.i381.i.epil.preheader, label %.preheader.i.i381.i.preheader.new

.preheader.i.i381.i.preheader.new:                ; preds = %.preheader.i.i381.i.preheader
  %unroll_iter3717 = and i64 %.pre.i.i, 2147483646
  br label %.preheader.i.i381.i

.preheader.i.i381.i:                              ; preds = %.preheader.i.i381.i, %.preheader.i.i381.i.preheader.new
  %indvars.iv.i.i382.i = phi i64 [ 0, %.preheader.i.i381.i.preheader.new ], [ %indvars.iv.next.i.i383.i.1, %.preheader.i.i381.i ] ; 4 uses
  %niter3718 = phi i64 [ 0, %.preheader.i.i381.i.preheader.new ], [ %niter3718.next.1, %.preheader.i.i381.i ]
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i382.i
  %i.bgo = load i8, ptr %i.bgn, align 1, !tbaa !80
  %i.bgp = zext i8 %i.bgo to i64
  %i.bgq = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bgp
  %i.bgr = load i8, ptr %i.bgq, align 1, !tbaa !80
  %i.bgs = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 %indvars.iv.i.i382.i
  store i8 %i.bgr, ptr %i.bgt, align 1, !tbaa !80
  %indvars.iv.next.i.i383.i = or disjoint i64 %indvars.iv.i.i382.i, 1 ; 2 uses
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i.i383.i
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !80
  %i.bgw = zext i8 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bgw
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !80
  %i.bgz = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgz, i64 %indvars.iv.next.i.i383.i
  store i8 %i.bgy, ptr %i.bha, align 1, !tbaa !80
  %indvars.iv.next.i.i383.i.1 = add nuw nsw i64 %indvars.iv.i.i382.i, 2 ; 2 uses
  %niter3718.next.1 = add i64 %niter3718, 2       ; 2 uses
  %niter3718.ncmp.1 = icmp eq i64 %niter3718.next.1, %unroll_iter3717
  br i1 %niter3718.ncmp.1, label %deinvert_buffer.exit.i385.i.unr-lcssa, label %.preheader.i.i381.i, !llvm.loop !145

bb.nl:                                            ; preds = %bb.nk
  call void @av_free(ptr noundef nonnull %i.bgj) #16
  br label %tiff_unpack_strip.exit.thread

deinvert_buffer.exit.i385.i.unr-lcssa:            ; preds = %.preheader.i.i381.i
  %lcmp.mod3715.not = icmp eq i64 %xtraiter3714, 0
  br i1 %lcmp.mod3715.not, label %deinvert_buffer.exit.i385.i, label %.preheader.i.i381.i.epil.preheader

.preheader.i.i381.i.epil.preheader:               ; preds = %deinvert_buffer.exit.i385.i.unr-lcssa, %.preheader.i.i381.i.preheader
  %indvars.iv.i.i382.i.epil.init = phi i64 [ 0, %.preheader.i.i381.i.preheader ], [ %indvars.iv.next.i.i383.i.1, %deinvert_buffer.exit.i385.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3716 = trunc i32 %.0721 to i1
  call void @llvm.assume(i1 %lcmp.mod3716)
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i382.i.epil.init
  %i.bhc = load i8, ptr %i.bhb, align 1, !tbaa !80
  %i.bhd = zext i8 %i.bhc to i64
  %i.bhe = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bhd
  %i.bhf = load i8, ptr %i.bhe, align 1, !tbaa !80
  %i.bhg = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhg, i64 %indvars.iv.i.i382.i.epil.init
  store i8 %i.bhf, ptr %i.bhh, align 1, !tbaa !80
  br label %deinvert_buffer.exit.i385.i

deinvert_buffer.exit.i385.i:                      ; preds = %deinvert_buffer.exit.i385.i.unr-lcssa, %.preheader.i.i381.i.epil.preheader
  %i.bhi = load ptr, ptr %i.axd, align 8, !tbaa !144
  br label %._crit_edge113.i.i

._crit_edge113.i.i:                               ; preds = %bb.nj, %deinvert_buffer.exit.i385.i
  %.059.i386.i = phi ptr [ %i.bhi, %deinvert_buffer.exit.i385.i ], [ %i.azl, %bb.nj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.axg, i8 0, i64 120, i1 false)
  store ptr %.059.i386.i, ptr %4, align 8, !tbaa !163
  store i64 %.pre.i.i, ptr %i.axh, align 8, !tbaa !166
  store ptr %i.bgj, ptr %i.axi, align 8, !tbaa !167
  store i64 %i.bgd, ptr %i.axj, align 8, !tbaa !168
  %i.bhj = call i32 @lzma_stream_decoder(ptr noundef nonnull %4, i64 noundef -1, i32 noundef 0) #16 ; 3 uses
  %.not.i70.i387.i = icmp eq i32 %i.bhj, 0
  br i1 %.not.i70.i387.i, label %bb.nm, label %tiff_uncompress_lzma.exit.thread82.i.i

tiff_uncompress_lzma.exit.thread82.i.i:           ; preds = %._crit_edge113.i.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.1849, i32 noundef %i.bhj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.loopexit950

bb.nm:                                            ; preds = %._crit_edge113.i.i
  %i.bhk = call i32 @lzma_code(ptr noundef nonnull %4, i32 noundef 0) #16 ; 2 uses
  call void @lzma_end(ptr noundef nonnull %4) #16
  %i.bhl = load i64, ptr %i.axk, align 8, !tbaa !169 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %switch.i389.i = icmp ult i32 %i.bhk, 2
  br i1 %switch.i389.i, label %tiff_uncompress_lzma.exit.thread.i.i, label %.loopexit950

.loopexit950:                                     ; preds = %bb.nm, %tiff_uncompress_lzma.exit.thread82.i.i
  %.0.i7187.i.i = phi i32 [ %i.bhj, %tiff_uncompress_lzma.exit.thread82.i.i ], [ %i.bhk, %bb.nm ]
  %.07586.i.i = phi i64 [ %i.bgd, %tiff_uncompress_lzma.exit.thread82.i.i ], [ %i.bhl, %bb.nm ]
  %i.bhm = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhm, i32 noundef 16, ptr noundef nonnull @.str.1844, i64 noundef %.07586.i.i, i64 noundef %i.bgd, i32 noundef %.0.i7187.i.i) #16
  call void @av_free(ptr noundef nonnull %i.bgj) #16
  br label %tiff_unpack_strip.exit.thread

tiff_uncompress_lzma.exit.thread.i.i:             ; preds = %bb.nm
  %i.bhn = sext i32 %i.bgi to i64
  %i.bho = mul nsw i64 %i.bhn, %i.bgb             ; 2 uses
  %i.bhp = icmp ult i64 %i.bhl, %i.bho
  br i1 %i.bhp, label %bb.nn, label %.preheader92.i.i

.preheader92.i.i:                                 ; preds = %tiff_uncompress_lzma.exit.thread.i.i
  %i.bhq = icmp sgt i32 %.829, 0
  br i1 %i.bhq, label %.lr.ph103.i.i, label %tiff_unpack_strip.exit.thread893.sink.split

.lr.ph103.i.i:                                    ; preds = %.preheader92.i.i
  %i.bhr = icmp sgt i32 %.2.i, 0                  ; 3 uses
  %i.bhs = sext i32 %.2303.i to i64               ; 2 uses
  %i.bht = zext i32 %.2.i to i64                  ; 10 uses
  %i.bhu = shl nuw nsw i64 %i.bht, 1
  %i.bhv = getelementptr i8, ptr %.2299.i, i64 %i.bhu
  %invariant.gep3967 = getelementptr i8, ptr %i.bgj, i64 %i.bht
  %min.iters.check3442 = icmp ult i32 %.2.i, 8
  %n.vec3444 = and i64 %i.bht, 2147483640         ; 2 uses
  %i.bhw = and i64 %i.bht, 7
  %cmp.n3454 = icmp eq i64 %n.vec3444, %i.bht
  br label %bb.no

bb.nn:                                            ; preds = %tiff_uncompress_lzma.exit.thread.i.i
  %i.bhx = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhx, i32 noundef 16, ptr noundef nonnull @.str.1848, i64 noundef %i.bhl, i64 noundef %i.bho) #16
  call void @av_free(ptr noundef nonnull %i.bgj) #16
  br label %tiff_unpack_strip.exit.thread

bb.no:                                            ; preds = %bb.ns, %.lr.ph103.i.i
  %indvar3434 = phi i64 [ %indvar.next3435, %bb.ns ], [ 0, %.lr.ph103.i.i ] ; 3 uses
  %.0102.i.i = phi i32 [ %i.bjz, %bb.ns ], [ 0, %.lr.ph103.i.i ] ; 3 uses
  %.058100.i.i = phi ptr [ %i.bjx, %bb.ns ], [ %.2299.i, %.lr.ph103.i.i ] ; 8 uses
  %.16098.i.i = phi ptr [ %i.bjy, %bb.ns ], [ %i.bgj, %.lr.ph103.i.i ] ; 7 uses
  %i.bhy = mul i64 %indvar3434, %i.bhs
  %scevgep3436 = getelementptr i8, ptr %i.bhv, i64 %i.bhy
  %i.bhz = mul i64 %indvar3434, %i.bgb
  %gep3968 = getelementptr i8, ptr %invariant.gep3967, i64 %i.bhz
  %i.bia = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.bib = icmp ult i32 %i.bia, 8
  br i1 %i.bib, label %bb.np, label %horizontal_fill.exit.sink.split.i391.i

bb.np:                                            ; preds = %bb.no
  %i.bic = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 136
  %i.bie = load i32, ptr %i.bid, align 8, !tbaa !138
  %i.bif = icmp eq i32 %i.bie, 11
  br i1 %i.bif, label %bb.nq, label %horizontal_fill.exit.sink.split.i391.i

bb.nq:                                            ; preds = %bb.np
  switch i32 %i.bia, label %horizontal_fill.exit.sink.split.i391.i [
    i32 1, label %.preheader.i397.i
    i32 2, label %.preheader88.i.i
    i32 4, label %.preheader90.i.i
  ]

.preheader90.i.i:                                 ; preds = %bb.nq
  br i1 %i.bhr, label %.lr.ph.i394.i.preheader, label %horizontal_fill.exit.i392.i

.lr.ph.i394.i.preheader:                          ; preds = %.preheader90.i.i
  br i1 %min.iters.check3442, label %.lr.ph.i394.i.preheader3485, label %vector.memcheck3433

vector.memcheck3433:                              ; preds = %.lr.ph.i394.i.preheader
  %bound03438 = icmp ult ptr %.058100.i.i, %gep3968
  %bound13439 = icmp ult ptr %.16098.i.i, %scevgep3436
  %found.conflict3440 = and i1 %bound03438, %bound13439
  br i1 %found.conflict3440, label %.lr.ph.i394.i.preheader3485, label %vector.body3445

vector.body3445:                                  ; preds = %vector.memcheck3433, %vector.body3445
  %index3446 = phi i64 [ %index.next3452, %vector.body3445 ], [ 0, %vector.memcheck3433 ] ; 2 uses
  %i.big = xor i64 %index3446, -1
  %i.bih = add i64 %i.big, %i.bht                 ; 2 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.16098.i.i, i64 %i.bih
  %i.bij = getelementptr inbounds i8, ptr %i.bii, i64 -7
  %wide.load3447 = load <8 x i8>, ptr %i.bij, align 1, !tbaa !80, !alias.scope !170 ; 2 uses
  %i.bik = shl nuw nsw i64 %i.bih, 1
  %i.bil = getelementptr i8, ptr %.058100.i.i, i64 %i.bik
  %i.bim = getelementptr i8, ptr %i.bil, i64 -14
  %reverse3449 = lshr <8 x i8> %wide.load3447, splat (i8 4)
  %reverse3450 = and <8 x i8> %wide.load3447, splat (i8 15)
  %interleaved.vec3451 = shufflevector <8 x i8> %reverse3449, <8 x i8> %reverse3450, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec3451, ptr %i.bim, align 1, !tbaa !80, !alias.scope !173, !noalias !170
  %index.next3452 = add nuw i64 %index3446, 8     ; 2 uses
  %i.bin = icmp eq i64 %index.next3452, %n.vec3444
  br i1 %i.bin, label %middle.block3453, label %vector.body3445, !llvm.loop !175

middle.block3453:                                 ; preds = %vector.body3445
  br i1 %cmp.n3454, label %horizontal_fill.exit.i392.i, label %.lr.ph.i394.i.preheader3485

.lr.ph.i394.i.preheader3485:                      ; preds = %vector.memcheck3433, %.lr.ph.i394.i.preheader, %middle.block3453
  %indvars.iv.i395.i.ph = phi i64 [ %i.bht, %vector.memcheck3433 ], [ %i.bht, %.lr.ph.i394.i.preheader ], [ %i.bhw, %middle.block3453 ]
  br label %.lr.ph.i394.i

.preheader88.i.i:                                 ; preds = %bb.nq
  br i1 %i.bhr, label %.lr.ph95.i.i, label %horizontal_fill.exit.i392.i

.preheader.i397.i:                                ; preds = %bb.nq
  br i1 %i.bhr, label %.lr.ph97.i.i, label %horizontal_fill.exit.i392.i

.lr.ph97.i.i:                                     ; preds = %.preheader.i397.i, %.lr.ph97.i.i
  %indvars.iv110.i.i = phi i64 [ %indvars.iv.next111.i.i, %.lr.ph97.i.i ], [ %i.bht, %.preheader.i397.i ] ; 2 uses
  %indvars.iv.next111.i.i = add nsw i64 %indvars.iv110.i.i, -1 ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %.16098.i.i, i64 %indvars.iv.next111.i.i
  %i.bip = shl nsw i64 %indvars.iv.next111.i.i, 3
  %i.biq = getelementptr i8, ptr %.058100.i.i, i64 %i.bip
  %i.bir = load i8, ptr %i.bio, align 1, !tbaa !80
  %i.bis = insertelement <8 x i8> poison, i8 %i.bir, i64 0
  %i.bit = shufflevector <8 x i8> %i.bis, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.biu = lshr <8 x i8> %i.bit, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.biv = and <8 x i8> %i.biu, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.biv, ptr %i.biq, align 1, !tbaa !80
  %i.biw = icmp samesign ugt i64 %indvars.iv110.i.i, 1
  br i1 %i.biw, label %.lr.ph97.i.i, label %horizontal_fill.exit.i392.i, !llvm.loop !159

.lr.ph95.i.i:                                     ; preds = %.preheader88.i.i, %.lr.ph95.i.i
  %indvars.iv107.i.i = phi i64 [ %indvars.iv.next108.i.i, %.lr.ph95.i.i ], [ %i.bht, %.preheader88.i.i ] ; 2 uses
  %indvars.iv.next108.i.i = add nsw i64 %indvars.iv107.i.i, -1 ; 3 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.16098.i.i, i64 %indvars.iv.next108.i.i
  %i.biy = load i8, ptr %i.bix, align 1, !tbaa !80 ; 4 uses
  %i.biz = and i8 %i.biy, 3
  %i.bja = shl nsw i64 %indvars.iv.next108.i.i, 2
  %i.bjb = getelementptr i8, ptr %.058100.i.i, i64 %i.bja ; 4 uses
  %i.bjc = getelementptr i8, ptr %i.bjb, i64 3
  store i8 %i.biz, ptr %i.bjc, align 1, !tbaa !80
  %i.bjd = lshr i8 %i.biy, 2
  %i.bje = and i8 %i.bjd, 3
  %i.bjf = getelementptr i8, ptr %i.bjb, i64 2
  store i8 %i.bje, ptr %i.bjf, align 1, !tbaa !80
  %i.bjg = lshr i8 %i.biy, 4
  %i.bjh = and i8 %i.bjg, 3
  %i.bji = getelementptr i8, ptr %i.bjb, i64 1
  store i8 %i.bjh, ptr %i.bji, align 1, !tbaa !80
  %i.bjj = lshr i8 %i.biy, 6
  store i8 %i.bjj, ptr %i.bjb, align 1, !tbaa !80
  %i.bjk = icmp samesign ugt i64 %indvars.iv107.i.i, 1
  br i1 %i.bjk, label %.lr.ph95.i.i, label %horizontal_fill.exit.i392.i, !llvm.loop !160

.lr.ph.i394.i:                                    ; preds = %.lr.ph.i394.i.preheader3485, %.lr.ph.i394.i
  %indvars.iv.i395.i = phi i64 [ %indvars.iv.next.i396.i, %.lr.ph.i394.i ], [ %indvars.iv.i395.i.ph, %.lr.ph.i394.i.preheader3485 ] ; 2 uses
  %indvars.iv.next.i396.i = add nsw i64 %indvars.iv.i395.i, -1 ; 3 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %.16098.i.i, i64 %indvars.iv.next.i396.i
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !80 ; 2 uses
  %i.bjn = and i8 %i.bjm, 15
  %i.bjo = shl nuw nsw i64 %indvars.iv.next.i396.i, 1
  %i.bjp = getelementptr i8, ptr %.058100.i.i, i64 %i.bjo ; 2 uses
  %i.bjq = getelementptr i8, ptr %i.bjp, i64 1
  store i8 %i.bjn, ptr %i.bjq, align 1, !tbaa !80
  %i.bjr = lshr i8 %i.bjm, 4
  store i8 %i.bjr, ptr %i.bjp, align 1, !tbaa !80
  %i.bjs = icmp samesign ugt i64 %indvars.iv.i395.i, 1
  br i1 %i.bjs, label %.lr.ph.i394.i, label %horizontal_fill.exit.i392.i, !llvm.loop !176

horizontal_fill.exit.sink.split.i391.i:           ; preds = %bb.nq, %bb.np, %bb.no
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.058100.i.i, ptr align 1 %.16098.i.i, i64 %i.bgb, i1 false)
  br label %horizontal_fill.exit.i392.i

horizontal_fill.exit.i392.i:                      ; preds = %.lr.ph.i394.i, %.lr.ph95.i.i, %.lr.ph97.i.i, %middle.block3453, %horizontal_fill.exit.sink.split.i391.i, %.preheader.i397.i, %.preheader88.i.i, %.preheader90.i.i
  br i1 %i.bac, label %bb.nr, label %bb.ns

bb.nr:                                            ; preds = %horizontal_fill.exit.i392.i
  %i.bjt = add nsw i32 %.0102.i.i, %.121604
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.058100.i.i, i32 noundef %i.bjt)
  %i.bju = load i32, ptr %i.axa, align 8, !tbaa !29
  %i.bjv = add nsw i32 %.0102.i.i, -1
  %i.bjw = add i32 %i.bjv, %i.bju
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %horizontal_fill.exit.i392.i
  %.1.i393.i = phi i32 [ %i.bjw, %bb.nr ], [ %.0102.i.i, %horizontal_fill.exit.i392.i ]
  %i.bjx = getelementptr i8, ptr %.058100.i.i, i64 %i.bhs
  %i.bjy = getelementptr i8, ptr %.16098.i.i, i64 %i.bgb
  %i.bjz = add nsw i32 %.1.i393.i, 1              ; 2 uses
  %i.bka = icmp slt i32 %i.bjz, %.829
  %indvar.next3435 = add i64 %indvar3434, 1
  br i1 %i.bka, label %bb.no, label %tiff_unpack_strip.exit.thread893.sink.split, !llvm.loop !177

bb.nt:                                            ; preds = %bb.mr
  %i.bkb = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not340.i = icmp eq i32 %i.bkb, 0
  br i1 %.not340.i, label %bb.nv, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bkc = zext nneg i32 %.0721 to i64            ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axd, ptr noundef nonnull %i.axe, i64 noundef %i.bkc) #16
  %i.bkd = load ptr, ptr %i.axd, align 8, !tbaa !144
  %.not.i398.i = icmp eq ptr %i.bkd, null
  br i1 %.not.i398.i, label %tiff_unpack_strip.exit.thread, label %.preheader.i399.i.preheader

.preheader.i399.i.preheader:                      ; preds = %bb.nu
  %xtraiter3701 = and i64 %i.bkc, 1
  %i.bke = icmp eq i32 %.0721, 1
  br i1 %i.bke, label %.preheader.i399.i.epil.preheader, label %.preheader.i399.i.preheader.new

.preheader.i399.i.preheader.new:                  ; preds = %.preheader.i399.i.preheader
  %unroll_iter3704 = and i64 %i.bkc, 2147483646
  br label %.preheader.i399.i

.preheader.i399.i:                                ; preds = %.preheader.i399.i, %.preheader.i399.i.preheader.new
  %indvars.iv.i400.i = phi i64 [ 0, %.preheader.i399.i.preheader.new ], [ %indvars.iv.next.i401.i.1, %.preheader.i399.i ] ; 4 uses
  %niter3705 = phi i64 [ 0, %.preheader.i399.i.preheader.new ], [ %niter3705.next.1, %.preheader.i399.i ]
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i400.i
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !80
  %i.bkh = zext i8 %i.bkg to i64
  %i.bki = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bkh
  %i.bkj = load i8, ptr %i.bki, align 1, !tbaa !80
  %i.bkk = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bkl = getelementptr inbounds nuw i8, ptr %i.bkk, i64 %indvars.iv.i400.i
  store i8 %i.bkj, ptr %i.bkl, align 1, !tbaa !80
  %indvars.iv.next.i401.i = or disjoint i64 %indvars.iv.i400.i, 1 ; 2 uses
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i401.i
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !80
  %i.bko = zext i8 %i.bkn to i64
  %i.bkp = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bko
  %i.bkq = load i8, ptr %i.bkp, align 1, !tbaa !80
  %i.bkr = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bkr, i64 %indvars.iv.next.i401.i
  store i8 %i.bkq, ptr %i.bks, align 1, !tbaa !80
  %indvars.iv.next.i401.i.1 = add nuw nsw i64 %indvars.iv.i400.i, 2 ; 2 uses
  %niter3705.next.1 = add i64 %niter3705, 2       ; 2 uses
  %niter3705.ncmp.1 = icmp eq i64 %niter3705.next.1, %unroll_iter3704
  br i1 %niter3705.ncmp.1, label %deinvert_buffer.exit.i.unr-lcssa, label %.preheader.i399.i, !llvm.loop !145

deinvert_buffer.exit.i.unr-lcssa:                 ; preds = %.preheader.i399.i
  %lcmp.mod3702.not = icmp eq i64 %xtraiter3701, 0
  br i1 %lcmp.mod3702.not, label %deinvert_buffer.exit.i, label %.preheader.i399.i.epil.preheader

.preheader.i399.i.epil.preheader:                 ; preds = %deinvert_buffer.exit.i.unr-lcssa, %.preheader.i399.i.preheader
  %indvars.iv.i400.i.epil.init = phi i64 [ 0, %.preheader.i399.i.preheader ], [ %indvars.iv.next.i401.i.1, %deinvert_buffer.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3703 = trunc i32 %.0721 to i1
  call void @llvm.assume(i1 %lcmp.mod3703)
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i400.i.epil.init
  %i.bku = load i8, ptr %i.bkt, align 1, !tbaa !80
  %i.bkv = zext i8 %i.bku to i64
  %i.bkw = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bkv
  %i.bkx = load i8, ptr %i.bkw, align 1, !tbaa !80
  %i.bky = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bky, i64 %indvars.iv.i400.i.epil.init
  store i8 %i.bkx, ptr %i.bkz, align 1, !tbaa !80
  br label %deinvert_buffer.exit.i

deinvert_buffer.exit.i:                           ; preds = %deinvert_buffer.exit.i.unr-lcssa, %.preheader.i399.i.epil.preheader
  %i.bla = load ptr, ptr %i.axd, align 8, !tbaa !144
  br label %bb.nv

bb.nv:                                            ; preds = %deinvert_buffer.exit.i, %bb.nt
  %.0304.i = phi ptr [ %i.bla, %deinvert_buffer.exit.i ], [ %i.azl, %bb.nt ] ; 3 uses
  %.not341.i = icmp eq i32 %.0721, 1
  br i1 %.not341.i, label %bb.nz, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.blb = load i8, ptr %.0304.i, align 1, !tbaa !80
  %.not342.i = icmp eq i8 %i.blb, 0
  br i1 %.not342.i, label %bb.nx, label %bb.nz

bb.nx:                                            ; preds = %bb.nw
  %i.blc = getelementptr inbounds nuw i8, ptr %.0304.i, i64 1
  %i.bld = load i8, ptr %i.blc, align 1, !tbaa !80
  %i.ble = and i8 %i.bld, 1
  %.not343.i = icmp eq i8 %i.ble, 0
  br i1 %.not343.i, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.blf = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.blf, i32 noundef 16, ptr noundef nonnull @.str.1835) #16
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx, %bb.nw, %bb.nv
  %i.blg = load ptr, ptr %i.axf, align 8, !tbaa !40
  %i.blh = call i32 @ff_lzw_decode_init(ptr noundef %i.blg, i32 noundef 8, ptr noundef %.0304.i, i32 noundef %.0721, i32 noundef 1) #16 ; 2 uses
  %i.bli = icmp slt i32 %i.blh, 0
  br i1 %i.bli, label %bb.oa, label %.preheader516.i

.preheader516.i:                                  ; preds = %bb.nz
  %i.blj = icmp sgt i32 %.829, 0
  br i1 %i.blj, label %.lr.ph532.i, label %tiff_unpack_strip.exit.thread893

.lr.ph532.i:                                      ; preds = %.preheader516.i
  %i.blk = icmp sgt i32 %.2.i, 0                  ; 3 uses
  %or.cond.i.i404.i = icmp ugt i32 %.2.i, 268435455
  %i.bll = shl nuw nsw i32 %.2.i, 3
  %i.blm = select i1 %or.cond.i.i404.i, i32 -8, i32 %i.bll ; 2 uses
  %or.cond.i.i.i.i = icmp ult i32 %i.blm, 2147483135
  %i.bln = add nuw nsw i32 %i.blm, 8
  %i.blo = sext i32 %.2303.i to i64
  %i.blp = zext i32 %.2.i to i64                  ; 5 uses
  %xtraiter3706 = and i64 %i.blp, 1
  %lcmp.mod3707.not = icmp eq i64 %xtraiter3706, 0
  %indvars.iv.next.i854.prol = add nsw i64 %i.blp, -1 ; 3 uses
  %i.blq = shl nuw nsw i64 %indvars.iv.next.i854.prol, 1
  %i.blr = icmp eq i32 %.2.i, 1
  br label %bb.ob

bb.oa:                                            ; preds = %bb.nz
  %i.bls = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bls, i32 noundef 16, ptr noundef nonnull @.str.1836) #16
  br label %tiff_unpack_strip.exit.thread

bb.ob:                                            ; preds = %unpack_gray.exit.i, %.lr.ph532.i
  %.0292531.i = phi i32 [ 0, %.lr.ph532.i ], [ %i.bqw, %unpack_gray.exit.i ] ; 7 uses
  %.3300530.i = phi ptr [ %.2299.i, %.lr.ph532.i ], [ %i.bqv, %unpack_gray.exit.i ] ; 17 uses
  %i.blt = load ptr, ptr %i.axf, align 8, !tbaa !40
  %i.blu = call i32 @ff_lzw_decode(ptr noundef %i.blt, ptr noundef %.3300530.i, i32 noundef %.2.i) #16 ; 2 uses
  %i.blv = icmp slt i32 %i.blu, %.2.i
  br i1 %i.blv, label %bb.oc, label %bb.od

bb.oc:                                            ; preds = %bb.ob
  %i.blw = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.blw, i32 noundef 16, ptr noundef nonnull @.str.1837, i32 noundef %i.blu, i32 noundef %.2.i) #16
  br label %tiff_unpack_strip.exit.thread

bb.od:                                            ; preds = %bb.ob
  %i.blx = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.bly = icmp ult i32 %i.blx, 8
  br i1 %i.bly, label %bb.oe, label %horizontal_fill.exit369.i

bb.oe:                                            ; preds = %bb.od
  %i.blz = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 136
  %i.bmb = load i32, ptr %i.bma, align 8, !tbaa !138
  %i.bmc = icmp eq i32 %i.bmb, 11
  br i1 %i.bmc, label %bb.of, label %horizontal_fill.exit369.i

bb.of:                                            ; preds = %bb.oe
  switch i32 %i.blx, label %horizontal_fill.exit369.i [
    i32 1, label %.preheader511.i
    i32 2, label %.preheader512.i
    i32 4, label %.preheader514.i
  ]

.preheader514.i:                                  ; preds = %bb.of
  br i1 %i.blk, label %.lr.ph.i852.preheader, label %horizontal_fill.exit369.i

.lr.ph.i852.preheader:                            ; preds = %.preheader514.i
  br i1 %lcmp.mod3707.not, label %.lr.ph.i852.prol.loopexit, label %.lr.ph.i852.prol

.lr.ph.i852.prol:                                 ; preds = %.lr.ph.i852.preheader
  %i.bmd = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %indvars.iv.next.i854.prol ; 2 uses
  %i.bme = load i8, ptr %i.bmd, align 1, !tbaa !80
  %i.bmf = and i8 %i.bme, 15
  %i.bmg = getelementptr i8, ptr %.3300530.i, i64 %i.blq ; 2 uses
  %i.bmh = getelementptr i8, ptr %i.bmg, i64 1
  store i8 %i.bmf, ptr %i.bmh, align 1, !tbaa !80
  %i.bmi = load i8, ptr %i.bmd, align 1, !tbaa !80
  %i.bmj = lshr i8 %i.bmi, 4
  store i8 %i.bmj, ptr %i.bmg, align 1, !tbaa !80
  br label %.lr.ph.i852.prol.loopexit

.lr.ph.i852.prol.loopexit:                        ; preds = %.lr.ph.i852.prol, %.lr.ph.i852.preheader
  %indvars.iv.i853.unr = phi i64 [ %i.blp, %.lr.ph.i852.preheader ], [ %indvars.iv.next.i854.prol, %.lr.ph.i852.prol ]
  br i1 %i.blr, label %horizontal_fill.exit369.i, label %.lr.ph.i852

.preheader512.i:                                  ; preds = %bb.of
  br i1 %i.blk, label %.lr.ph527.i, label %horizontal_fill.exit369.i

.preheader511.i:                                  ; preds = %bb.of
  br i1 %i.blk, label %.lr.ph529.i, label %horizontal_fill.exit369.i

.lr.ph529.i:                                      ; preds = %.preheader511.i, %.lr.ph529.i
  %indvars.iv617.i = phi i64 [ %indvars.iv.next618.i, %.lr.ph529.i ], [ %i.blp, %.preheader511.i ] ; 2 uses
  %indvars.iv.next618.i = add nsw i64 %indvars.iv617.i, -1 ; 3 uses
  %i.bmk = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %indvars.iv.next618.i ; 8 uses
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bmm = and i8 %i.bml, 1
  %i.bmn = shl nsw i64 %indvars.iv.next618.i, 3
  %i.bmo = getelementptr i8, ptr %.3300530.i, i64 %i.bmn ; 8 uses
  %i.bmp = getelementptr i8, ptr %i.bmo, i64 7
  store i8 %i.bmm, ptr %i.bmp, align 1, !tbaa !80
  %i.bmq = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bmr = lshr i8 %i.bmq, 1
  %i.bms = and i8 %i.bmr, 1
  %i.bmt = getelementptr i8, ptr %i.bmo, i64 6
  store i8 %i.bms, ptr %i.bmt, align 1, !tbaa !80
  %9 = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bmu = lshr i8 %9, 2
  %i.bmv = and i8 %i.bmu, 1
  %i.bmw = getelementptr i8, ptr %i.bmo, i64 5
  store i8 %i.bmv, ptr %i.bmw, align 1, !tbaa !80
  %i.bmx = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bmy = lshr i8 %i.bmx, 3
  %i.bmz = and i8 %i.bmy, 1
  %i.bna = getelementptr i8, ptr %i.bmo, i64 4
  store i8 %i.bmz, ptr %i.bna, align 1, !tbaa !80
  %10 = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bnb = lshr i8 %10, 4
  %i.bnc = and i8 %i.bnb, 1
  %i.bnd = getelementptr i8, ptr %i.bmo, i64 3
  store i8 %i.bnc, ptr %i.bnd, align 1, !tbaa !80
  %i.bne = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bnf = lshr i8 %i.bne, 5
  %i.bng = and i8 %i.bnf, 1
  %i.bnh = getelementptr i8, ptr %i.bmo, i64 2
  store i8 %i.bng, ptr %i.bnh, align 1, !tbaa !80
  %11 = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bni = lshr i8 %11, 6
  %i.bnj = and i8 %i.bni, 1
  %i.bnk = getelementptr i8, ptr %i.bmo, i64 1
  store i8 %i.bnj, ptr %i.bnk, align 1, !tbaa !80
  %i.bnl = load i8, ptr %i.bmk, align 1, !tbaa !80
  %i.bnm = lshr i8 %i.bnl, 7
  store i8 %i.bnm, ptr %i.bmo, align 1, !tbaa !80
  %i.bnn = icmp samesign ugt i64 %indvars.iv617.i, 1
  br i1 %i.bnn, label %.lr.ph529.i, label %horizontal_fill.exit369.i, !llvm.loop !159

.lr.ph527.i:                                      ; preds = %.preheader512.i, %.lr.ph527.i
  %indvars.iv614.i = phi i64 [ %indvars.iv.next615.i, %.lr.ph527.i ], [ %i.blp, %.preheader512.i ] ; 2 uses
  %indvars.iv.next615.i = add nsw i64 %indvars.iv614.i, -1 ; 3 uses
  %i.bno = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %indvars.iv.next615.i ; 4 uses
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !80
  %i.bnq = and i8 %i.bnp, 3
  %i.bnr = shl nsw i64 %indvars.iv.next615.i, 2
  %i.bns = getelementptr i8, ptr %.3300530.i, i64 %i.bnr ; 4 uses
  %i.bnt = getelementptr i8, ptr %i.bns, i64 3
  store i8 %i.bnq, ptr %i.bnt, align 1, !tbaa !80
  %i.bnu = load i8, ptr %i.bno, align 1, !tbaa !80
  %i.bnv = lshr i8 %i.bnu, 2
  %i.bnw = and i8 %i.bnv, 3
  %i.bnx = getelementptr i8, ptr %i.bns, i64 2
  store i8 %i.bnw, ptr %i.bnx, align 1, !tbaa !80
  %12 = load i8, ptr %i.bno, align 1, !tbaa !80
  %i.bny = lshr i8 %12, 4
  %i.bnz = and i8 %i.bny, 3
  %i.boa = getelementptr i8, ptr %i.bns, i64 1
  store i8 %i.bnz, ptr %i.boa, align 1, !tbaa !80
  %i.bob = load i8, ptr %i.bno, align 1, !tbaa !80
  %i.boc = lshr i8 %i.bob, 6
  store i8 %i.boc, ptr %i.bns, align 1, !tbaa !80
  %i.bod = icmp samesign ugt i64 %indvars.iv614.i, 1
  br i1 %i.bod, label %.lr.ph527.i, label %horizontal_fill.exit369.i, !llvm.loop !160

.lr.ph.i852:                                      ; preds = %.lr.ph.i852.prol.loopexit, %.lr.ph.i852
  %indvars.iv.i853 = phi i64 [ %indvars.iv.next.i854.1, %.lr.ph.i852 ], [ %indvars.iv.i853.unr, %.lr.ph.i852.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i854 = add nsw i64 %indvars.iv.i853, -1 ; 2 uses
  %i.boe = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %indvars.iv.next.i854 ; 2 uses
  %i.bof = load i8, ptr %i.boe, align 1, !tbaa !80
  %i.bog = and i8 %i.bof, 15
  %i.boh = shl nuw nsw i64 %indvars.iv.next.i854, 1
  %i.boi = getelementptr i8, ptr %.3300530.i, i64 %i.boh ; 2 uses
  %i.boj = getelementptr i8, ptr %i.boi, i64 1
  store i8 %i.bog, ptr %i.boj, align 1, !tbaa !80
  %i.bok = load i8, ptr %i.boe, align 1, !tbaa !80
  %i.bol = lshr i8 %i.bok, 4
  store i8 %i.bol, ptr %i.boi, align 1, !tbaa !80
  %indvars.iv.next.i854.1 = add nsw i64 %indvars.iv.i853, -2 ; 3 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %indvars.iv.next.i854.1 ; 2 uses
  %i.bon = load i8, ptr %i.bom, align 1, !tbaa !80
  %i.boo = and i8 %i.bon, 15
  %i.bop = shl nuw nsw i64 %indvars.iv.next.i854.1, 1
  %i.boq = getelementptr i8, ptr %.3300530.i, i64 %i.bop ; 2 uses
  %i.bor = getelementptr i8, ptr %i.boq, i64 1
  store i8 %i.boo, ptr %i.bor, align 1, !tbaa !80
  %i.bos = load i8, ptr %i.bom, align 1, !tbaa !80
  %i.bot = lshr i8 %i.bos, 4
  store i8 %i.bot, ptr %i.boq, align 1, !tbaa !80
  %i.bou = icmp sgt i64 %indvars.iv.i853, 2
  br i1 %i.bou, label %.lr.ph.i852, label %horizontal_fill.exit369.i, !llvm.loop !178

horizontal_fill.exit369.i:                        ; preds = %.lr.ph.i852.prol.loopexit, %.lr.ph.i852, %.lr.ph527.i, %.lr.ph529.i, %.preheader511.i, %.preheader512.i, %.preheader514.i, %bb.of, %bb.oe, %bb.od
  br i1 %i.bac, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %horizontal_fill.exit369.i
  %i.bov = add nsw i32 %.0292531.i, %.121604
  call fastcc void @unpack_yuv(ptr noundef nonnull %i.o, ptr noundef readonly %1, ptr noundef %.3300530.i, i32 noundef %i.bov)
  %i.bow = load i32, ptr %i.axa, align 8, !tbaa !29
  %i.box = add i32 %.0292531.i, -1
  %i.boy = add i32 %i.box, %i.bow
  br label %unpack_gray.exit.i

bb.oh:                                            ; preds = %horizontal_fill.exit369.i
  %i.boz = load i32, ptr %i.awz, align 4, !tbaa !139
  %i.bpa = icmp eq i32 %i.boz, 166
  br i1 %i.bpa, label %bb.oi, label %unpack_gray.exit.i

bb.oi:                                            ; preds = %bb.oh
  %i.bpb = add nsw i32 %.0292531.i, %.121604
  %i.bpc = load i32, ptr %i.as, align 8, !tbaa !56 ; 3 uses
  %.val372.i = load ptr, ptr %1, align 8, !tbaa !101
  %.val373.i = load i32, ptr %i.awy, align 8, !tbaa !29
  %i.bpd = mul nsw i32 %.val373.i, %i.bpb
  %i.bpe = sext i32 %i.bpd to i64
  %i.bpf = getelementptr inbounds i8, ptr %.val372.i, i64 %i.bpe ; 3 uses
  %i.bpg = icmp ne ptr %.3300530.i, null
  %or.cond3.i.i.i.i = and i1 %or.cond.i.i.i.i, %i.bpg
  %i.bph = select i1 %or.cond3.i.i.i.i, i32 %i.bln, i32 8 ; 2 uses
  %i.bpi = load i32, ptr %i.dp, align 8, !tbaa !78 ; 4 uses
  %i.bpj = icmp sgt i32 %i.bpi, 0
  br i1 %i.bpj, label %.lr.ph.i406.i, label %unpack_gray.exit.i

.lr.ph.i406.i:                                    ; preds = %bb.oi
  %i.bpk = sub nsw i32 32, %i.bpc                 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bpi to i64 ; 2 uses
  %xtraiter3709 = and i64 %wide.trip.count.i.i, 1
  %i.bpl = icmp eq i32 %i.bpi, 1
  br i1 %i.bpl, label %.epil.preheader3708, label %.lr.ph.i406.i.new

.lr.ph.i406.i.new:                                ; preds = %.lr.ph.i406.i
  %unroll_iter3712 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oj, %.lr.ph.i406.i.new
  %indvars.iv.i407.i = phi i64 [ 0, %.lr.ph.i406.i.new ], [ %indvars.iv.next.i408.i.1, %bb.oj ] ; 3 uses
  %.sroa.4.01.i.i = phi i32 [ 0, %.lr.ph.i406.i.new ], [ %i.bqh, %bb.oj ] ; 3 uses
  %niter3713 = phi i64 [ 0, %.lr.ph.i406.i.new ], [ %niter3713.next.1, %bb.oj ]
  %i.bpm = lshr i32 %.sroa.4.01.i.i, 3
  %i.bpn = zext nneg i32 %i.bpm to i64
  %i.bpo = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %i.bpn
  %i.bpp = load i32, ptr %i.bpo, align 1, !tbaa !80
  %i.bpq = call i32 @llvm.bswap.i32(i32 %i.bpp)
  %i.bpr = and i32 %.sroa.4.01.i.i, 7
  %i.bps = shl i32 %i.bpq, %i.bpr
  %i.bpt = lshr i32 %i.bps, %i.bpk
  %i.bpu = add i32 %.sroa.4.01.i.i, %i.bpc
  %i.bpv = call i32 @llvm.umin.i32(i32 %i.bph, i32 %i.bpu) ; 3 uses
  %i.bpw = trunc i32 %i.bpt to i16
  %i.bpx = getelementptr inbounds nuw [2 x i8], ptr %i.bpf, i64 %indvars.iv.i407.i
  store i16 %i.bpw, ptr %i.bpx, align 2, !tbaa !67
  %i.bpy = lshr i32 %i.bpv, 3
  %i.bpz = zext nneg i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %i.bpz
  %i.bqb = load i32, ptr %i.bqa, align 1, !tbaa !80
  %i.bqc = call i32 @llvm.bswap.i32(i32 %i.bqb)
  %i.bqd = and i32 %i.bpv, 7
  %i.bqe = shl i32 %i.bqc, %i.bqd
  %i.bqf = lshr i32 %i.bqe, %i.bpk
  %i.bqg = add i32 %i.bpv, %i.bpc
  %i.bqh = call i32 @llvm.umin.i32(i32 %i.bph, i32 %i.bqg) ; 2 uses
  %i.bqi = trunc i32 %i.bqf to i16
  %i.bqj = getelementptr inbounds nuw [2 x i8], ptr %i.bpf, i64 %indvars.iv.i407.i
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.bqj, i64 2
  store i16 %i.bqi, ptr %i.bqk, align 2, !tbaa !67
  %indvars.iv.next.i408.i.1 = add nuw nsw i64 %indvars.iv.i407.i, 2 ; 2 uses
  %niter3713.next.1 = add i64 %niter3713, 2       ; 2 uses
  %niter3713.ncmp.1 = icmp eq i64 %niter3713.next.1, %unroll_iter3712
  br i1 %niter3713.ncmp.1, label %unpack_gray.exit.i.loopexit.unr-lcssa, label %bb.oj, !llvm.loop !179

unpack_gray.exit.i.loopexit.unr-lcssa:            ; preds = %bb.oj
  %lcmp.mod3710.not = icmp eq i64 %xtraiter3709, 0
  br i1 %lcmp.mod3710.not, label %unpack_gray.exit.i, label %.epil.preheader3708

.epil.preheader3708:                              ; preds = %unpack_gray.exit.i.loopexit.unr-lcssa, %.lr.ph.i406.i
  %indvars.iv.i407.i.epil.init = phi i64 [ 0, %.lr.ph.i406.i ], [ %indvars.iv.next.i408.i.1, %unpack_gray.exit.i.loopexit.unr-lcssa ]
  %.sroa.4.01.i.i.epil.init = phi i32 [ 0, %.lr.ph.i406.i ], [ %i.bqh, %unpack_gray.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod3711 = trunc i32 %i.bpi to i1
  call void @llvm.assume(i1 %lcmp.mod3711)
  %i.bql = lshr i32 %.sroa.4.01.i.i.epil.init, 3
  %i.bqm = zext nneg i32 %i.bql to i64
  %i.bqn = getelementptr inbounds nuw i8, ptr %.3300530.i, i64 %i.bqm
  %i.bqo = load i32, ptr %i.bqn, align 1, !tbaa !80
  %i.bqp = call i32 @llvm.bswap.i32(i32 %i.bqo)
  %i.bqq = and i32 %.sroa.4.01.i.i.epil.init, 7
  %i.bqr = shl i32 %i.bqp, %i.bqq
  %i.bqs = lshr i32 %i.bqr, %i.bpk
  %i.bqt = trunc i32 %i.bqs to i16
  %i.bqu = getelementptr inbounds nuw [2 x i8], ptr %i.bpf, i64 %indvars.iv.i407.i.epil.init
  store i16 %i.bqt, ptr %i.bqu, align 2, !tbaa !67
  br label %unpack_gray.exit.i

unpack_gray.exit.i:                               ; preds = %.epil.preheader3708, %unpack_gray.exit.i.loopexit.unr-lcssa, %bb.oi, %bb.oh, %bb.og
  %.1293.i = phi i32 [ %i.boy, %bb.og ], [ %.0292531.i, %bb.oh ], [ %.0292531.i, %bb.oi ], [ %.0292531.i, %unpack_gray.exit.i.loopexit.unr-lcssa ], [ %.0292531.i, %.epil.preheader3708 ]
  %i.bqv = getelementptr inbounds i8, ptr %.3300530.i, i64 %i.blo
  %i.bqw = add nsw i32 %.1293.i, 1                ; 2 uses
  %i.bqx = icmp slt i32 %i.bqw, %.829
  br i1 %i.bqx, label %bb.ob, label %tiff_unpack_strip.exit.thread893, !llvm.loop !180

bb.ok:                                            ; preds = %bb.mr, %bb.mr, %bb.mr
  br i1 %i.bac, label %tiff_unpack_strip.exit.thread, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bqy = load i32, ptr %i.awz, align 4, !tbaa !139
  %i.bqz = icmp eq i32 %i.bqy, 166
  br i1 %i.bqz, label %tiff_unpack_strip.exit.thread, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bra = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not.i410.i = icmp eq i32 %i.bra, 0
  br i1 %.not.i410.i, label %bb.oo, label %bb.on

bb.on:                                            ; preds = %bb.om
  %i.brb = zext nneg i32 %.0721 to i64            ; 3 uses
  call void @av_fast_padded_malloc(ptr noundef nonnull %i.axd, ptr noundef nonnull %i.axe, i64 noundef %i.brb) #16
  %i.brc = load ptr, ptr %i.axd, align 8, !tbaa !144
  %.not.i.i411.i = icmp eq ptr %i.brc, null
  br i1 %.not.i.i411.i, label %tiff_unpack_strip.exit.thread, label %.preheader.i.i412.i.preheader

.preheader.i.i412.i.preheader:                    ; preds = %bb.on
  %xtraiter = and i64 %i.brb, 1
  %i.brd = icmp eq i32 %.0721, 1
  br i1 %i.brd, label %.preheader.i.i412.i.epil.preheader, label %.preheader.i.i412.i.preheader.new

.preheader.i.i412.i.preheader.new:                ; preds = %.preheader.i.i412.i.preheader
  %unroll_iter = and i64 %i.brb, 2147483646
  br label %.preheader.i.i412.i

.preheader.i.i412.i:                              ; preds = %.preheader.i.i412.i, %.preheader.i.i412.i.preheader.new
  %indvars.iv.i.i413.i = phi i64 [ 0, %.preheader.i.i412.i.preheader.new ], [ %indvars.iv.next.i.i414.i.1, %.preheader.i.i412.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i412.i.preheader.new ], [ %niter.next.1, %.preheader.i.i412.i ]
  %i.bre = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i413.i
  %i.brf = load i8, ptr %i.bre, align 1, !tbaa !80
  %i.brg = zext i8 %i.brf to i64
  %i.brh = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.brg
  %i.bri = load i8, ptr %i.brh, align 1, !tbaa !80
  %i.brj = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 %indvars.iv.i.i413.i
  store i8 %i.bri, ptr %i.brk, align 1, !tbaa !80
  %indvars.iv.next.i.i414.i = or disjoint i64 %indvars.iv.i.i413.i, 1 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.next.i.i414.i
  %i.brm = load i8, ptr %i.brl, align 1, !tbaa !80
  %i.brn = zext i8 %i.brm to i64
  %i.bro = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.brn
  %i.brp = load i8, ptr %i.bro, align 1, !tbaa !80
  %i.brq = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.brr = getelementptr inbounds nuw i8, ptr %i.brq, i64 %indvars.iv.next.i.i414.i
  store i8 %i.brp, ptr %i.brr, align 1, !tbaa !80
  %indvars.iv.next.i.i414.i.1 = add nuw nsw i64 %indvars.iv.i.i413.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %deinvert_buffer.exit.i416.i.unr-lcssa, label %.preheader.i.i412.i, !llvm.loop !145

deinvert_buffer.exit.i416.i.unr-lcssa:            ; preds = %.preheader.i.i412.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %deinvert_buffer.exit.i416.i, label %.preheader.i.i412.i.epil.preheader

.preheader.i.i412.i.epil.preheader:               ; preds = %deinvert_buffer.exit.i416.i.unr-lcssa, %.preheader.i.i412.i.preheader
  %indvars.iv.i.i413.i.epil.init = phi i64 [ 0, %.preheader.i.i412.i.preheader ], [ %indvars.iv.next.i.i414.i.1, %deinvert_buffer.exit.i416.i.unr-lcssa ] ; 2 uses
  %lcmp.mod3693 = trunc i32 %.0721 to i1
  call void @llvm.assume(i1 %lcmp.mod3693)
  %i.brs = getelementptr inbounds nuw i8, ptr %i.azl, i64 %indvars.iv.i.i413.i.epil.init
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !80
  %i.bru = zext i8 %i.brt to i64
  %i.brv = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.bru
  %i.brw = load i8, ptr %i.brv, align 1, !tbaa !80
  %i.brx = load ptr, ptr %i.axd, align 8, !tbaa !144
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brx, i64 %indvars.iv.i.i413.i.epil.init
  store i8 %i.brw, ptr %i.bry, align 1, !tbaa !80
  br label %deinvert_buffer.exit.i416.i

deinvert_buffer.exit.i416.i:                      ; preds = %deinvert_buffer.exit.i416.i.unr-lcssa, %.preheader.i.i412.i.epil.preheader
  %i.brz = load ptr, ptr %i.axd, align 8, !tbaa !144
  %.pre.i851 = load i32, ptr %i.av, align 8, !tbaa !59
  br label %bb.oo

bb.oo:                                            ; preds = %deinvert_buffer.exit.i416.i, %bb.om
  %i.bsa = phi i32 [ %.pre.i851, %deinvert_buffer.exit.i416.i ], [ %i.bbv, %bb.om ]
  %.029.i.i = phi ptr [ %i.brz, %deinvert_buffer.exit.i416.i ], [ %i.azl, %bb.om ]
  %i.bsb = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bsc = load i32, ptr %i.cl, align 4, !tbaa !83
  %i.bsd = call i32 @ff_ccitt_unpack(ptr noundef %i.bsb, ptr noundef %.029.i.i, i32 noundef range(i32 1, -2147483648) %.0721, ptr noundef %.2299.i, i32 noundef %.829, i32 noundef %.2303.i, i32 noundef %i.bsa, i32 noundef %i.bsc) #16 ; 3 uses
  %i.bse = load i32, ptr %i.as, align 8, !tbaa !56
  %i.bsf = icmp ult i32 %i.bse, 8
  br i1 %i.bsf, label %bb.op, label %tiff_unpack_strip.exit

bb.op:                                            ; preds = %bb.oo
  %i.bsg = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 136
  %i.bsi = load i32, ptr %i.bsh, align 8, !tbaa !138
  %i.bsj = icmp eq i32 %i.bsi, 11
  %i.bsk = icmp sgt i32 %.829, 0
  %or.cond.i417.i = and i1 %i.bsk, %i.bsj
  br i1 %or.cond.i417.i, label %.lr.ph49.i.i, label %tiff_unpack_strip.exit

.lr.ph49.i.i:                                     ; preds = %bb.op
  %or.cond.i.i418.i = icmp ugt i32 %.2.i, 268435455
  %i.bsl = shl nuw nsw i32 %.2.i, 3
  %i.bsm = select i1 %or.cond.i.i418.i, i32 -8, i32 %i.bsl ; 2 uses
  %or.cond.i.i.i419.i = icmp ult i32 %i.bsm, 2147483135
  %i.bsn = add nuw nsw i32 %i.bsm, 8
  %i.bso = icmp sgt i32 %.2.i, 0                  ; 3 uses
  %i.bsp = sext i32 %.2303.i to i64
  %i.bsq = zext i32 %.2.i to i64                  ; 5 uses
  %xtraiter3699 = and i64 %i.bsq, 1
  %lcmp.mod3700.not = icmp eq i64 %xtraiter3699, 0
  %indvars.iv.next55.i.i.prol = add nsw i64 %i.bsq, -1 ; 3 uses
  %i.bsr = shl nuw nsw i64 %indvars.iv.next55.i.i.prol, 1
  %i.bss = icmp eq i32 %.2.i, 1
  br label %bb.oq

bb.oq:                                            ; preds = %horizontal_fill.exit.i421.i, %.lr.ph49.i.i
  %.048.i.i = phi i32 [ 0, %.lr.ph49.i.i ], [ %i.bxj, %horizontal_fill.exit.i421.i ]
  %.02846.i.i = phi ptr [ %.2299.i, %.lr.ph49.i.i ], [ %i.bxi, %horizontal_fill.exit.i421.i ] ; 18 uses
  %i.bst = load i32, ptr %i.as, align 8, !tbaa !56 ; 5 uses
  switch i32 %i.bst, label %horizontal_fill.exit.i421.i [
    i32 1, label %.preheader.i427.i
    i32 2, label %.preheader32.i.i
    i32 4, label %.preheader34.i.i
    i32 10, label %bb.or
    i32 12, label %bb.or
    i32 14, label %bb.or
  ]

.preheader34.i.i:                                 ; preds = %bb.oq
  br i1 %i.bso, label %.lr.ph41.i.i.preheader, label %horizontal_fill.exit.i421.i

.lr.ph41.i.i.preheader:                           ; preds = %.preheader34.i.i
  br i1 %lcmp.mod3700.not, label %.lr.ph41.i.i.prol.loopexit, label %.lr.ph41.i.i.prol

.lr.ph41.i.i.prol:                                ; preds = %.lr.ph41.i.i.preheader
  %i.bsu = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i.prol ; 2 uses
  %i.bsv = load i8, ptr %i.bsu, align 1, !tbaa !80
  %i.bsw = and i8 %i.bsv, 15
  %i.bsx = getelementptr i8, ptr %.02846.i.i, i64 %i.bsr ; 2 uses
  %i.bsy = getelementptr i8, ptr %i.bsx, i64 1
  store i8 %i.bsw, ptr %i.bsy, align 1, !tbaa !80
  %i.bsz = load i8, ptr %i.bsu, align 1, !tbaa !80
  %i.bta = lshr i8 %i.bsz, 4
  store i8 %i.bta, ptr %i.bsx, align 1, !tbaa !80
  br label %.lr.ph41.i.i.prol.loopexit

.lr.ph41.i.i.prol.loopexit:                       ; preds = %.lr.ph41.i.i.prol, %.lr.ph41.i.i.preheader
  %indvars.iv54.i.i.unr = phi i64 [ %i.bsq, %.lr.ph41.i.i.preheader ], [ %indvars.iv.next55.i.i.prol, %.lr.ph41.i.i.prol ]
  br i1 %i.bss, label %horizontal_fill.exit.i421.i, label %.lr.ph41.i.i

.preheader32.i.i:                                 ; preds = %bb.oq
  br i1 %i.bso, label %.lr.ph43.i.i, label %horizontal_fill.exit.i421.i

.preheader.i427.i:                                ; preds = %bb.oq
  br i1 %i.bso, label %.lr.ph45.i.i, label %horizontal_fill.exit.i421.i

.lr.ph45.i.i:                                     ; preds = %.preheader.i427.i, %.lr.ph45.i.i
  %indvars.iv60.i.i = phi i64 [ %indvars.iv.next61.i.i, %.lr.ph45.i.i ], [ %i.bsq, %.preheader.i427.i ] ; 2 uses
  %indvars.iv.next61.i.i = add nsw i64 %indvars.iv60.i.i, -1 ; 3 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next61.i.i ; 8 uses
  %i.btc = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.btd = and i8 %i.btc, 1
  %i.bte = shl nsw i64 %indvars.iv.next61.i.i, 3
  %i.btf = getelementptr i8, ptr %.02846.i.i, i64 %i.bte ; 8 uses
  %i.btg = getelementptr i8, ptr %i.btf, i64 7
  store i8 %i.btd, ptr %i.btg, align 1, !tbaa !80
  %i.bth = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.bti = lshr i8 %i.bth, 1
  %i.btj = and i8 %i.bti, 1
  %i.btk = getelementptr i8, ptr %i.btf, i64 6
  store i8 %i.btj, ptr %i.btk, align 1, !tbaa !80
  %13 = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.btl = lshr i8 %13, 2
  %i.btm = and i8 %i.btl, 1
  %i.btn = getelementptr i8, ptr %i.btf, i64 5
  store i8 %i.btm, ptr %i.btn, align 1, !tbaa !80
  %i.bto = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.btp = lshr i8 %i.bto, 3
  %i.btq = and i8 %i.btp, 1
  %i.btr = getelementptr i8, ptr %i.btf, i64 4
  store i8 %i.btq, ptr %i.btr, align 1, !tbaa !80
  %14 = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.bts = lshr i8 %14, 4
  %i.btt = and i8 %i.bts, 1
  %i.btu = getelementptr i8, ptr %i.btf, i64 3
  store i8 %i.btt, ptr %i.btu, align 1, !tbaa !80
  %i.btv = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.btw = lshr i8 %i.btv, 5
  %i.btx = and i8 %i.btw, 1
  %i.bty = getelementptr i8, ptr %i.btf, i64 2
  store i8 %i.btx, ptr %i.bty, align 1, !tbaa !80
  %15 = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.btz = lshr i8 %15, 6
  %i.bua = and i8 %i.btz, 1
  %i.bub = getelementptr i8, ptr %i.btf, i64 1
  store i8 %i.bua, ptr %i.bub, align 1, !tbaa !80
  %i.buc = load i8, ptr %i.btb, align 1, !tbaa !80
  %i.bud = lshr i8 %i.buc, 7
  store i8 %i.bud, ptr %i.btf, align 1, !tbaa !80
  %i.bue = icmp samesign ugt i64 %indvars.iv60.i.i, 1
  br i1 %i.bue, label %.lr.ph45.i.i, label %horizontal_fill.exit.i421.i, !llvm.loop !159

.lr.ph43.i.i:                                     ; preds = %.preheader32.i.i, %.lr.ph43.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph43.i.i ], [ %i.bsq, %.preheader32.i.i ] ; 2 uses
  %indvars.iv.next58.i.i = add nsw i64 %indvars.iv57.i.i, -1 ; 3 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next58.i.i ; 4 uses
  %i.bug = load i8, ptr %i.buf, align 1, !tbaa !80
  %i.buh = and i8 %i.bug, 3
  %i.bui = shl nsw i64 %indvars.iv.next58.i.i, 2
  %i.buj = getelementptr i8, ptr %.02846.i.i, i64 %i.bui ; 4 uses
  %i.buk = getelementptr i8, ptr %i.buj, i64 3
  store i8 %i.buh, ptr %i.buk, align 1, !tbaa !80
  %i.bul = load i8, ptr %i.buf, align 1, !tbaa !80
  %i.bum = lshr i8 %i.bul, 2
  %i.bun = and i8 %i.bum, 3
  %i.buo = getelementptr i8, ptr %i.buj, i64 2
  store i8 %i.bun, ptr %i.buo, align 1, !tbaa !80
  %16 = load i8, ptr %i.buf, align 1, !tbaa !80
  %i.bup = lshr i8 %16, 4
  %i.buq = and i8 %i.bup, 3
  %i.bur = getelementptr i8, ptr %i.buj, i64 1
  store i8 %i.buq, ptr %i.bur, align 1, !tbaa !80
  %i.bus = load i8, ptr %i.buf, align 1, !tbaa !80
  %i.but = lshr i8 %i.bus, 6
  store i8 %i.but, ptr %i.buj, align 1, !tbaa !80
  %i.buu = icmp samesign ugt i64 %indvars.iv57.i.i, 1
  br i1 %i.buu, label %.lr.ph43.i.i, label %horizontal_fill.exit.i421.i, !llvm.loop !160

.lr.ph41.i.i:                                     ; preds = %.lr.ph41.i.i.prol.loopexit, %.lr.ph41.i.i
  %indvars.iv54.i.i = phi i64 [ %indvars.iv.next55.i.i.1, %.lr.ph41.i.i ], [ %indvars.iv54.i.i.unr, %.lr.ph41.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv.next55.i.i = add nsw i64 %indvars.iv54.i.i, -1 ; 2 uses
  %i.buv = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i ; 2 uses
  %i.buw = load i8, ptr %i.buv, align 1, !tbaa !80
  %i.bux = and i8 %i.buw, 15
  %i.buy = shl nuw nsw i64 %indvars.iv.next55.i.i, 1
  %i.buz = getelementptr i8, ptr %.02846.i.i, i64 %i.buy ; 2 uses
  %i.bva = getelementptr i8, ptr %i.buz, i64 1
  store i8 %i.bux, ptr %i.bva, align 1, !tbaa !80
  %i.bvb = load i8, ptr %i.buv, align 1, !tbaa !80
  %i.bvc = lshr i8 %i.bvb, 4
  store i8 %i.bvc, ptr %i.buz, align 1, !tbaa !80
  %indvars.iv.next55.i.i.1 = add nsw i64 %indvars.iv54.i.i, -2 ; 3 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %indvars.iv.next55.i.i.1 ; 2 uses
  %i.bve = load i8, ptr %i.bvd, align 1, !tbaa !80
  %i.bvf = and i8 %i.bve, 15
  %i.bvg = shl nuw nsw i64 %indvars.iv.next55.i.i.1, 1
  %i.bvh = getelementptr i8, ptr %.02846.i.i, i64 %i.bvg ; 2 uses
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 1
  store i8 %i.bvf, ptr %i.bvi, align 1, !tbaa !80
  %i.bvj = load i8, ptr %i.bvd, align 1, !tbaa !80
  %i.bvk = lshr i8 %i.bvj, 4
  store i8 %i.bvk, ptr %i.bvh, align 1, !tbaa !80
  %i.bvl = icmp sgt i64 %indvars.iv54.i.i, 2
  br i1 %i.bvl, label %.lr.ph41.i.i, label %horizontal_fill.exit.i421.i, !llvm.loop !178

bb.or:                                            ; preds = %bb.oq, %bb.oq, %bb.oq
  %i.bvm = icmp ne ptr %.02846.i.i, null
  %or.cond3.i.i.i420.i = and i1 %or.cond.i.i.i419.i, %i.bvm
  %i.bvn = select i1 %or.cond3.i.i.i420.i, i32 %i.bsn, i32 8 ; 2 uses
  %i.bvo = load i32, ptr %i.dp, align 8, !tbaa !78 ; 4 uses
  %i.bvp = icmp sgt i32 %i.bvo, 0
  br i1 %i.bvp, label %.lr.ph.i422.i, label %horizontal_fill.exit.i421.i

.lr.ph.i422.i:                                    ; preds = %bb.or
  %i.bvq = sub nuw nsw i32 16, %i.bst
  %i.bvr = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.bvs = add i32 %i.bvr, -1
  %spec.select.i.i.i = icmp ult i32 %i.bvs, 2
  %i.bvt = sub nuw nsw i32 32, %i.bst             ; 3 uses
  %i.bvu = select i1 %spec.select.i.i.i, i32 0, i32 %i.bvq ; 3 uses
  %wide.trip.count.i423.i = zext nneg i32 %i.bvo to i64 ; 2 uses
  %xtraiter3694 = and i64 %wide.trip.count.i423.i, 1
  %i.bvv = icmp eq i32 %i.bvo, 1
  br i1 %i.bvv, label %.epil.preheader, label %.lr.ph.i422.i.new

.lr.ph.i422.i.new:                                ; preds = %.lr.ph.i422.i
  %unroll_iter3697 = and i64 %wide.trip.count.i423.i, 2147483646
  br label %bb.os

bb.os:                                            ; preds = %bb.os, %.lr.ph.i422.i.new
  %indvars.iv.i424.i = phi i64 [ 0, %.lr.ph.i422.i.new ], [ %indvars.iv.next.i425.i.1, %bb.os ] ; 3 uses
  %.sroa.4.038.i.i = phi i32 [ 0, %.lr.ph.i422.i.new ], [ %i.bws, %bb.os ] ; 3 uses
  %niter3698 = phi i64 [ 0, %.lr.ph.i422.i.new ], [ %niter3698.next.1, %bb.os ]
  %i.bvw = lshr i32 %.sroa.4.038.i.i, 3
  %i.bvx = zext nneg i32 %i.bvw to i64
  %i.bvy = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bvx
  %i.bvz = load i32, ptr %i.bvy, align 1, !tbaa !80
  %i.bwa = call i32 @llvm.bswap.i32(i32 %i.bvz)
  %i.bwb = and i32 %.sroa.4.038.i.i, 7
  %i.bwc = shl i32 %i.bwa, %i.bwb
  %i.bwd = lshr i32 %i.bwc, %i.bvt
  %i.bwe = add i32 %.sroa.4.038.i.i, %i.bst
  %i.bwf = call i32 @llvm.umin.i32(i32 %i.bvn, i32 %i.bwe) ; 3 uses
  %i.bwg = shl nuw nsw i32 %i.bwd, %i.bvu
  %i.bwh = trunc i32 %i.bwg to i16
  %i.bwi = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i
  store i16 %i.bwh, ptr %i.bwi, align 2, !tbaa !67
  %i.bwj = lshr i32 %i.bwf, 3
  %i.bwk = zext nneg i32 %i.bwj to i64
  %i.bwl = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bwk
  %i.bwm = load i32, ptr %i.bwl, align 1, !tbaa !80
  %i.bwn = call i32 @llvm.bswap.i32(i32 %i.bwm)
  %i.bwo = and i32 %i.bwf, 7
  %i.bwp = shl i32 %i.bwn, %i.bwo
  %i.bwq = lshr i32 %i.bwp, %i.bvt
  %i.bwr = add i32 %i.bwf, %i.bst
  %i.bws = call i32 @llvm.umin.i32(i32 %i.bvn, i32 %i.bwr) ; 2 uses
  %i.bwt = shl nuw nsw i32 %i.bwq, %i.bvu
  %i.bwu = trunc i32 %i.bwt to i16
  %i.bwv = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwv, i64 2
  store i16 %i.bwu, ptr %i.bww, align 2, !tbaa !67
  %indvars.iv.next.i425.i.1 = add nuw nsw i64 %indvars.iv.i424.i, 2 ; 2 uses
  %niter3698.next.1 = add i64 %niter3698, 2       ; 2 uses
  %niter3698.ncmp.1 = icmp eq i64 %niter3698.next.1, %unroll_iter3697
  br i1 %niter3698.ncmp.1, label %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, label %bb.os, !llvm.loop !181

horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa: ; preds = %bb.os
  %lcmp.mod3695.not = icmp eq i64 %xtraiter3694, 0
  br i1 %lcmp.mod3695.not, label %horizontal_fill.exit.i421.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, %.lr.ph.i422.i
  %indvars.iv.i424.i.epil.init = phi i64 [ 0, %.lr.ph.i422.i ], [ %indvars.iv.next.i425.i.1, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa ]
  %.sroa.4.038.i.i.epil.init = phi i32 [ 0, %.lr.ph.i422.i ], [ %i.bws, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa ] ; 2 uses
  %lcmp.mod3696 = trunc i32 %i.bvo to i1
  call void @llvm.assume(i1 %lcmp.mod3696)
  %i.bwx = lshr i32 %.sroa.4.038.i.i.epil.init, 3
  %i.bwy = zext nneg i32 %i.bwx to i64
  %i.bwz = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 %i.bwy
  %i.bxa = load i32, ptr %i.bwz, align 1, !tbaa !80
  %i.bxb = call i32 @llvm.bswap.i32(i32 %i.bxa)
  %i.bxc = and i32 %.sroa.4.038.i.i.epil.init, 7
  %i.bxd = shl i32 %i.bxb, %i.bxc
  %i.bxe = lshr i32 %i.bxd, %i.bvt
  %i.bxf = shl nuw nsw i32 %i.bxe, %i.bvu
  %i.bxg = trunc i32 %i.bxf to i16
  %i.bxh = getelementptr inbounds nuw [2 x i8], ptr %.02846.i.i, i64 %indvars.iv.i424.i.epil.init
  store i16 %i.bxg, ptr %i.bxh, align 2, !tbaa !67
  br label %horizontal_fill.exit.i421.i

horizontal_fill.exit.i421.i:                      ; preds = %.epil.preheader, %horizontal_fill.exit.i421.i.loopexit3491.unr-lcssa, %.lr.ph41.i.i.prol.loopexit, %.lr.ph41.i.i, %.lr.ph43.i.i, %.lr.ph45.i.i, %bb.or, %.preheader.i427.i, %.preheader32.i.i, %.preheader34.i.i, %bb.oq
  %i.bxi = getelementptr inbounds i8, ptr %.02846.i.i, i64 %i.bsp
  %i.bxj = add nuw nsw i32 %.048.i.i, 1           ; 2 uses
  %exitcond63.not.i.i = icmp eq i32 %i.bxj, %.829
  br i1 %exitcond63.not.i.i, label %tiff_unpack_strip.exit, label %bb.oq, !llvm.loop !182

bb.ot:                                            ; preds = %bb.mr
  %.not.i855 = icmp eq ptr %i.azj, null
  br i1 %.not.i855, label %bb.ou, label %bytestream2_init.exit.i

bb.ou:                                            ; preds = %bb.ot
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 141) #16
  call void @abort() #17
  unreachable

bytestream2_init.exit.i:                          ; preds = %bb.ot
  store ptr %i.azl, ptr %i.y, align 8, !tbaa !49
  store ptr %i.azl, ptr %i.ad, align 8, !tbaa !50
  %i.bxk = zext nneg i32 %.0721 to i64            ; 2 uses
  %i.bxl = getelementptr inbounds nuw i8, ptr %i.azl, i64 %i.bxk ; 2 uses
  store ptr %i.bxl, ptr %i.ag, align 8, !tbaa !51
  br i1 %i.bac, label %bb.ov, label %bb.ow

bb.ov:                                            ; preds = %bytestream2_init.exit.i
  %i.bxm = load i32, ptr %i.axc, align 8, !tbaa !183
  br label %bb.ox

bb.ow:                                            ; preds = %bytestream2_init.exit.i
  %i.bxn = mul nsw i32 %.2303.i, %.829
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ow, %bb.ov
  %i.bxo = phi i32 [ %i.bxm, %bb.ov ], [ %i.bxn, %bb.ow ] ; 2 uses
  %i.bxp = icmp ne ptr %.2299.i, null
  %i.bxq = icmp sgt i32 %i.bxo, -1
  %or.cond.i370.i = and i1 %i.bxp, %i.bxq
  br i1 %or.cond.i370.i, label %bytestream2_init_writer.exit.i, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, i32 noundef 151) #16
  call void @abort() #17
  unreachable

bytestream2_init_writer.exit.i:                   ; preds = %bb.ox
  %i.bxr = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.bxs = add i32 %i.bxr, -1
  %spec.select.i = icmp ult i32 %i.bxs, 2         ; 3 uses
  %i.bxt = icmp eq i32 %i.bbv, 7
  %or.cond3.i = and i1 %i.bxt, %spec.select.i
  br i1 %or.cond3.i, label %bb.oz, label %bb.pd

bb.oz:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.bxu = load i32, ptr %i.dj, align 8, !tbaa !86
  %i.bxv = icmp sgt i32 %i.bxu, 1
  br i1 %i.bxv, label %bb.pa, label %bb.pb

bb.pa:                                            ; preds = %bb.oz
  %i.bxw = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bxw, i32 noundef 16, ptr noundef nonnull @.str.1838) #16
  br label %tiff_unpack_strip.exit.thread

bb.pb:                                            ; preds = %bb.oz
  %i.bxx = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not339.i = icmp eq i32 %i.bxx, 0
  br i1 %.not339.i, label %tiff_unpack_strip.exit.thread, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.bxy = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bxz = load i32, ptr %i.di, align 4, !tbaa !88
  %i.bya = load i32, ptr %i.dp, align 8, !tbaa !78
  %i.byb = load i32, ptr %i.dm, align 4, !tbaa !79
  %i.byc = call fastcc i32 @dng_decode_jpeg(ptr noundef %i.bxy, ptr noundef nonnull readonly %1, i32 noundef %i.bxz, i32 noundef 0, i32 noundef 0, i32 noundef %i.bya, i32 noundef %i.byb)
  br label %tiff_unpack_strip.exit

bb.pd:                                            ; preds = %bytestream2_init_writer.exit.i
  %i.byd = icmp eq i32 %.2303.i, 0
  %or.cond5.i = and i1 %i.byd, %spec.select.i
  br i1 %or.cond5.i, label %tiff_unpack_strip.exit.thread, label %.preheader506.i

.preheader506.i:                                  ; preds = %bb.pd
  %i.bye = icmp sgt i32 %.829, 0
  br i1 %i.bye, label %.lr.ph583.i, label %tiff_unpack_strip.exit.thread893

.lr.ph583.i:                                      ; preds = %.preheader506.i
  %i.byf = ptrtoint ptr %i.azl to i64
  %i.byg = icmp sgt i32 %.2.i, 0                  ; 5 uses
  %i.byh = ptrtoint ptr %i.bxl to i64             ; 3 uses
  %i.byi = sext i32 %.2.i to i64                  ; 3 uses
  %or.cond.i428.i = icmp ugt i32 %.2.i, 268435455
  %i.byj = shl nuw nsw i32 %.2.i, 3
  %i.byk = select i1 %or.cond.i428.i, i32 -8, i32 %i.byj ; 2 uses
  %or.cond.i.i429.i = icmp ult i32 %i.byk, 2147483135
  %i.byl = add nuw nsw i32 %i.byk, 8
  %i.bym = sdiv i32 %.2.i, 2
  %i.byn = call i32 @llvm.abs.i32(i32 %.2303.i, i1 true)
  %i.byo = sext i32 %.2303.i to i64               ; 3 uses
  %i.byp = zext i32 %.2.i to i64                  ; 14 uses
  %i.byq = select i1 %or.cond.i.i429.i, i32 %i.byl, i32 8 ; 2 uses
  %i.byr = shl nuw nsw i64 %i.byp, 1
  %i.bys = getelementptr i8, ptr %.2299.i, i64 %i.byr
  %xtraiter3730 = and i64 %i.byp, 3               ; 3 uses
  %i.byt = icmp ult i32 %.2.i, 4
  %unroll_iter3733 = and i64 %i.byp, 2147483644
  %lcmp.mod3731.not = icmp eq i64 %xtraiter3730, 0
  %lcmp.mod3732 = icmp ne i64 %xtraiter3730, 0
  %xtraiter3735 = and i64 %i.byp, 3               ; 3 uses
  %i.byu = icmp ult i32 %.2.i, 4
  %unroll_iter3739 = and i64 %i.byp, 2147483644
  %lcmp.mod3737.not = icmp eq i64 %xtraiter3735, 0
  %lcmp.mod3738 = icmp ne i64 %xtraiter3735, 0
  %min.iters.check3328 = icmp ult i32 %.2.i, 8
  %n.vec3330 = and i64 %i.byp, 2147483640         ; 2 uses
  %i.byv = and i64 %i.byp, 7
  %cmp.n3340 = icmp eq i64 %n.vec3330, %i.byp
  br label %bb.pe

bb.pe:                                            ; preds = %bb.qm, %.lr.ph583.i
  %indvar3320 = phi i64 [ %indvar.next3321, %bb.qm ], [ 0, %.lr.ph583.i ] ; 3 uses
  %.2294582.i = phi i32 [ %i.cvx, %bb.qm ], [ 0, %.lr.ph583.i ] ; 7 uses
  %.4578.i = phi ptr [ %i.cvw, %bb.qm ], [ %.2299.i, %.lr.ph583.i ] ; 46 uses
  %.1305576.i = phi ptr [ %.5.i, %bb.qm ], [ %i.azl, %.lr.ph583.i ] ; 20 uses
  %.sroa.12.0575.i = phi i1 [ %i.bzl, %bb.qm ], [ true, %.lr.ph583.i ]
  %i.byw = mul i64 %indvar3320, %i.byo
  %i.byx = getelementptr i8, ptr %.2299.i, i64 %i.byw
  %i.byy = mul i64 %indvar3320, %i.byo
  %scevgep3322 = getelementptr i8, ptr %i.bys, i64 %i.byy
  %i.byz = ptrtoint ptr %.1305576.i to i64        ; 2 uses
  %i.bza = sub i64 %i.byz, %i.byf
  %i.bzb = icmp sgt i64 %i.bza, %i.bxk
  br i1 %i.bzb, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.bzc = load ptr, ptr %i.bo, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bzc, i32 noundef 16, ptr noundef nonnull @.str.1839) #16
  br label %tiff_unpack_strip.exit.thread

bb.pg:                                            ; preds = %bb.pe
  %i.bzd = load ptr, ptr %i.ag, align 8, !tbaa !51
  %i.bze = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.bzf = ptrtoint ptr %i.bzd to i64
  %i.bzg = ptrtoint ptr %i.bze to i64
  %i.bzh = sub i64 %i.bzf, %i.bzg
  %i.bzi = and i64 %i.bzh, 4294967295
  %i.bzj = icmp ne i64 %i.bzi, 0
  %or.cond473.i = and i1 %.sroa.12.0575.i, %i.bzj
  br i1 %or.cond473.i, label %bytestream2_seek_p.exit.i, label %tiff_unpack_strip.exit.thread893

bytestream2_seek_p.exit.i:                        ; preds = %bb.pg
  %i.bzk = mul nsw i32 %.2294582.i, %.2303.i
  %i.bzl = icmp sge i32 %i.bxo, %i.bzk
  %i.bzm = load i32, ptr %i.av, align 8, !tbaa !59
  switch i32 %i.bzm, label %.loopexit504.i [
    i32 1, label %bb.ph
    i32 32773, label %.preheader505.i
  ]

.preheader505.i:                                  ; preds = %bytestream2_seek_p.exit.i
  br i1 %i.byg, label %.lr.ph550.i, label %.loopexit504.i

bb.ph:                                            ; preds = %bytestream2_seek_p.exit.i
  %i.bzn = sub i64 %i.byh, %i.byz
  %i.bzo = icmp slt i64 %i.bzn, %i.byi
  br i1 %i.bzo, label %tiff_unpack_strip.exit.thread, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.bzp = load i32, ptr %i.aw, align 4, !tbaa !60
  %.not336.i = icmp eq i32 %i.bzp, 0
  br i1 %.not336.i, label %bb.pj, label %.preheader501.i

.preheader501.i:                                  ; preds = %bb.pi
  br i1 %i.byg, label %.lr.ph554.i.preheader, label %horizontal_fill.exit363.i

.lr.ph554.i.preheader:                            ; preds = %.preheader501.i
  br i1 %i.byu, label %.lr.ph554.i.epil.preheader, label %.lr.ph554.i

bb.pj:                                            ; preds = %bb.pi
  %i.bzq = load i32, ptr %i.as, align 8, !tbaa !56 ; 5 uses
  %i.bzr = load ptr, ptr %i.bo, align 8, !tbaa !30
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 136
  %i.bzt = load i32, ptr %i.bzs, align 8, !tbaa !138
  %i.bzu = icmp eq i32 %i.bzt, 11
  br i1 %i.bzu, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bzv = load i32, ptr %i.ay, align 8, !tbaa !62
  %.not337.i = icmp eq i32 %i.bzv, 0
  br i1 %.not337.i, label %.thread472.i, label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  switch i32 %i.bzq, label %.thread472.i [
    i32 1, label %.preheader495.i
    i32 2, label %.preheader496.i
    i32 4, label %.preheader498.i
    i32 10, label %bb.pm
    i32 12, label %bb.pm
    i32 14, label %bb.pm
  ]

.preheader498.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph560.i.preheader, label %horizontal_fill.exit363.i

.lr.ph560.i.preheader:                            ; preds = %.preheader498.i
  br i1 %min.iters.check3328, label %.lr.ph560.i.preheader3477, label %vector.memcheck3319

vector.memcheck3319:                              ; preds = %.lr.ph560.i.preheader
  %scevgep3323 = getelementptr i8, ptr %.1305576.i, i64 %i.byp
  %bound03324 = icmp ult ptr %.4578.i, %scevgep3323
  %bound13325 = icmp ult ptr %.1305576.i, %scevgep3322
  %found.conflict3326 = and i1 %bound03324, %bound13325
  br i1 %found.conflict3326, label %.lr.ph560.i.preheader3477, label %vector.body3331

vector.body3331:                                  ; preds = %vector.memcheck3319, %vector.body3331
  %index3332 = phi i64 [ %index.next3338, %vector.body3331 ], [ 0, %vector.memcheck3319 ] ; 2 uses
  %i.bzw = xor i64 %index3332, -1
  %i.bzx = add i64 %i.bzw, %i.byp                 ; 2 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.bzx
  %i.bzz = getelementptr inbounds i8, ptr %i.bzy, i64 -7
  %wide.load3333 = load <8 x i8>, ptr %i.bzz, align 1, !tbaa !80, !alias.scope !184 ; 2 uses
  %i.caa = and <8 x i8> %wide.load3333, splat (i8 15)
  %i.cab = shl nuw nsw i64 %i.bzx, 1
  %i.cac = getelementptr i8, ptr %.4578.i, i64 %i.cab
  %i.cad = lshr <8 x i8> %wide.load3333, splat (i8 4)
  %i.cae = getelementptr i8, ptr %i.cac, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %i.cad, <8 x i8> %i.caa, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.cae, align 1, !tbaa !80, !alias.scope !187, !noalias !184
  %index.next3338 = add nuw i64 %index3332, 8     ; 2 uses
  %i.caf = icmp eq i64 %index.next3338, %n.vec3330
  br i1 %i.caf, label %middle.block3339, label %vector.body3331, !llvm.loop !189

middle.block3339:                                 ; preds = %vector.body3331
  br i1 %cmp.n3340, label %horizontal_fill.exit363.i, label %.lr.ph560.i.preheader3477

.lr.ph560.i.preheader3477:                        ; preds = %vector.memcheck3319, %.lr.ph560.i.preheader, %middle.block3339
  %indvars.iv656.i.ph = phi i64 [ %i.byp, %vector.memcheck3319 ], [ %i.byp, %.lr.ph560.i.preheader ], [ %i.byv, %middle.block3339 ]
  br label %.lr.ph560.i

.preheader496.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph562.i, label %horizontal_fill.exit363.i

.preheader495.i:                                  ; preds = %bb.pl
  br i1 %i.byg, label %.lr.ph564.i, label %horizontal_fill.exit363.i

.lr.ph564.i:                                      ; preds = %.preheader495.i, %.lr.ph564.i
  %indvars.iv662.i = phi i64 [ %indvars.iv.next663.i, %.lr.ph564.i ], [ %i.byp, %.preheader495.i ] ; 2 uses
  %indvars.iv.next663.i = add nsw i64 %indvars.iv662.i, -1 ; 3 uses
  %i.cag = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next663.i ; 8 uses
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.cai = and i8 %i.cah, 1
  %i.caj = shl nsw i64 %indvars.iv.next663.i, 3
  %i.cak = getelementptr i8, ptr %.4578.i, i64 %i.caj ; 8 uses
  %i.cal = getelementptr i8, ptr %i.cak, i64 7
  store i8 %i.cai, ptr %i.cal, align 1, !tbaa !80
  %i.cam = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.can = lshr i8 %i.cam, 1
  %i.cao = and i8 %i.can, 1
  %i.cap = getelementptr i8, ptr %i.cak, i64 6
  store i8 %i.cao, ptr %i.cap, align 1, !tbaa !80
  %i.caq = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.car = lshr i8 %i.caq, 2
  %i.cas = and i8 %i.car, 1
  %i.cat = getelementptr i8, ptr %i.cak, i64 5
  store i8 %i.cas, ptr %i.cat, align 1, !tbaa !80
  %i.cau = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.cav = lshr i8 %i.cau, 3
  %i.caw = and i8 %i.cav, 1
  %i.cax = getelementptr i8, ptr %i.cak, i64 4
  store i8 %i.caw, ptr %i.cax, align 1, !tbaa !80
  %i.cay = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.caz = lshr i8 %i.cay, 4
  %i.cba = and i8 %i.caz, 1
  %i.cbb = getelementptr i8, ptr %i.cak, i64 3
  store i8 %i.cba, ptr %i.cbb, align 1, !tbaa !80
  %i.cbc = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.cbd = lshr i8 %i.cbc, 5
  %i.cbe = and i8 %i.cbd, 1
  %i.cbf = getelementptr i8, ptr %i.cak, i64 2
  store i8 %i.cbe, ptr %i.cbf, align 1, !tbaa !80
  %i.cbg = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.cbh = lshr i8 %i.cbg, 6
  %i.cbi = and i8 %i.cbh, 1
  %i.cbj = getelementptr i8, ptr %i.cak, i64 1
  store i8 %i.cbi, ptr %i.cbj, align 1, !tbaa !80
  %i.cbk = load i8, ptr %i.cag, align 1, !tbaa !80
  %i.cbl = lshr i8 %i.cbk, 7
  store i8 %i.cbl, ptr %i.cak, align 1, !tbaa !80
  %i.cbm = icmp samesign ugt i64 %indvars.iv662.i, 1
  br i1 %i.cbm, label %.lr.ph564.i, label %horizontal_fill.exit363.i, !llvm.loop !159

.lr.ph562.i:                                      ; preds = %.preheader496.i, %.lr.ph562.i
  %indvars.iv659.i = phi i64 [ %indvars.iv.next660.i, %.lr.ph562.i ], [ %i.byp, %.preheader496.i ] ; 2 uses
  %indvars.iv.next660.i = add nsw i64 %indvars.iv659.i, -1 ; 3 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next660.i ; 4 uses
  %i.cbo = load i8, ptr %i.cbn, align 1, !tbaa !80
  %i.cbp = and i8 %i.cbo, 3
  %i.cbq = shl nsw i64 %indvars.iv.next660.i, 2
  %i.cbr = getelementptr i8, ptr %.4578.i, i64 %i.cbq ; 4 uses
  %i.cbs = getelementptr i8, ptr %i.cbr, i64 3
  store i8 %i.cbp, ptr %i.cbs, align 1, !tbaa !80
  %i.cbt = load i8, ptr %i.cbn, align 1, !tbaa !80
  %i.cbu = lshr i8 %i.cbt, 2
  %i.cbv = and i8 %i.cbu, 3
  %i.cbw = getelementptr i8, ptr %i.cbr, i64 2
  store i8 %i.cbv, ptr %i.cbw, align 1, !tbaa !80
  %i.cbx = load i8, ptr %i.cbn, align 1, !tbaa !80
  %i.cby = lshr i8 %i.cbx, 4
  %i.cbz = and i8 %i.cby, 3
  %i.cca = getelementptr i8, ptr %i.cbr, i64 1
  store i8 %i.cbz, ptr %i.cca, align 1, !tbaa !80
  %i.ccb = load i8, ptr %i.cbn, align 1, !tbaa !80
  %i.ccc = lshr i8 %i.ccb, 6
  store i8 %i.ccc, ptr %i.cbr, align 1, !tbaa !80
  %i.ccd = icmp samesign ugt i64 %indvars.iv659.i, 1
  br i1 %i.ccd, label %.lr.ph562.i, label %horizontal_fill.exit363.i, !llvm.loop !160

.lr.ph560.i:                                      ; preds = %.lr.ph560.i.preheader3477, %.lr.ph560.i
  %indvars.iv656.i = phi i64 [ %indvars.iv.next657.i, %.lr.ph560.i ], [ %indvars.iv656.i.ph, %.lr.ph560.i.preheader3477 ] ; 2 uses
  %indvars.iv.next657.i = add nsw i64 %indvars.iv656.i, -1 ; 3 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next657.i ; 2 uses
  %i.ccf = load i8, ptr %i.cce, align 1, !tbaa !80
  %i.ccg = and i8 %i.ccf, 15
  %i.cch = shl nuw nsw i64 %indvars.iv.next657.i, 1
  %i.cci = getelementptr i8, ptr %.4578.i, i64 %i.cch ; 2 uses
  %i.ccj = getelementptr i8, ptr %i.cci, i64 1
  store i8 %i.ccg, ptr %i.ccj, align 1, !tbaa !80
  %i.cck = load i8, ptr %i.cce, align 1, !tbaa !80
  %i.ccl = lshr i8 %i.cck, 4
  store i8 %i.ccl, ptr %i.cci, align 1, !tbaa !80
  %i.ccm = icmp samesign ugt i64 %indvars.iv656.i, 1
  br i1 %i.ccm, label %.lr.ph560.i, label %horizontal_fill.exit363.i, !llvm.loop !190

bb.pm:                                            ; preds = %bb.pl, %bb.pl, %bb.pl
  %i.ccn = load i32, ptr %i.dp, align 8, !tbaa !78 ; 4 uses
  %i.cco = icmp sgt i32 %i.ccn, 0
  br i1 %i.cco, label %.lr.ph558.i, label %horizontal_fill.exit363.i

.lr.ph558.i:                                      ; preds = %bb.pm
  %i.ccp = sub nuw nsw i32 16, %i.bzq
  %i.ccq = load i32, ptr %i.ap, align 4, !tbaa !53
  %i.ccr = add i32 %i.ccq, -1
  %spec.select.i358.i = icmp ult i32 %i.ccr, 2
  %i.ccs = sub nuw nsw i32 32, %i.bzq             ; 3 uses
  %i.cct = select i1 %spec.select.i358.i, i32 0, i32 %i.ccp ; 3 uses
  %wide.trip.count654.i = zext nneg i32 %i.ccn to i64 ; 2 uses
  %xtraiter3742 = and i64 %wide.trip.count654.i, 1
  %i.ccu = icmp eq i32 %i.ccn, 1
  br i1 %i.ccu, label %.epil.preheader3741, label %.lr.ph558.i.new

.lr.ph558.i.new:                                  ; preds = %.lr.ph558.i
  %unroll_iter3746 = and i64 %wide.trip.count654.i, 2147483646
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pn, %.lr.ph558.i.new
  %indvars.iv651.i = phi i64 [ 0, %.lr.ph558.i.new ], [ %indvars.iv.next652.i.1, %bb.pn ] ; 3 uses
  %.sroa.4457.0555.i = phi i32 [ 0, %.lr.ph558.i.new ], [ %i.cdr, %bb.pn ] ; 3 uses
  %niter3747 = phi i64 [ 0, %.lr.ph558.i.new ], [ %niter3747.next.1, %bb.pn ]
  %i.ccv = lshr i32 %.sroa.4457.0555.i, 3
  %i.ccw = zext nneg i32 %i.ccv to i64
  %i.ccx = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.ccw
  %i.ccy = load i32, ptr %i.ccx, align 1, !tbaa !80
  %i.ccz = call i32 @llvm.bswap.i32(i32 %i.ccy)
  %i.cda = and i32 %.sroa.4457.0555.i, 7
  %i.cdb = shl i32 %i.ccz, %i.cda
  %i.cdc = lshr i32 %i.cdb, %i.ccs
  %i.cdd = add i32 %.sroa.4457.0555.i, %i.bzq
  %i.cde = call i32 @llvm.umin.i32(i32 %i.byq, i32 %i.cdd) ; 3 uses
  %i.cdf = shl nuw nsw i32 %i.cdc, %i.cct
  %i.cdg = trunc i32 %i.cdf to i16
  %i.cdh = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  store i16 %i.cdg, ptr %i.cdh, align 2, !tbaa !67
  %i.cdi = lshr i32 %i.cde, 3
  %i.cdj = zext nneg i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cdj
  %i.cdl = load i32, ptr %i.cdk, align 1, !tbaa !80
  %i.cdm = call i32 @llvm.bswap.i32(i32 %i.cdl)
  %i.cdn = and i32 %i.cde, 7
  %i.cdo = shl i32 %i.cdm, %i.cdn
  %i.cdp = lshr i32 %i.cdo, %i.ccs
  %i.cdq = add i32 %i.cde, %i.bzq
  %i.cdr = call i32 @llvm.umin.i32(i32 %i.byq, i32 %i.cdq) ; 2 uses
  %i.cds = shl nuw nsw i32 %i.cdp, %i.cct
  %i.cdt = trunc i32 %i.cds to i16
  %i.cdu = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 2
  store i16 %i.cdt, ptr %i.cdv, align 2, !tbaa !67
  %indvars.iv.next652.i.1 = add nuw nsw i64 %indvars.iv651.i, 2 ; 2 uses
  %niter3747.next.1 = add i64 %niter3747, 2       ; 2 uses
  %niter3747.ncmp.1 = icmp eq i64 %niter3747.next.1, %unroll_iter3746
  br i1 %niter3747.ncmp.1, label %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, label %bb.pn, !llvm.loop !181

.thread472.i:                                     ; preds = %bb.pl, %bb.pk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4578.i, ptr align 1 %.1305576.i, i64 %i.byi, i1 false)
  br label %horizontal_fill.exit363.i

.lr.ph554.i:                                      ; preds = %.lr.ph554.i.preheader, %.lr.ph554.i
  %indvars.iv646.i = phi i64 [ %indvars.iv.next647.i.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ] ; 6 uses
  %niter3740 = phi i64 [ %niter3740.next.3, %.lr.ph554.i ], [ 0, %.lr.ph554.i.preheader ]
  %i.cdw = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i
  %i.cdx = load i8, ptr %i.cdw, align 1, !tbaa !80
  %i.cdy = zext i8 %i.cdx to i64
  %i.cdz = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cdy
  %i.cea = load i8, ptr %i.cdz, align 1, !tbaa !80
  %i.ceb = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i
  store i8 %i.cea, ptr %i.ceb, align 1, !tbaa !80
  %indvars.iv.next647.i = or disjoint i64 %indvars.iv646.i, 1 ; 2 uses
  %i.cec = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i
  %i.ced = load i8, ptr %i.cec, align 1, !tbaa !80
  %i.cee = zext i8 %i.ced to i64
  %i.cef = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cee
  %i.ceg = load i8, ptr %i.cef, align 1, !tbaa !80
  %i.ceh = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i
  store i8 %i.ceg, ptr %i.ceh, align 1, !tbaa !80
  %indvars.iv.next647.i.1 = or disjoint i64 %indvars.iv646.i, 2 ; 2 uses
  %i.cei = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.1
  %i.cej = load i8, ptr %i.cei, align 1, !tbaa !80
  %i.cek = zext i8 %i.cej to i64
  %i.cel = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cek
  %i.cem = load i8, ptr %i.cel, align 1, !tbaa !80
  %i.cen = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.1
  store i8 %i.cem, ptr %i.cen, align 1, !tbaa !80
  %indvars.iv.next647.i.2 = or disjoint i64 %indvars.iv646.i, 3 ; 2 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv.next647.i.2
  %i.cep = load i8, ptr %i.ceo, align 1, !tbaa !80
  %i.ceq = zext i8 %i.cep to i64
  %i.cer = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.ceq
  %i.ces = load i8, ptr %i.cer, align 1, !tbaa !80
  %i.cet = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv.next647.i.2
  store i8 %i.ces, ptr %i.cet, align 1, !tbaa !80
  %indvars.iv.next647.i.3 = add nuw nsw i64 %indvars.iv646.i, 4 ; 2 uses
  %niter3740.next.3 = add i64 %niter3740, 4       ; 2 uses
  %niter3740.ncmp.3 = icmp eq i64 %niter3740.next.3, %unroll_iter3739
  br i1 %niter3740.ncmp.3, label %horizontal_fill.exit363.i.loopexit3480.unr-lcssa, label %.lr.ph554.i, !llvm.loop !191

horizontal_fill.exit363.i.loopexit3479.unr-lcssa: ; preds = %bb.pn
  %lcmp.mod3744.not = icmp eq i64 %xtraiter3742, 0
  br i1 %lcmp.mod3744.not, label %horizontal_fill.exit363.i, label %.epil.preheader3741

.epil.preheader3741:                              ; preds = %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, %.lr.ph558.i
  %indvars.iv651.i.epil.init = phi i64 [ 0, %.lr.ph558.i ], [ %indvars.iv.next652.i.1, %horizontal_fill.exit363.i.loopexit3479.unr-lcssa ]
  %.sroa.4457.0555.i.epil.init = phi i32 [ 0, %.lr.ph558.i ], [ %i.cdr, %horizontal_fill.exit363.i.loopexit3479.unr-lcssa ] ; 2 uses
  %lcmp.mod3745 = trunc i32 %i.ccn to i1
  call void @llvm.assume(i1 %lcmp.mod3745)
  %i.ceu = lshr i32 %.sroa.4457.0555.i.epil.init, 3
  %i.cev = zext nneg i32 %i.ceu to i64
  %i.cew = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %i.cev
  %i.cex = load i32, ptr %i.cew, align 1, !tbaa !80
  %i.cey = call i32 @llvm.bswap.i32(i32 %i.cex)
  %i.cez = and i32 %.sroa.4457.0555.i.epil.init, 7
  %i.cfa = shl i32 %i.cey, %i.cez
  %i.cfb = lshr i32 %i.cfa, %i.ccs
  %i.cfc = shl nuw nsw i32 %i.cfb, %i.cct
  %i.cfd = trunc i32 %i.cfc to i16
  %i.cfe = getelementptr inbounds nuw [2 x i8], ptr %.4578.i, i64 %indvars.iv651.i.epil.init
  store i16 %i.cfd, ptr %i.cfe, align 2, !tbaa !67
  br label %horizontal_fill.exit363.i

horizontal_fill.exit363.i.loopexit3480.unr-lcssa: ; preds = %.lr.ph554.i
  br i1 %lcmp.mod3737.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil.preheader

.lr.ph554.i.epil.preheader:                       ; preds = %horizontal_fill.exit363.i.loopexit3480.unr-lcssa, %.lr.ph554.i.preheader
  %indvars.iv646.i.epil.init = phi i64 [ 0, %.lr.ph554.i.preheader ], [ %indvars.iv.next647.i.3, %horizontal_fill.exit363.i.loopexit3480.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3738)
  br label %.lr.ph554.i.epil

.lr.ph554.i.epil:                                 ; preds = %.lr.ph554.i.epil, %.lr.ph554.i.epil.preheader
  %indvars.iv646.i.epil = phi i64 [ %indvars.iv.next647.i.epil, %.lr.ph554.i.epil ], [ %indvars.iv646.i.epil.init, %.lr.ph554.i.epil.preheader ] ; 3 uses
  %epil.iter3736 = phi i64 [ %epil.iter3736.next, %.lr.ph554.i.epil ], [ 0, %.lr.ph554.i.epil.preheader ]
  %i.cff = getelementptr inbounds nuw i8, ptr %.1305576.i, i64 %indvars.iv646.i.epil
  %i.cfg = load i8, ptr %i.cff, align 1, !tbaa !80
  %i.cfh = zext i8 %i.cfg to i64
  %i.cfi = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.cfh
  %i.cfj = load i8, ptr %i.cfi, align 1, !tbaa !80
  %i.cfk = getelementptr inbounds nuw i8, ptr %.4578.i, i64 %indvars.iv646.i.epil
  store i8 %i.cfj, ptr %i.cfk, align 1, !tbaa !80
  %indvars.iv.next647.i.epil = add nuw nsw i64 %indvars.iv646.i.epil, 1
  %epil.iter3736.next = add i64 %epil.iter3736, 1 ; 2 uses
  %epil.iter3736.cmp.not = icmp eq i64 %epil.iter3736.next, %xtraiter3735
  br i1 %epil.iter3736.cmp.not, label %horizontal_fill.exit363.i, label %.lr.ph554.i.epil, !llvm.loop !192

horizontal_fill.exit363.i:                        ; preds = %horizontal_fill.exit363.i.loopexit3480.unr-lcssa, %.lr.ph554.i.epil, %.epil.preheader3741, %horizontal_fill.exit363.i.loopexit3479.unr-lcssa, %.lr.ph560.i, %.lr.ph562.i, %.lr.ph564.i, %middle.block3339, %.thread472.i, %bb.pm, %.preheader495.i, %.preheader496.i, %.preheader498.i, %.preheader501.i
  br i1 %spec.select.i, label %bb.po, label %bb.pr

bb.po:                                            ; preds = %horizontal_fill.exit363.i
  %i.cfl = load i32, ptr %i.as, align 8, !tbaa !56 ; 2 uses
  %i.cfm = load i32, ptr %i.at, align 4, !tbaa !57 ; 2 uses
  %i.cfn = udiv i32 %i.cfl, %i.cfm
  %i.cfo = icmp ugt i32 %i.cfn, 8                 ; 4 uses
  %i.cfp = select i1 %i.cfo, i32 %i.bym, i32 %.2.i
  %i.cfq = select i1 %i.cfo, i32 4, i32 3
  %i.cfr = shl i32 %i.cfp, %i.cfq
  %i.cfs = udiv i32 %i.cfr, %i.cfl
  %i.cft = mul i32 %i.cfs, %i.cfm                 ; 4 uses
  %i.cfu = zext i1 %i.cfo to i32
  %i.cfv = shl i32 %i.cft, %i.cfu
  %.not338.i = icmp sgt i32 %i.cfv, %i.byn
  br i1 %.not338.i, label %bb.pp, label %bb.pq
end_hunk_0
begin_hunk_1_@dng_decode_jpeg:bb.a
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !72
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hj
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !72
  %i.ho = zext i16 %i.hg to i64
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.ho
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !67
  %i.hr = uitofp nsz i16 %i.hq to float
  %i.hs = fsub nsz float %i.hr, %i.hl
  %i.ht = fmul nsz float %i.hn, %i.hs
  %i.hu = tail call i64 @llvm.lrint.i64.f32(float %i.ht) ; 2 uses
  %i.hv = trunc i64 %i.hu to i32                  ; 2 uses
  %.not.i91 = icmp ult i32 %i.hv, 65536
  %isnotneg.i92 = icmp sgt i32 %i.hv, -1
  %i.hw = sext i1 %isnotneg.i92 to i16
  %i.hx = trunc i64 %i.hu to i16
  %.0.i93 = select i1 %.not.i91, i16 %i.hx, i16 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %.096.i136, i64 2
  store i16 %.0.i93, ptr %.096.i136, align 2, !tbaa !67
  %i.hz = add nuw nsw i32 %.2.i135, 1             ; 2 uses
  %exitcond151.not = icmp eq i32 %i.hz, %5
  br i1 %exitcond151.not, label %._crit_edge138, label %bb.r, !llvm.loop !194

._crit_edge138:                                   ; preds = %bb.r
  %i.ia = getelementptr inbounds nuw i8, ptr %.1108.i140, i64 %i.ha
  %i.ib = getelementptr inbounds nuw i8, ptr %.1111.i139, i64 %i.hc
  %i.ic = add nuw nsw i32 %.1105.i141, 1          ; 2 uses
  %exitcond152.not = icmp eq i32 %i.ic, %6
  br i1 %exitcond152.not, label %dng_blit.exit, label %.preheader, !llvm.loop !300

.preheader105:                                    ; preds = %.preheader105.lr.ph, %._crit_edge131
  %.2106.i134 = phi i32 [ %i.je, %._crit_edge131 ], [ 0, %.preheader105.lr.ph ] ; 2 uses
  %.2109.i133 = phi ptr [ %i.jc, %._crit_edge131 ], [ %i.bw, %.preheader105.lr.ph ] ; 2 uses
  %.2112.i132 = phi ptr [ %i.jd, %._crit_edge131 ], [ %i.bx, %.preheader105.lr.ph ] ; 2 uses
  %i.id = shl nuw i32 %.2106.i134, 1
  %i.ie = and i32 %i.id, 2
  br label %bb.s

bb.s:                                             ; preds = %.preheader105, %bb.s
  %.0.i130 = phi ptr [ %.2112.i132, %.preheader105 ], [ %i.if, %bb.s ] ; 2 uses
  %.094.i129 = phi ptr [ %.2109.i133, %.preheader105 ], [ %i.ja, %bb.s ] ; 2 uses
  %.3.i128 = phi i32 [ 0, %.preheader105 ], [ %i.jb, %bb.s ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1
  %i.ig = load i8, ptr %.0.i130, align 1, !tbaa !80
  %i.ih = and i32 %.3.i128, 1
  %i.ii = or disjoint i32 %i.ih, %i.ie
  %i.ij = zext nneg i32 %i.ii to i64              ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !72
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ij
  %i.in = load float, ptr %i.im, align 4, !tbaa !72
  %i.io = zext i8 %i.ig to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !67
  %i.ir = uitofp nsz i16 %i.iq to float
  %i.is = fsub nsz float %i.ir, %i.il
  %i.it = fmul nsz float %i.in, %i.is
  %i.iu = tail call i64 @llvm.lrint.i64.f32(float %i.it) ; 2 uses
  %i.iv = trunc i64 %i.iu to i32                  ; 2 uses
  %.not.i83 = icmp ult i32 %i.iv, 65536
  %isnotneg.i = icmp sgt i32 %i.iv, -1
  %i.iw = sext i1 %isnotneg.i to i16
  %i.ix = trunc i64 %i.iu to i16
  %.0.i84 = select i1 %.not.i83, i16 %i.ix, i16 %i.iw
  %i.iy = lshr i16 %.0.i84, 8
  %i.iz = trunc nuw i16 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.094.i129, i64 1
  store i8 %i.iz, ptr %.094.i129, align 1, !tbaa !80
  %i.jb = add nuw nsw i32 %.3.i128, 1             ; 2 uses
  %exitcond149.not = icmp eq i32 %i.jb, %5
  br i1 %exitcond149.not, label %._crit_edge131, label %bb.s, !llvm.loop !195

._crit_edge131:                                   ; preds = %bb.s
  %i.jc = getelementptr inbounds i8, ptr %.2109.i133, i64 %i.gu
  %i.jd = getelementptr inbounds i8, ptr %.2112.i132, i64 %i.gv
  %i.je = add nuw nsw i32 %.2106.i134, 1          ; 2 uses
  %exitcond150.not = icmp eq i32 %i.je, %6
  br i1 %exitcond150.not, label %dng_blit.exit.loopexit142, label %.preheader105, !llvm.loop !301

dng_blit.exit.loopexit142:                        ; preds = %._crit_edge131
  %.pre153 = load ptr, ptr %i.ad, align 8, !tbaa !41
  br label %dng_blit.exit

dng_blit.exit:                                    ; preds = %._crit_edge124.us, %._crit_edge138, %dng_blit.exit.loopexit142, %.preheader108.lr.ph, %.preheader106, %.preheader105.lr.ph, %.preheader104, %.preheader.lr.ph, %bb.o
  %i.jf = phi ptr [ %i.ap, %._crit_edge138 ], [ %.pre153, %dng_blit.exit.loopexit142 ], [ %i.ap, %bb.o ], [ %i.ap, %.preheader108.lr.ph ], [ %i.ap, %.preheader106 ], [ %i.ap, %.preheader105.lr.ph ], [ %i.ap, %.preheader104 ], [ %i.ap, %.preheader.lr.ph ], [ %i.ap, %._crit_edge124.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  tail call void @av_frame_unref(ptr noundef %i.jf) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.j, %bb.g, %bb.a, %bb.b, %dng_blit.exit, %bb.n, %bb.e
  %.0 = phi i32 [ -1094995529, %bb.h ], [ %i.aa, %bb.e ], [ %., %bb.g ], [ -1094995529, %bb.a ], [ -1094995529, %bb.b ], [ 0, %dng_blit.exit ], [ -1163346256, %bb.n ], [ -1094995529, %bb.j ], [ -1094995529, %bb.i ], [ -1094995529, %bb.l ]
  ret i32 %.0
}

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_send_packet(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_receive_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #6

declare void @av_fast_padded_malloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_decode_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_lzw_decode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_yuv(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29   ; 2 uses
  %i.f = sdiv i32 %i.c, %i.e                      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %i.k = sdiv i32 %3, %i.j                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.n = load i32, ptr %i.m, align 4, !tbaa !29
  %i.o = mul nsw i32 %i.n, %i.k
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !29
  %i.v = mul nsw i32 %i.u, %i.k
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.w ; 2 uses
  %i.y = srem i32 %i.b, %i.e
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = srem i32 %i.aa, %i.j
  %.not79 = icmp eq i32 %i.ab, 0
  br i1 %.not79, label %.preheader85, label %bb.c

.preheader85:                                     ; preds = %bb.b
  %.not80111 = icmp slt i32 %i.f, 0
  br i1 %.not80111, label %.loopexit, label %.preheader84

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not8195 = icmp slt i32 %i.f, 0
  br i1 %.not8195, label %.loopexit, label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.lr.ph, %._crit_edge93
  %.0100 = phi ptr [ %i.x, %.preheader87.lr.ph ], [ %i.bo, %._crit_edge93 ] ; 2 uses
  %.06499 = phi ptr [ %i.q, %.preheader87.lr.ph ], [ %i.bl, %._crit_edge93 ] ; 2 uses
  %.07097 = phi i32 [ 0, %.preheader87.lr.ph ], [ %i.bp, %._crit_edge93 ] ; 3 uses
  %.07296 = phi ptr [ %2, %.preheader87.lr.ph ], [ %i.bm, %._crit_edge93 ] ; 3 uses
  %i.ad = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.preheader86.lr.ph, label %._crit_edge93

.preheader86.lr.ph:                               ; preds = %.preheader87
  %i.af = load i32, ptr %i.d, align 4, !tbaa !29  ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.preheader86, label %._crit_edge93

.preheader86:                                     ; preds = %.preheader86.lr.ph, %._crit_edge
  %i.ah = phi i32 [ %i.bf, %._crit_edge ], [ %i.ad, %.preheader86.lr.ph ]
  %i.ai = phi i32 [ %i.bg, %._crit_edge ], [ %i.af, %.preheader86.lr.ph ] ; 3 uses
  %.06892 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader86.lr.ph ] ; 2 uses
  %.17391 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %.07296, %.preheader86.lr.ph ] ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader86
  %i.ak = add nsw i32 %.06892, %3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.al = phi i32 [ %i.ai, %.lr.ph ], [ %i.bd, %bb.d ]
  %.06690 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.d ] ; 2 uses
  %.289 = phi ptr [ %.17391, %.lr.ph ], [ %i.am, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.289, i64 1 ; 2 uses
  %i.an = load i8, ptr %.289, align 1, !tbaa !80
  %i.ao = load ptr, ptr %1, align 8, !tbaa !101
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !79
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.aq)
  %i.as = load i32, ptr %i.l, align 8, !tbaa !29
  %i.at = mul nsw i32 %i.ar, %i.as
  %i.au = mul nsw i32 %i.al, %.07097
  %i.av = add nsw i32 %i.au, %.06690
  %i.aw = load i32, ptr %i.a, align 8, !tbaa !78
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.av, i32 %i.ax)
  %i.az = add nsw i32 %i.ay, %i.at
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.ao, i64 %i.ba
  store i8 %i.an, ptr %i.bb, align 1, !tbaa !80
  %i.bc = add nuw nsw i32 %.06690, 1              ; 2 uses
  %i.bd = load i32, ptr %i.d, align 4, !tbaa !29  ; 3 uses
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !302

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load i32, ptr %i.i, align 8, !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader86
  %i.bf = phi i32 [ %i.ah, %.preheader86 ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.bg = phi i32 [ %i.ai, %.preheader86 ], [ %i.bd, %._crit_edge.loopexit ]
  %.2.lcssa = phi ptr [ %.17391, %.preheader86 ], [ %i.am, %._crit_edge.loopexit ] ; 2 uses
  %i.bh = add nuw nsw i32 %.06892, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %i.bf
  br i1 %i.bi, label %.preheader86, label %._crit_edge93, !llvm.loop !303

._crit_edge93:                                    ; preds = %._crit_edge, %.preheader86.lr.ph, %.preheader87
  %.173.lcssa = phi ptr [ %.07296, %.preheader87 ], [ %.07296, %.preheader86.lr.ph ], [ %.2.lcssa, %._crit_edge ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.173.lcssa, i64 1
  %i.bk = load i8, ptr %.173.lcssa, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.06499, i64 1
  store i8 %i.bk, ptr %.06499, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %.173.lcssa, i64 2
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %.0100, i64 1
  store i8 %i.bn, ptr %.0100, align 1, !tbaa !80
  %i.bp = add nuw i32 %.07097, 1
  %exitcond.not = icmp eq i32 %.07097, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.preheader87, !llvm.loop !305

.preheader84:                                     ; preds = %.preheader85, %._crit_edge108
  %.1116 = phi ptr [ %i.cv, %._crit_edge108 ], [ %i.x, %.preheader85 ] ; 2 uses
  %.165115 = phi ptr [ %i.cs, %._crit_edge108 ], [ %i.q, %.preheader85 ] ; 2 uses
  %.171113 = phi i32 [ %i.cw, %._crit_edge108 ], [ 0, %.preheader85 ] ; 3 uses
  %.3112 = phi ptr [ %i.ct, %._crit_edge108 ], [ %2, %.preheader85 ] ; 3 uses
  %i.bq = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.preheader.lr.ph, label %._crit_edge108

.preheader.lr.ph:                                 ; preds = %.preheader84
  %i.bs = load i32, ptr %i.d, align 4, !tbaa !29  ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader, label %._crit_edge108

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge104
  %i.bu = phi i32 [ %i.cm, %._crit_edge104 ], [ %i.bq, %.preheader.lr.ph ]
  %i.bv = phi i32 [ %i.cn, %._crit_edge104 ], [ %i.bs, %.preheader.lr.ph ] ; 3 uses
  %.169107 = phi i32 [ %i.co, %._crit_edge104 ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.4106 = phi ptr [ %.5.lcssa, %._crit_edge104 ], [ %.3112, %.preheader.lr.ph ] ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %.preheader
  %i.bx = add nsw i32 %.169107, %3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph103, %bb.e
  %i.by = phi i32 [ %i.bv, %.lr.ph103 ], [ %i.ck, %bb.e ]
  %.167102 = phi i32 [ 0, %.lr.ph103 ], [ %i.cj, %bb.e ] ; 2 uses
  %.5101 = phi ptr [ %.4106, %.lr.ph103 ], [ %i.bz, %bb.e ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.5101, i64 1 ; 2 uses
  %i.ca = load i8, ptr %.5101, align 1, !tbaa !80
  %i.cb = load ptr, ptr %1, align 8, !tbaa !101
  %i.cc = load i32, ptr %i.l, align 8, !tbaa !29
  %i.cd = mul nsw i32 %i.cc, %i.bx
  %i.ce = mul nsw i32 %i.by, %.171113
  %i.cf = add i32 %i.ce, %.167102
  %i.cg = add i32 %i.cf, %i.cd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cb, i64 %i.ch
  store i8 %i.ca, ptr %i.ci, align 1, !tbaa !80
  %i.cj = add nuw nsw i32 %.167102, 1             ; 2 uses
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !29  ; 3 uses
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.e, label %._crit_edge104.loopexit, !llvm.loop !306

._crit_edge104.loopexit:                          ; preds = %bb.e
  %.pre122 = load i32, ptr %i.i, align 8, !tbaa !29
  br label %._crit_edge104

._crit_edge104:                                   ; preds = %._crit_edge104.loopexit, %.preheader
  %i.cm = phi i32 [ %i.bu, %.preheader ], [ %.pre122, %._crit_edge104.loopexit ] ; 2 uses
  %i.cn = phi i32 [ %i.bv, %.preheader ], [ %i.ck, %._crit_edge104.loopexit ]
  %.5.lcssa = phi ptr [ %.4106, %.preheader ], [ %i.bz, %._crit_edge104.loopexit ] ; 2 uses
  %i.co = add nuw nsw i32 %.169107, 1             ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.cm
  br i1 %i.cp, label %.preheader, label %._crit_edge108, !llvm.loop !307

._crit_edge108:                                   ; preds = %._crit_edge104, %.preheader.lr.ph, %.preheader84
  %.4.lcssa = phi ptr [ %.3112, %.preheader84 ], [ %.3112, %.preheader.lr.ph ], [ %.5.lcssa, %._crit_edge104 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 1
  %i.cr = load i8, ptr %.4.lcssa, align 1, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %.165115, i64 1
  store i8 %i.cr, ptr %.165115, align 1, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 2
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !80
  %i.cv = getelementptr inbounds nuw i8, ptr %.1116, i64 1
  store i8 %i.cu, ptr %.1116, align 1, !tbaa !80
  %i.cw = add nuw i32 %.171113, 1
  %exitcond121.not = icmp eq i32 %.171113, %i.f
  br i1 %exitcond121.not, label %.loopexit, label %.preheader84, !llvm.loop !308

.loopexit:                                        ; preds = %._crit_edge93, %._crit_edge108, %bb.c, %.preheader85
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @unpack_gray(ptr nofree noundef readonly captures(none) %0, ptr nofree writeonly captures(none) %.0.val, i32 %.64.val, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 536870912) %3, i32 noundef %4) unnamed_addr #12 {
bb.a:
  %i.a = mul nsw i32 %2, %.64.val
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds i8, ptr %.0.val, i64 %i.b ; 3 uses
  %or.cond.i = icmp ugt i32 %3, 268435455
  %i.d = shl nuw nsw i32 %3, 3
  %i.e = select i1 %or.cond.i, i32 -8, i32 %i.d   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.e, 2147483135
  %i.f = icmp ne ptr %1, null
  %or.cond3.i.i = and i1 %i.f, %or.cond.i.i
  %i.g = add nuw nsw i32 %i.e, 8
  %i.h = select i1 %or.cond3.i.i, i32 %i.g, i32 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i32, ptr %i.i, align 8, !tbaa !78   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.l = sub nsw i32 32, %4                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.j to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.4.01.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.n = lshr i32 %.sroa.4.01.epil.init, 3
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 1, !tbaa !80
  %i.r = tail call i32 @llvm.bswap.i32(i32 %i.q)
  %i.s = and i32 %.sroa.4.01.epil.init, 7
  %i.t = shl i32 %i.r, %i.s
  %i.u = lshr i32 %i.t, %i.l
  %i.v = trunc i32 %i.u to i16
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i16 %i.v, ptr %i.w, align 2, !tbaa !67
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 3 uses
  %.sroa.4.01 = phi i32 [ 0, %.lr.ph.new ], [ %i.as, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.x = lshr i32 %.sroa.4.01, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !80
  %i.ab = tail call i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = and i32 %.sroa.4.01, 7
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = lshr i32 %i.ad, %i.l
  %i.af = add i32 %.sroa.4.01, %4
  %i.ag = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.af) ; 3 uses
  %i.ah = trunc i32 %i.ae to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !67
  %i.aj = lshr i32 %i.ag, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !80
  %i.an = tail call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = and i32 %i.ag, 7
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, %i.l
  %i.ar = add i32 %i.ag, %4
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.ar) ; 2 uses
  %i.at = trunc i32 %i.aq to i16
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i16 %i.at, ptr %i.av, align 2, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !179
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @lzma_end(ptr noundef) local_unnamed_addr #13

declare i32 @ff_ccitt_unpack(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_lzw_decode_close(ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_packet_free(ptr noundef) local_unnamed_addr #2

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
