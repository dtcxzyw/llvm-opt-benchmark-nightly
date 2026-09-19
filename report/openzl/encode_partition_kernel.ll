Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_partition_kernel?download=true
inline.NumInlined: 59
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@ZL_partitionEncode:bb.a
  %i.iv = add nuw i64 %.112269.i, 1               ; 2 uses
  %exitcond77.not.i = icmp eq i64 %i.iv, %4
  br i1 %exitcond77.not.i, label %._crit_edge71.i, label %.lr.ph70.i, !llvm.loop !19

._crit_edge71.i:                                  ; preds = %ZS_BitCStreamFF_flush.exit134.i, %.preheader52.i
  %.sroa.0.2.lcssa.i = phi i64 [ %.sroa.0.0.lcssa.i, %.preheader52.i ], [ %.sroa.0.3.i, %ZS_BitCStreamFF_flush.exit134.i ] ; 5 uses
  %.sroa.25.2.lcssa.i = phi ptr [ %.sroa.25.0.lcssa.i, %.preheader52.i ], [ %.sroa.25.3.i, %ZS_BitCStreamFF_flush.exit134.i ] ; 6 uses
  %.sroa.14.227.lcssa.i = phi i64 [ %.sroa.14.025.lcssa.i, %.preheader52.i ], [ %.sroa.14.328.i, %ZS_BitCStreamFF_flush.exit134.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.iw = add i64 %.sroa.14.227.lcssa.i, 7        ; 2 uses
  %i.ix = lshr i64 %i.iw, 3                       ; 5 uses
  %i.iy = ptrtoint ptr %i.eo to i64
  %i.iz = ptrtoint ptr %.sroa.25.2.lcssa.i to i64 ; 2 uses
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = icmp ult i64 %i.ja, %i.ix
  br i1 %i.jb, label %ZS_BitCStreamFF_finish.exit.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge71.i
  %.not.i135.i = icmp eq i64 %i.ix, 0
  br i1 %.not.i135.i, label %ZS_BitCStreamFF_finish.exit.thread.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.l
  %xtraiter192 = and i64 %i.ix, 3                 ; 3 uses
  %i.jc = icmp ult i64 %i.iw, 32
  br i1 %i.jc, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter196 = and i64 %i.ix, 2305843009213693948
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %.07.i.i.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %i.jw, %.preheader.i ] ; 6 uses
  %niter197 = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter197.next.3, %.preheader.i ]
  %i.jd = shl nuw i64 %.07.i.i.i, 3
  %i.je = lshr i64 %.sroa.0.2.lcssa.i, %i.jd
  %i.jf = trunc i64 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %.07.i.i.i
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !55
  %i.jh = or disjoint i64 %.07.i.i.i, 1           ; 2 uses
  %i.ji = shl nuw i64 %i.jh, 3
  %i.jj = lshr i64 %.sroa.0.2.lcssa.i, %i.ji
  %i.jk = trunc i64 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %i.jh
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !55
  %i.jm = or disjoint i64 %.07.i.i.i, 2           ; 2 uses
  %i.jn = shl nuw i64 %i.jm, 3
  %i.jo = lshr i64 %.sroa.0.2.lcssa.i, %i.jn
  %i.jp = trunc i64 %i.jo to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %i.jm
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !55
  %i.jr = or disjoint i64 %.07.i.i.i, 3           ; 2 uses
  %i.js = shl nuw i64 %i.jr, 3
  %i.jt = lshr i64 %.sroa.0.2.lcssa.i, %i.js
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %i.jr
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !55
  %i.jw = add nuw nsw i64 %.07.i.i.i, 4           ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !20

ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa: ; preds = %.preheader.i
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %ZS_BitCStreamFF_finish.exit.thread.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa, %.preheader.i.preheader
  %.07.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %i.jw, %ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.preheader.i.epil

.preheader.i.epil:                                ; preds = %.preheader.i.epil, %.preheader.i.epil.preheader
  %.07.i.i.i.epil = phi i64 [ %i.kb, %.preheader.i.epil ], [ %.07.i.i.i.epil.init, %.preheader.i.epil.preheader ] ; 3 uses
  %epil.iter193 = phi i64 [ %epil.iter193.next, %.preheader.i.epil ], [ 0, %.preheader.i.epil.preheader ]
  %i.jx = shl nuw i64 %.07.i.i.i.epil, 3
  %i.jy = lshr i64 %.sroa.0.2.lcssa.i, %i.jx
  %i.jz = trunc i64 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.25.2.lcssa.i, i64 %.07.i.i.i.epil
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !55
  %i.kb = add nuw nsw i64 %.07.i.i.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %ZS_BitCStreamFF_finish.exit.thread.i, label %.preheader.i.epil, !llvm.loop !21

