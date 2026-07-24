inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh:bb.a
  %index163 = phi i64 [ %vec.epilog.resume.val154, %vec.epilog.ph159 ], [ %index.next166, %vec.epilog.vector.body162 ] ; 2 uses
  %i.aq = add i64 %i.c, %index163                 ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq     ; 2 uses
  %wide.load164 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !7, !alias.scope !8
  %i.as = getelementptr i8, ptr %i.ar, i64 %3
  %wide.load165 = load <8 x i8>, ptr %i.as, align 1, !tbaa !7, !alias.scope !11
  %i.at = shl nsw i64 %i.aq, 1
  %i.au = getelementptr inbounds i8, ptr %4, i64 %i.at
  %i.av = zext <8 x i8> %wide.load165 to <8 x i16>
  %i.aw = shl nuw <8 x i16> %i.av, splat (i16 8)
  %i.ax = zext <8 x i8> %wide.load164 to <8 x i16>
  %i.ay = or disjoint <8 x i16> %i.aw, %i.ax
  store <8 x i16> %i.ay, ptr %i.au, align 1, !alias.scope !13, !noalias !15
  %index.next166 = add nuw i64 %index163, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.az, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !21

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %n.mod.vf160, 0
  br i1 %cmp.n168, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck121, %iter.check155, %vec.epilog.iter.check157, %vec.epilog.middle.block167
  %.05074.i.ph = phi i64 [ %i.c, %iter.check155 ], [ %i.c, %vector.memcheck121 ], [ %i.j, %vec.epilog.iter.check157 ], [ %i.ap, %vec.epilog.middle.block167 ] ; 4 uses
  %i.ba = sub i64 %2, %.05074.i.ph
  %xtraiter172 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05074.i.prol = phi i64 [ %i.bf, %.lr.ph.i.prol ], [ %.05074.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05074.i.prol ; 2 uses
  %i.bb = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.bc = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %i.bd = shl nsw i64 %.05074.i.prol, 1
  %i.be = getelementptr inbounds i8, ptr %4, i64 %i.bd
  %.sroa.484.0.insert.ext.i.prol = zext i8 %i.bc to i16
  %.sroa.484.0.insert.shift.i.prol = shl nuw i16 %.sroa.484.0.insert.ext.i.prol, 8
  %.sroa.083.0.insert.ext.i.prol = zext i8 %i.bb to i16
  %.sroa.083.0.insert.insert.i.prol = or disjoint i16 %.sroa.484.0.insert.shift.i.prol, %.sroa.083.0.insert.ext.i.prol
  store i16 %.sroa.083.0.insert.insert.i.prol, ptr %i.be, align 1
  %i.bf = add nsw i64 %.05074.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter172
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !22

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05074.i.unr = phi i64 [ %.05074.i.ph, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = sub i64 %.05074.i.ph, %2
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block152, %vec.epilog.middle.block167, %bb.b
  %i.bi = icmp sgt i64 %2, 15
  br i1 %i.bi, label %.preheader71.i.preheader, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

.preheader71.i.preheader:                         ; preds = %.preheader72.i
  %xtraiter174 = and i64 %i.b, 1
  %i.bj = and i64 %2, 9223372036854775792
  %i.bk = icmp eq i64 %i.bj, 16
  br i1 %i.bk, label %.preheader71.i.epil.preheader, label %.preheader71.i.preheader.new

.preheader71.i.preheader.new:                     ; preds = %.preheader71.i.preheader
  %unroll_iter177 = and i64 %i.b, 576460752303423486
  br label %.preheader71.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05074.i = phi i64 [ %i.ce, %.lr.ph.i ], [ %.05074.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05074.i ; 2 uses
  %i.bl = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bm = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %i.bn = shl nsw i64 %.05074.i, 1
  %i.bo = getelementptr inbounds i8, ptr %4, i64 %i.bn
  %.sroa.484.0.insert.ext.i = zext i8 %i.bm to i16
  %.sroa.484.0.insert.shift.i = shl nuw i16 %.sroa.484.0.insert.ext.i, 8
  %.sroa.083.0.insert.ext.i = zext i8 %i.bl to i16
  %.sroa.083.0.insert.insert.i = or disjoint i16 %.sroa.484.0.insert.shift.i, %.sroa.083.0.insert.ext.i
  store i16 %.sroa.083.0.insert.insert.i, ptr %i.bo, align 1
  %i.bp = add nsw i64 %.05074.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.bp ; 2 uses
  %i.bq = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.br = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %i.bs = shl nsw i64 %i.bp, 1
  %i.bt = getelementptr inbounds i8, ptr %4, i64 %i.bs
  %.sroa.484.0.insert.ext.i.1 = zext i8 %i.br to i16
  %.sroa.484.0.insert.shift.i.1 = shl nuw i16 %.sroa.484.0.insert.ext.i.1, 8
  %.sroa.083.0.insert.ext.i.1 = zext i8 %i.bq to i16
  %.sroa.083.0.insert.insert.i.1 = or disjoint i16 %.sroa.484.0.insert.shift.i.1, %.sroa.083.0.insert.ext.i.1
  store i16 %.sroa.083.0.insert.insert.i.1, ptr %i.bt, align 1
  %i.bu = add nsw i64 %.05074.i, 2                ; 2 uses
  %invariant.gep.i.2 = getelementptr i8, ptr %0, i64 %i.bu ; 2 uses
  %i.bv = load i8, ptr %invariant.gep.i.2, align 1, !tbaa !7
  %gep.1.i.2 = getelementptr i8, ptr %invariant.gep.i.2, i64 %3
  %i.bw = load i8, ptr %gep.1.i.2, align 1, !tbaa !7
  %i.bx = shl nsw i64 %i.bu, 1
  %i.by = getelementptr inbounds i8, ptr %4, i64 %i.bx
  %.sroa.484.0.insert.ext.i.2 = zext i8 %i.bw to i16
  %.sroa.484.0.insert.shift.i.2 = shl nuw i16 %.sroa.484.0.insert.ext.i.2, 8
  %.sroa.083.0.insert.ext.i.2 = zext i8 %i.bv to i16
  %.sroa.083.0.insert.insert.i.2 = or disjoint i16 %.sroa.484.0.insert.shift.i.2, %.sroa.083.0.insert.ext.i.2
  store i16 %.sroa.083.0.insert.insert.i.2, ptr %i.by, align 1
  %i.bz = add nsw i64 %.05074.i, 3                ; 2 uses
  %invariant.gep.i.3 = getelementptr i8, ptr %0, i64 %i.bz ; 2 uses
  %i.ca = load i8, ptr %invariant.gep.i.3, align 1, !tbaa !7
  %gep.1.i.3 = getelementptr i8, ptr %invariant.gep.i.3, i64 %3
  %i.cb = load i8, ptr %gep.1.i.3, align 1, !tbaa !7
  %i.cc = shl nsw i64 %i.bz, 1
  %i.cd = getelementptr inbounds i8, ptr %4, i64 %i.cc
  %.sroa.484.0.insert.ext.i.3 = zext i8 %i.cb to i16
  %.sroa.484.0.insert.shift.i.3 = shl nuw i16 %.sroa.484.0.insert.ext.i.3, 8
  %.sroa.083.0.insert.ext.i.3 = zext i8 %i.ca to i16
  %.sroa.083.0.insert.insert.i.3 = or disjoint i16 %.sroa.484.0.insert.shift.i.3, %.sroa.083.0.insert.ext.i.3
  store i16 %.sroa.083.0.insert.insert.i.3, ptr %i.cd, align 1
  %i.ce = add nsw i64 %.05074.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not.i.3, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !24

.preheader71.i:                                   ; preds = %.preheader71.i, %.preheader71.i.preheader.new
  %.05577.i = phi i64 [ 0, %.preheader71.i.preheader.new ], [ %i.cw, %.preheader71.i ] ; 4 uses
  %niter178 = phi i64 [ 0, %.preheader71.i.preheader.new ], [ %niter178.next.1, %.preheader71.i ]
  %i.cf = shl nuw i64 %.05577.i, 5
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.cf ; 2 uses
  %i.cg = shl nuw nsw i64 %.05577.i, 4
  %i.ch = getelementptr i8, ptr %0, i64 %i.cg     ; 2 uses
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 %3
  %i.ck = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cj) ; 2 uses
  %i.cl = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cm = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.cl, ptr %scevgep.i, align 1, !tbaa !7
  %.sroa.8.32.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store <16 x i8> %i.cm, ptr %.sroa.8.32.scevgep.sroa_idx.i, align 1, !tbaa !7
  %i.cn = or disjoint i64 %.05577.i, 1            ; 2 uses
  %i.co = shl nuw i64 %i.cn, 5
  %scevgep.i.1 = getelementptr i8, ptr %4, i64 %i.co ; 2 uses
  %i.cp = shl nuw nsw i64 %i.cn, 4
  %i.cq = getelementptr i8, ptr %0, i64 %i.cp     ; 2 uses
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cq, i64 %3
  %i.ct = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cs) ; 2 uses
  %i.cu = shufflevector <16 x i8> %i.cr, <16 x i8> %i.ct, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cv = shufflevector <16 x i8> %i.cr, <16 x i8> %i.ct, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.cu, ptr %scevgep.i.1, align 1, !tbaa !7
  %.sroa.8.32.scevgep.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %scevgep.i.1, i64 16
  store <16 x i8> %i.cv, ptr %.sroa.8.32.scevgep.sroa_idx.i.1, align 1, !tbaa !7
  %i.cw = add nuw nsw i64 %.05577.i, 2            ; 2 uses
  %niter178.next.1 = add i64 %niter178, 2         ; 2 uses
  %niter178.ncmp.1 = icmp eq i64 %niter178.next.1, %unroll_iter177
  br i1 %niter178.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, label %.preheader71.i, !llvm.loop !25

bb.c:                                             ; preds = %bb.a
  %i.cx = lshr i64 %2, 5                          ; 4 uses
  %i.cy = and i64 %2, 9223372036854775776         ; 12 uses
  %.not = icmp eq i64 %i.cy, %2
  br i1 %.not, label %.preheader75.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.cz = or disjoint i64 %i.cy, 1
  %smax104 = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.cz) ; 2 uses
  %i.da = sub nsw i64 %smax104, %i.cy             ; 6 uses
  %min.iters.check = icmp ult i64 %i.da, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.db = shl nuw i64 %i.cx, 6
  %scevgep95 = getelementptr i8, ptr %4, i64 %i.db ; 2 uses
  %i.dc = or disjoint i64 %i.cy, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.dc) ; 3 uses
  %i.dd = shl nuw i64 %smax, 1
  %scevgep96 = getelementptr i8, ptr %4, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %0, i64 %3
  %scevgep97 = getelementptr i8, ptr %i.de, i64 %i.cy
  %i.df = getelementptr i8, ptr %0, i64 %3
  %scevgep98 = getelementptr i8, ptr %i.df, i64 %smax
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.cy
  %scevgep100 = getelementptr i8, ptr %0, i64 %smax
  %bound0 = icmp ult ptr %scevgep95, %scevgep98
  %bound1 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %scevgep95, %scevgep100
  %bound1102 = icmp ult ptr %scevgep99, %scevgep96
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check105 = icmp ult i64 %i.da, 64
  br i1 %min.iters.check105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.da, 56
  %n.vec = and i64 %i.da, -64                     ; 4 uses
  %i.dg = add i64 %i.cy, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = add nuw i64 %i.cy, %index               ; 2 uses
  %i.di = getelementptr i8, ptr %0, i64 %i.dh     ; 5 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %i.dk = getelementptr i8, ptr %i.di, i64 32
  %i.dl = getelementptr i8, ptr %i.di, i64 48
  %wide.load = load <16 x i8>, ptr %i.di, align 1, !tbaa !7, !alias.scope !26
  %wide.load106 = load <16 x i8>, ptr %i.dj, align 1, !tbaa !7, !alias.scope !26
  %wide.load107 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !7, !alias.scope !26
  %wide.load108 = load <16 x i8>, ptr %i.dl, align 1, !tbaa !7, !alias.scope !26
  %i.dm = getelementptr i8, ptr %i.di, i64 %3     ; 4 uses
  %i.dn = getelementptr i8, ptr %i.dm, i64 16
  %i.do = getelementptr i8, ptr %i.dm, i64 32
  %i.dp = getelementptr i8, ptr %i.dm, i64 48
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
  %i.en = add nuw i64 %i.cy, %index115            ; 2 uses
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
  %i.ff = shl nuw nsw i64 %.05782, 5
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
  %i.fs = shl nuw nsw i64 %i.fq, 5
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
  %i.gf = shl nuw nsw i64 %.05577.i.epil.init, 4
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
  %i.go = shl nuw nsw i64 %.05782.epil.init, 5
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
  %i.b = sdiv i64 %2, 16                          ; 4 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 9 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %.lr.ph.preheader.i, label %.preheader72.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl nsw i64 %3, 1                        ; 6 uses
  %i.f = mul nsw i64 %3, 3                        ; 6 uses
  %i.g = shl nsw i64 %i.b, 4
  %i.h = sub i64 %2, %i.g                         ; 2 uses
  %min.iters.check153 = icmp ult i64 %i.h, 24
  br i1 %min.iters.check153, label %.lr.ph.i.preheader, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.preheader.i
  %i.i = shl i64 %i.b, 6
  %scevgep127 = getelementptr i8, ptr %4, i64 %i.i ; 4 uses
  %i.j = shl i64 %2, 2
  %scevgep128 = getelementptr i8, ptr %4, i64 %i.j ; 4 uses
  %i.k = getelementptr i8, ptr %0, i64 %i.c
  %scevgep129 = getelementptr i8, ptr %i.k, i64 %i.f
  %i.l = getelementptr i8, ptr %0, i64 %2
  %scevgep130 = getelementptr i8, ptr %i.l, i64 %i.f
  %i.m = getelementptr i8, ptr %0, i64 %i.c
  %scevgep131 = getelementptr i8, ptr %i.m, i64 %i.e
  %i.n = getelementptr i8, ptr %0, i64 %2
  %scevgep132 = getelementptr i8, ptr %i.n, i64 %i.e
  %i.o = getelementptr i8, ptr %0, i64 %3
  %scevgep133 = getelementptr i8, ptr %i.o, i64 %i.c
  %i.p = getelementptr i8, ptr %0, i64 %3
  %scevgep134 = getelementptr i8, ptr %i.p, i64 %2
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
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh:bb.a
  %i.ae = zext <8 x i8> %wide.load159 to <8 x i32>
  %i.af = or disjoint <8 x i32> %i.ad, %i.ae
  %i.ag = or disjoint <8 x i32> %i.af, %i.ab
  %i.ah = or disjoint <8 x i32> %i.ag, %i.z
  store <8 x i32> %i.ah, ptr %i.x, align 1, !alias.scope !52, !noalias !54
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.ai = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.ai, label %middle.block164, label %vector.body157, !llvm.loop !55

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %n.mod.vf155, 0
  br i1 %cmp.n165, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck126, %.lr.ph.preheader.i, %middle.block164
  %.05074.i.ph = phi i64 [ %i.c, %vector.memcheck126 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.q, %middle.block164 ] ; 6 uses
  %i.aj = sub i64 %2, %.05074.i.ph
  %.neg171 = add i64 %.05074.i.ph, 1
  %xtraiter169 = and i64 %i.aj, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05074.i.ph ; 4 uses
  %i.ak = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.al = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  %i.am = load i8, ptr %gep.2.i.prol, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.f
  %i.an = load i8, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.ao = shl nsw i64 %.05074.i.ph, 2
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
  %i.aq = add nsw i64 %.05074.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05074.i.unr = phi i64 [ %.05074.i.ph, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %i.ar = icmp eq i64 %2, %.neg171
  br i1 %i.ar, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block164, %bb.b
  %i.as = icmp sgt i64 %2, 15
  br i1 %i.as, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.at = shl nsw i64 %3, 1
  %i.au = mul nsw i64 %3, 3
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05074.i = phi i64 [ %i.bi, %.lr.ph.i ], [ %.05074.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05074.i ; 4 uses
  %i.av = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.aw = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.ax = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.ay = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %i.az = shl nsw i64 %.05074.i, 2
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
  %i.bb = add nsw i64 %.05074.i, 1                ; 2 uses
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
  %i.bi = add nsw i64 %.05074.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not.i.1, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !56

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05579.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.cb, %.preheader.preheader.i ] ; 3 uses
  %i.bj = shl i64 %.05579.i, 6
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.bj ; 4 uses
  %i.bk = shl nuw nsw i64 %.05579.i, 4
  %i.bl = getelementptr i8, ptr %0, i64 %i.bk     ; 4 uses
  %i.bm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bl) ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bl, i64 %3
  %i.bo = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bn) ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bl, i64 %i.at
  %i.bq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bp) ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 %i.au
  %i.bs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.br) ; 2 uses
  %i.bt = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bu = shufflevector <16 x i8> %i.bm, <16 x i8> %i.bq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bv = shufflevector <16 x i8> %i.bo, <16 x i8> %i.bs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.bw = shufflevector <16 x i8> %i.bo, <16 x i8> %i.bs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.bx = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.by = shufflevector <16 x i8> %i.bt, <16 x i8> %i.bv, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bz = shufflevector <16 x i8> %i.bu, <16 x i8> %i.bw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ca = shufflevector <16 x i8> %i.bu, <16 x i8> %i.bw, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.bx, ptr %scevgep.i, align 1, !tbaa !7
  %.sroa.20.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store <16 x i8> %i.by, ptr %.sroa.20.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.21.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  store <16 x i8> %i.bz, ptr %.sroa.21.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.22.128.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 48
  store <16 x i8> %i.ca, ptr %.sroa.22.128.scevgep.sroa_idx.i, align 1, !tbaa !7
  %i.cb = add nuw nsw i64 %.05579.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.cb, %i.b
  br i1 %exitcond87.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !57

