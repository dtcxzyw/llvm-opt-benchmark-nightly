inline.NumInlined: 97
inline.NumDeleted: 36
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh:bb.a
  %wide.load109 = load <16 x i8>, ptr %i.dm, align 1, !tbaa !7, !alias.scope !29
  %wide.load110 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !7, !alias.scope !29
  %wide.load111 = load <16 x i8>, ptr %i.do, align 1, !tbaa !7, !alias.scope !29
  %wide.load112 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !7, !alias.scope !29
  %i.dq = shl nuw nsw i64 %i.dh, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 %i.dq ; 4 uses
  %i.ds = zext <16 x i8> %wide.load109 to <16 x i16>
  %i.dt = zext <16 x i8> %wide.load110 to <16 x i16>
  %i.du = zext <16 x i8> %wide.load111 to <16 x i16>
  %i.dv = zext <16 x i8> %wide.load112 to <16 x i16>
  %i.dw = shl nuw <16 x i16> %i.ds, splat (i16 8)
  %i.dx = shl nuw <16 x i16> %i.dt, splat (i16 8)
  %i.dy = shl nuw <16 x i16> %i.du, splat (i16 8)
  %i.dz = shl nuw <16 x i16> %i.dv, splat (i16 8)
  %i.ea = zext <16 x i8> %wide.load to <16 x i16>
  %i.eb = zext <16 x i8> %wide.load106 to <16 x i16>
  %i.ec = zext <16 x i8> %wide.load107 to <16 x i16>
  %i.ed = zext <16 x i8> %wide.load108 to <16 x i16>
  %i.ee = or disjoint <16 x i16> %i.dw, %i.ea
  %i.ef = or disjoint <16 x i16> %i.dx, %i.eb
  %i.eg = or disjoint <16 x i16> %i.dy, %i.ec
  %i.eh = or disjoint <16 x i16> %i.dz, %i.ed
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  store <16 x i16> %i.ee, ptr %i.dr, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.ef, ptr %i.ei, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.eg, ptr %i.ej, align 1, !alias.scope !31, !noalias !33
  store <16 x i16> %i.eh, ptr %i.ek, align 1, !alias.scope !31, !noalias !33
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader75.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf113 = and i64 %smax104, 7              ; 2 uses
  %n.vec114 = sub i64 %i.da, %n.mod.vf113         ; 2 uses
  %i.em = add i64 %i.cy, %n.vec114
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.en = add i64 %i.cy, %index115                ; 2 uses
  %i.eo = getelementptr i8, ptr %0, i64 %i.en     ; 2 uses
  %wide.load116 = load <8 x i8>, ptr %i.eo, align 1, !tbaa !7, !alias.scope !26
  %i.ep = getelementptr i8, ptr %i.eo, i64 %3
  %wide.load117 = load <8 x i8>, ptr %i.ep, align 1, !tbaa !7, !alias.scope !29
  %i.eq = shl nuw nsw i64 %i.en, 1
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 %i.eq
  %i.es = zext <8 x i8> %wide.load117 to <8 x i16>
  %i.et = shl nuw <8 x i16> %i.es, splat (i16 8)
  %i.eu = zext <8 x i8> %wide.load116 to <8 x i16>
  %i.ev = or disjoint <8 x i16> %i.et, %i.eu
  store <8 x i16> %i.ev, ptr %i.er, align 1, !alias.scope !31, !noalias !33
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.ew, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %n.mod.vf113, 0
  br i1 %cmp.n119, label %.preheader75.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05879.ph = phi i64 [ %i.cy, %iter.check ], [ %i.cy, %vector.memcheck ], [ %i.dg, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05879 = phi i64 [ %i.fb, %.lr.ph ], [ %.05879.ph, %.lr.ph.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05879 ; 2 uses
  %i.ex = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.ey = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.ez = shl nuw nsw i64 %.05879, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 %i.ez
  %.sroa.489.0.insert.ext = zext i8 %i.ey to i16
  %.sroa.489.0.insert.shift = shl nuw i16 %.sroa.489.0.insert.ext, 8
  %.sroa.088.0.insert.ext = zext i8 %i.ex to i16
  %.sroa.088.0.insert.insert = or disjoint i16 %.sroa.489.0.insert.shift, %.sroa.088.0.insert.ext
  store i16 %.sroa.088.0.insert.insert, ptr %i.fa, align 1
  %i.fb = add nuw nsw i64 %.05879, 1              ; 2 uses
  %i.fc = icmp slt i64 %i.fb, %2
  br i1 %i.fc, label %.lr.ph, label %.preheader75.preheader, !llvm.loop !36

.preheader75.preheader:                           ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.fd = icmp eq i64 %i.cx, 1
  br i1 %i.fd, label %.preheader75.epil.preheader, label %.preheader75.preheader.new

.preheader75.preheader.new:                       ; preds = %.preheader75.preheader
  %unroll_iter = and i64 %i.cx, 288230376151711742
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75, %.preheader75.preheader.new
  %.05782 = phi i64 [ 0, %.preheader75.preheader.new ], [ %i.gd, %.preheader75 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader75.preheader.new ], [ %niter.next.1, %.preheader75 ]
  %i.fe = shl i64 %.05782, 6
  %scevgep = getelementptr i8, ptr %4, i64 %i.fe  ; 2 uses
  %i.ff = shl nsw i64 %.05782, 5
  %i.fg = getelementptr i8, ptr %0, i64 %i.ff     ; 2 uses
  %i.fh = load <32 x i8>, ptr %i.fg, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 %3
  %i.fj = load <32 x i8>, ptr %i.fi, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fk = shufflevector <32 x i8> %i.fh, <32 x i8> %i.fj, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fl = shufflevector <32 x i8> %i.fh, <32 x i8> %i.fj, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fm = shufflevector <32 x i8> %i.fk, <32 x i8> %i.fl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fn = bitcast <32 x i8> %i.fk to <8 x i32>
  %i.fo = bitcast <32 x i8> %i.fl to <8 x i32>
  %i.fp = shufflevector <8 x i32> %i.fn, <8 x i32> %i.fo, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <32 x i8> %i.fm, ptr %scevgep, align 1, !tbaa !7
  %.sroa.8.64.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <8 x i32> %i.fp, ptr %.sroa.8.64.scevgep.sroa_idx, align 1, !tbaa !7
  %i.fq = or disjoint i64 %.05782, 1              ; 2 uses
  %i.fr = shl i64 %i.fq, 6
  %scevgep.1 = getelementptr i8, ptr %4, i64 %i.fr ; 2 uses
  %i.fs = shl nsw i64 %i.fq, 5
  %i.ft = getelementptr i8, ptr %0, i64 %i.fs     ; 2 uses
  %i.fu = load <32 x i8>, ptr %i.ft, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.ft, i64 %3
  %i.fw = load <32 x i8>, ptr %i.fv, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.fx = shufflevector <32 x i8> %i.fu, <32 x i8> %i.fw, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fy = shufflevector <32 x i8> %i.fu, <32 x i8> %i.fw, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fz = shufflevector <32 x i8> %i.fx, <32 x i8> %i.fy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.ga = bitcast <32 x i8> %i.fx to <8 x i32>
  %i.gb = bitcast <32 x i8> %i.fy to <8 x i32>
  %i.gc = shufflevector <8 x i32> %i.ga, <8 x i32> %i.gb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <32 x i8> %i.fz, ptr %scevgep.1, align 1, !tbaa !7
  %.sroa.8.64.scevgep.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %scevgep.1, i64 32
  store <8 x i32> %i.gc, ptr %.sroa.8.64.scevgep.sroa_idx.1, align 1, !tbaa !7
  %i.gd = add nuw nsw i64 %.05782, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa, label %.preheader75, !llvm.loop !42

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa: ; preds = %.preheader71.i
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader71.i.epil.preheader

.preheader71.i.epil.preheader:                    ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader71.i.preheader
  %.05577.i.epil.init = phi i64 [ 0, %.preheader71.i.preheader ], [ %i.cw, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod176 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.ge = shl nuw i64 %.05577.i.epil.init, 5
  %scevgep.i.epil = getelementptr i8, ptr %4, i64 %i.ge ; 2 uses
  %i.gf = shl nsw i64 %.05577.i.epil.init, 4
  %i.gg = getelementptr i8, ptr %0, i64 %i.gf     ; 2 uses
  %i.gh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gg) ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 %3
  %i.gj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gi) ; 2 uses
  %i.gk = shufflevector <16 x i8> %i.gh, <16 x i8> %i.gj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.gl = shufflevector <16 x i8> %i.gh, <16 x i8> %i.gj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.gk, ptr %scevgep.i.epil, align 1, !tbaa !7
  %.sroa.8.32.scevgep.sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %scevgep.i.epil, i64 16
  store <16 x i8> %i.gl, ptr %.sroa.8.32.scevgep.sroa_idx.i.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa: ; preds = %.preheader75
  %i.gm = and i64 %2, 32
  %lcmp.mod.not = icmp eq i64 %i.gm, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader75.epil.preheader

.preheader75.epil.preheader:                      ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa, %.preheader75.preheader
  %.05782.epil.init = phi i64 [ 0, %.preheader75.preheader ], [ %i.gd, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i64 %i.cx to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.gn = shl i64 %.05782.epil.init, 6
  %scevgep.epil = getelementptr i8, ptr %4, i64 %i.gn ; 2 uses
  %i.go = shl nsw i64 %.05782.epil.init, 5
  %i.gp = getelementptr i8, ptr %0, i64 %i.go     ; 2 uses
  %i.gq = load <32 x i8>, ptr %i.gp, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 %3
  %i.gs = load <32 x i8>, ptr %i.gr, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gt = shufflevector <32 x i8> %i.gq, <32 x i8> %i.gs, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gu = shufflevector <32 x i8> %i.gq, <32 x i8> %i.gs, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gv = shufflevector <32 x i8> %i.gt, <32 x i8> %i.gu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gw = bitcast <32 x i8> %i.gt to <8 x i32>
  %i.gx = bitcast <32 x i8> %i.gu to <8 x i32>
  %i.gy = shufflevector <8 x i32> %i.gw, <8 x i32> %i.gx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <32 x i8> %i.gv, ptr %scevgep.epil, align 1, !tbaa !7
  %.sroa.8.64.scevgep.sroa_idx.epil = getelementptr inbounds nuw i8, ptr %scevgep.epil, i64 32
  store <8 x i32> %i.gy, ptr %.sroa.8.64.scevgep.sroa_idx.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit: ; preds = %.preheader75.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa, %.preheader71.i.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader72.i
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
  %min.iters.check153 = icmp ult i64 %i.g, 24
  br i1 %min.iters.check153, label %.lr.ph.i.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.preheader.i
  %i.h = shl i64 %i.b, 6
  %scevgep127 = getelementptr i8, ptr %4, i64 %i.h ; 4 uses
  %i.i = shl i64 %2, 2
  %scevgep128 = getelementptr i8, ptr %4, i64 %i.i ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.c
  %scevgep129 = getelementptr i8, ptr %i.j, i64 %i.f
  %i.k = getelementptr i8, ptr %0, i64 %2
  %scevgep130 = getelementptr i8, ptr %i.k, i64 %i.f
  %i.l = getelementptr i8, ptr %0, i64 %i.c
  %scevgep131 = getelementptr i8, ptr %i.l, i64 %i.e
  %i.m = getelementptr i8, ptr %0, i64 %2
  %scevgep132 = getelementptr i8, ptr %i.m, i64 %i.e
  %i.n = getelementptr i8, ptr %0, i64 %3
  %scevgep133 = getelementptr i8, ptr %i.n, i64 %i.c
  %i.o = getelementptr i8, ptr %0, i64 %3
  %scevgep134 = getelementptr i8, ptr %i.o, i64 %2
  %scevgep135 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep136 = getelementptr i8, ptr %0, i64 %2
  %bound0137 = icmp ult ptr %scevgep127, %scevgep130
  %bound1138 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0140 = icmp ult ptr %scevgep127, %scevgep132
  %bound1141 = icmp ult ptr %scevgep131, %scevgep128
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %found.conflict139, %found.conflict142
  %bound0144 = icmp ult ptr %scevgep127, %scevgep134
  %bound1145 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %scevgep127, %scevgep136
  %bound1149 = icmp ult ptr %scevgep135, %scevgep128
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  br i1 %conflict.rdx151, label %.lr.ph.i.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck126
  %n.mod.vf155 = and i64 %2, 7                    ; 2 uses
  %n.vec156 = sub i64 %i.g, %n.mod.vf155          ; 2 uses
  %i.p = add i64 %i.c, %n.vec156
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.q = add i64 %i.c, %index158                  ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q       ; 4 uses
  %wide.load159 = load <8 x i8>, ptr %i.r, align 1, !tbaa !7, !alias.scope !43
  %i.s = getelementptr i8, ptr %i.r, i64 %3
  %wide.load160 = load <8 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !46
  %i.t = getelementptr i8, ptr %i.r, i64 %i.e
  %wide.load161 = load <8 x i8>, ptr %i.t, align 1, !tbaa !7, !alias.scope !48
  %i.u = getelementptr i8, ptr %i.r, i64 %i.f
  %wide.load162 = load <8 x i8>, ptr %i.u, align 1, !tbaa !7, !alias.scope !50
  %i.v = shl nsw i64 %i.q, 2
  %i.w = getelementptr inbounds i8, ptr %4, i64 %i.v
  %i.x = zext <8 x i8> %wide.load162 to <8 x i32>
  %i.y = shl nuw <8 x i32> %i.x, splat (i32 24)
  %i.z = zext <8 x i8> %wide.load161 to <8 x i32>
  %i.aa = shl nuw nsw <8 x i32> %i.z, splat (i32 16)
  %i.ab = zext <8 x i8> %wide.load160 to <8 x i32>
  %i.ac = shl nuw nsw <8 x i32> %i.ab, splat (i32 8)
  %i.ad = zext <8 x i8> %wide.load159 to <8 x i32>
  %i.ae = or disjoint <8 x i32> %i.ac, %i.ad
  %i.af = or disjoint <8 x i32> %i.ae, %i.aa
  %i.ag = or disjoint <8 x i32> %i.af, %i.y
  store <8 x i32> %i.ag, ptr %i.w, align 1, !alias.scope !52, !noalias !54
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ah, label %middle.block164, label %vector.body157, !llvm.loop !55

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %n.mod.vf155, 0
  br i1 %cmp.n165, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck126, %.lr.ph.preheader.i, %middle.block164
  %.05074.i.ph = phi i64 [ %i.c, %vector.memcheck126 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.p, %middle.block164 ] ; 6 uses
  %i.ai = sub i64 %2, %.05074.i.ph
  %.neg171 = add i64 %.05074.i.ph, 1
  %xtraiter169 = and i64 %i.ai, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05074.i.ph ; 4 uses
  %i.aj = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.ak = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  %i.al = load i8, ptr %gep.2.i.prol, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.f
  %i.am = load i8, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.an = shl nsw i64 %.05074.i.ph, 2
  %i.ao = getelementptr inbounds i8, ptr %4, i64 %i.an
  %.sroa.690.0.insert.ext.i.prol = zext i8 %i.am to i32
  %.sroa.690.0.insert.shift.i.prol = shl nuw i32 %.sroa.690.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i.prol = zext i8 %i.al to i32
  %.sroa.5.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.prol, 16
  %.sroa.489.0.insert.ext.i.prol = zext i8 %i.ak to i32
  %.sroa.489.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.prol, 8
  %.sroa.088.0.insert.ext.i.prol = zext i8 %i.aj to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.shift.i.prol, %.sroa.088.0.insert.ext.i.prol
  %.sroa.489.0.insert.insert.i.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i.prol
  %.sroa.088.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.insert.i.prol, %.sroa.690.0.insert.shift.i.prol
  store i32 %.sroa.088.0.insert.insert.i.prol, ptr %i.ao, align 1
  %i.ap = add nsw i64 %.05074.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05074.i.unr = phi i64 [ %.05074.i.ph, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %i.aq = icmp eq i64 %2, %.neg171
  br i1 %i.aq, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block164, %bb.b
  %i.ar = icmp sgt i64 %2, 15
  br i1 %i.ar, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.as = shl nsw i64 %3, 1
  %i.at = mul nsw i64 %3, 3
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05074.i = phi i64 [ %i.bh, %.lr.ph.i ], [ %.05074.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05074.i ; 4 uses
  %i.au = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.av = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.aw = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.ax = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %i.ay = shl nsw i64 %.05074.i, 2
  %i.az = getelementptr inbounds i8, ptr %4, i64 %i.ay
  %.sroa.690.0.insert.ext.i = zext i8 %i.ax to i32
  %.sroa.690.0.insert.shift.i = shl nuw i32 %.sroa.690.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.aw to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.489.0.insert.ext.i = zext i8 %i.av to i32
  %.sroa.489.0.insert.shift.i = shl nuw nsw i32 %.sroa.489.0.insert.ext.i, 8
  %.sroa.088.0.insert.ext.i = zext i8 %i.au to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.shift.i, %.sroa.088.0.insert.ext.i
  %.sroa.489.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.088.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.insert.i, %.sroa.690.0.insert.shift.i
  store i32 %.sroa.088.0.insert.insert.i, ptr %i.az, align 1
  %i.ba = add nsw i64 %.05074.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.ba ; 4 uses
  %i.bb = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.bc = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %gep.2.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.e
  %i.bd = load i8, ptr %gep.2.i.1, align 1, !tbaa !7
  %gep.3.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.f
  %i.be = load i8, ptr %gep.3.i.1, align 1, !tbaa !7
  %i.bf = shl nsw i64 %i.ba, 2
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.bf
  %.sroa.690.0.insert.ext.i.1 = zext i8 %i.be to i32
  %.sroa.690.0.insert.shift.i.1 = shl nuw i32 %.sroa.690.0.insert.ext.i.1, 24
  %.sroa.5.0.insert.ext.i.1 = zext i8 %i.bd to i32
  %.sroa.5.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.1, 16
  %.sroa.489.0.insert.ext.i.1 = zext i8 %i.bc to i32
  %.sroa.489.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.1, 8
  %.sroa.088.0.insert.ext.i.1 = zext i8 %i.bb to i32
  %.sroa.5.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.shift.i.1, %.sroa.088.0.insert.ext.i.1
  %.sroa.489.0.insert.insert.i.1 = or disjoint i32 %.sroa.5.0.insert.insert.i.1, %.sroa.5.0.insert.shift.i.1
  %.sroa.088.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.insert.i.1, %.sroa.690.0.insert.shift.i.1
  store i32 %.sroa.088.0.insert.insert.i.1, ptr %i.bg, align 1
  %i.bh = add nsw i64 %.05074.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not.i.1, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !56

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05579.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ca, %.preheader.preheader.i ] ; 3 uses
  %i.bi = shl i64 %.05579.i, 6
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.bi ; 4 uses
  %i.bj = shl nsw i64 %.05579.i, 4
  %i.bk = getelementptr i8, ptr %0, i64 %i.bj     ; 4 uses
  %i.bl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bk) ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bk, i64 %3
  %i.bn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bm) ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.as
  %i.bp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bo) ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bk, i64 %i.at
  %i.br = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bq) ; 2 uses
  %i.bs = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bl, <16 x i8> %i.bp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bn, <16 x i8> %i.br, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bv = shufflevector <16 x i8> %i.bn, <16 x i8> %i.br, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bx = shufflevector <16 x i8> %i.bs, <16 x i8> %i.bu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.by = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bz = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bw, ptr %scevgep.i, align 1, !tbaa !7
  %.sroa.20.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store <16 x i8> %i.bx, ptr %.sroa.20.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.21.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  store <16 x i8> %i.by, ptr %.sroa.21.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.22.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 48
  store <16 x i8> %i.bz, ptr %.sroa.22.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %i.ca = add nuw nsw i64 %.05579.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.ca, %i.b
  br i1 %exitcond87.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !57