ZS_BitCStreamFF_finish.exit.thread.i:             ; preds = %ZS_BitCStreamFF_finish.exit.thread.i.loopexit.unr-lcssa, %.preheader.i.epil, %bb.l
  %i.kc = ptrtoint ptr %0 to i64
  %i.kd = sub i64 %i.iz, %i.kc
  %i.ke = add i64 %i.kd, %i.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  br label %ZL_partitionEncodeU16.exit

ZS_BitCStreamFF_finish.exit.i:                    ; preds = %._crit_edge71.i
  %i.kf = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %12, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.kg = extractvalue { i32, ptr } %i.kf, 0      ; 3 uses
  %i.kh = extractvalue { i32, ptr } %i.kf, 1      ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kg, ptr %i.kh, ptr noundef nonnull @.str.24) #8
  %i.ki = ptrtoint ptr %i.kh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  %.not127.i = icmp eq i32 %i.kg, 0
  br i1 %.not127.i, label %ZL_partitionEncodeU16.exit, label %bb.m, !prof !56

bb.m:                                             ; preds = %ZS_BitCStreamFF_finish.exit.i
  %i.kj = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.kg, ptr %i.kh, ptr nonnull @ZL_partitionEncodeU16.__zl_static_error_info.17, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 367, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.kk = extractvalue { i32, ptr } %i.kj, 0
  %i.kl = extractvalue { i32, ptr } %i.kj, 1
  %i.km = ptrtoint ptr %i.kl to i64
  br label %ZL_partitionEncodeU16.exit

ZL_partitionEncodeU16.exit:                       ; preds = %.thread.i, %bb.h, %ZL_PartitionLUTx2_build.exit.i, %ZS_BitCStreamFF_finish.exit.thread.i, %ZS_BitCStreamFF_finish.exit.i, %bb.m
  %.sroa.0114.6.i = phi i32 [ %i.an, %.thread.i ], [ %i.cq, %bb.h ], [ %i.ej, %ZL_PartitionLUTx2_build.exit.i ], [ %i.kk, %bb.m ], [ 0, %ZS_BitCStreamFF_finish.exit.i ], [ 0, %ZS_BitCStreamFF_finish.exit.thread.i ]
  %.sroa.14.6.i = phi i64 [ %i.ap, %.thread.i ], [ %i.cs, %bb.h ], [ %i.el, %ZL_PartitionLUTx2_build.exit.i ], [ %i.km, %bb.m ], [ %i.ki, %ZS_BitCStreamFF_finish.exit.i ], [ %i.ke, %ZS_BitCStreamFF_finish.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  br label %bb.aw

bb.n:                                             ; preds = %bb.a
  %i.kn = tail call i64 @ZL_PartitionParams_getLargestPartitionSize(ptr noundef %6) #8
  %i.ko = icmp ult i64 %i.kn, 268435457
  br i1 %i.ko, label %bb.o, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.kp = load i64, ptr %6, align 8, !tbaa !45    ; 4 uses
  %i.kq = icmp ult i64 %i.kp, 65537
  br i1 %i.kq, label %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kr = icmp ult i64 %i.kp, 4294967297
  %i.ks = tail call range(i64 1, 34) i64 @llvm.ctpop.i64(i64 range(i64 65537, 4294967297) %i.kp)
  %i.kt = icmp samesign ult i64 %i.ks, 2
  %or.cond.i29 = select i1 %i.kr, i1 %i.kt, i1 false
  br i1 %or.cond.i29, label %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i: ; preds = %bb.p, %bb.o
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !46 ; 3 uses
  %.not37.not.i = icmp eq i64 %i.kv, 0
  br i1 %.not37.not.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i
  %i.kw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !47
  br label %bb.q

bb.q:                                             ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, %.lr.ph.i30
  %.040.i = phi i64 [ 0, %.lr.ph.i30 ], [ %i.le, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ] ; 2 uses
  %.02139.i = phi i64 [ 0, %.lr.ph.i30 ], [ %spec.select.i, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ]
  %.02238.i = phi i64 [ %i.kp, %.lr.ph.i30 ], [ %i.ld, %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i ] ; 4 uses
  %i.ky = xor i64 %.02238.i, -1
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %.040.i
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !48 ; 2 uses
  %i.lb = icmp ugt i64 %i.la, %i.ky
  br i1 %i.lb, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lc = icmp ugt i64 %.02238.i, 65536
  %spec.select.i = select i1 %i.lc, i64 %.02238.i, i64 %.02139.i ; 2 uses
  %i.ld = add i64 %i.la, %.02238.i                ; 6 uses
  %i.le = add nuw i64 %.040.i, 1                  ; 3 uses
  %i.lf = icmp uge i64 %i.le, %i.kv
  %i.lg = icmp ult i64 %i.ld, 65537
  %or.cond35.i = or i1 %i.lf, %i.lg
  br i1 %or.cond35.i, label %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lh = icmp ult i64 %i.ld, 4294967297
  br i1 %i.lh, label %ZL_PartitionEncode_u32BoundarySupported.exit28.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit28.i: ; preds = %bb.s
  %i.li = tail call range(i64 1, 34) i64 @llvm.ctpop.i64(i64 range(i64 65537, 4294967297) %i.ld)
  %i.lj = icmp samesign ult i64 %i.li, 2
  %i.lk = icmp ugt i64 %i.ld, %spec.select.i
  %spec.select.i27.i = and i1 %i.lk, %i.lj
  br i1 %spec.select.i27.i, label %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i: ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.i, %bb.r
  %exitcond.not.i31 = icmp eq i64 %i.le, %i.kv
  br i1 %exitcond.not.i31, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit, label %bb.q, !llvm.loop !22

ZL_PartitionEncodeU32_canUseHybridLUT.exit:       ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit28.thread.i
  %i.ll = icmp ult i64 %i.ld, 4294967297
  br i1 %i.ll, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118, label %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread

ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118: ; preds = %ZL_PartitionEncode_u32BoundarySupported.exit.preheader.i, %ZL_PartitionEncodeU32_canUseHybridLUT.exit
  %.val27 = load ptr, ptr %7, align 8             ; 4 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val28 = load ptr, ptr %i.lm, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i8 0, i64 24, i1 false)
  %i.lo = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #9
  store ptr %i.lo, ptr %11, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.d, i8 0, i64 256, i1 false)
  call void @ZL_PartitionParams_computeBasesU64(ptr noundef nonnull %6, ptr noundef nonnull %i.c) #8
  call void @ZL_PartitionParams_computeBits(ptr noundef nonnull %6, ptr noundef nonnull %i.d) #8
  %i.lp = call i64 @ZL_PartitionParams_getNumTrailingZeros(ptr noundef nonnull %6) #8 ; 3 uses
  %i.lq = trunc i64 %i.lp to i32                  ; 4 uses
  %14 = call i32 @llvm.umin.i32(i32 %i.lq, i32 16)
  %narrow.i = lshr i32 65536, %14
  %i.lr = zext nneg i32 %narrow.i to i64          ; 6 uses
  %i.ls = call ptr %.val28(ptr noundef %.val27, i64 noundef range(i64 0, 65537) %i.lr) #8, !inline_history !23 ; 7 uses
  %i.lt = icmp eq ptr %i.ls, null
  br i1 %i.lt, label %.thread.i91, label %bb.t

