Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi2EEEvPKhilPh:bb.a
  %i.bs = getelementptr i8, ptr %i.bq, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %gep.1.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i.2, i64 %2
  store i8 %i.bt, ptr %gep.1.i.i.2, align 1, !tbaa !7
  %i.bu = add nsw i64 %.080102.i.i, 3             ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 1
  %i.bw = getelementptr i8, ptr %0, i64 %i.bv     ; 2 uses
  %invariant.gep.i.i.3 = getelementptr i8, ptr %3, i64 %i.bu ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !7
  store i8 %i.bx, ptr %invariant.gep.i.i.3, align 1, !tbaa !7
  %i.by = getelementptr i8, ptr %i.bw, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7
  %gep.1.i.i.3 = getelementptr i8, ptr %invariant.gep.i.i.3, i64 %2
  store i8 %i.bz, ptr %gep.1.i.i.3, align 1, !tbaa !7
  %i.ca = add nsw i64 %.080102.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ca, %2
  br i1 %exitcond.not.i.i.3, label %.preheader98.i.i, label %.preheader99.i.i, !llvm.loop !136

.preheader98.i.i:                                 ; preds = %.preheader99.i.i.prol.loopexit, %.preheader99.i.i, %middle.block86, %vec.epilog.middle.block101, %bb.b
  %i.cb = icmp sgt i64 %2, 15
  br i1 %i.cb, label %.preheader.preheader.i.i.preheader, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit

.preheader.preheader.i.i.preheader:               ; preds = %.preheader98.i.i
  %xtraiter105 = and i64 %i.c, 1
  %i.cc = and i64 %2, 9223372036854775792
  %i.cd = icmp eq i64 %i.cc, 16
  br i1 %i.cd, label %.preheader.preheader.i.i.epil.preheader, label %.preheader.preheader.i.i.preheader.new

.preheader.preheader.i.i.preheader.new:           ; preds = %.preheader.preheader.i.i.preheader
  %unroll_iter = and i64 %i.c, 576460752303423486
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.preheader.i.i, %.preheader.preheader.i.i.preheader.new
  %.078106.i.i = phi i64 [ 0, %.preheader.preheader.i.i.preheader.new ], [ %i.cz, %.preheader.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.preheader.i.i ]
  %i.ce = shl nuw i64 %.078106.i.i, 5
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce     ; 2 uses
  %i.cg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cf) ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 16
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ch) ; 2 uses
  %i.cj = shufflevector <16 x i8> %i.cg, <16 x i8> %i.ci, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.ck = shufflevector <16 x i8> %i.cg, <16 x i8> %i.ci, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cl = shl nuw nsw i64 %.078106.i.i, 4         ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %i.cl
  store <16 x i8> %i.cj, ptr %i.cm, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cl
  store <16 x i8> %i.ck, ptr %i.cn, align 1, !tbaa !7
  %i.co = or disjoint i64 %.078106.i.i, 1         ; 2 uses
  %i.cp = shl nuw i64 %i.co, 5
  %i.cq = getelementptr i8, ptr %0, i64 %i.cp     ; 2 uses
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  %i.ct = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cs) ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.cr, <16 x i8> %i.ct, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cv = shufflevector <16 x i8> %i.cr, <16 x i8> %i.ct, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cw = shl nuw nsw i64 %i.co, 4                ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 %i.cw
  store <16 x i8> %i.cu, ptr %i.cx, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cw
  store <16 x i8> %i.cv, ptr %i.cy, align 1, !tbaa !7
  %i.cz = add nuw nsw i64 %.078106.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa, label %.preheader.preheader.i.i, !llvm.loop !137

bb.c:                                             ; preds = %bb.a
  %i.da = lshr i64 %2, 5                          ; 2 uses
  %i.db = and i64 %2, 9223372036854775776         ; 12 uses
  %.not.i = icmp eq i64 %i.db, %2
  br i1 %.not.i, label %.preheader.preheader.i.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.dc = or disjoint i64 %i.db, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.dc) ; 2 uses
  %i.dd = sub nsw i64 %smax, %i.db                ; 6 uses
  %min.iters.check = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check, label %.preheader99.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.de = getelementptr i8, ptr %3, i64 %i.db     ; 2 uses
  %i.df = or disjoint i64 %i.db, 1
  %i.dg = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.df) ; 3 uses
  %i.dh = getelementptr i8, ptr %3, i64 %i.dg     ; 2 uses
  %i.di = getelementptr i8, ptr %3, i64 %2
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.db  ; 2 uses
  %i.dk = getelementptr i8, ptr %3, i64 %2
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.dg  ; 2 uses
  %i.dm = shl nuw i64 %i.da, 6
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm     ; 2 uses
  %i.do = shl nuw i64 %i.dg, 1
  %i.dp = getelementptr i8, ptr %0, i64 %i.do     ; 2 uses
  %bound0 = icmp ult ptr %i.de, %i.dl
  %bound1 = icmp ult ptr %i.dj, %i.dh
  %found.conflict = and i1 %bound0, %bound1
  %bound021 = icmp ult ptr %i.de, %i.dp
  %bound122 = icmp ult ptr %i.dn, %i.dh
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx = or i1 %found.conflict, %found.conflict23
  %bound024 = icmp ult ptr %i.dj, %i.dp
  %bound125 = icmp ult ptr %i.dn, %i.dl
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx27 = or i1 %conflict.rdx, %found.conflict26
  br i1 %conflict.rdx27, label %.preheader99.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.dd, 64
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %i.dd, 56
  %n.vec = and i64 %i.dd, -64                     ; 4 uses
  %i.dr = add i64 %i.db, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = add nuw i64 %i.db, %index               ; 3 uses
  %i.dt = shl nuw nsw i64 %i.ds, 1
  %i.du = shl i64 %i.ds, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.dw = getelementptr i8, ptr %0, i64 %i.du
  %i.dx = getelementptr i8, ptr %i.dw, i64 64
  %i.dy = getelementptr i8, ptr %3, i64 %i.ds     ; 3 uses
  %wide.vec = load <64 x i8>, ptr %i.dv, align 1, !tbaa !7, !alias.scope !150 ; 2 uses
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec29 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %wide.vec30 = load <64 x i8>, ptr %i.dx, align 1, !tbaa !7, !alias.scope !150 ; 2 uses
  %strided.vec31 = shufflevector <64 x i8> %wide.vec30, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec32 = shufflevector <64 x i8> %wide.vec30, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.dz = getelementptr i8, ptr %i.dy, i64 32
  store <32 x i8> %strided.vec, ptr %i.dy, align 1, !tbaa !7, !alias.scope !151, !noalias !152
  store <32 x i8> %strided.vec31, ptr %i.dz, align 1, !tbaa !7, !alias.scope !151, !noalias !152
  %i.ea = getelementptr i8, ptr %i.dy, i64 %2     ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 32
  store <32 x i8> %strided.vec29, ptr %i.ea, align 1, !tbaa !7, !alias.scope !153, !noalias !150
  store <32 x i8> %strided.vec32, ptr %i.eb, align 1, !tbaa !7, !alias.scope !153, !noalias !150
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check, label %.preheader99.i.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ed = and i64 %smax, 7                        ; 2 uses
  %n.vec33 = sub i64 %i.dd, %i.ed                 ; 2 uses
  %i.ee = add i64 %i.db, %n.vec33
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.ef = add nuw i64 %i.db, %index34             ; 2 uses
  %i.eg = shl nuw nsw i64 %i.ef, 1
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 %i.eg
  %i.ei = getelementptr i8, ptr %3, i64 %i.ef     ; 2 uses
  %wide.vec35 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !7, !alias.scope !150 ; 2 uses
  %strided.vec36 = shufflevector <16 x i8> %wide.vec35, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec37 = shufflevector <16 x i8> %wide.vec35, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i8> %strided.vec36, ptr %i.ei, align 1, !tbaa !7, !alias.scope !151, !noalias !152
  %i.ej = getelementptr i8, ptr %i.ei, i64 %2
  store <8 x i8> %strided.vec37, ptr %i.ej, align 1, !tbaa !7, !alias.scope !153, !noalias !150
  %index.next38 = add nuw i64 %index34, 8         ; 2 uses
  %i.ek = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ek, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !143

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.ed, 0
  br i1 %cmp.n39, label %.preheader.preheader.i.preheader, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.080102.i.ph = phi i64 [ %i.db, %iter.check ], [ %i.db, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.ee, %vec.epilog.middle.block ]
  br label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader99.i.preheader, %.preheader99.i
  %.080102.i = phi i64 [ %i.eq, %.preheader99.i ], [ %.080102.i.ph, %.preheader99.i.preheader ] ; 3 uses
  %i.el = shl nuw nsw i64 %.080102.i, 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.el ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %3, i64 %.080102.i ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !7
  store i8 %i.en, ptr %invariant.gep.i, align 1, !tbaa !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %2
  store i8 %i.ep, ptr %gep.1.i, align 1, !tbaa !7
  %i.eq = add nuw nsw i64 %.080102.i, 1           ; 2 uses
  %i.er = icmp slt i64 %i.eq, %2
  br i1 %i.er, label %.preheader99.i, label %.preheader.preheader.i.preheader, !llvm.loop !144

