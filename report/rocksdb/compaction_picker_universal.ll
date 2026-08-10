inline.NumInlined: 1516
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32PickCompactionWithSortedRunRangeEmmNS_16CompactionReasonE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val80 = load ptr, ptr %i.b, align 8, !tbaa !231 ; 6 uses
  %i.c = add nsw i64 %2, 1
  %i.d = add i64 %1, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %i.d)
  %i.e = sub i64 %umax, %1                        ; 6 uses
  %min.iters.check = icmp ult i64 %i.e, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check250 = icmp ult i64 %i.e, 17
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 15                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = select i1 %i.g, i64 16, i64 %i.f         ; 2 uses
  %n.vec = sub i64 %i.e, %i.h                     ; 3 uses
  %i.i = add i64 %1, %n.vec                       ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi251 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi252 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi253 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [40 x i8], ptr %.val80, <4 x i64> %vec.ind
  %wide.gep254 = getelementptr inbounds nuw [40 x i8], ptr %.val80, <4 x i64> %step.add
  %wide.gep255 = getelementptr inbounds nuw [40 x i8], ptr %.val80, <4 x i64> %step.add.2
  %wide.gep256 = getelementptr inbounds nuw [40 x i8], ptr %.val80, <4 x i64> %step.add.3
  %wide.gep257 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 16
  %wide.gep258 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep254, i64 16
  %wide.gep259 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep255, i64 16
  %wide.gep260 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep256, i64 16
  %wide.masked.gather = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep257, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather261 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep258, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather262 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep259, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather263 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep260, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.j = add <4 x i64> %wide.masked.gather, %vec.phi ; 2 uses
  %i.k = add <4 x i64> %wide.masked.gather261, %vec.phi251 ; 2 uses
  %i.l = add <4 x i64> %wide.masked.gather262, %vec.phi252 ; 2 uses
  %i.m = add <4 x i64> %wide.masked.gather263, %vec.phi253 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !536

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.k, %i.j
  %bin.rdx264 = add <4 x i64> %i.l, %bin.rdx
  %bin.rdx265 = add <4 x i64> %i.m, %bin.rdx264
  %i.o = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx265) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.h, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !510

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.o, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.i, %vec.epilog.iter.check ], [ %1, %vector.main.loop.iter.check ]
  %i.p = and i64 %i.e, 3                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 4, i64 %i.p
  %n.vec266 = sub i64 %i.e, %i.r                  ; 2 uses
  %i.s = add i64 %1, %n.vec266
  %i.t = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  %broadcast.splatinsert267 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat268 = shufflevector <4 x i64> %broadcast.splatinsert267, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction269 = add <4 x i64> %broadcast.splat268, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index270 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next276, %vec.epilog.vector.body ]
  %vec.phi271 = phi <4 x i64> [ %i.t, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %vec.ind272 = phi <4 x i64> [ %induction269, %vec.epilog.ph ], [ %vec.ind.next277, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep273 = getelementptr inbounds nuw [40 x i8], ptr %.val80, <4 x i64> %vec.ind272
  %wide.gep274 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep273, i64 16
  %wide.masked.gather275 = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep274, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.u = add <4 x i64> %wide.masked.gather275, %vec.phi271 ; 2 uses
  %index.next276 = add nuw i64 %index270, 4       ; 2 uses
  %vec.ind.next277 = add <4 x i64> %vec.ind272, splat (i64 4)
  %i.v = icmp eq i64 %index.next276, %n.vec266
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !537

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.u)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.051179.ph = phi i64 [ 0, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  %.052178.ph = phi i64 [ %1, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.bp, %vec.epilog.scalar.ph ] ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !51, !align !52 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !196, !nonnull !51, !align !52
  %i.aa = getelementptr i8, ptr %i.x, i64 776
  %.val81 = load ptr, ptr %i.aa, align 8          ; 2 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 784
  %.val82 = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %i.z, i64 320
  %.val83 = load i32, ptr %i.ac, align 8, !tbaa !229
  %i.ad = sub i32 100, %.val83
  %i.ae = zext i32 %i.ad to i64
  %i.af = mul i64 %.051.lcssa, %i.ae
  %i.ag = udiv i64 %i.af, 100
  %i.ah = ptrtoint ptr %.val82 to i64
  %i.ai = ptrtoint ptr %.val81 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %i.al = add nsw i64 %i.ak, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.c
  %i.am = phi i64 [ %i.aw, %bb.c ], [ 0, %._crit_edge ]
  %.0197.i = phi i32 [ %i.av, %bb.c ], [ 0, %._crit_edge ] ; 2 uses
  %.0206.i = phi i64 [ %i.au, %bb.c ], [ 0, %._crit_edge ] ; 2 uses
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %.val81, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !538 ; 3 uses
  %i.aq = icmp ugt i64 %i.ap, %.051.lcssa
  br i1 %i.aq, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.ar = sub i64 %.0206.i, %.051.lcssa
  %i.as = add i64 %i.ar, %i.ap
  %i.at = icmp ugt i64 %i.as, %i.ag
  br i1 %i.at, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.au = add i64 %i.ap, %.0206.i
  %i.av = add i32 %.0197.i, 1                     ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = icmp ugt i64 %i.al, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, !llvm.loop !540

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit: ; preds = %bb.b, %bb.c, %._crit_edge
  %.019.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.av, %bb.c ], [ %.0197.i, %bb.b ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val79 = load ptr, ptr %i.ay, align 8, !tbaa !231
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %.val79, i64 %1
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !242 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !180, !range !138, !noundef !51
  %i.bf = trunc nuw i8 %i.be to i1
  %i.bg = tail call noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288) %i.bc, i1 noundef zeroext %i.bf) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bh = add i32 %i.bg, 1                        ; 5 uses
  %i.bi = sext i32 %i.bh to i64                   ; 7 uses
  %i.bj = icmp slt i32 %i.bg, -1
  br i1 %i.bj, label %.noexc, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #31
  unreachable

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  %.not.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i, label %.thread246, label %iter.check306

.thread246:                                       ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %.preheader

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.051179 = phi i64 [ %i.bp, %vec.epilog.scalar.ph ], [ %.051179.ph, %vec.epilog.scalar.ph.preheader ]
  %.052178 = phi i64 [ %i.bq, %vec.epilog.scalar.ph ], [ %.052178.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %.val80, i64 %.052178
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !253
  %i.bp = add i64 %i.bo, %.051179                 ; 2 uses
  %i.bq = add i64 %.052178, 1                     ; 2 uses
  %.not = icmp ugt i64 %i.bq, %2
  br i1 %.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !541

iter.check306:                                    ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.br = mul nuw nsw i64 %i.bi, 56               ; 3 uses
  %i.bs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #32 ; 10 uses
  store ptr %i.bs, ptr %4, align 8, !tbaa !387
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %i.bi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bs, i8 0, i64 %i.br, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !373
  store ptr %scevgep.i.i.i.i.i, ptr %i.bu, align 8, !tbaa !370
  %min.iters.check280 = icmp ult i32 %i.bh, 4
  br i1 %min.iters.check280, label %.lr.ph182.preheader, label %vector.main.loop.iter.check281

vector.main.loop.iter.check281:                   ; preds = %iter.check306
  %min.iters.check282 = icmp ult i32 %i.bh, 32
  br i1 %min.iters.check282, label %vec.epilog.ph310, label %vector.ph283

vector.ph283:                                     ; preds = %vector.main.loop.iter.check281
  %n.vec284 = and i64 %i.bi, -32                  ; 4 uses
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat286
  %invariant.op341 = add <8 x i32> splat (i32 16), %broadcast.splat286
  %invariant.op343 = add <8 x i32> splat (i32 24), %broadcast.splat286
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph283
  %index288 = phi i64 [ 0, %vector.ph283 ], [ %index.next301, %vector.body287 ]
  %vec.ind289 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph283 ], [ %vec.ind.next302, %vector.body287 ] ; 5 uses
  %vec.ind290 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph283 ], [ %vec.ind.next303, %vector.body287 ] ; 5 uses
  %step.add291 = add nuw <8 x i64> %vec.ind289, splat (i64 8)
  %step.add.2292 = add nuw <8 x i64> %vec.ind289, splat (i64 16)
  %step.add.3293 = add nuw <8 x i64> %vec.ind289, splat (i64 24)
  %i.bw = add nsw <8 x i32> %broadcast.splat286, %vec.ind290
  %.reass = add <8 x i32> %vec.ind290, %invariant.op
  %.reass342 = add <8 x i32> %vec.ind290, %invariant.op341
  %.reass344 = add <8 x i32> %vec.ind290, %invariant.op343
  %wide.gep297 = getelementptr inbounds nuw [56 x i8], ptr %i.bs, <8 x i64> %vec.ind289
  %wide.gep298 = getelementptr inbounds nuw [56 x i8], ptr %i.bs, <8 x i64> %step.add291
  %wide.gep299 = getelementptr inbounds nuw [56 x i8], ptr %i.bs, <8 x i64> %step.add.2292
  %wide.gep300 = getelementptr inbounds nuw [56 x i8], ptr %i.bs, <8 x i64> %step.add.3293
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.bw, <8 x ptr> align 8 %wide.gep297, <8 x i1> splat (i1 true)), !tbaa !354
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass, <8 x ptr> align 8 %wide.gep298, <8 x i1> splat (i1 true)), !tbaa !354
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass342, <8 x ptr> align 8 %wide.gep299, <8 x i1> splat (i1 true)), !tbaa !354
  tail call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass344, <8 x ptr> align 8 %wide.gep300, <8 x i1> splat (i1 true)), !tbaa !354
  %index.next301 = add nuw i64 %index288, 32      ; 2 uses
  %vec.ind.next302 = add nuw <8 x i64> %vec.ind289, splat (i64 32)
  %vec.ind.next303 = add <8 x i32> %vec.ind290, splat (i32 32)
  %i.bx = icmp eq i64 %index.next301, %n.vec284
  br i1 %i.bx, label %middle.block304, label %vector.body287, !llvm.loop !542

middle.block304:                                  ; preds = %vector.body287
  %cmp.n = icmp eq i64 %n.vec284, %i.bi
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check308