bb.c:                                             ; preds = %bb.a
  %i.cc = lshr i64 %2, 5
  %i.cd = and i64 %i.cc, 144115188075855871       ; 5 uses
  %i.ce = shl nuw nsw i64 %i.cd, 5                ; 9 uses
  %i.cf = icmp samesign ult i64 %i.ce, %2
  br i1 %i.cf, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.cg = shl nsw i64 %3, 1                       ; 6 uses
  %i.ch = mul nsw i64 %3, 3                       ; 6 uses
  %i.ci = shl nuw nsw i64 %i.cd, 5
  %i.cj = sub nsw i64 %2, %i.ci                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.cj, 24
  br i1 %min.iters.check, label %.lr.ph.preheader168, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ck = shl nuw i64 %i.cd, 7
  %scevgep102 = getelementptr i8, ptr %4, i64 %i.ck ; 4 uses
  %i.cl = shl i64 %2, 2
  %scevgep103 = getelementptr i8, ptr %4, i64 %i.cl ; 4 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.ce
  %scevgep104 = getelementptr i8, ptr %i.cm, i64 %i.ch
  %i.cn = getelementptr i8, ptr %0, i64 %2
  %scevgep105 = getelementptr i8, ptr %i.cn, i64 %i.ch
  %i.co = getelementptr i8, ptr %0, i64 %i.ce
  %scevgep106 = getelementptr i8, ptr %i.co, i64 %i.cg
  %i.cp = getelementptr i8, ptr %0, i64 %2
  %scevgep107 = getelementptr i8, ptr %i.cp, i64 %i.cg
  %i.cq = getelementptr i8, ptr %0, i64 %3
  %scevgep108 = getelementptr i8, ptr %i.cq, i64 %i.ce
  %i.cr = getelementptr i8, ptr %0, i64 %3
  %scevgep109 = getelementptr i8, ptr %i.cr, i64 %2
  %scevgep110 = getelementptr i8, ptr %0, i64 %i.ce
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
  %n.vec = sub i64 %i.cj, %n.mod.vf               ; 2 uses
  %i.cs = add i64 %i.ce, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = add nuw i64 %i.ce, %index               ; 2 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.ct     ; 4 uses
  %wide.load = load <8 x i8>, ptr %i.cu, align 1, !tbaa !7, !alias.scope !58
  %i.cv = getelementptr i8, ptr %i.cu, i64 %3
  %wide.load123 = load <8 x i8>, ptr %i.cv, align 1, !tbaa !7, !alias.scope !61
  %i.cw = getelementptr i8, ptr %i.cu, i64 %i.cg
  %wide.load124 = load <8 x i8>, ptr %i.cw, align 1, !tbaa !7, !alias.scope !63
  %i.cx = getelementptr i8, ptr %i.cu, i64 %i.ch
  %wide.load125 = load <8 x i8>, ptr %i.cx, align 1, !tbaa !7, !alias.scope !65
  %i.cy = shl nsw i64 %i.ct, 2
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 %i.cy
  %i.da = zext <8 x i8> %wide.load125 to <8 x i32>
  %i.db = shl nuw <8 x i32> %i.da, splat (i32 24)
  %i.dc = zext <8 x i8> %wide.load124 to <8 x i32>
  %i.dd = shl nuw nsw <8 x i32> %i.dc, splat (i32 16)
  %i.de = or disjoint <8 x i32> %i.db, %i.dd
  %i.df = zext <8 x i8> %wide.load123 to <8 x i32>
  %i.dg = shl nuw nsw <8 x i32> %i.df, splat (i32 8)
  %i.dh = or disjoint <8 x i32> %i.de, %i.dg
  %i.di = zext <8 x i8> %wide.load to <8 x i32>
  %i.dj = or disjoint <8 x i32> %i.dh, %i.di
  store <8 x i32> %i.dj, ptr %i.cz, align 1, !alias.scope !67, !noalias !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader168

.lr.ph.preheader168:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05879.ph = phi i64 [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.preheader ], [ %i.cs, %middle.block ] ; 6 uses
  %i.dl = sub i64 %2, %.05879.ph
  %.neg = add i64 %.05879.ph, 1
  %xtraiter = and i64 %i.dl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader168
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05879.ph ; 4 uses
  %i.dm = load i8, ptr %invariant.gep.prol, align 1, !tbaa !7
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.dn = load i8, ptr %gep.1.prol, align 1, !tbaa !7
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cg
  %i.do = load i8, ptr %gep.2.prol, align 1, !tbaa !7
  %gep.3.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.ch
  %i.dp = load i8, ptr %gep.3.prol, align 1, !tbaa !7
  %i.dq = shl nsw i64 %.05879.ph, 2
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 %i.dq
  %.sroa.696.0.insert.ext.prol = zext i8 %i.dp to i32
  %.sroa.696.0.insert.shift.prol = shl nuw i32 %.sroa.696.0.insert.ext.prol, 24
  %.sroa.5.0.insert.ext.prol = zext i8 %i.do to i32
  %.sroa.5.0.insert.shift.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.prol, 16
  %.sroa.5.0.insert.insert.prol = or disjoint i32 %.sroa.696.0.insert.shift.prol, %.sroa.5.0.insert.shift.prol
  %.sroa.495.0.insert.ext.prol = zext i8 %i.dn to i32
  %.sroa.495.0.insert.shift.prol = shl nuw nsw i32 %.sroa.495.0.insert.ext.prol, 8
  %.sroa.495.0.insert.insert.prol = or disjoint i32 %.sroa.5.0.insert.insert.prol, %.sroa.495.0.insert.shift.prol
  %.sroa.094.0.insert.ext.prol = zext i8 %i.dm to i32
  %.sroa.094.0.insert.insert.prol = or disjoint i32 %.sroa.495.0.insert.insert.prol, %.sroa.094.0.insert.ext.prol
  store i32 %.sroa.094.0.insert.insert.prol, ptr %i.dr, align 1
  %i.ds = add nuw nsw i64 %.05879.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader168
  %.05879.unr = phi i64 [ %.05879.ph, %.lr.ph.preheader168 ], [ %i.ds, %.lr.ph.prol ]
  %i.dt = icmp eq i64 %2, %.neg
  br i1 %i.dt, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.cd, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.du = shl nsw i64 %3, 1
  %i.dv = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05879 = phi i64 [ %i.ej, %.lr.ph ], [ %.05879.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05879 ; 4 uses
  %i.dw = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.dx = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.cg
  %i.dy = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.ch
  %i.dz = load i8, ptr %gep.3, align 1, !tbaa !7
  %i.ea = shl nsw i64 %.05879, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 %i.ea
  %.sroa.696.0.insert.ext = zext i8 %i.dz to i32
  %.sroa.696.0.insert.shift = shl nuw i32 %.sroa.696.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.dy to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.696.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.495.0.insert.ext = zext i8 %i.dx to i32
  %.sroa.495.0.insert.shift = shl nuw nsw i32 %.sroa.495.0.insert.ext, 8
  %.sroa.495.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.495.0.insert.shift
  %.sroa.094.0.insert.ext = zext i8 %i.dw to i32
  %.sroa.094.0.insert.insert = or disjoint i32 %.sroa.495.0.insert.insert, %.sroa.094.0.insert.ext
  store i32 %.sroa.094.0.insert.insert, ptr %i.eb, align 1
  %i.ec = add nuw nsw i64 %.05879, 1              ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.ec ; 4 uses
  %i.ed = load i8, ptr %invariant.gep.1, align 1, !tbaa !7
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.ee = load i8, ptr %gep.1.1, align 1, !tbaa !7
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cg
  %i.ef = load i8, ptr %gep.2.1, align 1, !tbaa !7
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.ch
  %i.eg = load i8, ptr %gep.3.1, align 1, !tbaa !7
  %i.eh = shl nsw i64 %i.ec, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %i.eh
  %.sroa.696.0.insert.ext.1 = zext i8 %i.eg to i32
  %.sroa.696.0.insert.shift.1 = shl nuw i32 %.sroa.696.0.insert.ext.1, 24
  %.sroa.5.0.insert.ext.1 = zext i8 %i.ef to i32
  %.sroa.5.0.insert.shift.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.1, 16
  %.sroa.5.0.insert.insert.1 = or disjoint i32 %.sroa.696.0.insert.shift.1, %.sroa.5.0.insert.shift.1
  %.sroa.495.0.insert.ext.1 = zext i8 %i.ee to i32
  %.sroa.495.0.insert.shift.1 = shl nuw nsw i32 %.sroa.495.0.insert.ext.1, 8
  %.sroa.495.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.insert.1, %.sroa.495.0.insert.shift.1
  %.sroa.094.0.insert.ext.1 = zext i8 %i.ed to i32
  %.sroa.094.0.insert.insert.1 = or disjoint i32 %.sroa.495.0.insert.insert.1, %.sroa.094.0.insert.ext.1
  store i32 %.sroa.094.0.insert.insert.1, ptr %i.ei, align 1
  %i.ej = add nuw nsw i64 %.05879, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ej, %2
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !71

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.fu, %.preheader.preheader ] ; 3 uses
  %i.ek = shl nuw i64 %.05784, 7
  %scevgep = getelementptr i8, ptr %4, i64 %i.ek  ; 4 uses
  %i.el = shl nuw nsw i64 %.05784, 5
  %i.em = getelementptr i8, ptr %0, i64 %i.el     ; 4 uses
  %i.en = load <32 x i8>, ptr %i.em, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.em, i64 %3
  %i.ep = load <32 x i8>, ptr %i.eo, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.em, i64 %i.du
  %i.er = load <32 x i8>, ptr %i.eq, align 1, !tbaa !7, !noalias !72 ; 2 uses
  %i.es = getelementptr i8, ptr %i.em, i64 %i.dv
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
  store <32 x i8> %i.fi, ptr %scevgep, align 1, !tbaa !7
  %.sroa.20.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 32
  store <8 x i32> %i.fl, ptr %.sroa.20.256.scevgep.sroa_idx, align 1, !tbaa !7
  %.sroa.21.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 64
  store <32 x i8> %i.fq, ptr %.sroa.21.256.scevgep.sroa_idx, align 1, !tbaa !7
  %.sroa.22.256.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 96
  store <8 x i32> %i.ft, ptr %.sroa.22.256.scevgep.sroa_idx, align 1, !tbaa !7
  %i.fu = add nuw nsw i64 %.05784, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.fu, %i.cd
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
  %i.b = sdiv i64 %2, 16                          ; 4 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 13 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %.lr.ph.preheader.i, label %.preheader72.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl i64 %3, 1                            ; 4 uses
  %i.f = mul i64 %3, 3                            ; 4 uses
  %i.g = shl nsw i64 %3, 2                        ; 4 uses
  %i.h = mul nsw i64 %3, 5                        ; 4 uses
  %i.i = mul nsw i64 %3, 6                        ; 4 uses
  %i.j = mul nsw i64 %3, 7                        ; 4 uses
  %i.k = shl nsw i64 %i.b, 4
  %i.l = sub i64 %2, %i.k                         ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh:bb.a
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
  %i.ca = shl nsw i64 %.05074.i, 3
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
  %i.cc = add nsw i64 %.05074.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cc, %2
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !99

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05579.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.dt, %.preheader.preheader.i ] ; 3 uses
  %i.cd = shl i64 %.05579.i, 7
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.cd ; 8 uses
  %i.ce = shl nuw nsw i64 %.05579.i, 4
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce     ; 8 uses
  %i.cg = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cf) ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 %3
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cf, i64 %i.bm
  %i.ck = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cj) ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cf, i64 %i.bn
  %i.cm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cl) ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cf, i64 %i.bo
  %i.co = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cn) ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cf, i64 %i.bp
  %i.cq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cp) ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cf, i64 %i.bq
  %i.cs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cr) ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cf, i64 %i.br
  %i.cu = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ct) ; 2 uses
  %i.cv = shufflevector <16 x i8> %i.cg, <16 x i8> %i.co, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cw = shufflevector <16 x i8> %i.cg, <16 x i8> %i.co, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cx = shufflevector <16 x i8> %i.ci, <16 x i8> %i.cq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cy = shufflevector <16 x i8> %i.ci, <16 x i8> %i.cq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cz = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cs, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.da = shufflevector <16 x i8> %i.ck, <16 x i8> %i.cs, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.db = shufflevector <16 x i8> %i.cm, <16 x i8> %i.cu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dc = shufflevector <16 x i8> %i.cm, <16 x i8> %i.cu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dd = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.de = shufflevector <16 x i8> %i.cv, <16 x i8> %i.cz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.df = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dg = shufflevector <16 x i8> %i.cw, <16 x i8> %i.da, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dh = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.di = shufflevector <16 x i8> %i.cx, <16 x i8> %i.db, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dj = shufflevector <16 x i8> %i.cy, <16 x i8> %i.dc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dk = shufflevector <16 x i8> %i.cy, <16 x i8> %i.dc, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dl = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dm = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dn = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.do = shufflevector <16 x i8> %i.de, <16 x i8> %i.di, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dp = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dq = shufflevector <16 x i8> %i.df, <16 x i8> %i.dj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dr = shufflevector <16 x i8> %i.dg, <16 x i8> %i.dk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ds = shufflevector <16 x i8> %i.dg, <16 x i8> %i.dk, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  store <16 x i8> %i.dl, ptr %scevgep.i, align 1, !tbaa !7
  %.sroa.52.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 16
  store <16 x i8> %i.dm, ptr %.sroa.52.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.53.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  store <16 x i8> %i.dn, ptr %.sroa.53.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.54.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 48
  store <16 x i8> %i.do, ptr %.sroa.54.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.55.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 64
  store <16 x i8> %i.dp, ptr %.sroa.55.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.56.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 80
  store <16 x i8> %i.dq, ptr %.sroa.56.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.57.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 96
  store <16 x i8> %i.dr, ptr %.sroa.57.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %.sroa.58.384.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 112
  store <16 x i8> %i.ds, ptr %.sroa.58.384.scevgep.sroa_idx.i, align 1, !tbaa !7
  %i.dt = add nuw nsw i64 %.05579.i, 1            ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.dt, %i.b
  br i1 %exitcond89.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !100

bb.c:                                             ; preds = %bb.a
  %i.du = lshr i64 %2, 5
  %i.dv = and i64 %i.du, 72057594037927935        ; 5 uses
  %i.dw = shl nuw nsw i64 %i.dv, 5                ; 13 uses
  %i.dx = icmp samesign ult i64 %i.dw, %2
  br i1 %i.dx, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dy = shl i64 %3, 1                           ; 4 uses
  %i.dz = mul i64 %3, 3                           ; 4 uses
  %i.ea = shl nsw i64 %3, 2                       ; 4 uses
  %i.eb = mul nsw i64 %3, 5                       ; 4 uses
  %i.ec = mul nsw i64 %3, 6                       ; 4 uses
  %i.ed = mul nsw i64 %3, 7                       ; 4 uses
  %i.ee = shl nuw nsw i64 %i.dv, 5
  %i.ef = sub nsw i64 %2, %i.ee                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ef, 20
  br i1 %min.iters.check, label %.lr.ph.preheader228, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.eg = shl nuw i64 %i.dv, 8
  %scevgep106 = getelementptr i8, ptr %4, i64 %i.eg ; 8 uses
  %i.eh = shl i64 %2, 3
  %scevgep107 = getelementptr i8, ptr %4, i64 %i.eh ; 8 uses
  %i.ei = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep108 = getelementptr i8, ptr %i.ei, i64 %i.ed
  %i.ej = getelementptr i8, ptr %0, i64 %2
  %scevgep109 = getelementptr i8, ptr %i.ej, i64 %i.ed
  %i.ek = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep110 = getelementptr i8, ptr %i.ek, i64 %i.ec
  %i.el = getelementptr i8, ptr %0, i64 %2
  %scevgep111 = getelementptr i8, ptr %i.el, i64 %i.ec
  %i.em = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep112 = getelementptr i8, ptr %i.em, i64 %i.eb
  %i.en = getelementptr i8, ptr %0, i64 %2
  %scevgep113 = getelementptr i8, ptr %i.en, i64 %i.eb
  %i.eo = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep114 = getelementptr i8, ptr %i.eo, i64 %i.ea
  %i.ep = getelementptr i8, ptr %0, i64 %2
  %scevgep115 = getelementptr i8, ptr %i.ep, i64 %i.ea
  %i.eq = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep116 = getelementptr i8, ptr %i.eq, i64 %i.dz
  %i.er = getelementptr i8, ptr %0, i64 %2
  %scevgep117 = getelementptr i8, ptr %i.er, i64 %i.dz
  %i.es = getelementptr i8, ptr %0, i64 %i.dw
  %scevgep118 = getelementptr i8, ptr %i.es, i64 %i.dy
  %i.et = getelementptr i8, ptr %0, i64 %2
  %scevgep119 = getelementptr i8, ptr %i.et, i64 %i.dy
  %i.eu = getelementptr i8, ptr %0, i64 %3
  %scevgep120 = getelementptr i8, ptr %i.eu, i64 %i.dw
  %i.ev = getelementptr i8, ptr %0, i64 %3
  %scevgep121 = getelementptr i8, ptr %i.ev, i64 %2
  %scevgep122 = getelementptr i8, ptr %0, i64 %i.dw
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
  %n.vec = sub i64 %i.ef, %n.mod.vf               ; 2 uses
  %i.ew = add i64 %i.dw, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ex = add nuw i64 %i.dw, %index               ; 2 uses
  %i.ey = getelementptr i8, ptr %0, i64 %i.ex     ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.ey, align 1, !tbaa !7, !alias.scope !101
  %i.ez = getelementptr i8, ptr %i.ey, i64 %3
  %wide.load151 = load <4 x i8>, ptr %i.ez, align 1, !tbaa !7, !alias.scope !104
  %i.fa = getelementptr i8, ptr %i.ey, i64 %i.dy
  %wide.load152 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !7, !alias.scope !106
  %i.fb = getelementptr i8, ptr %i.ey, i64 %i.dz
  %wide.load153 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !7, !alias.scope !108
  %i.fc = getelementptr i8, ptr %i.ey, i64 %i.ea
  %wide.load154 = load <4 x i8>, ptr %i.fc, align 1, !tbaa !7, !alias.scope !110
  %i.fd = getelementptr i8, ptr %i.ey, i64 %i.eb
  %wide.load155 = load <4 x i8>, ptr %i.fd, align 1, !tbaa !7, !alias.scope !112
  %i.fe = getelementptr i8, ptr %i.ey, i64 %i.ec
  %wide.load156 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !7, !alias.scope !114
  %i.ff = getelementptr i8, ptr %i.ey, i64 %i.ed
  %wide.load157 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !7, !alias.scope !116
  %i.fg = shl nsw i64 %i.ex, 3
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 %i.fg
  %i.fi = zext <4 x i8> %wide.load157 to <4 x i64>
  %i.fj = shl nuw <4 x i64> %i.fi, splat (i64 56)
  %i.fk = zext <4 x i8> %wide.load156 to <4 x i64>
  %i.fl = shl nuw nsw <4 x i64> %i.fk, splat (i64 48)
  %i.fm = or disjoint <4 x i64> %i.fj, %i.fl
  %i.fn = zext <4 x i8> %wide.load155 to <4 x i64>
  %i.fo = shl nuw nsw <4 x i64> %i.fn, splat (i64 40)
  %i.fp = or disjoint <4 x i64> %i.fm, %i.fo
  %i.fq = zext <4 x i8> %wide.load154 to <4 x i64>
  %i.fr = shl nuw nsw <4 x i64> %i.fq, splat (i64 32)
  %i.fs = or disjoint <4 x i64> %i.fp, %i.fr
  %i.ft = zext <4 x i8> %wide.load153 to <4 x i64>
  %i.fu = shl nuw nsw <4 x i64> %i.ft, splat (i64 24)
  %i.fv = or disjoint <4 x i64> %i.fs, %i.fu
  %i.fw = zext <4 x i8> %wide.load152 to <4 x i64>
  %i.fx = shl nuw nsw <4 x i64> %i.fw, splat (i64 16)
  %i.fy = zext <4 x i8> %wide.load151 to <4 x i64>
  %i.fz = shl nuw nsw <4 x i64> %i.fy, splat (i64 8)
  %i.ga = or disjoint <4 x i64> %i.fv, %i.fx
  %i.gb = zext <4 x i8> %wide.load to <4 x i64>
  %i.gc = or <4 x i64> %i.ga, %i.fz
  %i.gd = or <4 x i64> %i.gc, %i.gb
  store <4 x i64> %i.gd, ptr %i.fh, align 1, !alias.scope !118, !noalias !120
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader228