.preheader.preheader.i.preheader:                 ; preds = %.preheader99.i, %middle.block, %vec.epilog.middle.block, %bb.c
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %.078106.i = phi i64 [ %i.ge, %.preheader.preheader.i ], [ 0, %.preheader.preheader.i.preheader ] ; 3 uses
  %i.es = shl i64 %.078106.i, 6
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %0, i64 %i.es
  %4 = load <64 x i8>, ptr %.sroa.4.0..sroa_idx.i, align 1 ; 2 uses
  %i.et = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.eu = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ev = shufflevector <32 x i8> %i.et, <32 x i8> %i.eu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ew = bitcast <32 x i8> %i.et to <8 x i32>
  %i.ex = bitcast <32 x i8> %i.eu to <8 x i32>
  %i.ey = shufflevector <8 x i32> %i.ew, <8 x i32> %i.ex, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ez = bitcast <8 x i32> %i.ey to <32 x i8>    ; 2 uses
  %i.fa = shufflevector <32 x i8> %i.ev, <32 x i8> %i.ez, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fb = shufflevector <32 x i8> %i.ev, <32 x i8> %i.ez, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fc = shufflevector <32 x i8> %i.fa, <32 x i8> %i.fb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fd = bitcast <32 x i8> %i.fa to <8 x i32>
  %i.fe = bitcast <32 x i8> %i.fb to <8 x i32>
  %i.ff = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fg = bitcast <8 x i32> %i.ff to <32 x i8>    ; 2 uses
  %i.fh = shufflevector <32 x i8> %i.fc, <32 x i8> %i.fg, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fi = shufflevector <32 x i8> %i.fc, <32 x i8> %i.fg, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fj = shufflevector <32 x i8> %i.fh, <32 x i8> %i.fi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fk = bitcast <32 x i8> %i.fh to <8 x i32>
  %i.fl = bitcast <32 x i8> %i.fi to <8 x i32>
  %i.fm = shufflevector <8 x i32> %i.fk, <8 x i32> %i.fl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fn = bitcast <8 x i32> %i.fm to <32 x i8>    ; 2 uses
  %i.fo = shufflevector <32 x i8> %i.fj, <32 x i8> %i.fn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fp = shufflevector <32 x i8> %i.fj, <32 x i8> %i.fn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fq = shufflevector <32 x i8> %i.fo, <32 x i8> %i.fp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fr = bitcast <32 x i8> %i.fo to <8 x i32>
  %i.fs = bitcast <32 x i8> %i.fp to <8 x i32>
  %i.ft = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fu = bitcast <8 x i32> %i.ft to <32 x i8>    ; 2 uses
  %i.fv = shufflevector <32 x i8> %i.fq, <32 x i8> %i.fu, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fw = shufflevector <32 x i8> %i.fq, <32 x i8> %i.fu, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fx = shufflevector <32 x i8> %i.fv, <32 x i8> %i.fw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fy = bitcast <32 x i8> %i.fv to <8 x i32>
  %i.fz = bitcast <32 x i8> %i.fw to <8 x i32>
  %i.ga = shufflevector <8 x i32> %i.fy, <8 x i32> %i.fz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gb = shl nuw nsw i64 %.078106.i, 5           ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 %i.gb
  store <32 x i8> %i.fx, ptr %i.gc, align 1, !tbaa !7
  %i.gd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gb
  store <8 x i32> %i.ga, ptr %i.gd, align 1, !tbaa !7
  %i.ge = add nuw nsw i64 %.078106.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ge, %i.da
  br i1 %exitcond.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit, label %.preheader.preheader.i, !llvm.loop !145

_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa: ; preds = %.preheader.preheader.i.i
  %lcmp.mod106.not = icmp eq i64 %xtraiter105, 0
  br i1 %lcmp.mod106.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit, label %.preheader.preheader.i.i.epil.preheader

.preheader.preheader.i.i.epil.preheader:          ; preds = %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa, %.preheader.preheader.i.i.preheader
  %.078106.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.preheader ], [ %i.cz, %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %i.gf = shl nuw i64 %.078106.i.i.epil.init, 5
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf     ; 2 uses
  %i.gh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gg) ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 16
  %i.gj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gi) ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gh, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.gl = shufflevector <16 x i8> %i.gh, <16 x i8> %i.gj, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.gm = shl nuw nsw i64 %.078106.i.i.epil.init, 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 %i.gm
  store <16 x i8> %i.gk, ptr %i.gn, align 1, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gm
  store <16 x i8> %i.gl, ptr %i.go, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit

_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit: ; preds = %.preheader.preheader.i, %.preheader.preheader.i.i.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa, %.preheader98.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  %i.b = getelementptr inbounds i8, ptr %3, i64 %2 ; 2 uses
  %i.c = shl i64 %2, 1                            ; 15 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 2 uses
  %i.e = mul i64 %2, 3                            ; 15 uses
  %i.f = getelementptr inbounds i8, ptr %3, i64 %i.e ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 %2, 16                          ; 4 uses
  %i.h = shl nsw i64 %i.g, 4                      ; 14 uses
  %i.i = icmp slt i64 %i.h, %2
  br i1 %i.i, label %iter.check212, label %.preheader100.i.i

iter.check212:                                    ; preds = %bb.b
  %i.j = sub i64 %2, %i.h                         ; 4 uses
  %min.iters.check156 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check156, label %.preheader101.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check212
  %i.k = xor i64 %i.h, -1
  %i.l = add i64 %2, %i.k                         ; 2 uses
  %i.m = shl i64 %i.g, 6                          ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.m   ; 2 uses
  %mul.result = shl i64 %i.l, 2                   ; 4 uses
  %mul.overflow = icmp ugt i64 %i.l, 4611686018427387903
  %i.n = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.o = icmp ult ptr %i.n, %scevgep
  %i.p = getelementptr i8, ptr %0, i64 %i.m
  %scevgep103 = getelementptr i8, ptr %i.p, i64 1 ; 2 uses
  %i.q = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.r = icmp ult ptr %i.q, %scevgep103
  %i.s = getelementptr i8, ptr %0, i64 %i.m
  %scevgep104 = getelementptr i8, ptr %i.s, i64 2 ; 2 uses
  %i.t = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %i.u = icmp ult ptr %i.t, %scevgep104
  %i.v = or i1 %i.u, %mul.overflow
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %scevgep105 = getelementptr i8, ptr %i.w, i64 3 ; 2 uses
  %i.x = getelementptr i8, ptr %scevgep105, i64 %mul.result
  %i.y = icmp ult ptr %i.x, %scevgep105
  %i.z = or i1 %i.r, %i.o
  %i.aa = or i1 %i.z, %i.v
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %.preheader101.i.i.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %vector.scevcheck
  %i.ac = getelementptr i8, ptr %3, i64 %i.h      ; 4 uses
  %i.ad = getelementptr i8, ptr %3, i64 %2        ; 4 uses
  %i.ae = getelementptr i8, ptr %3, i64 %2
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.h   ; 4 uses
  %i.ag = getelementptr i8, ptr %3, i64 %i.c      ; 4 uses
  %i.ah = getelementptr i8, ptr %3, i64 %i.h
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.c   ; 4 uses
  %i.aj = getelementptr i8, ptr %3, i64 %i.e      ; 4 uses
  %i.ak = getelementptr i8, ptr %3, i64 %i.h
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.e   ; 4 uses
  %i.am = shl i64 %2, 2                           ; 2 uses
  %i.an = getelementptr i8, ptr %3, i64 %i.am     ; 4 uses
  %i.ao = shl i64 %i.g, 6
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao     ; 4 uses
  %i.aq = getelementptr i8, ptr %0, i64 %i.am     ; 4 uses
  %bound0158 = icmp ult ptr %i.ac, %i.ag
  %bound1159 = icmp ult ptr %i.af, %i.ad
  %found.conflict160 = and i1 %bound0158, %bound1159
  %bound0161 = icmp ult ptr %i.ac, %i.aj
  %bound1162 = icmp ult ptr %i.ai, %i.ad
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %found.conflict160, %found.conflict163
  %bound0165 = icmp ult ptr %i.ac, %i.an
  %bound1166 = icmp ult ptr %i.al, %i.ad
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.ac, %i.aq
  %bound1170 = icmp ult ptr %i.ap, %i.ad
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.af, %i.aj
  %bound1174 = icmp ult ptr %i.ai, %i.ag
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  %bound0177 = icmp ult ptr %i.af, %i.an
  %bound1178 = icmp ult ptr %i.al, %i.ag
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %i.af, %i.aq
  %bound1182 = icmp ult ptr %i.ap, %i.ag
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %i.ai, %i.an
  %bound1186 = icmp ult ptr %i.al, %i.aj
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %i.ai, %i.aq
  %bound1190 = icmp ult ptr %i.ap, %i.aj
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %i.al, %i.aq
  %bound1194 = icmp ult ptr %i.ap, %i.an
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  br i1 %conflict.rdx196, label %.preheader101.i.i.preheader, label %vector.main.loop.iter.check197

vector.main.loop.iter.check197:                   ; preds = %vector.memcheck157
  %min.iters.check198 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check198, label %vec.epilog.ph216, label %vector.ph199

vector.ph199:                                     ; preds = %vector.main.loop.iter.check197
  %i.ar = and i64 %2, 15                          ; 3 uses
  %n.vec200 = sub nuw i64 %i.j, %i.ar             ; 3 uses
  %i.as = add i64 %i.h, %n.vec200
  br label %vector.body201

