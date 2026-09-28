Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmstypes?download=true
inline.NumInlined: 73
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Type_UInt64_Write:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal ptr @Type_UInt64_Dup(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = shl i32 %2, 3
  %i.d = tail call ptr @_cmsDupMem(ptr noundef %i.b, ptr noundef %1, i32 noundef %i.c) #11
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal void @Type_UInt64_Free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  tail call void @_cmsFree(ptr noundef %i.b, ptr noundef %1) #11
  ret void
}

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cmsReadUInt16Number(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cmsRead15Fixed16Number(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cmsWriteUInt16Number(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @_cmsWriteUInt32Number(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cmsDoubleTo15Fixed16(double noundef) local_unnamed_addr #1

declare i32 @_cmsReadUInt32Number(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_cmsCalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cmsWrite15Fixed16Number(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare ptr @cmsMLUalloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_cmsMalloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cmsMLUsetASCII(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @cmsMLUfree(ptr noundef) local_unnamed_addr #1

declare i32 @cmsMLUgetASCII(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cmsMLUdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_cmsReadWCharArray(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %.lr.ph.i, label %convert_utf16_to_utf32.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.h
  %.0823.i = phi ptr [ %.2.i, %bb.h ], [ %2, %bb.a ] ; 3 uses
  %.0922.i = phi i32 [ %.211.i, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %i.d = call i32 @_cmsReadUInt16Number(ptr noundef %0, ptr noundef nonnull %i.a) #11
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %convert_utf16_to_utf32.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = load i16, ptr %i.a, align 2, !tbaa !51
  %i.f = zext i16 %i.e to i32                     ; 2 uses
  %i.g = and i32 %i.f, 63488
  %.not19.i = icmp eq i32 %i.g, 55296
  br i1 %.not19.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %.0922.i, -1
  store i32 %i.f, ptr %.0823.i, align 4, !tbaa !37
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.i = call i32 @_cmsReadUInt16Number(ptr noundef %0, ptr noundef nonnull %i.b) #11
  %.not16.i = icmp eq i32 %i.i, 0
  br i1 %.not16.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %.0922.i, -2
  %i.k = load i16, ptr %i.a, align 2, !tbaa !51
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 64512
  %.not20.i = icmp eq i32 %i.m, 55296
  br i1 %.not20.i, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.n = load i16, ptr %i.b, align 2, !tbaa !51
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = and i32 %i.o, 64512
  %.not21.i = icmp eq i32 %i.p, 56320
  br i1 %.not21.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.q = shl nuw nsw i32 %i.l, 10
  %i.r = add nsw i32 %i.q, -56613888
  %i.s = add nuw nsw i32 %i.r, %i.o
  store i32 %i.s, ptr %.0823.i, align 4, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.211.i = phi i32 [ %i.j, %bb.g ], [ %i.h, %bb.c ] ; 2 uses
  %.2.i = getelementptr inbounds nuw i8, ptr %.0823.i, i64 4
  %i.t = icmp sgt i32 %.211.i, 0
  br i1 %i.t, label %.lr.ph.i, label %convert_utf16_to_utf32.exit, !llvm.loop !6

.critedge.i:                                      ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %convert_utf16_to_utf32.exit

convert_utf16_to_utf32.exit:                      ; preds = %.lr.ph.i, %bb.h, %bb.a, %.critedge.i
  %.3.i = phi i32 [ 0, %.critedge.i ], [ 1, %bb.a ], [ 1, %bb.h ], [ 0, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.3.i
}

declare i32 @cmsMLUsetWide(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cmsReadUInt8Number(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cmsMLUgetWide(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @_cmsWriteUInt8Number(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @cmsBuildParametricToneCurve(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare double @_cms8Fixed8toDouble(i16 noundef zeroext) local_unnamed_addr #1

declare ptr @cmsBuildTabulatedToneCurve16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_cmsReadUInt16Array(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @cmsFreeToneCurve(ptr noundef) local_unnamed_addr #1

declare zeroext i16 @_cmsDoubleTo8Fixed8(double noundef) local_unnamed_addr #1

declare i32 @_cmsWriteUInt16Array(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsDupToneCurve(ptr noundef) local_unnamed_addr #1

declare void @cmsSignalError(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_cmsDecodeDateTimeNumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_cmsEncodeDateTimeNumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsPipelineAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_cmsMAT3isIdentity(ptr noundef) local_unnamed_addr #1

declare i32 @cmsPipelineInsertStage(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageAllocMatrix(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Read8bitTables(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 256) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = add nsw i32 %3, -17
  %or.cond = icmp ult i32 %i.b, -16
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.c = tail call ptr @_cmsMalloc(ptr noundef %0, i32 noundef 256) #11 ; 43 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph58, label %.lr.ph, !llvm.loop !241

.lr.ph58:                                         ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 280
  %umax = tail call i32 @llvm.umax.i32(i32 %3, i32 1)
  %wide.trip.count78 = zext nneg i32 %umax to i64
  %scevgep94 = getelementptr i8, ptr %i.c, i64 256
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.ak = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %0, i32 noundef 256, ptr noundef null) #11 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !92
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %.lr.ph63.preheader, label %bb.c

bb.d:                                             ; preds = %.lr.ph58, %middle.block
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next76, %middle.block ] ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.ao = tail call i32 %i.an(ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 256, i32 noundef 1) #11
  %.not47 = icmp eq i32 %i.ao, 1
  br i1 %.not47, label %.preheader50, label %.lr.ph63.preheader

.preheader50:                                     ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv75
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !62 ; 38 uses
  %scevgep = getelementptr i8, ptr %i.as, i64 512
  %bound0 = icmp ult ptr %i.as, %scevgep94
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader50
  %wide.load = load <8 x i8>, ptr %i.c, align 1, !tbaa !49, !alias.scope !249
  %wide.load95 = load <8 x i8>, ptr %i.f, align 1, !tbaa !49, !alias.scope !249
  %i.at = zext <8 x i8> %wide.load to <8 x i16>   ; 2 uses
  %i.au = zext <8 x i8> %wide.load95 to <8 x i16> ; 2 uses
  %i.av = shl nuw <8 x i16> %i.at, splat (i16 8)
  %i.aw = shl nuw <8 x i16> %i.au, splat (i16 8)
  %i.ax = or disjoint <8 x i16> %i.av, %i.at
  %i.ay = or disjoint <8 x i16> %i.aw, %i.au
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <8 x i16> %i.ax, ptr %i.as, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.ay, ptr %i.az, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.1 = load <8 x i8>, ptr %i.g, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.1 = load <8 x i8>, ptr %i.h, align 1, !tbaa !49, !alias.scope !249
  %i.ba = zext <8 x i8> %wide.load.1 to <8 x i16> ; 2 uses
  %i.bb = zext <8 x i8> %wide.load95.1 to <8 x i16> ; 2 uses
  %i.bc = shl nuw <8 x i16> %i.ba, splat (i16 8)
  %i.bd = shl nuw <8 x i16> %i.bb, splat (i16 8)
  %i.be = or disjoint <8 x i16> %i.bc, %i.ba
  %i.bf = or disjoint <8 x i16> %i.bd, %i.bb
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  store <8 x i16> %i.be, ptr %i.bg, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.bf, ptr %i.bh, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.2 = load <8 x i8>, ptr %i.i, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.2 = load <8 x i8>, ptr %i.j, align 1, !tbaa !49, !alias.scope !249
  %i.bi = zext <8 x i8> %wide.load.2 to <8 x i16> ; 2 uses
  %i.bj = zext <8 x i8> %wide.load95.2 to <8 x i16> ; 2 uses
  %i.bk = shl nuw <8 x i16> %i.bi, splat (i16 8)
  %i.bl = shl nuw <8 x i16> %i.bj, splat (i16 8)
  %i.bm = or disjoint <8 x i16> %i.bk, %i.bi
  %i.bn = or disjoint <8 x i16> %i.bl, %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  store <8 x i16> %i.bm, ptr %i.bo, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.bn, ptr %i.bp, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.3 = load <8 x i8>, ptr %i.k, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.3 = load <8 x i8>, ptr %i.l, align 1, !tbaa !49, !alias.scope !249
  %i.bq = zext <8 x i8> %wide.load.3 to <8 x i16> ; 2 uses
  %i.br = zext <8 x i8> %wide.load95.3 to <8 x i16> ; 2 uses
  %i.bs = shl nuw <8 x i16> %i.bq, splat (i16 8)
  %i.bt = shl nuw <8 x i16> %i.br, splat (i16 8)
  %i.bu = or disjoint <8 x i16> %i.bs, %i.bq
  %i.bv = or disjoint <8 x i16> %i.bt, %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  store <8 x i16> %i.bu, ptr %i.bw, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.bv, ptr %i.bx, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.4 = load <8 x i8>, ptr %i.m, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.4 = load <8 x i8>, ptr %i.n, align 1, !tbaa !49, !alias.scope !249
  %i.by = zext <8 x i8> %wide.load.4 to <8 x i16> ; 2 uses
  %i.bz = zext <8 x i8> %wide.load95.4 to <8 x i16> ; 2 uses
  %i.ca = shl nuw <8 x i16> %i.by, splat (i16 8)
  %i.cb = shl nuw <8 x i16> %i.bz, splat (i16 8)
  %i.cc = or disjoint <8 x i16> %i.ca, %i.by
  %i.cd = or disjoint <8 x i16> %i.cb, %i.bz
  %i.ce = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.cf = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  store <8 x i16> %i.cc, ptr %i.ce, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.cd, ptr %i.cf, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.5 = load <8 x i8>, ptr %i.o, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.5 = load <8 x i8>, ptr %i.p, align 1, !tbaa !49, !alias.scope !249
  %i.cg = zext <8 x i8> %wide.load.5 to <8 x i16> ; 2 uses
  %i.ch = zext <8 x i8> %wide.load95.5 to <8 x i16> ; 2 uses
  %i.ci = shl nuw <8 x i16> %i.cg, splat (i16 8)
  %i.cj = shl nuw <8 x i16> %i.ch, splat (i16 8)
  %i.ck = or disjoint <8 x i16> %i.ci, %i.cg
  %i.cl = or disjoint <8 x i16> %i.cj, %i.ch
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 160
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 176
  store <8 x i16> %i.ck, ptr %i.cm, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.cl, ptr %i.cn, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.6 = load <8 x i8>, ptr %i.q, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.6 = load <8 x i8>, ptr %i.r, align 1, !tbaa !49, !alias.scope !249
  %i.co = zext <8 x i8> %wide.load.6 to <8 x i16> ; 2 uses
  %i.cp = zext <8 x i8> %wide.load95.6 to <8 x i16> ; 2 uses
  %i.cq = shl nuw <8 x i16> %i.co, splat (i16 8)
  %i.cr = shl nuw <8 x i16> %i.cp, splat (i16 8)
  %i.cs = or disjoint <8 x i16> %i.cq, %i.co
  %i.ct = or disjoint <8 x i16> %i.cr, %i.cp
  %i.cu = getelementptr inbounds nuw i8, ptr %i.as, i64 192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 208
  store <8 x i16> %i.cs, ptr %i.cu, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.ct, ptr %i.cv, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.7 = load <8 x i8>, ptr %i.s, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.7 = load <8 x i8>, ptr %i.t, align 1, !tbaa !49, !alias.scope !249
  %i.cw = zext <8 x i8> %wide.load.7 to <8 x i16> ; 2 uses
  %i.cx = zext <8 x i8> %wide.load95.7 to <8 x i16> ; 2 uses
  %i.cy = shl nuw <8 x i16> %i.cw, splat (i16 8)
  %i.cz = shl nuw <8 x i16> %i.cx, splat (i16 8)
  %i.da = or disjoint <8 x i16> %i.cy, %i.cw
  %i.db = or disjoint <8 x i16> %i.cz, %i.cx
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  %i.dd = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  store <8 x i16> %i.da, ptr %i.dc, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.db, ptr %i.dd, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.8 = load <8 x i8>, ptr %i.u, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.8 = load <8 x i8>, ptr %i.v, align 1, !tbaa !49, !alias.scope !249
  %i.de = zext <8 x i8> %wide.load.8 to <8 x i16> ; 2 uses
  %i.df = zext <8 x i8> %wide.load95.8 to <8 x i16> ; 2 uses
  %i.dg = shl nuw <8 x i16> %i.de, splat (i16 8)
  %i.dh = shl nuw <8 x i16> %i.df, splat (i16 8)
  %i.di = or disjoint <8 x i16> %i.dg, %i.de
  %i.dj = or disjoint <8 x i16> %i.dh, %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %i.as, i64 256
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 272
  store <8 x i16> %i.di, ptr %i.dk, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.dj, ptr %i.dl, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.9 = load <8 x i8>, ptr %i.w, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.9 = load <8 x i8>, ptr %i.x, align 1, !tbaa !49, !alias.scope !249
  %i.dm = zext <8 x i8> %wide.load.9 to <8 x i16> ; 2 uses
  %i.dn = zext <8 x i8> %wide.load95.9 to <8 x i16> ; 2 uses
  %i.do = shl nuw <8 x i16> %i.dm, splat (i16 8)
  %i.dp = shl nuw <8 x i16> %i.dn, splat (i16 8)
  %i.dq = or disjoint <8 x i16> %i.do, %i.dm
  %i.dr = or disjoint <8 x i16> %i.dp, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 288
  %i.dt = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  store <8 x i16> %i.dq, ptr %i.ds, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.dr, ptr %i.dt, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.10 = load <8 x i8>, ptr %i.y, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.10 = load <8 x i8>, ptr %i.z, align 1, !tbaa !49, !alias.scope !249
  %i.du = zext <8 x i8> %wide.load.10 to <8 x i16> ; 2 uses
  %i.dv = zext <8 x i8> %wide.load95.10 to <8 x i16> ; 2 uses
  %i.dw = shl nuw <8 x i16> %i.du, splat (i16 8)
  %i.dx = shl nuw <8 x i16> %i.dv, splat (i16 8)
  %i.dy = or disjoint <8 x i16> %i.dw, %i.du
  %i.dz = or disjoint <8 x i16> %i.dx, %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.as, i64 320
  %i.eb = getelementptr inbounds nuw i8, ptr %i.as, i64 336
  store <8 x i16> %i.dy, ptr %i.ea, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.dz, ptr %i.eb, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.11 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.11 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !49, !alias.scope !249
  %i.ec = zext <8 x i8> %wide.load.11 to <8 x i16> ; 2 uses
  %i.ed = zext <8 x i8> %wide.load95.11 to <8 x i16> ; 2 uses
  %i.ee = shl nuw <8 x i16> %i.ec, splat (i16 8)
  %i.ef = shl nuw <8 x i16> %i.ed, splat (i16 8)
  %i.eg = or disjoint <8 x i16> %i.ee, %i.ec
  %i.eh = or disjoint <8 x i16> %i.ef, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.as, i64 352
  %i.ej = getelementptr inbounds nuw i8, ptr %i.as, i64 368
  store <8 x i16> %i.eg, ptr %i.ei, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.eh, ptr %i.ej, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.12 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.12 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !49, !alias.scope !249
  %i.ek = zext <8 x i8> %wide.load.12 to <8 x i16> ; 2 uses
  %i.el = zext <8 x i8> %wide.load95.12 to <8 x i16> ; 2 uses
  %i.em = shl nuw <8 x i16> %i.ek, splat (i16 8)
  %i.en = shl nuw <8 x i16> %i.el, splat (i16 8)
  %i.eo = or disjoint <8 x i16> %i.em, %i.ek
  %i.ep = or disjoint <8 x i16> %i.en, %i.el
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  %i.er = getelementptr inbounds nuw i8, ptr %i.as, i64 400
  store <8 x i16> %i.eo, ptr %i.eq, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.ep, ptr %i.er, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.13 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.13 = load <8 x i8>, ptr %i.af, align 1, !tbaa !49, !alias.scope !249
  %i.es = zext <8 x i8> %wide.load.13 to <8 x i16> ; 2 uses
  %i.et = zext <8 x i8> %wide.load95.13 to <8 x i16> ; 2 uses
  %i.eu = shl nuw <8 x i16> %i.es, splat (i16 8)
  %i.ev = shl nuw <8 x i16> %i.et, splat (i16 8)
  %i.ew = or disjoint <8 x i16> %i.eu, %i.es
  %i.ex = or disjoint <8 x i16> %i.ev, %i.et
  %i.ey = getelementptr inbounds nuw i8, ptr %i.as, i64 416
  %i.ez = getelementptr inbounds nuw i8, ptr %i.as, i64 432
  store <8 x i16> %i.ew, ptr %i.ey, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.ex, ptr %i.ez, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.14 = load <8 x i8>, ptr %i.ag, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.14 = load <8 x i8>, ptr %i.ah, align 1, !tbaa !49, !alias.scope !249
  %i.fa = zext <8 x i8> %wide.load.14 to <8 x i16> ; 2 uses
  %i.fb = zext <8 x i8> %wide.load95.14 to <8 x i16> ; 2 uses
  %i.fc = shl nuw <8 x i16> %i.fa, splat (i16 8)
  %i.fd = shl nuw <8 x i16> %i.fb, splat (i16 8)
  %i.fe = or disjoint <8 x i16> %i.fc, %i.fa
  %i.ff = or disjoint <8 x i16> %i.fd, %i.fb
  %i.fg = getelementptr inbounds nuw i8, ptr %i.as, i64 448
  %i.fh = getelementptr inbounds nuw i8, ptr %i.as, i64 464
  store <8 x i16> %i.fe, ptr %i.fg, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.ff, ptr %i.fh, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  %wide.load.15 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !49, !alias.scope !249
  %wide.load95.15 = load <8 x i8>, ptr %i.aj, align 1, !tbaa !49, !alias.scope !249
  %i.fi = zext <8 x i8> %wide.load.15 to <8 x i16> ; 2 uses
  %i.fj = zext <8 x i8> %wide.load95.15 to <8 x i16> ; 2 uses
  %i.fk = shl nuw <8 x i16> %i.fi, splat (i16 8)
  %i.fl = shl nuw <8 x i16> %i.fj, splat (i16 8)
  %i.fm = or disjoint <8 x i16> %i.fk, %i.fi
  %i.fn = or disjoint <8 x i16> %i.fl, %i.fj
  %i.fo = getelementptr inbounds nuw i8, ptr %i.as, i64 480
  %i.fp = getelementptr inbounds nuw i8, ptr %i.as, i64 496
  store <8 x i16> %i.fm, ptr %i.fo, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  store <8 x i16> %i.fn, ptr %i.fp, align 2, !tbaa !51, !alias.scope !250, !noalias !249
  br label %middle.block

scalar.ph:                                        ; preds = %.preheader50, %scalar.ph
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %scalar.ph ], [ 0, %.preheader50 ] ; 6 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv71
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !49
  %i.fs = zext i8 %i.fr to i16                    ; 2 uses
  %i.ft = shl nuw i16 %i.fs, 8
  %i.fu = or disjoint i16 %i.ft, %i.fs
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv71
  store i16 %i.fu, ptr %i.fv, align 2, !tbaa !51
  %indvars.iv.next72 = or disjoint i64 %indvars.iv71, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next72
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !49
  %i.fy = zext i8 %i.fx to i16                    ; 2 uses
  %i.fz = shl nuw i16 %i.fy, 8
  %i.ga = or disjoint i16 %i.fz, %i.fy
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next72
  store i16 %i.ga, ptr %i.gb, align 2, !tbaa !51
  %indvars.iv.next72.1 = or disjoint i64 %indvars.iv71, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next72.1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !49
  %i.ge = zext i8 %i.gd to i16                    ; 2 uses
  %i.gf = shl nuw i16 %i.ge, 8
  %i.gg = or disjoint i16 %i.gf, %i.ge
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next72.1
  store i16 %i.gg, ptr %i.gh, align 2, !tbaa !51
  %indvars.iv.next72.2 = or disjoint i64 %indvars.iv71, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next72.2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !49
  %i.gk = zext i8 %i.gj to i16                    ; 2 uses
  %i.gl = shl nuw i16 %i.gk, 8
  %i.gm = or disjoint i16 %i.gl, %i.gk
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.next72.2
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !51
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond74.not.3 = icmp eq i64 %indvars.iv.next72.3, 256
  br i1 %exitcond74.not.3, label %middle.block, label %scalar.ph, !llvm.loop !245

middle.block:                                     ; preds = %scalar.ph, %vector.body
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %._crit_edge, label %bb.d, !llvm.loop !246

._crit_edge:                                      ; preds = %middle.block
  tail call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %i.c) #11
  %i.go = call ptr @cmsStageAllocToneCurves(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %i.a) #11
  %i.gp = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.go) #11
  %.not = icmp eq i32 %i.gp, 0
  br i1 %.not, label %.lr.ph63.preheader, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %umax83 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  %wide.trip.count83 = zext nneg i32 %umax83 to i64
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv80 = phi i64 [ 0, %.lr.ph60.preheader ], [ %indvars.iv.next81, %.lr.ph60 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !92
  call void @cmsFreeToneCurve(ptr noundef %i.gr) #11
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.lr.ph60, !llvm.loop !247

.lr.ph63.preheader:                               ; preds = %.lr.ph, %bb.d, %._crit_edge
  %.042 = phi ptr [ %i.c, %bb.d ], [ null, %._crit_edge ], [ %i.c, %.lr.ph ] ; 2 uses
  %umax89 = call i32 @llvm.umax.i32(i32 %3, i32 1)
  %wide.trip.count88 = zext nneg i32 %umax89 to i64
  br label %.lr.ph63

.lr.ph63:                                         ; preds = %.lr.ph63.preheader, %bb.f
  %indvars.iv85 = phi i64 [ 0, %.lr.ph63.preheader ], [ %indvars.iv.next86, %bb.f ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv85
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !92 ; 2 uses
  %.not49 = icmp eq ptr %i.gt, null
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph63
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.gt) #11
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph63, %bb.e
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %._crit_edge64, label %.lr.ph63, !llvm.loop !248

._crit_edge64:                                    ; preds = %bb.f
  %.not48 = icmp eq ptr %.042, null
  br i1 %.not48, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %._crit_edge64
  call void @_cmsFree(ptr noundef %0, ptr noundef nonnull %.042) #11
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph60, %._crit_edge64, %bb.g, %bb.b, %bb.a
  %.043 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge64 ], [ 0, %bb.g ], [ 1, %.lr.ph60 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.043
}

declare ptr @cmsStageAllocCLut16bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @cmsPipelineFree(ptr noundef) local_unnamed_addr #1

declare ptr @cmsStageAllocToneCurves(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @cmsPipelineInputChannels(ptr noundef) local_unnamed_addr #1

declare i32 @cmsPipelineOutputChannels(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Write8bitTables(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %.not39 = icmp eq i32 %2, 0
  br i1 %.not39, label %.loopexit31, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not, label %.loopexit31, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.loopexit
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next46, %.loopexit ] ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv45
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !69
  switch i32 %i.f, label %.thread [
    i32 2, label %bb.b
    i32 256, label %.preheader32
  ]

bb.b:                                             ; preds = %.lr.ph.split
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !tbaa !51
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !51
  %i.m = icmp eq i16 %i.l, -1
  br i1 %i.m, label %.preheader, label %.thread

bb.d:                                             ; preds = %.preheader
  %i.n = add nuw nsw i32 %.02437, 1               ; 2 uses
  %exitcond44.not = icmp eq i32 %i.n, 256
  br i1 %exitcond44.not, label %.loopexit, label %.preheader, !llvm.loop !251

.preheader:                                       ; preds = %bb.c, %bb.d
  %.02437 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.o = trunc nuw i32 %.02437 to i8
  %i.p = tail call i32 @_cmsWriteUInt8Number(ptr noundef %1, i8 noundef zeroext %i.o) #11
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %.loopexit31, label %bb.d

.thread:                                          ; preds = %.lr.ph.split, %bb.b, %bb.c
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.11) #11
  br label %.loopexit31

bb.e:                                             ; preds = %.preheader32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %.loopexit, label %.preheader32, !llvm.loop !252

.preheader32:                                     ; preds = %.lr.ph.split, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv45
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i16, ptr %i.v, align 2, !tbaa !51
  %i.x = zext i16 %i.w to i32
  %i.y = mul nuw i32 %i.x, 65281
  %i.z = add nuw i32 %i.y, 8388608
  %i.aa = lshr i32 %i.z, 24
  %i.ab = trunc nuw i32 %i.aa to i8
  %i.ac = tail call i32 @_cmsWriteUInt8Number(ptr noundef %1, i8 noundef zeroext %i.ab) #11
  %.not28 = icmp eq i32 %i.ac, 0
  br i1 %.not28, label %.loopexit31, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.d
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond48.not, label %.loopexit31, label %.lr.ph.split, !llvm.loop !253

.loopexit31:                                      ; preds = %.loopexit, %.preheader32, %.preheader, %bb.a, %.lr.ph, %.thread
  %.025 = phi i32 [ 0, %.preheader32 ], [ 0, %.thread ], [ 1, %bb.a ], [ 1, %.lr.ph ], [ 0, %.preheader ], [ 1, %.loopexit ]
  ret i32 %.025
}

declare ptr @cmsPipelineDup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @Read16bitTables(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 256) %3, i32 noundef range(i32 0, 65536) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x ptr], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %trunc = trunc nuw i32 %4 to i16
  switch i16 %trunc, label %bb.c [
    i16 0, label %.loopexit
    i16 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %3, 16
  br i1 %i.b, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %.not40 = icmp eq i32 %3, 0                     ; 3 uses
  br i1 %.not40, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.c = tail call ptr @cmsBuildTabulatedToneCurve16(ptr noundef %0, i32 noundef %4, ptr noundef null) #11 ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.c, ptr %i.d, align 8, !tbaa !92
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.loopexit33, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.h = tail call i32 @_cmsReadUInt16Array(ptr noundef %1, i32 noundef %4, ptr noundef %i.g) #11
  %.not30 = icmp eq i32 %i.h, 0
  br i1 %.not30, label %.loopexit33, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.i = call ptr @cmsStageAllocToneCurves(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %i.a) #11
  %i.j = call i32 @cmsPipelineInsertStage(ptr noundef nonnull %2, i32 noundef 1, ptr noundef %i.i) #11
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit33, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not40, label %.loopexit, label %.lr.ph36.preheader

.lr.ph36.preheader:                               ; preds = %.preheader
  %wide.trip.count48 = zext nneg i32 %3 to i64
  br label %.lr.ph36

.lr.ph36:                                         ; preds = %.lr.ph36.preheader, %.lr.ph36
  %indvars.iv45 = phi i64 [ 0, %.lr.ph36.preheader ], [ %indvars.iv.next46, %.lr.ph36 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv45
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92
  call void @cmsFreeToneCurve(ptr noundef %i.l) #11
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
end_hunk_0
