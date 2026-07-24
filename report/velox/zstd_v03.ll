inline.NumInlined: 289
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %.291.i.i = phi ptr [ %i.acg, %.lr.ph.i.i ], [ %.291.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.16990.i.i = phi ptr [ %i.aci, %.lr.ph.i.i ], [ %.16990.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %.291.i.i, i64 1
  %i.ach = load i8, ptr %.291.i.i, align 1, !tbaa !9
  %i.aci = getelementptr inbounds nuw i8, ptr %.16990.i.i, i64 1 ; 2 uses
  store i8 %i.ach, ptr %.16990.i.i, align 1, !tbaa !9
  %i.acj = icmp ult ptr %i.aci, %i.xn
  br i1 %i.acj, label %.lr.ph.i.i, label %ZSTD_execSequence.exit.i, !llvm.loop !53

.preheader186.i:                                  ; preds = %.preheader186.i.preheader171, %.preheader186.i
  %.09.i84.i.i = phi ptr [ %i.ack, %.preheader186.i ], [ %.09.i84.i.i.ph, %.preheader186.i.preheader171 ] ; 2 uses
  %.0.i85.i.i = phi ptr [ %i.acl, %.preheader186.i ], [ %.0.i85.i.i.ph, %.preheader186.i.preheader171 ] ; 2 uses
  %.0.val.i86.i.i = load i64, ptr %.0.i85.i.i, align 1
  store i64 %.0.val.i86.i.i, ptr %.09.i84.i.i, align 1
  %i.ack = getelementptr inbounds nuw i8, ptr %.09.i84.i.i, i64 8 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.0.i85.i.i, i64 8
  %i.acm = icmp ult ptr %i.ack, %i.xn
  br i1 %i.acm, label %.preheader186.i, label %ZSTD_execSequence.exit.i, !llvm.loop !54

ZSTD_execSequence.exit.i:                         ; preds = %.preheader186.i, %.lr.ph.i.i, %middle.block148, %middle.block, %vec.epilog.middle.block, %bb.cz
  %i.acn = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.xp
  %i.aco = icmp ugt i32 %i.wm, 64
  br i1 %i.aco, label %ZSTD_decompressSequences.exit, label %bb.bz

BIT_reloadDStream.exit.thread.i:                  ; preds = %BIT_reloadDStream.exit.i
  %i.acp = icmp ne i32 %.sroa.20.8.i, 64
  %i.acq = icmp ne ptr %.sroa.42112.8.i, %.786120.i.i
  %brmerge.i = select i1 %i.acq, i1 true, i1 %i.acp
  br i1 %brmerge.i, label %ZSTD_decompressSequences.exit, label %bb.da

bb.da:                                            ; preds = %BIT_reloadDStream.exit.thread.i
  %i.acr = ptrtoint ptr %.0138199.i to i64
  %i.acs = sub i64 %i.th, %i.acr                  ; 2 uses
  %i.act = icmp ugt ptr %.0138199.i, %i.cl
  br i1 %i.act, label %ZSTD_decompressSequences.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acu = getelementptr inbounds nuw i8, ptr %.060202.i, i64 %i.acs ; 3 uses
  %i.acv = icmp ugt ptr %i.acu, %i.ck
  br i1 %i.acv, label %ZSTD_decompressSequences.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %.not71.i = icmp eq ptr %i.cl, %.0138199.i
  br i1 %.not71.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.not72.i = icmp eq ptr %.060202.i, %.0138199.i
  br i1 %.not72.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.060202.i, ptr align 1 %.0138199.i, i64 %i.acs, i1 false)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.464.i = phi ptr [ %i.acu, %bb.dd ], [ %.060202.i, %bb.dc ], [ %i.acu, %bb.de ]
  %i.acw = ptrtoint ptr %.464.i to i64
  %i.acx = ptrtoint ptr %1 to i64
  %i.acy = sub i64 %i.acw, %i.acx
  br label %ZSTD_decompressSequences.exit

ZSTD_decompressSequences.exit:                    ; preds = %ZSTD_execSequence.exit.i, %ZSTD_wildcopy.exit.i.i, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %ZSTD_decodeSequence.exit.i, %FSE_initDState.exit85.i, %FSE_initDState.exit94.i, %bb.k, %bb.n, %bb.a, %bb.df, %bb.db, %bb.da, %BIT_reloadDStream.exit.thread.i, %BIT_initDStream.exit.i, %bb.bn, %bb.bf, %bb.bd, %ZSTD_decodeSeqHeaders.exit.i, %ZSTD_decodeSeqHeaders.exit.thread.i, %ZSTD_decodeLiteralsBlock.exit.thread25
  %.0 = phi i64 [ -20, %bb.k ], [ -20, %ZSTD_decodeLiteralsBlock.exit.thread25 ], [ %.7.i.ph.i, %ZSTD_decodeSeqHeaders.exit.thread.i ], [ %i.acy, %bb.df ], [ %i.nw, %ZSTD_decodeSeqHeaders.exit.i ], [ -20, %BIT_reloadDStream.exit.thread.i ], [ -20, %BIT_initDStream.exit.i ], [ -20, %bb.da ], [ -70, %bb.db ], [ -20, %bb.bf ], [ -20, %bb.bd ], [ -20, %bb.bn ], [ -20, %bb.a ], [ -20, %bb.n ], [ -20, %FSE_initDState.exit94.i ], [ -20, %FSE_initDState.exit85.i ], [ -20, %ZSTD_execSequence.exit.i ], [ -20, %bb.ct ], [ -20, %ZSTD_wildcopy.exit.i.i ], [ -70, %bb.cs ], [ -20, %bb.cr ], [ -70, %bb.cq ], [ -20, %bb.cp ], [ -70, %ZSTD_decodeSequence.exit.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @HUF_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) #9 {
bb.a:
  %4 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %5 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %6 = alloca %struct.BIT_DStream_t, align 8      ; 18 uses
  %7 = alloca %struct.BIT_DStream_t, align 8      ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 8 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [4097 x i16], align 16            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8194) %i.e, i8 0, i64 8194, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 24 uses
  %i.g = call fastcc i64 @HUF_readStats(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.c, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.h = icmp ult i64 %i.g, -119
  br i1 %i.h, label %bb.b, label %HUF_readDTableX2.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 4, !tbaa !3    ; 12 uses
  %i.j = icmp ugt i32 %i.i, 12
  br i1 %i.j, label %HUF_readDTableX2.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = trunc nuw nsw i32 %i.i to i16
  store i16 %i.k, ptr %i.e, align 16, !tbaa !37
  %.not3940.i = icmp eq i32 %i.i, 0
  br i1 %.not3940.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  %xtraiter = and i64 %i.l, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.l, 14
  br label %.lr.ph.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %.03641.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.ac, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod128 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod128)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.epil.init
  store i32 %.03641.i.epil.init, ptr %i.n, align 4, !tbaa !3
  br label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i.epil.preheader, %.preheader.i.loopexit.unr-lcssa, %bb.c
  %i.o = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %HUF_readDTableX2.exit.thread23, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.p = trunc nuw nsw i32 %i.i to i8
  %i.q = add nuw nsw i8 %i.p, 1
  %wide.trip.count56.i = zext i32 %i.o to i64
  br label %bb.d

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.03641.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.ac, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = trunc i64 %indvars.iv.i to i32
  %i.u = add nsw i32 %i.t, -1
  %i.v = shl i32 %i.s, %i.u
  %i.w = add i32 %i.v, %.03641.i                  ; 2 uses
  store i32 %.03641.i, ptr %i.r, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = trunc i64 %indvars.iv.next.i to i32
  %i.aa = add i32 %i.z, -1
  %i.ab = shl i32 %i.y, %i.aa
  %i.ac = add i32 %i.ab, %i.w                     ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !55

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph46.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph46.i ], [ %indvars.iv.next54.i, %._crit_edge.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv53.i
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9   ; 3 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = trunc i64 %indvars.iv53.i to i8         ; 3 uses
  %i.aj = sub i8 %i.q, %i.ae                      ; 3 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = add i32 %i.ah, %i.am                    ; 3 uses
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.d
  %i.ap = zext i32 %i.am to i64                   ; 6 uses
  %wide.trip.count51.i = zext i32 %i.an to i64    ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count51.i, %i.ap ; 7 uses
  %min.iters.check = icmp ult i64 %i.aq, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp ult i64 %i.aq, 16
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aq, 12
  %n.vec = and i64 %i.aq, -16                     ; 4 uses
  %i.ar = add nsw i64 %n.vec, %i.ap
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert100 = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert100, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = add i64 %index, %i.ap                   ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.as
  %i.au = getelementptr [2 x i8], ptr %i.f, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <16 x i8> %interleaved.vec, ptr %i.at, align 2, !tbaa !9
  store <16 x i8> %interleaved.vec, ptr %i.av, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph44.i.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.aq, -4                   ; 3 uses
  %i.ax = add nsw i64 %n.vec104, %i.ap
  %broadcast.splatinsert105 = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %broadcast.splatinsert107 = insertelement <4 x i8> poison, i8 %i.aj, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.f, i64 %i.ap
  %interleaved.vec110 = shufflevector <4 x i8> %broadcast.splatinsert105, <4 x i8> %broadcast.splatinsert107, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index109 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next111, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index109
  store <8 x i8> %interleaved.vec110, ptr %gep, align 2, !tbaa !9
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !58

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n112 = icmp eq i64 %i.aq, %n.vec104
  br i1 %cmp.n112, label %._crit_edge.i, label %.lr.ph44.i.preheader

.lr.ph44.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.i.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader, %.lr.ph44.i
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %.lr.ph44.i ], [ %indvars.iv48.i.ph, %.lr.ph44.i.preheader ] ; 2 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv48.i ; 2 uses
  store i8 %i.ai, ptr %i.az, align 2, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store i8 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 1, !tbaa !9
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %._crit_edge.i, label %.lr.ph44.i, !llvm.loop !59