vector.body201:                                   ; preds = %vector.ph199, %vector.body201
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next208, %vector.body201 ] ; 2 uses
  %i.at = add i64 %i.h, %index202                 ; 2 uses
  %i.au = shl nsw i64 %i.at, 2
  %i.av = getelementptr i8, ptr %0, i64 %i.au
  %i.aw = getelementptr i8, ptr %3, i64 %i.at     ; 4 uses
  %wide.vec203 = load <64 x i8>, ptr %i.av, align 1, !tbaa !7, !alias.scope !174 ; 4 uses
  %strided.vec204 = shufflevector <64 x i8> %wide.vec203, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec205 = shufflevector <64 x i8> %wide.vec203, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec206 = shufflevector <64 x i8> %wide.vec203, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec207 = shufflevector <64 x i8> %wide.vec203, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <16 x i8> %strided.vec204, ptr %i.aw, align 1, !tbaa !7, !alias.scope !175, !noalias !176
  %i.ax = getelementptr i8, ptr %i.aw, i64 %2
  store <16 x i8> %strided.vec205, ptr %i.ax, align 1, !tbaa !7, !alias.scope !177, !noalias !178
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.c
  store <16 x i8> %strided.vec206, ptr %i.ay, align 1, !tbaa !7, !alias.scope !179, !noalias !180
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.e
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh:bb.a
  %i.ej = getelementptr i8, ptr %3, i64 %i.ei     ; 4 uses
  %i.ek = shl nuw i64 %i.du, 7
  %i.el = getelementptr i8, ptr %0, i64 %i.ek     ; 4 uses
  %i.em = getelementptr i8, ptr %0, i64 %i.ei     ; 4 uses
  %bound0 = icmp ult ptr %i.dy, %i.ec
  %bound1 = icmp ult ptr %i.eb, %i.dz
  %found.conflict = and i1 %bound0, %bound1
  %bound054 = icmp ult ptr %i.dy, %i.ef
  %bound155 = icmp ult ptr %i.ee, %i.dz
  %found.conflict56 = and i1 %bound054, %bound155
  %conflict.rdx = or i1 %found.conflict, %found.conflict56
  %bound057 = icmp ult ptr %i.dy, %i.ej
  %bound158 = icmp ult ptr %i.eh, %i.dz
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx, %found.conflict59
  %bound061 = icmp ult ptr %i.dy, %i.em
  %bound162 = icmp ult ptr %i.el, %i.dz
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %i.eb, %i.ef
  %bound166 = icmp ult ptr %i.ee, %i.ec
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %i.eb, %i.ej
  %bound170 = icmp ult ptr %i.eh, %i.ec
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  %bound073 = icmp ult ptr %i.eb, %i.em
  %bound174 = icmp ult ptr %i.el, %i.ec
  %found.conflict75 = and i1 %bound073, %bound174
  %conflict.rdx76 = or i1 %conflict.rdx72, %found.conflict75
  %bound077 = icmp ult ptr %i.ee, %i.ej
  %bound178 = icmp ult ptr %i.eh, %i.ef
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx76, %found.conflict79
  %bound081 = icmp ult ptr %i.ee, %i.em
  %bound182 = icmp ult ptr %i.el, %i.ef
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %i.eh, %i.em
  %bound186 = icmp ult ptr %i.el, %i.ej
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  br i1 %conflict.rdx88, label %.preheader90.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check89 = icmp ult i64 %i.dx, 16
  br i1 %min.iters.check89, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.en = and i64 %2, 15                          ; 3 uses
  %n.vec = sub nuw nsw i64 %i.dx, %i.en           ; 3 uses
  %i.eo = add nuw i64 %i.dv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ep = add nuw i64 %i.dv, %index               ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 2
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 %i.eq
  %i.es = getelementptr i8, ptr %3, i64 %i.ep     ; 4 uses
  %wide.vec = load <64 x i8>, ptr %i.er, align 1, !tbaa !7, !alias.scope !183 ; 4 uses
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec90 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec91 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec92 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <16 x i8> %strided.vec, ptr %i.es, align 1, !tbaa !7, !alias.scope !184, !noalias !185
  %i.et = getelementptr i8, ptr %i.es, i64 %2
  store <16 x i8> %strided.vec90, ptr %i.et, align 1, !tbaa !7, !alias.scope !186, !noalias !187
  %i.eu = getelementptr i8, ptr %i.es, i64 %i.c
  store <16 x i8> %strided.vec91, ptr %i.eu, align 1, !tbaa !7, !alias.scope !188, !noalias !189
  %i.ev = getelementptr i8, ptr %i.es, i64 %i.e
  store <16 x i8> %strided.vec92, ptr %i.ev, align 1, !tbaa !7, !alias.scope !190, !noalias !183
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !170

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.en, 0
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.en, 4
  br i1 %min.epilog.iters.check, label %.preheader90.i.preheader, label %vec.epilog.ph, !prof !182

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ex = and i64 %2, 3                           ; 2 uses
  %n.vec93 = sub nsw i64 %i.dx, %i.ex             ; 2 uses
  %i.ey = add i64 %i.dv, %n.vec93
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next100, %vec.epilog.vector.body ] ; 2 uses
  %i.ez = add nuw i64 %i.dv, %index94             ; 2 uses
  %i.fa = shl nuw nsw i64 %i.ez, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 %i.fa
  %i.fc = getelementptr i8, ptr %3, i64 %i.ez     ; 4 uses
  %wide.vec95 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !7, !alias.scope !183 ; 4 uses
  %strided.vec96 = shufflevector <16 x i8> %wide.vec95, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec97 = shufflevector <16 x i8> %wide.vec95, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec98 = shufflevector <16 x i8> %wide.vec95, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec99 = shufflevector <16 x i8> %wide.vec95, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  store <4 x i8> %strided.vec96, ptr %i.fc, align 1, !tbaa !7, !alias.scope !184, !noalias !185
  %i.fd = getelementptr i8, ptr %i.fc, i64 %2
  store <4 x i8> %strided.vec97, ptr %i.fd, align 1, !tbaa !7, !alias.scope !186, !noalias !187
  %i.fe = getelementptr i8, ptr %i.fc, i64 %i.c
  store <4 x i8> %strided.vec98, ptr %i.fe, align 1, !tbaa !7, !alias.scope !188, !noalias !189
  %i.ff = getelementptr i8, ptr %i.fc, i64 %i.e
  store <4 x i8> %strided.vec99, ptr %i.ff, align 1, !tbaa !7, !alias.scope !190, !noalias !183
  %index.next100 = add nuw i64 %index94, 4        ; 2 uses
  %i.fg = icmp eq i64 %index.next100, %n.vec93
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !171

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n101 = icmp eq i64 %i.ex, 0
  br i1 %cmp.n101, label %._crit_edge.i, label %.preheader90.i.preheader

.preheader90.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08193.i.ph = phi i64 [ %i.dv, %iter.check ], [ %i.dv, %vector.memcheck ], [ %i.eo, %vec.epilog.iter.check ], [ %i.ey, %vec.epilog.middle.block ] ; 6 uses
  %i.fh = sub i64 %2, %.08193.i.ph
  %.neg = add i64 %.08193.i.ph, 1
  %xtraiter = and i64 %i.fh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader90.i.prol.loopexit, label %.preheader90.i.prol

.preheader90.i.prol:                              ; preds = %.preheader90.i.preheader
  %i.fi = shl nuw nsw i64 %.08193.i.ph, 2
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %i.fi ; 4 uses
  %invariant.gep.i.prol = getelementptr i8, ptr %3, i64 %.08193.i.ph ; 4 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !7
  store i8 %i.fk, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %2
  store i8 %i.fm, ptr %gep.1.i.prol, align 1, !tbaa !7
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.c
  store i8 %i.fo, ptr %gep.2.i.prol, align 1, !tbaa !7
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 3
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  store i8 %i.fq, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.fr = add nuw nsw i64 %.08193.i.ph, 1
  br label %.preheader90.i.prol.loopexit

.preheader90.i.prol.loopexit:                     ; preds = %.preheader90.i.prol, %.preheader90.i.preheader
  %.08193.i.unr = phi i64 [ %.08193.i.ph, %.preheader90.i.preheader ], [ %i.fr, %.preheader90.i.prol ]
  %i.fs = icmp eq i64 %2, %.neg
  br i1 %i.fs, label %._crit_edge.i, label %.preheader90.i

.preheader90.i:                                   ; preds = %.preheader90.i.prol.loopexit, %.preheader90.i
  %.08193.i = phi i64 [ %i.gm, %.preheader90.i ], [ %.08193.i.unr, %.preheader90.i.prol.loopexit ] ; 4 uses
  %i.ft = shl nuw nsw i64 %.08193.i, 2
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ft ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %3, i64 %.08193.i ; 4 uses
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !7
  store i8 %i.fv, ptr %invariant.gep.i, align 1, !tbaa !7
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %2
  store i8 %i.fx, ptr %gep.1.i, align 1, !tbaa !7
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 2
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.c
  store i8 %i.fz, ptr %gep.2.i, align 1, !tbaa !7
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  store i8 %i.gb, ptr %gep.3.i, align 1, !tbaa !7
  %i.gc = add nuw nsw i64 %.08193.i, 1            ; 2 uses
  %i.gd = shl nuw nsw i64 %i.gc, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.gd ; 4 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %3, i64 %i.gc ; 4 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !7
  store i8 %i.gf, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %2
  store i8 %i.gh, ptr %gep.1.i.1, align 1, !tbaa !7
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !7
  %gep.2.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.c
  store i8 %i.gj, ptr %gep.2.i.1, align 1, !tbaa !7
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 3
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !7
  %gep.3.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.e
  store i8 %i.gl, ptr %gep.3.i.1, align 1, !tbaa !7
  %i.gm = add nuw nsw i64 %.08193.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.gm, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.preheader90.i, !llvm.loop !172