.lr.ph.preheader228:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05879.ph = phi i64 [ %i.dw, %vector.memcheck ], [ %i.dw, %.lr.ph.preheader ], [ %i.ew, %middle.block ]
  br label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.gf = shl nsw i64 %3, 1
  %i.gg = mul nsw i64 %3, 3
  %i.gh = shl nsw i64 %3, 2
  %i.gi = mul nsw i64 %3, 5
  %i.gj = mul nsw i64 %3, 6
  %i.gk = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader228, %.lr.ph
  %.05879 = phi i64 [ %i.gv, %.lr.ph ], [ %.05879.ph, %.lr.ph.preheader228 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05879 ; 8 uses
  %i.gl = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.gm = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.dy
  %i.gn = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.dz
  %i.go = load i8, ptr %gep.3, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.ea
  %i.gp = load i8, ptr %gep.4, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.eb
  %i.gq = load i8, ptr %gep.5, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.ec
  %i.gr = load i8, ptr %gep.6, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.ed
  %i.gs = load i8, ptr %gep.7, align 1, !tbaa !7
  %i.gt = shl nsw i64 %.05879, 3
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 %i.gt
  %.sroa.10100.0.insert.ext = zext i8 %i.gs to i64
  %.sroa.10100.0.insert.shift = shl nuw i64 %.sroa.10100.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.gr to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10100.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.899.0.insert.ext = zext i8 %i.gq to i64
  %.sroa.899.0.insert.shift = shl nuw nsw i64 %.sroa.899.0.insert.ext, 40
  %.sroa.899.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.899.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.gp to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.899.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.698.0.insert.ext = zext i8 %i.go to i64
  %.sroa.698.0.insert.shift = shl nuw nsw i64 %.sroa.698.0.insert.ext, 24
  %.sroa.698.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.698.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.gn to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.497.0.insert.ext = zext i8 %i.gm to i64
  %.sroa.497.0.insert.shift = shl nuw nsw i64 %.sroa.497.0.insert.ext, 8
  %.sroa.497.0.insert.mask = or disjoint i64 %.sroa.698.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.096.0.insert.ext = zext i8 %i.gl to i64
  %.sroa.096.0.insert.mask = or i64 %.sroa.497.0.insert.mask, %.sroa.497.0.insert.shift
  %.sroa.096.0.insert.insert = or i64 %.sroa.096.0.insert.mask, %.sroa.096.0.insert.ext
  store i64 %.sroa.096.0.insert.insert, ptr %i.gu, align 1
  %i.gv = add nuw nsw i64 %.05879, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.gv, %2
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !122

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.kq, %.preheader.preheader ] ; 3 uses
  %i.gw = shl nuw i64 %.05784, 8
  %scevgep = getelementptr i8, ptr %4, i64 %i.gw  ; 8 uses
  %i.gx = shl nuw nsw i64 %.05784, 5
  %i.gy = getelementptr i8, ptr %0, i64 %i.gx     ; 8 uses
  %i.gz = load <32 x i8>, ptr %i.gy, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gy, i64 %3
  %i.hb = load <32 x i8>, ptr %i.ha, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.gy, i64 %i.gf
  %i.hd = load <32 x i8>, ptr %i.hc, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.he = getelementptr i8, ptr %i.gy, i64 %i.gg
  %i.hf = load <32 x i8>, ptr %i.he, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gy, i64 %i.gh
  %i.hh = load <32 x i8>, ptr %i.hg, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.gy, i64 %i.gi
  %i.hj = load <32 x i8>, ptr %i.hi, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.gy, i64 %i.gj
  %i.hl = load <32 x i8>, ptr %i.hk, align 1, !tbaa !7, !noalias !123 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.gy, i64 %i.gk
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
  %i.jy = shufflevector <32 x i8> %i.jw, <32 x i8> %i.jx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.jz = bitcast <32 x i8> %i.jw to <8 x i32>
  %i.ka = bitcast <32 x i8> %i.jx to <8 x i32>
  %i.kb = shufflevector <8 x i32> %i.jz, <8 x i32> %i.ka, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
end_hunk_2
begin_hunk_3_@_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi2EEEvPKhilPh:bb.a
vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check60, %vec.epilog.iter.check79
  %vec.epilog.resume.val76 = phi i64 [ %n.vec64, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check60 ]
  %n.mod.vf82 = and i64 %2, 7                     ; 2 uses
  %n.vec83 = sub i64 %i.f, %n.mod.vf82            ; 2 uses
  %i.af = add i64 %i.d, %n.vec83
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val76, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.ag = add i64 %i.d, %index85                  ; 2 uses
  %i.ah = shl nsw i64 %i.ag, 1
  %i.ai = getelementptr i8, ptr %0, i64 %i.ah
  %i.aj = getelementptr i8, ptr %3, i64 %i.ag     ; 2 uses
  %wide.vec86 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !7, !alias.scope !129 ; 2 uses
  %strided.vec87 = shufflevector <16 x i8> %wide.vec86, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec88 = shufflevector <16 x i8> %wide.vec86, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i8> %strided.vec87, ptr %i.aj, align 1, !tbaa !7, !alias.scope !132, !noalias !134
  %i.ak = getelementptr i8, ptr %i.aj, i64 %2
  store <8 x i8> %strided.vec88, ptr %i.ak, align 1, !tbaa !7, !alias.scope !136, !noalias !129
  %index.next89 = add nuw i64 %index85, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.al, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !138

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %n.mod.vf82, 0
  br i1 %cmp.n91, label %.preheader98.i.i, label %.preheader99.i.i.preheader

.preheader99.i.i.preheader:                       ; preds = %vector.memcheck41, %vector.scevcheck, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.073102.i.i.ph = phi i64 [ %i.d, %iter.check77 ], [ %i.d, %vector.scevcheck ], [ %i.d, %vector.memcheck41 ], [ %i.t, %vec.epilog.iter.check79 ], [ %i.af, %vec.epilog.middle.block90 ] ; 4 uses
  %i.am = sub i64 %2, %.073102.i.i.ph
  %xtraiter = and i64 %i.am, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader99.i.i.prol.loopexit, label %.preheader99.i.i.prol

.preheader99.i.i.prol:                            ; preds = %.preheader99.i.i.preheader, %.preheader99.i.i.prol
  %.073102.i.i.prol = phi i64 [ %i.as, %.preheader99.i.i.prol ], [ %.073102.i.i.ph, %.preheader99.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader99.i.i.prol ], [ 0, %.preheader99.i.i.preheader ]
  %i.an = shl nsw i64 %.073102.i.i.prol, 1
  %i.ao = getelementptr i8, ptr %0, i64 %i.an     ; 2 uses
  %invariant.gep.i.i.prol = getelementptr i8, ptr %3, i64 %.073102.i.i.prol ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !7
  store i8 %i.ap, ptr %invariant.gep.i.i.prol, align 1, !tbaa !7
  %i.aq = getelementptr i8, ptr %i.ao, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !7
  %gep.1.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.prol, i64 %2
  store i8 %i.ar, ptr %gep.1.i.i.prol, align 1, !tbaa !7
  %i.as = add nsw i64 %.073102.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader99.i.i.prol.loopexit, label %.preheader99.i.i.prol, !llvm.loop !139

.preheader99.i.i.prol.loopexit:                   ; preds = %.preheader99.i.i.prol, %.preheader99.i.i.preheader
  %.073102.i.i.unr = phi i64 [ %.073102.i.i.ph, %.preheader99.i.i.preheader ], [ %i.as, %.preheader99.i.i.prol ]
  %i.at = sub i64 %.073102.i.i.ph, %2
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %.preheader98.i.i, label %.preheader99.i.i

.preheader99.i.i:                                 ; preds = %.preheader99.i.i.prol.loopexit, %.preheader99.i.i
  %.073102.i.i = phi i64 [ %i.bs, %.preheader99.i.i ], [ %.073102.i.i.unr, %.preheader99.i.i.prol.loopexit ] ; 6 uses
  %i.av = shl nsw i64 %.073102.i.i, 1
  %i.aw = getelementptr i8, ptr %0, i64 %i.av     ; 2 uses
  %invariant.gep.i.i = getelementptr i8, ptr %3, i64 %.073102.i.i ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !7
  store i8 %i.ax, ptr %invariant.gep.i.i, align 1, !tbaa !7
  %i.ay = getelementptr i8, ptr %i.aw, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !7
  %gep.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %2
  store i8 %i.az, ptr %gep.1.i.i, align 1, !tbaa !7
  %i.ba = add nsw i64 %.073102.i.i, 1             ; 2 uses
  %i.bb = shl nsw i64 %i.ba, 1
  %i.bc = getelementptr i8, ptr %0, i64 %i.bb     ; 2 uses
  %invariant.gep.i.i.1 = getelementptr i8, ptr %3, i64 %i.ba ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !7
  store i8 %i.bd, ptr %invariant.gep.i.i.1, align 1, !tbaa !7
  %i.be = getelementptr i8, ptr %i.bc, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !7
  %gep.1.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.1, i64 %2
  store i8 %i.bf, ptr %gep.1.i.i.1, align 1, !tbaa !7
  %i.bg = add nsw i64 %.073102.i.i, 2             ; 2 uses
  %i.bh = shl nsw i64 %i.bg, 1
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh     ; 2 uses
  %invariant.gep.i.i.2 = getelementptr i8, ptr %3, i64 %i.bg ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !7
  store i8 %i.bj, ptr %invariant.gep.i.i.2, align 1, !tbaa !7
  %i.bk = getelementptr i8, ptr %i.bi, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !7
  %gep.1.i.i.2 = getelementptr i8, ptr %invariant.gep.i.i.2, i64 %2
  store i8 %i.bl, ptr %gep.1.i.i.2, align 1, !tbaa !7
  %i.bm = add nsw i64 %.073102.i.i, 3             ; 2 uses
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = getelementptr i8, ptr %0, i64 %i.bn     ; 2 uses
  %invariant.gep.i.i.3 = getelementptr i8, ptr %3, i64 %i.bm ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  store i8 %i.bp, ptr %invariant.gep.i.i.3, align 1, !tbaa !7
  %i.bq = getelementptr i8, ptr %i.bo, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %gep.1.i.i.3 = getelementptr i8, ptr %invariant.gep.i.i.3, i64 %2
  store i8 %i.br, ptr %gep.1.i.i.3, align 1, !tbaa !7
  %i.bs = add nsw i64 %.073102.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bs, %2
  br i1 %exitcond.not.i.i.3, label %.preheader98.i.i, label %.preheader99.i.i, !llvm.loop !140

.preheader98.i.i:                                 ; preds = %.preheader99.i.i.prol.loopexit, %.preheader99.i.i, %middle.block74, %vec.epilog.middle.block90, %bb.b
  %i.bt = icmp sgt i64 %2, 15
  br i1 %i.bt, label %.preheader.preheader.i.i.preheader, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit

.preheader.preheader.i.i.preheader:               ; preds = %.preheader98.i.i
  %xtraiter94 = and i64 %i.c, 1
  %i.bu = and i64 %2, 9223372036854775792
  %i.bv = icmp eq i64 %i.bu, 16
  br i1 %i.bv, label %.preheader.preheader.i.i.epil.preheader, label %.preheader.preheader.i.i.preheader.new

.preheader.preheader.i.i.preheader.new:           ; preds = %.preheader.preheader.i.i.preheader
  %unroll_iter = and i64 %i.c, 576460752303423486
  br label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.preheader.i.i, %.preheader.preheader.i.i.preheader.new
  %.079106.i.i = phi i64 [ 0, %.preheader.preheader.i.i.preheader.new ], [ %i.cr, %.preheader.preheader.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.preheader.i.i.preheader.new ], [ %niter.next.1, %.preheader.preheader.i.i ]
  %i.bw = shl nuw i64 %.079106.i.i, 5
  %i.bx = getelementptr i8, ptr %0, i64 %i.bw     ; 2 uses
  %i.by = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bx) ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %i.ca = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bz) ; 2 uses
  %i.cb = shufflevector <16 x i8> %i.by, <16 x i8> %i.ca, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cc = shufflevector <16 x i8> %i.by, <16 x i8> %i.ca, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.cd = shl nuw nsw i64 %.079106.i.i, 4         ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %i.cd
  store <16 x i8> %i.cb, ptr %i.ce, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cd
  store <16 x i8> %i.cc, ptr %i.cf, align 1, !tbaa !7
  %i.cg = or disjoint i64 %.079106.i.i, 1         ; 2 uses
  %i.ch = shl nuw i64 %i.cg, 5
  %i.ci = getelementptr i8, ptr %0, i64 %i.ch     ; 2 uses
  %i.cj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ci) ; 2 uses
  %i.ck = getelementptr i8, ptr %i.ci, i64 16
  %i.cl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ck) ; 2 uses
  %i.cm = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cl, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.cn = shufflevector <16 x i8> %i.cj, <16 x i8> %i.cl, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.co = shl nuw nsw i64 %i.cg, 4                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 %i.co
  store <16 x i8> %i.cm, ptr %i.cp, align 1, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.co
  store <16 x i8> %i.cn, ptr %i.cq, align 1, !tbaa !7
  %i.cr = add nuw nsw i64 %.079106.i.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa, label %.preheader.preheader.i.i, !llvm.loop !141

bb.c:                                             ; preds = %bb.a
  %i.cs = lshr i64 %2, 5                          ; 2 uses
  %i.ct = and i64 %2, 9223372036854775776         ; 12 uses
  %.not.i = icmp eq i64 %i.ct, %2
  br i1 %.not.i, label %.preheader.preheader.i.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.cu = or disjoint i64 %i.ct, 1
  %smax21 = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.cu) ; 2 uses
  %i.cv = sub nsw i64 %smax21, %i.ct              ; 6 uses
  %min.iters.check = icmp ult i64 %i.cv, 8
  br i1 %min.iters.check, label %.preheader99.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %3, i64 %i.ct  ; 2 uses
  %i.cw = or disjoint i64 %i.ct, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.cw) ; 3 uses
  %scevgep9 = getelementptr i8, ptr %3, i64 %smax ; 2 uses
  %i.cx = getelementptr i8, ptr %3, i64 %2
  %scevgep10 = getelementptr i8, ptr %i.cx, i64 %i.ct ; 2 uses
  %i.cy = getelementptr i8, ptr %3, i64 %2
  %scevgep11 = getelementptr i8, ptr %i.cy, i64 %smax ; 2 uses
  %i.cz = shl nuw i64 %i.cs, 6
  %scevgep12 = getelementptr i8, ptr %0, i64 %i.cz ; 2 uses
  %i.da = shl nuw i64 %smax, 1
  %scevgep13 = getelementptr i8, ptr %0, i64 %i.da ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep11
  %bound1 = icmp ult ptr %scevgep10, %scevgep9
  %found.conflict = and i1 %bound0, %bound1
  %bound014 = icmp ult ptr %scevgep, %scevgep13
  %bound115 = icmp ult ptr %scevgep12, %scevgep9
  %found.conflict16 = and i1 %bound014, %bound115
  %conflict.rdx = or i1 %found.conflict, %found.conflict16
  %bound017 = icmp ult ptr %scevgep10, %scevgep13
  %bound118 = icmp ult ptr %scevgep12, %scevgep11
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx20 = or i1 %conflict.rdx, %found.conflict19
  br i1 %conflict.rdx20, label %.preheader99.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check22 = icmp ult i64 %i.cv, 64
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cv, 56
  %n.vec = and i64 %i.cv, -64                     ; 4 uses
  %i.db = add i64 %i.ct, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = add nuw i64 %i.ct, %index               ; 3 uses
  %i.dd = shl nuw nsw i64 %i.dc, 1
  %i.de = shl i64 %i.dc, 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd
  %i.dg = getelementptr i8, ptr %0, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.dg, i64 64
  %i.di = getelementptr i8, ptr %3, i64 %i.dc     ; 3 uses
  %wide.vec = load <64 x i8>, ptr %i.df, align 1, !tbaa !7, !alias.scope !142 ; 2 uses
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec23 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %wide.vec24 = load <64 x i8>, ptr %i.dh, align 1, !tbaa !7, !alias.scope !142 ; 2 uses
  %strided.vec25 = shufflevector <64 x i8> %wide.vec24, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec26 = shufflevector <64 x i8> %wide.vec24, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.dj = getelementptr i8, ptr %i.di, i64 32
  store <32 x i8> %strided.vec, ptr %i.di, align 1, !tbaa !7, !alias.scope !145, !noalias !147
  store <32 x i8> %strided.vec25, ptr %i.dj, align 1, !tbaa !7, !alias.scope !145, !noalias !147
  %i.dk = getelementptr i8, ptr %i.di, i64 %2     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 32
  store <32 x i8> %strided.vec23, ptr %i.dk, align 1, !tbaa !7, !alias.scope !149, !noalias !142
  store <32 x i8> %strided.vec26, ptr %i.dl, align 1, !tbaa !7, !alias.scope !149, !noalias !142
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !150

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cv, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader99.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf27 = and i64 %smax21, 7                ; 2 uses
  %n.vec28 = sub i64 %i.cv, %n.mod.vf27           ; 2 uses
  %i.dn = add i64 %i.ct, %n.vec28
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index29 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 2 uses
  %i.do = add nuw i64 %i.ct, %index29             ; 2 uses
  %i.dp = shl nuw nsw i64 %i.do, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %i.dp
  %i.dr = getelementptr i8, ptr %3, i64 %i.do     ; 2 uses
  %wide.vec30 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !7, !alias.scope !142 ; 2 uses
  %strided.vec31 = shufflevector <16 x i8> %wide.vec30, <16 x i8> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec32 = shufflevector <16 x i8> %wide.vec30, <16 x i8> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <8 x i8> %strided.vec31, ptr %i.dr, align 1, !tbaa !7, !alias.scope !145, !noalias !147
  %i.ds = getelementptr i8, ptr %i.dr, i64 %2
  store <8 x i8> %strided.vec32, ptr %i.ds, align 1, !tbaa !7, !alias.scope !149, !noalias !142
  %index.next33 = add nuw i64 %index29, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next33, %n.vec28
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !151

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %n.mod.vf27, 0
  br i1 %cmp.n34, label %.preheader.preheader.i.preheader, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.080102.i.ph = phi i64 [ %i.ct, %iter.check ], [ %i.ct, %vector.memcheck ], [ %i.db, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ]
  br label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader99.i.preheader, %.preheader99.i
  %.080102.i = phi i64 [ %i.dz, %.preheader99.i ], [ %.080102.i.ph, %.preheader99.i.preheader ] ; 3 uses
  %i.du = shl nuw nsw i64 %.080102.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %i.du ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %3, i64 %.080102.i ; 2 uses
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !7
  store i8 %i.dw, ptr %invariant.gep.i, align 1, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %2
  store i8 %i.dy, ptr %gep.1.i, align 1, !tbaa !7
  %i.dz = add nuw nsw i64 %.080102.i, 1           ; 2 uses
  %i.ea = icmp slt i64 %i.dz, %2
  br i1 %i.ea, label %.preheader99.i, label %.preheader.preheader.i.preheader, !llvm.loop !152

