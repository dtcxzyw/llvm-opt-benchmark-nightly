Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/zstd_v07?download=true
inline.NumInlined: 402
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@HUFv07_decompress4X2_usingDTable_internal:bb.a
  br label %BITv07_reloadDStream.exit235

BITv07_reloadDStream.exit235:                     ; preds = %bb.bg, %BITv07_reloadDStream.exit226, %bb.bf, %bb.bh
  %i.sc = phi ptr [ %i.rz, %bb.bh ], [ %i.rm, %bb.bf ], [ %i.hx, %BITv07_reloadDStream.exit226 ], [ %i.hx, %bb.bg ] ; 2 uses
  %.val7.i182303 = phi i32 [ %i.sb, %bb.bh ], [ %i.rn, %bb.bf ], [ %i.ot, %BITv07_reloadDStream.exit226 ], [ %i.ot, %bb.bg ] ; 2 uses
  %.val.i232276 = phi i64 [ %.val.i232, %bb.bh ], [ %.val30.i228, %bb.bf ], [ %.val.i232277278, %BITv07_reloadDStream.exit226 ], [ %.val.i232277278, %bb.bg ] ; 2 uses
  %.025.i229 = phi i32 [ %.0.i231, %bb.bh ], [ 0, %bb.bf ], [ 3, %BITv07_reloadDStream.exit226 ], [ 3, %bb.bg ]
  %i.sd = or i32 %i.rh, %.025.i229
  %i.se = icmp eq i32 %i.sd, 0
  %i.sf = icmp ult ptr %i.ou, %i.gv
  %i.sg = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %i.sg, label %bb.ao, label %._crit_edge, !llvm.loop !99

._crit_edge:                                      ; preds = %BITv07_reloadDStream.exit235
  store i32 %.val7.i294, ptr %i.gz, align 8, !tbaa !35
  store i32 %.val7.i178297, ptr %i.hd, align 8, !tbaa !35
  store i32 %.val7.i180300, ptr %i.he, align 8, !tbaa !35
  store i32 %.val7.i182303, ptr %i.hf, align 8, !tbaa !35
  store ptr %i.pp, ptr %i.hg, align 8
  store ptr %i.qk, ptr %i.hh, align 8
  store ptr %i.rg, ptr %i.hi, align 8
  store ptr %i.sc, ptr %i.hj, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge, %bb.an
  %.val.i232277.lcssa = phi i64 [ %.val.i232276, %._crit_edge ], [ %.promoted275, %bb.an ]
  %.val.i223274.lcssa = phi i64 [ %.val.i223273, %._crit_edge ], [ %.promoted272, %bb.an ]
  %.val.i214271.lcssa = phi i64 [ %.val.i214270, %._crit_edge ], [ %.promoted269, %bb.an ]
  %.val.i208268.lcssa = phi i64 [ %.val.i208267, %._crit_edge ], [ %.promoted, %bb.an ]
  %.0143.lcssa = phi ptr [ %i.nn, %._crit_edge ], [ %0, %bb.an ] ; 2 uses
  %.0140.lcssa = phi ptr [ %i.ny, %._crit_edge ], [ %i.s, %bb.an ] ; 2 uses
  %.0137.lcssa = phi ptr [ %i.oj, %._crit_edge ], [ %i.t, %bb.an ] ; 2 uses
  %.0134.lcssa = phi ptr [ %i.ou, %._crit_edge ], [ %i.u, %bb.an ]
  store i64 %.val.i208268.lcssa, ptr %5, align 8
  store i64 %.val.i214271.lcssa, ptr %6, align 8
  store i64 %.val.i223274.lcssa, ptr %7, align 8
  store i64 %.val.i232277.lcssa, ptr %8, align 8
  %i.sh = icmp ugt ptr %.0143.lcssa, %i.s
  %i.si = icmp ugt ptr %.0140.lcssa, %i.t
  %or.cond = select i1 %i.sh, i1 true, i1 %i.si
  %i.sj = icmp ugt ptr %.0137.lcssa, %i.u
  %or.cond160 = select i1 %or.cond, i1 true, i1 %i.sj
  br i1 %or.cond160, label %BITv07_initDStream.exit.thread, label %BITv07_endOfDStream.exit