bb.t:                                             ; preds = %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118
  %i.lu = load i64, ptr %6, align 8, !tbaa !45
  %i.lv = lshr i64 %i.lu, %i.lp                   ; 2 uses
  %..i.i32 = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.lr, i64 %i.lv) ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ls, i8 0, i64 %..i.i32, i1 false)
  %i.lw = load i64, ptr %i.ku, align 8, !tbaa !46 ; 2 uses
  %i.lx = icmp ne i64 %i.lw, 0
  %.not45.i.i33 = icmp ult i64 %i.lv, %i.lr       ; 2 uses
  %or.cond46.i.i34 = select i1 %i.lx, i1 %.not45.i.i33, i1 false
  br i1 %or.cond46.i.i34, label %.lr.ph.i.i85, label %._crit_edge.i.i35

.lr.ph.i.i85:                                     ; preds = %bb.t
  %i.ly = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.i85
  %.048.i.i86 = phi i64 [ 0, %.lr.ph.i.i85 ], [ %i.mh, %bb.u ] ; 3 uses
  %.03847.i.i87 = phi i64 [ %..i.i32, %.lr.ph.i.i85 ], [ %.44.i.i88, %bb.u ] ; 3 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !47
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %.048.i.i86
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !48
  %i.mc = lshr i64 %i.mb, %i.lp
  %i.md = add i64 %i.mc, %.03847.i.i87            ; 2 uses
  %.44.i.i88 = call i64 @llvm.umin.i64(i64 range(i64 0, 65537) %i.lr, i64 %i.md) ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.03847.i.i87
  %i.mf = trunc i64 %.048.i.i86 to i8
  %i.mg = sub nsw i64 %.44.i.i88, %.03847.i.i87
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.me, i8 %i.mf, i64 %i.mg, i1 false)
  %i.mh = add nuw i64 %.048.i.i86, 1              ; 2 uses
  %i.mi = load i64, ptr %i.ku, align 8, !tbaa !46 ; 2 uses
  %i.mj = icmp ult i64 %i.mh, %i.mi
  %.not.i.i89 = icmp ult i64 %i.md, %i.lr         ; 2 uses
  %or.cond.i.i90 = select i1 %i.mj, i1 %.not.i.i89, i1 false
  br i1 %or.cond.i.i90, label %bb.u, label %._crit_edge.i.i35, !llvm.loop !12

