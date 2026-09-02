Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_rawprepare?download=true
inline.NumInlined: 23
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@distort_backtransform:bb.a
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
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
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
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
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
  %i.l = fptosi float %i.k to i32                 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !94   ; 5 uses
  %i.o = sitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.p = fmul reassoc nsz arcp contract afn float %.val261, %i.o
  %i.q = fdiv reassoc nsz arcp contract afn float %i.p, %.val260
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.q)
  %i.s = fptosi float %i.r to i32                 ; 7 uses
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
  %.val271 = load i32, ptr %i.am, align 4, !tbaa !88 ; 2 uses
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
  %i.au = add nuw nsw i64 %wide.trip.count331, 4611686018427387903
  %i.av = mul i64 %i.au, %i.aj
  %i.aw = shl nuw nsw i64 %wide.trip.count326, 2
  %i.ax = add i64 %i.av, %wide.trip.count326
  %i.ay = shl i64 %i.ax, 2
  %scevgep417 = getelementptr i8, ptr %3, i64 %i.ay
  %i.az = shl i32 %invariant.op288, 2
  %i.ba = and i32 %i.az, 4
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 20
  %i.bd = sub nsw i64 %i.bc, %i.aw
  %scevgep418 = getelementptr i8, ptr %i.d, i64 %i.bd
  %i.be = add i32 %i.n, %.val271
  %i.bf = getelementptr i8, ptr %i.d, i64 %i.bb
  %scevgep420 = getelementptr i8, ptr %i.bf, i64 36
  %i.bg = add i32 %i.e, %.val270                  ; 2 uses
  %i.bh = and i32 %i.bg, 1
  %i.bi = and i32 %i.bg, 1
  %i.bj = add i32 %i.e, %.val270
  %i.bk = and i32 %i.bj, 1
  %i.bl = and i32 %invariant.op288, 1
  %6 = zext i32 %i.be to i64
  %min.iters.check425 = icmp ult i32 %i.ah, 8
  %i.bm = trunc i64 %i.as to i1
  %i.bn = xor i1 %i.at, true
  %i.bo = and i1 %i.bm, %i.bn
  %i.bp = icmp ugt i64 %i.as, 1
  %i.bq = or i1 %i.bo, %i.bp
  %xtraiter502 = and i64 %wide.trip.count326, 3   ; 3 uses
  %i.br = icmp ult i32 %i.ah, 4
  %unroll_iter506 = and i64 %wide.trip.count326, 2147483644
  %lcmp.mod504.not = icmp eq i64 %xtraiter502, 0
  %lcmp.mod505 = icmp ne i64 %xtraiter502, 0
  br label %.preheader277

.preheader277:                                    ; preds = %.preheader277.lr.ph.split, %._crit_edge287
  %indvars.iv328 = phi i64 [ 0, %.preheader277.lr.ph.split ], [ %indvars.iv.next329, %._crit_edge287 ] ; 5 uses
  %7 = xor i64 %indvars.iv328, %6
  %8 = shl i64 %7, 3
  %9 = and i64 %8, 8                              ; 2 uses
  %scevgep419 = getelementptr i8, ptr %scevgep418, i64 %9
  %scevgep421 = getelementptr i8, ptr %scevgep420, i64 %9
  %i.bs = add nsw i64 %indvars.iv328, %i.ap
  %i.bt = mul nsw i64 %i.bs, %i.aq
  %i.bu = mul nuw nsw i64 %indvars.iv328, %i.aj
  %i.bv = trunc nuw nsw i64 %indvars.iv328 to i32
  %.reass293 = add i32 %invariant.op292, %i.bv
  %i.bw = shl i32 %.reass293, 1
  %i.bx = and i32 %i.bw, 2                        ; 6 uses
  %gep381 = getelementptr [2 x i8], ptr %invariant.gep380, i64 %i.bt ; 6 uses
  %i.by = getelementptr [4 x i8], ptr %3, i64 %i.bu ; 6 uses
  %brmerge519 = select i1 %min.iters.check425, i1 true, i1 %i.bq
  br i1 %brmerge519, label %scalar.ph.preheader, label %vector.memcheck416

