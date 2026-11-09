Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawprepare?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@distort_backtransform:bb.a
vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !86

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec29 = and i64 %i.s, -4                     ; 3 uses
  %i.ae = shl i64 %n.vec29, 1
  %broadcast.splat31 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat33 = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next39, %vec.epilog.vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index34, 3
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %wide.vec35 = load <8 x float>, ptr %i.af, align 4, !tbaa !83 ; 2 uses
  %strided.vec36 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec37 = shufflevector <8 x float> %wide.vec35, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ag = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec36, %broadcast.splat31
  %i.ah = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec37, %broadcast.splat33
  %interleaved.vec38 = shufflevector <4 x float> %i.ag, <4 x float> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec38, ptr %i.af, align 4, !tbaa !83
  %index.next39 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next39, %n.vec29
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n40 = icmp eq i64 %i.s, %n.vec29
  br i1 %cmp.n40, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.019.ph = phi i64 [ 0, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.019 = phi i64 [ %i.am, %.lr.ph ], [ %.019.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.019 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.aj, align 4, !tbaa !83
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.ak, %i.o
  store <2 x float> %i.al, ptr %i.aj, align 4, !tbaa !83
  %i.am = add nuw i64 %.019, 2                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.p
  br i1 %i.an, label %.lr.ph, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a, %._crit_edge
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_out(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !88
  store i32 0, ptr %2, align 4, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.h = load float, ptr %i.g, align 8, !tbaa !82
  %i.i = fdiv reassoc nsz arcp contract afn float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %i.l = load <2 x i32>, ptr %i.d, align 8, !tbaa !14
  %i.m = add nsw <2 x i32> %i.l, %i.k
  %i.n = sitofp reassoc nsz arcp contract afn <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.i, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n
  %i.r = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.q)
  %i.s = fptosi <2 x float> %i.r to <2 x i32>
  %i.t = load <2 x i32>, ptr %i.j, align 4, !tbaa !14
  %i.u = sub nsw <2 x i32> %i.t, %i.s
  store <2 x i32> %i.u, ptr %i.j, align 4, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #9 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load float, ptr %i.d, align 4, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load float, ptr %i.f, align 8, !tbaa !82
  %i.h = fdiv reassoc nsz arcp contract afn float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.b, align 8, !tbaa !14
  %i.k = load <2 x i32>, ptr %i.c, align 8, !tbaa !14
  %i.l = add nsw <2 x i32> %i.k, %i.j
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x float>
  %i.n = insertelement <2 x float> poison, float %i.h, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul reassoc nsz arcp contract afn <2 x float> %i.o, %i.m
  %i.q = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.p)
  %i.r = fptosi <2 x float> %i.q to <2 x i32>
  %i.s = load <2 x i32>, ptr %i.i, align 4, !tbaa !14
  %i.t = add nsw <2 x i32> %i.s, %i.r
  store <2 x i32> %i.t, ptr %i.i, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  tail call void @default_output_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load <2 x i16>, ptr %i.c, align 8, !tbaa !91
  store <2 x i16> %i.e, ptr %i.d, align 16, !tbaa !91
  ret void
}

declare void @default_output_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @process(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 7 uses
  %i.b = alloca [4 x ptr], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !80  ; 19 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93   ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 104
  %.val260 = load float, ptr %i.f, align 8, !tbaa !82 ; 2 uses
  %i.g = getelementptr i8, ptr %4, i64 16
  %.val261 = load float, ptr %i.g, align 4, !tbaa !90 ; 2 uses
  %i.h = sitofp reassoc nsz arcp contract afn i32 %i.e to float
  %i.i = fmul reassoc nsz arcp contract afn float %.val261, %i.h
  %i.j = fdiv reassoc nsz arcp contract afn float %i.i, %.val260
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.j)
  %i.l = fptosi float %i.k to i32                 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !94   ; 3 uses
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.p = fmul reassoc nsz arcp contract afn float %.val261, %i.o
  %i.q = fdiv reassoc nsz arcp contract afn float %i.p, %.val260
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.q)
  %i.s = fptosi float %i.r to i32                 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 184
  %i.w = load i32, ptr %i.v, align 8, !tbaa !108
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.y = load i32, ptr %i.x, align 16, !tbaa !186
  %i.z = icmp eq i32 %i.y, 1
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %i.ac = icmp eq i32 %i.ab, 2
  br i1 %i.ac, label %.preheader278, label %bb.d