._crit_edge.i.i35:                                ; preds = %bb.u, %bb.t
  %i.mk = phi i64 [ %i.lw, %bb.t ], [ %i.mi, %bb.u ]
  %.038.lcssa.i.i36 = phi i64 [ %..i.i32, %bb.t ], [ %.44.i.i88, %bb.u ] ; 2 uses
  %.not.lcssa.i.i37 = phi i1 [ %.not45.i.i33, %bb.t ], [ %.not.i.i89, %bb.u ]
  br i1 %.not.lcssa.i.i37, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i35
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.038.lcssa.i.i36
  %i.mm = sub nuw nsw i64 %i.lr, %.038.lcssa.i.i36
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ml, i8 0, i64 %i.mm, i1 false)
  %.pre.i84 = load i64, ptr %i.ku, align 8, !tbaa !46
  br label %bb.w

.thread.i91:                                      ; preds = %ZL_PartitionEncodeU32_canUseHybridLUT.exit.thread118
  %i.mn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU32.__zl_static_error_info, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 438, i32 noundef 70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.mo = extractvalue { i32, ptr } %i.mn, 0      ; 2 uses
  %i.mp = extractvalue { i32, ptr } %i.mn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.mo, ptr %i.mp, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.mq = ptrtoint ptr %i.mp to i64
  br label %ZL_partitionEncodeU32.exit

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i35
  %i.mr = phi i64 [ %.pre.i84, %bb.v ], [ %i.mk, %._crit_edge.i.i35 ]
  %.fr.i = freeze i64 %i.mr                       ; 7 uses
  %i.ms = load i64, ptr %6, align 8, !tbaa !45    ; 6 uses
  %i.mt = add i64 %.fr.i, -1                      ; 3 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.mt
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !48
  %i.mw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !47
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mt
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !48
  %i.na = add i64 %i.mv, -1
  %i.nb = add i64 %i.na, %i.mz                    ; 7 uses
  %i.nc = icmp ne i64 %i.ms, 0
  %i.nd = icmp ult i64 %i.nb, 4294967295
  %or.cond.i38 = select i1 %i.nc, i1 true, i1 %i.nd
  %i.ne = icmp ne i64 %4, 0
  %or.cond76.i = and i1 %i.ne, %or.cond.i38
  br i1 %or.cond76.i, label %.lr.ph.i81.preheader, label %.thread31.i39

.lr.ph.i81.preheader:                             ; preds = %bb.w
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.nf = icmp ult i64 %4, 4
  br i1 %i.nf, label %.lr.ph.i81.epil.preheader, label %.lr.ph.i81.preheader.new

.lr.ph.i81.preheader.new:                         ; preds = %.lr.ph.i81.preheader
  %unroll_iter = and i64 %4, -4
  br label %.lr.ph.i81

._crit_edge.i83.unr-lcssa:                        ; preds = %.lr.ph.i81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i83, label %.lr.ph.i81.epil.preheader

.lr.ph.i81.epil.preheader:                        ; preds = %._crit_edge.i83.unr-lcssa, %.lr.ph.i81.preheader
  %.011255.i.epil.init = phi i1 [ true, %.lr.ph.i81.preheader ], [ %.1113.i.3, %._crit_edge.i83.unr-lcssa ]
  %.011454.i.epil.init = phi i64 [ 0, %.lr.ph.i81.preheader ], [ %i.op, %._crit_edge.i83.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph.i81.epil

.lr.ph.i81.epil:                                  ; preds = %.lr.ph.i81.epil, %.lr.ph.i81.epil.preheader
  %.011255.i.epil = phi i1 [ %.1113.i.epil, %.lr.ph.i81.epil ], [ %.011255.i.epil.init, %.lr.ph.i81.epil.preheader ]
  %.011454.i.epil = phi i64 [ %i.nl, %.lr.ph.i81.epil ], [ %.011454.i.epil.init, %.lr.ph.i81.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i81.epil ], [ 0, %.lr.ph.i81.epil.preheader ]
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i.epil
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !54
  %i.ni = zext i32 %i.nh to i64                   ; 2 uses
  %i.nj = icmp ule i64 %i.ms, %i.ni
  %i.nk = icmp uge i64 %i.nb, %i.ni
  %or.cond123.not.i.epil = select i1 %i.nj, i1 %i.nk, i1 false
  %.1113.i.epil = select i1 %or.cond123.not.i.epil, i1 %.011255.i.epil, i1 false ; 2 uses
  %i.nl = add nuw i64 %.011454.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i83, label %.lr.ph.i81.epil, !llvm.loop !24

._crit_edge.i83:                                  ; preds = %.lr.ph.i81.epil, %._crit_edge.i83.unr-lcssa
  %.1113.i.lcssa = phi i1 [ %.1113.i.3, %._crit_edge.i83.unr-lcssa ], [ %.1113.i.epil, %.lr.ph.i81.epil ]
  br i1 %.1113.i.lcssa, label %.thread31.i39, label %bb.x, !prof !53

.lr.ph.i81:                                       ; preds = %.lr.ph.i81, %.lr.ph.i81.preheader.new
  %.011255.i = phi i1 [ true, %.lr.ph.i81.preheader.new ], [ %.1113.i.3, %.lr.ph.i81 ]
  %.011454.i = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %i.op, %.lr.ph.i81 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i81.preheader.new ], [ %niter.next.3, %.lr.ph.i81 ]
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !54
  %i.no = zext i32 %i.nn to i64                   ; 2 uses
  %i.np = icmp ule i64 %i.ms, %i.no
  %i.nq = icmp uge i64 %i.nb, %i.no
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !54
  %i.nu = zext i32 %i.nt to i64                   ; 2 uses
  %i.nv = icmp ule i64 %i.ms, %i.nu
  %i.nw = icmp uge i64 %i.nb, %i.nu
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !54
  %i.oa = zext i32 %i.nz to i64                   ; 2 uses
  %i.ob = icmp ule i64 %i.ms, %i.oa
  %i.oc = icmp uge i64 %i.nb, %i.oa
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.011454.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !54
  %i.og = zext i32 %i.of to i64                   ; 2 uses
  %i.oh = icmp ule i64 %i.ms, %i.og
  %i.oi = icmp uge i64 %i.nb, %i.og
  %or.cond123.not.i.3 = select i1 %i.oh, i1 %i.oi, i1 false
  %i.oj = select i1 %or.cond123.not.i.3, i1 %i.ob, i1 false
  %i.ok = select i1 %i.oj, i1 %i.oc, i1 false
  %i.ol = select i1 %i.ok, i1 %i.nv, i1 false
  %i.om = select i1 %i.ol, i1 %i.nw, i1 false
  %i.on = select i1 %i.om, i1 %i.np, i1 false
  %i.oo = select i1 %i.on, i1 %i.nq, i1 false
  %.1113.i.3 = select i1 %i.oo, i1 %.011255.i, i1 false ; 3 uses
  %i.op = add nuw i64 %.011454.i, 4               ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i83.unr-lcssa, label %.lr.ph.i81, !llvm.loop !25