._crit_edge.i:                                    ; preds = %.preheader90.i.prol.loopexit, %.preheader90.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.not.i = icmp eq i64 %i.du, 0
  br i1 %.not.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit, label %.preheader89.i

.preheader89.i:                                   ; preds = %._crit_edge.i, %.preheader89.i
  %.079100.i = phi i64 [ %i.hl, %.preheader89.i ], [ 0, %._crit_edge.i ] ; 6 uses
  %.idx.i = shl nuw nsw i64 %.079100.i, 7
  %.sroa.5.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 2 uses
  %4 = load <64 x i8>, ptr %.sroa.5.0..sroa_idx.i.a, align 1, !tbaa !7 ; 2 uses
  %.sroa.6123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.0..sroa_idx.i.a, i64 64
  %5 = load <64 x i8>, ptr %.sroa.6123.0..sroa_idx.i, align 1, !tbaa !7 ; 2 uses
  %i.gn = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 36, i32 40, i32 44, i32 1, i32 5, i32 9, i32 13, i32 33, i32 37, i32 41, i32 45, i32 16, i32 20, i32 24, i32 28, i32 48, i32 52, i32 56, i32 60, i32 17, i32 21, i32 25, i32 29, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %i.go = bitcast <32 x i8> %i.gn to <4 x i64>
  %i.gp = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 34, i32 38, i32 42, i32 46, i32 3, i32 7, i32 11, i32 15, i32 35, i32 39, i32 43, i32 47, i32 18, i32 22, i32 26, i32 30, i32 50, i32 54, i32 58, i32 62, i32 19, i32 23, i32 27, i32 31, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.gq = bitcast <32 x i8> %i.gp to <4 x i64>
  %i.gr = shufflevector <64 x i8> %5, <64 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 36, i32 40, i32 44, i32 1, i32 5, i32 9, i32 13, i32 33, i32 37, i32 41, i32 45, i32 16, i32 20, i32 24, i32 28, i32 48, i32 52, i32 56, i32 60, i32 17, i32 21, i32 25, i32 29, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %i.gs = bitcast <32 x i8> %i.gr to <4 x i64>
  %i.gt = shufflevector <64 x i8> %5, <64 x i8> poison, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 34, i32 38, i32 42, i32 46, i32 3, i32 7, i32 11, i32 15, i32 35, i32 39, i32 43, i32 47, i32 18, i32 22, i32 26, i32 30, i32 50, i32 54, i32 58, i32 62, i32 19, i32 23, i32 27, i32 31, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.gu = bitcast <32 x i8> %i.gt to <4 x i64>
  %i.gv = shufflevector <32 x i8> %i.gn, <32 x i8> %i.gr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gw = shufflevector <4 x i64> %i.go, <4 x i64> %i.gs, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.gx = shufflevector <32 x i8> %i.gp, <32 x i8> %i.gt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gy = shufflevector <4 x i64> %i.gq, <4 x i64> %i.gu, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.gz = bitcast <32 x i8> %i.gv to <8 x i32>    ; 2 uses
  %i.ha = bitcast <4 x i64> %i.gw to <8 x i32>    ; 2 uses
  %i.hb = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.hc = shufflevector <8 x i32> %i.gz, <8 x i32> %i.ha, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.hd = bitcast <32 x i8> %i.gx to <8 x i32>    ; 2 uses
  %i.he = bitcast <4 x i64> %i.gy to <8 x i32>    ; 2 uses
  %i.hf = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.hg = shufflevector <8 x i32> %i.hd, <8 x i32> %i.he, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.079100.i
  store <8 x i32> %i.hb, ptr %i.hh, align 1, !tbaa !7
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.079100.i
  store <8 x i32> %i.hc, ptr %i.hi, align 1, !tbaa !7
  %i.hj = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.079100.i
  store <8 x i32> %i.hf, ptr %i.hj, align 1, !tbaa !7
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.079100.i
  store <8 x i32> %i.hg, ptr %i.hk, align 1, !tbaa !7
  %i.hl = add nuw nsw i64 %.079100.i, 1           ; 2 uses
  %exitcond112.not.i = icmp eq i64 %i.hl, %i.du
  br i1 %exitcond112.not.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit, label %.preheader89.i, !llvm.loop !173

_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit: ; preds = %.preheader89.i, %.preheader96.preheader.i.i, %.preheader100.i.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  tail call void @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  %i.b = getelementptr inbounds i8, ptr %3, i64 %2 ; 2 uses
  %i.c = shl i64 %2, 1                            ; 11 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 2 uses
  %i.e = mul i64 %2, 3                            ; 11 uses
  %i.f = getelementptr inbounds i8, ptr %3, i64 %i.e ; 2 uses
  %i.g = shl i64 %2, 2                            ; 11 uses
  %i.h = getelementptr inbounds i8, ptr %3, i64 %i.g ; 2 uses
  %i.i = mul i64 %2, 5                            ; 11 uses
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i ; 2 uses
  %i.k = mul i64 %2, 6                            ; 11 uses
  %i.l = getelementptr inbounds i8, ptr %3, i64 %i.k ; 2 uses
  %i.m = mul i64 %2, 7                            ; 11 uses
  %i.n = getelementptr inbounds i8, ptr %3, i64 %i.m ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sdiv i64 %2, 16                          ; 4 uses
  %i.p = shl nsw i64 %i.o, 4                      ; 18 uses
  %i.q = icmp slt i64 %i.p, %2
  br i1 %i.q, label %iter.check775, label %.preheader100.i

iter.check775:                                    ; preds = %bb.b
  %i.r = sub i64 %2, %i.p                         ; 6 uses
  %min.iters.check620 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check620, label %.preheader101.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check775
  %i.s = xor i64 %i.p, -1
  %i.t = add i64 %2, %i.s                         ; 2 uses
  %i.u = shl i64 %i.o, 7                          ; 8 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.u   ; 2 uses
  %mul.result = shl i64 %i.t, 3                   ; 8 uses
  %mul.overflow = icmp ugt i64 %i.t, 2305843009213693951
  %i.v = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep
  %i.x = getelementptr i8, ptr %0, i64 %i.u
  %scevgep451 = getelementptr i8, ptr %i.x, i64 1 ; 2 uses
  %i.y = getelementptr i8, ptr %scevgep451, i64 %mul.result
  %i.z = icmp ult ptr %i.y, %scevgep451
  %i.aa = getelementptr i8, ptr %0, i64 %i.u
  %scevgep452 = getelementptr i8, ptr %i.aa, i64 2 ; 2 uses
  %i.ab = getelementptr i8, ptr %scevgep452, i64 %mul.result
  %i.ac = icmp ult ptr %i.ab, %scevgep452
  %i.ad = or i1 %i.ac, %mul.overflow
  %i.ae = getelementptr i8, ptr %0, i64 %i.u
  %scevgep453 = getelementptr i8, ptr %i.ae, i64 3 ; 2 uses
  %i.af = getelementptr i8, ptr %scevgep453, i64 %mul.result
  %i.ag = icmp ult ptr %i.af, %scevgep453
  %i.ah = getelementptr i8, ptr %0, i64 %i.u
  %scevgep454 = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ai = getelementptr i8, ptr %scevgep454, i64 %mul.result
  %i.aj = icmp ult ptr %i.ai, %scevgep454
  %i.ak = getelementptr i8, ptr %0, i64 %i.u
  %scevgep455 = getelementptr i8, ptr %i.ak, i64 5 ; 2 uses
  %i.al = getelementptr i8, ptr %scevgep455, i64 %mul.result
  %i.am = icmp ult ptr %i.al, %scevgep455
  %i.an = getelementptr i8, ptr %0, i64 %i.u
  %scevgep456 = getelementptr i8, ptr %i.an, i64 6 ; 2 uses
  %i.ao = getelementptr i8, ptr %scevgep456, i64 %mul.result
  %i.ap = icmp ult ptr %i.ao, %scevgep456
  %i.aq = getelementptr i8, ptr %0, i64 %i.u
  %scevgep457 = getelementptr i8, ptr %i.aq, i64 7 ; 2 uses
  %i.ar = getelementptr i8, ptr %scevgep457, i64 %mul.result
  %i.as = icmp ult ptr %i.ar, %scevgep457
  %i.at = or i1 %i.z, %i.w
  %i.au = or i1 %i.at, %i.ad
  %i.av = or i1 %i.ag, %i.au
  %i.aw = or i1 %i.aj, %i.av
  %i.ax = or i1 %i.am, %i.aw
  %i.ay = or i1 %i.ap, %i.ax
  %i.az = or i1 %i.as, %i.ay
  br i1 %i.az, label %.preheader101.i.preheader, label %vector.memcheck621