bb.c:                                             ; preds = %bb.a
  %i.cb = lshr i64 %2, 5
  %i.cc = and i64 %i.cb, 144115188075855871       ; 4 uses
  %i.cd = shl nuw nsw i64 %i.cc, 5                ; 10 uses
  %i.ce = icmp samesign ult i64 %i.cd, %2
  br i1 %i.ce, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.cf = shl nsw i64 %3, 1                       ; 6 uses
  %i.cg = mul nsw i64 %3, 3                       ; 6 uses
  %i.ch = sub nuw nsw i64 %2, %i.cd               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ch, 24
  br i1 %min.iters.check, label %.lr.ph.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ci = shl nuw i64 %i.cc, 7
  %scevgep102 = getelementptr i8, ptr %4, i64 %i.ci ; 4 uses
  %i.cj = shl i64 %2, 2
  %scevgep103 = getelementptr i8, ptr %4, i64 %i.cj ; 4 uses
  %i.ck = getelementptr i8, ptr %0, i64 %i.cd
  %scevgep104 = getelementptr i8, ptr %i.ck, i64 %i.cg
  %i.cl = getelementptr i8, ptr %0, i64 %2
  %scevgep105 = getelementptr i8, ptr %i.cl, i64 %i.cg
  %i.cm = getelementptr i8, ptr %0, i64 %i.cd
  %scevgep106 = getelementptr i8, ptr %i.cm, i64 %i.cf
  %i.cn = getelementptr i8, ptr %0, i64 %2
  %scevgep107 = getelementptr i8, ptr %i.cn, i64 %i.cf
  %i.co = getelementptr i8, ptr %0, i64 %3
  %scevgep108 = getelementptr i8, ptr %i.co, i64 %i.cd
  %i.cp = getelementptr i8, ptr %0, i64 %3
  %scevgep109 = getelementptr i8, ptr %i.cp, i64 %2
  %scevgep110 = getelementptr i8, ptr %0, i64 %i.cd
  %scevgep111 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep102, %scevgep105
  %bound1 = icmp ult ptr %scevgep104, %scevgep103
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %scevgep102, %scevgep107
  %bound1113 = icmp ult ptr %scevgep106, %scevgep103
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx = or i1 %found.conflict, %found.conflict114
  %bound0115 = icmp ult ptr %scevgep102, %scevgep109
  %bound1116 = icmp ult ptr %scevgep108, %scevgep103
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx, %found.conflict117
  %bound0119 = icmp ult ptr %scevgep102, %scevgep111
  %bound1120 = icmp ult ptr %scevgep110, %scevgep103
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  br i1 %conflict.rdx122, label %.lr.ph.preheader168, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %2, 7                       ; 2 uses
  %n.vec = sub nsw i64 %i.ch, %n.mod.vf           ; 2 uses
  %i.cq = add i64 %i.cd, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cr = add i64 %i.cd, %index                   ; 2 uses
  %i.cs = getelementptr i8, ptr %0, i64 %i.cr     ; 4 uses
  %wide.load = load <8 x i8>, ptr %i.cs, align 1, !tbaa !7, !alias.scope !58
  %i.ct = getelementptr i8, ptr %i.cs, i64 %3
  %wide.load123 = load <8 x i8>, ptr %i.ct, align 1, !tbaa !7, !alias.scope !61
  %i.cu = getelementptr i8, ptr %i.cs, i64 %i.cf
  %wide.load124 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !7, !alias.scope !63
  %i.cv = getelementptr i8, ptr %i.cs, i64 %i.cg
  %wide.load125 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !7, !alias.scope !65
  %i.cw = shl nsw i64 %i.cr, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 %i.cw
  %i.cy = zext <8 x i8> %wide.load125 to <8 x i32>
  %i.cz = shl nuw <8 x i32> %i.cy, splat (i32 24)
  %i.da = zext <8 x i8> %wide.load124 to <8 x i32>
  %i.db = shl nuw nsw <8 x i32> %i.da, splat (i32 16)
  %i.dc = or disjoint <8 x i32> %i.cz, %i.db
  %i.dd = zext <8 x i8> %wide.load123 to <8 x i32>
  %i.de = shl nuw nsw <8 x i32> %i.dd, splat (i32 8)
  %i.df = or disjoint <8 x i32> %i.dc, %i.de
  %i.dg = zext <8 x i8> %wide.load to <8 x i32>
  %i.dh = or disjoint <8 x i32> %i.df, %i.dg
  store <8 x i32> %i.dh, ptr %i.cx, align 1, !alias.scope !67, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05879.ph = phi i64 [ %i.cd, %vector.memcheck ], [ %i.cd, %.lr.ph.preheader ], [ %i.cq, %middle.block ] ; 6 uses
  %i.dj = sub i64 %2, %.05879.ph
  %.neg = add i64 %.05879.ph, 1
  %xtraiter = and i64 %i.dj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader168
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05879.ph ; 4 uses
  %i.dk = load i8, ptr %invariant.gep.prol, align 1, !tbaa !7
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.dl = load i8, ptr %gep.1.prol, align 1, !tbaa !7
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cf
  %i.dm = load i8, ptr %gep.2.prol, align 1, !tbaa !7
  %gep.3.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cg
  %i.dn = load i8, ptr %gep.3.prol, align 1, !tbaa !7
  %i.do = shl nsw i64 %.05879.ph, 2
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 %i.do
  %.sroa.696.0.insert.ext.prol = zext i8 %i.dn to i32
  %.sroa.696.0.insert.shift.prol = shl nuw i32 %.sroa.696.0.insert.ext.prol, 24
  %.sroa.5.0.insert.ext.prol = zext i8 %i.dm to i32
  %.sroa.5.0.insert.shift.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.prol, 16
  %.sroa.5.0.insert.insert.prol = or disjoint i32 %.sroa.696.0.insert.shift.prol, %.sroa.5.0.insert.shift.prol
  %.sroa.495.0.insert.ext.prol = zext i8 %i.dl to i32
  %.sroa.495.0.insert.shift.prol = shl nuw nsw i32 %.sroa.495.0.insert.ext.prol, 8
  %.sroa.495.0.insert.insert.prol = or disjoint i32 %.sroa.5.0.insert.insert.prol, %.sroa.495.0.insert.shift.prol
  %.sroa.094.0.insert.ext.prol = zext i8 %i.dk to i32
  %.sroa.094.0.insert.insert.prol = or disjoint i32 %.sroa.495.0.insert.insert.prol, %.sroa.094.0.insert.ext.prol
  store i32 %.sroa.094.0.insert.insert.prol, ptr %i.dp, align 1
  %i.dq = add nuw nsw i64 %.05879.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader168
  %.05879.unr = phi i64 [ %.05879.ph, %.lr.ph.preheader168 ], [ %i.dq, %.lr.ph.prol ]
  %i.dr = icmp eq i64 %2, %.neg
  br i1 %i.dr, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.ds = shl nsw i64 %3, 1
  %i.dt = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05879 = phi i64 [ %i.eh, %.lr.ph ], [ %.05879.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05879 ; 4 uses
  %i.du = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.dv = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.cf
  %i.dw = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.cg
  %i.dx = load i8, ptr %gep.3, align 1, !tbaa !7
  %i.dy = shl nsw i64 %.05879, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 %i.dy
  %.sroa.696.0.insert.ext = zext i8 %i.dx to i32
  %.sroa.696.0.insert.shift = shl nuw i32 %.sroa.696.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.dw to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.696.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.495.0.insert.ext = zext i8 %i.dv to i32
  %.sroa.495.0.insert.shift = shl nuw nsw i32 %.sroa.495.0.insert.ext, 8
  %.sroa.495.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.495.0.insert.shift
  %.sroa.094.0.insert.ext = zext i8 %i.du to i32
  %.sroa.094.0.insert.insert = or disjoint i32 %.sroa.495.0.insert.insert, %.sroa.094.0.insert.ext
  store i32 %.sroa.094.0.insert.insert, ptr %i.dz, align 1
  %i.ea = add nuw nsw i64 %.05879, 1              ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.ea ; 4 uses
  %i.eb = load i8, ptr %invariant.gep.1, align 1, !tbaa !7
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.ec = load i8, ptr %gep.1.1, align 1, !tbaa !7
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cf
  %i.ed = load i8, ptr %gep.2.1, align 1, !tbaa !7
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cg
  %i.ee = load i8, ptr %gep.3.1, align 1, !tbaa !7
  %i.ef = shl nsw i64 %i.ea, 2
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ef
  %.sroa.696.0.insert.ext.1 = zext i8 %i.ee to i32
  %.sroa.696.0.insert.shift.1 = shl nuw i32 %.sroa.696.0.insert.ext.1, 24
  %.sroa.5.0.insert.ext.1 = zext i8 %i.ed to i32
  %.sroa.5.0.insert.shift.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.1, 16
  %.sroa.5.0.insert.insert.1 = or disjoint i32 %.sroa.696.0.insert.shift.1, %.sroa.5.0.insert.shift.1
  %.sroa.495.0.insert.ext.1 = zext i8 %i.ec to i32
  %.sroa.495.0.insert.shift.1 = shl nuw nsw i32 %.sroa.495.0.insert.ext.1, 8
  %.sroa.495.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.insert.1, %.sroa.495.0.insert.shift.1
  %.sroa.094.0.insert.ext.1 = zext i8 %i.eb to i32
  %.sroa.094.0.insert.insert.1 = or disjoint i32 %.sroa.495.0.insert.insert.1, %.sroa.094.0.insert.ext.1
  store i32 %.sroa.094.0.insert.insert.1, ptr %i.eg, align 1
  %i.eh = add nuw nsw i64 %.05879, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.eh, %2
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !71

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.fs, %.preheader.preheader ] ; 3 uses
  %i.ei = shl nuw i64 %.05784, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.ei  ; 4 uses
  %i.ej = shl nsw i64 %.05784, 5
  %i.ek = getelementptr i8, ptr %0, i64 %i.ej     ; 4 uses
  %i.el = load <32 x i8>, ptr %i.ek, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.em = getelementptr i8, ptr %i.ek, i64 %3
  %i.en = load <32 x i8>, ptr %i.em, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ek, i64 %i.ds
  %i.ep = load <32 x i8>, ptr %i.eo, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ek, i64 %i.dt
  %i.er = load <32 x i8>, ptr %i.eq, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.es = shufflevector <32 x i8> %i.el, <32 x i8> %i.ep, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.et = shufflevector <32 x i8> %i.el, <32 x i8> %i.ep, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.eu = shufflevector <32 x i8> %i.es, <32 x i8> %i.et, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ev = bitcast <32 x i8> %i.es to <8 x i32>
  %i.ew = bitcast <32 x i8> %i.et to <8 x i32>
  %i.ex = shufflevector <8 x i32> %i.ev, <8 x i32> %i.ew, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ey = shufflevector <32 x i8> %i.en, <32 x i8> %i.er, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ez = shufflevector <32 x i8> %i.en, <32 x i8> %i.er, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fa = shufflevector <32 x i8> %i.ey, <32 x i8> %i.ez, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fb = bitcast <32 x i8> %i.ey to <8 x i32>
  %i.fc = bitcast <32 x i8> %i.ez to <8 x i32>
  %i.fd = shufflevector <8 x i32> %i.fb, <8 x i32> %i.fc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fe = shufflevector <32 x i8> %i.eu, <32 x i8> %i.fa, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ff = shufflevector <32 x i8> %i.eu, <32 x i8> %i.fa, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fg = shufflevector <32 x i8> %i.fe, <32 x i8> %i.ff, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fh = bitcast <32 x i8> %i.fe to <8 x i32>
  %i.fi = bitcast <32 x i8> %i.ff to <8 x i32>
  %i.fj = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fk = bitcast <8 x i32> %i.ex to <32 x i8>    ; 2 uses
  %i.fl = bitcast <8 x i32> %i.fd to <32 x i8>    ; 2 uses
  %i.fm = shufflevector <32 x i8> %i.fk, <32 x i8> %i.fl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fn = shufflevector <32 x i8> %i.fk, <32 x i8> %i.fl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fo = shufflevector <32 x i8> %i.fm, <32 x i8> %i.fn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fp = bitcast <32 x i8> %i.fm to <8 x i32>
  %i.fq = bitcast <32 x i8> %i.fn to <8 x i32>
  %i.fr = shufflevector <8 x i32> %i.fp, <8 x i32> %i.fq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <32 x i8> %i.fg, ptr %scevgep, align 1, !tbaa !7
  %.sroa.20.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <8 x i32> %i.fj, ptr %.sroa.20.256.scevgep.sroa_idx, align 1, !tbaa !7
  %.sroa.21.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 64
  store <32 x i8> %i.fo, ptr %.sroa.21.256.scevgep.sroa_idx, align 1, !tbaa !7
  %.sroa.22.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 96
  store <8 x i32> %i.fr, ptr %.sroa.22.256.scevgep.sroa_idx, align 1, !tbaa !7
  %i.fs = add nuw nsw i64 %.05784, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.fs, %i.cc
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
  %min.iters.check209 = icmp ult i64 %i.k, 20
  br i1 %min.iters.check209, label %.lr.ph.i.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.preheader.i
  %i.l = shl i64 %i.b, 7
  %scevgep159 = getelementptr i8, ptr %4, i64 %i.l ; 8 uses
  %i.m = shl i64 %2, 3
  %scevgep160 = getelementptr i8, ptr %4, i64 %i.m ; 8 uses
  %i.n = getelementptr i8, ptr %0, i64 %i.c
  %scevgep161 = getelementptr i8, ptr %i.n, i64 %i.j
  %i.o = getelementptr i8, ptr %0, i64 %2
  %scevgep162 = getelementptr i8, ptr %i.o, i64 %i.j
  %i.p = getelementptr i8, ptr %0, i64 %i.c
  %scevgep163 = getelementptr i8, ptr %i.p, i64 %i.i
  %i.q = getelementptr i8, ptr %0, i64 %2
  %scevgep164 = getelementptr i8, ptr %i.q, i64 %i.i
  %i.r = getelementptr i8, ptr %0, i64 %i.c
  %scevgep165 = getelementptr i8, ptr %i.r, i64 %i.h
  %i.s = getelementptr i8, ptr %0, i64 %2
  %scevgep166 = getelementptr i8, ptr %i.s, i64 %i.h
  %i.t = getelementptr i8, ptr %0, i64 %i.c
  %scevgep167 = getelementptr i8, ptr %i.t, i64 %i.g
  %i.u = getelementptr i8, ptr %0, i64 %2
  %scevgep168 = getelementptr i8, ptr %i.u, i64 %i.g
  %i.v = getelementptr i8, ptr %0, i64 %i.c
  %scevgep169 = getelementptr i8, ptr %i.v, i64 %i.f
  %i.w = getelementptr i8, ptr %0, i64 %2
  %scevgep170 = getelementptr i8, ptr %i.w, i64 %i.f
  %i.x = getelementptr i8, ptr %0, i64 %i.c
  %scevgep171 = getelementptr i8, ptr %i.x, i64 %i.e
  %i.y = getelementptr i8, ptr %0, i64 %2
  %scevgep172 = getelementptr i8, ptr %i.y, i64 %i.e
  %i.z = getelementptr i8, ptr %0, i64 %3
  %scevgep173 = getelementptr i8, ptr %i.z, i64 %i.c
  %i.aa = getelementptr i8, ptr %0, i64 %3
  %scevgep174 = getelementptr i8, ptr %i.aa, i64 %2
  %scevgep175 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep176 = getelementptr i8, ptr %0, i64 %2
  %bound0177 = icmp ult ptr %scevgep159, %scevgep162
  %bound1178 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict179 = and i1 %bound0177, %bound1178
  %bound0180 = icmp ult ptr %scevgep159, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep160
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %found.conflict179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep159, %scevgep166
  %bound1185 = icmp ult ptr %scevgep165, %scevgep160
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx187 = or i1 %conflict.rdx183, %found.conflict186
  %bound0188 = icmp ult ptr %scevgep159, %scevgep168
  %bound1189 = icmp ult ptr %scevgep167, %scevgep160
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx191 = or i1 %conflict.rdx187, %found.conflict190
  %bound0192 = icmp ult ptr %scevgep159, %scevgep170
  %bound1193 = icmp ult ptr %scevgep169, %scevgep160
  %found.conflict194 = and i1 %bound0192, %bound1193
  %conflict.rdx195 = or i1 %conflict.rdx191, %found.conflict194
  %bound0196 = icmp ult ptr %scevgep159, %scevgep172
  %bound1197 = icmp ult ptr %scevgep171, %scevgep160
  %found.conflict198 = and i1 %bound0196, %bound1197
  %conflict.rdx199 = or i1 %conflict.rdx195, %found.conflict198
  %bound0200 = icmp ult ptr %scevgep159, %scevgep174
  %bound1201 = icmp ult ptr %scevgep173, %scevgep160
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %conflict.rdx199, %found.conflict202
  %bound0204 = icmp ult ptr %scevgep159, %scevgep176
  %bound1205 = icmp ult ptr %scevgep175, %scevgep160
  %found.conflict206 = and i1 %bound0204, %bound1205
  %conflict.rdx207 = or i1 %conflict.rdx203, %found.conflict206
  br i1 %conflict.rdx207, label %.lr.ph.i.preheader, label %vector.ph210