scalar.ph.preheader:                              ; preds = %.preheader277, %vector.memcheck416
  br i1 %i.br, label %scalar.ph.epil.preheader, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.preheader
  %i.bz = or disjoint i32 %i.bx, %i.bl
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ca
  %i.cd = or disjoint i32 %i.bh, %i.bx
  %i.ce = xor i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cf
  %i.ci = or disjoint i32 %i.bx, %i.bi
  %i.cj = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cj
  %i.cm = or disjoint i32 %i.bk, %i.bx
  %i.cn = xor i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.co
  br label %scalar.ph

vector.memcheck416:                               ; preds = %.preheader277
  %bound0422 = icmp ult ptr %3, %scevgep421
  %bound1423 = icmp ult ptr %scevgep419, %scevgep417
  %found.conflict424 = and i1 %bound0422, %bound1423
  br i1 %found.conflict424, label %scalar.ph.preheader, label %vector.body428.preheader

vector.body428.preheader:                         ; preds = %vector.memcheck416
  %i.cr = and i32 %invariant.op288, 1
  %i.cs = or disjoint i32 %i.bx, %i.cr
  %i.ct = zext nneg i32 %i.cs to i64              ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -28
  %wide.load431 = load <8 x float>, ptr %i.cv, align 4, !tbaa !83, !alias.scope !190
  %reverse432 = shufflevector <8 x float> %wide.load431, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ct
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -28
  %wide.load433 = load <8 x float>, ptr %i.cx, align 4, !tbaa !83, !alias.scope !190
  %reverse434 = shufflevector <8 x float> %wide.load433, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.cy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse434
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428.preheader, %vector.body428
  %index429 = phi i64 [ %index.next435, %vector.body428 ], [ 0, %vector.body428.preheader ] ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %gep381, i64 %index429
  %wide.load430 = load <8 x i16>, ptr %i.cz, align 2, !tbaa !91
  %i.da = uitofp <8 x i16> %wide.load430 to <8 x float>
  %i.db = fsub reassoc nsz arcp contract afn <8 x float> %i.da, %reverse432
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.cy
  %i.dd = getelementptr [4 x i8], ptr %i.by, i64 %index429
  store <8 x float> %i.dc, ptr %i.dd, align 4, !tbaa !83, !alias.scope !191, !noalias !190
  %index.next435 = add nuw i64 %index429, 8
  br label %vector.body428, !llvm.loop !167