.preheader278:                                    ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !188 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.preheader277.lr.ph, label %.loopexit276.sink.split

.preheader277.lr.ph:                              ; preds = %.preheader278
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !189 ; 5 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %i.aj = sext i32 %i.ah to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 6 uses
  br i1 %i.ai, label %.preheader277.lr.ph.split, label %.loopexit276.sink.split

.preheader277.lr.ph.split:                        ; preds = %.preheader277.lr.ph
  %i.am = getelementptr i8, ptr %5, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !189
  %.val270 = load i32, ptr %5, align 4, !tbaa !89 ; 3 uses
  %.val271 = load i32, ptr %i.am, align 4, !tbaa !88
  %invariant.op292 = add i32 %i.n, %.val271
  %invariant.op288 = add i32 %i.e, %.val270       ; 5 uses
  %i.ap = sext i32 %i.s to i64
  %i.aq = sext i32 %i.ao to i64
  %i.ar = sext i32 %i.l to i64
  %wide.trip.count331 = zext nneg i32 %i.ae to i64 ; 2 uses
  %invariant.gep380 = getelementptr [2 x i8], ptr %2, i64 %i.ar
  %wide.trip.count326 = zext nneg i32 %i.ah to i64 ; 5 uses
  %i.as = add nsw i64 %wide.trip.count326, -1     ; 2 uses
  %i.at = trunc i32 %invariant.op288 to i1
  %6 = shl i32 %invariant.op288, 2
  %7 = and i32 %6, 4
  %8 = zext nneg i32 %7 to i64                    ; 2 uses
  %9 = add nuw nsw i64 %8, 20
  %10 = shl nuw nsw i64 %wide.trip.count326, 2
  %11 = sub nsw i64 %9, %10
  %i.au = add nuw nsw i64 %wide.trip.count331, 4611686018427387903
  %i.av = mul i64 %i.au, %i.aj
  %i.aw = add i64 %i.av, %wide.trip.count326
  %i.ax = shl i64 %i.aw, 2
  %scevgep430 = getelementptr i8, ptr %3, i64 %i.ax
  %i.ay = add i32 %i.e, %.val270                  ; 2 uses
  %i.az = and i32 %i.ay, 1
  %i.ba = and i32 %i.ay, 1
  %i.bb = add i32 %i.e, %.val270
  %i.bc = and i32 %i.bb, 1
  %i.bd = and i32 %invariant.op288, 1
  %min.iters.check431 = icmp ult i32 %i.ah, 8
  %i.be = trunc i64 %i.as to i1
  %i.bf = xor i1 %i.at, true
  %i.bg = and i1 %i.be, %i.bf
  %i.bh = icmp ugt i64 %i.as, 1
  %i.bi = or i1 %i.bg, %i.bh
  %12 = getelementptr i8, ptr %i.d, i64 %11
  %13 = getelementptr i8, ptr %i.d, i64 %8
  %14 = getelementptr i8, ptr %13, i64 36
  %xtraiter523 = and i64 %wide.trip.count326, 3   ; 3 uses
  %i.bj = icmp ult i32 %i.ah, 4
  %unroll_iter527 = and i64 %wide.trip.count326, 2147483644
  %lcmp.mod525.not = icmp eq i64 %xtraiter523, 0
  %lcmp.mod526 = icmp ne i64 %xtraiter523, 0
  br label %.preheader277

.preheader277:                                    ; preds = %.preheader277.lr.ph.split, %._crit_edge287
  %indvars.iv328 = phi i64 [ 0, %.preheader277.lr.ph.split ], [ %indvars.iv.next329, %._crit_edge287 ] ; 4 uses
  %i.bk = add nsw i64 %indvars.iv328, %i.ap
  %i.bl = mul nsw i64 %i.bk, %i.aq
  %i.bm = mul nuw nsw i64 %indvars.iv328, %i.aj
  %i.bn = trunc nuw nsw i64 %indvars.iv328 to i32
  %.reass293 = add i32 %invariant.op292, %i.bn    ; 2 uses
  %i.bo = shl i32 %.reass293, 1
  %i.bp = and i32 %i.bo, 2                        ; 6 uses
  %gep381 = getelementptr [2 x i8], ptr %invariant.gep380, i64 %i.bl ; 6 uses
  %i.bq = getelementptr [4 x i8], ptr %3, i64 %i.bm ; 6 uses
  %brmerge543 = select i1 %min.iters.check431, i1 true, i1 %i.bi
  br i1 %brmerge543, label %scalar.ph.preheader, label %vector.memcheck432