bb.x:                                             ; preds = %._crit_edge.i83
  %i.oq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncodeU32.__zl_static_error_info.26, ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25, i32 noundef 454, i32 noundef 55, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #8 ; 2 uses
  %i.or = extractvalue { i32, ptr } %i.oq, 0      ; 2 uses
  %i.os = extractvalue { i32, ptr } %i.oq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.or, ptr %i.os, ptr noundef nonnull @.str.13) #8
  %i.ot = ptrtoint ptr %i.os to i64
  br label %ZL_partitionEncodeU32.exit

.thread31.i39:                                    ; preds = %._crit_edge.i83, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.ou = load i64, ptr %i.c, align 16, !tbaa !48
  %.not26.i.i = icmp eq i64 %.fr.i, 0
  br i1 %.not26.i.i, label %.split.us.i, label %.thread31.split.i

.split.us.i:                                      ; preds = %ZL_findBucket.exit.i, %.thread31.i39
  %i.ov = icmp ult i64 %.fr.i, 2
  %i.ow = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, -1) %i.mt, i1 true)
  %i.ox = sub nuw nsw i64 64, %i.ow
  %i.oy = select i1 %i.ov, i64 0, i64 %i.ox       ; 4 uses
  %i.oz = shl nuw nsw i64 %i.oy, 1                ; 2 uses
  %i.pa = shl nuw i64 1, %i.oz                    ; 2 uses
  %notmask.i.i40 = shl nsw i64 -1, %i.oy
  %i.pb = xor i64 %notmask.i.i40, -1
  %i.pc = shl i64 8, %i.oz                        ; 2 uses
  %i.pd = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.pc) #8, !inline_history !26 ; 3 uses
  %i.pe = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.pc) #8, !inline_history !26 ; 3 uses
  %i.pf = call ptr %.val28(ptr noundef %.val27, i64 noundef %i.pa) #8, !inline_history !26 ; 3 uses
  %i.pg = icmp ne ptr %i.pd, null
  %i.ph = icmp ne ptr %i.pe, null
  %or.cond.i124.i = select i1 %i.pg, i1 %i.ph, i1 false
  %i.pi = icmp ne ptr %i.pf, null
  %or.cond3.i.i41 = select i1 %or.cond.i124.i, i1 %i.pi, i1 false
  br i1 %or.cond3.i.i41, label %.preheader.i.i45, label %ZL_PartitionLUTx2U32_build.exit.i

.preheader.i.i45:                                 ; preds = %.split.us.i, %.preheader.i.i45
  %.04753.i.i46 = phi i64 [ %i.qi, %.preheader.i.i45 ], [ 0, %.split.us.i ] ; 6 uses
  %i.pj = and i64 %.04753.i.i46, %i.pb            ; 2 uses
  %i.pk = lshr i64 %.04753.i.i46, %i.oy           ; 2 uses
end_hunk_0
begin_hunk_1_@ZL_partitionEncode:bb.a
  %i.yx = or i64 %i.yw, %i.yq
  %i.yy = add i64 %i.yr, %i.yt
  br label %ZL_partitionWriteBits.exit.i