._crit_edge287.unr-lcssa:                         ; preds = %scalar.ph
  br i1 %lcmp.mod504.not, label %._crit_edge287, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge287.unr-lcssa, %scalar.ph.preheader
  %indvars.iv323.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next324.3, %._crit_edge287.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod505)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv323.epil = phi i64 [ %indvars.iv.next324.epil, %scalar.ph.epil ], [ %indvars.iv323.epil.init, %scalar.ph.epil.preheader ] ; 4 uses
  %epil.iter503 = phi i64 [ %epil.iter503.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.de = trunc nuw nsw i64 %indvars.iv323.epil to i32
  %.reass289.epil = add i32 %invariant.op288, %i.de
  %i.df = and i32 %.reass289.epil, 1
  %i.dg = or disjoint i32 %i.bx, %i.df
  %i.dh = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv323.epil
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !91
  %i.dj = uitofp i16 %i.di to float
  %i.dk = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !83
  %i.dn = fsub reassoc nsz arcp contract afn float %i.dj, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.dk
  %i.dp = load float, ptr %i.do, align 4, !tbaa !83
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dn, %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv323.epil
  store float %i.dq, ptr %i.dr, align 4, !tbaa !83
  %indvars.iv.next324.epil = add nuw nsw i64 %indvars.iv323.epil, 1
  %epil.iter503.next = add i64 %epil.iter503, 1   ; 2 uses
  %epil.iter503.cmp.not = icmp eq i64 %epil.iter503.next, %xtraiter502
  br i1 %epil.iter503.cmp.not, label %._crit_edge287, label %scalar.ph.epil, !llvm.loop !168

._crit_edge287:                                   ; preds = %scalar.ph.epil, %._crit_edge287.unr-lcssa
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count331
  br i1 %exitcond332.not, label %.loopexit276.sink.split, label %.preheader277

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv323 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %indvars.iv.next324.3, %scalar.ph ] ; 6 uses
  %niter507 = phi i64 [ 0, %scalar.ph.preheader.new ], [ %niter507.next.3, %scalar.ph ]
  %i.ds = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv323
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !91
  %i.du = uitofp i16 %i.dt to float
  %i.dv = load float, ptr %i.cb, align 4, !tbaa !83
  %i.dw = fsub reassoc nsz arcp contract afn float %i.du, %i.dv
  %i.dx = load float, ptr %i.cc, align 4, !tbaa !83
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dw, %i.dx
  %i.dz = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv323
  store float %i.dy, ptr %i.dz, align 4, !tbaa !83
  %indvars.iv.next324 = or disjoint i64 %indvars.iv323, 1 ; 2 uses
  %i.ea = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !91
  %i.ec = uitofp i16 %i.eb to float
  %i.ed = load float, ptr %i.cg, align 4, !tbaa !83
  %i.ee = fsub reassoc nsz arcp contract afn float %i.ec, %i.ed
  %i.ef = load float, ptr %i.ch, align 4, !tbaa !83
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.ee, %i.ef
  %i.eh = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.next324
  store float %i.eg, ptr %i.eh, align 4, !tbaa !83
  %indvars.iv.next324.1 = or disjoint i64 %indvars.iv323, 2 ; 2 uses
  %i.ei = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324.1
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !91
  %i.ek = uitofp i16 %i.ej to float
  %i.el = load float, ptr %i.ck, align 4, !tbaa !83
  %i.em = fsub reassoc nsz arcp contract afn float %i.ek, %i.el
  %i.en = load float, ptr %i.cl, align 4, !tbaa !83
  %i.eo = fdiv reassoc nsz arcp contract afn float %i.em, %i.en
  %i.ep = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.next324.1
  store float %i.eo, ptr %i.ep, align 4, !tbaa !83
  %indvars.iv.next324.2 = or disjoint i64 %indvars.iv323, 3 ; 2 uses
  %i.eq = getelementptr [2 x i8], ptr %gep381, i64 %indvars.iv.next324.2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !91
  %i.es = uitofp i16 %i.er to float
  %i.et = load float, ptr %i.cp, align 4, !tbaa !83
  %i.eu = fsub reassoc nsz arcp contract afn float %i.es, %i.et
  %i.ev = load float, ptr %i.cq, align 4, !tbaa !83
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.eu, %i.ev
  %i.ex = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.next324.2
  store float %i.ew, ptr %i.ex, align 4, !tbaa !83
  %indvars.iv.next324.3 = add nuw nsw i64 %indvars.iv323, 4 ; 2 uses
  %niter507.next.3 = add i64 %niter507, 4         ; 2 uses
  %niter507.ncmp.3 = icmp eq i64 %niter507.next.3, %unroll_iter506
  br i1 %niter507.ncmp.3, label %._crit_edge287.unr-lcssa, label %scalar.ph, !llvm.loop !169

bb.d:                                             ; preds = %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !187
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %.preheader280, label %bb.e

.preheader280:                                    ; preds = %bb.d
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !188 ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.preheader279.lr.ph, label %.loopexit276.sink.split

.preheader279.lr.ph:                              ; preds = %.preheader280
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !189 ; 6 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  %i.fh = sext i32 %i.ff to i64                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 7 uses
  br i1 %i.fg, label %.preheader279.lr.ph.split, label %.loopexit276.sink.split