scalar.ph.preheader:                              ; preds = %.preheader277, %vector.memcheck432
  br i1 %i.bj, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %i.br = or disjoint i32 %i.bp, %i.bd
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bs
  %i.bv = or disjoint i32 %i.az, %i.bp
  %i.bw = xor i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bx
  %i.ca = or disjoint i32 %i.bp, %i.ba
  %i.cb = zext nneg i32 %i.ca to i64              ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cb
  %i.ce = or disjoint i32 %i.bc, %i.bp
  %i.cf = xor i32 %i.ce, 1
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cg
  br label %scalar.ph

vector.memcheck432:                               ; preds = %.preheader277
  %i.cj = shl i32 %.reass293, 3
  %i.ck = and i32 %i.cj, 8
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr i8, ptr %12, i64 %i.cl
  %i.cn = getelementptr i8, ptr %14, i64 %i.cl
  %bound0433 = icmp ult ptr %3, %i.cn
  %bound1434 = icmp ult ptr %i.cm, %scevgep430
  %found.conflict435 = and i1 %bound0433, %bound1434
  br i1 %found.conflict435, label %scalar.ph.preheader, label %vector.body438.preheader

vector.body438.preheader:                         ; preds = %vector.memcheck432
  %i.co = and i32 %invariant.op288, 1
  %i.cp = or disjoint i32 %i.bp, %i.co
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -28
  %wide.load441 = load <8 x float>, ptr %i.cs, align 4, !tbaa !83, !alias.scope !190
  %reverse442 = shufflevector <8 x float> %wide.load441, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cq
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -28
  %wide.load443 = load <8 x float>, ptr %i.cu, align 4, !tbaa !83, !alias.scope !190
  %reverse444 = shufflevector <8 x float> %wide.load443, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse444
  br label %vector.body438

vector.body438:                                   ; preds = %vector.body438.preheader, %vector.body438
  %index439 = phi i64 [ %index.next445, %vector.body438 ], [ 0, %vector.body438.preheader ] ; 3 uses
  %i.cw = getelementptr [2 x i8], ptr %gep381, i64 %index439
  %wide.load440 = load <8 x i16>, ptr %i.cw, align 2, !tbaa !91
  %i.cx = uitofp <8 x i16> %wide.load440 to <8 x float>
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %i.cx, %reverse442
  %i.cz = fmul reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cv
  %i.da = getelementptr [4 x i8], ptr %i.bq, i64 %index439
  store <8 x float> %i.cz, ptr %i.da, align 4, !tbaa !83, !alias.scope !191, !noalias !190
  %index.next445 = add nuw i64 %index439, 8
  br label %vector.body438, !llvm.loop !167