vector.ph210:                                     ; preds = %vector.memcheck158
  %n.mod.vf211 = and i64 %2, 3                    ; 2 uses
  %n.vec212 = sub i64 %i.k, %n.mod.vf211          ; 2 uses
  %i.ab = add i64 %i.c, %n.vec212
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph210
  %index214 = phi i64 [ 0, %vector.ph210 ], [ %index.next223, %vector.body213 ] ; 2 uses
  %i.ac = add i64 %i.c, %index214                 ; 2 uses
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac     ; 8 uses
  %wide.load215 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !7, !alias.scope !78
  %i.ae = getelementptr i8, ptr %i.ad, i64 %3
  %wide.load216 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !81
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.e
  %wide.load217 = load <4 x i8>, ptr %i.af, align 1, !tbaa !7, !alias.scope !83
  %i.ag = getelementptr i8, ptr %i.ad, i64 %i.f
  %wide.load218 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !7, !alias.scope !85
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.g
  %wide.load219 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !7, !alias.scope !87
  %i.ai = getelementptr i8, ptr %i.ad, i64 %i.h
  %wide.load220 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !89
  %i.aj = getelementptr i8, ptr %i.ad, i64 %i.i
  %wide.load221 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !7, !alias.scope !91
  %i.ak = getelementptr i8, ptr %i.ad, i64 %i.j
  %wide.load222 = load <4 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !93
  %i.al = shl nsw i64 %i.ac, 3
  %i.am = getelementptr inbounds i8, ptr %4, i64 %i.al
  %i.an = zext <4 x i8> %wide.load222 to <4 x i64>
  %i.ao = shl nuw <4 x i64> %i.an, splat (i64 56)
  %i.ap = zext <4 x i8> %wide.load221 to <4 x i64>
  %i.aq = shl nuw nsw <4 x i64> %i.ap, splat (i64 48)
  %i.ar = zext <4 x i8> %wide.load220 to <4 x i64>
  %i.as = shl nuw nsw <4 x i64> %i.ar, splat (i64 40)
  %i.at = zext <4 x i8> %wide.load219 to <4 x i64>
  %i.au = shl nuw nsw <4 x i64> %i.at, splat (i64 32)
  %i.av = zext <4 x i8> %wide.load218 to <4 x i64>
  %i.aw = shl nuw nsw <4 x i64> %i.av, splat (i64 24)
  %i.ax = zext <4 x i8> %wide.load217 to <4 x i64>
  %i.ay = shl nuw nsw <4 x i64> %i.ax, splat (i64 16)
  %i.az = zext <4 x i8> %wide.load216 to <4 x i64>
  %i.ba = shl nuw nsw <4 x i64> %i.az, splat (i64 8)
  %i.bb = zext <4 x i8> %wide.load215 to <4 x i64>
  %i.bc = or disjoint <4 x i64> %i.ba, %i.bb
  %i.bd = or disjoint <4 x i64> %i.bc, %i.ay
  %i.be = or disjoint <4 x i64> %i.bd, %i.aw
  %i.bf = or disjoint <4 x i64> %i.be, %i.au
  %i.bg = or <4 x i64> %i.bf, %i.as
  %i.bh = or <4 x i64> %i.bg, %i.aq
  %i.bi = or <4 x i64> %i.bh, %i.ao
  store <4 x i64> %i.bi, ptr %i.am, align 1, !alias.scope !95, !noalias !97
  %index.next223 = add nuw i64 %index214, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next223, %n.vec212
  br i1 %i.bj, label %middle.block224, label %vector.body213, !llvm.loop !98