.preheader279.lr.ph.split:                        ; preds = %.preheader279.lr.ph
  %i.fk = getelementptr i8, ptr %5, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !189 ; 2 uses
  %.val266 = load i32, ptr %5, align 4, !tbaa !89 ; 3 uses
  %.val267 = load i32, ptr %i.fk, align 4, !tbaa !88 ; 2 uses
  %invariant.op284 = add i32 %i.n, %.val267
  %invariant.op = add i32 %i.e, %.val266          ; 6 uses
  %i.fn = sext i32 %i.s to i64                    ; 3 uses
  %i.fo = sext i32 %i.fm to i64                   ; 3 uses
  %i.fp = sext i32 %i.l to i64                    ; 3 uses
  %wide.trip.count321 = zext nneg i32 %i.fc to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.fp
  %wide.trip.count = zext nneg i32 %i.ff to i64   ; 5 uses
  %i.fq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.fr = trunc i32 %invariant.op to i1
  %i.fs = add nuw nsw i64 %wide.trip.count321, 4611686018427387903
  %i.ft = mul i64 %i.fs, %i.fh
  %i.fu = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.fv = add i64 %i.ft, %wide.trip.count
  %i.fw = shl i64 %i.fv, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.fw  ; 2 uses
  %i.fx = mul nsw i64 %i.fn, %i.fo
  %i.fy = shl nsw i64 %i.fp, 2
  %i.fz = add i64 %i.fx, %i.fp
  %i.ga = shl i64 %i.fz, 2
  %scevgep388 = getelementptr i8, ptr %2, i64 %i.ga
  %i.gb = add nsw i64 %i.fn, %wide.trip.count321
  %i.gc = shl nsw i64 %i.gb, 2
  %i.gd = add nsw i64 %i.gc, -4
  %i.ge = mul i64 %i.gd, %i.fo
  %i.gf = getelementptr i8, ptr %2, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.fy
  %scevgep389 = getelementptr i8, ptr %i.gg, i64 %i.fu
  %i.gh = shl i32 %invariant.op, 2
  %i.gi = and i32 %i.gh, 4
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = add nuw nsw i64 %i.gj, 20
  %i.gl = sub nsw i64 %i.gk, %i.fu
  %scevgep390 = getelementptr i8, ptr %i.d, i64 %i.gl
  %i.gm = add i32 %i.n, %.val267
  %i.gn = getelementptr i8, ptr %i.d, i64 %i.gj
  %scevgep392 = getelementptr i8, ptr %i.gn, i64 36
  %i.go = add i32 %i.e, %.val266                  ; 2 uses
  %i.gp = and i32 %i.go, 1
  %i.gq = and i32 %i.go, 1
  %i.gr = add i32 %i.e, %.val266
  %i.gs = and i32 %i.gr, 1
  %i.gt = and i32 %invariant.op, 1
  %10 = zext i32 %i.gm to i64
  %min.iters.check = icmp ult i32 %i.ff, 4
  %i.gu = trunc i64 %i.fq to i1
  %i.gv = xor i1 %i.fr, true
  %i.gw = and i1 %i.gu, %i.gv
  %i.gx = icmp ugt i64 %i.fq, 1
  %i.gy = or i1 %i.gw, %i.gx
  %bound0 = icmp ult ptr %3, %scevgep389
  %bound1 = icmp ult ptr %scevgep388, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.fm, 0
  %i.gz = or i1 %found.conflict, %stride.check
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ha = icmp ult i32 %i.ff, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod501 = icmp ne i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader279.lr.ph.split, %._crit_edge
  %indvars.iv318 = phi i64 [ 0, %.preheader279.lr.ph.split ], [ %indvars.iv.next319, %._crit_edge ] ; 5 uses
  %11 = xor i64 %indvars.iv318, %10
  %12 = shl i64 %11, 3
  %13 = and i64 %12, 8                            ; 2 uses
  %scevgep391 = getelementptr i8, ptr %scevgep390, i64 %13
  %scevgep393 = getelementptr i8, ptr %scevgep392, i64 %13
  %i.hb = add nsw i64 %indvars.iv318, %i.fn
  %i.hc = mul nsw i64 %i.hb, %i.fo
  %i.hd = mul nuw nsw i64 %indvars.iv318, %i.fh
  %i.he = trunc nuw nsw i64 %indvars.iv318 to i32
  %.reass285 = add i32 %invariant.op284, %i.he
  %i.hf = shl i32 %.reass285, 1
  %i.hg = and i32 %i.hf, 2                        ; 7 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.hc ; 7 uses
  %i.hh = getelementptr [4 x i8], ptr %3, i64 %i.hd ; 7 uses
  %brmerge520 = select i1 %min.iters.check, i1 true, i1 %i.gy
  br i1 %brmerge520, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck
  br i1 %i.ha, label %vec.epilog.scalar.ph.epil.preheader, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.preheader
  %i.hi = or disjoint i32 %i.hg, %i.gt
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.hj
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hj
  %i.hm = or disjoint i32 %i.gp, %i.hg
  %i.hn = xor i32 %i.hm, 1
  %i.ho = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ho
  %i.hr = or disjoint i32 %i.hg, %i.gq
  %i.hs = zext nneg i32 %i.hr to i64              ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hs
  %i.hv = or disjoint i32 %i.gs, %i.hg
  %i.hw = xor i32 %i.hv, 1
  %i.hx = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.hx
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.hx
  br label %vec.epilog.scalar.ph