._crit_edge287.unr-lcssa:                         ; preds = %scalar.ph
  br i1 %lcmp.mod525.not, label %._crit_edge287, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge287.unr-lcssa, %scalar.ph.preheader
  %indvars.iv323.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next324.3, %._crit_edge287.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod526)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv323.epil = phi i64 [ %indvars.iv.next324.epil, %scalar.ph.epil ], [ %indvars.iv323.epil.init, %scalar.ph.epil.preheader ] ; 4 uses
  %epil.iter524 = phi i64 [ %epil.iter524.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.db = trunc nuw nsw i64 %indvars.iv323.epil to i32
  %.reass289.epil = add i32 %invariant.op288, %i.db
  %i.dc = and i32 %.reass289.epil, 1
  %i.dd = or disjoint i32 %i.bp, %i.dc
  %i.de = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv323.epil
  %i.df = load i16, ptr %i.de, align 2, !tbaa !91
  %i.dg = uitofp i16 %i.df to float
  %i.dh = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !83
  %i.dk = fsub reassoc nsz arcp contract afn float %i.dg, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.dh
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !83
  %i.dn = fdiv reassoc nsz arcp contract afn float %i.dk, %i.dm
  %i.do = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv323.epil
  store float %i.dn, ptr %i.do, align 4, !tbaa !83
  %indvars.iv.next324.epil = add nuw nsw i64 %indvars.iv323.epil, 1
  %epil.iter524.next = add i64 %epil.iter524, 1   ; 2 uses
  %epil.iter524.cmp.not = icmp eq i64 %epil.iter524.next, %xtraiter523
  br i1 %epil.iter524.cmp.not, label %._crit_edge287, label %scalar.ph.epil, !llvm.loop !168

._crit_edge287:                                   ; preds = %scalar.ph.epil, %._crit_edge287.unr-lcssa
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %.loopexit276.sink.split, label %.preheader277

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv323 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %indvars.iv.next324.3, %scalar.ph ] ; 6 uses
  %niter528 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter528.next.3, %scalar.ph ]
  %i.dp = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv323
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !91
  %i.dr = uitofp i16 %i.dq to float
  %i.ds = load float, ptr %i.bt, align 4, !tbaa !83
  %i.dt = fsub reassoc nsz arcp contract afn float %i.dr, %i.ds
  %i.du = load float, ptr %i.bu, align 4, !tbaa !83
  %i.dv = fdiv reassoc nsz arcp contract afn float %i.dt, %i.du
  %i.dw = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv323
  store float %i.dv, ptr %i.dw, align 4, !tbaa !83
  %indvars.iv.next324 = or disjoint i64 %indvars.iv323, 1 ; 2 uses
  %i.dx = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !91
  %i.dz = uitofp i16 %i.dy to float
  %i.ea = load float, ptr %i.by, align 4, !tbaa !83
  %i.eb = fsub reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ec = load float, ptr %i.bz, align 4, !tbaa !83
  %i.ed = fdiv reassoc nsz arcp contract afn float %i.eb, %i.ec
  %i.ee = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv.next324
  store float %i.ed, ptr %i.ee, align 4, !tbaa !83
  %indvars.iv.next324.1 = or disjoint i64 %indvars.iv323, 2 ; 2 uses
  %i.ef = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324.1
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !91
  %i.eh = uitofp i16 %i.eg to float
  %i.ei = load float, ptr %i.cc, align 4, !tbaa !83
  %i.ej = fsub reassoc nsz arcp contract afn float %i.eh, %i.ei
  %i.ek = load float, ptr %i.cd, align 4, !tbaa !83
  %i.el = fdiv reassoc nsz arcp contract afn float %i.ej, %i.ek
  %i.em = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv.next324.1
  store float %i.el, ptr %i.em, align 4, !tbaa !83
  %indvars.iv.next324.2 = or disjoint i64 %indvars.iv323, 3 ; 2 uses
  %i.en = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324.2
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !91
  %i.ep = uitofp i16 %i.eo to float
  %i.eq = load float, ptr %i.ch, align 4, !tbaa !83
  %i.er = fsub reassoc nsz arcp contract afn float %i.ep, %i.eq
  %i.es = load float, ptr %i.ci, align 4, !tbaa !83
  %i.et = fdiv reassoc nsz arcp contract afn float %i.er, %i.es
  %i.eu = getelementptr [4 x i8], ptr %i.bq, i64 %indvars.iv.next324.2
  store float %i.et, ptr %i.eu, align 4, !tbaa !83
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %niter528.next.3 = add i64 %niter528, 4         ; 2 uses
  %niter528.ncmp.3 = icmp eq i64 %niter528.next.3, %unroll_iter527
  br i1 %niter528.ncmp.3, label %._crit_edge287.unr-lcssa, label %scalar.ph, !llvm.loop !169

bb.d:                                             ; preds = %bb.c
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !187
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %.preheader280, label %bb.e

.preheader280:                                    ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !188 ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.preheader279.lr.ph, label %.loopexit276.sink.split

.preheader279.lr.ph:                              ; preds = %.preheader280
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !189 ; 6 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  %i.fe = sext i32 %i.fc to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  br i1 %i.fd, label %.preheader279.lr.ph.split, label %.loopexit276.sink.split