ZL_partitionWriteBits.exit.i:                     ; preds = %ZS_BitCStreamFF_flush.exit.i.i, %bb.aq
  %.sroa.0.1.i107 = phi i64 [ %i.yf, %bb.aq ], [ %i.yx, %ZS_BitCStreamFF_flush.exit.i.i ] ; 3 uses
  %.sroa.23.2.i = phi ptr [ %.sroa.23.095.i, %bb.aq ], [ %.sroa.23.1.i, %ZS_BitCStreamFF_flush.exit.i.i ] ; 4 uses
  %.sroa.13.1.i = phi i64 [ %i.yg, %bb.aq ], [ %i.yy, %ZS_BitCStreamFF_flush.exit.i.i ] ; 4 uses
  %.not.i47.i = icmp ult ptr %.sroa.23.2.i, %i.wr
  br i1 %.not.i47.i, label %bb.at, label %ZS_BitCStreamFF_flush.exit.i108

bb.at:                                            ; preds = %ZL_partitionWriteBits.exit.i
  %i.yz = lshr i64 %.sroa.13.1.i, 3
  store i64 %.sroa.0.1.i107, ptr %.sroa.23.2.i, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %.sroa.23.2.i, i64 %i.yz
  %i.zb = and i64 %.sroa.13.1.i, 7
  %i.zc = and i64 %.sroa.13.1.i, -8
  %i.zd = lshr i64 %.sroa.0.1.i107, %i.zc
  br label %ZS_BitCStreamFF_flush.exit.i108

ZS_BitCStreamFF_flush.exit.i108:                  ; preds = %bb.at, %ZL_partitionWriteBits.exit.i
  %.sroa.0.2.i = phi i64 [ %i.zd, %bb.at ], [ %.sroa.0.1.i107, %ZL_partitionWriteBits.exit.i ] ; 6 uses
  %.sroa.23.3.i = phi ptr [ %i.za, %bb.at ], [ %.sroa.23.2.i, %ZL_partitionWriteBits.exit.i ] ; 7 uses
  %.sroa.13.2.i = phi i64 [ %i.zb, %bb.at ], [ %.sroa.13.1.i, %ZL_partitionWriteBits.exit.i ] ; 2 uses
  %i.ze = add nuw i64 %.097.i, 1                  ; 2 uses
  %exitcond.not.i109 = icmp eq i64 %i.ze, %4
  br i1 %exitcond.not.i109, label %.critedge.thread.i, label %bb.ah, !llvm.loop !33

.critedge.i:                                      ; preds = %ZL_findBucket.exit.i101, %ZL_readValue.exit.i
  %.021.i71.i = phi i64 [ %.021.i.i102, %ZL_findBucket.exit.i101 ], [ %i.wg, %ZL_readValue.exit.i ]
  %i.zf = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncode_generic.__zl_static_error_info, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 105, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i64 noundef %.021.i71.i, i64 noundef %i.wg) #8 ; 2 uses
  %i.zg = extractvalue { i32, ptr } %i.zf, 0      ; 2 uses
  %i.zh = extractvalue { i32, ptr } %i.zf, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.zg, ptr %i.zh, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.zi = ptrtoint ptr %i.zh to i64
  br label %ZL_partitionEncode_generic.exit

.critedge.thread.i:                               ; preds = %ZS_BitCStreamFF_flush.exit.i108
  %i.zj = add i64 %.sroa.13.2.i, 7                ; 2 uses
  %i.zk = lshr i64 %i.zj, 3                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  %i.zl = ptrtoint ptr %i.ws to i64
  %i.zm = ptrtoint ptr %.sroa.23.3.i to i64       ; 4 uses
  %i.zn = sub i64 %i.zl, %i.zm
  %i.zo = icmp ult i64 %i.zn, %i.zk
  br i1 %i.zo, label %ZS_BitCStreamFF_finish.exit.i114, label %bb.au

bb.au:                                            ; preds = %.critedge.thread.i
  %.not.i48.i = icmp eq i64 %i.zk, 0
  br i1 %.not.i48.i, label %ZS_BitCStreamFF_finish.exit.thread.i113, label %.preheader.i110.preheader

.preheader.i110.preheader:                        ; preds = %bb.au
  %xtraiter198 = and i64 %i.zk, 3                 ; 3 uses
  %i.zp = icmp ult i64 %i.zj, 32
  br i1 %i.zp, label %.preheader.i110.epil.preheader, label %.preheader.i110.preheader.new

.preheader.i110.preheader.new:                    ; preds = %.preheader.i110.preheader
  %unroll_iter202 = and i64 %i.zk, 2305843009213693948
  br label %.preheader.i110