vector.memcheck:                                  ; preds = %iter.check
  %bound0394 = icmp ult ptr %3, %scevgep393
  %bound1395 = icmp ult ptr %scevgep391, %scevgep
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx = or i1 %i.gz, %found.conflict396
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check397 = icmp ult i32 %i.ff, 16
  br i1 %min.iters.check397, label %vec.epilog.vector.body.preheader, label %vector.body.preheader

vector.body.preheader:                            ; preds = %vector.main.loop.iter.check
  %i.ia = and i32 %invariant.op, 1
  %i.ib = or disjoint i32 %i.hg, %i.ia
  %i.ic = zext nneg i32 %i.ib to i64              ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -28
  %i.if = getelementptr inbounds i8, ptr %i.id, i64 -60
  %wide.load399 = load <8 x float>, ptr %i.ie, align 4, !tbaa !83, !alias.scope !193
  %wide.load400 = load <8 x float>, ptr %i.if, align 4, !tbaa !83, !alias.scope !193
  %reverse = shufflevector <8 x float> %wide.load399, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse401 = shufflevector <8 x float> %wide.load400, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.ic ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -28
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -60
  %wide.load402 = load <8 x float>, ptr %i.ih, align 4, !tbaa !83, !alias.scope !193
  %wide.load403 = load <8 x float>, ptr %i.ii, align 4, !tbaa !83, !alias.scope !193
  %reverse404 = shufflevector <8 x float> %wide.load402, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse405 = shufflevector <8 x float> %wide.load403, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ij = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse404
  %i.ik = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %reverse405
  br label %vector.body

vec.epilog.vector.body.preheader:                 ; preds = %vector.main.loop.iter.check
  %i.il = and i32 %invariant.op, 1
  %i.im = or disjoint i32 %i.hg, %i.il
  %i.in = zext nneg i32 %i.im to i64              ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.in
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 -12
  %wide.load409 = load <4 x float>, ptr %i.ip, align 4, !tbaa !83, !alias.scope !193
  %reverse410 = shufflevector <4 x float> %wide.load409, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.in
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -12
  %wide.load411 = load <4 x float>, ptr %i.ir, align 4, !tbaa !83, !alias.scope !193
  %reverse412 = shufflevector <4 x float> %wide.load411, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.is = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %reverse412
  br label %vec.epilog.vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %i.it = getelementptr [4 x i8], ptr %gep, i64 %index ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 32
  %wide.load = load <8 x float>, ptr %i.it, align 4, !tbaa !83, !alias.scope !194
  %wide.load398 = load <8 x float>, ptr %i.iu, align 4, !tbaa !83, !alias.scope !194
  %i.iv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %reverse
  %i.iw = fsub reassoc nsz arcp contract afn <8 x float> %wide.load398, %reverse401
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %i.iv, %i.ij
  %i.iy = fmul reassoc nsz arcp contract afn <8 x float> %i.iw, %i.ik
  %i.iz = getelementptr [4 x i8], ptr %i.hh, i64 %index ; 2 uses
  %i.ja = getelementptr i8, ptr %i.iz, i64 32
  store <8 x float> %i.ix, ptr %i.iz, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  store <8 x float> %i.iy, ptr %i.ja, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  %index.next = add nuw i64 %index, 16
  br label %vector.body, !llvm.loop !174

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body.preheader, %vec.epilog.vector.body
  %index407 = phi i64 [ %index.next413, %vec.epilog.vector.body ], [ 0, %vec.epilog.vector.body.preheader ] ; 3 uses
  %i.jb = getelementptr [4 x i8], ptr %gep, i64 %index407
  %wide.load408 = load <4 x float>, ptr %i.jb, align 4, !tbaa !83, !alias.scope !194
  %i.jc = fsub reassoc nsz arcp contract afn <4 x float> %wide.load408, %reverse410
  %i.jd = fmul reassoc nsz arcp contract afn <4 x float> %i.jc, %i.is
  %i.je = getelementptr [4 x i8], ptr %i.hh, i64 %index407
  store <4 x float> %i.jd, ptr %i.je, align 4, !tbaa !83, !alias.scope !195, !noalias !196
  %index.next413 = add nuw i64 %index407, 4
  br label %vec.epilog.vector.body, !llvm.loop !175