vector.memcheck621:                               ; preds = %vector.scevcheck
  %i.ba = getelementptr i8, ptr %3, i64 %i.p      ; 8 uses
  %i.bb = getelementptr i8, ptr %3, i64 %2        ; 8 uses
  %i.bc = getelementptr i8, ptr %3, i64 %2
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.p   ; 8 uses
  %i.be = getelementptr i8, ptr %3, i64 %i.c      ; 8 uses
  %i.bf = getelementptr i8, ptr %3, i64 %i.p
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.c   ; 8 uses
  %i.bh = getelementptr i8, ptr %3, i64 %i.e      ; 8 uses
  %i.bi = getelementptr i8, ptr %3, i64 %i.p
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.e   ; 8 uses
  %i.bk = getelementptr i8, ptr %3, i64 %i.g      ; 8 uses
  %i.bl = getelementptr i8, ptr %3, i64 %i.p
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.g   ; 8 uses
  %i.bn = getelementptr i8, ptr %3, i64 %i.i      ; 8 uses
  %i.bo = getelementptr i8, ptr %3, i64 %i.p
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.i   ; 8 uses
  %i.bq = getelementptr i8, ptr %3, i64 %i.k      ; 8 uses
  %i.br = getelementptr i8, ptr %3, i64 %i.p
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.k   ; 8 uses
  %i.bt = getelementptr i8, ptr %3, i64 %i.m      ; 8 uses
  %i.bu = getelementptr i8, ptr %3, i64 %i.p
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.m   ; 8 uses
  %i.bw = shl i64 %2, 3                           ; 2 uses
  %i.bx = getelementptr i8, ptr %3, i64 %i.bw     ; 8 uses
  %i.by = shl i64 %i.o, 7
  %i.bz = getelementptr i8, ptr %0, i64 %i.by     ; 8 uses
  %i.ca = getelementptr i8, ptr %0, i64 %i.bw     ; 8 uses
  %bound0622 = icmp ult ptr %i.ba, %i.be
  %bound1623 = icmp ult ptr %i.bd, %i.bb
  %found.conflict624 = and i1 %bound0622, %bound1623
  %bound0625 = icmp ult ptr %i.ba, %i.bh
  %bound1626 = icmp ult ptr %i.bg, %i.bb
  %found.conflict627 = and i1 %bound0625, %bound1626
  %conflict.rdx628 = or i1 %found.conflict624, %found.conflict627
  %bound0629 = icmp ult ptr %i.ba, %i.bk
  %bound1630 = icmp ult ptr %i.bj, %i.bb
  %found.conflict631 = and i1 %bound0629, %bound1630
  %conflict.rdx632 = or i1 %conflict.rdx628, %found.conflict631
  %bound0633 = icmp ult ptr %i.ba, %i.bn
  %bound1634 = icmp ult ptr %i.bm, %i.bb
  %found.conflict635 = and i1 %bound0633, %bound1634
  %conflict.rdx636 = or i1 %conflict.rdx632, %found.conflict635
  %bound0637 = icmp ult ptr %i.ba, %i.bq
  %bound1638 = icmp ult ptr %i.bp, %i.bb
  %found.conflict639 = and i1 %bound0637, %bound1638
  %conflict.rdx640 = or i1 %conflict.rdx636, %found.conflict639
  %bound0641 = icmp ult ptr %i.ba, %i.bt
  %bound1642 = icmp ult ptr %i.bs, %i.bb
  %found.conflict643 = and i1 %bound0641, %bound1642
  %conflict.rdx644 = or i1 %conflict.rdx640, %found.conflict643
  %bound0645 = icmp ult ptr %i.ba, %i.bx
  %bound1646 = icmp ult ptr %i.bv, %i.bb
  %found.conflict647 = and i1 %bound0645, %bound1646
  %conflict.rdx648 = or i1 %conflict.rdx644, %found.conflict647
  %bound0649 = icmp ult ptr %i.ba, %i.ca
  %bound1650 = icmp ult ptr %i.bz, %i.bb
  %found.conflict651 = and i1 %bound0649, %bound1650
  %conflict.rdx652 = or i1 %conflict.rdx648, %found.conflict651
  %bound0653 = icmp ult ptr %i.bd, %i.bh
  %bound1654 = icmp ult ptr %i.bg, %i.be
  %found.conflict655 = and i1 %bound0653, %bound1654
  %conflict.rdx656 = or i1 %conflict.rdx652, %found.conflict655
  %bound0657 = icmp ult ptr %i.bd, %i.bk
  %bound1658 = icmp ult ptr %i.bj, %i.be
  %found.conflict659 = and i1 %bound0657, %bound1658
  %conflict.rdx660 = or i1 %conflict.rdx656, %found.conflict659
  %bound0661 = icmp ult ptr %i.bd, %i.bn
  %bound1662 = icmp ult ptr %i.bm, %i.be
  %found.conflict663 = and i1 %bound0661, %bound1662
  %conflict.rdx664 = or i1 %conflict.rdx660, %found.conflict663
  %bound0665 = icmp ult ptr %i.bd, %i.bq
  %bound1666 = icmp ult ptr %i.bp, %i.be
  %found.conflict667 = and i1 %bound0665, %bound1666
  %conflict.rdx668 = or i1 %conflict.rdx664, %found.conflict667
  %bound0669 = icmp ult ptr %i.bd, %i.bt
  %bound1670 = icmp ult ptr %i.bs, %i.be
  %found.conflict671 = and i1 %bound0669, %bound1670
  %conflict.rdx672 = or i1 %conflict.rdx668, %found.conflict671
  %bound0673 = icmp ult ptr %i.bd, %i.bx
  %bound1674 = icmp ult ptr %i.bv, %i.be
  %found.conflict675 = and i1 %bound0673, %bound1674
  %conflict.rdx676 = or i1 %conflict.rdx672, %found.conflict675
  %bound0677 = icmp ult ptr %i.bd, %i.ca
  %bound1678 = icmp ult ptr %i.bz, %i.be
  %found.conflict679 = and i1 %bound0677, %bound1678
  %conflict.rdx680 = or i1 %conflict.rdx676, %found.conflict679
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh:bb.a
  %i.cup = getelementptr i8, ptr %i.ckw, i64 69
  %i.cuq = getelementptr i8, ptr %i.cky, i64 77
  %i.cur = getelementptr i8, ptr %i.cla, i64 85
  %i.cus = getelementptr i8, ptr %i.clc, i64 93
  %i.cut = getelementptr i8, ptr %i.cle, i64 101
  %i.cuu = getelementptr i8, ptr %i.clg, i64 109
  %i.cuv = getelementptr i8, ptr %i.cli, i64 117
  %i.cuw = getelementptr i8, ptr %i.clk, i64 125
  %i.cux = load i8, ptr %i.cuh, align 1, !tbaa !7, !alias.scope !236
  %i.cuy = load i8, ptr %i.cui, align 1, !tbaa !7, !alias.scope !236
  %i.cuz = load i8, ptr %i.cuj, align 1, !tbaa !7, !alias.scope !236
  %i.cva = load i8, ptr %i.cuk, align 1, !tbaa !7, !alias.scope !236
  %i.cvb = load i8, ptr %i.cul, align 1, !tbaa !7, !alias.scope !236
  %i.cvc = load i8, ptr %i.cum, align 1, !tbaa !7, !alias.scope !236
  %i.cvd = load i8, ptr %i.cun, align 1, !tbaa !7, !alias.scope !236
  %i.cve = load i8, ptr %i.cuo, align 1, !tbaa !7, !alias.scope !236
  %i.cvf = load i8, ptr %i.cup, align 1, !tbaa !7, !alias.scope !236
  %i.cvg = load i8, ptr %i.cuq, align 1, !tbaa !7, !alias.scope !236
  %i.cvh = load i8, ptr %i.cur, align 1, !tbaa !7, !alias.scope !236
  %i.cvi = load i8, ptr %i.cus, align 1, !tbaa !7, !alias.scope !236
  %i.cvj = load i8, ptr %i.cut, align 1, !tbaa !7, !alias.scope !236
  %i.cvk = load i8, ptr %i.cuu, align 1, !tbaa !7, !alias.scope !236
  %i.cvl = load i8, ptr %i.cuv, align 1, !tbaa !7, !alias.scope !236
  %i.cvm = load i8, ptr %i.cuw, align 1, !tbaa !7, !alias.scope !236
  %i.cvn = insertelement <16 x i8> poison, i8 %i.cux, i64 0
  %i.cvo = insertelement <16 x i8> %i.cvn, i8 %i.cuy, i64 1
  %i.cvp = insertelement <16 x i8> %i.cvo, i8 %i.cuz, i64 2
  %i.cvq = insertelement <16 x i8> %i.cvp, i8 %i.cva, i64 3
  %i.cvr = insertelement <16 x i8> %i.cvq, i8 %i.cvb, i64 4
  %i.cvs = insertelement <16 x i8> %i.cvr, i8 %i.cvc, i64 5
  %i.cvt = insertelement <16 x i8> %i.cvs, i8 %i.cvd, i64 6
  %i.cvu = insertelement <16 x i8> %i.cvt, i8 %i.cve, i64 7
  %i.cvv = insertelement <16 x i8> %i.cvu, i8 %i.cvf, i64 8
  %i.cvw = insertelement <16 x i8> %i.cvv, i8 %i.cvg, i64 9
  %i.cvx = insertelement <16 x i8> %i.cvw, i8 %i.cvh, i64 10
  %i.cvy = insertelement <16 x i8> %i.cvx, i8 %i.cvi, i64 11
  %i.cvz = insertelement <16 x i8> %i.cvy, i8 %i.cvj, i64 12
  %i.cwa = insertelement <16 x i8> %i.cvz, i8 %i.cvk, i64 13
  %i.cwb = insertelement <16 x i8> %i.cwa, i8 %i.cvl, i64 14
  %i.cwc = insertelement <16 x i8> %i.cwb, i8 %i.cvm, i64 15
  %i.cwd = getelementptr i8, ptr %i.clm, i64 %i.i
  store <16 x i8> %i.cwc, ptr %i.cwd, align 1, !tbaa !7, !alias.scope !247, !noalias !248
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.ckh, i64 6
  %i.cwf = getelementptr i8, ptr %i.cki, i64 14
  %i.cwg = getelementptr i8, ptr %i.ckk, i64 22
  %i.cwh = getelementptr i8, ptr %i.ckm, i64 30
  %i.cwi = getelementptr i8, ptr %i.cko, i64 38
  %i.cwj = getelementptr i8, ptr %i.ckq, i64 46
  %i.cwk = getelementptr i8, ptr %i.cks, i64 54
  %i.cwl = getelementptr i8, ptr %i.cku, i64 62
  %i.cwm = getelementptr i8, ptr %i.ckw, i64 70
  %i.cwn = getelementptr i8, ptr %i.cky, i64 78
  %i.cwo = getelementptr i8, ptr %i.cla, i64 86
  %i.cwp = getelementptr i8, ptr %i.clc, i64 94
  %i.cwq = getelementptr i8, ptr %i.cle, i64 102
  %i.cwr = getelementptr i8, ptr %i.clg, i64 110
  %i.cws = getelementptr i8, ptr %i.cli, i64 118
  %i.cwt = getelementptr i8, ptr %i.clk, i64 126
  %i.cwu = load i8, ptr %i.cwe, align 1, !tbaa !7, !alias.scope !236
  %i.cwv = load i8, ptr %i.cwf, align 1, !tbaa !7, !alias.scope !236
  %i.cww = load i8, ptr %i.cwg, align 1, !tbaa !7, !alias.scope !236
  %i.cwx = load i8, ptr %i.cwh, align 1, !tbaa !7, !alias.scope !236
  %i.cwy = load i8, ptr %i.cwi, align 1, !tbaa !7, !alias.scope !236
  %i.cwz = load i8, ptr %i.cwj, align 1, !tbaa !7, !alias.scope !236
  %i.cxa = load i8, ptr %i.cwk, align 1, !tbaa !7, !alias.scope !236
  %i.cxb = load i8, ptr %i.cwl, align 1, !tbaa !7, !alias.scope !236
  %i.cxc = load i8, ptr %i.cwm, align 1, !tbaa !7, !alias.scope !236
  %i.cxd = load i8, ptr %i.cwn, align 1, !tbaa !7, !alias.scope !236
  %i.cxe = load i8, ptr %i.cwo, align 1, !tbaa !7, !alias.scope !236
  %i.cxf = load i8, ptr %i.cwp, align 1, !tbaa !7, !alias.scope !236
  %i.cxg = load i8, ptr %i.cwq, align 1, !tbaa !7, !alias.scope !236
  %i.cxh = load i8, ptr %i.cwr, align 1, !tbaa !7, !alias.scope !236
  %i.cxi = load i8, ptr %i.cws, align 1, !tbaa !7, !alias.scope !236
  %i.cxj = load i8, ptr %i.cwt, align 1, !tbaa !7, !alias.scope !236
  %i.cxk = insertelement <16 x i8> poison, i8 %i.cwu, i64 0
  %i.cxl = insertelement <16 x i8> %i.cxk, i8 %i.cwv, i64 1
  %i.cxm = insertelement <16 x i8> %i.cxl, i8 %i.cww, i64 2
  %i.cxn = insertelement <16 x i8> %i.cxm, i8 %i.cwx, i64 3
  %i.cxo = insertelement <16 x i8> %i.cxn, i8 %i.cwy, i64 4
  %i.cxp = insertelement <16 x i8> %i.cxo, i8 %i.cwz, i64 5
  %i.cxq = insertelement <16 x i8> %i.cxp, i8 %i.cxa, i64 6
  %i.cxr = insertelement <16 x i8> %i.cxq, i8 %i.cxb, i64 7
  %i.cxs = insertelement <16 x i8> %i.cxr, i8 %i.cxc, i64 8
  %i.cxt = insertelement <16 x i8> %i.cxs, i8 %i.cxd, i64 9
  %i.cxu = insertelement <16 x i8> %i.cxt, i8 %i.cxe, i64 10
  %i.cxv = insertelement <16 x i8> %i.cxu, i8 %i.cxf, i64 11
  %i.cxw = insertelement <16 x i8> %i.cxv, i8 %i.cxg, i64 12
  %i.cxx = insertelement <16 x i8> %i.cxw, i8 %i.cxh, i64 13
  %i.cxy = insertelement <16 x i8> %i.cxx, i8 %i.cxi, i64 14
  %i.cxz = insertelement <16 x i8> %i.cxy, i8 %i.cxj, i64 15
  %i.cya = getelementptr i8, ptr %i.clm, i64 %i.k
  store <16 x i8> %i.cxz, ptr %i.cya, align 1, !tbaa !7, !alias.scope !249, !noalias !250
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.ckh, i64 7
  %i.cyc = getelementptr i8, ptr %i.cki, i64 15
  %i.cyd = getelementptr i8, ptr %i.ckk, i64 23
  %i.cye = getelementptr i8, ptr %i.ckm, i64 31
  %i.cyf = getelementptr i8, ptr %i.cko, i64 39
  %i.cyg = getelementptr i8, ptr %i.ckq, i64 47
  %i.cyh = getelementptr i8, ptr %i.cks, i64 55
  %i.cyi = getelementptr i8, ptr %i.cku, i64 63
  %i.cyj = getelementptr i8, ptr %i.ckw, i64 71
  %i.cyk = getelementptr i8, ptr %i.cky, i64 79
  %i.cyl = getelementptr i8, ptr %i.cla, i64 87
  %i.cym = getelementptr i8, ptr %i.clc, i64 95
  %i.cyn = getelementptr i8, ptr %i.cle, i64 103
  %i.cyo = getelementptr i8, ptr %i.clg, i64 111
  %i.cyp = getelementptr i8, ptr %i.cli, i64 119
  %i.cyq = getelementptr i8, ptr %i.clk, i64 127
  %i.cyr = load i8, ptr %i.cyb, align 1, !tbaa !7, !alias.scope !236
  %i.cys = load i8, ptr %i.cyc, align 1, !tbaa !7, !alias.scope !236
  %i.cyt = load i8, ptr %i.cyd, align 1, !tbaa !7, !alias.scope !236
  %i.cyu = load i8, ptr %i.cye, align 1, !tbaa !7, !alias.scope !236
  %i.cyv = load i8, ptr %i.cyf, align 1, !tbaa !7, !alias.scope !236
  %i.cyw = load i8, ptr %i.cyg, align 1, !tbaa !7, !alias.scope !236
  %i.cyx = load i8, ptr %i.cyh, align 1, !tbaa !7, !alias.scope !236
  %i.cyy = load i8, ptr %i.cyi, align 1, !tbaa !7, !alias.scope !236
  %i.cyz = load i8, ptr %i.cyj, align 1, !tbaa !7, !alias.scope !236
  %i.cza = load i8, ptr %i.cyk, align 1, !tbaa !7, !alias.scope !236
  %i.czb = load i8, ptr %i.cyl, align 1, !tbaa !7, !alias.scope !236
  %i.czc = load i8, ptr %i.cym, align 1, !tbaa !7, !alias.scope !236
  %i.czd = load i8, ptr %i.cyn, align 1, !tbaa !7, !alias.scope !236
  %i.cze = load i8, ptr %i.cyo, align 1, !tbaa !7, !alias.scope !236
  %i.czf = load i8, ptr %i.cyp, align 1, !tbaa !7, !alias.scope !236
  %i.czg = load i8, ptr %i.cyq, align 1, !tbaa !7, !alias.scope !236
  %i.czh = insertelement <16 x i8> poison, i8 %i.cyr, i64 0
  %i.czi = insertelement <16 x i8> %i.czh, i8 %i.cys, i64 1
  %i.czj = insertelement <16 x i8> %i.czi, i8 %i.cyt, i64 2
  %i.czk = insertelement <16 x i8> %i.czj, i8 %i.cyu, i64 3
  %i.czl = insertelement <16 x i8> %i.czk, i8 %i.cyv, i64 4
  %i.czm = insertelement <16 x i8> %i.czl, i8 %i.cyw, i64 5
  %i.czn = insertelement <16 x i8> %i.czm, i8 %i.cyx, i64 6
  %i.czo = insertelement <16 x i8> %i.czn, i8 %i.cyy, i64 7
  %i.czp = insertelement <16 x i8> %i.czo, i8 %i.cyz, i64 8
  %i.czq = insertelement <16 x i8> %i.czp, i8 %i.cza, i64 9
  %i.czr = insertelement <16 x i8> %i.czq, i8 %i.czb, i64 10
  %i.czs = insertelement <16 x i8> %i.czr, i8 %i.czc, i64 11
  %i.czt = insertelement <16 x i8> %i.czs, i8 %i.czd, i64 12
  %i.czu = insertelement <16 x i8> %i.czt, i8 %i.cze, i64 13
  %i.czv = insertelement <16 x i8> %i.czu, i8 %i.czf, i64 14
  %i.czw = insertelement <16 x i8> %i.czv, i8 %i.czg, i64 15
  %i.czx = getelementptr i8, ptr %i.clm, i64 %i.m
  store <16 x i8> %i.czw, ptr %i.czx, align 1, !tbaa !7, !alias.scope !251, !noalias !236
  %index.next448 = add nuw i64 %index447, 16      ; 2 uses
  %i.czy = icmp eq i64 %index.next448, %n.vec446
  br i1 %i.czy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !216

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n449 = icmp eq i64 %i.cjo, 0
  br i1 %cmp.n449, label %.preheader102, label %.preheader103.preheader