.preheader.preheader.i.preheader:                 ; preds = %.preheader99.i, %middle.block, %vec.epilog.middle.block, %bb.c
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.preheader, %.preheader.preheader.i
  %.078106.i = phi i64 [ %i.fn, %.preheader.preheader.i ], [ 0, %.preheader.preheader.i.preheader ] ; 3 uses
  %i.eb = shl i64 %.078106.i, 6
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.eb ; 2 uses
  %.sroa.0.0.copyload.i = load <32 x i8>, ptr %scevgep.i, align 1 ; 2 uses
  %.sroa.4.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  %.sroa.4.0.copyload.i = load <32 x i8>, ptr %.sroa.4.0.scevgep.sroa_idx.i, align 1 ; 2 uses
  %i.ec = shufflevector <32 x i8> %.sroa.0.0.copyload.i, <32 x i8> %.sroa.4.0.copyload.i, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ed = shufflevector <32 x i8> %.sroa.0.0.copyload.i, <32 x i8> %.sroa.4.0.copyload.i, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ee = shufflevector <32 x i8> %i.ec, <32 x i8> %i.ed, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ef = bitcast <32 x i8> %i.ec to <8 x i32>
  %i.eg = bitcast <32 x i8> %i.ed to <8 x i32>
  %i.eh = shufflevector <8 x i32> %i.ef, <8 x i32> %i.eg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ei = bitcast <8 x i32> %i.eh to <32 x i8>    ; 2 uses
  %i.ej = shufflevector <32 x i8> %i.ee, <32 x i8> %i.ei, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ek = shufflevector <32 x i8> %i.ee, <32 x i8> %i.ei, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.el = shufflevector <32 x i8> %i.ej, <32 x i8> %i.ek, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.em = bitcast <32 x i8> %i.ej to <8 x i32>
  %i.en = bitcast <32 x i8> %i.ek to <8 x i32>
  %i.eo = shufflevector <8 x i32> %i.em, <8 x i32> %i.en, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ep = bitcast <8 x i32> %i.eo to <32 x i8>    ; 2 uses
  %i.eq = shufflevector <32 x i8> %i.el, <32 x i8> %i.ep, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.er = shufflevector <32 x i8> %i.el, <32 x i8> %i.ep, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.es = shufflevector <32 x i8> %i.eq, <32 x i8> %i.er, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.et = bitcast <32 x i8> %i.eq to <8 x i32>
  %i.eu = bitcast <32 x i8> %i.er to <8 x i32>
  %i.ev = shufflevector <8 x i32> %i.et, <8 x i32> %i.eu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ew = bitcast <8 x i32> %i.ev to <32 x i8>    ; 2 uses
  %i.ex = shufflevector <32 x i8> %i.es, <32 x i8> %i.ew, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ey = shufflevector <32 x i8> %i.es, <32 x i8> %i.ew, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ez = shufflevector <32 x i8> %i.ex, <32 x i8> %i.ey, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fa = bitcast <32 x i8> %i.ex to <8 x i32>
  %i.fb = bitcast <32 x i8> %i.ey to <8 x i32>
  %i.fc = shufflevector <8 x i32> %i.fa, <8 x i32> %i.fb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fd = bitcast <8 x i32> %i.fc to <32 x i8>    ; 2 uses
  %i.fe = shufflevector <32 x i8> %i.ez, <32 x i8> %i.fd, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ff = shufflevector <32 x i8> %i.ez, <32 x i8> %i.fd, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fg = shufflevector <32 x i8> %i.fe, <32 x i8> %i.ff, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fh = bitcast <32 x i8> %i.fe to <8 x i32>
  %i.fi = bitcast <32 x i8> %i.ff to <8 x i32>
  %i.fj = shufflevector <8 x i32> %i.fh, <8 x i32> %i.fi, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fk = shl nuw nsw i64 %.078106.i, 5           ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 %i.fk
  store <32 x i8> %i.fg, ptr %i.fl, align 1, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fk
  store <8 x i32> %i.fj, ptr %i.fm, align 1, !tbaa !7
  %i.fn = add nuw nsw i64 %.078106.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fn, %i.cs
  br i1 %exitcond.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit, label %.preheader.preheader.i, !llvm.loop !153

_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa: ; preds = %.preheader.preheader.i.i
  %lcmp.mod95.not = icmp eq i64 %xtraiter94, 0
  br i1 %lcmp.mod95.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit, label %.preheader.preheader.i.i.epil.preheader

.preheader.preheader.i.i.epil.preheader:          ; preds = %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa, %.preheader.preheader.i.i.preheader
  %.079106.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.preheader ], [ %i.cr, %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi2EEEvPKhilPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod96 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.fo = shl nuw i64 %.079106.i.i.epil.init, 5
  %i.fp = getelementptr i8, ptr %0, i64 %i.fo     ; 2 uses
  %i.fq = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.fp) ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fp, i64 16
  %i.fs = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.fr) ; 2 uses
  %i.ft = shufflevector <16 x i8> %i.fq, <16 x i8> %i.fs, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %i.fu = shufflevector <16 x i8> %i.fq, <16 x i8> %i.fs, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.fv = shl nuw nsw i64 %.079106.i.i.epil.init, 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %3, i64 %i.fv
  store <16 x i8> %i.ft, ptr %i.fw, align 1, !tbaa !7
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fv
  store <16 x i8> %i.fu, ptr %i.fx, align 1, !tbaa !7
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
  br i1 %i.i, label %iter.check149, label %.preheader100.i.i

iter.check149:                                    ; preds = %bb.b
  %i.j = sub i64 %2, %i.h                         ; 4 uses
  %min.iters.check132 = icmp ult i64 %i.j, 4
  br i1 %min.iters.check132, label %.preheader101.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check149
  %i.k = xor i64 %i.h, -1
  %i.l = add i64 %2, %i.k                         ; 5 uses
  %i.m = shl i64 %i.g, 6                          ; 4 uses
  %scevgep69 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %mul.result = shl i64 %i.l, 2
  %i.n = getelementptr i8, ptr %scevgep69, i64 %mul.result
  %i.o = icmp ult ptr %i.n, %scevgep69
  %i.p = getelementptr i8, ptr %0, i64 %i.m
  %scevgep70 = getelementptr i8, ptr %i.p, i64 1  ; 2 uses
  %mul.result72 = shl i64 %i.l, 2
  %mul.overflow73 = icmp ugt i64 %i.l, 4611686018427387903
  %i.q = getelementptr i8, ptr %scevgep70, i64 %mul.result72
  %i.r = icmp ult ptr %i.q, %scevgep70
  %i.s = or i1 %i.r, %mul.overflow73
  %i.t = getelementptr i8, ptr %0, i64 %i.m
  %scevgep74 = getelementptr i8, ptr %i.t, i64 2  ; 2 uses
  %mul.result76 = shl i64 %i.l, 2
  %i.u = getelementptr i8, ptr %scevgep74, i64 %mul.result76
  %i.v = icmp ult ptr %i.u, %scevgep74
  %i.w = getelementptr i8, ptr %0, i64 %i.m
  %scevgep78 = getelementptr i8, ptr %i.w, i64 3  ; 2 uses
  %mul.result80 = shl i64 %i.l, 2
  %i.x = getelementptr i8, ptr %scevgep78, i64 %mul.result80
  %i.y = icmp ult ptr %i.x, %scevgep78
  %i.z = or i1 %i.o, %i.s
  %i.aa = or i1 %i.v, %i.z
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %.preheader101.i.i.preheader, label %vector.memcheck82

vector.memcheck82:                                ; preds = %vector.scevcheck
  %scevgep83 = getelementptr i8, ptr %3, i64 %i.h ; 4 uses
  %scevgep84 = getelementptr i8, ptr %3, i64 %2   ; 4 uses
  %i.ac = getelementptr i8, ptr %3, i64 %2
  %scevgep85 = getelementptr i8, ptr %i.ac, i64 %i.h ; 4 uses
  %scevgep86 = getelementptr i8, ptr %3, i64 %i.c ; 4 uses
  %i.ad = getelementptr i8, ptr %3, i64 %i.h
  %scevgep87 = getelementptr i8, ptr %i.ad, i64 %i.c ; 4 uses
  %scevgep88 = getelementptr i8, ptr %3, i64 %i.e ; 4 uses
  %i.ae = getelementptr i8, ptr %3, i64 %i.h
  %scevgep89 = getelementptr i8, ptr %i.ae, i64 %i.e ; 4 uses
  %i.af = shl i64 %2, 2                           ; 2 uses
  %scevgep90 = getelementptr i8, ptr %3, i64 %i.af ; 4 uses
  %i.ag = shl i64 %i.g, 6
  %scevgep91 = getelementptr i8, ptr %0, i64 %i.ag ; 4 uses
  %scevgep92 = getelementptr i8, ptr %0, i64 %i.af ; 4 uses
  %bound093 = icmp ult ptr %scevgep83, %scevgep86
  %bound194 = icmp ult ptr %scevgep85, %scevgep84
  %found.conflict95 = and i1 %bound093, %bound194
  %bound096 = icmp ult ptr %scevgep83, %scevgep88
  %bound197 = icmp ult ptr %scevgep87, %scevgep84
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %found.conflict95, %found.conflict98
  %bound0100 = icmp ult ptr %scevgep83, %scevgep90
  %bound1101 = icmp ult ptr %scevgep89, %scevgep84
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %scevgep83, %scevgep92
  %bound1105 = icmp ult ptr %scevgep91, %scevgep84
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep85, %scevgep88
  %bound1109 = icmp ult ptr %scevgep87, %scevgep86
end_hunk_3
begin_hunk_4_@_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh:bb.a
vec.epilog.middle.block164:                       ; preds = %vec.epilog.vector.body156
  %cmp.n165 = icmp eq i64 %n.mod.vf154, 0
  br i1 %cmp.n165, label %.preheader100.i.i, label %.preheader101.i.i.preheader

.preheader101.i.i.preheader:                      ; preds = %vector.memcheck82, %vector.scevcheck, %iter.check149, %vec.epilog.iter.check151, %vec.epilog.middle.block164
  %.073104.i.i.ph = phi i64 [ %i.h, %iter.check149 ], [ %i.h, %vector.scevcheck ], [ %i.h, %vector.memcheck82 ], [ %i.ah, %vec.epilog.iter.check151 ], [ %i.aq, %vec.epilog.middle.block164 ] ; 6 uses
  %i.az = sub i64 %2, %.073104.i.i.ph
  %.neg170 = add i64 %.073104.i.i.ph, 1
  %xtraiter168 = and i64 %i.az, 1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.preheader101.i.i.prol.loopexit, label %.preheader101.i.i.prol

.preheader101.i.i.prol:                           ; preds = %.preheader101.i.i.preheader
  %i.ba = shl nsw i64 %.073104.i.i.ph, 2
  %i.bb = getelementptr i8, ptr %0, i64 %i.ba     ; 4 uses
  %invariant.gep.i.i.prol = getelementptr i8, ptr %3, i64 %.073104.i.i.ph ; 4 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !7
  store i8 %i.bc, ptr %invariant.gep.i.i.prol, align 1, !tbaa !7
  %i.bd = getelementptr i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !7
  %gep.1.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.prol, i64 %2
  store i8 %i.be, ptr %gep.1.i.i.prol, align 1, !tbaa !7
  %i.bf = getelementptr i8, ptr %i.bb, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !7
  %gep.2.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.prol, i64 %i.c
  store i8 %i.bg, ptr %gep.2.i.i.prol, align 1, !tbaa !7
  %i.bh = getelementptr i8, ptr %i.bb, i64 3
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  %gep.3.i.i.prol = getelementptr i8, ptr %invariant.gep.i.i.prol, i64 %i.e
  store i8 %i.bi, ptr %gep.3.i.i.prol, align 1, !tbaa !7
  %i.bj = add nsw i64 %.073104.i.i.ph, 1
  br label %.preheader101.i.i.prol.loopexit

.preheader101.i.i.prol.loopexit:                  ; preds = %.preheader101.i.i.prol, %.preheader101.i.i.preheader
  %.073104.i.i.unr = phi i64 [ %.073104.i.i.ph, %.preheader101.i.i.preheader ], [ %i.bj, %.preheader101.i.i.prol ]
  %i.bk = icmp eq i64 %2, %.neg170
  br i1 %i.bk, label %.preheader100.i.i, label %.preheader101.i.i

.preheader101.i.i:                                ; preds = %.preheader101.i.i.prol.loopexit, %.preheader101.i.i
  %.073104.i.i = phi i64 [ %i.ce, %.preheader101.i.i ], [ %.073104.i.i.unr, %.preheader101.i.i.prol.loopexit ] ; 4 uses
  %i.bl = shl nsw i64 %.073104.i.i, 2
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl     ; 4 uses
  %invariant.gep.i.i = getelementptr i8, ptr %3, i64 %.073104.i.i ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  store i8 %i.bn, ptr %invariant.gep.i.i, align 1, !tbaa !7
  %i.bo = getelementptr i8, ptr %i.bm, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !7
  %gep.1.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %2
  store i8 %i.bp, ptr %gep.1.i.i, align 1, !tbaa !7
  %i.bq = getelementptr i8, ptr %i.bm, i64 2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !7
  %gep.2.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.c
  store i8 %i.br, ptr %gep.2.i.i, align 1, !tbaa !7
  %i.bs = getelementptr i8, ptr %i.bm, i64 3
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %gep.3.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %i.e
  store i8 %i.bt, ptr %gep.3.i.i, align 1, !tbaa !7
  %i.bu = add nsw i64 %.073104.i.i, 1             ; 2 uses
  %i.bv = shl nsw i64 %i.bu, 2
  %i.bw = getelementptr i8, ptr %0, i64 %i.bv     ; 4 uses
  %invariant.gep.i.i.1 = getelementptr i8, ptr %3, i64 %i.bu ; 4 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !7
  store i8 %i.bx, ptr %invariant.gep.i.i.1, align 1, !tbaa !7
  %i.by = getelementptr i8, ptr %i.bw, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7
  %gep.1.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.1, i64 %2
  store i8 %i.bz, ptr %gep.1.i.i.1, align 1, !tbaa !7
  %i.ca = getelementptr i8, ptr %i.bw, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !7
  %gep.2.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.1, i64 %i.c
  store i8 %i.cb, ptr %gep.2.i.i.1, align 1, !tbaa !7
  %i.cc = getelementptr i8, ptr %i.bw, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !7
  %gep.3.i.i.1 = getelementptr i8, ptr %invariant.gep.i.i.1, i64 %i.e
  store i8 %i.cd, ptr %gep.3.i.i.1, align 1, !tbaa !7
  %i.ce = add nsw i64 %.073104.i.i, 2             ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ce, %2
  br i1 %exitcond.not.i.i.1, label %.preheader100.i.i, label %.preheader101.i.i, !llvm.loop !171

.preheader100.i.i:                                ; preds = %.preheader101.i.i.prol.loopexit, %.preheader101.i.i, %middle.block146, %vec.epilog.middle.block164, %bb.b
  %i.cf = icmp sgt i64 %2, 15
  br i1 %i.cf, label %.preheader96.preheader.i.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit

.preheader96.preheader.i.i:                       ; preds = %.preheader100.i.i, %.preheader96.preheader.i.i
  %.079110.i.i = phi i64 [ %i.dg, %.preheader96.preheader.i.i ], [ 0, %.preheader100.i.i ] ; 3 uses
  %i.cg = shl i64 %.079110.i.i, 6
  %i.ch = getelementptr i8, ptr %0, i64 %i.cg     ; 4 uses
  %i.ci = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ch) ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %i.ck = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cj) ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ch, i64 32
  %i.cm = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cl) ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ch, i64 48
  %i.co = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cn) ; 2 uses
  %i.cp = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.cq = bitcast <16 x i8> %i.cp to <2 x i64>    ; 2 uses
  %i.cr = shufflevector <16 x i8> %i.ci, <16 x i8> %i.ck, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cs = bitcast <16 x i8> %i.cr to <2 x i64>    ; 2 uses
  %i.ct = shufflevector <16 x i8> %i.cm, <16 x i8> %i.co, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.cu = bitcast <16 x i8> %i.ct to <2 x i64>    ; 2 uses
  %i.cv = shufflevector <16 x i8> %i.cm, <16 x i8> %i.co, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>    ; 2 uses
  %i.cx = shufflevector <2 x i64> %i.cq, <2 x i64> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.cy = shufflevector <2 x i64> %i.cq, <2 x i64> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.cz = shufflevector <2 x i64> %i.cs, <2 x i64> %i.cw, <2 x i32> <i32 0, i32 2>
  %i.da = shufflevector <2 x i64> %i.cs, <2 x i64> %i.cw, <2 x i32> <i32 1, i32 3>
  %i.db = shl nuw nsw i64 %.079110.i.i, 4         ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %i.db
  store <2 x i64> %i.cx, ptr %i.dc, align 1, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.db
  store <2 x i64> %i.cy, ptr %i.dd, align 1, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.db
  store <2 x i64> %i.cz, ptr %i.de, align 1, !tbaa !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.db
  store <2 x i64> %i.da, ptr %i.df, align 1, !tbaa !7
  %i.dg = add nuw nsw i64 %.079110.i.i, 1         ; 2 uses
  %exitcond121.not.i.i = icmp eq i64 %i.dg, %i.g
  br i1 %exitcond121.not.i.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit, label %.preheader96.preheader.i.i, !llvm.loop !172

bb.c:                                             ; preds = %bb.a
  %i.dh = lshr i64 %2, 5
  %i.di = and i64 %i.dh, 144115188075855871       ; 4 uses
  %i.dj = shl nuw nsw i64 %i.di, 5                ; 12 uses
  %i.dk = icmp samesign ult i64 %i.dj, %2
  br i1 %i.dk, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %bb.c
  %i.dl = sub nuw nsw i64 %2, %i.dj               ; 4 uses
  %min.iters.check = icmp ult i64 %i.dl, 4
  br i1 %min.iters.check, label %.preheader90.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %3, i64 %i.dj  ; 4 uses
  %scevgep10 = getelementptr i8, ptr %3, i64 %2   ; 4 uses
  %i.dm = getelementptr i8, ptr %3, i64 %2
  %scevgep11 = getelementptr i8, ptr %i.dm, i64 %i.dj ; 4 uses
  %scevgep12 = getelementptr i8, ptr %3, i64 %i.c ; 4 uses
  %i.dn = getelementptr i8, ptr %3, i64 %i.dj
  %scevgep13 = getelementptr i8, ptr %i.dn, i64 %i.c ; 4 uses
  %scevgep14 = getelementptr i8, ptr %3, i64 %i.e ; 4 uses
  %i.do = getelementptr i8, ptr %3, i64 %i.dj
  %scevgep15 = getelementptr i8, ptr %i.do, i64 %i.e ; 4 uses
  %i.dp = shl i64 %2, 2                           ; 2 uses
  %scevgep16 = getelementptr i8, ptr %3, i64 %i.dp ; 4 uses
  %i.dq = shl nuw i64 %i.di, 7
  %scevgep17 = getelementptr i8, ptr %0, i64 %i.dq ; 4 uses
  %scevgep18 = getelementptr i8, ptr %0, i64 %i.dp ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep12
  %bound1 = icmp ult ptr %scevgep11, %scevgep10
  %found.conflict = and i1 %bound0, %bound1
  %bound019 = icmp ult ptr %scevgep, %scevgep14
  %bound120 = icmp ult ptr %scevgep13, %scevgep10
  %found.conflict21 = and i1 %bound019, %bound120
  %conflict.rdx = or i1 %found.conflict, %found.conflict21
  %bound022 = icmp ult ptr %scevgep, %scevgep16
  %bound123 = icmp ult ptr %scevgep15, %scevgep10
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx25 = or i1 %conflict.rdx, %found.conflict24
  %bound026 = icmp ult ptr %scevgep, %scevgep18
  %bound127 = icmp ult ptr %scevgep17, %scevgep10
  %found.conflict28 = and i1 %bound026, %bound127
  %conflict.rdx29 = or i1 %conflict.rdx25, %found.conflict28
  %bound030 = icmp ult ptr %scevgep11, %scevgep14
  %bound131 = icmp ult ptr %scevgep13, %scevgep12
  %found.conflict32 = and i1 %bound030, %bound131
  %conflict.rdx33 = or i1 %conflict.rdx29, %found.conflict32
  %bound034 = icmp ult ptr %scevgep11, %scevgep16
  %bound135 = icmp ult ptr %scevgep15, %scevgep12
  %found.conflict36 = and i1 %bound034, %bound135
  %conflict.rdx37 = or i1 %conflict.rdx33, %found.conflict36
  %bound038 = icmp ult ptr %scevgep11, %scevgep18
  %bound139 = icmp ult ptr %scevgep17, %scevgep12
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx41 = or i1 %conflict.rdx37, %found.conflict40
  %bound042 = icmp ult ptr %scevgep13, %scevgep16
  %bound143 = icmp ult ptr %scevgep15, %scevgep14
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx45 = or i1 %conflict.rdx41, %found.conflict44
  %bound046 = icmp ult ptr %scevgep13, %scevgep18
  %bound147 = icmp ult ptr %scevgep17, %scevgep14
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx49 = or i1 %conflict.rdx45, %found.conflict48
  %bound050 = icmp ult ptr %scevgep15, %scevgep18
  %bound151 = icmp ult ptr %scevgep17, %scevgep16
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx49, %found.conflict52
  br i1 %conflict.rdx53, label %.preheader90.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check54 = icmp ult i64 %i.dl, 16
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 15                      ; 3 uses
  %n.vec = sub nuw nsw i64 %i.dl, %n.mod.vf       ; 3 uses
  %i.dr = add nuw i64 %i.dj, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = add nuw i64 %i.dj, %index               ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.dv = getelementptr i8, ptr %3, i64 %i.ds     ; 4 uses
  %wide.vec = load <64 x i8>, ptr %i.du, align 1, !tbaa !7, !alias.scope !173 ; 4 uses
  %strided.vec = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec55 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec56 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec57 = shufflevector <64 x i8> %wide.vec, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <16 x i8> %strided.vec, ptr %i.dv, align 1, !tbaa !7, !alias.scope !176, !noalias !178
  %i.dw = getelementptr i8, ptr %i.dv, i64 %2
  store <16 x i8> %strided.vec55, ptr %i.dw, align 1, !tbaa !7, !alias.scope !182, !noalias !183
  %i.dx = getelementptr i8, ptr %i.dv, i64 %i.c
  store <16 x i8> %strided.vec56, ptr %i.dx, align 1, !tbaa !7, !alias.scope !184, !noalias !185
  %i.dy = getelementptr i8, ptr %i.dv, i64 %i.e
  store <16 x i8> %strided.vec57, ptr %i.dy, align 1, !tbaa !7, !alias.scope !186, !noalias !173
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 4
  br i1 %min.epilog.iters.check, label %.preheader90.i.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf58 = and i64 %2, 3                     ; 2 uses
  %n.vec59 = sub nsw i64 %i.dl, %n.mod.vf58       ; 2 uses
  %i.ea = add i64 %i.dj, %n.vec59
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.eb = add nuw i64 %i.dj, %index60             ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %3, i64 %i.eb     ; 4 uses
  %wide.vec61 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !7, !alias.scope !173 ; 4 uses
  %strided.vec62 = shufflevector <16 x i8> %wide.vec61, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec63 = shufflevector <16 x i8> %wide.vec61, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec64 = shufflevector <16 x i8> %wide.vec61, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec65 = shufflevector <16 x i8> %wide.vec61, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  store <4 x i8> %strided.vec62, ptr %i.ee, align 1, !tbaa !7, !alias.scope !176, !noalias !178
  %i.ef = getelementptr i8, ptr %i.ee, i64 %2
  store <4 x i8> %strided.vec63, ptr %i.ef, align 1, !tbaa !7, !alias.scope !182, !noalias !183
  %i.eg = getelementptr i8, ptr %i.ee, i64 %i.c
  store <4 x i8> %strided.vec64, ptr %i.eg, align 1, !tbaa !7, !alias.scope !184, !noalias !185
  %i.eh = getelementptr i8, ptr %i.ee, i64 %i.e
  store <4 x i8> %strided.vec65, ptr %i.eh, align 1, !tbaa !7, !alias.scope !186, !noalias !173
  %index.next66 = add nuw i64 %index60, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next66, %n.vec59
  br i1 %i.ei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.mod.vf58, 0
  br i1 %cmp.n67, label %._crit_edge.i, label %.preheader90.i.preheader

.preheader90.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08193.i.ph = phi i64 [ %i.dj, %iter.check ], [ %i.dj, %vector.memcheck ], [ %i.dr, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ] ; 6 uses
  %i.ej = sub i64 %2, %.08193.i.ph
  %.neg = add i64 %.08193.i.ph, 1
  %xtraiter = and i64 %i.ej, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader90.i.prol.loopexit, label %.preheader90.i.prol

.preheader90.i.prol:                              ; preds = %.preheader90.i.preheader
  %i.ek = shl nuw nsw i64 %.08193.i.ph, 2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %i.ek ; 4 uses
  %invariant.gep.i.prol = getelementptr i8, ptr %3, i64 %.08193.i.ph ; 4 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !7
  store i8 %i.em, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %2
  store i8 %i.eo, ptr %gep.1.i.prol, align 1, !tbaa !7
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.c
  store i8 %i.eq, ptr %gep.2.i.prol, align 1, !tbaa !7
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %i.es = load i8, ptr %i.er, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  store i8 %i.es, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.et = add nuw nsw i64 %.08193.i.ph, 1
  br label %.preheader90.i.prol.loopexit

.preheader90.i.prol.loopexit:                     ; preds = %.preheader90.i.prol, %.preheader90.i.preheader
  %.08193.i.unr = phi i64 [ %.08193.i.ph, %.preheader90.i.preheader ], [ %i.et, %.preheader90.i.prol ]
  %i.eu = icmp eq i64 %2, %.neg
  br i1 %i.eu, label %._crit_edge.i, label %.preheader90.i

.preheader90.i:                                   ; preds = %.preheader90.i.prol.loopexit, %.preheader90.i
  %.08193.i = phi i64 [ %i.fo, %.preheader90.i ], [ %.08193.i.unr, %.preheader90.i.prol.loopexit ] ; 4 uses
  %i.ev = shl nuw nsw i64 %.08193.i, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 %i.ev ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %3, i64 %.08193.i ; 4 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !7
  store i8 %i.ex, ptr %invariant.gep.i, align 1, !tbaa !7
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %2
  store i8 %i.ez, ptr %gep.1.i, align 1, !tbaa !7
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.c
  store i8 %i.fb, ptr %gep.2.i, align 1, !tbaa !7
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  store i8 %i.fd, ptr %gep.3.i, align 1, !tbaa !7
  %i.fe = add nuw nsw i64 %.08193.i, 1            ; 2 uses
  %i.ff = shl nuw nsw i64 %i.fe, 2
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ff ; 4 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %3, i64 %i.fe ; 4 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !7
  store i8 %i.fh, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %2
  store i8 %i.fj, ptr %gep.1.i.1, align 1, !tbaa !7
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !7
  %gep.2.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.c
  store i8 %i.fl, ptr %gep.2.i.1, align 1, !tbaa !7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 3
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !7
  %gep.3.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.e
  store i8 %i.fn, ptr %gep.3.i.1, align 1, !tbaa !7
  %i.fo = add nuw nsw i64 %.08193.i, 2            ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.fo, %2
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.preheader90.i, !llvm.loop !189

._crit_edge.i:                                    ; preds = %.preheader90.i.prol.loopexit, %.preheader90.i, %middle.block, %vec.epilog.middle.block, %bb.c
  %.not.i = icmp eq i64 %i.di, 0
  br i1 %.not.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit, label %.preheader89.i

.preheader89.i:                                   ; preds = %._crit_edge.i, %.preheader89.i
  %.079100.i = phi i64 [ %i.go, %.preheader89.i ], [ 0, %._crit_edge.i ] ; 6 uses
  %i.fp = shl nuw nsw i64 %.079100.i, 7
  %scevgep.i = getelementptr nuw i8, ptr %0, i64 %i.fp ; 4 uses
  %.sroa.0121.0.copyload.i = load <32 x i8>, ptr %scevgep.i, align 1, !tbaa !7 ; 2 uses
  %.sroa.4122.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 32
  %.sroa.4122.0.copyload.i = load <32 x i8>, ptr %.sroa.4122.0.scevgep.sroa_idx.i, align 1, !tbaa !7 ; 2 uses
  %.sroa.5.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 64
  %.sroa.5.0.copyload.i = load <32 x i8>, ptr %.sroa.5.0.scevgep.sroa_idx.i, align 1, !tbaa !7 ; 2 uses
  %.sroa.6123.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 96
  %.sroa.6123.0.copyload.i = load <32 x i8>, ptr %.sroa.6123.0.scevgep.sroa_idx.i, align 1, !tbaa !7 ; 2 uses
  %i.fq = shufflevector <32 x i8> %.sroa.0121.0.copyload.i, <32 x i8> %.sroa.4122.0.copyload.i, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 36, i32 40, i32 44, i32 1, i32 5, i32 9, i32 13, i32 33, i32 37, i32 41, i32 45, i32 16, i32 20, i32 24, i32 28, i32 48, i32 52, i32 56, i32 60, i32 17, i32 21, i32 25, i32 29, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %i.fr = bitcast <32 x i8> %i.fq to <4 x i64>
  %i.fs = shufflevector <32 x i8> %.sroa.0121.0.copyload.i, <32 x i8> %.sroa.4122.0.copyload.i, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 34, i32 38, i32 42, i32 46, i32 3, i32 7, i32 11, i32 15, i32 35, i32 39, i32 43, i32 47, i32 18, i32 22, i32 26, i32 30, i32 50, i32 54, i32 58, i32 62, i32 19, i32 23, i32 27, i32 31, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.ft = bitcast <32 x i8> %i.fs to <4 x i64>
  %i.fu = shufflevector <32 x i8> %.sroa.5.0.copyload.i, <32 x i8> %.sroa.6123.0.copyload.i, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 32, i32 36, i32 40, i32 44, i32 1, i32 5, i32 9, i32 13, i32 33, i32 37, i32 41, i32 45, i32 16, i32 20, i32 24, i32 28, i32 48, i32 52, i32 56, i32 60, i32 17, i32 21, i32 25, i32 29, i32 49, i32 53, i32 57, i32 61> ; 2 uses
  %i.fv = bitcast <32 x i8> %i.fu to <4 x i64>
  %i.fw = shufflevector <32 x i8> %.sroa.5.0.copyload.i, <32 x i8> %.sroa.6123.0.copyload.i, <32 x i32> <i32 2, i32 6, i32 10, i32 14, i32 34, i32 38, i32 42, i32 46, i32 3, i32 7, i32 11, i32 15, i32 35, i32 39, i32 43, i32 47, i32 18, i32 22, i32 26, i32 30, i32 50, i32 54, i32 58, i32 62, i32 19, i32 23, i32 27, i32 31, i32 51, i32 55, i32 59, i32 63> ; 2 uses
  %i.fx = bitcast <32 x i8> %i.fw to <4 x i64>
  %i.fy = shufflevector <32 x i8> %i.fq, <32 x i8> %i.fu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.fz = shufflevector <4 x i64> %i.fr, <4 x i64> %i.fv, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ga = shufflevector <32 x i8> %i.fs, <32 x i8> %i.fw, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gb = shufflevector <4 x i64> %i.ft, <4 x i64> %i.fx, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.gc = bitcast <32 x i8> %i.fy to <8 x i32>    ; 2 uses
  %i.gd = bitcast <4 x i64> %i.fz to <8 x i32>    ; 2 uses
  %i.ge = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gf = shufflevector <8 x i32> %i.gc, <8 x i32> %i.gd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.gg = bitcast <32 x i8> %i.ga to <8 x i32>    ; 2 uses
  %i.gh = bitcast <4 x i64> %i.gb to <8 x i32>    ; 2 uses
  %i.gi = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13>
  %i.gj = shufflevector <8 x i32> %i.gg, <8 x i32> %i.gh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15>
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.079100.i
  store <8 x i32> %i.ge, ptr %i.gk, align 1, !tbaa !7
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.079100.i
  store <8 x i32> %i.gf, ptr %i.gl, align 1, !tbaa !7
  %i.gm = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.079100.i
  store <8 x i32> %i.gi, ptr %i.gm, align 1, !tbaa !7
  %i.gn = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %.079100.i
  store <8 x i32> %i.gj, ptr %i.gn, align 1, !tbaa !7
  %i.go = add nuw nsw i64 %.079100.i, 1           ; 2 uses
  %exitcond112.not.i = icmp eq i64 %i.go, %i.di
  br i1 %exitcond112.not.i, label %_ZN5arrow4util8internal30ByteStreamSplitEncodeAvx2Impl4EPKhilPh.exit, label %.preheader89.i, !llvm.loop !190

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
  br i1 %i.q, label %iter.check517, label %.preheader100.i

iter.check517:                                    ; preds = %bb.b
  %i.r = sub i64 %2, %i.p                         ; 6 uses
  %min.iters.check505 = icmp ult i64 %i.r, 16
  br i1 %min.iters.check505, label %.preheader101.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check517
  %i.s = xor i64 %i.p, -1
  %i.t = add i64 %2, %i.s                         ; 9 uses
  %i.u = shl i64 %i.o, 7                          ; 8 uses
  %scevgep314 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %mul.result = shl i64 %i.t, 3
  %i.v = getelementptr i8, ptr %scevgep314, i64 %mul.result
  %i.w = icmp ult ptr %i.v, %scevgep314
  %i.x = getelementptr i8, ptr %0, i64 %i.u
  %scevgep315 = getelementptr i8, ptr %i.x, i64 1 ; 2 uses
  %mul.result317 = shl i64 %i.t, 3
  %mul.overflow318 = icmp ugt i64 %i.t, 2305843009213693951
  %i.y = getelementptr i8, ptr %scevgep315, i64 %mul.result317
  %i.z = icmp ult ptr %i.y, %scevgep315
end_hunk_4
begin_hunk_5_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh:bb.a
  %exitcond125.not.i = icmp eq i64 %i.bbc, %i.o
  br i1 %exitcond125.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader96.preheader.i, !llvm.loop !221