._crit_edge.unr-lcssa:                            ; preds = %vec.epilog.scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %vec.epilog.scalar.ph.epil.preheader

vec.epilog.scalar.ph.epil.preheader:              ; preds = %._crit_edge.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod501)
  br label %vec.epilog.scalar.ph.epil

vec.epilog.scalar.ph.epil:                        ; preds = %vec.epilog.scalar.ph.epil, %vec.epilog.scalar.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %vec.epilog.scalar.ph.epil ], [ %indvars.iv.epil.init, %vec.epilog.scalar.ph.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %vec.epilog.scalar.ph.epil ], [ 0, %vec.epilog.scalar.ph.epil.preheader ]
  %i.jf = trunc nuw nsw i64 %indvars.iv.epil to i32
  %.reass.epil = add i32 %invariant.op, %i.jf
  %i.jg = and i32 %.reass.epil, 1
  %i.jh = or disjoint i32 %i.hg, %i.jg
  %i.ji = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.epil
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !83
  %i.jk = zext nneg i32 %i.jh to i64              ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.jk
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !83
  %i.jn = fsub reassoc nsz arcp contract afn float %i.jj, %i.jm
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.jk
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !83
  %i.jq = fdiv reassoc nsz arcp contract afn float %i.jn, %i.jp
  %i.jr = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv.epil
  store float %i.jq, ptr %i.jr, align 4, !tbaa !83
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
  %i.js = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv
  %i.jt = load float, ptr %i.js, align 4, !tbaa !83
  %i.ju = load float, ptr %i.hk, align 4, !tbaa !83
  %i.jv = fsub reassoc nsz arcp contract afn float %i.jt, %i.ju
  %i.jw = load float, ptr %i.hl, align 4, !tbaa !83
  %i.jx = fdiv reassoc nsz arcp contract afn float %i.jv, %i.jw
  %i.jy = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv
  store float %i.jx, ptr %i.jy, align 4, !tbaa !83
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jz = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !83
  %i.kb = load float, ptr %i.hp, align 4, !tbaa !83
  %i.kc = fsub reassoc nsz arcp contract afn float %i.ka, %i.kb
  %i.kd = load float, ptr %i.hq, align 4, !tbaa !83
  %i.ke = fdiv reassoc nsz arcp contract afn float %i.kc, %i.kd
  %i.kf = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv.next
  store float %i.ke, ptr %i.kf, align 4, !tbaa !83
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.1
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !83
  %i.ki = load float, ptr %i.ht, align 4, !tbaa !83
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kh, %i.ki
  %i.kk = load float, ptr %i.hu, align 4, !tbaa !83
  %i.kl = fdiv reassoc nsz arcp contract afn float %i.kj, %i.kk
  %i.km = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv.next.1
  store float %i.kl, ptr %i.km, align 4, !tbaa !83
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.kn = getelementptr [4 x i8], ptr %gep, i64 %indvars.iv.next.2
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !83
  %i.kp = load float, ptr %i.hy, align 4, !tbaa !83
  %i.kq = fsub reassoc nsz arcp contract afn float %i.ko, %i.kp
  %i.kr = load float, ptr %i.hz, align 4, !tbaa !83
  %i.ks = fdiv reassoc nsz arcp contract afn float %i.kq, %i.kr
  %i.kt = getelementptr [4 x i8], ptr %i.hh, i64 %indvars.iv.next.2
  store float %i.ks, ptr %i.kt, align 4, !tbaa !83
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %vec.epilog.scalar.ph, !llvm.loop !177

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !197 ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !188 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.preheader275.lr.ph, label %.loopexit276
end_hunk_0