middle.block224:                                  ; preds = %vector.body213
  %cmp.n225 = icmp eq i64 %n.mod.vf211, 0
  br i1 %cmp.n225, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck158, %.lr.ph.preheader.i, %middle.block224
  %.05074.i.ph = phi i64 [ %i.c, %vector.memcheck158 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.ab, %middle.block224 ]
  br label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i, %middle.block224, %bb.b
  %i.bk = icmp sgt i64 %2, 15
  br i1 %i.bk, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.bl = shl nsw i64 %3, 1
  %i.bm = mul nsw i64 %3, 3
  %i.bn = shl nsw i64 %3, 2
  %i.bo = mul nsw i64 %3, 5
  %i.bp = mul nsw i64 %3, 6
  %i.bq = mul nsw i64 %3, 7
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05074.i = phi i64 [ %i.cb, %.lr.ph.i ], [ %.05074.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05074.i ; 8 uses
  %i.br = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bs = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.bt = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.bu = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.g
  %i.bv = load i8, ptr %gep.4.i, align 1, !tbaa !7
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.h
  %i.bw = load i8, ptr %gep.5.i, align 1, !tbaa !7
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.i
  %i.bx = load i8, ptr %gep.6.i, align 1, !tbaa !7
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.j
  %i.by = load i8, ptr %gep.7.i, align 1, !tbaa !7
  %i.bz = shl nsw i64 %.05074.i, 3
  %i.ca = getelementptr inbounds i8, ptr %4, i64 %i.bz
  %.sroa.1094.0.insert.ext.i = zext i8 %i.by to i64
  %.sroa.1094.0.insert.shift.i = shl nuw i64 %.sroa.1094.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.bx to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.893.0.insert.ext.i = zext i8 %i.bw to i64
  %.sroa.893.0.insert.shift.i = shl nuw nsw i64 %.sroa.893.0.insert.ext.i, 40
  %.sroa.7.0.insert.ext.i = zext i8 %i.bv to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.692.0.insert.ext.i = zext i8 %i.bu to i64
  %.sroa.692.0.insert.shift.i = shl nuw nsw i64 %.sroa.692.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.bt to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.491.0.insert.ext.i = zext i8 %i.bs to i64
  %.sroa.491.0.insert.shift.i = shl nuw nsw i64 %.sroa.491.0.insert.ext.i, 8
  %.sroa.090.0.insert.ext.i = zext i8 %i.br to i64
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.491.0.insert.shift.i, %.sroa.090.0.insert.ext.i
  %.sroa.893.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.893.0.insert.insert.i, %.sroa.692.0.insert.shift.i
  %.sroa.692.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.491.0.insert.mask.i = or i64 %.sroa.692.0.insert.insert.i, %.sroa.893.0.insert.shift.i
  %.sroa.090.0.insert.mask.i = or i64 %.sroa.491.0.insert.mask.i, %.sroa.9.0.insert.shift.i
  %.sroa.090.0.insert.insert.i = or i64 %.sroa.090.0.insert.mask.i, %.sroa.1094.0.insert.shift.i
  store i64 %.sroa.090.0.insert.insert.i, ptr %i.ca, align 1
  %i.cb = add nsw i64 %.05074.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cb, %2
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !99

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05579.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ds, %.preheader.preheader.i ] ; 3 uses
  %i.cc = shl i64 %.05579.i, 7
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.cc ; 8 uses
  %i.cd = shl nsw i64 %.05579.i, 4
  %i.ce = getelementptr i8, ptr %0, i64 %i.cd     ; 8 uses
  %i.cf = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ce) ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 %3
  %i.ch = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cg) ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 %i.bl
  %i.cj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ci) ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ce, i64 %i.bm
  %i.cl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ck) ; 2 uses
  %i.cm = getelementptr i8, ptr %i.ce, i64 %i.bn
  %i.cn = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cm) ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.bo
  %i.cp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.co) ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ce, i64 %i.bp
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ce, i64 %i.bq
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
  store <16 x i8> %i.dk, ptr %scevgep.i, align 1, !tbaa !7
  %.sroa.52.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store <16 x i8> %i.dl, ptr %.sroa.52.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.53.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  store <16 x i8> %i.dm, ptr %.sroa.53.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.54.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 48
  store <16 x i8> %i.dn, ptr %.sroa.54.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.55.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 64
  store <16 x i8> %i.do, ptr %.sroa.55.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.56.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 80
  store <16 x i8> %i.dp, ptr %.sroa.56.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.57.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 96
  store <16 x i8> %i.dq, ptr %.sroa.57.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.58.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 112
  store <16 x i8> %i.dr, ptr %.sroa.58.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %i.ds = add nuw nsw i64 %.05579.i, 1            ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.ds, %i.b
  br i1 %exitcond89.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !100