bb.c:                                             ; preds = %bb.a
  %i.bbd = lshr i64 %2, 5
  %i.bbe = and i64 %i.bbd, 72057594037927935      ; 4 uses
  %i.bbf = shl nuw nsw i64 %i.bbe, 5              ; 16 uses
  %i.bbg = icmp samesign ult i64 %i.bbf, %2
  br i1 %i.bbg, label %iter.check, label %.preheader102

iter.check:                                       ; preds = %bb.c
  %i.bbh = sub nuw nsw i64 %2, %i.bbf             ; 4 uses
  %min.iters.check = icmp ult i64 %i.bbh, 16
  br i1 %min.iters.check, label %.preheader103.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep150 = getelementptr i8, ptr %3, i64 %i.bbf ; 8 uses
  %scevgep151 = getelementptr i8, ptr %3, i64 %2  ; 8 uses
  %i.bbi = getelementptr i8, ptr %3, i64 %2
  %scevgep152 = getelementptr i8, ptr %i.bbi, i64 %i.bbf ; 8 uses
  %scevgep153 = getelementptr i8, ptr %3, i64 %i.c ; 8 uses
  %i.bbj = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep154 = getelementptr i8, ptr %i.bbj, i64 %i.c ; 8 uses
  %scevgep155 = getelementptr i8, ptr %3, i64 %i.e ; 8 uses
  %i.bbk = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep156 = getelementptr i8, ptr %i.bbk, i64 %i.e ; 8 uses
  %scevgep157 = getelementptr i8, ptr %3, i64 %i.g ; 8 uses
  %i.bbl = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep158 = getelementptr i8, ptr %i.bbl, i64 %i.g ; 8 uses
  %scevgep159 = getelementptr i8, ptr %3, i64 %i.i ; 8 uses
  %i.bbm = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep160 = getelementptr i8, ptr %i.bbm, i64 %i.i ; 8 uses
  %scevgep161 = getelementptr i8, ptr %3, i64 %i.k ; 8 uses
  %i.bbn = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep162 = getelementptr i8, ptr %i.bbn, i64 %i.k ; 8 uses
  %scevgep163 = getelementptr i8, ptr %3, i64 %i.m ; 8 uses
  %i.bbo = getelementptr i8, ptr %3, i64 %i.bbf
  %scevgep164 = getelementptr i8, ptr %i.bbo, i64 %i.m ; 8 uses
  %i.bbp = shl i64 %2, 3                          ; 2 uses
  %scevgep165 = getelementptr i8, ptr %3, i64 %i.bbp ; 8 uses
  %i.bbq = shl nuw i64 %i.bbe, 8
  %scevgep166 = getelementptr i8, ptr %0, i64 %i.bbq ; 8 uses
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.bbp ; 8 uses
  %bound0 = icmp ult ptr %scevgep150, %scevgep153
  %bound1 = icmp ult ptr %scevgep152, %scevgep151
  %found.conflict = and i1 %bound0, %bound1
  %bound0168 = icmp ult ptr %scevgep150, %scevgep155
  %bound1169 = icmp ult ptr %scevgep154, %scevgep151
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx = or i1 %found.conflict, %found.conflict170
  %bound0171 = icmp ult ptr %scevgep150, %scevgep157
  %bound1172 = icmp ult ptr %scevgep156, %scevgep151
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep150, %scevgep159
  %bound1176 = icmp ult ptr %scevgep158, %scevgep151
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep150, %scevgep161
  %bound1180 = icmp ult ptr %scevgep160, %scevgep151
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %scevgep150, %scevgep163
  %bound1184 = icmp ult ptr %scevgep162, %scevgep151
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep150, %scevgep165
  %bound1188 = icmp ult ptr %scevgep164, %scevgep151
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %scevgep150, %scevgep167
  %bound1192 = icmp ult ptr %scevgep166, %scevgep151
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %scevgep152, %scevgep155
  %bound1196 = icmp ult ptr %scevgep154, %scevgep153
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  %bound0199 = icmp ult ptr %scevgep152, %scevgep157
  %bound1200 = icmp ult ptr %scevgep156, %scevgep153
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  %bound0203 = icmp ult ptr %scevgep152, %scevgep159
  %bound1204 = icmp ult ptr %scevgep158, %scevgep153
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %conflict.rdx202, %found.conflict205
  %bound0207 = icmp ult ptr %scevgep152, %scevgep161
  %bound1208 = icmp ult ptr %scevgep160, %scevgep153
  %found.conflict209 = and i1 %bound0207, %bound1208
  %conflict.rdx210 = or i1 %conflict.rdx206, %found.conflict209
  %bound0211 = icmp ult ptr %scevgep152, %scevgep163
  %bound1212 = icmp ult ptr %scevgep162, %scevgep153
  %found.conflict213 = and i1 %bound0211, %bound1212
  %conflict.rdx214 = or i1 %conflict.rdx210, %found.conflict213
  %bound0215 = icmp ult ptr %scevgep152, %scevgep165
  %bound1216 = icmp ult ptr %scevgep164, %scevgep153
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %conflict.rdx214, %found.conflict217
  %bound0219 = icmp ult ptr %scevgep152, %scevgep167
  %bound1220 = icmp ult ptr %scevgep166, %scevgep153
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx222 = or i1 %conflict.rdx218, %found.conflict221
  %bound0223 = icmp ult ptr %scevgep154, %scevgep157
  %bound1224 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict225 = and i1 %bound0223, %bound1224
  %conflict.rdx226 = or i1 %conflict.rdx222, %found.conflict225
  %bound0227 = icmp ult ptr %scevgep154, %scevgep159
  %bound1228 = icmp ult ptr %scevgep158, %scevgep155
  %found.conflict229 = and i1 %bound0227, %bound1228
  %conflict.rdx230 = or i1 %conflict.rdx226, %found.conflict229
  %bound0231 = icmp ult ptr %scevgep154, %scevgep161
  %bound1232 = icmp ult ptr %scevgep160, %scevgep155
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %conflict.rdx230, %found.conflict233
  %bound0235 = icmp ult ptr %scevgep154, %scevgep163
  %bound1236 = icmp ult ptr %scevgep162, %scevgep155
  %found.conflict237 = and i1 %bound0235, %bound1236
  %conflict.rdx238 = or i1 %conflict.rdx234, %found.conflict237
  %bound0239 = icmp ult ptr %scevgep154, %scevgep165
  %bound1240 = icmp ult ptr %scevgep164, %scevgep155
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %conflict.rdx238, %found.conflict241
  %bound0243 = icmp ult ptr %scevgep154, %scevgep167
  %bound1244 = icmp ult ptr %scevgep166, %scevgep155
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %scevgep156, %scevgep159
  %bound1248 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %scevgep156, %scevgep161
  %bound1252 = icmp ult ptr %scevgep160, %scevgep157
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %scevgep156, %scevgep163
  %bound1256 = icmp ult ptr %scevgep162, %scevgep157
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %scevgep156, %scevgep165
  %bound1260 = icmp ult ptr %scevgep164, %scevgep157
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %scevgep156, %scevgep167
  %bound1264 = icmp ult ptr %scevgep166, %scevgep157
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  %bound0267 = icmp ult ptr %scevgep158, %scevgep161
  %bound1268 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx270 = or i1 %conflict.rdx266, %found.conflict269
  %bound0271 = icmp ult ptr %scevgep158, %scevgep163
  %bound1272 = icmp ult ptr %scevgep162, %scevgep159
  %found.conflict273 = and i1 %bound0271, %bound1272
  %conflict.rdx274 = or i1 %conflict.rdx270, %found.conflict273
  %bound0275 = icmp ult ptr %scevgep158, %scevgep165
  %bound1276 = icmp ult ptr %scevgep164, %scevgep159
  %found.conflict277 = and i1 %bound0275, %bound1276
  %conflict.rdx278 = or i1 %conflict.rdx274, %found.conflict277
  %bound0279 = icmp ult ptr %scevgep158, %scevgep167
  %bound1280 = icmp ult ptr %scevgep166, %scevgep159
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %conflict.rdx278, %found.conflict281
  %bound0283 = icmp ult ptr %scevgep160, %scevgep163
  %bound1284 = icmp ult ptr %scevgep162, %scevgep161
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %conflict.rdx282, %found.conflict285
  %bound0287 = icmp ult ptr %scevgep160, %scevgep165
  %bound1288 = icmp ult ptr %scevgep164, %scevgep161
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %scevgep160, %scevgep167
  %bound1292 = icmp ult ptr %scevgep166, %scevgep161
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  %bound0295 = icmp ult ptr %scevgep162, %scevgep165
  %bound1296 = icmp ult ptr %scevgep164, %scevgep163
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %conflict.rdx294, %found.conflict297
  %bound0299 = icmp ult ptr %scevgep162, %scevgep167
  %bound1300 = icmp ult ptr %scevgep166, %scevgep163
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  %bound0303 = icmp ult ptr %scevgep164, %scevgep167
  %bound1304 = icmp ult ptr %scevgep166, %scevgep165
  %found.conflict305 = and i1 %bound0303, %bound1304
  %conflict.rdx306 = or i1 %conflict.rdx302, %found.conflict305
  br i1 %conflict.rdx306, label %.preheader103.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check307 = icmp ult i64 %i.bbh, 32
  br i1 %min.iters.check307, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 31                      ; 3 uses
  %n.vec = sub nuw nsw i64 %i.bbh, %n.mod.vf      ; 3 uses
  %i.bbr = add nuw i64 %i.bbf, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bbs = add nuw i64 %i.bbf, %index             ; 33 uses
  %i.bbt = shl nuw nsw i64 %i.bbs, 3
  %i.bbu = shl i64 %i.bbs, 3
  %i.bbv = shl i64 %i.bbs, 3
  %i.bbw = shl i64 %i.bbs, 3
  %i.bbx = shl i64 %i.bbs, 3
  %i.bby = shl i64 %i.bbs, 3
  %i.bbz = shl i64 %i.bbs, 3
  %i.bca = shl i64 %i.bbs, 3
  %i.bcb = shl i64 %i.bbs, 3
  %i.bcc = shl i64 %i.bbs, 3
  %i.bcd = shl i64 %i.bbs, 3
  %i.bce = shl i64 %i.bbs, 3
  %i.bcf = shl i64 %i.bbs, 3
  %i.bcg = shl i64 %i.bbs, 3
  %i.bch = shl i64 %i.bbs, 3
  %i.bci = shl i64 %i.bbs, 3
  %i.bcj = shl i64 %i.bbs, 3
  %i.bck = shl i64 %i.bbs, 3
  %i.bcl = shl i64 %i.bbs, 3
  %i.bcm = shl i64 %i.bbs, 3
  %i.bcn = shl i64 %i.bbs, 3
  %i.bco = shl i64 %i.bbs, 3
  %i.bcp = shl i64 %i.bbs, 3
  %i.bcq = shl i64 %i.bbs, 3
  %i.bcr = shl i64 %i.bbs, 3
  %i.bcs = shl i64 %i.bbs, 3
  %i.bct = shl i64 %i.bbs, 3
  %i.bcu = shl i64 %i.bbs, 3
  %i.bcv = shl i64 %i.bbs, 3
  %i.bcw = shl i64 %i.bbs, 3
  %i.bcx = shl i64 %i.bbs, 3
  %i.bcy = shl i64 %i.bbs, 3
  %i.bcz = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbt ; 8 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbu ; 8 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bdc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbv ; 8 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 16
  %i.bde = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbw ; 8 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 24
  %i.bdg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbx ; 8 uses
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 32
  %i.bdi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bby ; 8 uses
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 40
  %i.bdk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bbz ; 8 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdk, i64 48
  %i.bdm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bca ; 8 uses
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 56
  %i.bdo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcb ; 8 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 64
  %i.bdq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcc ; 8 uses
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdq, i64 72
  %i.bds = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcd ; 8 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.bds, i64 80
  %i.bdu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bce ; 8 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 88
  %i.bdw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcf ; 8 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %i.bdw, i64 96
  %i.bdy = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcg ; 8 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 104
  %i.bea = getelementptr inbounds nuw i8, ptr %0, i64 %i.bch ; 8 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 112
  %i.bec = getelementptr inbounds nuw i8, ptr %0, i64 %i.bci ; 8 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 120
  %i.bee = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcj ; 8 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 128
  %i.beg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bck ; 8 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.beg, i64 136
  %i.bei = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcl ; 8 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 144
  %i.bek = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcm ; 8 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 152
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcn ; 8 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 160
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bco ; 8 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 168
  %i.beq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcp ; 8 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 176
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcq ; 8 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 184
  %i.beu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcr ; 8 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 192
  %i.bew = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcs ; 8 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.bew, i64 200
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 %i.bct ; 8 uses
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 208
  %i.bfa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcu ; 8 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bfa, i64 216
  %i.bfc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcv ; 8 uses
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 224
  %i.bfe = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcw ; 8 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 232
  %i.bfg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcx ; 8 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 240
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 %i.bcy ; 8 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfi, i64 248
  %i.bfk = getelementptr i8, ptr %3, i64 %i.bbs   ; 8 uses
  %i.bfl = load i8, ptr %i.bcz, align 1, !tbaa !7, !alias.scope !222
  %i.bfm = load i8, ptr %i.bdb, align 1, !tbaa !7, !alias.scope !222
  %i.bfn = load i8, ptr %i.bdd, align 1, !tbaa !7, !alias.scope !222
  %i.bfo = load i8, ptr %i.bdf, align 1, !tbaa !7, !alias.scope !222
  %i.bfp = load i8, ptr %i.bdh, align 1, !tbaa !7, !alias.scope !222
  %i.bfq = load i8, ptr %i.bdj, align 1, !tbaa !7, !alias.scope !222
  %i.bfr = load i8, ptr %i.bdl, align 1, !tbaa !7, !alias.scope !222
  %i.bfs = load i8, ptr %i.bdn, align 1, !tbaa !7, !alias.scope !222
  %i.bft = load i8, ptr %i.bdp, align 1, !tbaa !7, !alias.scope !222
  %i.bfu = load i8, ptr %i.bdr, align 1, !tbaa !7, !alias.scope !222
  %i.bfv = load i8, ptr %i.bdt, align 1, !tbaa !7, !alias.scope !222
  %i.bfw = load i8, ptr %i.bdv, align 1, !tbaa !7, !alias.scope !222
  %i.bfx = load i8, ptr %i.bdx, align 1, !tbaa !7, !alias.scope !222
  %i.bfy = load i8, ptr %i.bdz, align 1, !tbaa !7, !alias.scope !222
  %i.bfz = load i8, ptr %i.beb, align 1, !tbaa !7, !alias.scope !222
  %i.bga = load i8, ptr %i.bed, align 1, !tbaa !7, !alias.scope !222
  %i.bgb = load i8, ptr %i.bef, align 1, !tbaa !7, !alias.scope !222
  %i.bgc = load i8, ptr %i.beh, align 1, !tbaa !7, !alias.scope !222
  %i.bgd = load i8, ptr %i.bej, align 1, !tbaa !7, !alias.scope !222
  %i.bge = load i8, ptr %i.bel, align 1, !tbaa !7, !alias.scope !222
  %i.bgf = load i8, ptr %i.ben, align 1, !tbaa !7, !alias.scope !222
  %i.bgg = load i8, ptr %i.bep, align 1, !tbaa !7, !alias.scope !222
  %i.bgh = load i8, ptr %i.ber, align 1, !tbaa !7, !alias.scope !222
  %i.bgi = load i8, ptr %i.bet, align 1, !tbaa !7, !alias.scope !222
  %i.bgj = load i8, ptr %i.bev, align 1, !tbaa !7, !alias.scope !222
  %i.bgk = load i8, ptr %i.bex, align 1, !tbaa !7, !alias.scope !222
  %i.bgl = load i8, ptr %i.bez, align 1, !tbaa !7, !alias.scope !222
  %i.bgm = load i8, ptr %i.bfb, align 1, !tbaa !7, !alias.scope !222
  %i.bgn = load i8, ptr %i.bfd, align 1, !tbaa !7, !alias.scope !222
  %i.bgo = load i8, ptr %i.bff, align 1, !tbaa !7, !alias.scope !222
  %i.bgp = load i8, ptr %i.bfh, align 1, !tbaa !7, !alias.scope !222
  %i.bgq = load i8, ptr %i.bfj, align 1, !tbaa !7, !alias.scope !222
  %i.bgr = insertelement <32 x i8> poison, i8 %i.bfl, i64 0
  %i.bgs = insertelement <32 x i8> %i.bgr, i8 %i.bfm, i64 1
  %i.bgt = insertelement <32 x i8> %i.bgs, i8 %i.bfn, i64 2
  %i.bgu = insertelement <32 x i8> %i.bgt, i8 %i.bfo, i64 3
  %i.bgv = insertelement <32 x i8> %i.bgu, i8 %i.bfp, i64 4
  %i.bgw = insertelement <32 x i8> %i.bgv, i8 %i.bfq, i64 5
  %i.bgx = insertelement <32 x i8> %i.bgw, i8 %i.bfr, i64 6
  %i.bgy = insertelement <32 x i8> %i.bgx, i8 %i.bfs, i64 7
  %i.bgz = insertelement <32 x i8> %i.bgy, i8 %i.bft, i64 8
  %i.bha = insertelement <32 x i8> %i.bgz, i8 %i.bfu, i64 9
  %i.bhb = insertelement <32 x i8> %i.bha, i8 %i.bfv, i64 10
  %i.bhc = insertelement <32 x i8> %i.bhb, i8 %i.bfw, i64 11
  %i.bhd = insertelement <32 x i8> %i.bhc, i8 %i.bfx, i64 12
  %i.bhe = insertelement <32 x i8> %i.bhd, i8 %i.bfy, i64 13
  %i.bhf = insertelement <32 x i8> %i.bhe, i8 %i.bfz, i64 14
  %i.bhg = insertelement <32 x i8> %i.bhf, i8 %i.bga, i64 15
  %i.bhh = insertelement <32 x i8> %i.bhg, i8 %i.bgb, i64 16
  %i.bhi = insertelement <32 x i8> %i.bhh, i8 %i.bgc, i64 17
  %i.bhj = insertelement <32 x i8> %i.bhi, i8 %i.bgd, i64 18
  %i.bhk = insertelement <32 x i8> %i.bhj, i8 %i.bge, i64 19
  %i.bhl = insertelement <32 x i8> %i.bhk, i8 %i.bgf, i64 20
  %i.bhm = insertelement <32 x i8> %i.bhl, i8 %i.bgg, i64 21
  %i.bhn = insertelement <32 x i8> %i.bhm, i8 %i.bgh, i64 22
  %i.bho = insertelement <32 x i8> %i.bhn, i8 %i.bgi, i64 23
  %i.bhp = insertelement <32 x i8> %i.bho, i8 %i.bgj, i64 24
  %i.bhq = insertelement <32 x i8> %i.bhp, i8 %i.bgk, i64 25
  %i.bhr = insertelement <32 x i8> %i.bhq, i8 %i.bgl, i64 26
  %i.bhs = insertelement <32 x i8> %i.bhr, i8 %i.bgm, i64 27
  %i.bht = insertelement <32 x i8> %i.bhs, i8 %i.bgn, i64 28
  %i.bhu = insertelement <32 x i8> %i.bht, i8 %i.bgo, i64 29
  %i.bhv = insertelement <32 x i8> %i.bhu, i8 %i.bgp, i64 30
  %i.bhw = insertelement <32 x i8> %i.bhv, i8 %i.bgq, i64 31
  store <32 x i8> %i.bhw, ptr %i.bfk, align 1, !tbaa !7, !alias.scope !225, !noalias !227
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bcz, i64 1
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bda, i64 9
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bdc, i64 17
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bde, i64 25
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bdg, i64 33
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bdi, i64 41
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bdk, i64 49
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bdm, i64 57
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bdo, i64 65
  %i.big = getelementptr inbounds nuw i8, ptr %i.bdq, i64 73
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bds, i64 81
  %i.bii = getelementptr inbounds nuw i8, ptr %i.bdu, i64 89
  %i.bij = getelementptr inbounds nuw i8, ptr %i.bdw, i64 97
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bdy, i64 105
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bea, i64 113
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bec, i64 121
  %i.bin = getelementptr inbounds nuw i8, ptr %i.bee, i64 129
  %i.bio = getelementptr inbounds nuw i8, ptr %i.beg, i64 137
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bei, i64 145
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bek, i64 153
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bem, i64 161
  %i.bis = getelementptr inbounds nuw i8, ptr %i.beo, i64 169
  %i.bit = getelementptr inbounds nuw i8, ptr %i.beq, i64 177
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bes, i64 185
  %i.biv = getelementptr inbounds nuw i8, ptr %i.beu, i64 193
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bew, i64 201
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bey, i64 209
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bfa, i64 217
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bfc, i64 225
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bfe, i64 233
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bfg, i64 241
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bfi, i64 249
  %i.bjd = load i8, ptr %i.bhx, align 1, !tbaa !7, !alias.scope !222
  %i.bje = load i8, ptr %i.bhy, align 1, !tbaa !7, !alias.scope !222
  %i.bjf = load i8, ptr %i.bhz, align 1, !tbaa !7, !alias.scope !222
  %i.bjg = load i8, ptr %i.bia, align 1, !tbaa !7, !alias.scope !222
  %i.bjh = load i8, ptr %i.bib, align 1, !tbaa !7, !alias.scope !222
  %i.bji = load i8, ptr %i.bic, align 1, !tbaa !7, !alias.scope !222
  %i.bjj = load i8, ptr %i.bid, align 1, !tbaa !7, !alias.scope !222