.preheader279.lr.ph.split:                        ; preds = %.preheader279.lr.ph
  %i.fh = getelementptr i8, ptr %5, i64 4
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !189 ; 2 uses
  %.val266 = load i32, ptr %5, align 4, !tbaa !89 ; 3 uses
  %.val267 = load i32, ptr %i.fh, align 4, !tbaa !88
  %invariant.op284 = add i32 %i.n, %.val267
  %invariant.op = add i32 %i.e, %.val266          ; 6 uses
  %i.fk = sext i32 %i.s to i64                    ; 3 uses
  %i.fl = sext i32 %i.fj to i64                   ; 3 uses
  %i.fm = sext i32 %i.l to i64                    ; 3 uses
  %wide.trip.count321 = zext nneg i32 %i.ez to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.fm
  %wide.trip.count = zext nneg i32 %i.fc to i64   ; 5 uses
  %i.fn = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.fo = trunc i32 %invariant.op to i1
  %15 = shl i32 %invariant.op, 2
  %16 = and i32 %15, 4
  %17 = zext nneg i32 %16 to i64                  ; 2 uses
  %18 = add nuw nsw i64 %17, 20
  %19 = shl nuw nsw i64 %wide.trip.count, 2       ; 2 uses
  %20 = sub nsw i64 %18, %19
  %i.fp = add nsw i64 %i.fk, %wide.trip.count321
  %i.fq = shl nsw i64 %i.fp, 2
  %i.fr = add nsw i64 %i.fq, -4
  %i.fs = mul i64 %i.fr, %i.fl
  %i.ft = shl nsw i64 %i.fm, 2
  %i.fu = getelementptr i8, ptr %2, i64 %i.fs
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.ft
  %scevgep = getelementptr i8, ptr %i.fv, i64 %19
  %i.fw = mul nsw i64 %i.fk, %i.fl
  %i.fx = add i64 %i.fw, %i.fm
  %i.fy = shl i64 %i.fx, 2
  %scevgep397 = getelementptr i8, ptr %2, i64 %i.fy
  %i.fz = add nuw nsw i64 %wide.trip.count321, 4611686018427387903
  %i.ga = mul i64 %i.fz, %i.fe
  %i.gb = add i64 %i.ga, %wide.trip.count
  %i.gc = shl i64 %i.gb, 2
  %scevgep398 = getelementptr i8, ptr %3, i64 %i.gc ; 2 uses
  %i.gd = add i32 %i.e, %.val266                  ; 2 uses
  %i.ge = and i32 %i.gd, 1
  %i.gf = and i32 %i.gd, 1
  %i.gg = add i32 %i.e, %.val266
  %i.gh = and i32 %i.gg, 1
  %i.gi = and i32 %invariant.op, 1
  %min.iters.check = icmp ult i32 %i.fc, 4
  %i.gj = trunc i64 %i.fn to i1
  %i.gk = xor i1 %i.fo, true
  %i.gl = and i1 %i.gj, %i.gk
  %i.gm = icmp ugt i64 %i.fn, 1
  %i.gn = or i1 %i.gl, %i.gm
  %21 = getelementptr i8, ptr %i.d, i64 %20
  %22 = getelementptr i8, ptr %i.d, i64 %17
  %23 = getelementptr i8, ptr %22, i64 36
  %bound0 = icmp ult ptr %3, %scevgep
  %bound1 = icmp ult ptr %scevgep397, %scevgep398
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.fj, 0
  %i.go = or i1 %found.conflict, %stride.check
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.gp = icmp ult i32 %i.fc, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod522 = icmp ne i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader279.lr.ph.split, %._crit_edge
  %indvars.iv318 = phi i64 [ 0, %.preheader279.lr.ph.split ], [ %indvars.iv.next319, %._crit_edge ] ; 4 uses
  %i.gq = add nsw i64 %indvars.iv318, %i.fk
  %i.gr = mul nsw i64 %i.gq, %i.fl
  %i.gs = mul nuw nsw i64 %indvars.iv318, %i.fe
  %i.gt = trunc nuw nsw i64 %indvars.iv318 to i32
  %.reass285 = add i32 %invariant.op284, %i.gt    ; 2 uses
  %i.gu = shl i32 %.reass285, 1
  %i.gv = and i32 %i.gu, 2                        ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gr ; 7 uses
  %i.gw = getelementptr [4 x i8], ptr %3, i64 %i.gs ; 7 uses
  %brmerge544 = select i1 %min.iters.check, i1 true, i1 %i.gn
  br i1 %brmerge544, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gx = shl i32 %.reass285, 3
  %i.gy = and i32 %i.gx, 8
  %i.gz = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.ha = getelementptr i8, ptr %21, i64 %i.gz
  %i.hb = getelementptr i8, ptr %23, i64 %i.gz
  %bound0399 = icmp ult ptr %3, %i.hb
  %bound1400 = icmp ult ptr %i.ha, %scevgep398
  %found.conflict401 = and i1 %bound0399, %bound1400
  %conflict.rdx = or i1 %i.go, %found.conflict401
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck
  br i1 %i.gp, label %vec.epilog.scalar.ph.epil.preheader, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.preheader
  %i.hc = or disjoint i32 %i.gv, %i.gi
  %i.hd = zext nneg i32 %i.hc to i64              ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hd
  %i.hg = or disjoint i32 %i.ge, %i.gv
  %i.hh = xor i32 %i.hg, 1
  %i.hi = zext nneg i32 %i.hh to i64              ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hi
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hi
  %i.hl = or disjoint i32 %i.gv, %i.gf
  %i.hm = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hm
  %i.hp = or disjoint i32 %i.gh, %i.gv
  %i.hq = xor i32 %i.hp, 1
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hr
  br label %vec.epilog.scalar.ph

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check402 = icmp ult i32 %i.fc, 16
  br i1 %min.iters.check402, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %i.hu = and i32 %invariant.op, 1
  %i.hv = or disjoint i32 %i.gv, %i.hu
  %i.hw = zext nneg i32 %i.hv to i64              ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -28
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -60
  %wide.load404 = load <8 x float>, ptr %i.hy, align 4, !tbaa !83, !alias.scope !193
  %wide.load405 = load <8 x float>, ptr %i.hz, align 4, !tbaa !83, !alias.scope !193
  %reverse = shufflevector <8 x float> %wide.load404, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse406 = shufflevector <8 x float> %wide.load405, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hw ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -28
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -60
  %wide.load407 = load <8 x float>, ptr %i.ib, align 4, !tbaa !83, !alias.scope !193
  %wide.load408 = load <8 x float>, ptr %i.ic, align 4, !tbaa !83, !alias.scope !193
  %reverse409 = shufflevector <8 x float> %wide.load407, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse410 = shufflevector <8 x float> %wide.load408, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.id = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse409
  %i.ie = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse410
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %i.if = and i32 %invariant.op, 1
  %i.ig = or disjoint i32 %i.gv, %i.if
  %i.ih = zext nneg i32 %i.ig to i64              ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ih
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 -12
  %wide.load414 = load <4 x float>, ptr %i.ij, align 4, !tbaa !83, !alias.scope !193
  %reverse415 = shufflevector <4 x float> %wide.load414, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ih
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -12
  %wide.load416 = load <4 x float>, ptr %i.il, align 4, !tbaa !83, !alias.scope !193
  %reverse417 = shufflevector <4 x float> %wide.load416, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.im = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %reverse417
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %i.in = getelementptr [4 x i8], ptr %gep, i64 %index ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 32
  %wide.load = load <8 x float>, ptr %i.in, align 4, !tbaa !83, !alias.scope !194
  %wide.load403 = load <8 x float>, ptr %i.io, align 4, !tbaa !83, !alias.scope !194
  %i.ip = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %reverse
  %i.iq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load403, %reverse406
  %i.ir = fmul reassoc nsz arcp contract afn <8 x float> %i.ip, %i.id
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %i.iq, %i.ie
  %i.it = getelementptr [4 x i8], ptr %i.gw, i64 %index ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 32
  store <8 x float> %i.ir, ptr %i.it, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  store <8 x float> %i.is, ptr %i.iu, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  %index.next = add nuw i64 %index, 16
  br label %vector.body, !llvm.loop !174

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index412 = phi i64 [ %index.next418, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.iv = getelementptr [4 x i8], ptr %gep, i64 %index412
  %wide.load413 = load <4 x float>, ptr %i.iv, align 4, !tbaa !83, !alias.scope !194
  %i.iw = fsub reassoc nsz arcp contract afn <4 x float> %wide.load413, %reverse415
  %i.ix = fmul reassoc nsz arcp contract afn <4 x float> %i.iw, %i.im
  %i.iy = getelementptr [4 x i8], ptr %i.gw, i64 %index412
  store <4 x float> %i.ix, ptr %i.iy, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  %index.next418 = add nuw i64 %index412, 4
  br label %vec.epilog.vector.body, !llvm.loop !175

._crit_edge.unr-lcssa:                            ; preds = %vec.epilog.scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %vec.epilog.scalar.ph.epil.preheader

vec.epilog.scalar.ph.epil.preheader:              ; preds = %._crit_edge.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod522)
  br label %vec.epilog.scalar.ph.epil

