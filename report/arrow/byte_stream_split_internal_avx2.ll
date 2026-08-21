Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh:bb.a
  %wide.load108 = load <16 x i8>, ptr %i.dr, align 1, !tbaa !7, !alias.scope !29
  %wide.load109 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !7, !alias.scope !29
  %wide.load110 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !7, !alias.scope !29
  %wide.load111 = load <16 x i8>, ptr %i.du, align 1, !tbaa !7, !alias.scope !29
  %i.dv = shl nuw nsw i64 %i.dm, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 %i.dv ; 4 uses
  %i.dx = zext <16 x i8> %wide.load108 to <16 x i16>
  %i.dy = zext <16 x i8> %wide.load109 to <16 x i16>
  %i.dz = zext <16 x i8> %wide.load110 to <16 x i16>
  %i.ea = zext <16 x i8> %wide.load111 to <16 x i16>
  %i.eb = shl nuw <16 x i16> %i.dx, splat (i16 8)
  %i.ec = shl nuw <16 x i16> %i.dy, splat (i16 8)
  %i.ed = shl nuw <16 x i16> %i.dz, splat (i16 8)
  %i.ee = shl nuw <16 x i16> %i.ea, splat (i16 8)
  %i.ef = zext <16 x i8> %wide.load to <16 x i16>
  %i.eg = zext <16 x i8> %wide.load105 to <16 x i16>
  %i.eh = zext <16 x i8> %wide.load106 to <16 x i16>
  %i.ei = zext <16 x i8> %wide.load107 to <16 x i16>
  %i.ej = or disjoint <16 x i16> %i.eb, %i.ef
  %i.ek = or disjoint <16 x i16> %i.ec, %i.eg
  %i.el = or disjoint <16 x i16> %i.ed, %i.eh
  %i.em = or disjoint <16 x i16> %i.ee, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dw, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  store <16 x i16> %i.ej, ptr %i.dw, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.ek, ptr %i.en, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.el, ptr %i.eo, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.em, ptr %i.ep, align 1, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %.preheader75.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dk, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.er = and i64 %smax103, 7                     ; 2 uses
  %n.vec112 = sub i64 %i.de, %i.er                ; 2 uses
  %i.es = add i64 %i.dc, %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %i.et = add nuw i64 %i.dc, %index113            ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.et     ; 2 uses
  %wide.load114 = load <8 x i8>, ptr %i.eu, align 1, !tbaa !7, !alias.scope !26
  %i.ev = getelementptr i8, ptr %i.eu, i64 %3
  %wide.load115 = load <8 x i8>, ptr %i.ev, align 1, !tbaa !7, !alias.scope !29
  %i.ew = shl nuw nsw i64 %i.et, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 %i.ew
  %i.ey = zext <8 x i8> %wide.load115 to <8 x i16>
  %i.ez = shl nuw <8 x i16> %i.ey, splat (i16 8)
  %i.fa = zext <8 x i8> %wide.load114 to <8 x i16>
  %i.fb = or disjoint <8 x i16> %i.ez, %i.fa
  store <8 x i16> %i.fb, ptr %i.ex, align 1, !alias.scope !31, !noalias !33
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.fc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.er, 0
  br i1 %cmp.n117, label %.preheader75.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05979.ph = phi i64 [ %i.dc, %iter.check ], [ %i.dc, %vector.memcheck ], [ %i.dl, %vec.epilog.iter.check ], [ %i.es, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05979 = phi i64 [ %i.fh, %.lr.ph ], [ %.05979.ph, %.lr.ph.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 2 uses
  %i.fd = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.fe = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.ff = shl nuw nsw i64 %.05979, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ff
  %.sroa.489.0.insert.ext = zext i8 %i.fe to i16
  %.sroa.489.0.insert.shift = shl nuw i16 %.sroa.489.0.insert.ext, 8
  %.sroa.088.0.insert.ext = zext i8 %i.fd to i16
  %.sroa.088.0.insert.insert = or disjoint i16 %.sroa.489.0.insert.shift, %.sroa.088.0.insert.ext
  store i16 %.sroa.088.0.insert.insert, ptr %i.fg, align 1
  %i.fh = add nuw nsw i64 %.05979, 1              ; 2 uses
  %i.fi = icmp slt i64 %i.fh, %2
  br i1 %i.fi, label %.lr.ph, label %.preheader75.preheader, !llvm.loop !36

.preheader75.preheader:                           ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.fj = icmp eq i64 %i.db, 1
  br i1 %i.fj, label %.preheader75.epil.preheader, label %.preheader75.preheader.new

.preheader75.preheader.new:                       ; preds = %.preheader75.preheader
  %unroll_iter = and i64 %i.db, 288230376151711742
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75, %.preheader75.preheader.new
  %.05782 = phi i64 [ 0, %.preheader75.preheader.new ], [ %i.gl, %.preheader75 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader75.preheader.new ], [ %niter.next.1, %.preheader75 ]
  %i.fk = shl nuw nsw i64 %.05782, 5
  %i.fl = getelementptr i8, ptr %0, i64 %i.fk     ; 2 uses
  %i.fm = load <32 x i8>, ptr %i.fl, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fl, i64 %3
  %i.fo = load <32 x i8>, ptr %i.fn, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fp = shufflevector <32 x i8> %i.fm, <32 x i8> %i.fo, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fq = shufflevector <32 x i8> %i.fm, <32 x i8> %i.fo, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fr = shufflevector <32 x i8> %i.fp, <32 x i8> %i.fq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fs = bitcast <32 x i8> %i.fp to <8 x i32>
  %i.ft = bitcast <32 x i8> %i.fq to <8 x i32>
  %i.fu = shufflevector <8 x i32> %i.fs, <8 x i32> %i.ft, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fv = shl i64 %.05782, 6
  %i.fw = getelementptr i8, ptr %4, i64 %i.fv     ; 2 uses
  store <32 x i8> %i.fr, ptr %i.fw, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store <8 x i32> %i.fu, ptr %.sroa.8.64..sroa_idx, align 1, !tbaa !7
  %i.fx = or disjoint i64 %.05782, 1              ; 2 uses
  %i.fy = shl nuw nsw i64 %i.fx, 5
  %i.fz = getelementptr i8, ptr %0, i64 %i.fy     ; 2 uses
  %i.ga = load <32 x i8>, ptr %i.fz, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 %3
  %i.gc = load <32 x i8>, ptr %i.gb, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gd = shufflevector <32 x i8> %i.ga, <32 x i8> %i.gc, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ge = shufflevector <32 x i8> %i.ga, <32 x i8> %i.gc, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gf = shufflevector <32 x i8> %i.gd, <32 x i8> %i.ge, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gg = bitcast <32 x i8> %i.gd to <8 x i32>
  %i.gh = bitcast <32 x i8> %i.ge to <8 x i32>
  %i.gi = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gh, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gj = shl i64 %i.fx, 6
  %i.gk = getelementptr i8, ptr %4, i64 %i.gj     ; 2 uses
  store <32 x i8> %i.gf, ptr %i.gk, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store <8 x i32> %i.gi, ptr %.sroa.8.64..sroa_idx.1, align 1, !tbaa !7
  %i.gl = add nuw nsw i64 %.05782, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit166.unr-lcssa, label %.preheader75, !llvm.loop !42

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa: ; preds = %.preheader71.i
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader71.i.epil.preheader

.preheader71.i.epil.preheader:                    ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader71.i.preheader
  %.05377.i.epil.init = phi i64 [ 0, %.preheader71.i.preheader ], [ %i.da, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod172 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.gm = shl nuw nsw i64 %.05377.i.epil.init, 4
  %i.gn = getelementptr i8, ptr %0, i64 %i.gm     ; 2 uses
  %i.go = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gn) ; 2 uses
  %i.gp = getelementptr i8, ptr %i.gn, i64 %3
  %i.gq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gp) ; 2 uses
  %i.gr = shufflevector <16 x i8> %i.go, <16 x i8> %i.gq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gs = shufflevector <16 x i8> %i.go, <16 x i8> %i.gq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.gt = shl nuw i64 %.05377.i.epil.init, 5
  %i.gu = getelementptr i8, ptr %4, i64 %i.gt     ; 2 uses
  store <16 x i8> %i.gr, ptr %i.gu, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <16 x i8> %i.gs, ptr %.sroa.8.32..sroa_idx.i.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit166.unr-lcssa: ; preds = %.preheader75
  %i.gv = and i64 %2, 32
  %lcmp.mod.not = icmp eq i64 %i.gv, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader75.epil.preheader

.preheader75.epil.preheader:                      ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit166.unr-lcssa, %.preheader75.preheader
  %.05782.epil.init = phi i64 [ 0, %.preheader75.preheader ], [ %i.gl, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit166.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i64 %i.db to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.gw = shl nuw nsw i64 %.05782.epil.init, 5
  %i.gx = getelementptr i8, ptr %0, i64 %i.gw     ; 2 uses
  %i.gy = load <32 x i8>, ptr %i.gx, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gx, i64 %3
  %i.ha = load <32 x i8>, ptr %i.gz, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.hb = shufflevector <32 x i8> %i.gy, <32 x i8> %i.ha, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hc = shufflevector <32 x i8> %i.gy, <32 x i8> %i.ha, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hd = shufflevector <32 x i8> %i.hb, <32 x i8> %i.hc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.he = bitcast <32 x i8> %i.hb to <8 x i32>
  %i.hf = bitcast <32 x i8> %i.hc to <8 x i32>
  %i.hg = shufflevector <8 x i32> %i.he, <8 x i32> %i.hf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hh = shl i64 %.05782.epil.init, 6
  %i.hi = getelementptr i8, ptr %4, i64 %i.hh     ; 2 uses
  store <32 x i8> %i.hd, ptr %i.hi, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  store <8 x i32> %i.hg, ptr %.sroa.8.64..sroa_idx.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit: ; preds = %.preheader75.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit166.unr-lcssa, %.preheader71.i.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader72.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 16                          ; 3 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 10 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %.lr.ph.preheader.i, label %.preheader72.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl nsw i64 %3, 1                        ; 6 uses
  %i.f = mul nsw i64 %3, 3                        ; 6 uses
  %i.g = sub i64 %2, %i.c                         ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.g, 24
  br i1 %min.iters.check152, label %.lr.ph.i.preheader, label %vector.memcheck125

vector.memcheck125:                               ; preds = %.lr.ph.preheader.i
  %i.h = shl i64 %i.b, 6
  %scevgep126 = getelementptr i8, ptr %4, i64 %i.h ; 4 uses
  %i.i = shl i64 %2, 2
  %scevgep127 = getelementptr i8, ptr %4, i64 %i.i ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.c
  %scevgep128 = getelementptr i8, ptr %i.j, i64 %i.f
  %i.k = getelementptr i8, ptr %0, i64 %2
  %scevgep129 = getelementptr i8, ptr %i.k, i64 %i.f
  %i.l = getelementptr i8, ptr %0, i64 %i.c
  %scevgep130 = getelementptr i8, ptr %i.l, i64 %i.e
  %i.m = getelementptr i8, ptr %0, i64 %2
  %scevgep131 = getelementptr i8, ptr %i.m, i64 %i.e
  %i.n = getelementptr i8, ptr %0, i64 %3
  %scevgep132 = getelementptr i8, ptr %i.n, i64 %i.c
  %i.o = getelementptr i8, ptr %0, i64 %3
  %scevgep133 = getelementptr i8, ptr %i.o, i64 %2
  %scevgep134 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep135 = getelementptr i8, ptr %0, i64 %2
  %bound0136 = icmp ult ptr %scevgep126, %scevgep129
  %bound1137 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict138 = and i1 %bound0136, %bound1137
  %bound0139 = icmp ult ptr %scevgep126, %scevgep131
  %bound1140 = icmp ult ptr %scevgep130, %scevgep127
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %found.conflict138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep126, %scevgep133
  %bound1144 = icmp ult ptr %scevgep132, %scevgep127
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %scevgep126, %scevgep135
  %bound1148 = icmp ult ptr %scevgep134, %scevgep127
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  br i1 %conflict.rdx150, label %.lr.ph.i.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck125
  %i.p = and i64 %2, 7                            ; 2 uses
  %n.vec154 = sub i64 %i.g, %i.p                  ; 2 uses
  %i.q = add i64 %i.c, %n.vec154
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %i.r = add i64 %i.c, %index156                  ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r       ; 4 uses
  %wide.load157 = load <8 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !43
  %i.t = getelementptr i8, ptr %i.s, i64 %3
  %wide.load158 = load <8 x i8>, ptr %i.t, align 1, !tbaa !7, !alias.scope !46
  %i.u = getelementptr i8, ptr %i.s, i64 %i.e
  %wide.load159 = load <8 x i8>, ptr %i.u, align 1, !tbaa !7, !alias.scope !48
  %i.v = getelementptr i8, ptr %i.s, i64 %i.f
  %wide.load160 = load <8 x i8>, ptr %i.v, align 1, !tbaa !7, !alias.scope !50
  %i.w = shl nsw i64 %i.r, 2
  %i.x = getelementptr inbounds i8, ptr %4, i64 %i.w
  %i.y = zext <8 x i8> %wide.load160 to <8 x i32>
  %i.z = shl nuw <8 x i32> %i.y, splat (i32 24)
  %i.aa = zext <8 x i8> %wide.load159 to <8 x i32>
  %i.ab = shl nuw nsw <8 x i32> %i.aa, splat (i32 16)
  %i.ac = zext <8 x i8> %wide.load158 to <8 x i32>
  %i.ad = shl nuw nsw <8 x i32> %i.ac, splat (i32 8)
  %i.ae = zext <8 x i8> %wide.load157 to <8 x i32>
  %i.af = or disjoint <8 x i32> %i.ad, %i.ae
  %i.ag = or disjoint <8 x i32> %i.af, %i.ab
  %i.ah = or disjoint <8 x i32> %i.ag, %i.z
  store <8 x i32> %i.ah, ptr %i.x, align 1, !alias.scope !52, !noalias !54
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.ai, label %middle.block162, label %vector.body155, !llvm.loop !55

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.p, 0
  br i1 %cmp.n163, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck125, %.lr.ph.preheader.i, %middle.block162
  %.05574.i.ph = phi i64 [ %i.c, %vector.memcheck125 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.q, %middle.block162 ] ; 6 uses
  %i.aj = sub i64 %2, %.05574.i.ph
  %.neg169 = add i64 %.05574.i.ph, 1
  %xtraiter167 = and i64 %i.aj, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05574.i.ph ; 4 uses
  %i.ak = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.al = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  %i.am = load i8, ptr %gep.2.i.prol, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.f
  %i.an = load i8, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.ao = shl nsw i64 %.05574.i.ph, 2
  %i.ap = getelementptr inbounds i8, ptr %4, i64 %i.ao
  %.sroa.690.0.insert.ext.i.prol = zext i8 %i.an to i32
  %.sroa.690.0.insert.shift.i.prol = shl nuw i32 %.sroa.690.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i.prol = zext i8 %i.am to i32
  %.sroa.5.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.prol, 16
  %.sroa.489.0.insert.ext.i.prol = zext i8 %i.al to i32
  %.sroa.489.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.prol, 8
  %.sroa.088.0.insert.ext.i.prol = zext i8 %i.ak to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.shift.i.prol, %.sroa.088.0.insert.ext.i.prol
  %.sroa.489.0.insert.insert.i.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i.prol
  %.sroa.088.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.insert.i.prol, %.sroa.690.0.insert.shift.i.prol
  store i32 %.sroa.088.0.insert.insert.i.prol, ptr %i.ap, align 1
  %i.aq = add nsw i64 %.05574.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05574.i.unr = phi i64 [ %.05574.i.ph, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.ar = icmp eq i64 %2, %.neg169
  br i1 %i.ar, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block162, %bb.b
  %i.as = icmp sgt i64 %2, 15
  br i1 %i.as, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.at = shl nsw i64 %3, 1
  %i.au = mul nsw i64 %3, 3
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05574.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.05574.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 4 uses
  %i.av = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.aw = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.ax = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.ay = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %i.az = shl nsw i64 %.05574.i, 2
  %i.ba = getelementptr inbounds i8, ptr %4, i64 %i.az
  %.sroa.690.0.insert.ext.i = zext i8 %i.ay to i32
  %.sroa.690.0.insert.shift.i = shl nuw i32 %.sroa.690.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.ax to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.489.0.insert.ext.i = zext i8 %i.aw to i32
  %.sroa.489.0.insert.shift.i = shl nuw nsw i32 %.sroa.489.0.insert.ext.i, 8
  %.sroa.088.0.insert.ext.i = zext i8 %i.av to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.shift.i, %.sroa.088.0.insert.ext.i
  %.sroa.489.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.088.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.insert.i, %.sroa.690.0.insert.shift.i
  store i32 %.sroa.088.0.insert.insert.i, ptr %i.ba, align 1
  %i.bb = add nsw i64 %.05574.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.bb ; 4 uses
  %i.bc = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.bd = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %gep.2.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.e
  %i.be = load i8, ptr %gep.2.i.1, align 1, !tbaa !7
  %gep.3.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.f
  %i.bf = load i8, ptr %gep.3.i.1, align 1, !tbaa !7
  %i.bg = shl nsw i64 %i.bb, 2
  %i.bh = getelementptr inbounds i8, ptr %4, i64 %i.bg
  %.sroa.690.0.insert.ext.i.1 = zext i8 %i.bf to i32
  %.sroa.690.0.insert.shift.i.1 = shl nuw i32 %.sroa.690.0.insert.ext.i.1, 24
  %.sroa.5.0.insert.ext.i.1 = zext i8 %i.be to i32
  %.sroa.5.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.1, 16
  %.sroa.489.0.insert.ext.i.1 = zext i8 %i.bd to i32
  %.sroa.489.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.1, 8
  %.sroa.088.0.insert.ext.i.1 = zext i8 %i.bc to i32
  %.sroa.5.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.shift.i.1, %.sroa.088.0.insert.ext.i.1
  %.sroa.489.0.insert.insert.i.1 = or disjoint i32 %.sroa.5.0.insert.insert.i.1, %.sroa.5.0.insert.shift.i.1
  %.sroa.088.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.insert.i.1, %.sroa.690.0.insert.shift.i.1
  store i32 %.sroa.088.0.insert.insert.i.1, ptr %i.bh, align 1
  %i.bi = add nsw i64 %.05574.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not.i.1, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !56

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.cc, %.preheader.preheader.i ] ; 3 uses
  %i.bj = shl nuw nsw i64 %.05379.i, 4
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj     ; 4 uses
  %i.bl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bk) ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %3
  %i.bn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.at
  %i.bp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bo) ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.au
  %i.br = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bq) ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bn, <16 x i8> %i.br, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bv = shufflevector <16 x i8> %i.bn, <16 x i8> %i.br, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.by = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bz = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ca = shl i64 %.05379.i, 6
  %i.cb = getelementptr i8, ptr %4, i64 %i.ca     ; 4 uses
  store <16 x i8> %i.bw, ptr %i.cb, align 1, !tbaa !7
  %.sroa.20.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <16 x i8> %i.bx, ptr %.sroa.20.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.21.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store <16 x i8> %i.by, ptr %.sroa.21.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.22.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store <16 x i8> %i.bz, ptr %.sroa.22.128..sroa_idx.i, align 1, !tbaa !7
  %i.cc = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.cc, %i.b
  br i1 %exitcond87.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !57