BITv07_endOfDStream.exit:                         ; preds = %bb.bi
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0143.lcssa, ptr noundef %5, ptr noundef %i.s, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0140.lcssa, ptr noundef %6, ptr noundef %i.t, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0137.lcssa, ptr noundef %7, ptr noundef %i.u, ptr noundef nonnull %i.c, i32 noundef %i.v)
  call fastcc void @HUFv07_decodeStreamX2(ptr noundef %.0134.lcssa, ptr noundef %8, ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef %i.v)
  %i.sk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.sm = load i32, ptr %i.sl, align 8
  %.fr370 = freeze i32 %i.sm
  %i.sn = icmp ne i32 %.fr370, 64
  %i.so = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sq = load i32, ptr %i.sp, align 8
  %.fr = freeze i32 %i.sq
  %i.sr = icmp ne i32 %.fr, 64
  %i.ss = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.st = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.su = load i32, ptr %i.st, align 8
  %.fr372 = freeze i32 %i.su
  %i.sv = icmp ne i32 %.fr372, 64
  %i.sw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.sx = load <2 x ptr>, ptr %i.sk, align 8, !tbaa !39 ; 2 uses
  %i.sy = load <2 x ptr>, ptr %i.so, align 8, !tbaa !39 ; 2 uses
  %i.sz = load <2 x ptr>, ptr %i.ss, align 8, !tbaa !39 ; 2 uses
  %i.ta = load <2 x ptr>, ptr %i.sw, align 8, !tbaa !39 ; 2 uses
  %i.tb = shufflevector <2 x ptr> %i.sx, <2 x ptr> %i.sy, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.tc = shufflevector <2 x ptr> %i.sz, <2 x ptr> %i.ta, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.td = shufflevector <4 x ptr> %i.tb, <4 x ptr> %i.tc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.te = shufflevector <2 x ptr> %i.sx, <2 x ptr> %i.sy, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.tf = shufflevector <2 x ptr> %i.sz, <2 x ptr> %i.ta, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.tg = shufflevector <4 x ptr> %i.te, <4 x ptr> %i.tf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.th = icmp ne <4 x ptr> %i.td, %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.tj = load i32, ptr %i.ti, align 8
  %i.tk = icmp ne i32 %i.tj, 64
  %i.tl = freeze <4 x i1> %i.th
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %i.tn = icmp ne i4 %i.tm, 0
  %op.rdx = or i1 %i.tn, %i.sn
  %i.to = or i1 %op.rdx, %i.sr
  %op.rdx367 = or i1 %i.to, %i.sv
  %op.rdx368 = select i1 %op.rdx367, i1 true, i1 %i.tk
  %.159 = select i1 %op.rdx368, i64 -20, i64 %1
  br label %BITv07_initDStream.exit.thread