._crit_edge.i:                                    ; preds = %.lr.ph44.i, %middle.block, %vec.epilog.middle.block, %bb.d
  store i32 %i.an, ptr %i.al, align 4, !tbaa !3
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count56.i
  br i1 %exitcond57.not.i, label %HUF_readDTableX2.exit.thread23, label %bb.d, !llvm.loop !60

HUF_readDTableX2.exit.thread:                     ; preds = %bb.b, %bb.a
  %.0.i.ph = phi i64 [ %i.g, %bb.a ], [ -44, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %HUF_decompress4X2_usingDTable.exit

HUF_readDTableX2.exit.thread23:                   ; preds = %._crit_edge.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not17 = icmp ult i64 %i.g, %3
  br i1 %.not17, label %bb.e, label %HUF_decompress4X2_usingDTable.exit

bb.e:                                             ; preds = %HUF_readDTableX2.exit.thread23
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 10 uses
  %i.bb = sub nuw i64 %3, %i.g                    ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 10
  br i1 %i.bc, label %HUF_decompress4X2_usingDTable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %.val149.i = load i16, ptr %i.ba, align 1       ; 5 uses
  %i.be = zext i16 %.val149.i to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %.val148.i = load i16, ptr %i.bf, align 1       ; 5 uses
  %i.bg = zext i16 %.val148.i to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %.val.i = load i16, ptr %i.bh, align 1          ; 5 uses
  %i.bi = zext i16 %.val.i to i64                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 6 ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.be  ; 12 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bg  ; 12 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bi  ; 3 uses
  %i.bn = add i64 %1, 3
  %i.bo = lshr i64 %i.bn, 2                       ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo ; 5 uses
  %i.bs = add nuw nsw i64 %i.be, 6
  %i.bt = add nuw nsw i64 %i.bs, %i.bg
  %i.bu = add nuw nsw i64 %i.bt, %i.bi            ; 2 uses
  %i.bv = sub i64 %i.bb, %i.bu
  %i.bw = icmp ugt i64 %i.bu, %i.bb
  br i1 %i.bw, label %BIT_initDStream.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = icmp eq i16 %.val149.i, 0
  br i1 %i.bx, label %BIT_initDStream.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = icmp ugt i16 %.val149.i, 7
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.bj, ptr %i.bz, align 8, !tbaa !61
  br i1 %i.by, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds i8, ptr %i.bk, i64 -8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !63
  %.val.i.i = load i64, ptr %i.ca, align 1        ; 2 uses
  store i64 %.val.i.i, ptr %4, align 8, !tbaa !64
  %i.cc = lshr i64 %.val.i.i, 56                  ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %BIT_initDStream.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.i
  %i.ce = trunc nuw nsw i64 %i.cc to i32
  %i.cf = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ce, i1 true)
  %i.cg = xor i32 %i.cf, 31
  %i.ch = sub nuw nsw i32 8, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !65
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bj, ptr %i.cj, align 8, !tbaa !63
  %i.ck = load i8, ptr %i.bj, align 1, !tbaa !9
  %i.cl = zext i8 %i.ck to i64                    ; 7 uses
  store i64 %i.cl, ptr %4, align 8, !tbaa !64
  switch i16 %.val149.i, label %bb.q [
    i16 7, label %bb.k
    i16 6, label %bb.l
    i16 5, label %bb.m
    i16 4, label %bb.n
    i16 3, label %bb.o
    i16 2, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 48
  %i.cq = or disjoint i64 %i.cp, %i.cl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cr = phi i64 [ %i.cq, %bb.k ], [ %i.cl, %bb.j ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !9
  %i.cu = zext i8 %i.ct to i64
  %i.cv = shl nuw nsw i64 %i.cu, 40
  %i.cw = add nuw nsw i64 %i.cv, %i.cr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.cx = phi i64 [ %i.cw, %bb.l ], [ %i.cl, %bb.j ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = zext i8 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 32
  %i.dc = add nuw nsw i64 %i.db, %i.cx
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.dd = phi i64 [ %i.dc, %bb.m ], [ %i.cl, %bb.j ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = zext i8 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, 24
  %i.di = add nuw nsw i64 %i.dh, %i.dd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.dj = phi i64 [ %i.di, %bb.n ], [ %i.cl, %bb.j ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9
  %i.dm = zext i8 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 16
  %i.do = add nuw nsw i64 %i.dn, %i.dj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.j
end_hunk_0
begin_hunk_1_@HUF_decompress4X4:bb.a
  %i.abk = sub nsw i64 0, %i.abj
  %i.abl = getelementptr inbounds i8, ptr %i.qa, i64 %i.abk ; 2 uses
  %i.abm = and i32 %i.yp, 7
  %.val30.i227.i = load i64, ptr %i.abl, align 1
  br label %BIT_reloadDStream.exit234.i

bb.bi:                                            ; preds = %bb.bg
  %i.abn = icmp eq ptr %i.qa, %i.px
  br i1 %i.abn, label %BIT_reloadDStream.exit234.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.abo = lshr i32 %i.yp, 3                      ; 2 uses
  %i.abp = zext nneg i32 %i.abo to i64
  %i.abq = sub nsw i64 0, %i.abp
  %i.abr = getelementptr inbounds i8, ptr %i.qa, i64 %i.abq
  %i.abs = icmp ult ptr %i.abr, %i.px             ; 2 uses
  %i.abt = ptrtoint ptr %i.qa to i64
  %i.abu = sub i64 %i.abt, %i.pz
  %i.abv = trunc i64 %i.abu to i32
  %.024.i229.i = select i1 %i.abs, i32 %i.abv, i32 %i.abo ; 2 uses
  %.0.i230.i = zext i1 %i.abs to i32
  %i.abw = zext i32 %.024.i229.i to i64
  %i.abx = sub nsw i64 0, %i.abw
  %i.aby = getelementptr inbounds i8, ptr %i.qa, i64 %i.abx ; 2 uses
  %i.abz = shl i32 %.024.i229.i, 3
  %i.aca = sub i32 %i.yp, %i.abz
  %.val.i231.i = load i64, ptr %i.aby, align 1
  br label %BIT_reloadDStream.exit234.i

BIT_reloadDStream.exit234.i:                      ; preds = %bb.bj, %bb.bi, %bb.bh, %BIT_reloadDStream.exit225.i
  %i.acb = phi ptr [ %i.aby, %bb.bj ], [ %i.abl, %bb.bh ], [ %i.qa, %BIT_reloadDStream.exit225.i ], [ %i.qa, %bb.bi ] ; 2 uses
  %.val9.i182300.i = phi i32 [ %i.aca, %bb.bj ], [ %i.abm, %bb.bh ], [ %i.yp, %BIT_reloadDStream.exit225.i ], [ %i.yp, %bb.bi ] ; 2 uses
  %.val.i231273.i = phi i64 [ %.val.i231.i, %bb.bj ], [ %.val30.i227.i, %bb.bh ], [ %.val.i231274275.i, %BIT_reloadDStream.exit225.i ], [ %.val.i231274275.i, %bb.bi ] ; 2 uses
  %.025.i228.i = phi i32 [ %.0.i230.i, %bb.bj ], [ 0, %bb.bh ], [ 3, %BIT_reloadDStream.exit225.i ], [ 3, %bb.bi ]
  %i.acc = or i32 %i.abg, %.025.i228.i
  %i.acd = icmp eq i32 %i.acc, 0
  %i.ace = icmp ult ptr %i.yt, %i.pb
  %i.acf = select i1 %i.acd, i1 %i.ace, i1 false
  br i1 %i.acf, label %bb.aq, label %._crit_edge.i21, !llvm.loop !89

._crit_edge.i21:                                  ; preds = %BIT_reloadDStream.exit234.i
  store i32 %.val9.i291.i, ptr %i.pf, align 8, !tbaa !65
  store i32 %.val9.i178294.i, ptr %i.pg, align 8, !tbaa !65
  store i32 %.val9.i180297.i, ptr %i.ph, align 8, !tbaa !65
  store i32 %.val9.i182300.i, ptr %i.pi, align 8, !tbaa !65
  store ptr %i.zo, ptr %i.pj, align 8
  store ptr %i.aaj, ptr %i.pk, align 8
  store ptr %i.abf, ptr %i.pl, align 8
  store ptr %i.acb, ptr %i.pm, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i21, %bb.ap
  %.val.i231274.lcssa.i = phi i64 [ %.val.i231273.i, %._crit_edge.i21 ], [ %.promoted272.i, %bb.ap ]
  %.val.i222271.lcssa.i = phi i64 [ %.val.i222270.i, %._crit_edge.i21 ], [ %.promoted269.i, %bb.ap ]
  %.val.i213268.lcssa.i = phi i64 [ %.val.i213267.i, %._crit_edge.i21 ], [ %.promoted266.i, %bb.ap ]
  %.val.i207265.lcssa.i = phi i64 [ %.val.i207264.i, %._crit_edge.i21 ], [ %.promoted.i, %bb.ap ]
  %.0149.lcssa.i = phi ptr [ %i.xd, %._crit_edge.i21 ], [ %0, %bb.ap ] ; 2 uses
  %.0146.lcssa.i = phi ptr [ %i.xr, %._crit_edge.i21 ], [ %i.hp, %bb.ap ] ; 2 uses
  %.0143.lcssa.i = phi ptr [ %i.yf, %._crit_edge.i21 ], [ %i.hq, %bb.ap ] ; 2 uses
  %.0142.lcssa.i = phi ptr [ %i.yt, %._crit_edge.i21 ], [ %i.hr, %bb.ap ]
  store i64 %.val.i207265.lcssa.i, ptr %4, align 8
  store i64 %.val.i213268.lcssa.i, ptr %5, align 8
  store i64 %.val.i222271.lcssa.i, ptr %6, align 8
  store i64 %.val.i231274.lcssa.i, ptr %7, align 8
  %i.acg = icmp ugt ptr %.0149.lcssa.i, %i.hp
  %i.ach = icmp ugt ptr %.0146.lcssa.i, %i.hq
  %or.cond.i = select i1 %i.acg, i1 true, i1 %i.ach
  %i.aci = icmp ugt ptr %.0143.lcssa.i, %i.hr
  %or.cond163.i = select i1 %or.cond.i, i1 true, i1 %i.aci
  br i1 %or.cond163.i, label %BIT_initDStream.exit.thread.i, label %BIT_endOfDStream.exit.i

BIT_endOfDStream.exit.i:                          ; preds = %bb.bk
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0149.lcssa.i, ptr noundef %4, ptr noundef %i.hp, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0146.lcssa.i, ptr noundef %5, ptr noundef %i.hq, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0143.lcssa.i, ptr noundef %6, ptr noundef %i.hr, ptr noundef readonly %i.k, i32 noundef 12)
  call fastcc void @HUF_decodeStreamX4(ptr noundef %.0142.lcssa.i, ptr noundef %7, ptr noundef %i.hd, ptr noundef readonly %i.k, i32 noundef 12)
  %i.acj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.acl = load i32, ptr %i.ack, align 8
  %.fr159 = freeze i32 %i.acl
  %i.acm = icmp ne i32 %.fr159, 64
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aco = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.acp = load i32, ptr %i.aco, align 8
  %.fr = freeze i32 %i.acp
  %i.acq = icmp ne i32 %.fr, 64
  %i.acr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acs = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.act = load i32, ptr %i.acs, align 8
  %.fr161 = freeze i32 %i.act
  %i.acu = icmp ne i32 %.fr161, 64
  %i.acv = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.acw = load <2 x ptr>, ptr %i.acj, align 8, !tbaa !70 ; 2 uses
  %i.acx = load <2 x ptr>, ptr %i.acn, align 8, !tbaa !70 ; 2 uses
  %i.acy = load <2 x ptr>, ptr %i.acr, align 8, !tbaa !70 ; 2 uses
  %i.acz = load <2 x ptr>, ptr %i.acv, align 8, !tbaa !70 ; 2 uses
  %i.ada = shufflevector <2 x ptr> %i.acw, <2 x ptr> %i.acx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.adb = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.adc = shufflevector <4 x ptr> %i.ada, <4 x ptr> %i.adb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.add = shufflevector <2 x ptr> %i.acw, <2 x ptr> %i.acx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ade = shufflevector <2 x ptr> %i.acy, <2 x ptr> %i.acz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.adf = shufflevector <4 x ptr> %i.add, <4 x ptr> %i.ade, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adg = icmp ne <4 x ptr> %i.adc, %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adi = load i32, ptr %i.adh, align 8
  %i.adj = icmp ne i32 %i.adi, 64
  %i.adk = freeze <4 x i1> %i.adg
  %i.adl = bitcast <4 x i1> %i.adk to i4
  %i.adm = icmp ne i4 %i.adl, 0
  %op.rdx = or i1 %i.adm, %i.acm
  %i.adn = or i1 %op.rdx, %i.acq
  %op.rdx156 = or i1 %i.adn, %i.acu
  %op.rdx157 = select i1 %op.rdx156, i1 true, i1 %i.adj
  %..i = select i1 %op.rdx157, i64 -20, i64 %1
  br label %BIT_initDStream.exit.thread.i

BIT_initDStream.exit.thread.i:                    ; preds = %BIT_endOfDStream.exit.i, %bb.bk, %bb.ao, %bb.an, %bb.af, %bb.ad, %bb.ac, %bb.u, %bb.s, %bb.r, %bb.j, %bb.h, %bb.g
  %.0152.i = phi i64 [ %..i, %BIT_endOfDStream.exit.i ], [ -20, %bb.g ], [ -20, %bb.bk ], [ -72, %bb.s ], [ -72, %bb.h ], [ %i.os, %bb.ao ], [ -1, %bb.j ], [ -1, %bb.r ], [ -1, %bb.u ], [ -1, %bb.ac ], [ -1, %bb.af ], [ -1, %bb.an ], [ -72, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %HUF_decompress4X4_usingDTable.exit

HUF_decompress4X4_usingDTable.exit:               ; preds = %BIT_initDStream.exit.thread.i, %bb.f, %HUF_readDTableX4.exit.thread, %HUF_readDTableX4.exit
  %.0 = phi i64 [ %.0.i.ph, %HUF_readDTableX4.exit.thread ], [ -20, %bb.f ], [ -72, %HUF_readDTableX4.exit ], [ %.0152.i, %BIT_initDStream.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 7 uses
  %i.b = alloca [256 x i16], align 16             ; 8 uses
  %i.c = alloca [4097 x i32], align 16            ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %4, align 1, !tbaa !9       ; 4 uses
  %i.g = zext i8 %i.f to i64                      ; 14 uses
  %i.h = icmp slt i8 %i.f, 0
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = icmp samesign ugt i8 %i.f, -15
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr [4 x i8], ptr @HUF_readStats.l, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 -968
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3
  %i.m = sext i32 %i.l to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %0, i8 1, i64 256, i1 false)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.n = add nsw i64 %i.g, -127                   ; 5 uses
  %i.o = add nsw i64 %i.g, -126
  %i.p = lshr i64 %i.o, 1                         ; 2 uses
  %.not83 = icmp ult i64 %i.p, %5
  br i1 %.not83, label %iter.check, label %.critedge

iter.check:                                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 4 uses
  %umax76 = tail call i64 @llvm.umax.i64(i64 %i.n, i64 2)
  %i.r = add nsw i64 %umax76, -1
  %i.s = lshr i64 %i.r, 1
  %i.t = add nuw i64 %i.s, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.n, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add nsw i64 %i.g, -128
  %i.v = lshr i64 %i.u, 1
  %i.w = and i64 %i.g, 126
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep = getelementptr i8, ptr %i.x, i64 2
  %i.y = getelementptr i8, ptr %4, i64 %i.v
  %scevgep75 = getelementptr i8, ptr %i.y, i64 2
  %bound0 = icmp ult ptr %0, %scevgep75
  %bound1 = icmp ult ptr %i.q, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.n, 31
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.t, 12
  %n.vec = and i64 %i.t, -16                      ; 4 uses
  %i.z = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = shl i64 %index, 1                       ; 2 uses
  %6 = and i64 %index, 9223372036854775792
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %6 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !90
  %wide.load78 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !9, !alias.scope !90
  %i.ad = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.ae = lshr <8 x i8> %wide.load78, splat (i8 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load79 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !90
  %wide.load80 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !9, !alias.scope !90
  %i.ai = and <8 x i8> %wide.load79, splat (i8 15)
  %i.aj = and <8 x i8> %wide.load80, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.ad, <8 x i8> %i.ai, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.af, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %interleaved.vec81 = shufflevector <8 x i8> %i.ae, <8 x i8> %i.aj, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec81, ptr %i.ah, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec83 = and i64 %i.t, -4                     ; 3 uses
  %i.al = shl i64 %n.vec83, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index84 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next88, %vec.epilog.vector.body ] ; 3 uses
  %i.am = shl i64 %index84, 1
  %7 = and i64 %index84, 9223372036854775804
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %7
  %wide.load85 = load <4 x i8>, ptr %i.an, align 1, !tbaa !9, !alias.scope !90 ; 2 uses
  %i.ao = lshr <4 x i8> %wide.load85, splat (i8 4)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.aq = and <4 x i8> %wide.load85, splat (i8 15)
  %interleaved.vec87 = shufflevector <4 x i8> %i.ao, <4 x i8> %i.aq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec87, ptr %i.ap, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %index.next88 = add nuw i64 %index84, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !96

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n89 = icmp eq i64 %i.t, %n.vec83
  br i1 %cmp.n89, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.as = phi i64 [ %i.bc, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.at = lshr exact i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = lshr i8 %i.av, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !9
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !9
  %i.az = and i8 %i.ay, 15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !9
  %i.bc = add nuw nsw i64 %i.as, 2                ; 2 uses
  %i.bd = icmp samesign ugt i64 %i.n, %i.bc
  br i1 %i.bd, label %.lr.ph, label %.loopexit.thread, !llvm.loop !97

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %1, i8 0, i64 68, i1 false)
  br label %.lr.ph166.preheader

bb.f:                                             ; preds = %bb.b
  %.not81 = icmp ugt i64 %5, %i.g
  br i1 %.not81, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 255, ptr %i.e, align 4, !tbaa !3
  %i.bf = icmp samesign ult i8 %i.f, 2
  br i1 %i.bf, label %FSE_decompress.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bg = call fastcc i64 @FSE_readNCount(ptr noundef %i.b, ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull %i.be, i64 noundef range(i64 0, 128) %i.g) ; 5 uses
  %i.bh = icmp ult i64 %i.bg, -119
  br i1 %i.bh, label %bb.i, label %FSE_decompress.exit.thread

bb.i:                                             ; preds = %bb.h
  %.not21.i = icmp ult i64 %i.bg, %i.g
  br i1 %.not21.i, label %bb.j, label %FSE_decompress.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bi = load i32, ptr %i.e, align 4, !tbaa !3   ; 3 uses
  %i.bj = load i32, ptr %i.d, align 4, !tbaa !3   ; 11 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 19 uses
  %i.bl = shl nuw i32 1, %i.bj                    ; 5 uses
  %i.bm = add i32 %i.bl, -1                       ; 5 uses
  %i.bn = lshr i32 %i.bl, 1
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = add nuw nsw i32 %i.bo, 3
  %i.bq = add nuw nsw i32 %i.bp, %i.bn            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.br = icmp ugt i32 %i.bi, 255
  br i1 %i.br, label %FSE_buildDTable.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = icmp ugt i32 %i.bj, 12
  br i1 %i.bs, label %FSE_buildDTable.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sext.i.i = shl nuw nsw i32 32768, %i.bj
  %i.bt = lshr exact i32 %sext.i.i, 16            ; 3 uses
  %i.bu = add nuw nsw i32 %i.bi, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.bu to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bv = icmp eq i32 %i.bi, 0
  br i1 %i.bv, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %wide.trip.count.i.i, 510
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.s ] ; 5 uses
  %.06782.i.i = phi i16 [ 1, %.new ], [ %.269.i.i.1, %bb.s ] ; 2 uses
  %.07081.i.i = phi i32 [ %i.bm, %.new ], [ %.171.i.i.1, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.s ]
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.bx = load i16, ptr %i.bw, align 4, !tbaa !37 ; 3 uses
  %i.by = icmp eq i16 %i.bx, -1
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = trunc i64 %indvars.iv.i.i to i8
  %i.ca = add i32 %.07081.i.i, -1
  %i.cb = zext i32 %.07081.i.i to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i8 %i.bz, ptr %i.cd, align 2, !tbaa !33
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ce = sext i16 %i.bx to i32
  %.not78.i.i = icmp sgt i32 %i.bt, %i.ce
  %spec.select.i.i = select i1 %.not78.i.i, i16 %.06782.i.i, i16 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i = phi i16 [ 1, %bb.n ], [ %i.bx, %bb.o ]
  %.171.i.i = phi i32 [ %i.ca, %bb.n ], [ %.07081.i.i, %bb.o ] ; 3 uses
  %.269.i.i = phi i16 [ %.06782.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store i16 %.sink.i.i, ptr %i.cf, align 4, !tbaa !37
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next.i.i
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !37 ; 3 uses
  %i.ci = icmp eq i16 %i.ch, -1
  br i1 %i.ci, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = sext i16 %i.ch to i32
  %.not78.i.i.1 = icmp sgt i32 %i.bt, %i.cj
  %spec.select.i.i.1 = select i1 %.not78.i.i.1, i16 %.269.i.i, i16 0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ck = trunc i64 %indvars.iv.next.i.i to i8
  %i.cl = add i32 %.171.i.i, -1
  %i.cm = zext i32 %.171.i.i to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  store i8 %i.ck, ptr %i.co, align 2, !tbaa !33
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink.i.i.1 = phi i16 [ 1, %bb.r ], [ %i.ch, %bb.q ]
  %.171.i.i.1 = phi i32 [ %i.cl, %bb.r ], [ %.171.i.i, %bb.q ] ; 3 uses
  %.269.i.i.1 = phi i16 [ %.269.i.i, %bb.r ], [ %spec.select.i.i.1, %bb.q ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  store i16 %.sink.i.i.1, ptr %i.cp, align 2, !tbaa !37
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.i.i.preheader.unr-lcssa, label %bb.m, !llvm.loop !38

.preheader79.i.i.preheader.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79.i.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader79.i.i.preheader.unr-lcssa, %bb.l
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %.06782.i.i.epil.init = phi i16 [ 1, %bb.l ], [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 2 uses
  %.07081.i.i.epil.init = phi i32 [ %i.bm, %bb.l ], [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod167 = trunc i32 %i.bu to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i.i.epil.init
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !37 ; 3 uses
  %i.cs = icmp eq i16 %i.cr, -1
  br i1 %i.cs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ct = sext i16 %i.cr to i32
  %.not78.i.i.epil = icmp sgt i32 %i.bt, %i.ct
  %spec.select.i.i.epil = select i1 %.not78.i.i.epil, i16 %.06782.i.i.epil.init, i16 0
  br label %.preheader79.i.i.preheader.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.cu = trunc i64 %indvars.iv.i.i.epil.init to i8
  %i.cv = add i32 %.07081.i.i.epil.init, -1
  %i.cw = zext i32 %.07081.i.i.epil.init to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  store i8 %i.cu, ptr %i.cy, align 2, !tbaa !33
  br label %.preheader79.i.i.preheader.epilog-lcssa

.preheader79.i.i.preheader.epilog-lcssa:          ; preds = %bb.u, %bb.t
  %.sink.i.i.epil = phi i16 [ 1, %bb.u ], [ %i.cr, %bb.t ]
  %.171.i.i.epil = phi i32 [ %i.cv, %bb.u ], [ %.07081.i.i.epil.init, %bb.t ]
  %.269.i.i.epil = phi i16 [ %.06782.i.i.epil.init, %bb.u ], [ %spec.select.i.i.epil, %bb.t ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i.i.epil.init
  store i16 %.sink.i.i.epil, ptr %i.cz, align 2, !tbaa !37
  br label %.preheader79.i.i.preheader

.preheader79.i.i.preheader:                       ; preds = %.preheader79.i.i.preheader.unr-lcssa, %.preheader79.i.i.preheader.epilog-lcssa
  %.171.i.i.lcssa = phi i32 [ %.171.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.171.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 3 uses
  %.269.i.i.lcssa = phi i16 [ %.269.i.i.1, %.preheader79.i.i.preheader.unr-lcssa ], [ %.269.i.i.epil, %.preheader79.i.i.preheader.epilog-lcssa ] ; 2 uses
  br label %.preheader79.i.i

.preheader79.i.i:                                 ; preds = %.preheader79.i.i.preheader, %._crit_edge.i.i
end_hunk_1