bb.c:                                             ; preds = %bb.a
  %i.cd = lshr i64 %2, 5
  %i.ce = and i64 %i.cd, 144115188075855871       ; 4 uses
  %i.cf = shl nuw nsw i64 %i.ce, 5                ; 10 uses
  %i.cg = icmp samesign ult i64 %i.cf, %2
  br i1 %i.cg, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ch = shl nsw i64 %3, 1                       ; 6 uses
  %i.ci = mul nsw i64 %3, 3                       ; 6 uses
  %i.cj = sub nuw nsw i64 %2, %i.cf               ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 24
  br i1 %min.iters.check, label %.lr.ph.preheader166, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ck = shl nuw i64 %i.ce, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.ck  ; 4 uses
  %i.cl = shl i64 %2, 2
  %scevgep102 = getelementptr i8, ptr %4, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep103 = getelementptr i8, ptr %i.cm, i64 %i.ci
  %i.cn = getelementptr i8, ptr %0, i64 %2
  %scevgep104 = getelementptr i8, ptr %i.cn, i64 %i.ci
  %i.co = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep105 = getelementptr i8, ptr %i.co, i64 %i.ch
  %i.cp = getelementptr i8, ptr %0, i64 %2
  %scevgep106 = getelementptr i8, ptr %i.cp, i64 %i.ch
  %i.cq = getelementptr i8, ptr %0, i64 %3
  %scevgep107 = getelementptr i8, ptr %i.cq, i64 %i.cf
  %i.cr = getelementptr i8, ptr %0, i64 %3
  %scevgep108 = getelementptr i8, ptr %i.cr, i64 %2
  %scevgep109 = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep110 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep104
  %bound1 = icmp ult ptr %scevgep103, %scevgep102
  %found.conflict = and i1 %bound0, %bound1
  %bound0111 = icmp ult ptr %scevgep, %scevgep106
  %bound1112 = icmp ult ptr %scevgep105, %scevgep102
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx = or i1 %found.conflict, %found.conflict113
  %bound0114 = icmp ult ptr %scevgep, %scevgep108
  %bound1115 = icmp ult ptr %scevgep107, %scevgep102
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx, %found.conflict116
  %bound0118 = icmp ult ptr %scevgep, %scevgep110
  %bound1119 = icmp ult ptr %scevgep109, %scevgep102
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  br i1 %conflict.rdx121, label %.lr.ph.preheader166, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cs = and i64 %2, 7                           ; 2 uses
  %n.vec = sub nsw i64 %i.cj, %i.cs               ; 2 uses
  %i.ct = add i64 %i.cf, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cu = add nuw i64 %i.cf, %index               ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 %i.cu     ; 4 uses
  %wide.load = load <8 x i8>, ptr %i.cv, align 1, !tbaa !7, !alias.scope !58
  %i.cw = getelementptr i8, ptr %i.cv, i64 %3
  %wide.load122 = load <8 x i8>, ptr %i.cw, align 1, !tbaa !7, !alias.scope !61
  %i.cx = getelementptr i8, ptr %i.cv, i64 %i.ch
  %wide.load123 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !7, !alias.scope !63
  %i.cy = getelementptr i8, ptr %i.cv, i64 %i.ci
  %wide.load124 = load <8 x i8>, ptr %i.cy, align 1, !tbaa !7, !alias.scope !65
  %i.cz = shl nsw i64 %i.cu, 2
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %i.cz
  %i.db = zext <8 x i8> %wide.load124 to <8 x i32>
  %i.dc = shl nuw <8 x i32> %i.db, splat (i32 24)
  %i.dd = zext <8 x i8> %wide.load123 to <8 x i32>
  %i.de = shl nuw nsw <8 x i32> %i.dd, splat (i32 16)
  %i.df = or disjoint <8 x i32> %i.dc, %i.de
  %i.dg = zext <8 x i8> %wide.load122 to <8 x i32>
  %i.dh = shl nuw nsw <8 x i32> %i.dg, splat (i32 8)
  %i.di = or disjoint <8 x i32> %i.df, %i.dh
  %i.dj = zext <8 x i8> %wide.load to <8 x i32>
  %i.dk = or disjoint <8 x i32> %i.di, %i.dj
  store <8 x i32> %i.dk, ptr %i.da, align 1, !alias.scope !67, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader166