vec.epilog.iter.check308:                         ; preds = %middle.block304
  %i.by = and i32 %i.bh, 28
  %min.epilog.iters.check309 = icmp eq i32 %i.by, 0
  br i1 %min.epilog.iters.check309, label %.lr.ph182.preheader, label %vec.epilog.ph310, !prof !543

vec.epilog.ph310:                                 ; preds = %vector.main.loop.iter.check281, %vec.epilog.iter.check308
  %vec.epilog.resume.val305 = phi i64 [ %n.vec284, %vec.epilog.iter.check308 ], [ 0, %vector.main.loop.iter.check281 ] ; 3 uses
  %n.vec311 = and i64 %i.bi, -4                   ; 3 uses
  %broadcast.splatinsert312 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat313 = shufflevector <4 x i32> %broadcast.splatinsert312, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert314 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val305, i64 0
  %broadcast.splat315 = shufflevector <4 x i64> %broadcast.splatinsert314, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction316 = or disjoint <4 x i64> %broadcast.splat315, <i64 0, i64 1, i64 2, i64 3>
  %i.bz = trunc nsw i64 %vec.epilog.resume.val305 to i32
  %broadcast.splatinsert317 = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %broadcast.splat318 = shufflevector <4 x i32> %broadcast.splatinsert317, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction319 = or disjoint <4 x i32> %broadcast.splat318, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body320

vec.epilog.vector.body320:                        ; preds = %vec.epilog.vector.body320, %vec.epilog.ph310
  %index321 = phi i64 [ %vec.epilog.resume.val305, %vec.epilog.ph310 ], [ %index.next325, %vec.epilog.vector.body320 ]
  %vec.ind322 = phi <4 x i64> [ %induction316, %vec.epilog.ph310 ], [ %vec.ind.next326, %vec.epilog.vector.body320 ] ; 2 uses
  %vec.ind323 = phi <4 x i32> [ %induction319, %vec.epilog.ph310 ], [ %vec.ind.next327, %vec.epilog.vector.body320 ] ; 2 uses
  %12 = add nsw <4 x i32> %broadcast.splat313, %vec.ind323
  %wide.gep324 = getelementptr inbounds nuw [56 x i8], ptr %i.bs, <4 x i64> %vec.ind322
  tail call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %12, <4 x ptr> align 8 %wide.gep324, <4 x i1> splat (i1 true)), !tbaa !354
  %index.next325 = add nuw i64 %index321, 4       ; 2 uses
  %vec.ind.next326 = add nuw <4 x i64> %vec.ind322, splat (i64 4)
  %vec.ind.next327 = add <4 x i32> %vec.ind323, splat (i32 4)
  %i.ca = icmp eq i64 %index.next325, %n.vec311
  br i1 %i.ca, label %vec.epilog.middle.block328, label %vec.epilog.vector.body320, !llvm.loop !544

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body320
  %cmp.n329 = icmp eq i64 %n.vec311, %i.bi
  br i1 %cmp.n329, label %.preheader, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %iter.check306, %vec.epilog.iter.check308, %vec.epilog.middle.block328
  %.054180.ph = phi i64 [ 0, %iter.check306 ], [ %n.vec284, %vec.epilog.iter.check308 ], [ %n.vec311, %vec.epilog.middle.block328 ]
  br label %.lr.ph182

.preheader:                                       ; preds = %.lr.ph182, %middle.block304, %vec.epilog.middle.block328, %.thread246
  %i.cb = phi ptr [ %i.bl, %.thread246 ], [ %i.bv, %middle.block304 ], [ %i.bv, %vec.epilog.middle.block328 ], [ %i.bv, %.lr.ph182 ] ; 2 uses
  %i.cc = phi ptr [ %i.bk, %.thread246 ], [ %i.bu, %middle.block304 ], [ %i.bu, %vec.epilog.middle.block328 ], [ %i.bu, %.lr.ph182 ] ; 2 uses
  br i1 %.not177, label %._crit_edge189, label %.lr.ph188

.lr.ph188:                                        ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cf = icmp samesign ult i32 %3, 10            ; 3 uses
  %.0.i.i = select i1 %i.cf, i64 1, i64 2         ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 17 ; 2 uses
  %.sroa.gep191 = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.ci = trunc nuw nsw i32 %3 to i8
  %i.cj = or disjoint i8 %i.ci, 48
  %i.ck = shl nuw nsw i32 %3, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.cl ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %.lr.ph182
  %.054180 = phi i64 [ %i.ct, %.lr.ph182 ], [ %.054180.ph, %.lr.ph182.preheader ] ; 3 uses
  %i.cq = trunc i64 %.054180 to i32
  %i.cr = add nsw i32 %i.ba, %i.cq
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.bs, i64 %.054180
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !354
  %i.ct = add nuw i64 %.054180, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.bi
  br i1 %exitcond.not, label %.preheader, label %.lr.ph182, !llvm.loop !545

._crit_edge189:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %.preheader
  %.val = load ptr, ptr %i.ay, align 8, !tbaa !231 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val76 = load ptr, ptr %i.cu, align 8, !tbaa !234
  %i.cv = ptrtoint ptr %.val76 to i64
  %i.cw = ptrtoint ptr %.val to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 40
  %i.cz = add nsw i64 %i.cy, -1
  %i.da = icmp eq i64 %2, %i.cz
  br i1 %i.da, label %bb.ai, label %bb.ah

bb.d:                                             ; preds = %.lr.ph188, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %.053187 = phi i64 [ %1, %.lr.ph188 ], [ %i.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112 ] ; 4 uses
  %.val78 = load ptr, ptr %i.ay, align 8, !tbaa !231
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %.val78, i64 %.053187 ; 6 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !242 ; 3 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %i.de = load ptr, ptr %4, align 8, !tbaa !387   ; 4 uses
  br i1 %i.dd, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !243 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !328 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !365
  %.not.i86 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.dg, ptr %i.dj, align 8, !tbaa !332
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !328
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !331 ; 4 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 6 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.h, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc87 unwind label %.loopexit.split-lp157

.noexc87:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #32
          to label %.noexc88 unwind label %.loopexit156 ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store ptr %i.dg, ptr %i.dz, align 8, !tbaa !332
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.i:                                             ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.i, %.noexc88
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dq) #28
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !331
  store ptr %i.eb, ptr %i.di, align 8, !tbaa !328
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ec, ptr %i.dk, align 8, !tbaa !365
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

.loopexit156:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit158 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.loopexit.split-lp157:                            ; preds = %bb.h
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.k:                                             ; preds = %bb.d
  %i.ed = sub nsw i32 %i.dc, %i.ba
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [56 x i8], ptr %i.de, i64 %i.ee ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.eh = load ptr, ptr %i.bb, align 8, !tbaa !82
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2712
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !272
  %i.ek = sext i32 %i.dc to i64
  %i.el = getelementptr inbounds [24 x i8], ptr %i.ej, i64 %i.ek ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !369 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !369 ; 2 uses
  %i.ep = icmp eq ptr %i.em, %i.eo
  br i1 %i.ep, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.k
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.eq, align 8, !tbaa !328
  %.pre192 = load ptr, ptr %i.er, align 8, !tbaa !365
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph185, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit98
  %i.es = phi ptr [ %.pre192, %.lr.ph185 ], [ %i.fm, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit98 ] ; 3 uses
  %i.et = phi ptr [ %.pre, %.lr.ph185 ], [ %i.fn, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit98 ] ; 3 uses
  %.sroa.0147.0183 = phi ptr [ %i.em, %.lr.ph185 ], [ %i.fo, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit98 ] ; 2 uses
  %i.eu = load ptr, ptr %.sroa.0147.0183, align 8, !tbaa !332 ; 2 uses
  %.not.i89 = icmp eq ptr %i.et, %i.es
  br i1 %.not.i89, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.eu, ptr %i.et, align 8, !tbaa !332
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.eq, align 8, !tbaa !328
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit98

bb.n:                                             ; preds = %bb.l
  %i.ew = load ptr, ptr %i.eg, align 8, !tbaa !331 ; 4 uses
  %i.ex = ptrtoint ptr %i.es to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey                    ; 6 uses
  %i.fa = icmp eq i64 %i.ez, 9223372036854775800
  br i1 %i.fa, label %bb.o, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i90

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc96 unwind label %.loopexit.split-lp

.noexc96:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i90: ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32PickCompactionToReduceSortedRunsEjj:bb.a
  %vec.phi516 = phi <4 x i64> [ zeroinitializer, %vector.ph509 ], [ %i.gp, %vector.body511 ]
  %step.add517 = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2518 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3519 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep520 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %vec.ind
  %wide.gep521 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add517
  %wide.gep522 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add.2518
  %wide.gep523 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %step.add.3519
  %wide.gep524 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep520, i64 16
  %wide.gep525 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep521, i64 16
  %wide.gep526 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep522, i64 16
  %wide.gep527 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep523, i64 16
  %wide.masked.gather528 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep524, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather529 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep525, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather530 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep526, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %wide.masked.gather531 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep527, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.gm = add <4 x i64> %wide.masked.gather528, %vec.phi513 ; 2 uses
  %i.gn = add <4 x i64> %wide.masked.gather529, %vec.phi514 ; 2 uses
  %i.go = add <4 x i64> %wide.masked.gather530, %vec.phi515 ; 2 uses
  %i.gp = add <4 x i64> %wide.masked.gather531, %vec.phi516 ; 2 uses
  %index.next532 = add nuw i64 %index512, 16      ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 16)
  %i.gq = icmp eq i64 %index.next532, %n.vec510
  br i1 %i.gq, label %vec.epilog.iter.check541, label %vector.body511, !llvm.loop !587

vec.epilog.iter.check541:                         ; preds = %vector.body511
  %bin.rdx534 = add <4 x i64> %i.gn, %i.gm
  %bin.rdx535 = add <4 x i64> %i.go, %bin.rdx534
  %bin.rdx536 = add <4 x i64> %i.gp, %bin.rdx535
  %i.gr = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx536) ; 2 uses
  %min.epilog.iters.check542 = icmp samesign ult i64 %i.gl, 5
  br i1 %min.epilog.iters.check542, label %vec.epilog.scalar.ph540.preheader, label %vec.epilog.ph543, !prof !510