.preheader103.preheader:                          ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.080106.ph = phi i64 [ %i.bbz, %iter.check ], [ %i.bbz, %vector.memcheck ], [ %i.bde, %vec.epilog.iter.check ], [ %i.cjp, %vec.epilog.middle.block ]
  br label %.preheader103

.preheader103:                                    ; preds = %.preheader103.preheader, %.preheader103
  %.080106 = phi i64 [ %i.daq, %.preheader103 ], [ %.080106.ph, %.preheader103.preheader ] ; 3 uses
  %i.czz = shl nuw nsw i64 %.080106, 3
  %i.daa = getelementptr inbounds nuw i8, ptr %0, i64 %i.czz ; 8 uses
  %invariant.gep = getelementptr i8, ptr %3, i64 %.080106 ; 8 uses
  %i.dab = load i8, ptr %i.daa, align 1, !tbaa !7
  store i8 %i.dab, ptr %invariant.gep, align 1, !tbaa !7
  %i.dac = getelementptr inbounds nuw i8, ptr %i.daa, i64 1
  %i.dad = load i8, ptr %i.dac, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %2
  store i8 %i.dad, ptr %gep.1, align 1, !tbaa !7
  %i.dae = getelementptr inbounds nuw i8, ptr %i.daa, i64 2
  %i.daf = load i8, ptr %i.dae, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.c
  store i8 %i.daf, ptr %gep.2, align 1, !tbaa !7
  %i.dag = getelementptr inbounds nuw i8, ptr %i.daa, i64 3
  %i.dah = load i8, ptr %i.dag, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.e
  store i8 %i.dah, ptr %gep.3, align 1, !tbaa !7
  %i.dai = getelementptr inbounds nuw i8, ptr %i.daa, i64 4
  %i.daj = load i8, ptr %i.dai, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.g
  store i8 %i.daj, ptr %gep.4, align 1, !tbaa !7
  %i.dak = getelementptr inbounds nuw i8, ptr %i.daa, i64 5
  %i.dal = load i8, ptr %i.dak, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.i
  store i8 %i.dal, ptr %gep.5, align 1, !tbaa !7
  %i.dam = getelementptr inbounds nuw i8, ptr %i.daa, i64 6
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.k
  store i8 %i.dan, ptr %gep.6, align 1, !tbaa !7
  %i.dao = getelementptr inbounds nuw i8, ptr %i.daa, i64 7
  %i.dap = load i8, ptr %i.dao, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.m
  store i8 %i.dap, ptr %gep.7, align 1, !tbaa !7
  %i.daq = add nuw nsw i64 %.080106, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.daq, %2
  br i1 %exitcond.not, label %.preheader102, label %.preheader103, !llvm.loop !217