.lr.ph.preheader166:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.cf, %vector.memcheck ], [ %i.cf, %.lr.ph.preheader ], [ %i.ct, %middle.block ] ; 6 uses
  %i.dm = sub i64 %2, %.05979.ph
  %.neg = add i64 %.05979.ph, 1
  %xtraiter = and i64 %i.dm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader166
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05979.ph ; 4 uses
  %i.dn = load i8, ptr %invariant.gep.prol, align 1, !tbaa !7
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.do = load i8, ptr %gep.1.prol, align 1, !tbaa !7
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.ch
  %i.dp = load i8, ptr %gep.2.prol, align 1, !tbaa !7
  %gep.3.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.ci
  %i.dq = load i8, ptr %gep.3.prol, align 1, !tbaa !7
  %i.dr = shl nsw i64 %.05979.ph, 2
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 %i.dr
  %.sroa.696.0.insert.ext.prol = zext i8 %i.dq to i32
  %.sroa.696.0.insert.shift.prol = shl nuw i32 %.sroa.696.0.insert.ext.prol, 24
  %.sroa.5.0.insert.ext.prol = zext i8 %i.dp to i32
  %.sroa.5.0.insert.shift.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.prol, 16
  %.sroa.5.0.insert.insert.prol = or disjoint i32 %.sroa.696.0.insert.shift.prol, %.sroa.5.0.insert.shift.prol
  %.sroa.495.0.insert.ext.prol = zext i8 %i.do to i32
  %.sroa.495.0.insert.shift.prol = shl nuw nsw i32 %.sroa.495.0.insert.ext.prol, 8
  %.sroa.495.0.insert.insert.prol = or disjoint i32 %.sroa.5.0.insert.insert.prol, %.sroa.495.0.insert.shift.prol
  %.sroa.094.0.insert.ext.prol = zext i8 %i.dn to i32
  %.sroa.094.0.insert.insert.prol = or disjoint i32 %.sroa.495.0.insert.insert.prol, %.sroa.094.0.insert.ext.prol
  store i32 %.sroa.094.0.insert.insert.prol, ptr %i.ds, align 1
  %i.dt = add nuw nsw i64 %.05979.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader166
  %.05979.unr = phi i64 [ %.05979.ph, %.lr.ph.preheader166 ], [ %i.dt, %.lr.ph.prol ]
  %i.du = icmp eq i64 %2, %.neg
  br i1 %i.du, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.dv = shl nsw i64 %3, 1
  %i.dw = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05979 = phi i64 [ %i.ek, %.lr.ph ], [ %.05979.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 4 uses
  %i.dx = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.dy = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ch
  %i.dz = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.ci
  %i.ea = load i8, ptr %gep.3, align 1, !tbaa !7
  %i.eb = shl nsw i64 %.05979, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 %i.eb
  %.sroa.696.0.insert.ext = zext i8 %i.ea to i32
  %.sroa.696.0.insert.shift = shl nuw i32 %.sroa.696.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.dz to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.696.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.495.0.insert.ext = zext i8 %i.dy to i32
  %.sroa.495.0.insert.shift = shl nuw nsw i32 %.sroa.495.0.insert.ext, 8
  %.sroa.495.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.495.0.insert.shift
  %.sroa.094.0.insert.ext = zext i8 %i.dx to i32
  %.sroa.094.0.insert.insert = or disjoint i32 %.sroa.495.0.insert.insert, %.sroa.094.0.insert.ext
  store i32 %.sroa.094.0.insert.insert, ptr %i.ec, align 1
  %i.ed = add nuw nsw i64 %.05979, 1              ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.ed ; 4 uses
  %i.ee = load i8, ptr %invariant.gep.1, align 1, !tbaa !7
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.ef = load i8, ptr %gep.1.1, align 1, !tbaa !7
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.ch
  %i.eg = load i8, ptr %gep.2.1, align 1, !tbaa !7
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.ci
  %i.eh = load i8, ptr %gep.3.1, align 1, !tbaa !7
  %i.ei = shl nsw i64 %i.ed, 2
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 %i.ei
  %.sroa.696.0.insert.ext.1 = zext i8 %i.eh to i32
  %.sroa.696.0.insert.shift.1 = shl nuw i32 %.sroa.696.0.insert.ext.1, 24
  %.sroa.5.0.insert.ext.1 = zext i8 %i.eg to i32
  %.sroa.5.0.insert.shift.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.1, 16
  %.sroa.5.0.insert.insert.1 = or disjoint i32 %.sroa.696.0.insert.shift.1, %.sroa.5.0.insert.shift.1
  %.sroa.495.0.insert.ext.1 = zext i8 %i.ef to i32
  %.sroa.495.0.insert.shift.1 = shl nuw nsw i32 %.sroa.495.0.insert.ext.1, 8
  %.sroa.495.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.insert.1, %.sroa.495.0.insert.shift.1
  %.sroa.094.0.insert.ext.1 = zext i8 %i.ee to i32
  %.sroa.094.0.insert.insert.1 = or disjoint i32 %.sroa.495.0.insert.insert.1, %.sroa.094.0.insert.ext.1
  store i32 %.sroa.094.0.insert.insert.1, ptr %i.ej, align 1
  %i.ek = add nuw nsw i64 %.05979, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ek, %2
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !71

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.fw, %.preheader.preheader ] ; 3 uses
  %i.el = shl nuw nsw i64 %.05784, 5
  %i.em = getelementptr i8, ptr %0, i64 %i.el     ; 4 uses
  %i.en = load <32 x i8>, ptr %i.em, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.em, i64 %3
  %i.ep = load <32 x i8>, ptr %i.eo, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 %i.dv
  %i.er = load <32 x i8>, ptr %i.eq, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.es = getelementptr i8, ptr %i.em, i64 %i.dw
  %i.et = load <32 x i8>, ptr %i.es, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eu = shufflevector <32 x i8> %i.en, <32 x i8> %i.er, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ev = shufflevector <32 x i8> %i.en, <32 x i8> %i.er, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ew = shufflevector <32 x i8> %i.eu, <32 x i8> %i.ev, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ex = bitcast <32 x i8> %i.eu to <8 x i32>
  %i.ey = bitcast <32 x i8> %i.ev to <8 x i32>
  %i.ez = shufflevector <8 x i32> %i.ex, <8 x i32> %i.ey, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fa = shufflevector <32 x i8> %i.ep, <32 x i8> %i.et, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fb = shufflevector <32 x i8> %i.ep, <32 x i8> %i.et, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fc = shufflevector <32 x i8> %i.fa, <32 x i8> %i.fb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fd = bitcast <32 x i8> %i.fa to <8 x i32>
  %i.fe = bitcast <32 x i8> %i.fb to <8 x i32>
  %i.ff = shufflevector <8 x i32> %i.fd, <8 x i32> %i.fe, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fg = shufflevector <32 x i8> %i.ew, <32 x i8> %i.fc, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fh = shufflevector <32 x i8> %i.ew, <32 x i8> %i.fc, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fi = shufflevector <32 x i8> %i.fg, <32 x i8> %i.fh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fj = bitcast <32 x i8> %i.fg to <8 x i32>
  %i.fk = bitcast <32 x i8> %i.fh to <8 x i32>
  %i.fl = shufflevector <8 x i32> %i.fj, <8 x i32> %i.fk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fm = bitcast <8 x i32> %i.ez to <32 x i8>    ; 2 uses
  %i.fn = bitcast <8 x i32> %i.ff to <32 x i8>    ; 2 uses
  %i.fo = shufflevector <32 x i8> %i.fm, <32 x i8> %i.fn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fp = shufflevector <32 x i8> %i.fm, <32 x i8> %i.fn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fq = shufflevector <32 x i8> %i.fo, <32 x i8> %i.fp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fr = bitcast <32 x i8> %i.fo to <8 x i32>
  %i.fs = bitcast <32 x i8> %i.fp to <8 x i32>
  %i.ft = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fu = shl nuw i64 %.05784, 7
  %i.fv = getelementptr i8, ptr %4, i64 %i.fu     ; 4 uses
  store <32 x i8> %i.fi, ptr %i.fv, align 1, !tbaa !7
  %.sroa.20.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  store <8 x i32> %i.fl, ptr %.sroa.20.256..sroa_idx, align 1, !tbaa !7
  %.sroa.21.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  store <32 x i8> %i.fq, ptr %.sroa.21.256..sroa_idx, align 1, !tbaa !7
  %.sroa.22.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  store <8 x i32> %i.ft, ptr %.sroa.22.256..sroa_idx, align 1, !tbaa !7
  %i.fw = add nuw nsw i64 %.05784, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.fw, %i.ce
  br i1 %exitcond93.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader, !llvm.loop !77

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit: ; preds = %.preheader.preheader, %.preheader.preheader.i, %.preheader76, %.preheader72.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 16                          ; 3 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 14 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %.lr.ph.preheader.i, label %.preheader72.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl i64 %3, 1                            ; 4 uses
  %i.f = mul i64 %3, 3                            ; 4 uses
  %i.g = shl nsw i64 %3, 2                        ; 4 uses
  %i.h = mul nsw i64 %3, 5                        ; 4 uses
  %i.i = mul nsw i64 %3, 6                        ; 4 uses
  %i.j = mul nsw i64 %3, 7                        ; 4 uses
  %i.k = sub i64 %2, %i.c                         ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.k, 20
  br i1 %min.iters.check208, label %.lr.ph.i.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.preheader.i
  %i.l = shl i64 %i.b, 7
  %scevgep158 = getelementptr i8, ptr %4, i64 %i.l ; 8 uses
  %i.m = shl i64 %2, 3
  %scevgep159 = getelementptr i8, ptr %4, i64 %i.m ; 8 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.c
  %scevgep160 = getelementptr i8, ptr %i.n, i64 %i.j
  %i.o = getelementptr i8, ptr %0, i64 %2
  %scevgep161 = getelementptr i8, ptr %i.o, i64 %i.j
  %i.p = getelementptr i8, ptr %0, i64 %i.c
  %scevgep162 = getelementptr i8, ptr %i.p, i64 %i.i
  %i.q = getelementptr i8, ptr %0, i64 %2
  %scevgep163 = getelementptr i8, ptr %i.q, i64 %i.i
  %i.r = getelementptr i8, ptr %0, i64 %i.c
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.h
  %i.s = getelementptr i8, ptr %0, i64 %2
  %scevgep165 = getelementptr i8, ptr %i.s, i64 %i.h
  %i.t = getelementptr i8, ptr %0, i64 %i.c
  %scevgep166 = getelementptr i8, ptr %i.t, i64 %i.g
  %i.u = getelementptr i8, ptr %0, i64 %2
  %scevgep167 = getelementptr i8, ptr %i.u, i64 %i.g
  %i.v = getelementptr i8, ptr %0, i64 %i.c
  %scevgep168 = getelementptr i8, ptr %i.v, i64 %i.f
  %i.w = getelementptr i8, ptr %0, i64 %2
  %scevgep169 = getelementptr i8, ptr %i.w, i64 %i.f
  %i.x = getelementptr i8, ptr %0, i64 %i.c
  %scevgep170 = getelementptr i8, ptr %i.x, i64 %i.e
  %i.y = getelementptr i8, ptr %0, i64 %2
  %scevgep171 = getelementptr i8, ptr %i.y, i64 %i.e
  %i.z = getelementptr i8, ptr %0, i64 %3
  %scevgep172 = getelementptr i8, ptr %i.z, i64 %i.c
  %i.aa = getelementptr i8, ptr %0, i64 %3
  %scevgep173 = getelementptr i8, ptr %i.aa, i64 %2
  %scevgep174 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep175 = getelementptr i8, ptr %0, i64 %2
  %bound0176 = icmp ult ptr %scevgep158, %scevgep161
  %bound1177 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict178 = and i1 %bound0176, %bound1177
  %bound0179 = icmp ult ptr %scevgep158, %scevgep163
  %bound1180 = icmp ult ptr %scevgep162, %scevgep159
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %found.conflict178, %found.conflict181
  %bound0183 = icmp ult ptr %scevgep158, %scevgep165
  %bound1184 = icmp ult ptr %scevgep164, %scevgep159
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep158, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep159
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep158, %scevgep169
  %bound1192 = icmp ult ptr %scevgep168, %scevgep159
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep158, %scevgep171
  %bound1196 = icmp ult ptr %scevgep170, %scevgep159
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep158, %scevgep173
  %bound1200 = icmp ult ptr %scevgep172, %scevgep159
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep158, %scevgep175
  %bound1204 = icmp ult ptr %scevgep174, %scevgep159
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  br i1 %conflict.rdx206, label %.lr.ph.i.preheader, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck157
  %i.ab = and i64 %2, 3                           ; 2 uses
  %n.vec210 = sub i64 %i.k, %i.ab                 ; 2 uses
  %i.ac = add i64 %i.c, %n.vec210
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next221, %vector.body211 ] ; 2 uses
  %i.ad = add i64 %i.c, %index212                 ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad     ; 8 uses
  %wide.load213 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !78
  %i.af = getelementptr i8, ptr %i.ae, i64 %3
  %wide.load214 = load <4 x i8>, ptr %i.af, align 1, !tbaa !7, !alias.scope !81
  %i.ag = getelementptr i8, ptr %i.ae, i64 %i.e
  %wide.load215 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !83
  %i.ah = getelementptr i8, ptr %i.ae, i64 %i.f
  %wide.load216 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !7, !alias.scope !85
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.g
  %wide.load217 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !87
  %i.aj = getelementptr i8, ptr %i.ae, i64 %i.h
  %wide.load218 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !7, !alias.scope !89
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.i
  %wide.load219 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !91
  %i.al = getelementptr i8, ptr %i.ae, i64 %i.j
  %wide.load220 = load <4 x i8>, ptr %i.al, align 1, !tbaa !7, !alias.scope !93
  %i.am = shl nsw i64 %i.ad, 3
  %i.an = getelementptr inbounds i8, ptr %4, i64 %i.am
  %i.ao = zext <4 x i8> %wide.load220 to <4 x i64>
  %i.ap = shl nuw <4 x i64> %i.ao, splat (i64 56)
  %i.aq = zext <4 x i8> %wide.load219 to <4 x i64>
  %i.ar = shl nuw nsw <4 x i64> %i.aq, splat (i64 48)
  %i.as = zext <4 x i8> %wide.load218 to <4 x i64>
  %i.at = shl nuw nsw <4 x i64> %i.as, splat (i64 40)
  %i.au = zext <4 x i8> %wide.load217 to <4 x i64>
  %i.av = shl nuw nsw <4 x i64> %i.au, splat (i64 32)
  %i.aw = zext <4 x i8> %wide.load216 to <4 x i64>
  %i.ax = shl nuw nsw <4 x i64> %i.aw, splat (i64 24)
  %i.ay = zext <4 x i8> %wide.load215 to <4 x i64>
  %i.az = shl nuw nsw <4 x i64> %i.ay, splat (i64 16)
  %i.ba = zext <4 x i8> %wide.load214 to <4 x i64>
  %i.bb = shl nuw nsw <4 x i64> %i.ba, splat (i64 8)
  %i.bc = zext <4 x i8> %wide.load213 to <4 x i64>
  %i.bd = or disjoint <4 x i64> %i.bb, %i.bc
  %i.be = or disjoint <4 x i64> %i.bd, %i.az
  %i.bf = or disjoint <4 x i64> %i.be, %i.ax
  %i.bg = or disjoint <4 x i64> %i.bf, %i.av
  %i.bh = or <4 x i64> %i.bg, %i.at
  %i.bi = or <4 x i64> %i.bh, %i.ar
  %i.bj = or <4 x i64> %i.bi, %i.ap
  store <4 x i64> %i.bj, ptr %i.an, align 1, !alias.scope !95, !noalias !97
  %index.next221 = add nuw i64 %index212, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next221, %n.vec210
  br i1 %i.bk, label %middle.block222, label %vector.body211, !llvm.loop !98