vec.epilog.scalar.ph.epil:                        ; preds = %vec.epilog.scalar.ph.epil, %vec.epilog.scalar.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %vec.epilog.scalar.ph.epil ], [ %indvars.iv.epil.init, %vec.epilog.scalar.ph.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %vec.epilog.scalar.ph.epil ], [ 0, %vec.epilog.scalar.ph.epil.preheader ]
  %i.iz = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.iz
  %i.ja = and i32 %.reass.epil, 1
  %i.jb = or disjoint i32 %i.gv, %i.ja
  %i.jc = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.epil
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !83
  %i.je = zext nneg i32 %i.jb to i64              ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !83
  %i.jh = fsub reassoc nsz arcp contract afn float %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.je
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !83
  %i.jk = fdiv reassoc nsz arcp contract afn float %i.jh, %i.jj
  %i.jl = getelementptr [4 x i8], ptr %i.gw, i64 %indvars.iv.epil
  store float %i.jk, ptr %i.jl, align 4, !tbaa !83
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %vec.epilog.scalar.ph.epil, !llvm.loop !176

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.epil, %._crit_edge.unr-lcssa
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %.loopexit276.sink.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 6 uses
  %niter = phi i64 [ 0, %vec.epilog.scalar.ph.preheader.new ], [ %niter.next.3, %vec.epilog.scalar.ph ]
  %i.jm = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !83
  %i.jo = load float, ptr %i.he, align 4, !tbaa !83
  %i.jp = fsub reassoc nsz arcp contract afn float %i.jn, %i.jo
  %i.jq = load float, ptr %i.hf, align 4, !tbaa !83
  %i.jr = fdiv reassoc nsz arcp contract afn float %i.jp, %i.jq
  %i.js = getelementptr [4 x i8], ptr %i.gw, i64 %indvars.iv
  store float %i.jr, ptr %i.js, align 4, !tbaa !83
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jt = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !83
  %i.jv = load float, ptr %i.hj, align 4, !tbaa !83
  %i.jw = fsub reassoc nsz arcp contract afn float %i.ju, %i.jv
  %i.jx = load float, ptr %i.hk, align 4, !tbaa !83
  %i.jy = fdiv reassoc nsz arcp contract afn float %i.jw, %i.jx
  %i.jz = getelementptr [4 x i8], ptr %i.gw, i64 %indvars.iv.next
  store float %i.jy, ptr %i.jz, align 4, !tbaa !83
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ka = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.1
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !83
  %i.kc = load float, ptr %i.hn, align 4, !tbaa !83
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kb, %i.kc
  %i.ke = load float, ptr %i.ho, align 4, !tbaa !83
  %i.kf = fdiv reassoc nsz arcp contract afn float %i.kd, %i.ke
  %i.kg = getelementptr [4 x i8], ptr %i.gw, i64 %indvars.iv.next.1
  store float %i.kf, ptr %i.kg, align 4, !tbaa !83
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.kh = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.2
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !83
  %i.kj = load float, ptr %i.hs, align 4, !tbaa !83
  %i.kk = fsub reassoc nsz arcp contract afn float %i.ki, %i.kj
  %i.kl = load float, ptr %i.ht, align 4, !tbaa !83
  %i.km = fdiv reassoc nsz arcp contract afn float %i.kk, %i.kl
  %i.kn = getelementptr [4 x i8], ptr %i.gw, i64 %indvars.iv.next.2
  store float %i.km, ptr %i.kn, align 4, !tbaa !83
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !177

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !197 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !188 ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, 0
  br i1 %i.ks, label %.preheader275.lr.ph, label %.loopexit276

.preheader275.lr.ph:                              ; preds = %bb.e
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !189 ; 3 uses
  %i.kv = icmp slt i32 %i.ku, 1
  %i.kw = icmp slt i32 %i.kp, 1
  %i.kx = sext i32 %i.kp to i64                   ; 5 uses
  %i.ky = getelementptr i8, ptr %i.d, i64 16      ; 8 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  %brmerge = select i1 %i.kv, i1 true, i1 %i.kw
  br i1 %brmerge, label %.loopexit276, label %.preheader275.lr.ph.split.split

.preheader275.lr.ph.split.split:                  ; preds = %.preheader275.lr.ph
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !189
  %i.lc = zext nneg i32 %i.ku to i64
  %wide.trip.count346 = zext nneg i32 %i.kr to i64
end_hunk_0