end_hunk_5
begin_hunk_6_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh:bb.a
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.beg, i64 142
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.bei, i64 150
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.bek, i64 158
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.bem, i64 166
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.beo, i64 174
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.beq, i64 182
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.bes, i64 190
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.beu, i64 198
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.bew, i64 206
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.bey, i64 214
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.bfa, i64 222
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.bfc, i64 230
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.bfe, i64 238
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.bfg, i64 246
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.bfi, i64 254
  %i.cbu = load i8, ptr %i.cao, align 1, !tbaa !7, !alias.scope !222
  %i.cbv = load i8, ptr %i.cap, align 1, !tbaa !7, !alias.scope !222
  %i.cbw = load i8, ptr %i.caq, align 1, !tbaa !7, !alias.scope !222
  %i.cbx = load i8, ptr %i.car, align 1, !tbaa !7, !alias.scope !222
  %i.cby = load i8, ptr %i.cas, align 1, !tbaa !7, !alias.scope !222
  %i.cbz = load i8, ptr %i.cat, align 1, !tbaa !7, !alias.scope !222
  %i.cca = load i8, ptr %i.cau, align 1, !tbaa !7, !alias.scope !222
  %i.ccb = load i8, ptr %i.cav, align 1, !tbaa !7, !alias.scope !222
  %i.ccc = load i8, ptr %i.caw, align 1, !tbaa !7, !alias.scope !222
  %i.ccd = load i8, ptr %i.cax, align 1, !tbaa !7, !alias.scope !222
  %i.cce = load i8, ptr %i.cay, align 1, !tbaa !7, !alias.scope !222
  %i.ccf = load i8, ptr %i.caz, align 1, !tbaa !7, !alias.scope !222
  %i.ccg = load i8, ptr %i.cba, align 1, !tbaa !7, !alias.scope !222
  %i.cch = load i8, ptr %i.cbb, align 1, !tbaa !7, !alias.scope !222
  %i.cci = load i8, ptr %i.cbc, align 1, !tbaa !7, !alias.scope !222
  %i.ccj = load i8, ptr %i.cbd, align 1, !tbaa !7, !alias.scope !222
  %i.cck = load i8, ptr %i.cbe, align 1, !tbaa !7, !alias.scope !222
  %i.ccl = load i8, ptr %i.cbf, align 1, !tbaa !7, !alias.scope !222
  %i.ccm = load i8, ptr %i.cbg, align 1, !tbaa !7, !alias.scope !222
  %i.ccn = load i8, ptr %i.cbh, align 1, !tbaa !7, !alias.scope !222
  %i.cco = load i8, ptr %i.cbi, align 1, !tbaa !7, !alias.scope !222
  %i.ccp = load i8, ptr %i.cbj, align 1, !tbaa !7, !alias.scope !222
  %i.ccq = load i8, ptr %i.cbk, align 1, !tbaa !7, !alias.scope !222
  %i.ccr = load i8, ptr %i.cbl, align 1, !tbaa !7, !alias.scope !222
  %i.ccs = load i8, ptr %i.cbm, align 1, !tbaa !7, !alias.scope !222
  %i.cct = load i8, ptr %i.cbn, align 1, !tbaa !7, !alias.scope !222
  %i.ccu = load i8, ptr %i.cbo, align 1, !tbaa !7, !alias.scope !222
  %i.ccv = load i8, ptr %i.cbp, align 1, !tbaa !7, !alias.scope !222
  %i.ccw = load i8, ptr %i.cbq, align 1, !tbaa !7, !alias.scope !222
  %i.ccx = load i8, ptr %i.cbr, align 1, !tbaa !7, !alias.scope !222
  %i.ccy = load i8, ptr %i.cbs, align 1, !tbaa !7, !alias.scope !222
  %i.ccz = load i8, ptr %i.cbt, align 1, !tbaa !7, !alias.scope !222
  %i.cda = insertelement <32 x i8> poison, i8 %i.cbu, i64 0
  %i.cdb = insertelement <32 x i8> %i.cda, i8 %i.cbv, i64 1
  %i.cdc = insertelement <32 x i8> %i.cdb, i8 %i.cbw, i64 2
  %i.cdd = insertelement <32 x i8> %i.cdc, i8 %i.cbx, i64 3
  %i.cde = insertelement <32 x i8> %i.cdd, i8 %i.cby, i64 4
  %i.cdf = insertelement <32 x i8> %i.cde, i8 %i.cbz, i64 5
  %i.cdg = insertelement <32 x i8> %i.cdf, i8 %i.cca, i64 6
  %i.cdh = insertelement <32 x i8> %i.cdg, i8 %i.ccb, i64 7
  %i.cdi = insertelement <32 x i8> %i.cdh, i8 %i.ccc, i64 8
  %i.cdj = insertelement <32 x i8> %i.cdi, i8 %i.ccd, i64 9
  %i.cdk = insertelement <32 x i8> %i.cdj, i8 %i.cce, i64 10
  %i.cdl = insertelement <32 x i8> %i.cdk, i8 %i.ccf, i64 11
  %i.cdm = insertelement <32 x i8> %i.cdl, i8 %i.ccg, i64 12
  %i.cdn = insertelement <32 x i8> %i.cdm, i8 %i.cch, i64 13
  %i.cdo = insertelement <32 x i8> %i.cdn, i8 %i.cci, i64 14
  %i.cdp = insertelement <32 x i8> %i.cdo, i8 %i.ccj, i64 15
  %i.cdq = insertelement <32 x i8> %i.cdp, i8 %i.cck, i64 16
  %i.cdr = insertelement <32 x i8> %i.cdq, i8 %i.ccl, i64 17
  %i.cds = insertelement <32 x i8> %i.cdr, i8 %i.ccm, i64 18
  %i.cdt = insertelement <32 x i8> %i.cds, i8 %i.ccn, i64 19
  %i.cdu = insertelement <32 x i8> %i.cdt, i8 %i.cco, i64 20
  %i.cdv = insertelement <32 x i8> %i.cdu, i8 %i.ccp, i64 21
  %i.cdw = insertelement <32 x i8> %i.cdv, i8 %i.ccq, i64 22
  %i.cdx = insertelement <32 x i8> %i.cdw, i8 %i.ccr, i64 23
  %i.cdy = insertelement <32 x i8> %i.cdx, i8 %i.ccs, i64 24
  %i.cdz = insertelement <32 x i8> %i.cdy, i8 %i.cct, i64 25
  %i.cea = insertelement <32 x i8> %i.cdz, i8 %i.ccu, i64 26
  %i.ceb = insertelement <32 x i8> %i.cea, i8 %i.ccv, i64 27
  %i.cec = insertelement <32 x i8> %i.ceb, i8 %i.ccw, i64 28
  %i.ced = insertelement <32 x i8> %i.cec, i8 %i.ccx, i64 29
  %i.cee = insertelement <32 x i8> %i.ced, i8 %i.ccy, i64 30
  %i.cef = insertelement <32 x i8> %i.cee, i8 %i.ccz, i64 31
  %i.ceg = getelementptr i8, ptr %i.bfk, i64 %i.k
  store <32 x i8> %i.cef, ptr %i.ceg, align 1, !tbaa !7, !alias.scope !245, !noalias !246
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.bcz, i64 7
  %i.cei = getelementptr inbounds nuw i8, ptr %i.bda, i64 15
  %i.cej = getelementptr inbounds nuw i8, ptr %i.bdc, i64 23
  %i.cek = getelementptr inbounds nuw i8, ptr %i.bde, i64 31
  %i.cel = getelementptr inbounds nuw i8, ptr %i.bdg, i64 39
  %i.cem = getelementptr inbounds nuw i8, ptr %i.bdi, i64 47
  %i.cen = getelementptr inbounds nuw i8, ptr %i.bdk, i64 55
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.bdm, i64 63
  %i.cep = getelementptr inbounds nuw i8, ptr %i.bdo, i64 71
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.bdq, i64 79
  %i.cer = getelementptr inbounds nuw i8, ptr %i.bds, i64 87
  %i.ces = getelementptr inbounds nuw i8, ptr %i.bdu, i64 95
  %i.cet = getelementptr inbounds nuw i8, ptr %i.bdw, i64 103
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.bdy, i64 111
  %i.cev = getelementptr inbounds nuw i8, ptr %i.bea, i64 119
  %i.cew = getelementptr inbounds nuw i8, ptr %i.bec, i64 127
  %i.cex = getelementptr inbounds nuw i8, ptr %i.bee, i64 135
  %i.cey = getelementptr inbounds nuw i8, ptr %i.beg, i64 143
  %i.cez = getelementptr inbounds nuw i8, ptr %i.bei, i64 151
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.bek, i64 159
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.bem, i64 167
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.beo, i64 175
  %i.cfd = getelementptr inbounds nuw i8, ptr %i.beq, i64 183
  %i.cfe = getelementptr inbounds nuw i8, ptr %i.bes, i64 191
  %i.cff = getelementptr inbounds nuw i8, ptr %i.beu, i64 199
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.bew, i64 207
  %i.cfh = getelementptr inbounds nuw i8, ptr %i.bey, i64 215
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.bfa, i64 223
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.bfc, i64 231
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.bfe, i64 239
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.bfg, i64 247
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.bfi, i64 255
  %i.cfn = load i8, ptr %i.ceh, align 1, !tbaa !7, !alias.scope !222
  %i.cfo = load i8, ptr %i.cei, align 1, !tbaa !7, !alias.scope !222
  %i.cfp = load i8, ptr %i.cej, align 1, !tbaa !7, !alias.scope !222
  %i.cfq = load i8, ptr %i.cek, align 1, !tbaa !7, !alias.scope !222
  %i.cfr = load i8, ptr %i.cel, align 1, !tbaa !7, !alias.scope !222
  %i.cfs = load i8, ptr %i.cem, align 1, !tbaa !7, !alias.scope !222
  %i.cft = load i8, ptr %i.cen, align 1, !tbaa !7, !alias.scope !222
  %i.cfu = load i8, ptr %i.ceo, align 1, !tbaa !7, !alias.scope !222
  %i.cfv = load i8, ptr %i.cep, align 1, !tbaa !7, !alias.scope !222
  %i.cfw = load i8, ptr %i.ceq, align 1, !tbaa !7, !alias.scope !222
  %i.cfx = load i8, ptr %i.cer, align 1, !tbaa !7, !alias.scope !222
  %i.cfy = load i8, ptr %i.ces, align 1, !tbaa !7, !alias.scope !222
  %i.cfz = load i8, ptr %i.cet, align 1, !tbaa !7, !alias.scope !222
  %i.cga = load i8, ptr %i.ceu, align 1, !tbaa !7, !alias.scope !222
  %i.cgb = load i8, ptr %i.cev, align 1, !tbaa !7, !alias.scope !222
  %i.cgc = load i8, ptr %i.cew, align 1, !tbaa !7, !alias.scope !222
  %i.cgd = load i8, ptr %i.cex, align 1, !tbaa !7, !alias.scope !222
  %i.cge = load i8, ptr %i.cey, align 1, !tbaa !7, !alias.scope !222
  %i.cgf = load i8, ptr %i.cez, align 1, !tbaa !7, !alias.scope !222
  %i.cgg = load i8, ptr %i.cfa, align 1, !tbaa !7, !alias.scope !222
  %i.cgh = load i8, ptr %i.cfb, align 1, !tbaa !7, !alias.scope !222
  %i.cgi = load i8, ptr %i.cfc, align 1, !tbaa !7, !alias.scope !222
  %i.cgj = load i8, ptr %i.cfd, align 1, !tbaa !7, !alias.scope !222
  %i.cgk = load i8, ptr %i.cfe, align 1, !tbaa !7, !alias.scope !222
  %i.cgl = load i8, ptr %i.cff, align 1, !tbaa !7, !alias.scope !222
  %i.cgm = load i8, ptr %i.cfg, align 1, !tbaa !7, !alias.scope !222
  %i.cgn = load i8, ptr %i.cfh, align 1, !tbaa !7, !alias.scope !222
  %i.cgo = load i8, ptr %i.cfi, align 1, !tbaa !7, !alias.scope !222
  %i.cgp = load i8, ptr %i.cfj, align 1, !tbaa !7, !alias.scope !222
  %i.cgq = load i8, ptr %i.cfk, align 1, !tbaa !7, !alias.scope !222
  %i.cgr = load i8, ptr %i.cfl, align 1, !tbaa !7, !alias.scope !222
  %i.cgs = load i8, ptr %i.cfm, align 1, !tbaa !7, !alias.scope !222
  %i.cgt = insertelement <32 x i8> poison, i8 %i.cfn, i64 0
  %i.cgu = insertelement <32 x i8> %i.cgt, i8 %i.cfo, i64 1
  %i.cgv = insertelement <32 x i8> %i.cgu, i8 %i.cfp, i64 2
  %i.cgw = insertelement <32 x i8> %i.cgv, i8 %i.cfq, i64 3
  %i.cgx = insertelement <32 x i8> %i.cgw, i8 %i.cfr, i64 4
  %i.cgy = insertelement <32 x i8> %i.cgx, i8 %i.cfs, i64 5
  %i.cgz = insertelement <32 x i8> %i.cgy, i8 %i.cft, i64 6
  %i.cha = insertelement <32 x i8> %i.cgz, i8 %i.cfu, i64 7
  %i.chb = insertelement <32 x i8> %i.cha, i8 %i.cfv, i64 8
  %i.chc = insertelement <32 x i8> %i.chb, i8 %i.cfw, i64 9
  %i.chd = insertelement <32 x i8> %i.chc, i8 %i.cfx, i64 10
  %i.che = insertelement <32 x i8> %i.chd, i8 %i.cfy, i64 11
  %i.chf = insertelement <32 x i8> %i.che, i8 %i.cfz, i64 12
  %i.chg = insertelement <32 x i8> %i.chf, i8 %i.cga, i64 13
  %i.chh = insertelement <32 x i8> %i.chg, i8 %i.cgb, i64 14
  %i.chi = insertelement <32 x i8> %i.chh, i8 %i.cgc, i64 15
  %i.chj = insertelement <32 x i8> %i.chi, i8 %i.cgd, i64 16
  %i.chk = insertelement <32 x i8> %i.chj, i8 %i.cge, i64 17
  %i.chl = insertelement <32 x i8> %i.chk, i8 %i.cgf, i64 18
  %i.chm = insertelement <32 x i8> %i.chl, i8 %i.cgg, i64 19
  %i.chn = insertelement <32 x i8> %i.chm, i8 %i.cgh, i64 20
  %i.cho = insertelement <32 x i8> %i.chn, i8 %i.cgi, i64 21
  %i.chp = insertelement <32 x i8> %i.cho, i8 %i.cgj, i64 22
  %i.chq = insertelement <32 x i8> %i.chp, i8 %i.cgk, i64 23
  %i.chr = insertelement <32 x i8> %i.chq, i8 %i.cgl, i64 24
  %i.chs = insertelement <32 x i8> %i.chr, i8 %i.cgm, i64 25
  %i.cht = insertelement <32 x i8> %i.chs, i8 %i.cgn, i64 26
  %i.chu = insertelement <32 x i8> %i.cht, i8 %i.cgo, i64 27
  %i.chv = insertelement <32 x i8> %i.chu, i8 %i.cgp, i64 28
  %i.chw = insertelement <32 x i8> %i.chv, i8 %i.cgq, i64 29
  %i.chx = insertelement <32 x i8> %i.chw, i8 %i.cgr, i64 30
  %i.chy = insertelement <32 x i8> %i.chx, i8 %i.cgs, i64 31
  %i.chz = getelementptr i8, ptr %i.bfk, i64 %i.m
  store <32 x i8> %i.chy, ptr %i.chz, align 1, !tbaa !7, !alias.scope !247, !noalias !222
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cia = icmp eq i64 %index.next, %n.vec
  br i1 %i.cia, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %.preheader102, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %n.mod.vf, 16
  br i1 %min.epilog.iters.check, label %.preheader103.preheader, label %vec.epilog.ph, !prof !218

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.mod.vf308 = and i64 %2, 15                   ; 2 uses
  %n.vec309 = sub nsw i64 %i.bbh, %n.mod.vf308    ; 2 uses
  %i.cib = add i64 %i.bbf, %n.vec309
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index310 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next311, %vec.epilog.vector.body ] ; 2 uses
  %i.cic = add nuw i64 %i.bbf, %index310          ; 17 uses
  %i.cid = shl nuw nsw i64 %i.cic, 3
  %i.cie = shl i64 %i.cic, 3
  %i.cif = shl i64 %i.cic, 3
  %i.cig = shl i64 %i.cic, 3
  %i.cih = shl i64 %i.cic, 3
  %i.cii = shl i64 %i.cic, 3
  %i.cij = shl i64 %i.cic, 3
  %i.cik = shl i64 %i.cic, 3
  %i.cil = shl i64 %i.cic, 3
  %i.cim = shl i64 %i.cic, 3
  %i.cin = shl i64 %i.cic, 3
  %i.cio = shl i64 %i.cic, 3
  %i.cip = shl i64 %i.cic, 3
  %i.ciq = shl i64 %i.cic, 3
  %i.cir = shl i64 %i.cic, 3
  %i.cis = shl i64 %i.cic, 3
  %i.cit = getelementptr inbounds nuw i8, ptr %0, i64 %i.cid ; 8 uses
  %i.ciu = getelementptr i8, ptr %0, i64 %i.cie   ; 8 uses
  %i.civ = getelementptr i8, ptr %i.ciu, i64 8
  %i.ciw = getelementptr i8, ptr %0, i64 %i.cif   ; 8 uses
  %i.cix = getelementptr i8, ptr %i.ciw, i64 16
  %i.ciy = getelementptr i8, ptr %0, i64 %i.cig   ; 8 uses
  %i.ciz = getelementptr i8, ptr %i.ciy, i64 24
  %i.cja = getelementptr i8, ptr %0, i64 %i.cih   ; 8 uses
  %i.cjb = getelementptr i8, ptr %i.cja, i64 32
  %i.cjc = getelementptr i8, ptr %0, i64 %i.cii   ; 8 uses
  %i.cjd = getelementptr i8, ptr %i.cjc, i64 40
  %i.cje = getelementptr i8, ptr %0, i64 %i.cij   ; 8 uses
  %i.cjf = getelementptr i8, ptr %i.cje, i64 48
  %i.cjg = getelementptr i8, ptr %0, i64 %i.cik   ; 8 uses
  %i.cjh = getelementptr i8, ptr %i.cjg, i64 56
  %i.cji = getelementptr i8, ptr %0, i64 %i.cil   ; 8 uses
  %i.cjj = getelementptr i8, ptr %i.cji, i64 64
  %i.cjk = getelementptr i8, ptr %0, i64 %i.cim   ; 8 uses
  %i.cjl = getelementptr i8, ptr %i.cjk, i64 72
  %i.cjm = getelementptr i8, ptr %0, i64 %i.cin   ; 8 uses
  %i.cjn = getelementptr i8, ptr %i.cjm, i64 80
  %i.cjo = getelementptr i8, ptr %0, i64 %i.cio   ; 8 uses
  %i.cjp = getelementptr i8, ptr %i.cjo, i64 88
  %i.cjq = getelementptr i8, ptr %0, i64 %i.cip   ; 8 uses
  %i.cjr = getelementptr i8, ptr %i.cjq, i64 96
  %i.cjs = getelementptr i8, ptr %0, i64 %i.ciq   ; 8 uses
  %i.cjt = getelementptr i8, ptr %i.cjs, i64 104
  %i.cju = getelementptr i8, ptr %0, i64 %i.cir   ; 8 uses
  %i.cjv = getelementptr i8, ptr %i.cju, i64 112
  %i.cjw = getelementptr i8, ptr %0, i64 %i.cis   ; 8 uses
  %i.cjx = getelementptr i8, ptr %i.cjw, i64 120
  %i.cjy = getelementptr i8, ptr %3, i64 %i.cic   ; 8 uses
  %i.cjz = load i8, ptr %i.cit, align 1, !tbaa !7, !alias.scope !222
  %i.cka = load i8, ptr %i.civ, align 1, !tbaa !7, !alias.scope !222
  %i.ckb = load i8, ptr %i.cix, align 1, !tbaa !7, !alias.scope !222
  %i.ckc = load i8, ptr %i.ciz, align 1, !tbaa !7, !alias.scope !222
  %i.ckd = load i8, ptr %i.cjb, align 1, !tbaa !7, !alias.scope !222
  %i.cke = load i8, ptr %i.cjd, align 1, !tbaa !7, !alias.scope !222
  %i.ckf = load i8, ptr %i.cjf, align 1, !tbaa !7, !alias.scope !222
  %i.ckg = load i8, ptr %i.cjh, align 1, !tbaa !7, !alias.scope !222
  %i.ckh = load i8, ptr %i.cjj, align 1, !tbaa !7, !alias.scope !222
  %i.cki = load i8, ptr %i.cjl, align 1, !tbaa !7, !alias.scope !222
  %i.ckj = load i8, ptr %i.cjn, align 1, !tbaa !7, !alias.scope !222
  %i.ckk = load i8, ptr %i.cjp, align 1, !tbaa !7, !alias.scope !222
  %i.ckl = load i8, ptr %i.cjr, align 1, !tbaa !7, !alias.scope !222
  %i.ckm = load i8, ptr %i.cjt, align 1, !tbaa !7, !alias.scope !222
  %i.ckn = load i8, ptr %i.cjv, align 1, !tbaa !7, !alias.scope !222
  %i.cko = load i8, ptr %i.cjx, align 1, !tbaa !7, !alias.scope !222
  %i.ckp = insertelement <16 x i8> poison, i8 %i.cjz, i64 0
  %i.ckq = insertelement <16 x i8> %i.ckp, i8 %i.cka, i64 1
  %i.ckr = insertelement <16 x i8> %i.ckq, i8 %i.ckb, i64 2
  %i.cks = insertelement <16 x i8> %i.ckr, i8 %i.ckc, i64 3
  %i.ckt = insertelement <16 x i8> %i.cks, i8 %i.ckd, i64 4
  %i.cku = insertelement <16 x i8> %i.ckt, i8 %i.cke, i64 5
  %i.ckv = insertelement <16 x i8> %i.cku, i8 %i.ckf, i64 6
  %i.ckw = insertelement <16 x i8> %i.ckv, i8 %i.ckg, i64 7
  %i.ckx = insertelement <16 x i8> %i.ckw, i8 %i.ckh, i64 8
  %i.cky = insertelement <16 x i8> %i.ckx, i8 %i.cki, i64 9
  %i.ckz = insertelement <16 x i8> %i.cky, i8 %i.ckj, i64 10
  %i.cla = insertelement <16 x i8> %i.ckz, i8 %i.ckk, i64 11
  %i.clb = insertelement <16 x i8> %i.cla, i8 %i.ckl, i64 12
  %i.clc = insertelement <16 x i8> %i.clb, i8 %i.ckm, i64 13
  %i.cld = insertelement <16 x i8> %i.clc, i8 %i.ckn, i64 14
  %i.cle = insertelement <16 x i8> %i.cld, i8 %i.cko, i64 15
  store <16 x i8> %i.cle, ptr %i.cjy, align 1, !tbaa !7, !alias.scope !225, !noalias !227
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cit, i64 1
  %i.clg = getelementptr i8, ptr %i.ciu, i64 9
  %i.clh = getelementptr i8, ptr %i.ciw, i64 17
  %i.cli = getelementptr i8, ptr %i.ciy, i64 25
  %i.clj = getelementptr i8, ptr %i.cja, i64 33
  %i.clk = getelementptr i8, ptr %i.cjc, i64 41
  %i.cll = getelementptr i8, ptr %i.cje, i64 49
  %i.clm = getelementptr i8, ptr %i.cjg, i64 57
  %i.cln = getelementptr i8, ptr %i.cji, i64 65
  %i.clo = getelementptr i8, ptr %i.cjk, i64 73
  %i.clp = getelementptr i8, ptr %i.cjm, i64 81
  %i.clq = getelementptr i8, ptr %i.cjo, i64 89
  %i.clr = getelementptr i8, ptr %i.cjq, i64 97
  %i.cls = getelementptr i8, ptr %i.cjs, i64 105
  %i.clt = getelementptr i8, ptr %i.cju, i64 113
  %i.clu = getelementptr i8, ptr %i.cjw, i64 121
  %i.clv = load i8, ptr %i.clf, align 1, !tbaa !7, !alias.scope !222
  %i.clw = load i8, ptr %i.clg, align 1, !tbaa !7, !alias.scope !222
  %i.clx = load i8, ptr %i.clh, align 1, !tbaa !7, !alias.scope !222
  %i.cly = load i8, ptr %i.cli, align 1, !tbaa !7, !alias.scope !222
  %i.clz = load i8, ptr %i.clj, align 1, !tbaa !7, !alias.scope !222
  %i.cma = load i8, ptr %i.clk, align 1, !tbaa !7, !alias.scope !222
  %i.cmb = load i8, ptr %i.cll, align 1, !tbaa !7, !alias.scope !222
  %i.cmc = load i8, ptr %i.clm, align 1, !tbaa !7, !alias.scope !222
  %i.cmd = load i8, ptr %i.cln, align 1, !tbaa !7, !alias.scope !222
  %i.cme = load i8, ptr %i.clo, align 1, !tbaa !7, !alias.scope !222
  %i.cmf = load i8, ptr %i.clp, align 1, !tbaa !7, !alias.scope !222
  %i.cmg = load i8, ptr %i.clq, align 1, !tbaa !7, !alias.scope !222
  %i.cmh = load i8, ptr %i.clr, align 1, !tbaa !7, !alias.scope !222
  %i.cmi = load i8, ptr %i.cls, align 1, !tbaa !7, !alias.scope !222
  %i.cmj = load i8, ptr %i.clt, align 1, !tbaa !7, !alias.scope !222
  %i.cmk = load i8, ptr %i.clu, align 1, !tbaa !7, !alias.scope !222
  %i.cml = insertelement <16 x i8> poison, i8 %i.clv, i64 0
  %i.cmm = insertelement <16 x i8> %i.cml, i8 %i.clw, i64 1
  %i.cmn = insertelement <16 x i8> %i.cmm, i8 %i.clx, i64 2
  %i.cmo = insertelement <16 x i8> %i.cmn, i8 %i.cly, i64 3
  %i.cmp = insertelement <16 x i8> %i.cmo, i8 %i.clz, i64 4
  %i.cmq = insertelement <16 x i8> %i.cmp, i8 %i.cma, i64 5
  %i.cmr = insertelement <16 x i8> %i.cmq, i8 %i.cmb, i64 6
  %i.cms = insertelement <16 x i8> %i.cmr, i8 %i.cmc, i64 7
  %i.cmt = insertelement <16 x i8> %i.cms, i8 %i.cmd, i64 8
  %i.cmu = insertelement <16 x i8> %i.cmt, i8 %i.cme, i64 9
  %i.cmv = insertelement <16 x i8> %i.cmu, i8 %i.cmf, i64 10
  %i.cmw = insertelement <16 x i8> %i.cmv, i8 %i.cmg, i64 11
  %i.cmx = insertelement <16 x i8> %i.cmw, i8 %i.cmh, i64 12
  %i.cmy = insertelement <16 x i8> %i.cmx, i8 %i.cmi, i64 13
  %i.cmz = insertelement <16 x i8> %i.cmy, i8 %i.cmj, i64 14
  %i.cna = insertelement <16 x i8> %i.cmz, i8 %i.cmk, i64 15
  %i.cnb = getelementptr i8, ptr %i.cjy, i64 %2
  store <16 x i8> %i.cna, ptr %i.cnb, align 1, !tbaa !7, !alias.scope !235, !noalias !236
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cit, i64 2
  %i.cnd = getelementptr i8, ptr %i.ciu, i64 10
  %i.cne = getelementptr i8, ptr %i.ciw, i64 18
  %i.cnf = getelementptr i8, ptr %i.ciy, i64 26
  %i.cng = getelementptr i8, ptr %i.cja, i64 34
  %i.cnh = getelementptr i8, ptr %i.cjc, i64 42
  %i.cni = getelementptr i8, ptr %i.cje, i64 50
  %i.cnj = getelementptr i8, ptr %i.cjg, i64 58
  %i.cnk = getelementptr i8, ptr %i.cji, i64 66
  %i.cnl = getelementptr i8, ptr %i.cjk, i64 74
  %i.cnm = getelementptr i8, ptr %i.cjm, i64 82
  %i.cnn = getelementptr i8, ptr %i.cjo, i64 90
  %i.cno = getelementptr i8, ptr %i.cjq, i64 98
  %i.cnp = getelementptr i8, ptr %i.cjs, i64 106
  %i.cnq = getelementptr i8, ptr %i.cju, i64 114
  %i.cnr = getelementptr i8, ptr %i.cjw, i64 122
  %i.cns = load i8, ptr %i.cnc, align 1, !tbaa !7, !alias.scope !222
  %i.cnt = load i8, ptr %i.cnd, align 1, !tbaa !7, !alias.scope !222
  %i.cnu = load i8, ptr %i.cne, align 1, !tbaa !7, !alias.scope !222
  %i.cnv = load i8, ptr %i.cnf, align 1, !tbaa !7, !alias.scope !222
  %i.cnw = load i8, ptr %i.cng, align 1, !tbaa !7, !alias.scope !222
  %i.cnx = load i8, ptr %i.cnh, align 1, !tbaa !7, !alias.scope !222
  %i.cny = load i8, ptr %i.cni, align 1, !tbaa !7, !alias.scope !222
  %i.cnz = load i8, ptr %i.cnj, align 1, !tbaa !7, !alias.scope !222
  %i.coa = load i8, ptr %i.cnk, align 1, !tbaa !7, !alias.scope !222
  %i.cob = load i8, ptr %i.cnl, align 1, !tbaa !7, !alias.scope !222
  %i.coc = load i8, ptr %i.cnm, align 1, !tbaa !7, !alias.scope !222
  %i.cod = load i8, ptr %i.cnn, align 1, !tbaa !7, !alias.scope !222
  %i.coe = load i8, ptr %i.cno, align 1, !tbaa !7, !alias.scope !222
  %i.cof = load i8, ptr %i.cnp, align 1, !tbaa !7, !alias.scope !222
  %i.cog = load i8, ptr %i.cnq, align 1, !tbaa !7, !alias.scope !222
  %i.coh = load i8, ptr %i.cnr, align 1, !tbaa !7, !alias.scope !222
  %i.coi = insertelement <16 x i8> poison, i8 %i.cns, i64 0
  %i.coj = insertelement <16 x i8> %i.coi, i8 %i.cnt, i64 1
  %i.cok = insertelement <16 x i8> %i.coj, i8 %i.cnu, i64 2
  %i.col = insertelement <16 x i8> %i.cok, i8 %i.cnv, i64 3
  %i.com = insertelement <16 x i8> %i.col, i8 %i.cnw, i64 4
  %i.con = insertelement <16 x i8> %i.com, i8 %i.cnx, i64 5
  %i.coo = insertelement <16 x i8> %i.con, i8 %i.cny, i64 6
  %i.cop = insertelement <16 x i8> %i.coo, i8 %i.cnz, i64 7
  %i.coq = insertelement <16 x i8> %i.cop, i8 %i.coa, i64 8
  %i.cor = insertelement <16 x i8> %i.coq, i8 %i.cob, i64 9
  %i.cos = insertelement <16 x i8> %i.cor, i8 %i.coc, i64 10
  %i.cot = insertelement <16 x i8> %i.cos, i8 %i.cod, i64 11
  %i.cou = insertelement <16 x i8> %i.cot, i8 %i.coe, i64 12
  %i.cov = insertelement <16 x i8> %i.cou, i8 %i.cof, i64 13
  %i.cow = insertelement <16 x i8> %i.cov, i8 %i.cog, i64 14
  %i.cox = insertelement <16 x i8> %i.cow, i8 %i.coh, i64 15
  %i.coy = getelementptr i8, ptr %i.cjy, i64 %i.c
  store <16 x i8> %i.cox, ptr %i.coy, align 1, !tbaa !7, !alias.scope !237, !noalias !238
  %i.coz = getelementptr inbounds nuw i8, ptr %i.cit, i64 3
  %i.cpa = getelementptr i8, ptr %i.ciu, i64 11
  %i.cpb = getelementptr i8, ptr %i.ciw, i64 19
  %i.cpc = getelementptr i8, ptr %i.ciy, i64 27
  %i.cpd = getelementptr i8, ptr %i.cja, i64 35
  %i.cpe = getelementptr i8, ptr %i.cjc, i64 43
  %i.cpf = getelementptr i8, ptr %i.cje, i64 51
  %i.cpg = getelementptr i8, ptr %i.cjg, i64 59
  %i.cph = getelementptr i8, ptr %i.cji, i64 67
  %i.cpi = getelementptr i8, ptr %i.cjk, i64 75
  %i.cpj = getelementptr i8, ptr %i.cjm, i64 83
  %i.cpk = getelementptr i8, ptr %i.cjo, i64 91
  %i.cpl = getelementptr i8, ptr %i.cjq, i64 99
  %i.cpm = getelementptr i8, ptr %i.cjs, i64 107
  %i.cpn = getelementptr i8, ptr %i.cju, i64 115
  %i.cpo = getelementptr i8, ptr %i.cjw, i64 123
  %i.cpp = load i8, ptr %i.coz, align 1, !tbaa !7, !alias.scope !222
  %i.cpq = load i8, ptr %i.cpa, align 1, !tbaa !7, !alias.scope !222
  %i.cpr = load i8, ptr %i.cpb, align 1, !tbaa !7, !alias.scope !222
end_hunk_6