.preheader102:                                    ; preds = %.preheader103, %middle.block, %vec.epilog.middle.block, %bb.c
  %.not = icmp eq i64 %i.bby, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader98.preheader

.preheader98.preheader:                           ; preds = %.preheader102, %.preheader98.preheader
  %.078113 = phi i64 [ %i.dfn, %.preheader98.preheader ], [ 0, %.preheader102 ] ; 3 uses
  %i.dar = shl nuw i64 %.078113, 8
  %.sroa.7.0..sroa_idx.a = getelementptr i8, ptr %0, i64 %i.dar ; 4 uses
  %4 = load <64 x i8>, ptr %.sroa.7.0..sroa_idx.a, align 1 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.a, i64 64
  %5 = load <64 x i8>, ptr %.sroa.8.0..sroa_idx, align 1 ; 2 uses
  %.sroa.9.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.a, i64 128
  %6 = load <64 x i8>, ptr %.sroa.9.0..sroa_idx.a, align 1 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0..sroa_idx.a, i64 192
  %7 = load <64 x i8>, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %i.das = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dat = shufflevector <64 x i8> %4, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dau = shufflevector <32 x i8> %i.das, <32 x i8> %i.dat, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dav = bitcast <32 x i8> %i.das to <8 x i32>
  %i.daw = bitcast <32 x i8> %i.dat to <8 x i32>
  %i.dax = shufflevector <8 x i32> %i.dav, <8 x i32> %i.daw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.day = bitcast <8 x i32> %i.dax to <32 x i8>  ; 2 uses
  %i.daz = shufflevector <32 x i8> %i.dau, <32 x i8> %i.day, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dba = shufflevector <32 x i8> %i.dau, <32 x i8> %i.day, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbb = shufflevector <32 x i8> %i.daz, <32 x i8> %i.dba, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbc = bitcast <32 x i8> %i.daz to <8 x i32>
  %i.dbd = bitcast <32 x i8> %i.dba to <8 x i32>
  %i.dbe = shufflevector <8 x i32> %i.dbc, <8 x i32> %i.dbd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbf = bitcast <8 x i32> %i.dbe to <32 x i8>  ; 2 uses
  %i.dbg = shufflevector <32 x i8> %i.dbb, <32 x i8> %i.dbf, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dbh = shufflevector <32 x i8> %i.dbb, <32 x i8> %i.dbf, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 4 uses
  %i.dbi = shufflevector <32 x i8> %i.dbg, <32 x i8> %i.dbh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbj = bitcast <32 x i8> %i.dbg to <8 x i32>
  %i.dbk = bitcast <32 x i8> %i.dbh to <8 x i32>
  %i.dbl = shufflevector <8 x i32> %i.dbj, <8 x i32> %i.dbk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dbm = shufflevector <64 x i8> %5, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbn = shufflevector <64 x i8> %5, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbo = shufflevector <32 x i8> %i.dbm, <32 x i8> %i.dbn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbp = bitcast <32 x i8> %i.dbm to <8 x i32>
  %i.dbq = bitcast <32 x i8> %i.dbn to <8 x i32>
  %i.dbr = shufflevector <8 x i32> %i.dbp, <8 x i32> %i.dbq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbs = bitcast <8 x i32> %i.dbr to <32 x i8>  ; 2 uses
  %i.dbt = shufflevector <32 x i8> %i.dbo, <32 x i8> %i.dbs, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbu = shufflevector <32 x i8> %i.dbo, <32 x i8> %i.dbs, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbv = shufflevector <32 x i8> %i.dbt, <32 x i8> %i.dbu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbw = bitcast <32 x i8> %i.dbt to <8 x i32>
  %i.dbx = bitcast <32 x i8> %i.dbu to <8 x i32>
  %i.dby = shufflevector <8 x i32> %i.dbw, <8 x i32> %i.dbx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbz = bitcast <8 x i32> %i.dby to <32 x i8>  ; 2 uses
  %i.dca = shufflevector <32 x i8> %i.dbv, <32 x i8> %i.dbz, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dcb = shufflevector <32 x i8> %i.dbv, <32 x i8> %i.dbz, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 4 uses
  %i.dcc = shufflevector <32 x i8> %i.dca, <32 x i8> %i.dcb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcd = bitcast <32 x i8> %i.dca to <8 x i32>
  %i.dce = bitcast <32 x i8> %i.dcb to <8 x i32>
  %i.dcf = shufflevector <8 x i32> %i.dcd, <8 x i32> %i.dce, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dcg = shufflevector <64 x i8> %6, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dch = shufflevector <64 x i8> %6, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dci = shufflevector <32 x i8> %i.dcg, <32 x i8> %i.dch, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcj = bitcast <32 x i8> %i.dcg to <8 x i32>
  %i.dck = bitcast <32 x i8> %i.dch to <8 x i32>
  %i.dcl = shufflevector <8 x i32> %i.dcj, <8 x i32> %i.dck, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dcm = bitcast <8 x i32> %i.dcl to <32 x i8>  ; 2 uses
  %i.dcn = shufflevector <32 x i8> %i.dci, <32 x i8> %i.dcm, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dco = shufflevector <32 x i8> %i.dci, <32 x i8> %i.dcm, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dcp = shufflevector <32 x i8> %i.dcn, <32 x i8> %i.dco, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcq = bitcast <32 x i8> %i.dcn to <8 x i32>
  %i.dcr = bitcast <32 x i8> %i.dco to <8 x i32>
  %i.dcs = shufflevector <8 x i32> %i.dcq, <8 x i32> %i.dcr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dct = bitcast <8 x i32> %i.dcs to <32 x i8>  ; 2 uses
  %i.dcu = shufflevector <32 x i8> %i.dcp, <32 x i8> %i.dct, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dcv = shufflevector <32 x i8> %i.dcp, <32 x i8> %i.dct, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 4 uses
  %i.dcw = shufflevector <32 x i8> %i.dcu, <32 x i8> %i.dcv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcx = bitcast <32 x i8> %i.dcu to <8 x i32>
  %i.dcy = bitcast <32 x i8> %i.dcv to <8 x i32>
  %i.dcz = shufflevector <8 x i32> %i.dcx, <8 x i32> %i.dcy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dda = shufflevector <64 x i8> %7, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddb = shufflevector <64 x i8> %7, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddc = shufflevector <32 x i8> %i.dda, <32 x i8> %i.ddb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddd = bitcast <32 x i8> %i.dda to <8 x i32>
  %i.dde = bitcast <32 x i8> %i.ddb to <8 x i32>
  %i.ddf = shufflevector <8 x i32> %i.ddd, <8 x i32> %i.dde, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ddg = bitcast <8 x i32> %i.ddf to <32 x i8>  ; 2 uses
  %i.ddh = shufflevector <32 x i8> %i.ddc, <32 x i8> %i.ddg, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddi = shufflevector <32 x i8> %i.ddc, <32 x i8> %i.ddg, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddj = shufflevector <32 x i8> %i.ddh, <32 x i8> %i.ddi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddk = bitcast <32 x i8> %i.ddh to <8 x i32>
  %i.ddl = bitcast <32 x i8> %i.ddi to <8 x i32>
  %i.ddm = shufflevector <8 x i32> %i.ddk, <8 x i32> %i.ddl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ddn = bitcast <8 x i32> %i.ddm to <32 x i8>  ; 2 uses
  %i.ddo = shufflevector <32 x i8> %i.ddj, <32 x i8> %i.ddn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.ddp = shufflevector <32 x i8> %i.ddj, <32 x i8> %i.ddn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 4 uses
  %i.ddq = shufflevector <32 x i8> %i.ddo, <32 x i8> %i.ddp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddr = bitcast <32 x i8> %i.ddo to <8 x i32>
  %i.dds = bitcast <32 x i8> %i.ddp to <8 x i32>
  %i.ddt = shufflevector <8 x i32> %i.ddr, <8 x i32> %i.dds, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ddu = shufflevector <32 x i8> %i.dbg, <32 x i8> %i.dcu, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ddv = bitcast <32 x i8> %i.ddu to <4 x i64>
  %i.ddw = shufflevector <32 x i8> %i.dbi, <32 x i8> %i.dcw, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.ddx = bitcast <32 x i8> %i.ddw to <4 x i64>
  %i.ddy = shufflevector <32 x i8> %i.dbi, <32 x i8> %i.dcw, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ddz = bitcast <32 x i8> %i.ddy to <4 x i64>
  %i.dea = shufflevector <8 x i32> %i.dbl, <8 x i32> %i.dcz, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.deb = bitcast <4 x i32> %i.dea to <2 x i64>
  %i.dec = shufflevector <32 x i8> %i.dbh, <32 x i8> %i.dcv, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.ded = bitcast <32 x i8> %i.dec to <8 x i32>
  %i.dee = shufflevector <32 x i8> %i.dbh, <32 x i8> %i.dcv, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.def = bitcast <32 x i8> %i.dee to <8 x i32>
  %i.deg = shufflevector <32 x i8> %i.dca, <32 x i8> %i.ddo, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.deh = bitcast <32 x i8> %i.deg to <4 x i64>
  %i.dei = shufflevector <32 x i8> %i.dcc, <32 x i8> %i.ddq, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dej = bitcast <32 x i8> %i.dei to <4 x i64>
  %i.dek = shufflevector <32 x i8> %i.dcc, <32 x i8> %i.ddq, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.del = bitcast <32 x i8> %i.dek to <4 x i64>
  %i.dem = shufflevector <8 x i32> %i.dcf, <8 x i32> %i.ddt, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.den = bitcast <4 x i32> %i.dem to <2 x i64>
  %i.deo = shufflevector <32 x i8> %i.dcb, <32 x i8> %i.ddp, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dep = bitcast <32 x i8> %i.deo to <8 x i32>
  %i.deq = shufflevector <32 x i8> %i.dcb, <32 x i8> %i.ddp, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.der = bitcast <32 x i8> %i.deq to <8 x i32>
  %i.des = shufflevector <32 x i8> %i.dbg, <32 x i8> %i.dca, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.det = shufflevector <32 x i8> %i.dcu, <32 x i8> %i.ddo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.deu = shufflevector <32 x i8> %i.des, <32 x i8> %i.det, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.dev = shufflevector <4 x i64> %i.ddv, <4 x i64> %i.deh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dew = shufflevector <4 x i64> %i.ddx, <4 x i64> %i.dej, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dex = shufflevector <4 x i64> %i.ddz, <4 x i64> %i.del, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.dey = shufflevector <8 x i32> %i.dbl, <8 x i32> %i.dcf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dez = shufflevector <8 x i32> %i.dcz, <8 x i32> %i.ddt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfa = shufflevector <8 x i32> %i.dey, <8 x i32> %i.dez, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dfb = shufflevector <2 x i64> %i.deb, <2 x i64> %i.den, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dfc = shufflevector <8 x i32> %i.ded, <8 x i32> %i.dep, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.dfd = shufflevector <8 x i32> %i.def, <8 x i32> %i.der, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.dfe = shl nuw nsw i64 %.078113, 5            ; 8 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %3, i64 %i.dfe
  store <32 x i8> %i.deu, ptr %i.dff, align 1, !tbaa !7
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dfe
  store <4 x i64> %i.dev, ptr %i.dfg, align 1, !tbaa !7
  %i.dfh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dfe
  store <4 x i64> %i.dew, ptr %i.dfh, align 1, !tbaa !7
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dfe
  store <4 x i64> %i.dex, ptr %i.dfi, align 1, !tbaa !7
  %i.dfj = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dfe
  store <8 x i32> %i.dfa, ptr %i.dfj, align 1, !tbaa !7
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dfe
  store <4 x i64> %i.dfb, ptr %i.dfk, align 1, !tbaa !7
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dfe
  store <8 x i32> %i.dfc, ptr %i.dfl, align 1, !tbaa !7
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dfe
  store <8 x i32> %i.dfd, ptr %i.dfm, align 1, !tbaa !7
  %i.dfn = add nuw nsw i64 %.078113, 1            ; 2 uses
  %exitcond127.not = icmp eq i64 %i.dfn, %i.bby
  br i1 %exitcond127.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader98.preheader, !llvm.loop !218