middle.block222:                                  ; preds = %vector.body211
  %cmp.n223 = icmp eq i64 %i.ab, 0
  br i1 %cmp.n223, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck157, %.lr.ph.preheader.i, %middle.block222
  %.05574.i.ph = phi i64 [ %i.c, %vector.memcheck157 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.ac, %middle.block222 ]
  br label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i, %middle.block222, %bb.b
  %i.bl = icmp sgt i64 %2, 15
  br i1 %i.bl, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.bm = shl nsw i64 %3, 1
  %i.bn = mul nsw i64 %3, 3
  %i.bo = shl nsw i64 %3, 2
  %i.bp = mul nsw i64 %3, 5
  %i.bq = mul nsw i64 %3, 6
  %i.br = mul nsw i64 %3, 7
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05574.i = phi i64 [ %i.cc, %.lr.ph.i ], [ %.05574.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 8 uses
  %i.bs = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bt = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.bu = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.bv = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.g
  %i.bw = load i8, ptr %gep.4.i, align 1, !tbaa !7
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.h
  %i.bx = load i8, ptr %gep.5.i, align 1, !tbaa !7
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.i
  %i.by = load i8, ptr %gep.6.i, align 1, !tbaa !7
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.j
  %i.bz = load i8, ptr %gep.7.i, align 1, !tbaa !7
  %i.ca = shl nsw i64 %.05574.i, 3
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %i.ca
  %.sroa.1094.0.insert.ext.i = zext i8 %i.bz to i64
  %.sroa.1094.0.insert.shift.i = shl nuw i64 %.sroa.1094.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.by to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.893.0.insert.ext.i = zext i8 %i.bx to i64
  %.sroa.893.0.insert.shift.i = shl nuw nsw i64 %.sroa.893.0.insert.ext.i, 40
  %.sroa.7.0.insert.ext.i = zext i8 %i.bw to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.692.0.insert.ext.i = zext i8 %i.bv to i64
  %.sroa.692.0.insert.shift.i = shl nuw nsw i64 %.sroa.692.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.bu to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.491.0.insert.ext.i = zext i8 %i.bt to i64
  %.sroa.491.0.insert.shift.i = shl nuw nsw i64 %.sroa.491.0.insert.ext.i, 8
  %.sroa.090.0.insert.ext.i = zext i8 %i.bs to i64
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.491.0.insert.shift.i, %.sroa.090.0.insert.ext.i
  %.sroa.893.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.893.0.insert.insert.i, %.sroa.692.0.insert.shift.i
  %.sroa.692.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.491.0.insert.mask.i = or i64 %.sroa.692.0.insert.insert.i, %.sroa.893.0.insert.shift.i
  %.sroa.090.0.insert.mask.i = or i64 %.sroa.491.0.insert.mask.i, %.sroa.9.0.insert.shift.i
  %.sroa.090.0.insert.insert.i = or i64 %.sroa.090.0.insert.mask.i, %.sroa.1094.0.insert.shift.i
  store i64 %.sroa.090.0.insert.insert.i, ptr %i.cb, align 1
  %i.cc = add nsw i64 %.05574.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %2
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !99

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.du, %.preheader.preheader.i ] ; 3 uses
  %i.cd = shl nuw nsw i64 %.05379.i, 4
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd     ; 8 uses
  %i.cf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ce) ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %3
  %i.ch = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cg) ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 %i.bm
  %i.cj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ci) ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ce, i64 %i.bn
  %i.cl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ck) ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.bo
  %i.cn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cm) ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.bp
  %i.cp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.co) ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.bq
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.br
  %i.ct = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cs) ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.cf, <16 x i8> %i.cn, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cv = shufflevector <16 x i8> %i.cf, <16 x i8> %i.cn, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cw = shufflevector <16 x i8> %i.ch, <16 x i8> %i.cp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cx = shufflevector <16 x i8> %i.ch, <16 x i8> %i.cp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cy = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cz = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.da = shufflevector <16 x i8> %i.cl, <16 x i8> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.db = shufflevector <16 x i8> %i.cl, <16 x i8> %i.ct, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dc = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dd = shufflevector <16 x i8> %i.cu, <16 x i8> %i.cy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.de = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.df = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dg = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.di = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dk = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = shufflevector <16 x i8> %i.dc, <16 x i8> %i.dg, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dm = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dn = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.do = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dp = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dq = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dr = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ds = shl i64 %.05379.i, 7
  %i.dt = getelementptr i8, ptr %4, i64 %i.ds     ; 8 uses
  store <16 x i8> %i.dk, ptr %i.dt, align 1, !tbaa !7
  %.sroa.52.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <16 x i8> %i.dl, ptr %.sroa.52.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.53.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store <16 x i8> %i.dm, ptr %.sroa.53.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.54.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store <16 x i8> %i.dn, ptr %.sroa.54.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.55.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  store <16 x i8> %i.do, ptr %.sroa.55.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.56.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store <16 x i8> %i.dp, ptr %.sroa.56.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.57.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  store <16 x i8> %i.dq, ptr %.sroa.57.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.58.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <16 x i8> %i.dr, ptr %.sroa.58.384..sroa_idx.i, align 1, !tbaa !7
  %i.du = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.du, %i.b
  br i1 %exitcond89.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !100