.preheader.i110:                                  ; preds = %.preheader.i110, %.preheader.i110.preheader.new
  %.07.i.i.i111 = phi i64 [ 0, %.preheader.i110.preheader.new ], [ %i.aaj, %.preheader.i110 ] ; 6 uses
  %niter203 = phi i64 [ 0, %.preheader.i110.preheader.new ], [ %niter203.next.3, %.preheader.i110 ]
  %i.zq = shl nuw i64 %.07.i.i.i111, 3
  %i.zr = lshr i64 %.sroa.0.2.i, %i.zq
  %i.zs = trunc i64 %i.zr to i8
  %i.zt = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %.07.i.i.i111
  store i8 %i.zs, ptr %i.zt, align 1, !tbaa !55
  %i.zu = or disjoint i64 %.07.i.i.i111, 1        ; 2 uses
  %i.zv = shl nuw i64 %i.zu, 3
  %i.zw = lshr i64 %.sroa.0.2.i, %i.zv
  %i.zx = trunc i64 %i.zw to i8
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.zu
  store i8 %i.zx, ptr %i.zy, align 1, !tbaa !55
  %i.zz = or disjoint i64 %.07.i.i.i111, 2        ; 2 uses
  %i.aaa = shl nuw i64 %i.zz, 3
  %i.aab = lshr i64 %.sroa.0.2.i, %i.aaa
  %i.aac = trunc i64 %i.aab to i8
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.zz
  store i8 %i.aac, ptr %i.aad, align 1, !tbaa !55
  %i.aae = or disjoint i64 %.07.i.i.i111, 3       ; 2 uses
  %i.aaf = shl nuw i64 %i.aae, 3
  %i.aag = lshr i64 %.sroa.0.2.i, %i.aaf
  %i.aah = trunc i64 %i.aag to i8
  %i.aai = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %i.aae
  store i8 %i.aah, ptr %i.aai, align 1, !tbaa !55
  %i.aaj = add nuw nsw i64 %.07.i.i.i111, 4       ; 2 uses
  %niter203.next.3 = add i64 %niter203, 4         ; 2 uses
  %niter203.ncmp.3 = icmp eq i64 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, label %.preheader.i110, !llvm.loop !20

ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa: ; preds = %.preheader.i110
  %lcmp.mod200.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod200.not, label %ZS_BitCStreamFF_finish.exit.thread.i113, label %.preheader.i110.epil.preheader

.preheader.i110.epil.preheader:                   ; preds = %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, %.preheader.i110.preheader
  %.07.i.i.i111.epil.init = phi i64 [ 0, %.preheader.i110.preheader ], [ %i.aaj, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter198, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.preheader.i110.epil

.preheader.i110.epil:                             ; preds = %.preheader.i110.epil, %.preheader.i110.epil.preheader
  %.07.i.i.i111.epil = phi i64 [ %i.aao, %.preheader.i110.epil ], [ %.07.i.i.i111.epil.init, %.preheader.i110.epil.preheader ] ; 3 uses
  %epil.iter199 = phi i64 [ %epil.iter199.next, %.preheader.i110.epil ], [ 0, %.preheader.i110.epil.preheader ]
  %i.aak = shl nuw i64 %.07.i.i.i111.epil, 3
  %i.aal = lshr i64 %.sroa.0.2.i, %i.aak
  %i.aam = trunc i64 %i.aal to i8
  %i.aan = getelementptr inbounds nuw i8, ptr %.sroa.23.3.i, i64 %.07.i.i.i111.epil
  store i8 %i.aam, ptr %i.aan, align 1, !tbaa !55
  %i.aao = add nuw nsw i64 %.07.i.i.i111.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198
  br i1 %epil.iter199.cmp.not, label %ZS_BitCStreamFF_finish.exit.thread.i113, label %.preheader.i110.epil, !llvm.loop !34

ZS_BitCStreamFF_finish.exit.thread.i113:          ; preds = %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa, %.preheader.i110.epil, %bb.au, %.thread.i116
  %.sroa.13.0.lcssa109114.i = phi i64 [ 0, %.thread.i116 ], [ 0, %bb.au ], [ %i.zk, %.preheader.i110.epil ], [ %i.zk, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %i.aap = phi i64 [ %i.wt, %.thread.i116 ], [ %i.zm, %bb.au ], [ %i.zm, %.preheader.i110.epil ], [ %i.zm, %ZS_BitCStreamFF_finish.exit.thread.i113.loopexit.unr-lcssa ]
  %i.aaq = ptrtoint ptr %0 to i64
  %i.aar = sub i64 %.sroa.13.0.lcssa109114.i, %i.aaq
  %i.aas = add i64 %i.aar, %i.aap
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %ZL_partitionEncode_generic.exit

ZS_BitCStreamFF_finish.exit.i114:                 ; preds = %.critedge.thread.i
  %i.aat = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_BitCStreamFF_finish.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef 264, i32 noundef 71, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.8) #8 ; 2 uses
  %i.aau = extractvalue { i32, ptr } %i.aat, 0    ; 2 uses
  %i.aav = extractvalue { i32, ptr } %i.aat, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aau, ptr %i.aav, ptr noundef nonnull @.str.24) #8
  %i.aaw = ptrtoint ptr %i.aav to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.not89.i = icmp eq i32 %i.aau, 0
  br i1 %.not89.i, label %ZL_partitionEncode_generic.exit, label %bb.av, !prof !56