vec.epilog.ph543:                                 ; preds = %vector.main.loop.iter.check507, %vec.epilog.iter.check541
  %vec.epilog.resume.val537 = phi i64 [ %n.vec510, %vec.epilog.iter.check541 ], [ 0, %vector.main.loop.iter.check507 ] ; 2 uses
  %bc.merge.rdx538 = phi i64 [ %i.gr, %vec.epilog.iter.check541 ], [ 0, %vector.main.loop.iter.check507 ]
  %i.gs = and i64 %umax505, 3                     ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  %i.gu = select i1 %i.gt, i64 4, i64 %i.gs
  %n.vec544 = sub nsw i64 %umax505, %i.gu         ; 2 uses
  %i.gv = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx538, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val537, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body545

vec.epilog.vector.body545:                        ; preds = %vec.epilog.vector.body545, %vec.epilog.ph543
  %index546 = phi i64 [ %vec.epilog.resume.val537, %vec.epilog.ph543 ], [ %index.next552, %vec.epilog.vector.body545 ]
  %vec.ind547 = phi <4 x i64> [ %induction, %vec.epilog.ph543 ], [ %vec.ind.next553, %vec.epilog.vector.body545 ] ; 2 uses
  %vec.phi548 = phi <4 x i64> [ %i.gv, %vec.epilog.ph543 ], [ %i.gw, %vec.epilog.vector.body545 ]
  %wide.gep549 = getelementptr inbounds nuw [40 x i8], ptr %.val215, <4 x i64> %vec.ind547
  %wide.gep550 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep549, i64 16
  %wide.masked.gather551 = call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %wide.gep550, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !253
  %i.gw = add <4 x i64> %wide.masked.gather551, %vec.phi548 ; 2 uses
  %index.next552 = add nuw i64 %index546, 4       ; 2 uses
  %vec.ind.next553 = add <4 x i64> %vec.ind547, splat (i64 4)
  %i.gx = icmp eq i64 %index.next552, %n.vec544
  br i1 %i.gx, label %vec.epilog.middle.block554, label %vec.epilog.vector.body545, !llvm.loop !588

vec.epilog.middle.block554:                       ; preds = %vec.epilog.vector.body545
  %i.gy = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.gw)
  br label %vec.epilog.scalar.ph540.preheader

vec.epilog.scalar.ph540.preheader:                ; preds = %vector.scevcheck, %iter.check539, %vec.epilog.iter.check541, %vec.epilog.middle.block554
  %indvars.iv.ph = phi i64 [ 0, %iter.check539 ], [ 0, %vector.scevcheck ], [ %n.vec510, %vec.epilog.iter.check541 ], [ %n.vec544, %vec.epilog.middle.block554 ]
  %.0155367.ph = phi i64 [ 0, %iter.check539 ], [ 0, %vector.scevcheck ], [ %i.gr, %vec.epilog.iter.check541 ], [ %i.gy, %vec.epilog.middle.block554 ]
  br label %vec.epilog.scalar.ph540

._crit_edge371:                                   ; preds = %vec.epilog.scalar.ph540, %.loopexit323
  %.1168464 = phi i1 [ %i.eo, %.loopexit323 ], [ %.1168463, %vec.epilog.scalar.ph540 ] ; 2 uses
  %.0155.lcssa = phi i64 [ 0, %.loopexit323 ], [ %i.io, %vec.epilog.scalar.ph540 ] ; 3 uses
  %i.gz = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !51, !align !52 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gz, i64 776
  %.val220 = load ptr, ptr %i.ha, align 8         ; 2 uses
  %i.hb = getelementptr i8, ptr %i.gz, i64 784
  %.val221 = load ptr, ptr %i.hb, align 8
  %i.hc = getelementptr i8, ptr %i.el, i64 320
  %.val222 = load i32, ptr %i.hc, align 8, !tbaa !229
  %i.hd = sub i32 100, %.val222
  %i.he = zext i32 %i.hd to i64
  %i.hf = mul i64 %.0155.lcssa, %i.he
  %i.hg = udiv i64 %i.hf, 100
  %i.hh = ptrtoint ptr %.val221 to i64
  %i.hi = ptrtoint ptr %.val220 to i64
  %i.hj = sub i64 %i.hh, %i.hi
  %i.hk = sdiv exact i64 %i.hj, 40
  %i.hl = add nsw i64 %i.hk, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.hl, 0
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge371, %bb.ab
  %i.hm = phi i64 [ %i.hw, %bb.ab ], [ 0, %._crit_edge371 ]
  %.0197.i = phi i32 [ %i.hv, %bb.ab ], [ 0, %._crit_edge371 ] ; 2 uses
  %.0206.i = phi i64 [ %i.hu, %bb.ab ], [ 0, %._crit_edge371 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %.val220, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !538 ; 3 uses
  %i.hq = icmp ugt i64 %i.hp, %.0155.lcssa
  br i1 %i.hq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i
  %i.hr = sub i64 %.0206.i, %.0155.lcssa
  %i.hs = add i64 %i.hr, %i.hp
  %i.ht = icmp ugt i64 %i.hs, %i.hg
  br i1 %i.ht, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i
  %i.hu = add i64 %i.hp, %.0206.i
  %i.hv = add i32 %.0197.i, 1                     ; 3 uses
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = icmp ugt i64 %i.hl, %i.hw
  br i1 %i.hx, label %.lr.ph.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit, !llvm.loop !540

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit: ; preds = %bb.aa, %bb.ab, %._crit_edge371
  %.019.lcssa.i = phi i32 [ 0, %._crit_edge371 ], [ %i.hv, %bb.ab ], [ %.0197.i, %bb.aa ]
  %.val214 = load ptr, ptr %i.k, align 8, !tbaa !231
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %.val214, i64 %.2143
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !242 ; 5 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 177 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !180, !range !138, !noundef !51
  %i.ie = trunc nuw i8 %i.id to i1
  %i.if = call noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288) %i.ib, i1 noundef zeroext %i.ie) ; 3 uses
  %.val194 = load ptr, ptr %i.k, align 8, !tbaa !231 ; 2 uses
  %.val195 = load ptr, ptr %i.l, align 8, !tbaa !234
  %i.ig = ptrtoint ptr %.val195 to i64
  %i.ih = ptrtoint ptr %.val194 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = sdiv exact i64 %i.ii, 40
  %i.ik = icmp eq i64 %i.ek, %i.ij
  br i1 %i.ik, label %bb.ad, label %bb.ac

vec.epilog.scalar.ph540:                          ; preds = %vec.epilog.scalar.ph540.preheader, %vec.epilog.scalar.ph540
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph540 ], [ %indvars.iv.ph, %vec.epilog.scalar.ph540.preheader ] ; 2 uses
  %.0155367 = phi i64 [ %i.io, %vec.epilog.scalar.ph540 ], [ %.0155367.ph, %vec.epilog.scalar.ph540.preheader ]
  %i.il = getelementptr inbounds nuw [40 x i8], ptr %.val215, i64 %indvars.iv
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load i64, ptr %i.im, align 8, !tbaa !253
  %i.io = add i64 %i.in, %.0155367                ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ip = and i64 %indvars.iv.next, 4294967295
  %i.iq = icmp ugt i64 %i.ek, %i.ip
  br i1 %i.iq, label %vec.epilog.scalar.ph540, label %._crit_edge371, !llvm.loop !589

bb.ac:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  %i.ir = getelementptr inbounds nuw [40 x i8], ptr %.val194, i64 %i.ek
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !242
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.is, i32 1)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit
  %.0144 = phi i32 [ %spec.select, %bb.ac ], [ %i.if, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9GetPathIdERKNS_18ImmutableCFOptionsERKNS_16MutableCFOptionsEm.exit ] ; 9 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.iu = load i8, ptr %i.it, align 8, !tbaa !91, !range !138, !noundef !51
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit: ; preds = %bb.ad
  %i.iw = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.ix = load i8, ptr %i.ic, align 1, !tbaa !180, !range !138, !noundef !51
  %i.iy = trunc nuw i8 %i.ix to i1
  %i.iz = call noundef i32 @_ZNK7rocksdb18VersionStorageInfo14MaxOutputLevelEb(ptr noundef nonnull align 16 dereferenceable(4288) %i.iw, i1 noundef zeroext %i.iy)
  %i.ja = icmp sgt i32 %.0144, 0
  %i.jb = icmp eq i32 %.0144, %i.iz
  %i.jc = and i1 %i.ja, %i.jb
  br i1 %i.jc, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread, label %.critedge3.thread.thread

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread: ; preds = %bb.ad, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.jd = add i32 %i.if, 1                        ; 5 uses
  %i.je = sext i32 %i.jd to i64                   ; 7 uses
  %i.jf = icmp slt i32 %i.if, -1
  br i1 %i.jf, label %.noexc, label %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #31
  unreachable

_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder28MeetsOutputLevelRequirementsEi.exit.thread
  %.not.i.i.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i.i.i, label %.thread, label %iter.check583

.thread:                                          ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.jg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.preheader

iter.check583:                                    ; preds = %_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ji = mul nuw nsw i64 %i.je, 56               ; 3 uses
  %i.jj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #32 ; 10 uses
  store ptr %i.jj, ptr %3, align 8, !tbaa !387
  %i.jk = getelementptr inbounds nuw [56 x i8], ptr %i.jj, i64 %i.je
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jj, i8 0, i64 %i.ji, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.jj, i64 %i.ji
  %i.jl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.jk, ptr %i.jm, align 8, !tbaa !373
  store ptr %scevgep.i.i.i.i.i, ptr %i.jl, align 8, !tbaa !370
  %min.iters.check557 = icmp ult i32 %i.jd, 4
  br i1 %min.iters.check557, label %.lr.ph375.preheader, label %vector.main.loop.iter.check558

vector.main.loop.iter.check558:                   ; preds = %iter.check583
  %min.iters.check559 = icmp ult i32 %i.jd, 32
  br i1 %min.iters.check559, label %vec.epilog.ph587, label %vector.ph560

vector.ph560:                                     ; preds = %vector.main.loop.iter.check558
  %n.vec561 = and i64 %i.je, -32                  ; 4 uses
  %broadcast.splatinsert562 = insertelement <8 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat563 = shufflevector <8 x i32> %broadcast.splatinsert562, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat563
  %invariant.op641 = add <8 x i32> splat (i32 16), %broadcast.splat563
  %invariant.op643 = add <8 x i32> splat (i32 24), %broadcast.splat563
  br label %vector.body564