bb.c:                                             ; preds = %bb.a
  %i.dt = lshr i64 %2, 5
  %i.du = and i64 %i.dt, 72057594037927935        ; 4 uses
  %i.dv = shl nuw nsw i64 %i.du, 5                ; 14 uses
  %i.dw = icmp samesign ult i64 %i.dv, %2
  br i1 %i.dw, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dx = shl i64 %3, 1                           ; 4 uses
  %i.dy = mul i64 %3, 3                           ; 4 uses
  %i.dz = shl nsw i64 %3, 2                       ; 4 uses
  %i.ea = mul nsw i64 %3, 5                       ; 4 uses
  %i.eb = mul nsw i64 %3, 6                       ; 4 uses
  %i.ec = mul nsw i64 %3, 7                       ; 4 uses
  %i.ed = sub nuw nsw i64 %2, %i.dv               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ed, 20
  br i1 %min.iters.check, label %.lr.ph.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ee = shl nuw i64 %i.du, 8
  %scevgep106 = getelementptr i8, ptr %4, i64 %i.ee ; 8 uses
  %i.ef = shl i64 %2, 3
  %scevgep107 = getelementptr i8, ptr %4, i64 %i.ef ; 8 uses
  %i.eg = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep108 = getelementptr i8, ptr %i.eg, i64 %i.ec
  %i.eh = getelementptr i8, ptr %0, i64 %2
  %scevgep109 = getelementptr i8, ptr %i.eh, i64 %i.ec
  %i.ei = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep110 = getelementptr i8, ptr %i.ei, i64 %i.eb
  %i.ej = getelementptr i8, ptr %0, i64 %2
  %scevgep111 = getelementptr i8, ptr %i.ej, i64 %i.eb
  %i.ek = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep112 = getelementptr i8, ptr %i.ek, i64 %i.ea
  %i.el = getelementptr i8, ptr %0, i64 %2
  %scevgep113 = getelementptr i8, ptr %i.el, i64 %i.ea
  %i.em = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep114 = getelementptr i8, ptr %i.em, i64 %i.dz
  %i.en = getelementptr i8, ptr %0, i64 %2
  %scevgep115 = getelementptr i8, ptr %i.en, i64 %i.dz
  %i.eo = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep116 = getelementptr i8, ptr %i.eo, i64 %i.dy
  %i.ep = getelementptr i8, ptr %0, i64 %2
  %scevgep117 = getelementptr i8, ptr %i.ep, i64 %i.dy
  %i.eq = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep118 = getelementptr i8, ptr %i.eq, i64 %i.dx
  %i.er = getelementptr i8, ptr %0, i64 %2
  %scevgep119 = getelementptr i8, ptr %i.er, i64 %i.dx
  %i.es = getelementptr i8, ptr %0, i64 %3
  %scevgep120 = getelementptr i8, ptr %i.es, i64 %i.dv
  %i.et = getelementptr i8, ptr %0, i64 %3
  %scevgep121 = getelementptr i8, ptr %i.et, i64 %2
  %scevgep122 = getelementptr i8, ptr %0, i64 %i.dv
  %scevgep123 = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %scevgep106, %scevgep109
  %bound1 = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict = and i1 %bound0, %bound1
  %bound0124 = icmp ult ptr %scevgep106, %scevgep111
  %bound1125 = icmp ult ptr %scevgep110, %scevgep107
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx = or i1 %found.conflict, %found.conflict126
  %bound0127 = icmp ult ptr %scevgep106, %scevgep113
  %bound1128 = icmp ult ptr %scevgep112, %scevgep107
  %found.conflict129 = and i1 %bound0127, %bound1128
  %conflict.rdx130 = or i1 %conflict.rdx, %found.conflict129
  %bound0131 = icmp ult ptr %scevgep106, %scevgep115
  %bound1132 = icmp ult ptr %scevgep114, %scevgep107
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx130, %found.conflict133
  %bound0135 = icmp ult ptr %scevgep106, %scevgep117
  %bound1136 = icmp ult ptr %scevgep116, %scevgep107
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %scevgep106, %scevgep119
  %bound1140 = icmp ult ptr %scevgep118, %scevgep107
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %scevgep106, %scevgep121
  %bound1144 = icmp ult ptr %scevgep120, %scevgep107
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  %bound0147 = icmp ult ptr %scevgep106, %scevgep123
  %bound1148 = icmp ult ptr %scevgep122, %scevgep107
  %found.conflict149 = and i1 %bound0147, %bound1148
  %conflict.rdx150 = or i1 %conflict.rdx146, %found.conflict149
  br i1 %conflict.rdx150, label %.lr.ph.preheader228, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %2, 3                       ; 2 uses
  %n.vec = sub nsw i64 %i.ed, %n.mod.vf           ; 2 uses
  %i.eu = add i64 %i.dv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ev = add i64 %i.dv, %index                   ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %i.ev     ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.ew, align 1, !tbaa !7, !alias.scope !101
  %i.ex = getelementptr i8, ptr %i.ew, i64 %3
  %wide.load151 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !7, !alias.scope !104
  %i.ey = getelementptr i8, ptr %i.ew, i64 %i.dx
  %wide.load152 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !7, !alias.scope !106
  %i.ez = getelementptr i8, ptr %i.ew, i64 %i.dy
  %wide.load153 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !7, !alias.scope !108
  %i.fa = getelementptr i8, ptr %i.ew, i64 %i.dz
  %wide.load154 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !7, !alias.scope !110
  %i.fb = getelementptr i8, ptr %i.ew, i64 %i.ea
  %wide.load155 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !7, !alias.scope !112
  %i.fc = getelementptr i8, ptr %i.ew, i64 %i.eb
  %wide.load156 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !7, !alias.scope !114
  %i.fd = getelementptr i8, ptr %i.ew, i64 %i.ec
  %wide.load157 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !7, !alias.scope !116
  %i.fe = shl nsw i64 %i.ev, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 %i.fe
  %i.fg = zext <4 x i8> %wide.load157 to <4 x i64>
  %i.fh = shl nuw <4 x i64> %i.fg, splat (i64 56)
  %i.fi = zext <4 x i8> %wide.load156 to <4 x i64>
  %i.fj = shl nuw nsw <4 x i64> %i.fi, splat (i64 48)
  %i.fk = or disjoint <4 x i64> %i.fh, %i.fj
  %i.fl = zext <4 x i8> %wide.load155 to <4 x i64>
  %i.fm = shl nuw nsw <4 x i64> %i.fl, splat (i64 40)
  %i.fn = or disjoint <4 x i64> %i.fk, %i.fm
  %i.fo = zext <4 x i8> %wide.load154 to <4 x i64>
  %i.fp = shl nuw nsw <4 x i64> %i.fo, splat (i64 32)
  %i.fq = or disjoint <4 x i64> %i.fn, %i.fp
  %i.fr = zext <4 x i8> %wide.load153 to <4 x i64>
  %i.fs = shl nuw nsw <4 x i64> %i.fr, splat (i64 24)
  %i.ft = or disjoint <4 x i64> %i.fq, %i.fs
  %i.fu = zext <4 x i8> %wide.load152 to <4 x i64>
  %i.fv = shl nuw nsw <4 x i64> %i.fu, splat (i64 16)
  %i.fw = zext <4 x i8> %wide.load151 to <4 x i64>
  %i.fx = shl nuw nsw <4 x i64> %i.fw, splat (i64 8)
  %i.fy = or disjoint <4 x i64> %i.ft, %i.fv
  %i.fz = zext <4 x i8> %wide.load to <4 x i64>
  %i.ga = or <4 x i64> %i.fy, %i.fx
  %i.gb = or <4 x i64> %i.ga, %i.fz
  store <4 x i64> %i.gb, ptr %i.ff, align 1, !alias.scope !118, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader228