BITv07_initDStream.exit.thread:                   ; preds = %bb.ak, %bb.ac, %bb.aa, %bb.y, %bb.q, %bb.o, %bb.m, %bb.e, %bb.c, %BITv07_endOfDStream.exit, %bb.bi, %bb.b, %bb.am
  %.4 = phi i64 [ %i.gm, %bb.am ], [ -20, %bb.b ], [ -20, %bb.bi ], [ -1, %bb.y ], [ -1, %bb.m ], [ %.159, %BITv07_endOfDStream.exit ], [ -72, %bb.c ], [ -1, %bb.e ], [ -72, %bb.o ], [ -1, %bb.q ], [ -72, %bb.aa ], [ -1, %bb.ac ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bj

bb.bj:                                            ; preds = %bb.a, %BITv07_initDStream.exit.thread
  %.5 = phi i64 [ %.4, %BITv07_initDStream.exit.thread ], [ -20, %bb.a ]
  ret i64 %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2_DCtx(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @HUFv07_readDTableX2(ptr noundef %0, ptr noundef %3, i64 noundef %4) ; 5 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not19 = icmp ult i64 %i.a, %4
  br i1 %.not19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %i.a
  %i.d = sub nuw i64 %4, %i.a
  %i.e = tail call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %1, i64 noundef %2, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.e, %bb.c ], [ %i.a, %bb.a ], [ -72, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @HUFv07_decompress4X2(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [2049 x i32], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8196) %i.a, i8 0, i64 8196, i1 false)
  store i32 184549387, ptr %i.a, align 16
  %i.b = call i64 @HUFv07_readDTableX2(ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) ; 5 uses
  %i.c = icmp ult i64 %i.b, -119
  br i1 %i.c, label %bb.b, label %HUFv07_decompress4X2_DCtx.exit

bb.b:                                             ; preds = %bb.a
  %.not19.i = icmp ult i64 %i.b, %3
  br i1 %.not19.i, label %bb.c, label %HUFv07_decompress4X2_DCtx.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.b
  %i.e = sub nuw i64 %3, %i.b
  %i.f = call fastcc i64 @HUFv07_decompress4X2_usingDTable_internal(ptr noundef %0, i64 noundef %1, ptr noundef %i.d, i64 noundef %i.e, ptr noundef nonnull %i.a)
  br label %HUFv07_decompress4X2_DCtx.exit

HUFv07_decompress4X2_DCtx.exit:                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.c ], [ %i.b, %bb.a ], [ -72, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i64 %.0.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -119, -9223372036854775808) i64 @HUFv07_readDTableX4(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [17 x i32], align 16              ; 5 uses
  %i.b = alloca [17 x i32], align 16              ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 6 uses
  %3 = alloca [256 x %struct.sortedSymbol_t], align 16 ; 7 uses
  %i.d = alloca [17 x i32], align 16              ; 12 uses
  %i.e = alloca [18 x i32], align 16              ; 5 uses
  %i.f = alloca [16 x [17 x i32]], align 16       ; 14 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.d, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %.val = load i32, ptr %0, align 4               ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.val to i8 ; 2 uses
  %.sroa.7.0.extract.shift = lshr i32 %.val, 24
  %.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.7.0.extract.shift to i8
  %i.j = and i32 %.val, 255                       ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.l = icmp samesign ugt i32 %i.j, 16
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call i64 @HUFv07_readStats(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef %1, i64 noundef %2) ; 3 uses
  %i.n = icmp ult i64 %i.m, -119
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4, !tbaa !13   ; 4 uses
  %i.p = icmp ugt i32 %i.o, %i.j
  br i1 %i.p, label %bb.g, label %.preheader78.preheader

.preheader78.preheader:                           ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.o, 1                  ; 6 uses
  br label %.preheader78

.preheader78:                                     ; preds = %.preheader78.preheader, %.preheader78
  %indvars.iv125 = phi i32 [ %i.j, %.preheader78.preheader ], [ %indvars.iv.next126, %.preheader78 ] ; 2 uses
  %indvars.iv120 = phi i32 [ 1, %.preheader78.preheader ], [ %indvars.iv.next121, %.preheader78 ] ; 2 uses
  %indvars.iv102 = phi i32 [ %i.q, %.preheader78.preheader ], [ %indvars.iv.next103, %.preheader78 ] ; 5 uses
  %.071 = phi i32 [ %i.o, %.preheader78.preheader ], [ %i.v, %.preheader78 ] ; 13 uses
  %i.r = zext i32 %.071 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !13
  %i.u = icmp eq i32 %i.t, 0
  %i.v = add i32 %.071, -1
  %indvars.iv.next103 = add i32 %indvars.iv102, -1
  %indvars.iv.next121 = add i32 %indvars.iv120, 1
  %indvars.iv.next126 = add i32 %indvars.iv125, -1
  br i1 %i.u, label %.preheader78, label %.preheader, !llvm.loop !100

.preheader:                                       ; preds = %.preheader78
  %.not.not = icmp eq i32 %.071, 0                ; 2 uses
  br i1 %.not.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.w = add i32 %indvars.iv102, -2
  %xtraiter = and i32 %.071, 3                    ; 3 uses
  %i.x = icmp ult i32 %i.w, 3
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %.071, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %.07380 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.am, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13
  %i.aa = add i32 %i.z, %.07380                   ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.07380, ptr %i.ab, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13
  %i.ae = add i32 %i.ad, %i.aa                    ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next
  store i32 %i.aa, ptr %i.af, align 4, !tbaa !13
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.1
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !13
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.2
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13
  %i.am = add i32 %i.al, %i.ai                    ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.2
  store i32 %i.ai, ptr %i.an, align 4, !tbaa !13
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !101

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.07380.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %.07380.epil = phi i32 [ %i.aq, %.lr.ph.epil ], [ %.07380.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.epil
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !13
  %i.aq = add i32 %i.ap, %.07380.epil             ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.epil
  store i32 %.07380.epil, ptr %i.ar, align 4, !tbaa !13
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !102

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.073.lcssa = phi i32 [ 0, %.preheader ], [ %i.am, %._crit_edge.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.epil ] ; 5 uses
  store i32 %.073.lcssa, ptr %i.i, align 4, !tbaa !13
  %i.as = load i32, ptr %i.h, align 4, !tbaa !13  ; 4 uses
  %.not99 = icmp eq i32 %i.as, 0
  br i1 %.not99, label %._crit_edge85, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext i32 %i.as to i64        ; 2 uses
  %xtraiter180 = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.lr.ph84.epil.preheader, label %.lr.ph84.preheader.new

.lr.ph84.preheader.new:                           ; preds = %.lr.ph84.preheader
  %unroll_iter184 = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84, %.lr.ph84.preheader.new
  %indvars.iv104 = phi i64 [ 0, %.lr.ph84.preheader.new ], [ %indvars.iv.next105.1, %.lr.ph84 ] ; 4 uses
  %niter185 = phi i64 [ 0, %.lr.ph84.preheader.new ], [ %niter185.next.1, %.lr.ph84 ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104
  %i.av = load i8, ptr %i.au, align 2, !tbaa !17  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !13 ; 2 uses
  %i.az = add nuw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !13
  %i.ba = trunc i64 %indvars.iv104 to i8
  %i.bb = zext i32 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bb ; 2 uses
  store i8 %i.ba, ptr %i.bc, align 2, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store i8 %i.av, ptr %i.bd, align 1, !tbaa !38
  %indvars.iv.next105 = or disjoint i64 %indvars.iv104, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next105
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17  ; 2 uses
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !13 ; 2 uses
  %i.bj = add nuw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !13
  %i.bk = trunc i64 %indvars.iv.next105 to i8
  %i.bl = zext i32 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bl ; 2 uses
  store i8 %i.bk, ptr %i.bm, align 2, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %i.bf, ptr %i.bn, align 1, !tbaa !38
  %indvars.iv.next105.1 = add nuw nsw i64 %indvars.iv104, 2 ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %._crit_edge85.loopexit.unr-lcssa, label %.lr.ph84, !llvm.loop !103

._crit_edge85.loopexit.unr-lcssa:                 ; preds = %.lr.ph84
  %lcmp.mod182.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod182.not, label %._crit_edge85, label %.lr.ph84.epil.preheader

.lr.ph84.epil.preheader:                          ; preds = %._crit_edge85.loopexit.unr-lcssa, %.lr.ph84.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph84.preheader ], [ %indvars.iv.next105.1, %._crit_edge85.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod183 = trunc i32 %i.as to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv104.epil.init
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17  ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !13 ; 2 uses
  %i.bt = add nuw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !13
  %i.bu = trunc i64 %indvars.iv104.epil.init to i8
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bv ; 2 uses
  store i8 %i.bu, ptr %i.bw, align 2, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store i8 %i.bp, ptr %i.bx, align 1, !tbaa !38
  br label %._crit_edge85

._crit_edge85:                                    ; preds = %.lr.ph84.epil.preheader, %._crit_edge85.loopexit.unr-lcssa, %._crit_edge
  store i32 0, ptr %i.i, align 4, !tbaa !13
  %i.by = xor i32 %i.o, -1
  %i.bz = add nsw i32 %i.j, %i.by                 ; 2 uses
  br i1 %.not.not, label %._crit_edge90.thread, label %.lr.ph89.preheader

.lr.ph89.preheader:                               ; preds = %._crit_edge85
  %xtraiter186 = and i32 %.071, 1
  %i.ca = icmp eq i32 %indvars.iv102, 2
  br i1 %i.ca, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter190 = and i32 %.071, -2
  br label %.lr.ph89

._crit_edge90.thread:                             ; preds = %._crit_edge85
  %i.cb = sub nuw nsw i32 %i.q, %.071
  br label %._crit_edge98.split

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv108 = phi i64 [ 1, %.lr.ph89.preheader.new ], [ %indvars.iv.next109.1, %.lr.ph89 ] ; 5 uses
  %.07086 = phi i32 [ 0, %.lr.ph89.preheader.new ], [ %i.co, %.lr.ph89 ] ; 2 uses
  %niter191 = phi i32 [ 0, %.lr.ph89.preheader.new ], [ %niter191.next.1, %.lr.ph89 ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !13
  %i.ce = trunc nuw i64 %indvars.iv108 to i32
  %i.cf = add i32 %i.bz, %i.ce
  %i.cg = shl i32 %i.cd, %i.cf
  %i.ch = add i32 %i.cg, %.07086                  ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv108
  store i32 %.07086, ptr %i.ci, align 4, !tbaa !13
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next109
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !13
  %i.cl = trunc nuw i64 %indvars.iv.next109 to i32
  %i.cm = add i32 %i.bz, %i.cl
  %i.cn = shl i32 %i.ck, %i.cm
  %i.co = add i32 %i.cn, %i.ch                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next109
  store i32 %i.ch, ptr %i.cp, align 4, !tbaa !13
  %indvars.iv.next109.1 = add nuw nsw i64 %indvars.iv108, 2 ; 2 uses
  %niter191.next.1 = add i32 %niter191, 2         ; 2 uses
  %niter191.ncmp.1 = icmp eq i32 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge90.unr-lcssa, label %.lr.ph89, !llvm.loop !104

._crit_edge90.unr-lcssa:                          ; preds = %.lr.ph89
  %lcmp.mod188.not = icmp eq i32 %xtraiter186, 0
  br i1 %lcmp.mod188.not, label %._crit_edge90, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %._crit_edge90.unr-lcssa, %.lr.ph89.preheader
  %indvars.iv108.epil.init = phi i64 [ 1, %.lr.ph89.preheader ], [ %indvars.iv.next109.1, %._crit_edge90.unr-lcssa ]
  %.07086.epil.init = phi i32 [ 0, %.lr.ph89.preheader ], [ %i.co, %._crit_edge90.unr-lcssa ]
  %lcmp.mod189 = trunc i32 %.071 to i1
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv108.epil.init
  store i32 %.07086.epil.init, ptr %i.cq, align 4, !tbaa !13
  br label %._crit_edge90

._crit_edge90:                                    ; preds = %._crit_edge90.unr-lcssa, %.lr.ph89.epil.preheader
  %i.cr = sub i32 %i.q, %.071                     ; 4 uses
  %i.cs = add nuw nsw i32 %i.j, 1
  %i.ct = sub i32 %i.cs, %i.cr
  %i.cu = icmp ult i32 %i.cr, %i.ct
  br i1 %i.cu, label %.lr.ph93.preheader, label %._crit_edge98.split

.lr.ph93.preheader:                               ; preds = %._crit_edge90
  %i.cv = zext i32 %indvars.iv120 to i64          ; 2 uses
  %4 = zext i32 %.071 to i64                      ; 2 uses
  %min.iters.check = icmp ult i32 %.071, 8
  %n.vec = and i64 %4, 4294967288                 ; 3 uses
  %i.cw = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %4
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %._crit_edge94
  %indvar = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvar.next, %._crit_edge94 ] ; 2 uses
  %indvars.iv122 = phi i64 [ %i.cv, %.lr.ph93.preheader ], [ %indvars.iv.next123, %._crit_edge94 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %indvars.iv122 ; 6 uses
  %i.cy = trunc nuw i64 %indvars.iv122 to i32     ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph93
  %i.cz = add i64 %indvar, %i.cv
  %i.da = mul i64 %i.cz, 68
  %i.db = add i64 %i.da, -1
  %diff.check = icmp ult i64 %i.db, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cy, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = or disjoint i64 %index, 1               ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load = load <4 x i32>, ptr %i.dd, align 4, !tbaa !13
  %wide.load139 = load <4 x i32>, ptr %i.de, align 4, !tbaa !13
  %i.df = lshr <4 x i32> %wide.load, %broadcast.splat
  %i.dg = lshr <4 x i32> %wide.load139, %broadcast.splat
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dc ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <4 x i32> %i.df, ptr %i.dh, align 4, !tbaa !13
  store <4 x i32> %i.dg, ptr %i.di, align 4, !tbaa !13
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge94, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph93, %middle.block
  %indvars.iv114.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph93 ], [ %i.cw, %middle.block ] ; 3 uses
  %i.dk = trunc i64 %indvars.iv114.ph to i32      ; 2 uses
  %i.dl = sub i32 %indvars.iv102, %i.dk
  %i.dm = sub i32 %.071, %i.dk
  %xtraiter192 = and i32 %i.dl, 3                 ; 2 uses
  %lcmp.mod193.not = icmp eq i32 %xtraiter192, 0
  br i1 %lcmp.mod193.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv114.prol = phi i64 [ %indvars.iv.next115.prol, %scalar.ph.prol ], [ %indvars.iv114.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv114.prol
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !13
  %i.dp = lshr i32 %i.do, %i.cy
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv114.prol
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !13
  %indvars.iv.next115.prol = add nuw nsw i64 %indvars.iv114.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter192
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !106

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv114.unr = phi i64 [ %indvars.iv114.ph, %scalar.ph.preheader ], [ %indvars.iv.next115.prol, %scalar.ph.prol ]
  %i.dr = icmp ult i32 %i.dm, 3
  br i1 %i.dr, label %._crit_edge94, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv114 = phi i64 [ %indvars.iv.next115.3, %scalar.ph ], [ %indvars.iv114.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv114
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !13
  %i.du = lshr i32 %i.dt, %i.cy
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv114
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !13
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next115
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !13
  %i.dy = lshr i32 %i.dx, %i.cy
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next115
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !13
  %indvars.iv.next115.1 = add nuw nsw i64 %indvars.iv114, 2 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next115.1
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !13
  %i.ec = lshr i32 %i.eb, %i.cy
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next115.1
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !13
  %indvars.iv.next115.2 = add nuw nsw i64 %indvars.iv114, 3 ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next115.2
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13
  %i.eg = lshr i32 %i.ef, %i.cy
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv.next115.2
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !13
  %indvars.iv.next115.3 = add nuw nsw i64 %indvars.iv114, 4 ; 2 uses
  %lftr.wideiv118.3 = trunc i64 %indvars.iv.next115.3 to i32
  %exitcond119.not.3 = icmp eq i32 %indvars.iv102, %lftr.wideiv118.3
  br i1 %exitcond119.not.3, label %._crit_edge94, label %scalar.ph, !llvm.loop !107

._crit_edge94:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %lftr.wideiv127 = trunc i64 %indvars.iv.next123 to i32
  %exitcond128.not = icmp eq i32 %indvars.iv125, %lftr.wideiv127
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond128.not, label %._crit_edge98.split, label %.lr.ph93, !llvm.loop !108

._crit_edge98.split:                              ; preds = %._crit_edge94, %._crit_edge90.thread, %._crit_edge90
  %i.ei = phi i32 [ %i.cb, %._crit_edge90.thread ], [ %i.cr, %._crit_edge90 ], [ %i.cr, %._crit_edge94 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ej = sub nsw i32 %i.q, %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(68) %i.f, i64 68, i1 false)
  %.not56.i = icmp eq i32 %.073.lcssa, 0
  br i1 %.not56.i, label %HUFv07_fillDTableX4.exit, label %.lr.ph55.preheader.i

.lr.ph55.preheader.i:                             ; preds = %._crit_edge98.split
  %wide.trip.count61.i = zext i32 %.073.lcssa to i64
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.loopexit.i, %.lr.ph55.preheader.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph55.preheader.i ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv58.i ; 2 uses
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !37
  %i.em = zext i8 %i.el to i32                    ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !38  ; 2 uses
  %i.ep = zext i8 %i.eo to i32
  %i.eq = sub nsw i32 %i.q, %i.ep                 ; 6 uses
  %i.er = zext i8 %i.eo to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !13 ; 5 uses
  %i.eu = sub nsw i32 %i.j, %i.eq                 ; 3 uses
  %i.ev = shl nuw i32 1, %i.eu                    ; 2 uses
  %.not.i = icmp ult i32 %i.eu, %i.ei
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph55.i
  %i.ew = add nsw i32 %i.eq, %i.ej                ; 2 uses
  %spec.store.select.i = call i32 @llvm.smax.i32(i32 %i.ew, i32 1)
  %i.ex = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !13 ; 3 uses
  %i.fa = zext i32 %i.et to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.fa ; 4 uses
  %i.fc = zext i32 %i.eq to i64
  %i.fd = getelementptr inbounds nuw [68 x i8], ptr %i.f, i64 %i.fc
  %i.fe = zext i32 %i.ez to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fe
  %i.fg = sub i32 %.073.lcssa, %i.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(68) %i.fd, i64 68, i1 false)
  %i.fh = icmp sgt i32 %i.ew, 1
  br i1 %i.fh, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ex
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13 ; 3 uses
  %.not.i.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %.sroa.6.0.insert.ext42.i.i = shl nsw i32 %i.eq, 16
  %.sroa.6.0.insert.shift43.i.i = and i32 %.sroa.6.0.insert.ext42.i.i, 16711680
  %.sroa.6.0.insert.insert45.i.i = or disjoint i32 %.sroa.6.0.insert.shift43.i.i, %i.em
  %.sroa.0.0.insert.insert40.i.i = or disjoint i32 %.sroa.6.0.insert.insert45.i.i, 16777216 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.fj to i64    ; 3 uses
  %min.iters.check165 = icmp ult i32 %i.fj, 8
  br i1 %min.iters.check165, label %scalar.ph164.preheader, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph.i.i
  %n.vec167 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  %broadcast.splatinsert168 = insertelement <4 x i32> poison, i32 %.sroa.0.0.insert.insert40.i.i, i64 0
  %broadcast.splat169 = shufflevector <4 x i32> %broadcast.splatinsert168, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph166
  %index171 = phi i64 [ 0, %vector.ph166 ], [ %index.next172, %vector.body170 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index171 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %broadcast.splat169, ptr %i.fk, align 2
  store <4 x i32> %broadcast.splat169, ptr %i.fl, align 2
  %index.next172 = add nuw i64 %index171, 8       ; 2 uses
  %i.fm = icmp eq i64 %index.next172, %n.vec167
  br i1 %i.fm, label %middle.block173, label %vector.body170, !llvm.loop !109

middle.block173:                                  ; preds = %vector.body170
  %cmp.n174 = icmp eq i64 %n.vec167, %wide.trip.count.i.i
  br i1 %cmp.n174, label %.loopexit.i.i, label %scalar.ph164.preheader

scalar.ph164.preheader:                           ; preds = %.lr.ph.i.i, %middle.block173
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec167, %middle.block173 ]
  br label %scalar.ph164

scalar.ph164:                                     ; preds = %scalar.ph164.preheader, %scalar.ph164
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph164 ], [ %indvars.iv.i.i.ph, %scalar.ph164.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv.i.i
  store i32 %.sroa.0.0.insert.insert40.i.i, ptr %i.fn, align 2
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %scalar.ph164, !llvm.loop !110

.loopexit.i.i:                                    ; preds = %scalar.ph164, %middle.block173, %bb.e, %bb.d
end_hunk_0