vector.body564:                                   ; preds = %vector.body564, %vector.ph560
  %index565 = phi i64 [ 0, %vector.ph560 ], [ %index.next578, %vector.body564 ]
  %vec.ind566 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph560 ], [ %vec.ind.next579, %vector.body564 ] ; 5 uses
  %vec.ind567 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph560 ], [ %vec.ind.next580, %vector.body564 ] ; 5 uses
  %step.add568 = add nuw <8 x i64> %vec.ind566, splat (i64 8)
  %step.add.2569 = add nuw <8 x i64> %vec.ind566, splat (i64 16)
  %step.add.3570 = add nuw <8 x i64> %vec.ind566, splat (i64 24)
  %i.jn = add nsw <8 x i32> %broadcast.splat563, %vec.ind567
  %.reass = add <8 x i32> %vec.ind567, %invariant.op
  %.reass642 = add <8 x i32> %vec.ind567, %invariant.op641
  %.reass644 = add <8 x i32> %vec.ind567, %invariant.op643
  %wide.gep574 = getelementptr inbounds nuw [56 x i8], ptr %i.jj, <8 x i64> %vec.ind566
  %wide.gep575 = getelementptr inbounds nuw [56 x i8], ptr %i.jj, <8 x i64> %step.add568
  %wide.gep576 = getelementptr inbounds nuw [56 x i8], ptr %i.jj, <8 x i64> %step.add.2569
  %wide.gep577 = getelementptr inbounds nuw [56 x i8], ptr %i.jj, <8 x i64> %step.add.3570
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %i.jn, <8 x ptr> align 8 %wide.gep574, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass, <8 x ptr> align 8 %wide.gep575, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass642, <8 x ptr> align 8 %wide.gep576, <8 x i1> splat (i1 true)), !tbaa !354
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> %.reass644, <8 x ptr> align 8 %wide.gep577, <8 x i1> splat (i1 true)), !tbaa !354
  %index.next578 = add nuw i64 %index565, 32      ; 2 uses
  %vec.ind.next579 = add nuw <8 x i64> %vec.ind566, splat (i64 32)
  %vec.ind.next580 = add <8 x i32> %vec.ind567, splat (i32 32)
  %i.jo = icmp eq i64 %index.next578, %n.vec561
  br i1 %i.jo, label %middle.block581, label %vector.body564, !llvm.loop !590

middle.block581:                                  ; preds = %vector.body564
  %cmp.n = icmp eq i64 %n.vec561, %i.je
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check585

vec.epilog.iter.check585:                         ; preds = %middle.block581
  %i.jp = and i32 %i.jd, 28
  %min.epilog.iters.check586 = icmp eq i32 %i.jp, 0
  br i1 %min.epilog.iters.check586, label %.lr.ph375.preheader, label %vec.epilog.ph587, !prof !543

vec.epilog.ph587:                                 ; preds = %vector.main.loop.iter.check558, %vec.epilog.iter.check585
  %vec.epilog.resume.val582 = phi i64 [ %n.vec561, %vec.epilog.iter.check585 ], [ 0, %vector.main.loop.iter.check558 ] ; 3 uses
  %n.vec588 = and i64 %i.je, -4                   ; 3 uses
  %broadcast.splatinsert589 = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat590 = shufflevector <4 x i32> %broadcast.splatinsert589, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert591 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val582, i64 0
  %broadcast.splat592 = shufflevector <4 x i64> %broadcast.splatinsert591, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction593 = or disjoint <4 x i64> %broadcast.splat592, <i64 0, i64 1, i64 2, i64 3>
  %i.jq = trunc nsw i64 %vec.epilog.resume.val582 to i32
  %broadcast.splatinsert594 = insertelement <4 x i32> poison, i32 %i.jq, i64 0
  %broadcast.splat595 = shufflevector <4 x i32> %broadcast.splatinsert594, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction596 = or disjoint <4 x i32> %broadcast.splat595, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body597

vec.epilog.vector.body597:                        ; preds = %vec.epilog.vector.body597, %vec.epilog.ph587
  %index598 = phi i64 [ %vec.epilog.resume.val582, %vec.epilog.ph587 ], [ %index.next602, %vec.epilog.vector.body597 ]
  %vec.ind599 = phi <4 x i64> [ %induction593, %vec.epilog.ph587 ], [ %vec.ind.next603, %vec.epilog.vector.body597 ] ; 2 uses
  %vec.ind600 = phi <4 x i32> [ %induction596, %vec.epilog.ph587 ], [ %vec.ind.next604, %vec.epilog.vector.body597 ] ; 2 uses
  %10 = add nsw <4 x i32> %broadcast.splat590, %vec.ind600
  %wide.gep601 = getelementptr inbounds nuw [56 x i8], ptr %i.jj, <4 x i64> %vec.ind599
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %10, <4 x ptr> align 8 %wide.gep601, <4 x i1> splat (i1 true)), !tbaa !354
  %index.next602 = add nuw i64 %index598, 4       ; 2 uses
  %vec.ind.next603 = add nuw <4 x i64> %vec.ind599, splat (i64 4)
  %vec.ind.next604 = add <4 x i32> %vec.ind600, splat (i32 4)
  %i.jr = icmp eq i64 %index.next602, %n.vec588
  br i1 %i.jr, label %vec.epilog.middle.block605, label %vec.epilog.vector.body597, !llvm.loop !591

vec.epilog.middle.block605:                       ; preds = %vec.epilog.vector.body597
  %cmp.n606 = icmp eq i64 %n.vec588, %i.je
  br i1 %cmp.n606, label %.preheader, label %.lr.ph375.preheader

.lr.ph375.preheader:                              ; preds = %iter.check583, %vec.epilog.iter.check585, %vec.epilog.middle.block605
  %.0130373.ph = phi i64 [ 0, %iter.check583 ], [ %n.vec561, %vec.epilog.iter.check585 ], [ %n.vec588, %vec.epilog.middle.block605 ]
  br label %.lr.ph375

.preheader:                                       ; preds = %.lr.ph375, %middle.block581, %vec.epilog.middle.block605, %.thread
  %i.js = phi ptr [ %i.jh, %.thread ], [ %i.jm, %middle.block581 ], [ %i.jm, %vec.epilog.middle.block605 ], [ %i.jm, %.lr.ph375 ] ; 2 uses
  %i.jt = phi ptr [ %i.jg, %.thread ], [ %i.jl, %middle.block581 ], [ %i.jl, %vec.epilog.middle.block605 ], [ %i.jl, %.lr.ph375 ] ; 2 uses
  %i.ju = icmp ult i64 %.2143, %i.ek
  br i1 %i.ju, label %.lr.ph380, label %._crit_edge381

.lr.ph380:                                        ; preds = %.preheader
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.ae

.lr.ph375:                                        ; preds = %.lr.ph375.preheader, %.lr.ph375
  %.0130373 = phi i64 [ %i.ka, %.lr.ph375 ], [ %.0130373.ph, %.lr.ph375.preheader ] ; 3 uses
  %i.jx = trunc i64 %.0130373 to i32
  %i.jy = add nsw i32 %i.hz, %i.jx
  %i.jz = getelementptr inbounds nuw [56 x i8], ptr %i.jj, i64 %.0130373
  store i32 %i.jy, ptr %i.jz, align 8, !tbaa !354
  %i.ka = add nuw i64 %.0130373, 1                ; 2 uses
  %exitcond392.not = icmp eq i64 %i.ka, %i.je
  br i1 %exitcond392.not, label %.preheader, label %.lr.ph375, !llvm.loop !592

._crit_edge381:                                   ; preds = %bb.au, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.kb = load ptr, ptr %i.e, align 8, !tbaa !196, !nonnull !51, !align !52
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 349
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !271, !range !138, !noundef !51
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %bb.aw, label %bb.ba

bb.ae:                                            ; preds = %.lr.ph380, %bb.au
  %.0129379 = phi i64 [ %.2143, %.lr.ph380 ], [ %i.no, %bb.au ] ; 4 uses
  %.val211 = load ptr, ptr %i.k, align 8, !tbaa !231
  %i.kf = getelementptr inbounds nuw [40 x i8], ptr %.val211, i64 %.0129379 ; 6 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !242 ; 3 uses
  %i.kh = icmp eq i32 %i.kg, 0
  %i.ki = load ptr, ptr %3, align 8, !tbaa !387   ; 4 uses
  br i1 %i.kh, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !243 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !328 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ki, i64 24 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !365
  %.not.i232 = icmp eq ptr %i.kn, %i.kp
  br i1 %.not.i232, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.kk, ptr %i.kn, align 8, !tbaa !332
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  store ptr %i.kq, ptr %i.km, align 8, !tbaa !328
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

bb.ah:                                            ; preds = %bb.af
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !331 ; 4 uses
  %i.ks = ptrtoint ptr %i.kn to i64
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = sub i64 %i.ks, %i.kt                    ; 6 uses
  %i.kv = icmp eq i64 %i.ku, 9223372036854775800
  br i1 %i.kv, label %bb.ai, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc233 unwind label %.loopexit.split-lp319

.noexc233:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ah
  %i.kw = ashr exact i64 %i.ku, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kw, i64 1)
  %i.kx = add nsw i64 %.sroa.speculated.i.i.i, %i.kw ; 2 uses
  %i.ky = icmp ult i64 %i.kx, %i.kw
  %i.kz = call i64 @llvm.umin.i64(i64 %i.kx, i64 1152921504606846975)
  %i.la = select i1 %i.ky, i64 1152921504606846975, i64 %i.kz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.la, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.lb = shl nuw nsw i64 %i.la, 3
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #32
          to label %.noexc234 unwind label %.loopexit318 ; 4 uses

.noexc234:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %i.ku ; 2 uses
  store ptr %i.kk, ptr %i.ld, align 8, !tbaa !332
  %i.le = icmp sgt i64 %i.ku, 0
  br i1 %i.le, label %bb.aj, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.aj:                                            ; preds = %.noexc234
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr align 8 %i.kr, i64 %i.ku, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.aj, %.noexc234
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %.not.i17.i.i = icmp eq ptr %i.kr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef %i.ku) #28
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.ak, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.lc, ptr %i.kl, align 8, !tbaa !331
  store ptr %i.lf, ptr %i.km, align 8, !tbaa !328
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.la
  store ptr %i.lg, ptr %i.ko, align 8, !tbaa !365
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit

.loopexit318:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit320 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

.loopexit.split-lp319:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp321 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.al:                                            ; preds = %bb.ae
  %i.lh = sub nsw i32 %i.kg, %i.hz
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds nuw [56 x i8], ptr %i.ki, i64 %i.li ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %i.ll = load ptr, ptr %i.ia, align 8, !tbaa !82
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2712
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !272
  %i.lo = sext i32 %i.kg to i64
  %i.lp = getelementptr inbounds [24 x i8], ptr %i.ln, i64 %i.lo ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !369 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !369 ; 2 uses
  %i.lt = icmp eq ptr %i.lq, %i.ls
  br i1 %i.lt, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit, label %.lr.ph378

.lr.ph378:                                        ; preds = %bb.al
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 16 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 24 ; 2 uses
  %.pre = load ptr, ptr %i.lu, align 8, !tbaa !328
  %.pre396 = load ptr, ptr %i.lv, align 8, !tbaa !365
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph378, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit244
  %i.lw = phi ptr [ %.pre396, %.lr.ph378 ], [ %i.mq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit244 ] ; 3 uses
  %i.lx = phi ptr [ %.pre, %.lr.ph378 ], [ %i.mr, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit244 ] ; 3 uses
  %.sroa.0278.0376 = phi ptr [ %i.lq, %.lr.ph378 ], [ %i.ms, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit244 ] ; 2 uses
  %i.ly = load ptr, ptr %.sroa.0278.0376, align 8, !tbaa !332 ; 2 uses
  %.not.i235 = icmp eq ptr %i.lx, %i.lw
  br i1 %.not.i235, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store ptr %i.ly, ptr %i.lx, align 8, !tbaa !332
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 8 ; 2 uses
  store ptr %i.lz, ptr %i.lu, align 8, !tbaa !328
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE9push_backERKS2_.exit244

bb.ao:                                            ; preds = %bb.am
  %i.ma = load ptr, ptr %i.lk, align 8, !tbaa !331 ; 4 uses
  %i.mb = ptrtoint ptr %i.lw to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc                    ; 6 uses
  %i.me = icmp eq i64 %i.md, 9223372036854775800
  br i1 %i.me, label %bb.ap, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i236

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc242 unwind label %.loopexit.split-lp

.noexc242:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i236: ; preds = %bb.ao
  %i.mf = ashr exact i64 %i.md, 3                 ; 3 uses
  %.sroa.speculated.i.i.i237 = call i64 @llvm.umax.i64(i64 %i.mf, i64 1)
  %i.mg = add nsw i64 %.sroa.speculated.i.i.i237, %i.mf ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.mf
  %i.mi = call i64 @llvm.umin.i64(i64 %i.mg, i64 1152921504606846975)
  %i.mj = select i1 %i.mh, i64 1152921504606846975, i64 %i.mi ; 3 uses
  %.not.i.i.i238 = icmp ne i64 %i.mj, 0
  call void @llvm.assume(i1 %.not.i.i.i238)
  %i.mk = shl nuw nsw i64 %i.mj, 3
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mk) #32
          to label %.noexc243 unwind label %.loopexit ; 4 uses

.noexc243:                                        ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i236
  %i.mm = getelementptr inbounds i8, ptr %i.ml, i64 %i.md ; 2 uses
  store ptr %i.ly, ptr %i.mm, align 8, !tbaa !332
  %i.mn = icmp sgt i64 %i.md, 0
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_compaction_picker_universal.cc:bb.a
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.noexc58.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %.noexc66.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.noexc74.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %.noexc82.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %.noexc90.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %.noexc98.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %.noexc106.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.923.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 80), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 120), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 160), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 200), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 240), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 280), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 320), %bb.m ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.al, %bb.g ], [ %i.am, %bb.h ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, %bb.p
  %i.au = phi ptr [ %.923.i, %bb.p ], [ %i.av, %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -40 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !9  ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #28
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i

_ZN7rocksdb18OperationStageInfoD2Ev.exit.i:       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.bc = icmp eq ptr %i.av, @_ZN7rocksdbL21global_op_stage_tableE
  br i1 %i.bc, label %common.resume, label %bb.q

__cxx_global_var_init.13.exit:                    ; preds = %.noexc106.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !9
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ak, ptr noundef nonnull align 1 dereferenceable(44) @.str.23, i64 44, i1 false)
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 416), align 16, !tbaa !333
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 0, ptr %i.bd, align 1, !tbaa !15
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.24, ptr null, ptr nonnull @__dso_handle) #29 ; 0 uses
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.27, ptr null, ptr nonnull @__dso_handle) #29 ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, align 16, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 16), align 16, !tbaa !333
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 29), align 1, !tbaa !15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), align 8, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !368
  %i.bg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #32
          to label %.noexc27.i unwind label %bb.r ; 3 uses

.noexc27.i:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !9
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 56), align 8, !tbaa !333
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bh, align 1, !tbaa !15
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), align 16, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !368
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %__cxx_global_var_init.28.exit unwind label %bb.s ; 3 uses

bb.r:                                             ; preds = %__cxx_global_var_init.13.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc27.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.413.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), %bb.r ]
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bj, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, %bb.t
  %i.bl = phi ptr [ %.413.i, %bb.t ], [ %i.bm, %_ZN7rocksdb17OperationPropertyD2Ev.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -40 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !9  ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !15
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #28
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i

_ZN7rocksdb17OperationPropertyD2Ev.exit.i:        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bt = icmp eq ptr %i.bm, @_ZN7rocksdbL31compaction_operation_propertiesE
  br i1 %i.bt, label %common.resume, label %bb.u

__cxx_global_var_init.28.exit:                    ; preds = %.noexc27.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !9
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bi, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 96), align 16, !tbaa !333
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !15
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 120), align 8, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.32, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 136), align 8, !tbaa !333
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 159), align 1, !tbaa !15
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 160), align 16, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 176), align 16, !tbaa !333
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 193), align 1, !tbaa !15
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 200), align 8, !tbaa !610
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !368
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 216), align 8, !tbaa !333
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 236), align 4, !tbaa !15
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.35, ptr null, ptr nonnull @__dso_handle) #29 ; 0 uses
  %i.bw = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.38, ptr null, ptr nonnull @__dso_handle) #29 ; 0 uses
  ret void
}

declare extern_weak void @_ZTHN7rocksdb10perf_levelE() #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