bb.c:                                             ; preds = %bb.a
  %i.dv = lshr i64 %2, 5
  %i.dw = and i64 %i.dv, 72057594037927935        ; 4 uses
  %i.dx = shl nuw nsw i64 %i.dw, 5                ; 14 uses
  %i.dy = icmp samesign ult i64 %i.dx, %2
  br i1 %i.dy, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dz = shl i64 %3, 1                           ; 4 uses
  %i.ea = mul i64 %3, 3                           ; 4 uses
  %i.eb = shl nsw i64 %3, 2                       ; 4 uses
  %i.ec = mul nsw i64 %3, 5                       ; 4 uses
  %i.ed = mul nsw i64 %3, 6                       ; 4 uses
  %i.ee = mul nsw i64 %3, 7                       ; 4 uses
  %i.ef = sub nuw nsw i64 %2, %i.dx               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ef, 20
  br i1 %min.iters.check, label %.lr.ph.preheader226, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.eg = shl nuw i64 %i.dw, 8
  %scevgep = getelementptr i8, ptr %4, i64 %i.eg  ; 8 uses
  %i.eh = shl i64 %2, 3
  %scevgep106 = getelementptr i8, ptr %4, i64 %i.eh ; 8 uses
  %i.ei = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep107 = getelementptr i8, ptr %i.ei, i64 %i.ee
  %i.ej = getelementptr i8, ptr %0, i64 %2
  %scevgep108 = getelementptr i8, ptr %i.ej, i64 %i.ee
  %i.ek = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep109 = getelementptr i8, ptr %i.ek, i64 %i.ed
  %i.el = getelementptr i8, ptr %0, i64 %2
  %scevgep110 = getelementptr i8, ptr %i.el, i64 %i.ed
  %i.em = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep111 = getelementptr i8, ptr %i.em, i64 %i.ec
  %i.en = getelementptr i8, ptr %0, i64 %2
  %scevgep112 = getelementptr i8, ptr %i.en, i64 %i.ec
  %i.eo = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep113 = getelementptr i8, ptr %i.eo, i64 %i.eb
  %i.ep = getelementptr i8, ptr %0, i64 %2
  %scevgep114 = getelementptr i8, ptr %i.ep, i64 %i.eb
  %i.eq = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep115 = getelementptr i8, ptr %i.eq, i64 %i.ea
  %i.er = getelementptr i8, ptr %0, i64 %2
  %scevgep116 = getelementptr i8, ptr %i.er, i64 %i.ea
  %i.es = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep117 = getelementptr i8, ptr %i.es, i64 %i.dz
  %i.et = getelementptr i8, ptr %0, i64 %2
  %scevgep118 = getelementptr i8, ptr %i.et, i64 %i.dz
  %i.eu = getelementptr i8, ptr %0, i64 %3
  %scevgep119 = getelementptr i8, ptr %i.eu, i64 %i.dx
  %i.ev = getelementptr i8, ptr %0, i64 %3
  %scevgep120 = getelementptr i8, ptr %i.ev, i64 %2
  %scevgep121 = getelementptr i8, ptr %0, i64 %i.dx
  %scevgep122 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep, %scevgep108
  %bound1 = icmp ult ptr %scevgep107, %scevgep106
  %found.conflict = and i1 %bound0, %bound1
  %bound0123 = icmp ult ptr %scevgep, %scevgep110
  %bound1124 = icmp ult ptr %scevgep109, %scevgep106
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx = or i1 %found.conflict, %found.conflict125
  %bound0126 = icmp ult ptr %scevgep, %scevgep112
  %bound1127 = icmp ult ptr %scevgep111, %scevgep106
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx, %found.conflict128
  %bound0130 = icmp ult ptr %scevgep, %scevgep114
  %bound1131 = icmp ult ptr %scevgep113, %scevgep106
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %scevgep, %scevgep116
  %bound1135 = icmp ult ptr %scevgep115, %scevgep106
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %scevgep, %scevgep118
  %bound1139 = icmp ult ptr %scevgep117, %scevgep106
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %scevgep, %scevgep120
  %bound1143 = icmp ult ptr %scevgep119, %scevgep106
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  %bound0146 = icmp ult ptr %scevgep, %scevgep122
  %bound1147 = icmp ult ptr %scevgep121, %scevgep106
  %found.conflict148 = and i1 %bound0146, %bound1147
  %conflict.rdx149 = or i1 %conflict.rdx145, %found.conflict148
  br i1 %conflict.rdx149, label %.lr.ph.preheader226, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ew = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nsw i64 %i.ef, %i.ew               ; 2 uses
  %i.ex = add i64 %i.dx, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ey = add nuw i64 %i.dx, %index               ; 2 uses
  %i.ez = getelementptr i8, ptr %0, i64 %i.ey     ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.ez, align 1, !tbaa !7, !alias.scope !101
  %i.fa = getelementptr i8, ptr %i.ez, i64 %3
  %wide.load150 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !7, !alias.scope !104
  %i.fb = getelementptr i8, ptr %i.ez, i64 %i.dz
  %wide.load151 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !7, !alias.scope !106
  %i.fc = getelementptr i8, ptr %i.ez, i64 %i.ea
  %wide.load152 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !7, !alias.scope !108
  %i.fd = getelementptr i8, ptr %i.ez, i64 %i.eb
  %wide.load153 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !7, !alias.scope !110
  %i.fe = getelementptr i8, ptr %i.ez, i64 %i.ec
  %wide.load154 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !7, !alias.scope !112
  %i.ff = getelementptr i8, ptr %i.ez, i64 %i.ed
  %wide.load155 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !7, !alias.scope !114
  %i.fg = getelementptr i8, ptr %i.ez, i64 %i.ee
  %wide.load156 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !7, !alias.scope !116
  %i.fh = shl nsw i64 %i.ey, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %4, i64 %i.fh
  %i.fj = zext <4 x i8> %wide.load156 to <4 x i64>
  %i.fk = shl nuw <4 x i64> %i.fj, splat (i64 56)
  %i.fl = zext <4 x i8> %wide.load155 to <4 x i64>
  %i.fm = shl nuw nsw <4 x i64> %i.fl, splat (i64 48)
  %i.fn = or disjoint <4 x i64> %i.fk, %i.fm
  %i.fo = zext <4 x i8> %wide.load154 to <4 x i64>
  %i.fp = shl nuw nsw <4 x i64> %i.fo, splat (i64 40)
  %i.fq = or disjoint <4 x i64> %i.fn, %i.fp
  %i.fr = zext <4 x i8> %wide.load153 to <4 x i64>
  %i.fs = shl nuw nsw <4 x i64> %i.fr, splat (i64 32)
  %i.ft = or disjoint <4 x i64> %i.fq, %i.fs
  %i.fu = zext <4 x i8> %wide.load152 to <4 x i64>
  %i.fv = shl nuw nsw <4 x i64> %i.fu, splat (i64 24)
  %i.fw = or disjoint <4 x i64> %i.ft, %i.fv
  %i.fx = zext <4 x i8> %wide.load151 to <4 x i64>
  %i.fy = shl nuw nsw <4 x i64> %i.fx, splat (i64 16)
  %i.fz = zext <4 x i8> %wide.load150 to <4 x i64>
  %i.ga = shl nuw nsw <4 x i64> %i.fz, splat (i64 8)
  %i.gb = or disjoint <4 x i64> %i.fw, %i.fy
  %i.gc = zext <4 x i8> %wide.load to <4 x i64>
  %i.gd = or <4 x i64> %i.gb, %i.ga
  %i.ge = or <4 x i64> %i.gd, %i.gc
  store <4 x i64> %i.ge, ptr %i.fi, align 1, !alias.scope !118, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader226