_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit: ; preds = %.preheader98.preheader, %.preheader96.preheader.i, %.preheader102, %.preheader100.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i8> @llvm.x86.sse3.ldu.dq(ptr) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="haswell" "target-features"="+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+popcnt,+rdrnd,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsaveopt" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 8, i32 56}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, i1 false, !"LVerDomain"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !8, !9, !10}
!18 = distinct !{!18, !8, !9, !10}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !8, !9, !10}
!27 = distinct !{!27, !8, !9, !10}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, i1 false, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!30 = distinct !{!30, !29, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!31 = distinct !{!31, i1 false, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!32 = distinct !{!32, !31, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!33 = distinct !{!33, !8}
!34 = !{!14}
!35 = !{!15}
!36 = !{!16}
!37 = !{!15, !14}
!38 = !{!23}
!39 = !{!24}
!40 = !{!25}
!41 = !{!24, !23}
!42 = !{!32, !30}
!43 = distinct !{!43, i1 false, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !43}
!47 = distinct !{!47, !43}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !8, !9, !10}
!50 = distinct !{!50, !8, !9}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, i1 false, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !8, !9, !10}
!59 = distinct !{!59, !8, !9}
!60 = distinct !{!60, i1 false, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!61 = distinct !{!61, !60, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!62 = distinct !{!62, i1 false, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!63 = distinct !{!63, !62, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!64 = distinct !{!64, !8}
!65 = !{!44}
!66 = !{!45}
!67 = !{!46}
!68 = !{!47}
!69 = !{!48}
!70 = !{!47, !46, !45, !44}
!71 = !{!53}
!72 = !{!54}
!73 = !{!55}
!74 = !{!56}
!75 = !{!57}
!76 = !{!56, !55, !54, !53}
!77 = !{!63, !61}
!78 = distinct !{!78, i1 false, !"LVerDomain"}
!79 = distinct !{!79, !78}
!80 = distinct !{!80, !78}
!81 = distinct !{!81, !78}
!82 = distinct !{!82, !78}
!83 = distinct !{!83, !78}
!84 = distinct !{!84, !78}
!85 = distinct !{!85, !78}
!86 = distinct !{!86, !78}
!87 = distinct !{!87, !78}
!88 = distinct !{!88, !8, !9, !10}
!89 = distinct !{!89, !8, !9}
!90 = distinct !{!90, !8}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !91}
!95 = distinct !{!95, !91}
!96 = distinct !{!96, !91}
!97 = distinct !{!97, !91}
!98 = distinct !{!98, !91}
!99 = distinct !{!99, !91}
end_hunk_2