.lr.ph.preheader228:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05879.ph = phi i64 [ %i.dv, %vector.memcheck ], [ %i.dv, %.lr.ph.preheader ], [ %i.eu, %middle.block ]
  br label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.du, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.gd = shl nsw i64 %3, 1
  %i.ge = mul nsw i64 %3, 3
  %i.gf = shl nsw i64 %3, 2
  %i.gg = mul nsw i64 %3, 5
  %i.gh = mul nsw i64 %3, 6
  %i.gi = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader228, %.lr.ph
  %.05879 = phi i64 [ %i.gt, %.lr.ph ], [ %.05879.ph, %.lr.ph.preheader228 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05879 ; 8 uses
  %i.gj = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.gk = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.dx
  %i.gl = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.dy
  %i.gm = load i8, ptr %gep.3, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.dz
  %i.gn = load i8, ptr %gep.4, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.ea
  %i.go = load i8, ptr %gep.5, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.eb
  %i.gp = load i8, ptr %gep.6, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.ec
  %i.gq = load i8, ptr %gep.7, align 1, !tbaa !7
  %i.gr = shl nsw i64 %.05879, 3
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 %i.gr
  %.sroa.10100.0.insert.ext = zext i8 %i.gq to i64
  %.sroa.10100.0.insert.shift = shl nuw i64 %.sroa.10100.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.gp to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10100.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.899.0.insert.ext = zext i8 %i.go to i64
  %.sroa.899.0.insert.shift = shl nuw nsw i64 %.sroa.899.0.insert.ext, 40
  %.sroa.899.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.899.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.gn to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.899.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.698.0.insert.ext = zext i8 %i.gm to i64
  %.sroa.698.0.insert.shift = shl nuw nsw i64 %.sroa.698.0.insert.ext, 24
  %.sroa.698.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.698.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.gl to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.497.0.insert.ext = zext i8 %i.gk to i64
  %.sroa.497.0.insert.shift = shl nuw nsw i64 %.sroa.497.0.insert.ext, 8
  %.sroa.497.0.insert.mask = or disjoint i64 %.sroa.698.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.096.0.insert.ext = zext i8 %i.gj to i64
  %.sroa.096.0.insert.mask = or i64 %.sroa.497.0.insert.mask, %.sroa.497.0.insert.shift
  %.sroa.096.0.insert.insert = or i64 %.sroa.096.0.insert.mask, %.sroa.096.0.insert.ext
  store i64 %.sroa.096.0.insert.insert, ptr %i.gs, align 1
  %i.gt = add nuw nsw i64 %.05879, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gt, %2
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !122

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.ko, %.preheader.preheader ] ; 3 uses
  %i.gu = shl nuw i64 %.05784, 8
  %scevgep = getelementptr i8, ptr %4, i64 %i.gu  ; 8 uses
  %i.gv = shl nsw i64 %.05784, 5
  %i.gw = getelementptr i8, ptr %0, i64 %i.gv     ; 8 uses
  %i.gx = load <32 x i8>, ptr %i.gw, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 %3
  %i.gz = load <32 x i8>, ptr %i.gy, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gd
  %i.hb = load <32 x i8>, ptr %i.ha, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gw, i64 %i.ge
  %i.hd = load <32 x i8>, ptr %i.hc, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.he = getelementptr i8, ptr %i.gw, i64 %i.gf
  %i.hf = load <32 x i8>, ptr %i.he, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gw, i64 %i.gg
  %i.hh = load <32 x i8>, ptr %i.hg, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gw, i64 %i.gh
  %i.hj = load <32 x i8>, ptr %i.hi, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gw, i64 %i.gi
  %i.hl = load <32 x i8>, ptr %i.hk, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hm = shufflevector <32 x i8> %i.gx, <32 x i8> %i.hf, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hn = shufflevector <32 x i8> %i.gx, <32 x i8> %i.hf, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ho = shufflevector <32 x i8> %i.hm, <32 x i8> %i.hn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.hp = bitcast <32 x i8> %i.hm to <8 x i32>
  %i.hq = bitcast <32 x i8> %i.hn to <8 x i32>
  %i.hr = shufflevector <8 x i32> %i.hp, <8 x i32> %i.hq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hs = shufflevector <32 x i8> %i.gz, <32 x i8> %i.hh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ht = shufflevector <32 x i8> %i.gz, <32 x i8> %i.hh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hu = shufflevector <32 x i8> %i.hs, <32 x i8> %i.ht, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.hv = bitcast <32 x i8> %i.hs to <8 x i32>
  %i.hw = bitcast <32 x i8> %i.ht to <8 x i32>
  %i.hx = shufflevector <8 x i32> %i.hv, <8 x i32> %i.hw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hy = shufflevector <32 x i8> %i.hb, <32 x i8> %i.hj, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hz = shufflevector <32 x i8> %i.hb, <32 x i8> %i.hj, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ia = shufflevector <32 x i8> %i.hy, <32 x i8> %i.hz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ib = bitcast <32 x i8> %i.hy to <8 x i32>
  %i.ic = bitcast <32 x i8> %i.hz to <8 x i32>
  %i.id = shufflevector <8 x i32> %i.ib, <8 x i32> %i.ic, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ie = shufflevector <32 x i8> %i.hd, <32 x i8> %i.hl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.if = shufflevector <32 x i8> %i.hd, <32 x i8> %i.hl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ig = shufflevector <32 x i8> %i.ie, <32 x i8> %i.if, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ih = bitcast <32 x i8> %i.ie to <8 x i32>
  %i.ii = bitcast <32 x i8> %i.if to <8 x i32>
  %i.ij = shufflevector <8 x i32> %i.ih, <8 x i32> %i.ii, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ik = shufflevector <32 x i8> %i.ho, <32 x i8> %i.ia, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.il = shufflevector <32 x i8> %i.ho, <32 x i8> %i.ia, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.im = shufflevector <32 x i8> %i.ik, <32 x i8> %i.il, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.in = bitcast <32 x i8> %i.ik to <8 x i32>
  %i.io = bitcast <32 x i8> %i.il to <8 x i32>
  %i.ip = shufflevector <8 x i32> %i.in, <8 x i32> %i.io, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.iq = bitcast <8 x i32> %i.hr to <32 x i8>    ; 2 uses
  %i.ir = bitcast <8 x i32> %i.id to <32 x i8>    ; 2 uses
  %i.is = shufflevector <32 x i8> %i.iq, <32 x i8> %i.ir, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.it = shufflevector <32 x i8> %i.iq, <32 x i8> %i.ir, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.iu = shufflevector <32 x i8> %i.is, <32 x i8> %i.it, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.iv = bitcast <32 x i8> %i.is to <8 x i32>
  %i.iw = bitcast <32 x i8> %i.it to <8 x i32>
  %i.ix = shufflevector <8 x i32> %i.iv, <8 x i32> %i.iw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.iy = shufflevector <32 x i8> %i.hu, <32 x i8> %i.ig, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.iz = shufflevector <32 x i8> %i.hu, <32 x i8> %i.ig, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ja = shufflevector <32 x i8> %i.iy, <32 x i8> %i.iz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jb = bitcast <32 x i8> %i.iy to <8 x i32>
  %i.jc = bitcast <32 x i8> %i.iz to <8 x i32>
  %i.jd = shufflevector <8 x i32> %i.jb, <8 x i32> %i.jc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.je = bitcast <8 x i32> %i.hx to <32 x i8>    ; 2 uses
  %i.jf = bitcast <8 x i32> %i.ij to <32 x i8>    ; 2 uses
  %i.jg = shufflevector <32 x i8> %i.je, <32 x i8> %i.jf, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jh = shufflevector <32 x i8> %i.je, <32 x i8> %i.jf, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ji = shufflevector <32 x i8> %i.jg, <32 x i8> %i.jh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jj = bitcast <32 x i8> %i.jg to <8 x i32>
  %i.jk = bitcast <32 x i8> %i.jh to <8 x i32>
  %i.jl = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jm = shufflevector <32 x i8> %i.im, <32 x i8> %i.ja, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jn = shufflevector <32 x i8> %i.im, <32 x i8> %i.ja, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jo = shufflevector <32 x i8> %i.jm, <32 x i8> %i.jn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.jp = bitcast <32 x i8> %i.jm to <8 x i32>
  %i.jq = bitcast <32 x i8> %i.jn to <8 x i32>
  %i.jr = shufflevector <8 x i32> %i.jp, <8 x i32> %i.jq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.js = bitcast <8 x i32> %i.ip to <32 x i8>    ; 2 uses
  %i.jt = bitcast <8 x i32> %i.jd to <32 x i8>    ; 2 uses
end_hunk_0