.lr.ph.preheader226:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.dx, %vector.memcheck ], [ %i.dx, %.lr.ph.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.dw, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.gg = shl nsw i64 %3, 1
  %i.gh = mul nsw i64 %3, 3
  %i.gi = shl nsw i64 %3, 2
  %i.gj = mul nsw i64 %3, 5
  %i.gk = mul nsw i64 %3, 6
  %i.gl = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader226, %.lr.ph
  %.05979 = phi i64 [ %i.gw, %.lr.ph ], [ %.05979.ph, %.lr.ph.preheader226 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 8 uses
  %i.gm = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.gn = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.dz
  %i.go = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.ea
  %i.gp = load i8, ptr %gep.3, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.eb
  %i.gq = load i8, ptr %gep.4, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.ec
  %i.gr = load i8, ptr %gep.5, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.ed
  %i.gs = load i8, ptr %gep.6, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.ee
  %i.gt = load i8, ptr %gep.7, align 1, !tbaa !7
  %i.gu = shl nsw i64 %.05979, 3
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 %i.gu
  %.sroa.10100.0.insert.ext = zext i8 %i.gt to i64
  %.sroa.10100.0.insert.shift = shl nuw i64 %.sroa.10100.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.gs to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10100.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.899.0.insert.ext = zext i8 %i.gr to i64
  %.sroa.899.0.insert.shift = shl nuw nsw i64 %.sroa.899.0.insert.ext, 40
  %.sroa.899.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.899.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.gq to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.899.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.698.0.insert.ext = zext i8 %i.gp to i64
  %.sroa.698.0.insert.shift = shl nuw nsw i64 %.sroa.698.0.insert.ext, 24
  %.sroa.698.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.698.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.go to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.497.0.insert.ext = zext i8 %i.gn to i64
  %.sroa.497.0.insert.shift = shl nuw nsw i64 %.sroa.497.0.insert.ext, 8
  %.sroa.497.0.insert.mask = or disjoint i64 %.sroa.698.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.096.0.insert.ext = zext i8 %i.gm to i64
  %.sroa.096.0.insert.mask = or i64 %.sroa.497.0.insert.mask, %.sroa.497.0.insert.shift
  %.sroa.096.0.insert.insert = or i64 %.sroa.096.0.insert.mask, %.sroa.096.0.insert.ext
  store i64 %.sroa.096.0.insert.insert, ptr %i.gv, align 1
  %i.gw = add nuw nsw i64 %.05979, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gw, %2
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !122

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.ks, %.preheader.preheader ] ; 3 uses
  %i.gx = shl nuw nsw i64 %.05784, 5
  %i.gy = getelementptr i8, ptr %0, i64 %i.gx     ; 8 uses
  %i.gz = load <32 x i8>, ptr %i.gy, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gy, i64 %3
  %i.hb = load <32 x i8>, ptr %i.ha, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gy, i64 %i.gg
  %i.hd = load <32 x i8>, ptr %i.hc, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.he = getelementptr i8, ptr %i.gy, i64 %i.gh
  %i.hf = load <32 x i8>, ptr %i.he, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.gi
  %i.hh = load <32 x i8>, ptr %i.hg, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gy, i64 %i.gj
  %i.hj = load <32 x i8>, ptr %i.hi, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gy, i64 %i.gk
  %i.hl = load <32 x i8>, ptr %i.hk, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gy, i64 %i.gl
  %i.hn = load <32 x i8>, ptr %i.hm, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.ho = shufflevector <32 x i8> %i.gz, <32 x i8> %i.hh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hp = shufflevector <32 x i8> %i.gz, <32 x i8> %i.hh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hq = shufflevector <32 x i8> %i.ho, <32 x i8> %i.hp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.hr = bitcast <32 x i8> %i.ho to <8 x i32>
  %i.hs = bitcast <32 x i8> %i.hp to <8 x i32>
  %i.ht = shufflevector <8 x i32> %i.hr, <8 x i32> %i.hs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hu = shufflevector <32 x i8> %i.hb, <32 x i8> %i.hj, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hv = shufflevector <32 x i8> %i.hb, <32 x i8> %i.hj, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hw = shufflevector <32 x i8> %i.hu, <32 x i8> %i.hv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.hx = bitcast <32 x i8> %i.hu to <8 x i32>
  %i.hy = bitcast <32 x i8> %i.hv to <8 x i32>
  %i.hz = shufflevector <8 x i32> %i.hx, <8 x i32> %i.hy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ia = shufflevector <32 x i8> %i.hd, <32 x i8> %i.hl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ib = shufflevector <32 x i8> %i.hd, <32 x i8> %i.hl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ic = shufflevector <32 x i8> %i.ia, <32 x i8> %i.ib, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.id = bitcast <32 x i8> %i.ia to <8 x i32>
  %i.ie = bitcast <32 x i8> %i.ib to <8 x i32>
  %i.if = shufflevector <8 x i32> %i.id, <8 x i32> %i.ie, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ig = shufflevector <32 x i8> %i.hf, <32 x i8> %i.hn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ih = shufflevector <32 x i8> %i.hf, <32 x i8> %i.hn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ii = shufflevector <32 x i8> %i.ig, <32 x i8> %i.ih, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ij = bitcast <32 x i8> %i.ig to <8 x i32>
  %i.ik = bitcast <32 x i8> %i.ih to <8 x i32>
  %i.il = shufflevector <8 x i32> %i.ij, <8 x i32> %i.ik, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.im = shufflevector <32 x i8> %i.hq, <32 x i8> %i.ic, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.in = shufflevector <32 x i8> %i.hq, <32 x i8> %i.ic, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.io = shufflevector <32 x i8> %i.im, <32 x i8> %i.in, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ip = bitcast <32 x i8> %i.im to <8 x i32>
  %i.iq = bitcast <32 x i8> %i.in to <8 x i32>
  %i.ir = shufflevector <8 x i32> %i.ip, <8 x i32> %i.iq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.is = bitcast <8 x i32> %i.ht to <32 x i8>    ; 2 uses
  %i.it = bitcast <8 x i32> %i.if to <32 x i8>    ; 2 uses
  %i.iu = shufflevector <32 x i8> %i.is, <32 x i8> %i.it, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.iv = shufflevector <32 x i8> %i.is, <32 x i8> %i.it, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.iw = shufflevector <32 x i8> %i.iu, <32 x i8> %i.iv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ix = bitcast <32 x i8> %i.iu to <8 x i32>
  %i.iy = bitcast <32 x i8> %i.iv to <8 x i32>
  %i.iz = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ja = shufflevector <32 x i8> %i.hw, <32 x i8> %i.ii, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jb = shufflevector <32 x i8> %i.hw, <32 x i8> %i.ii, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jc = shufflevector <32 x i8> %i.ja, <32 x i8> %i.jb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jd = bitcast <32 x i8> %i.ja to <8 x i32>
  %i.je = bitcast <32 x i8> %i.jb to <8 x i32>
  %i.jf = shufflevector <8 x i32> %i.jd, <8 x i32> %i.je, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jg = bitcast <8 x i32> %i.hz to <32 x i8>    ; 2 uses
  %i.jh = bitcast <8 x i32> %i.il to <32 x i8>    ; 2 uses
  %i.ji = shufflevector <32 x i8> %i.jg, <32 x i8> %i.jh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jj = shufflevector <32 x i8> %i.jg, <32 x i8> %i.jh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jk = shufflevector <32 x i8> %i.ji, <32 x i8> %i.jj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jl = bitcast <32 x i8> %i.ji to <8 x i32>
  %i.jm = bitcast <32 x i8> %i.jj to <8 x i32>
  %i.jn = shufflevector <8 x i32> %i.jl, <8 x i32> %i.jm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jo = shufflevector <32 x i8> %i.io, <32 x i8> %i.jc, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jp = shufflevector <32 x i8> %i.io, <32 x i8> %i.jc, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jq = shufflevector <32 x i8> %i.jo, <32 x i8> %i.jp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.jr = bitcast <32 x i8> %i.jo to <8 x i32>
  %i.js = bitcast <32 x i8> %i.jp to <8 x i32>
  %i.jt = shufflevector <8 x i32> %i.jr, <8 x i32> %i.js, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ju = bitcast <8 x i32> %i.ir to <32 x i8>    ; 2 uses
  %i.jv = bitcast <8 x i32> %i.jf to <32 x i8>    ; 2 uses
  %i.jw = shufflevector <32 x i8> %i.ju, <32 x i8> %i.jv, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jx = shufflevector <32 x i8> %i.ju, <32 x i8> %i.jv, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
end_hunk_0