declare extern_weak void @_ZTHN7rocksdb12perf_contextE() #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x ptr> @llvm.masked.gather.v4p0.v4p0(<4 x ptr>, <4 x i1>, <4 x ptr>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr>, <4 x i1>, <4 x i64>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8i32.v8p0(<8 x i32>, <8 x ptr>, <8 x i1>) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #27

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #28 = { builtin nounwind }
attributes #29 = { nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 4}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !12, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !14, i64 8, !7, i64 16}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 double", !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !7, i64 0}
!21 = !{!22, !14, i64 0}
!22 = !{!"_ZTSN7rocksdb10autovectorISt4pairIiPNS_12FileMetaDataEELm8EEE", !14, i64 0, !7, i64 8, !23, i64 136, !24, i64 144}
!23 = !{!"p1 _ZTSSt4pairIiPN7rocksdb12FileMetaDataEE", !13, i64 0}
!24 = !{!"_ZTSSt6vectorISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt4pairIiPN7rocksdb12FileMetaDataEESaIS4_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!28 = !{!27, !23, i64 8}
!29 = !{!27, !23, i64 0}
!30 = !{!31, !32, i64 8}
!31 = !{!"_ZTSN7rocksdb16CompactionPickerE", !32, i64 8, !33, i64 16, !42, i64 64, !50, i64 120}
!32 = !{!"p1 _ZTSN7rocksdb16ImmutableOptionsE", !13, i64 0}
!33 = !{!"_ZTSSt3setIPN7rocksdb10CompactionESt4lessIS2_ESaIS2_EE", !34, i64 0}
!34 = !{!"_ZTSSt8_Rb_treeIPN7rocksdb10CompactionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE", !35, i64 0}
!35 = !{!"_ZTSNSt8_Rb_treeIPN7rocksdb10CompactionES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !36, i64 0, !38, i64 8}
!36 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPN7rocksdb10CompactionEEE", !37, i64 0}
!37 = !{!"_ZTSSt4lessIPN7rocksdb10CompactionEE"}
!38 = !{!"_ZTSSt15_Rb_tree_header", !39, i64 0, !14, i64 32}
!39 = !{!"_ZTSSt18_Rb_tree_node_base", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24}
!40 = !{!"_ZTSSt14_Rb_tree_color", !7, i64 0}
!41 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !13, i64 0}
!42 = !{!"_ZTSSt13unordered_setIPN7rocksdb10CompactionESt4hashIS2_ESt8equal_toIS2_ESaIS2_EE", !43, i64 0}
!43 = !{!"_ZTSSt10_HashtableIPN7rocksdb10CompactionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ESt4hashIS2_ENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb1ELb1EEEE", !44, i64 0, !14, i64 8, !46, i64 16, !14, i64 24, !48, i64 32, !47, i64 48}
!44 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !45, i64 0}
!45 = !{!"any p2 pointer", !13, i64 0}
!46 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !47, i64 0}
!47 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!48 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !49, i64 0, !14, i64 8}
!49 = !{!"float", !7, i64 0}
!50 = !{!"p1 _ZTSN7rocksdb21InternalKeyComparatorE", !13, i64 0}
!51 = !{}
!52 = !{i64 8}
!53 = !{!31, !50, i64 120}
!54 = !{!32, !32, i64 0}
!55 = !{!56, !50, i64 8}
!56 = !{!"_ZTSN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilderE", !32, i64 0, !50, i64 8, !20, i64 16, !57, i64 24, !14, i64 48, !62, i64 56, !63, i64 64, !64, i64 72, !65, i64 80, !66, i64 88, !67, i64 96, !68, i64 104, !73, i64 120, !74, i64 128, !72, i64 176, !72, i64 177, !62, i64 184}
!57 = !{!"_ZTSSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE", !58, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE", !59, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE12_Vector_implE", !60, i64 0}
!60 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunE", !13, i64 0}
!62 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!63 = !{!"p1 _ZTSN7rocksdb16MutableCFOptionsE", !13, i64 0}
!64 = !{!"p1 _ZTSN7rocksdb16MutableDBOptionsE", !13, i64 0}
!65 = !{!"p1 _ZTSN7rocksdb18VersionStorageInfoE", !13, i64 0}
!66 = !{!"p1 _ZTSN7rocksdb25UniversalCompactionPickerE", !13, i64 0}
!67 = !{!"p1 _ZTSN7rocksdb9LogBufferE", !13, i64 0}
!68 = !{!"_ZTSSt8optionalImE", !69, i64 0}
!69 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !70, i64 0}
!70 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !71, i64 0}
!71 = !{!"_ZTSSt22_Optional_payload_baseImE", !7, i64 0, !72, i64 8}
!72 = !{!"bool", !7, i64 0}
!73 = !{!"p1 _ZTSN7rocksdb15SnapshotCheckerE", !13, i64 0}
!74 = !{!"_ZTSSt3mapImmSt4lessImESaISt4pairIKmmEEE", !75, i64 0}
!75 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE", !76, i64 0}
!76 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE13_Rb_tree_implIS6_Lb1EEE", !77, i64 0, !38, i64 8}
!77 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !78, i64 0}
!78 = !{!"_ZTSSt4lessImE"}
!79 = !{!62, !62, i64 0}
!80 = !{!63, !63, i64 0}
!81 = !{!64, !64, i64 0}
!82 = !{!56, !65, i64 80}
!83 = !{!56, !66, i64 88}
!84 = !{!56, !67, i64 96}
!85 = !{!71, !72, i64 8}
!86 = !{!38, !40, i64 0}
!87 = !{!38, !41, i64 8}
!88 = !{!38, !41, i64 16}
!89 = !{!38, !41, i64 24}
!90 = !{!38, !14, i64 32}
!91 = !{!56, !72, i64 176}
!92 = !{!93, !72, i64 273}
!93 = !{!"_ZTSN7rocksdb18ImmutableCFOptionsE", !94, i64 0, !95, i64 1, !96, i64 8, !97, i64 16, !100, i64 32, !105, i64 48, !106, i64 56, !6, i64 72, !14, i64 80, !72, i64 88, !13, i64 96, !109, i64 104, !112, i64 120, !6, i64 144, !72, i64 148, !6, i64 152, !72, i64 156, !72, i64 157, !72, i64 158, !117, i64 159, !118, i64 160, !121, i64 176, !126, i64 200, !129, i64 216, !132, i64 232, !72, i64 248, !6, i64 252, !135, i64 256, !72, i64 272, !72, i64 273, !72, i64 274}
!94 = !{!"_ZTSN7rocksdb15CompactionStyleE", !7, i64 0}
!95 = !{!"_ZTSN7rocksdb13CompactionPriE", !7, i64 0}
!96 = !{!"p1 _ZTSN7rocksdb10ComparatorE", !13, i64 0}
!97 = !{!"_ZTSN7rocksdb21InternalKeyComparatorE", !98, i64 0, !99, i64 8}
!98 = !{!"_ZTSN7rocksdb16CompareInterfaceE"}
!99 = !{!"_ZTSN7rocksdb21UserComparatorWrapperE", !96, i64 0}
!100 = !{!"_ZTSSt10shared_ptrIN7rocksdb13MergeOperatorEE", !101, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIN7rocksdb13MergeOperatorELN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0, !103, i64 8}
!102 = !{!"p1 _ZTSN7rocksdb13MergeOperatorE", !13, i64 0}
!103 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !104, i64 0}
!104 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0}
!105 = !{!"p1 _ZTSN7rocksdb16CompactionFilterE", !13, i64 0}
!106 = !{!"_ZTSSt10shared_ptrIN7rocksdb23CompactionFilterFactoryEE", !107, i64 0}
!107 = !{!"_ZTSSt12__shared_ptrIN7rocksdb23CompactionFilterFactoryELN9__gnu_cxx12_Lock_policyE2EE", !108, i64 0, !103, i64 8}
!108 = !{!"p1 _ZTSN7rocksdb23CompactionFilterFactoryE", !13, i64 0}
!109 = !{!"_ZTSSt10shared_ptrIN7rocksdb18MemTableRepFactoryEE", !110, i64 0}
!110 = !{!"_ZTSSt12__shared_ptrIN7rocksdb18MemTableRepFactoryELN9__gnu_cxx12_Lock_policyE2EE", !111, i64 0, !103, i64 8}
!111 = !{!"p1 _ZTSN7rocksdb18MemTableRepFactoryE", !13, i64 0}
!112 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEESaIS3_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!116 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb31TablePropertiesCollectorFactoryEE", !13, i64 0}
!117 = !{!"_ZTSN7rocksdb11TemperatureE", !7, i64 0}
!118 = !{!"_ZTSSt10shared_ptrIKN7rocksdb14SliceTransformEE", !119, i64 0}
!119 = !{!"_ZTSSt12__shared_ptrIKN7rocksdb14SliceTransformELN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0, !103, i64 8}
!120 = !{!"p1 _ZTSN7rocksdb14SliceTransformE", !13, i64 0}
!121 = !{!"_ZTSSt6vectorIN7rocksdb6DbPathESaIS1_EE", !122, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE", !123, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE12_Vector_implE", !124, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!125 = !{!"p1 _ZTSN7rocksdb6DbPathE", !13, i64 0}
!126 = !{!"_ZTSSt10shared_ptrIN7rocksdb21ConcurrentTaskLimiterEE", !127, i64 0}
!127 = !{!"_ZTSSt12__shared_ptrIN7rocksdb21ConcurrentTaskLimiterELN9__gnu_cxx12_Lock_policyE2EE", !128, i64 0, !103, i64 8}
!128 = !{!"p1 _ZTSN7rocksdb21ConcurrentTaskLimiterE", !13, i64 0}
!129 = !{!"_ZTSSt10shared_ptrIN7rocksdb21SstPartitionerFactoryEE", !130, i64 0}
!130 = !{!"_ZTSSt12__shared_ptrIN7rocksdb21SstPartitionerFactoryELN9__gnu_cxx12_Lock_policyE2EE", !131, i64 0, !103, i64 8}
!131 = !{!"p1 _ZTSN7rocksdb21SstPartitionerFactoryE", !13, i64 0}
!132 = !{!"_ZTSSt10shared_ptrIN7rocksdb5CacheEE", !133, i64 0}
!133 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EE", !134, i64 0, !103, i64 8}
!134 = !{!"p1 _ZTSN7rocksdb5CacheE", !13, i64 0}
!135 = !{!"_ZTSSt10shared_ptrIN7rocksdb25BlobFilePartitionStrategyEE", !136, i64 0}
!136 = !{!"_ZTSSt12__shared_ptrIN7rocksdb25BlobFilePartitionStrategyELN9__gnu_cxx12_Lock_policyE2EE", !137, i64 0, !103, i64 8}
!137 = !{!"p1 _ZTSN7rocksdb25BlobFilePartitionStrategyE", !13, i64 0}
!138 = !{i8 0, i8 2}
!139 = !{!140, !72, i64 387}
!140 = !{!"_ZTSN7rocksdb18ImmutableDBOptionsE", !72, i64 0, !72, i64 1, !72, i64 2, !72, i64 3, !72, i64 4, !72, i64 5, !72, i64 6, !72, i64 7, !72, i64 8, !72, i64 9, !141, i64 16, !142, i64 24, !145, i64 40, !148, i64 56, !151, i64 72, !6, i64 76, !6, i64 80, !152, i64 88, !72, i64 104, !121, i64 112, !10, i64 136, !10, i64 168, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !72, i64 232, !6, i64 236, !14, i64 240, !14, i64 248, !14, i64 256, !72, i64 264, !72, i64 265, !72, i64 266, !72, i64 267, !72, i64 268, !72, i64 269, !72, i64 270, !72, i64 271, !14, i64 272, !155, i64 280, !72, i64 296, !158, i64 304, !72, i64 328, !72, i64 329, !72, i64 330, !72, i64 331, !72, i64 332, !14, i64 336, !14, i64 344, !72, i64 352, !163, i64 353, !72, i64 354, !132, i64 360, !164, i64 376, !72, i64 384, !72, i64 385, !72, i64 386, !72, i64 387, !72, i64 388, !72, i64 389, !165, i64 390, !72, i64 391, !72, i64 392, !72, i64 393, !72, i64 394, !72, i64 395, !72, i64 396, !72, i64 397, !72, i64 398, !14, i64 400, !166, i64 408, !72, i64 424, !6, i64 428, !14, i64 432, !72, i64 440, !10, i64 448, !169, i64 480, !171, i64 488, !172, i64 496, !72, i64 512, !14, i64 520, !14, i64 528, !14, i64 536, !117, i64 544, !117, i64 545, !175, i64 552, !176, i64 560, !179, i64 576, !154, i64 584, !150, i64 592}
!141 = !{!"p1 _ZTSN7rocksdb3EnvE", !13, i64 0}
!142 = !{!"_ZTSSt10shared_ptrIN7rocksdb11RateLimiterEE", !143, i64 0}
!143 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE", !144, i64 0, !103, i64 8}
!144 = !{!"p1 _ZTSN7rocksdb11RateLimiterE", !13, i64 0}
!145 = !{!"_ZTSSt10shared_ptrIN7rocksdb14SstFileManagerEE", !146, i64 0}
!146 = !{!"_ZTSSt12__shared_ptrIN7rocksdb14SstFileManagerELN9__gnu_cxx12_Lock_policyE2EE", !147, i64 0, !103, i64 8}
!147 = !{!"p1 _ZTSN7rocksdb14SstFileManagerE", !13, i64 0}
!148 = !{!"_ZTSSt10shared_ptrIN7rocksdb6LoggerEE", !149, i64 0}
!149 = !{!"_ZTSSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0, !103, i64 8}
!150 = !{!"p1 _ZTSN7rocksdb6LoggerE", !13, i64 0}
!151 = !{!"_ZTSN7rocksdb12InfoLogLevelE", !7, i64 0}
!152 = !{!"_ZTSSt10shared_ptrIN7rocksdb10StatisticsEE", !153, i64 0}
!153 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10StatisticsELN9__gnu_cxx12_Lock_policyE2EE", !154, i64 0, !103, i64 8}
!154 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !13, i64 0}
!155 = !{!"_ZTSSt10shared_ptrIN7rocksdb18WriteBufferManagerEE", !156, i64 0}
!156 = !{!"_ZTSSt12__shared_ptrIN7rocksdb18WriteBufferManagerELN9__gnu_cxx12_Lock_policyE2EE", !157, i64 0, !103, i64 8}
!157 = !{!"p1 _ZTSN7rocksdb18WriteBufferManagerE", !13, i64 0}
!158 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !159, i64 0}
!159 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !160, i64 0}
end_hunk_2
begin_hunk_3_@llvm.masked.scatter.v4i32.v4p0/@llvm.masked.scatter.v8i32.v8p0
!343 = !{!"_ZTSN7rocksdb11InternalKeyE", !10, i64 0}
!344 = !{!"_ZTSN7rocksdb16FileSampledStatsE", !345, i64 0, !345, i64 8}
!345 = !{!"_ZTSSt6atomicImE", !346, i64 0}
!346 = !{!"_ZTSSt13__atomic_baseImE", !14, i64 0}
!347 = !{!"_ZTSSt5arrayImLm2EE", !7, i64 0}
!348 = distinct !{!348, !237, !349}
!349 = !{!"llvm.loop.peeled.count", i32 1}
!350 = distinct !{!350, !237, !349}
!351 = distinct !{!351, !237}
!352 = distinct !{!352, !237}
!353 = distinct !{!353, !237}
!354 = !{!355, !6, i64 0}
!355 = !{!"_ZTSN7rocksdb20CompactionInputFilesE", !6, i64 0, !356, i64 8, !359, i64 32}
!356 = !{!"_ZTSSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE", !357, i64 0}
!357 = !{!"_ZTSSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE", !358, i64 0}
!358 = !{!"_ZTSNSt12_Vector_baseIPN7rocksdb12FileMetaDataESaIS2_EE12_Vector_implE", !329, i64 0}
!359 = !{!"_ZTSSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EE", !360, i64 0}
!360 = !{!"_ZTSSt12_Vector_baseIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EE", !361, i64 0}
!361 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EE12_Vector_implE", !362, i64 0}
!362 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EE17_Vector_impl_dataE", !363, i64 0, !363, i64 8, !363, i64 16}
!363 = !{!"p1 _ZTSN7rocksdb28AtomicCompactionUnitBoundaryE", !13, i64 0}
!364 = !{!342, !72, i64 188}
!365 = !{!329, !330, i64 16}
!366 = distinct !{!366, !237}
!367 = !{!6, !6, i64 0}
!368 = !{!11, !12, i64 0}
!369 = !{!330, !330, i64 0}
!370 = !{!371, !372, i64 8}
!371 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EE17_Vector_impl_dataE", !372, i64 0, !372, i64 8, !372, i64 16}
!372 = !{!"p1 _ZTSN7rocksdb20CompactionInputFilesE", !13, i64 0}
!373 = !{!371, !372, i64 16}
!374 = !{!362, !363, i64 0}
!375 = !{!362, !363, i64 16}
!376 = !{!372, !372, i64 0}
!377 = distinct !{!377, !237}
!378 = !{!379}
!379 = distinct !{!379, !380, !"_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE6rbeginEv: argument 0"}
!380 = distinct !{!380, !"_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE6rbeginEv"}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE4rendEv: argument 0"}
!383 = distinct !{!383, !"_ZNSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE4rendEv"}
!384 = distinct !{!384, !237}
!385 = !{!56, !64, i64 72}
!386 = !{!198, !14, i64 160}
!387 = !{!371, !372, i64 0}
!388 = distinct !{!388, !237}
!389 = !{!198, !6, i64 340}
!390 = !{!198, !214, i64 344}
!391 = !{!198, !14, i64 0}
!392 = distinct !{!392, !237}
!393 = distinct !{!393, !237}
!394 = distinct !{!394, !395}
!395 = !{!"llvm.loop.unroll.disable"}
!396 = !{!273, !6, i64 16}
!397 = !{!342, !72, i64 190}
!398 = !{!342, !14, i64 168}
!399 = !{!342, !14, i64 40}
!400 = !{!41, !41, i64 0}
!401 = distinct !{!401, !237}
!402 = !{!403, !14, i64 8}
!403 = !{!"_ZTSSt4pairIKmmE", !14, i64 0, !14, i64 8}
!404 = distinct !{!404, !237}
!405 = distinct !{!405, !237}
!406 = !{!407, !407, i64 0}
!407 = !{!"p1 _ZTSN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilderE", !13, i64 0}
!408 = !{!409, !13, i64 24}
!409 = !{!"_ZTSSt8functionIFbPKN7rocksdb12FileMetaDataEEE", !410, i64 0, !13, i64 24}
!410 = !{!"_ZTSSt14_Function_base", !7, i64 0, !13, i64 16}
!411 = !{!410, !13, i64 16}
!412 = !{!198, !72, i64 348}
!413 = !{!414, !474, i64 11920}
!414 = !{!"_ZTSN7rocksdb10CompactionE", !65, i64 0, !6, i64 8, !6, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !6, i64 40, !415, i64 48, !198, i64 928, !416, i64 1664, !417, i64 1672, !6, i64 9128, !457, i64 9136, !287, i64 9152, !6, i64 11440, !165, i64 11444, !216, i64 11448, !117, i64 11504, !72, i64 11505, !324, i64 11512, !72, i64 11520, !458, i64 11528, !461, i64 11552, !356, i64 11624, !68, i64 11648, !73, i64 11664, !462, i64 11672, !467, i64 11696, !20, i64 11720, !72, i64 11728, !72, i64 11729, !72, i64 11730, !10, i64 11736, !72, i64 11768, !471, i64 11776, !471, i64 11832, !473, i64 11888, !473, i64 11904, !474, i64 11920, !72, i64 11924, !72, i64 11925, !72, i64 11926, !20, i64 11928, !14, i64 11936, !6, i64 11944, !343, i64 11952, !343, i64 11984, !475, i64 12016}
!415 = !{!"_ZTSN7rocksdb16ImmutableOptionsE", !140, i64 0, !93, i64 600}
!416 = !{!"p1 _ZTSN7rocksdb7VersionE", !13, i64 0}
!417 = !{!"_ZTSN7rocksdb11VersionEditE", !6, i64 0, !10, i64 8, !10, i64 40, !14, i64 72, !14, i64 80, !14, i64 88, !6, i64 96, !14, i64 104, !14, i64 112, !72, i64 120, !72, i64 121, !72, i64 122, !72, i64 123, !72, i64 124, !72, i64 125, !72, i64 126, !72, i64 127, !72, i64 128, !418, i64 136, !423, i64 160, !428, i64 208, !433, i64 232, !438, i64 256, !443, i64 280, !448, i64 304, !6, i64 312, !72, i64 316, !72, i64 317, !72, i64 318, !10, i64 320, !6, i64 352, !72, i64 356, !72, i64 357, !10, i64 360, !72, i64 392, !72, i64 393, !449, i64 400, !72, i64 7336, !14, i64 7344, !456, i64 7352}
!418 = !{!"_ZTSSt6vectorISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE", !419, i64 0}
!419 = !{!"_ZTSSt12_Vector_baseISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE", !420, i64 0}
!420 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE12_Vector_implE", !421, i64 0}
!421 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN7rocksdb11InternalKeyEESaIS3_EE17_Vector_impl_dataE", !422, i64 0, !422, i64 8, !422, i64 16}
!422 = !{!"p1 _ZTSSt4pairIiN7rocksdb11InternalKeyEE", !13, i64 0}
!423 = !{!"_ZTSSt3setISt4pairIimESt4lessIS1_ESaIS1_EE", !424, i64 0}
!424 = !{!"_ZTSSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE", !425, i64 0}
!425 = !{!"_ZTSNSt8_Rb_treeISt4pairIimES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE13_Rb_tree_implIS5_Lb1EEE", !426, i64 0, !38, i64 8}
!426 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIimEEE", !427, i64 0}
!427 = !{!"_ZTSSt4lessISt4pairIimEE"}
!428 = !{!"_ZTSSt6vectorISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE", !429, i64 0}
!429 = !{!"_ZTSSt12_Vector_baseISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE", !430, i64 0}
!430 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE12_Vector_implE", !431, i64 0}
!431 = !{!"_ZTSNSt12_Vector_baseISt4pairIiN7rocksdb12FileMetaDataEESaIS3_EE17_Vector_impl_dataE", !432, i64 0, !432, i64 8, !432, i64 16}
!432 = !{!"p1 _ZTSSt4pairIiN7rocksdb12FileMetaDataEE", !13, i64 0}
!433 = !{!"_ZTSSt6vectorIN7rocksdb16BlobFileAdditionESaIS1_EE", !434, i64 0}
!434 = !{!"_ZTSSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EE", !435, i64 0}
!435 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EE12_Vector_implE", !436, i64 0}
!436 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb16BlobFileAdditionESaIS1_EE17_Vector_impl_dataE", !437, i64 0, !437, i64 8, !437, i64 16}
!437 = !{!"p1 _ZTSN7rocksdb16BlobFileAdditionE", !13, i64 0}
!438 = !{!"_ZTSSt6vectorIN7rocksdb15BlobFileGarbageESaIS1_EE", !439, i64 0}
!439 = !{!"_ZTSSt12_Vector_baseIN7rocksdb15BlobFileGarbageESaIS1_EE", !440, i64 0}
!440 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb15BlobFileGarbageESaIS1_EE12_Vector_implE", !441, i64 0}
!441 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb15BlobFileGarbageESaIS1_EE17_Vector_impl_dataE", !442, i64 0, !442, i64 8, !442, i64 16}
!442 = !{!"p1 _ZTSN7rocksdb15BlobFileGarbageE", !13, i64 0}
!443 = !{!"_ZTSSt6vectorIN7rocksdb11WalAdditionESaIS1_EE", !444, i64 0}
!444 = !{!"_ZTSSt12_Vector_baseIN7rocksdb11WalAdditionESaIS1_EE", !445, i64 0}
!445 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11WalAdditionESaIS1_EE12_Vector_implE", !446, i64 0}
!446 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb11WalAdditionESaIS1_EE17_Vector_impl_dataE", !447, i64 0, !447, i64 8, !447, i64 16}
!447 = !{!"p1 _ZTSN7rocksdb11WalAdditionE", !13, i64 0}
!448 = !{!"_ZTSN7rocksdb11WalDeletionE", !14, i64 0}
!449 = !{!"_ZTSN7rocksdb21SubcompactionProgressE", !10, i64 0, !14, i64 32, !450, i64 40, !450, i64 3488}
!450 = !{!"_ZTSN7rocksdb29SubcompactionProgressPerLevelE", !14, i64 0, !451, i64 8, !14, i64 3440}
!451 = !{!"_ZTSN7rocksdb10autovectorINS_12FileMetaDataELm8EEE", !14, i64 0, !7, i64 8, !240, i64 3400, !452, i64 3408}
!452 = !{!"_ZTSSt6vectorIN7rocksdb12FileMetaDataESaIS1_EE", !453, i64 0}
!453 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12FileMetaDataESaIS1_EE", !454, i64 0}
!454 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12FileMetaDataESaIS1_EE12_Vector_implE", !455, i64 0}
!455 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12FileMetaDataESaIS1_EE17_Vector_impl_dataE", !240, i64 0, !240, i64 8, !240, i64 16}
!456 = !{!"_ZTSN7rocksdb10autovectorImLm8EEE", !14, i64 0, !7, i64 8, !192, i64 72, !225, i64 80}
!457 = !{!"p1 _ZTSN7rocksdb16ColumnFamilyDataE", !13, i64 0}
!458 = !{!"_ZTSSt6vectorIN7rocksdb20CompactionInputFilesESaIS1_EE", !459, i64 0}
!459 = !{!"_ZTSSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EE", !460, i64 0}
!460 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb20CompactionInputFilesESaIS1_EE12_Vector_implE", !371, i64 0}
!461 = !{!"_ZTSN7rocksdb10autovectorINS_15LevelFilesBriefELm2EEE", !14, i64 0, !7, i64 8, !275, i64 40, !276, i64 48}
!462 = !{!"_ZTSSt6vectorIS_IbSaIbEESaIS1_EE", !463, i64 0}
!463 = !{!"_ZTSSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE", !464, i64 0}
!464 = !{!"_ZTSNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE12_Vector_implE", !465, i64 0}
!465 = !{!"_ZTSNSt12_Vector_baseISt6vectorIbSaIbEESaIS2_EE17_Vector_impl_dataE", !466, i64 0, !466, i64 8, !466, i64 16}
!466 = !{!"p1 _ZTSSt6vectorIbSaIbEE", !13, i64 0}
!467 = !{!"_ZTSSt6vectorIS_IPN7rocksdb12FileMetaDataESaIS2_EESaIS4_EE", !468, i64 0}
!468 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE", !469, i64 0}
!469 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE12_Vector_implE", !470, i64 0}
!470 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7rocksdb12FileMetaDataESaIS3_EESaIS5_EE17_Vector_impl_dataE", !304, i64 0, !304, i64 8, !304, i64 16}
!471 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIKN7rocksdb15TablePropertiesEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE", !472, i64 0}
!472 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIKN7rocksdb15TablePropertiesEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE", !44, i64 0, !14, i64 8, !46, i64 16, !14, i64 24, !48, i64 32, !47, i64 48}
!473 = !{!"_ZTSN7rocksdb5SliceE", !12, i64 0, !14, i64 8}
!474 = !{!"_ZTSN7rocksdb16CompactionReasonE", !7, i64 0}
!475 = !{!"_ZTSN7rocksdb10Compaction23ProximalOutputRangeTypeE", !7, i64 0}
!476 = !{!477}
!477 = distinct !{!477, !478, !"_ZN7rocksdb12_GLOBAL__N_117create_level_heapEPNS_10CompactionEPKNS_10ComparatorE: argument 0"}
!478 = distinct !{!478, !"_ZN7rocksdb12_GLOBAL__N_117create_level_heapEPNS_10CompactionEPKNS_10ComparatorE"}
!479 = !{!414, !6, i64 8}
!480 = distinct !{!480, !237}
!481 = !{!482, !240, i64 0}
!482 = !{!"_ZTSN7rocksdb12_GLOBAL__N_113InputFileInfoE", !240, i64 0, !14, i64 8, !14, i64 16}
!483 = !{!482, !14, i64 8}
!484 = !{!482, !14, i64 16}
!485 = !{i64 0, i64 8, !332, i64 8, i64 8, !193, i64 16, i64 8, !193}
!486 = !{!487, !489}
!487 = distinct !{!487, !488, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!488 = distinct !{!488, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!489 = distinct !{!489, !488, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!490 = distinct !{!490, !237}
!491 = distinct !{null}
!492 = distinct !{!492, !237}
!493 = !{!494, !496}
!494 = distinct !{!494, !495, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!495 = distinct !{!495, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!496 = distinct !{!496, !495, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!497 = distinct !{null}
!498 = distinct !{!498, !237}
!499 = distinct !{null}
!500 = distinct !{!500, !237}
!501 = distinct !{null}
!502 = !{!503, !505}
!503 = distinct !{!503, !504, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!504 = distinct !{!504, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_"}
!505 = distinct !{!505, !504, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_113InputFileInfoES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!506 = distinct !{null}
!507 = distinct !{!507, !237}
!508 = !{!414, !72, i64 11768}
!509 = distinct !{!509, !268, !269}
!510 = !{!"branch_weights", i32 4, i32 12}
!511 = distinct !{!511, !268, !269}
!512 = !{!140, !154, i64 584}
!513 = distinct !{null}
!514 = !{!56, !62, i64 184}
!515 = distinct !{!515, !269, !268}
!516 = !{!39, !41, i64 24}
!517 = !{!39, !41, i64 16}
!518 = distinct !{!518, !237}
!519 = distinct !{!519, !237}
!520 = !{!403, !14, i64 0}
!521 = !{!255, !14, i64 24}
!522 = !{i64 0, i64 4, !367, i64 8, i64 8, !332, i64 16, i64 8, !193, i64 24, i64 8, !193, i64 32, i64 1, !523, i64 33, i64 1, !523}
!523 = !{!72, !72, i64 0}
!524 = !{!525, !527}
!525 = distinct !{!525, !526, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!526 = distinct !{!526, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_"}
!527 = distinct !{!527, !526, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!528 = distinct !{!528, !237}
!529 = !{!342, !14, i64 128}
!530 = !{!531, !533}
!531 = distinct !{!531, !532, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!532 = distinct !{!532, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_"}
!533 = distinct !{!533, !532, !"_ZSt19__relocate_object_aIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!534 = distinct !{!534, !237}
!535 = distinct !{!535, !237}
!536 = distinct !{!536, !237, !268, !269}
!537 = distinct !{!537, !237, !268, !269}
!538 = !{!539, !14, i64 32}
!539 = !{!"_ZTSN7rocksdb6DbPathE", !10, i64 0, !14, i64 32}
!540 = distinct !{!540, !237}
!541 = distinct !{!541, !237, !269, !268}
!542 = distinct !{!542, !237, !268, !269}
!543 = !{!"branch_weights", i32 4, i32 28}
!544 = distinct !{!544, !237, !268, !269}
!545 = distinct !{!545, !237, !269, !268}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!548 = distinct !{!548, !"_ZNSt7__cxx119to_stringEi"}
!549 = distinct !{!549, !237}
!550 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!551 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!552 = !{!363, !363, i64 0}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!555 = distinct !{!555, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_"}
!556 = !{!557}
!557 = distinct !{!557, !555, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!558 = distinct !{!558, !237}
!559 = !{!560}
!560 = distinct !{!560, !561, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!561 = distinct !{!561, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_"}
!562 = !{!563}
!563 = distinct !{!563, !561, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!564 = !{!565}
!565 = distinct !{!565, !566, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!566 = distinct !{!566, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_"}
!567 = !{!568}
!568 = distinct !{!568, !566, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!569 = !{!570}
!570 = distinct !{!570, !571, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!571 = distinct !{!571, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_"}
!572 = !{!573}
!573 = distinct !{!573, !571, !"_ZSt19__relocate_object_aIN7rocksdb20CompactionInputFilesES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!574 = !{!362, !363, i64 8}
!575 = !{i64 0, i64 8, !576, i64 8, i64 8, !576}
!576 = !{!324, !324, i64 0}
!577 = distinct !{!577, !237}
!578 = distinct !{!578, !237}
!579 = distinct !{!579, !237}
!580 = distinct !{!580, !237}
!581 = distinct !{!581, !237}
!582 = !{!198, !6, i64 336}
!583 = distinct !{!583, !268, !269}
!584 = distinct !{!584, !268, !269}
!585 = distinct !{!585, !269, !268}
!586 = distinct !{!586, !237}
!587 = distinct !{!587, !237, !268, !269}
!588 = distinct !{!588, !237, !268, !269}
!589 = distinct !{!589, !237, !268}
!590 = distinct !{!590, !237, !268, !269}
!591 = distinct !{!591, !237, !268, !269}
!592 = distinct !{!592, !237, !269, !268}
!593 = distinct !{!593, !237}
!594 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!595 = distinct !{!595, !237}
!596 = distinct !{!596, !268, !269}
!597 = distinct !{!597, !268, !269}
!598 = distinct !{!598, !269, !268}
!599 = !{!600, !407, i64 0}
!600 = !{!"_ZTSZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder29PickDeleteTriggeredCompactionEvE3$_0", !407, i64 0}
!601 = !{!13, !13, i64 0}
!602 = !{!603, !603, i64 0}
!603 = !{!"p1 _ZTSSt9type_info", !13, i64 0}
!604 = !{!605, !606, i64 0}
!605 = !{!"_ZTSN7rocksdb13OperationInfoE", !606, i64 0, !10, i64 8}
!606 = !{!"_ZTSN7rocksdb12ThreadStatus13OperationTypeE", !7, i64 0}
!607 = !{!608, !609, i64 0}
!608 = !{!"_ZTSN7rocksdb18OperationStageInfoE", !609, i64 0, !10, i64 8}
!609 = !{!"_ZTSN7rocksdb12ThreadStatus14OperationStageE", !7, i64 0}
!610 = !{!611, !6, i64 0}
!611 = !{!"_ZTSN7rocksdb17OperationPropertyE", !6, i64 0, !10, i64 8}
end_hunk_3