bb.av:                                            ; preds = %ZS_BitCStreamFF_finish.exit.i114
  %i.aax = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_partitionEncode_generic.__zl_static_error_info.37, ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.32, i32 noundef 117, i32 noundef 71, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.39) #8 ; 2 uses
  %i.aay = extractvalue { i32, ptr } %i.aax, 0    ; 2 uses
  %i.aaz = extractvalue { i32, ptr } %i.aax, 1    ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aay, ptr %i.aaz, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.aba = ptrtoint ptr %i.aaz to i64
  br label %ZL_partitionEncode_generic.exit

ZL_partitionEncode_generic.exit:                  ; preds = %.critedge.i, %ZS_BitCStreamFF_finish.exit.thread.i113, %ZS_BitCStreamFF_finish.exit.i114, %bb.av
  %.sroa.041.4.i = phi i32 [ %i.zg, %.critedge.i ], [ %i.aay, %bb.av ], [ 0, %ZS_BitCStreamFF_finish.exit.i114 ], [ 0, %ZS_BitCStreamFF_finish.exit.thread.i113 ]
  %.sroa.7.4.i = phi i64 [ %i.zi, %.critedge.i ], [ %i.aba, %bb.av ], [ %i.aaw, %ZS_BitCStreamFF_finish.exit.i114 ], [ %i.aas, %ZS_BitCStreamFF_finish.exit.thread.i113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %bb.aw

bb.aw:                                            ; preds = %ZL_partitionEncode_generic.exit, %ZL_partitionEncodeU32.exit, %ZL_partitionEncodeU16.exit
  %.sroa.0114.6.i.pn = phi i32 [ %.sroa.0114.6.i, %ZL_partitionEncodeU16.exit ], [ %.sroa.0108.6.i, %ZL_partitionEncodeU32.exit ], [ %.sroa.041.4.i, %ZL_partitionEncode_generic.exit ]
  %.sroa.14.6.i.pn = phi i64 [ %.sroa.14.6.i, %ZL_partitionEncodeU16.exit ], [ %.sroa.14.6.i42, %ZL_partitionEncodeU32.exit ], [ %.sroa.7.4.i, %ZL_partitionEncode_generic.exit ]
  %.fca.0.insert.i.pn = insertvalue { i32, i64 } poison, i32 %.sroa.0114.6.i.pn, 0
  %.pn = insertvalue { i32, i64 } %.fca.0.insert.i.pn, i64 %.sroa.14.6.i.pn, 1
  ret { i32, i64 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #3

declare i64 @ZL_PartitionParams_getLargestPartitionSize(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ZL_PartitionParams_computeBasesU64(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @ZL_PartitionParams_computeBits(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @ZL_PartitionParams_getNumTrailingZeros(ptr noundef) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #4

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{null, null}
!12 = distinct !{!12, !49}
!13 = distinct !{!13, !52}
!14 = distinct !{!14, !49}
!15 = distinct !{null, null}
!16 = distinct !{!16, !49}
!17 = distinct !{!17, !49}
!18 = distinct !{!18, !49}
!19 = distinct !{!19, !49}
!20 = distinct !{!20, !49}
!21 = distinct !{!21, !52}
!22 = distinct !{!22, !49}
!23 = distinct !{null, null}
!24 = distinct !{!24, !52}
!25 = distinct !{!25, !49}
!26 = distinct !{null, null}
!27 = distinct !{!27, !49}
!28 = distinct !{!28, !49}
!29 = distinct !{!29, !49}
!30 = distinct !{!30, !49}
!31 = distinct !{!31, !49}
!32 = distinct !{!32, !52}
!33 = distinct !{!33, !49}
!34 = distinct !{!34, !52}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!"p1 _ZTS21ZL_OperationContext_s", !35, i64 0}
!37 = !{!"", !8, i64 0}
!38 = !{!"p1 omnipotent char", !35, i64 0}
!39 = !{!"", !37, i64 0, !37, i64 4, !8, i64 8, !38, i64 16}
!40 = !{!"", !36, i64 0, !39, i64 8}
!41 = !{!40, !36, i64 0}
!42 = !{!"long", !7, i64 0}
!43 = !{!"p1 long", !35, i64 0}
!44 = !{!"", !42, i64 0, !42, i64 8, !43, i64 16}
!45 = !{!44, !42, i64 0}
!46 = !{!44, !42, i64 8}
!47 = !{!44, !43, i64 16}
!48 = !{!42, !42, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"short", !7, i64 0}
!51 = !{!50, !50, i64 0}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!8, !8, i64 0}
!55 = !{!7, !7, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2145337238, i32 2146410}
!57 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_1
