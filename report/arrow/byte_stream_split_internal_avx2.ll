Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh:bb.a

vector.main.loop.iter.check143:                   ; preds = %vector.memcheck135
  %min.iters.check144 = icmp ult i64 %i.e, 64
  br i1 %min.iters.check144, label %vec.epilog.ph165, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %i.p = and i64 %i.e, 56
  %n.vec146 = and i64 %i.e, -64                   ; 4 uses
  %i.q = add i64 %i.c, %n.vec146
  br label %vector.body147

vector.body147:                                   ; preds = %vector.ph145, %vector.body147
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next157, %vector.body147 ] ; 2 uses
  %i.r = add i64 %i.c, %index148                  ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r       ; 5 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = getelementptr i8, ptr %i.s, i64 48
  %wide.load149 = load <16 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !34
  %wide.load150 = load <16 x i8>, ptr %i.t, align 1, !tbaa !7, !alias.scope !34
  %wide.load151 = load <16 x i8>, ptr %i.u, align 1, !tbaa !7, !alias.scope !34
  %wide.load152 = load <16 x i8>, ptr %i.v, align 1, !tbaa !7, !alias.scope !34
  %i.w = getelementptr i8, ptr %i.s, i64 %3       ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = getelementptr i8, ptr %i.w, i64 32
  %i.z = getelementptr i8, ptr %i.w, i64 48
  %wide.load153 = load <16 x i8>, ptr %i.w, align 1, !tbaa !7, !alias.scope !35
  %wide.load154 = load <16 x i8>, ptr %i.x, align 1, !tbaa !7, !alias.scope !35
  %wide.load155 = load <16 x i8>, ptr %i.y, align 1, !tbaa !7, !alias.scope !35
  %wide.load156 = load <16 x i8>, ptr %i.z, align 1, !tbaa !7, !alias.scope !35
  %i.aa = shl nsw i64 %i.r, 1
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa ; 4 uses
  %i.ac = zext <16 x i8> %wide.load153 to <16 x i16>
  %i.ad = zext <16 x i8> %wide.load154 to <16 x i16>
  %i.ae = zext <16 x i8> %wide.load155 to <16 x i16>
  %i.af = zext <16 x i8> %wide.load156 to <16 x i16>
  %i.ag = shl nuw <16 x i16> %i.ac, splat (i16 8)
  %i.ah = shl nuw <16 x i16> %i.ad, splat (i16 8)
  %i.ai = shl nuw <16 x i16> %i.ae, splat (i16 8)
  %i.aj = shl nuw <16 x i16> %i.af, splat (i16 8)
  %i.ak = zext <16 x i8> %wide.load149 to <16 x i16>
  %i.al = zext <16 x i8> %wide.load150 to <16 x i16>
  %i.am = zext <16 x i8> %wide.load151 to <16 x i16>
  %i.an = zext <16 x i8> %wide.load152 to <16 x i16>
  %i.ao = or disjoint <16 x i16> %i.ag, %i.ak
  %i.ap = or disjoint <16 x i16> %i.ah, %i.al
  %i.aq = or disjoint <16 x i16> %i.ai, %i.am
  %i.ar = or disjoint <16 x i16> %i.aj, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store <16 x i16> %i.ao, ptr %i.ab, align 1, !alias.scope !36, !noalias !37
  store <16 x i16> %i.ap, ptr %i.as, align 1, !alias.scope !36, !noalias !37
  store <16 x i16> %i.aq, ptr %i.at, align 1, !alias.scope !36, !noalias !37
  store <16 x i16> %i.ar, ptr %i.au, align 1, !alias.scope !36, !noalias !37
  %index.next157 = add nuw i64 %index148, 64      ; 2 uses
  %i.av = icmp eq i64 %index.next157, %n.vec146
  br i1 %i.av, label %middle.block158, label %vector.body147, !llvm.loop !17

middle.block158:                                  ; preds = %vector.body147
  %cmp.n159 = icmp eq i64 %i.e, %n.vec146
  br i1 %cmp.n159, label %.preheader72.i, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block158
  %min.epilog.iters.check164 = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check164, label %.lr.ph.i.preheader, label %vec.epilog.ph165, !prof !11

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check163
  %vec.epilog.resume.val160 = phi i64 [ %n.vec146, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check143 ]
  %i.aw = and i64 %2, 7                           ; 2 uses
  %n.vec166 = sub i64 %i.e, %i.aw                 ; 2 uses
  %i.ax = add i64 %i.c, %n.vec166
  br label %vec.epilog.vector.body167

vec.epilog.vector.body167:                        ; preds = %vec.epilog.vector.body167, %vec.epilog.ph165
  %index168 = phi i64 [ %vec.epilog.resume.val160, %vec.epilog.ph165 ], [ %index.next171, %vec.epilog.vector.body167 ] ; 2 uses
  %i.ay = add i64 %i.c, %index168                 ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %wide.load169 = load <8 x i8>, ptr %i.az, align 1, !tbaa !7, !alias.scope !34
  %i.ba = getelementptr i8, ptr %i.az, i64 %3
  %wide.load170 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !35
  %i.bb = shl nsw i64 %i.ay, 1
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb
  %i.bd = zext <8 x i8> %wide.load170 to <8 x i16>
  %i.be = shl nuw <8 x i16> %i.bd, splat (i16 8)
  %i.bf = zext <8 x i8> %wide.load169 to <8 x i16>
  %i.bg = or disjoint <8 x i16> %i.be, %i.bf
  store <8 x i16> %i.bg, ptr %i.bc, align 1, !alias.scope !36, !noalias !37
  %index.next171 = add nuw i64 %index168, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next171, %n.vec166
  br i1 %i.bh, label %vec.epilog.middle.block172, label %vec.epilog.vector.body167, !llvm.loop !18

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body167
  %cmp.n173 = icmp eq i64 %i.aw, 0
  br i1 %cmp.n173, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check161, %vector.memcheck135, %vec.epilog.iter.check163, %vec.epilog.middle.block172
  %.05574.i.ph = phi i64 [ %i.c, %iter.check161 ], [ %i.c, %vector.memcheck135 ], [ %i.q, %vec.epilog.iter.check163 ], [ %i.ax, %vec.epilog.middle.block172 ] ; 4 uses
  %i.bi = sub i64 %2, %.05574.i.ph
  %xtraiter177 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05574.i.prol = phi i64 [ %i.bn, %.lr.ph.i.prol ], [ %.05574.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05574.i.prol ; 2 uses
  %i.bj = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.bk = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %i.bl = shl nsw i64 %.05574.i.prol, 1
  %i.bm = getelementptr inbounds i8, ptr %4, i64 %i.bl
  %.sroa.484.0.insert.ext.i.prol = zext i8 %i.bk to i16
  %.sroa.484.0.insert.shift.i.prol = shl nuw i16 %.sroa.484.0.insert.ext.i.prol, 8
  %.sroa.083.0.insert.ext.i.prol = zext i8 %i.bj to i16
  %.sroa.083.0.insert.insert.i.prol = or disjoint i16 %.sroa.484.0.insert.shift.i.prol, %.sroa.083.0.insert.ext.i.prol
  store i16 %.sroa.083.0.insert.insert.i.prol, ptr %i.bm, align 1
  %i.bn = add nsw i64 %.05574.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter177
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !19

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05574.i.unr = phi i64 [ %.05574.i.ph, %.lr.ph.i.preheader ], [ %i.bn, %.lr.ph.i.prol ]
  %i.bo = sub i64 %.05574.i.ph, %2
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block158, %vec.epilog.middle.block172, %bb.b
  %i.bq = icmp sgt i64 %2, 15
  br i1 %i.bq, label %.preheader71.i.preheader, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

.preheader71.i.preheader:                         ; preds = %.preheader72.i
  %xtraiter179 = and i64 %i.b, 1
  %i.br = and i64 %2, 9223372036854775792
  %i.bs = icmp eq i64 %i.br, 16
  br i1 %i.bs, label %.preheader71.i.epil.preheader, label %.preheader71.i.preheader.new

.preheader71.i.preheader.new:                     ; preds = %.preheader71.i.preheader
  %unroll_iter182 = and i64 %i.b, 576460752303423486
  br label %.preheader71.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05574.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %.05574.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 2 uses
  %i.bt = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bu = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %i.bv = shl nsw i64 %.05574.i, 1
  %i.bw = getelementptr inbounds i8, ptr %4, i64 %i.bv
  %.sroa.484.0.insert.ext.i = zext i8 %i.bu to i16
  %.sroa.484.0.insert.shift.i = shl nuw i16 %.sroa.484.0.insert.ext.i, 8
  %.sroa.083.0.insert.ext.i = zext i8 %i.bt to i16
  %.sroa.083.0.insert.insert.i = or disjoint i16 %.sroa.484.0.insert.shift.i, %.sroa.083.0.insert.ext.i
  store i16 %.sroa.083.0.insert.insert.i, ptr %i.bw, align 1
  %i.bx = add nsw i64 %.05574.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.bx ; 2 uses
  %i.by = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.bz = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %i.ca = shl nsw i64 %i.bx, 1
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %i.ca
  %.sroa.484.0.insert.ext.i.1 = zext i8 %i.bz to i16
  %.sroa.484.0.insert.shift.i.1 = shl nuw i16 %.sroa.484.0.insert.ext.i.1, 8
  %.sroa.083.0.insert.ext.i.1 = zext i8 %i.by to i16
  %.sroa.083.0.insert.insert.i.1 = or disjoint i16 %.sroa.484.0.insert.shift.i.1, %.sroa.083.0.insert.ext.i.1
  store i16 %.sroa.083.0.insert.insert.i.1, ptr %i.cb, align 1
  %i.cc = add nsw i64 %.05574.i, 2                ; 2 uses
  %invariant.gep.i.2 = getelementptr i8, ptr %0, i64 %i.cc ; 2 uses
  %i.cd = load i8, ptr %invariant.gep.i.2, align 1, !tbaa !7
  %gep.1.i.2 = getelementptr i8, ptr %invariant.gep.i.2, i64 %3
  %i.ce = load i8, ptr %gep.1.i.2, align 1, !tbaa !7
  %i.cf = shl nsw i64 %i.cc, 1
  %i.cg = getelementptr inbounds i8, ptr %4, i64 %i.cf
  %.sroa.484.0.insert.ext.i.2 = zext i8 %i.ce to i16
  %.sroa.484.0.insert.shift.i.2 = shl nuw i16 %.sroa.484.0.insert.ext.i.2, 8
  %.sroa.083.0.insert.ext.i.2 = zext i8 %i.cd to i16
  %.sroa.083.0.insert.insert.i.2 = or disjoint i16 %.sroa.484.0.insert.shift.i.2, %.sroa.083.0.insert.ext.i.2
  store i16 %.sroa.083.0.insert.insert.i.2, ptr %i.cg, align 1
  %i.ch = add nsw i64 %.05574.i, 3                ; 2 uses
  %invariant.gep.i.3 = getelementptr i8, ptr %0, i64 %i.ch ; 2 uses
  %i.ci = load i8, ptr %invariant.gep.i.3, align 1, !tbaa !7
  %gep.1.i.3 = getelementptr i8, ptr %invariant.gep.i.3, i64 %3
  %i.cj = load i8, ptr %gep.1.i.3, align 1, !tbaa !7
  %i.ck = shl nsw i64 %i.ch, 1
  %i.cl = getelementptr inbounds i8, ptr %4, i64 %i.ck
  %.sroa.484.0.insert.ext.i.3 = zext i8 %i.cj to i16
  %.sroa.484.0.insert.shift.i.3 = shl nuw i16 %.sroa.484.0.insert.ext.i.3, 8
  %.sroa.083.0.insert.ext.i.3 = zext i8 %i.ci to i16
  %.sroa.083.0.insert.insert.i.3 = or disjoint i16 %.sroa.484.0.insert.shift.i.3, %.sroa.083.0.insert.ext.i.3
  store i16 %.sroa.083.0.insert.insert.i.3, ptr %i.cl, align 1
  %i.cm = add nsw i64 %.05574.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cm, %2
  br i1 %exitcond.not.i.3, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !20

.preheader71.i:                                   ; preds = %.preheader71.i, %.preheader71.i.preheader.new
  %.05377.i = phi i64 [ 0, %.preheader71.i.preheader.new ], [ %i.dc, %.preheader71.i ] ; 4 uses
  %niter183 = phi i64 [ 0, %.preheader71.i.preheader.new ], [ %niter183.next.1, %.preheader71.i ]
  %i.cn = shl nuw nsw i64 %.05377.i, 4
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.co) ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 %3
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %5 = shufflevector <16 x i8> %i.cp, <16 x i8> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %6 = shufflevector <16 x i8> %i.cp, <16 x i8> %i.cr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cs = shl nuw i64 %.05377.i, 5
  %i.ct = getelementptr i8, ptr %4, i64 %i.cs     ; 2 uses
  store <16 x i8> %5, ptr %i.ct, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <16 x i8> %6, ptr %.sroa.8.32..sroa_idx.i, align 1, !tbaa !7
  %i.cu = or disjoint i64 %.05377.i, 1            ; 2 uses
  %i.cv = shl nuw nsw i64 %i.cu, 4
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv     ; 2 uses
  %i.cx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cw) ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 %3
  %i.cz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cy) ; 2 uses
  %7 = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %8 = shufflevector <16 x i8> %i.cx, <16 x i8> %i.cz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.da = shl nuw i64 %i.cu, 5
  %i.db = getelementptr i8, ptr %4, i64 %i.da     ; 2 uses
  store <16 x i8> %7, ptr %i.db, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <16 x i8> %8, ptr %.sroa.8.32..sroa_idx.i.1, align 1, !tbaa !7
  %i.dc = add nuw nsw i64 %.05377.i, 2            ; 2 uses
  %niter183.next.1 = add i64 %niter183, 2         ; 2 uses
  %niter183.ncmp.1 = icmp eq i64 %niter183.next.1, %unroll_iter182
  br i1 %niter183.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, label %.preheader71.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  %i.dd = lshr i64 %2, 5                          ; 4 uses
  %i.de = and i64 %2, 9223372036854775776         ; 12 uses
  %.not = icmp eq i64 %i.de, %2
  br i1 %.not, label %.preheader75.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.df = or disjoint i64 %i.de, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.df) ; 2 uses
  %i.dg = sub nsw i64 %smax, %i.de                ; 6 uses
  %min.iters.check = icmp ult i64 %i.dg, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dh = shl nuw i64 %i.dd, 6
  %i.di = getelementptr i8, ptr %4, i64 %i.dh     ; 2 uses
  %i.dj = or disjoint i64 %i.de, 1
  %i.dk = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.dj) ; 3 uses
  %i.dl = shl nuw i64 %i.dk, 1
  %i.dm = getelementptr i8, ptr %4, i64 %i.dl     ; 2 uses
  %i.dn = getelementptr i8, ptr %0, i64 %3
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.de
  %i.dp = getelementptr i8, ptr %0, i64 %3
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.dk
  %i.dr = getelementptr i8, ptr %0, i64 %i.de
  %i.ds = getelementptr i8, ptr %0, i64 %i.dk
  %bound0 = icmp ult ptr %i.di, %i.dq
  %bound1 = icmp ult ptr %i.do, %i.dm
  %found.conflict = and i1 %bound0, %bound1
  %bound0103 = icmp ult ptr %i.di, %i.ds
  %bound1104 = icmp ult ptr %i.dr, %i.dm
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx = or i1 %found.conflict, %found.conflict105
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check106 = icmp ult i64 %i.dg, 64
  br i1 %min.iters.check106, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dt = and i64 %i.dg, 56
  %n.vec = and i64 %i.dg, -64                     ; 4 uses
  %i.du = add i64 %i.de, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = add nuw i64 %i.de, %index               ; 2 uses
  %i.dw = getelementptr i8, ptr %0, i64 %i.dv     ; 5 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = getelementptr i8, ptr %i.dw, i64 32
  %i.dz = getelementptr i8, ptr %i.dw, i64 48
  %wide.load = load <16 x i8>, ptr %i.dw, align 1, !tbaa !7, !alias.scope !38
  %wide.load107 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !7, !alias.scope !38
  %wide.load108 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !7, !alias.scope !38
  %wide.load109 = load <16 x i8>, ptr %i.dz, align 1, !tbaa !7, !alias.scope !38
  %i.ea = getelementptr i8, ptr %i.dw, i64 %3     ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %i.ec = getelementptr i8, ptr %i.ea, i64 32
  %i.ed = getelementptr i8, ptr %i.ea, i64 48
  %wide.load110 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !7, !alias.scope !39
  %wide.load111 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !7, !alias.scope !39
  %wide.load112 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !7, !alias.scope !39
  %wide.load113 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !7, !alias.scope !39
  %i.ee = shl nuw nsw i64 %i.dv, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 %i.ee ; 4 uses
  %i.eg = zext <16 x i8> %wide.load110 to <16 x i16>
  %i.eh = zext <16 x i8> %wide.load111 to <16 x i16>
  %i.ei = zext <16 x i8> %wide.load112 to <16 x i16>
  %i.ej = zext <16 x i8> %wide.load113 to <16 x i16>
  %i.ek = shl nuw <16 x i16> %i.eg, splat (i16 8)
  %i.el = shl nuw <16 x i16> %i.eh, splat (i16 8)
  %i.em = shl nuw <16 x i16> %i.ei, splat (i16 8)
  %i.en = shl nuw <16 x i16> %i.ej, splat (i16 8)
  %i.eo = zext <16 x i8> %wide.load to <16 x i16>
  %i.ep = zext <16 x i8> %wide.load107 to <16 x i16>
  %i.eq = zext <16 x i8> %wide.load108 to <16 x i16>
  %i.er = zext <16 x i8> %wide.load109 to <16 x i16>
  %i.es = or disjoint <16 x i16> %i.ek, %i.eo
  %i.et = or disjoint <16 x i16> %i.el, %i.ep
  %i.eu = or disjoint <16 x i16> %i.em, %i.eq
  %i.ev = or disjoint <16 x i16> %i.en, %i.er
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  store <16 x i16> %i.es, ptr %i.ef, align 1, !alias.scope !40, !noalias !41
  store <16 x i16> %i.et, ptr %i.ew, align 1, !alias.scope !40, !noalias !41
  store <16 x i16> %i.eu, ptr %i.ex, align 1, !alias.scope !40, !noalias !41
  store <16 x i16> %i.ev, ptr %i.ey, align 1, !alias.scope !40, !noalias !41
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ez = icmp eq i64 %index.next, %n.vec
  br i1 %i.ez, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.preheader75.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fa = and i64 %smax, 7                        ; 2 uses
  %n.vec114 = sub i64 %i.dg, %i.fa                ; 2 uses
  %i.fb = add i64 %i.de, %n.vec114
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index115 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next118, %vec.epilog.vector.body ] ; 2 uses
  %i.fc = add nuw i64 %i.de, %index115            ; 2 uses
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc     ; 2 uses
  %wide.load116 = load <8 x i8>, ptr %i.fd, align 1, !tbaa !7, !alias.scope !38
  %i.fe = getelementptr i8, ptr %i.fd, i64 %3
  %wide.load117 = load <8 x i8>, ptr %i.fe, align 1, !tbaa !7, !alias.scope !39
  %i.ff = shl nuw nsw i64 %i.fc, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 %i.ff
  %i.fh = zext <8 x i8> %wide.load117 to <8 x i16>
  %i.fi = shl nuw <8 x i16> %i.fh, splat (i16 8)
  %i.fj = zext <8 x i8> %wide.load116 to <8 x i16>
  %i.fk = or disjoint <8 x i16> %i.fi, %i.fj
  store <8 x i16> %i.fk, ptr %i.fg, align 1, !alias.scope !40, !noalias !41
  %index.next118 = add nuw i64 %index115, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next118, %n.vec114
  br i1 %i.fl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n119 = icmp eq i64 %i.fa, 0
  br i1 %cmp.n119, label %.preheader75.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05979.ph = phi i64 [ %i.de, %iter.check ], [ %i.de, %vector.memcheck ], [ %i.du, %vec.epilog.iter.check ], [ %i.fb, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05979 = phi i64 [ %i.fq, %.lr.ph ], [ %.05979.ph, %.lr.ph.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 2 uses
  %i.fm = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.fn = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.fo = shl nuw nsw i64 %.05979, 1
  %i.fp = getelementptr inbounds nuw i8, ptr %4, i64 %i.fo
  %.sroa.489.0.insert.ext = zext i8 %i.fn to i16
  %.sroa.489.0.insert.shift = shl nuw i16 %.sroa.489.0.insert.ext, 8
  %.sroa.088.0.insert.ext = zext i8 %i.fm to i16
  %.sroa.088.0.insert.insert = or disjoint i16 %.sroa.489.0.insert.shift, %.sroa.088.0.insert.ext
  store i16 %.sroa.088.0.insert.insert, ptr %i.fp, align 1
  %i.fq = add nuw nsw i64 %.05979, 1              ; 2 uses
  %i.fr = icmp slt i64 %i.fq, %2
  br i1 %i.fr, label %.lr.ph, label %.preheader75.preheader, !llvm.loop !28

.preheader75.preheader:                           ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.fs = icmp eq i64 %i.dd, 1
  br i1 %i.fs, label %.preheader75.epil.preheader, label %.preheader75.preheader.new

.preheader75.preheader.new:                       ; preds = %.preheader75.preheader
  %unroll_iter = and i64 %i.dd, 288230376151711742
  br label %.preheader75

.preheader75:                                     ; preds = %.preheader75, %.preheader75.preheader.new
  %.05782 = phi i64 [ 0, %.preheader75.preheader.new ], [ %i.gu, %.preheader75 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader75.preheader.new ], [ %niter.next.1, %.preheader75 ]
  %i.ft = shl nuw nsw i64 %.05782, 5
  %i.fu = getelementptr i8, ptr %0, i64 %i.ft     ; 2 uses
  %i.fv = load <32 x i8>, ptr %i.fu, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fu, i64 %3
  %i.fx = load <32 x i8>, ptr %i.fw, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.fy = shufflevector <32 x i8> %i.fv, <32 x i8> %i.fx, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fz = shufflevector <32 x i8> %i.fv, <32 x i8> %i.fx, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ga = shufflevector <32 x i8> %i.fy, <32 x i8> %i.fz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gb = bitcast <32 x i8> %i.fy to <8 x i32>
  %i.gc = bitcast <32 x i8> %i.fz to <8 x i32>
  %i.gd = shufflevector <8 x i32> %i.gb, <8 x i32> %i.gc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ge = shl i64 %.05782, 6
  %i.gf = getelementptr i8, ptr %4, i64 %i.ge     ; 2 uses
  store <32 x i8> %i.ga, ptr %i.gf, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  store <8 x i32> %i.gd, ptr %.sroa.8.64..sroa_idx, align 1, !tbaa !7
  %i.gg = or disjoint i64 %.05782, 1              ; 2 uses
  %i.gh = shl nuw nsw i64 %i.gg, 5
  %i.gi = getelementptr i8, ptr %0, i64 %i.gh     ; 2 uses
  %i.gj = load <32 x i8>, ptr %i.gi, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 %3
  %i.gl = load <32 x i8>, ptr %i.gk, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.gm = shufflevector <32 x i8> %i.gj, <32 x i8> %i.gl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gn = shufflevector <32 x i8> %i.gj, <32 x i8> %i.gl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.go = shufflevector <32 x i8> %i.gm, <32 x i8> %i.gn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gp = bitcast <32 x i8> %i.gm to <8 x i32>
  %i.gq = bitcast <32 x i8> %i.gn to <8 x i32>
  %i.gr = shufflevector <8 x i32> %i.gp, <8 x i32> %i.gq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gs = shl i64 %i.gg, 6
  %i.gt = getelementptr i8, ptr %4, i64 %i.gs     ; 2 uses
  store <32 x i8> %i.go, ptr %i.gt, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store <8 x i32> %i.gr, ptr %.sroa.8.64..sroa_idx.1, align 1, !tbaa !7
  %i.gu = add nuw nsw i64 %.05782, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit175.unr-lcssa, label %.preheader75, !llvm.loop !33

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa: ; preds = %.preheader71.i
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader71.i.epil.preheader

.preheader71.i.epil.preheader:                    ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader71.i.preheader
  %.05377.i.epil.init = phi i64 [ 0, %.preheader71.i.preheader ], [ %i.dc, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod181 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod181)
  %i.gv = shl nuw nsw i64 %.05377.i.epil.init, 4
  %i.gw = getelementptr i8, ptr %0, i64 %i.gv     ; 2 uses
  %i.gx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gw) ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 %3
  %i.gz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.gy) ; 2 uses
  %9 = shufflevector <16 x i8> %i.gx, <16 x i8> %i.gz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %10 = shufflevector <16 x i8> %i.gx, <16 x i8> %i.gz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ha = shl nuw i64 %.05377.i.epil.init, 5
  %i.hb = getelementptr i8, ptr %4, i64 %i.ha     ; 2 uses
  store <16 x i8> %9, ptr %i.hb, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store <16 x i8> %10, ptr %.sroa.8.32..sroa_idx.i.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit175.unr-lcssa: ; preds = %.preheader75
  %i.hc = and i64 %2, 32
  %lcmp.mod.not = icmp eq i64 %i.hc, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader75.epil.preheader

.preheader75.epil.preheader:                      ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit175.unr-lcssa, %.preheader75.preheader
  %.05782.epil.init = phi i64 [ 0, %.preheader75.preheader ], [ %i.gu, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit175.unr-lcssa ] ; 2 uses
  %lcmp.mod176 = trunc i64 %i.dd to i1
  tail call void @llvm.assume(i1 %lcmp.mod176)
  %i.hd = shl nuw nsw i64 %.05782.epil.init, 5
  %i.he = getelementptr i8, ptr %0, i64 %i.hd     ; 2 uses
  %i.hf = load <32 x i8>, ptr %i.he, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.he, i64 %3
  %i.hh = load <32 x i8>, ptr %i.hg, align 1, !tbaa !7, !noalias !42 ; 2 uses
  %i.hi = shufflevector <32 x i8> %i.hf, <32 x i8> %i.hh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hj = shufflevector <32 x i8> %i.hf, <32 x i8> %i.hh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hk = shufflevector <32 x i8> %i.hi, <32 x i8> %i.hj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.hl = bitcast <32 x i8> %i.hi to <8 x i32>
  %i.hm = bitcast <32 x i8> %i.hj to <8 x i32>
  %i.hn = shufflevector <8 x i32> %i.hl, <8 x i32> %i.hm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shl i64 %.05782.epil.init, 6
  %i.hp = getelementptr i8, ptr %4, i64 %i.ho     ; 2 uses
  store <32 x i8> %i.hk, ptr %i.hp, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  store <8 x i32> %i.hn, ptr %.sroa.8.64..sroa_idx.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit: ; preds = %.preheader75.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit175.unr-lcssa, %.preheader71.i.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader72.i
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
  %min.iters.check162 = icmp ult i64 %i.g, 24
  br i1 %min.iters.check162, label %.lr.ph.i.preheader, label %vector.memcheck163

vector.memcheck163:                               ; preds = %.lr.ph.preheader.i
  %i.h = shl i64 %i.b, 6
  %i.i = getelementptr i8, ptr %4, i64 %i.h       ; 4 uses
  %i.j = shl i64 %2, 2
  %i.k = getelementptr i8, ptr %4, i64 %i.j       ; 4 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.c
  %i.m = getelementptr i8, ptr %i.l, i64 %i.f
  %i.n = getelementptr i8, ptr %0, i64 %2
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  %i.p = getelementptr i8, ptr %0, i64 %i.c
  %i.q = getelementptr i8, ptr %i.p, i64 %i.e
  %i.r = getelementptr i8, ptr %0, i64 %2
  %i.s = getelementptr i8, ptr %i.r, i64 %i.e
  %i.t = getelementptr i8, ptr %0, i64 %3
  %i.u = getelementptr i8, ptr %i.t, i64 %i.c
  %i.v = getelementptr i8, ptr %0, i64 %3
  %i.w = getelementptr i8, ptr %i.v, i64 %2
  %i.x = getelementptr i8, ptr %0, i64 %i.c
  %i.y = getelementptr i8, ptr %0, i64 %2
  %bound0164 = icmp ult ptr %i.i, %i.o
  %bound1165 = icmp ult ptr %i.m, %i.k
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0167 = icmp ult ptr %i.i, %i.s
  %bound1168 = icmp ult ptr %i.q, %i.k
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %found.conflict166, %found.conflict169
  %bound0171 = icmp ult ptr %i.i, %i.w
  %bound1172 = icmp ult ptr %i.u, %i.k
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %i.i, %i.y
  %bound1176 = icmp ult ptr %i.x, %i.k
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  br i1 %conflict.rdx178, label %.lr.ph.i.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %vector.memcheck163
  %i.z = and i64 %2, 7                            ; 2 uses
  %n.vec180 = sub i64 %i.g, %i.z                  ; 2 uses
  %i.aa = add i64 %i.c, %n.vec180
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next187, %vector.body181 ] ; 2 uses
  %i.ab = add i64 %i.c, %index182                 ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 %i.ab     ; 4 uses
  %wide.load183 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !7, !alias.scope !65
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %wide.load184 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !7, !alias.scope !66
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.e
  %wide.load185 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !67
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.f
  %wide.load186 = load <8 x i8>, ptr %i.af, align 1, !tbaa !7, !alias.scope !68
  %i.ag = shl nsw i64 %i.ab, 2
  %i.ah = getelementptr inbounds i8, ptr %4, i64 %i.ag
  %i.ai = zext <8 x i8> %wide.load186 to <8 x i32>
  %i.aj = shl nuw <8 x i32> %i.ai, splat (i32 24)
  %i.ak = zext <8 x i8> %wide.load185 to <8 x i32>
  %i.al = shl nuw nsw <8 x i32> %i.ak, splat (i32 16)
  %i.am = zext <8 x i8> %wide.load184 to <8 x i32>
  %i.an = shl nuw nsw <8 x i32> %i.am, splat (i32 8)
  %i.ao = zext <8 x i8> %wide.load183 to <8 x i32>
  %i.ap = or disjoint <8 x i32> %i.an, %i.ao
  %i.aq = or disjoint <8 x i32> %i.ap, %i.al
  %i.ar = or disjoint <8 x i32> %i.aq, %i.aj
  store <8 x i32> %i.ar, ptr %i.ah, align 1, !alias.scope !69, !noalias !70
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.as, label %middle.block188, label %vector.body181, !llvm.loop !49

middle.block188:                                  ; preds = %vector.body181
  %cmp.n189 = icmp eq i64 %i.z, 0
  br i1 %cmp.n189, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck163, %.lr.ph.preheader.i, %middle.block188
  %.05574.i.ph = phi i64 [ %i.c, %vector.memcheck163 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.aa, %middle.block188 ] ; 6 uses
  %i.at = sub i64 %2, %.05574.i.ph
  %.neg195 = add i64 %.05574.i.ph, 1
  %xtraiter193 = and i64 %i.at, 1
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05574.i.ph ; 4 uses
  %i.au = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.av = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %gep.2.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.e
  %i.aw = load i8, ptr %gep.2.i.prol, align 1, !tbaa !7
  %gep.3.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %i.f
  %i.ax = load i8, ptr %gep.3.i.prol, align 1, !tbaa !7
  %i.ay = shl nsw i64 %.05574.i.ph, 2
  %i.az = getelementptr inbounds i8, ptr %4, i64 %i.ay
  %.sroa.690.0.insert.ext.i.prol = zext i8 %i.ax to i32
  %.sroa.690.0.insert.shift.i.prol = shl nuw i32 %.sroa.690.0.insert.ext.i.prol, 24
  %.sroa.5.0.insert.ext.i.prol = zext i8 %i.aw to i32
  %.sroa.5.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.prol, 16
  %.sroa.489.0.insert.ext.i.prol = zext i8 %i.av to i32
  %.sroa.489.0.insert.shift.i.prol = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.prol, 8
  %.sroa.088.0.insert.ext.i.prol = zext i8 %i.au to i32
  %.sroa.5.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.shift.i.prol, %.sroa.088.0.insert.ext.i.prol
  %.sroa.489.0.insert.insert.i.prol = or disjoint i32 %.sroa.5.0.insert.insert.i.prol, %.sroa.5.0.insert.shift.i.prol
  %.sroa.088.0.insert.insert.i.prol = or disjoint i32 %.sroa.489.0.insert.insert.i.prol, %.sroa.690.0.insert.shift.i.prol
  store i32 %.sroa.088.0.insert.insert.i.prol, ptr %i.az, align 1
  %i.ba = add nsw i64 %.05574.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05574.i.unr = phi i64 [ %.05574.i.ph, %.lr.ph.i.preheader ], [ %i.ba, %.lr.ph.i.prol ]
  %i.bb = icmp eq i64 %2, %.neg195
  br i1 %i.bb, label %.preheader72.i, label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block188, %bb.b
  %i.bc = icmp sgt i64 %2, 15
  br i1 %i.bc, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.bd = shl nsw i64 %3, 1
  %i.be = mul nsw i64 %3, 3
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05574.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.05574.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 4 uses
  %i.bf = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bg = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.bh = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.bi = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %i.bj = shl nsw i64 %.05574.i, 2
  %i.bk = getelementptr inbounds i8, ptr %4, i64 %i.bj
  %.sroa.690.0.insert.ext.i = zext i8 %i.bi to i32
  %.sroa.690.0.insert.shift.i = shl nuw i32 %.sroa.690.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.bh to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.489.0.insert.ext.i = zext i8 %i.bg to i32
  %.sroa.489.0.insert.shift.i = shl nuw nsw i32 %.sroa.489.0.insert.ext.i, 8
  %.sroa.088.0.insert.ext.i = zext i8 %i.bf to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.shift.i, %.sroa.088.0.insert.ext.i
  %.sroa.489.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.088.0.insert.insert.i = or disjoint i32 %.sroa.489.0.insert.insert.i, %.sroa.690.0.insert.shift.i
  store i32 %.sroa.088.0.insert.insert.i, ptr %i.bk, align 1
  %i.bl = add nsw i64 %.05574.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.bl ; 4 uses
  %i.bm = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.bn = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %gep.2.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.e
  %i.bo = load i8, ptr %gep.2.i.1, align 1, !tbaa !7
  %gep.3.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %i.f
  %i.bp = load i8, ptr %gep.3.i.1, align 1, !tbaa !7
  %i.bq = shl nsw i64 %i.bl, 2
  %i.br = getelementptr inbounds i8, ptr %4, i64 %i.bq
  %.sroa.690.0.insert.ext.i.1 = zext i8 %i.bp to i32
  %.sroa.690.0.insert.shift.i.1 = shl nuw i32 %.sroa.690.0.insert.ext.i.1, 24
  %.sroa.5.0.insert.ext.i.1 = zext i8 %i.bo to i32
  %.sroa.5.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.i.1, 16
  %.sroa.489.0.insert.ext.i.1 = zext i8 %i.bn to i32
  %.sroa.489.0.insert.shift.i.1 = shl nuw nsw i32 %.sroa.489.0.insert.ext.i.1, 8
  %.sroa.088.0.insert.ext.i.1 = zext i8 %i.bm to i32
  %.sroa.5.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.shift.i.1, %.sroa.088.0.insert.ext.i.1
  %.sroa.489.0.insert.insert.i.1 = or disjoint i32 %.sroa.5.0.insert.insert.i.1, %.sroa.5.0.insert.shift.i.1
  %.sroa.088.0.insert.insert.i.1 = or disjoint i32 %.sroa.489.0.insert.insert.i.1, %.sroa.690.0.insert.shift.i.1
  store i32 %.sroa.088.0.insert.insert.i.1, ptr %i.br, align 1
  %i.bs = add nsw i64 %.05574.i, 2                ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bs, %2
  br i1 %exitcond.not.i.1, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !50

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ci, %.preheader.preheader.i ] ; 3 uses
  %i.bt = shl nuw nsw i64 %.05379.i, 4
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt     ; 4 uses
  %i.bv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bu) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 %3
  %i.bx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bw) ; 2 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.bd
  %i.bz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.by) ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bu, i64 %i.be
  %i.cb = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ca) ; 2 uses
  %5 = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %6 = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %7 = shufflevector <16 x i8> %i.bx, <16 x i8> %i.cb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %8 = shufflevector <16 x i8> %i.bx, <16 x i8> %i.cb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cc = shufflevector <16 x i8> %5, <16 x i8> %7, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cd = shufflevector <16 x i8> %5, <16 x i8> %7, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ce = shufflevector <16 x i8> %6, <16 x i8> %8, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cf = shufflevector <16 x i8> %6, <16 x i8> %8, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cg = shl i64 %.05379.i, 6
  %i.ch = getelementptr i8, ptr %4, i64 %i.cg     ; 4 uses
  store <16 x i8> %i.cc, ptr %i.ch, align 1, !tbaa !7
  %.sroa.20.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <16 x i8> %i.cd, ptr %.sroa.20.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.21.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store <16 x i8> %i.ce, ptr %.sroa.21.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.22.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store <16 x i8> %i.cf, ptr %.sroa.22.128..sroa_idx.i, align 1, !tbaa !7
  %i.ci = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.ci, %i.b
  br i1 %exitcond87.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !51

bb.c:                                             ; preds = %bb.a
  %i.cj = lshr i64 %2, 5
  %i.ck = and i64 %i.cj, 144115188075855871       ; 4 uses
  %i.cl = shl nuw nsw i64 %i.ck, 5                ; 10 uses
  %i.cm = icmp samesign ult i64 %i.cl, %2
  br i1 %i.cm, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.cn = shl nsw i64 %3, 1                       ; 6 uses
  %i.co = mul nsw i64 %3, 3                       ; 6 uses
  %i.cp = sub nuw nsw i64 %2, %i.cl               ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 24
  br i1 %min.iters.check, label %.lr.ph.preheader192, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cq = shl nuw i64 %i.ck, 7
  %i.cr = getelementptr i8, ptr %4, i64 %i.cq     ; 4 uses
  %i.cs = shl i64 %2, 2
  %i.ct = getelementptr i8, ptr %4, i64 %i.cs     ; 4 uses
  %i.cu = getelementptr i8, ptr %0, i64 %i.cl
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.co
  %i.cw = getelementptr i8, ptr %0, i64 %2
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.co
  %i.cy = getelementptr i8, ptr %0, i64 %i.cl
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cn
  %i.da = getelementptr i8, ptr %0, i64 %2
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cn
  %i.dc = getelementptr i8, ptr %0, i64 %3
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cl
  %i.de = getelementptr i8, ptr %0, i64 %3
  %i.df = getelementptr i8, ptr %i.de, i64 %2
  %i.dg = getelementptr i8, ptr %0, i64 %i.cl
  %i.dh = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %i.cr, %i.cx
  %bound1 = icmp ult ptr %i.cv, %i.ct
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %i.cr, %i.db
  %bound1123 = icmp ult ptr %i.cz, %i.ct
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  %bound0125 = icmp ult ptr %i.cr, %i.df
  %bound1126 = icmp ult ptr %i.dd, %i.ct
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx, %found.conflict127
  %bound0129 = icmp ult ptr %i.cr, %i.dh
  %bound1130 = icmp ult ptr %i.dg, %i.ct
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  br i1 %conflict.rdx132, label %.lr.ph.preheader192, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.di = and i64 %2, 7                           ; 2 uses
  %n.vec = sub nsw i64 %i.cp, %i.di               ; 2 uses
  %i.dj = add i64 %i.cl, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dk = add nuw i64 %i.cl, %index               ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk     ; 4 uses
  %wide.load = load <8 x i8>, ptr %i.dl, align 1, !tbaa !7, !alias.scope !71
  %i.dm = getelementptr i8, ptr %i.dl, i64 %3
  %wide.load133 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !7, !alias.scope !72
  %i.dn = getelementptr i8, ptr %i.dl, i64 %i.cn
  %wide.load134 = load <8 x i8>, ptr %i.dn, align 1, !tbaa !7, !alias.scope !73
  %i.do = getelementptr i8, ptr %i.dl, i64 %i.co
  %wide.load135 = load <8 x i8>, ptr %i.do, align 1, !tbaa !7, !alias.scope !74
  %i.dp = shl nuw nsw i64 %i.dk, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 %i.dp
  %i.dr = zext <8 x i8> %wide.load135 to <8 x i32>
  %i.ds = shl nuw <8 x i32> %i.dr, splat (i32 24)
  %i.dt = zext <8 x i8> %wide.load134 to <8 x i32>
  %i.du = shl nuw nsw <8 x i32> %i.dt, splat (i32 16)
  %i.dv = or disjoint <8 x i32> %i.ds, %i.du
  %i.dw = zext <8 x i8> %wide.load133 to <8 x i32>
  %i.dx = shl nuw nsw <8 x i32> %i.dw, splat (i32 8)
  %i.dy = or disjoint <8 x i32> %i.dv, %i.dx
  %i.dz = zext <8 x i8> %wide.load to <8 x i32>
  %i.ea = or disjoint <8 x i32> %i.dy, %i.dz
  store <8 x i32> %i.ea, ptr %i.dq, align 1, !alias.scope !75, !noalias !76
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader192

.lr.ph.preheader192:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.preheader ], [ %i.dj, %middle.block ] ; 6 uses
  %i.ec = sub i64 %2, %.05979.ph
  %.neg = add i64 %.05979.ph, 1
  %xtraiter = and i64 %i.ec, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader192
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05979.ph ; 4 uses
  %i.ed = load i8, ptr %invariant.gep.prol, align 1, !tbaa !7
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.ee = load i8, ptr %gep.1.prol, align 1, !tbaa !7
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cn
  %i.ef = load i8, ptr %gep.2.prol, align 1, !tbaa !7
  %gep.3.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.co
  %i.eg = load i8, ptr %gep.3.prol, align 1, !tbaa !7
  %i.eh = shl nuw nsw i64 %.05979.ph, 2
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 %i.eh
  %.sroa.696.0.insert.ext.prol = zext i8 %i.eg to i32
  %.sroa.696.0.insert.shift.prol = shl nuw i32 %.sroa.696.0.insert.ext.prol, 24
  %.sroa.5.0.insert.ext.prol = zext i8 %i.ef to i32
  %.sroa.5.0.insert.shift.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.prol, 16
  %.sroa.5.0.insert.insert.prol = or disjoint i32 %.sroa.696.0.insert.shift.prol, %.sroa.5.0.insert.shift.prol
  %.sroa.495.0.insert.ext.prol = zext i8 %i.ee to i32
  %.sroa.495.0.insert.shift.prol = shl nuw nsw i32 %.sroa.495.0.insert.ext.prol, 8
  %.sroa.495.0.insert.insert.prol = or disjoint i32 %.sroa.5.0.insert.insert.prol, %.sroa.495.0.insert.shift.prol
  %.sroa.094.0.insert.ext.prol = zext i8 %i.ed to i32
  %.sroa.094.0.insert.insert.prol = or disjoint i32 %.sroa.495.0.insert.insert.prol, %.sroa.094.0.insert.ext.prol
  store i32 %.sroa.094.0.insert.insert.prol, ptr %i.ei, align 1
  %i.ej = add nuw nsw i64 %.05979.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader192
  %.05979.unr = phi i64 [ %.05979.ph, %.lr.ph.preheader192 ], [ %i.ej, %.lr.ph.prol ]
  %i.ek = icmp eq i64 %2, %.neg
  br i1 %i.ek, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.el = shl nsw i64 %3, 1
  %i.em = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05979 = phi i64 [ %i.fa, %.lr.ph ], [ %.05979.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 4 uses
  %i.en = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.eo = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.cn
  %i.ep = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.co
  %i.eq = load i8, ptr %gep.3, align 1, !tbaa !7
  %i.er = shl nuw nsw i64 %.05979, 2
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 %i.er
  %.sroa.696.0.insert.ext = zext i8 %i.eq to i32
  %.sroa.696.0.insert.shift = shl nuw i32 %.sroa.696.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ep to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.696.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.495.0.insert.ext = zext i8 %i.eo to i32
  %.sroa.495.0.insert.shift = shl nuw nsw i32 %.sroa.495.0.insert.ext, 8
  %.sroa.495.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.495.0.insert.shift
  %.sroa.094.0.insert.ext = zext i8 %i.en to i32
  %.sroa.094.0.insert.insert = or disjoint i32 %.sroa.495.0.insert.insert, %.sroa.094.0.insert.ext
  store i32 %.sroa.094.0.insert.insert, ptr %i.es, align 1
  %i.et = add nuw nsw i64 %.05979, 1              ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.et ; 4 uses
  %i.eu = load i8, ptr %invariant.gep.1, align 1, !tbaa !7
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.ev = load i8, ptr %gep.1.1, align 1, !tbaa !7
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cn
  %i.ew = load i8, ptr %gep.2.1, align 1, !tbaa !7
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.co
  %i.ex = load i8, ptr %gep.3.1, align 1, !tbaa !7
  %i.ey = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 %i.ey
  %.sroa.696.0.insert.ext.1 = zext i8 %i.ex to i32
  %.sroa.696.0.insert.shift.1 = shl nuw i32 %.sroa.696.0.insert.ext.1, 24
  %.sroa.5.0.insert.ext.1 = zext i8 %i.ew to i32
  %.sroa.5.0.insert.shift.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.1, 16
  %.sroa.5.0.insert.insert.1 = or disjoint i32 %.sroa.696.0.insert.shift.1, %.sroa.5.0.insert.shift.1
  %.sroa.495.0.insert.ext.1 = zext i8 %i.ev to i32
  %.sroa.495.0.insert.shift.1 = shl nuw nsw i32 %.sroa.495.0.insert.ext.1, 8
  %.sroa.495.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.insert.1, %.sroa.495.0.insert.shift.1
  %.sroa.094.0.insert.ext.1 = zext i8 %i.eu to i32
  %.sroa.094.0.insert.insert.1 = or disjoint i32 %.sroa.495.0.insert.insert.1, %.sroa.094.0.insert.ext.1
  store i32 %.sroa.094.0.insert.insert.1, ptr %i.ez, align 1
  %i.fa = add nuw nsw i64 %.05979, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fa, %2
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !59

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.gm, %.preheader.preheader ] ; 3 uses
  %i.fb = shl nuw nsw i64 %.05784, 5
  %i.fc = getelementptr i8, ptr %0, i64 %i.fb     ; 4 uses
  %i.fd = load <32 x i8>, ptr %i.fc, align 1, !tbaa !7, !noalias !77 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fc, i64 %3
  %i.ff = load <32 x i8>, ptr %i.fe, align 1, !tbaa !7, !noalias !77 ; 2 uses
  %i.fg = getelementptr i8, ptr %i.fc, i64 %i.el
  %i.fh = load <32 x i8>, ptr %i.fg, align 1, !tbaa !7, !noalias !77 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fc, i64 %i.em
  %i.fj = load <32 x i8>, ptr %i.fi, align 1, !tbaa !7, !noalias !77 ; 2 uses
  %i.fk = shufflevector <32 x i8> %i.fd, <32 x i8> %i.fh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh:bb.a
  %i.t = getelementptr i8, ptr %0, i64 %i.c
  %i.u = getelementptr i8, ptr %i.t, i64 %i.i
  %i.v = getelementptr i8, ptr %0, i64 %2
  %i.w = getelementptr i8, ptr %i.v, i64 %i.i
  %i.x = getelementptr i8, ptr %0, i64 %i.c
  %i.y = getelementptr i8, ptr %i.x, i64 %i.h
  %i.z = getelementptr i8, ptr %0, i64 %2
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.h
  %i.ab = getelementptr i8, ptr %0, i64 %i.c
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g
  %i.ad = getelementptr i8, ptr %0, i64 %2
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.g
  %i.af = getelementptr i8, ptr %0, i64 %i.c
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.f
  %i.ah = getelementptr i8, ptr %0, i64 %2
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.f
  %i.aj = getelementptr i8, ptr %0, i64 %i.c
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.e
  %i.al = getelementptr i8, ptr %0, i64 %2
  %i.am = getelementptr i8, ptr %i.al, i64 %i.e
  %i.an = getelementptr i8, ptr %0, i64 %3
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.c
  %i.ap = getelementptr i8, ptr %0, i64 %3
  %i.aq = getelementptr i8, ptr %i.ap, i64 %2
  %i.ar = getelementptr i8, ptr %0, i64 %i.c
  %i.as = getelementptr i8, ptr %0, i64 %2
  %bound0236 = icmp ult ptr %i.m, %i.s
  %bound1237 = icmp ult ptr %i.q, %i.o
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult ptr %i.m, %i.w
  %bound1240 = icmp ult ptr %i.u, %i.o
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  %bound0243 = icmp ult ptr %i.m, %i.aa
  %bound1244 = icmp ult ptr %i.y, %i.o
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %i.m, %i.ae
  %bound1248 = icmp ult ptr %i.ac, %i.o
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %i.m, %i.ai
  %bound1252 = icmp ult ptr %i.ag, %i.o
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %i.m, %i.am
  %bound1256 = icmp ult ptr %i.ak, %i.o
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %i.m, %i.aq
  %bound1260 = icmp ult ptr %i.ao, %i.o
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %i.m, %i.as
  %bound1264 = icmp ult ptr %i.ar, %i.o
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  br i1 %conflict.rdx266, label %.lr.ph.i.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck235
  %i.at = and i64 %2, 3                           ; 2 uses
  %n.vec268 = sub i64 %i.k, %i.at                 ; 2 uses
  %i.au = add i64 %i.c, %n.vec268
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next279, %vector.body269 ] ; 2 uses
  %i.av = add i64 %i.c, %index270                 ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 %i.av     ; 8 uses
  %wide.load271 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !7, !alias.scope !108
  %i.ax = getelementptr i8, ptr %i.aw, i64 %3
  %wide.load272 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !7, !alias.scope !109
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.e
  %wide.load273 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !7, !alias.scope !110
  %i.az = getelementptr i8, ptr %i.aw, i64 %i.f
  %wide.load274 = load <4 x i8>, ptr %i.az, align 1, !tbaa !7, !alias.scope !111
  %i.ba = getelementptr i8, ptr %i.aw, i64 %i.g
  %wide.load275 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !112
  %i.bb = getelementptr i8, ptr %i.aw, i64 %i.h
  %wide.load276 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !7, !alias.scope !113
  %i.bc = getelementptr i8, ptr %i.aw, i64 %i.i
  %wide.load277 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !7, !alias.scope !114
  %i.bd = getelementptr i8, ptr %i.aw, i64 %i.j
  %wide.load278 = load <4 x i8>, ptr %i.bd, align 1, !tbaa !7, !alias.scope !115
  %i.be = shl nsw i64 %i.av, 3
  %i.bf = getelementptr inbounds i8, ptr %4, i64 %i.be
  %i.bg = zext <4 x i8> %wide.load278 to <4 x i64>
  %i.bh = shl nuw <4 x i64> %i.bg, splat (i64 56)
  %i.bi = zext <4 x i8> %wide.load277 to <4 x i64>
  %i.bj = shl nuw nsw <4 x i64> %i.bi, splat (i64 48)
  %i.bk = zext <4 x i8> %wide.load276 to <4 x i64>
  %i.bl = shl nuw nsw <4 x i64> %i.bk, splat (i64 40)
  %i.bm = zext <4 x i8> %wide.load275 to <4 x i64>
  %i.bn = shl nuw nsw <4 x i64> %i.bm, splat (i64 32)
  %i.bo = zext <4 x i8> %wide.load274 to <4 x i64>
  %i.bp = shl nuw nsw <4 x i64> %i.bo, splat (i64 24)
  %i.bq = zext <4 x i8> %wide.load273 to <4 x i64>
  %i.br = shl nuw nsw <4 x i64> %i.bq, splat (i64 16)
  %i.bs = zext <4 x i8> %wide.load272 to <4 x i64>
  %i.bt = shl nuw nsw <4 x i64> %i.bs, splat (i64 8)
  %i.bu = zext <4 x i8> %wide.load271 to <4 x i64>
  %i.bv = or disjoint <4 x i64> %i.bt, %i.bu
  %i.bw = or disjoint <4 x i64> %i.bv, %i.br
  %i.bx = or disjoint <4 x i64> %i.bw, %i.bp
  %i.by = or disjoint <4 x i64> %i.bx, %i.bn
  %i.bz = or <4 x i64> %i.by, %i.bl
  %i.ca = or <4 x i64> %i.bz, %i.bj
  %i.cb = or <4 x i64> %i.ca, %i.bh
  store <4 x i64> %i.cb, ptr %i.bf, align 1, !alias.scope !116, !noalias !117
  %index.next279 = add nuw i64 %index270, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next279, %n.vec268
  br i1 %i.cc, label %middle.block280, label %vector.body269, !llvm.loop !88

middle.block280:                                  ; preds = %vector.body269
  %cmp.n281 = icmp eq i64 %i.at, 0
  br i1 %cmp.n281, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck235, %.lr.ph.preheader.i, %middle.block280
  %.05574.i.ph = phi i64 [ %i.c, %vector.memcheck235 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.au, %middle.block280 ]
  br label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i, %middle.block280, %bb.b
  %i.cd = icmp sgt i64 %2, 15
  br i1 %i.cd, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.ce = shl nsw i64 %3, 1
  %i.cf = mul nsw i64 %3, 3
  %i.cg = shl nsw i64 %3, 2
  %i.ch = mul nsw i64 %3, 5
  %i.ci = mul nsw i64 %3, 6
  %i.cj = mul nsw i64 %3, 7
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05574.i = phi i64 [ %i.cu, %.lr.ph.i ], [ %.05574.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 8 uses
  %i.ck = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.cl = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.cm = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.cn = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.g
  %i.co = load i8, ptr %gep.4.i, align 1, !tbaa !7
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.h
  %i.cp = load i8, ptr %gep.5.i, align 1, !tbaa !7
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.i
  %i.cq = load i8, ptr %gep.6.i, align 1, !tbaa !7
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.j
  %i.cr = load i8, ptr %gep.7.i, align 1, !tbaa !7
  %i.cs = shl nsw i64 %.05574.i, 3
  %i.ct = getelementptr inbounds i8, ptr %4, i64 %i.cs
  %.sroa.1094.0.insert.ext.i = zext i8 %i.cr to i64
  %.sroa.1094.0.insert.shift.i = shl nuw i64 %.sroa.1094.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.cq to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.893.0.insert.ext.i = zext i8 %i.cp to i64
  %.sroa.893.0.insert.shift.i = shl nuw nsw i64 %.sroa.893.0.insert.ext.i, 40
  %.sroa.7.0.insert.ext.i = zext i8 %i.co to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.692.0.insert.ext.i = zext i8 %i.cn to i64
  %.sroa.692.0.insert.shift.i = shl nuw nsw i64 %.sroa.692.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.cm to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.491.0.insert.ext.i = zext i8 %i.cl to i64
  %.sroa.491.0.insert.shift.i = shl nuw nsw i64 %.sroa.491.0.insert.ext.i, 8
  %.sroa.090.0.insert.ext.i = zext i8 %i.ck to i64
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.491.0.insert.shift.i, %.sroa.090.0.insert.ext.i
  %.sroa.893.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.893.0.insert.insert.i, %.sroa.692.0.insert.shift.i
  %.sroa.692.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.491.0.insert.mask.i = or i64 %.sroa.692.0.insert.insert.i, %.sroa.893.0.insert.shift.i
  %.sroa.090.0.insert.mask.i = or i64 %.sroa.491.0.insert.mask.i, %.sroa.9.0.insert.shift.i
  %.sroa.090.0.insert.insert.i = or i64 %.sroa.090.0.insert.mask.i, %.sroa.1094.0.insert.shift.i
  store i64 %.sroa.090.0.insert.insert.i, ptr %i.ct, align 1
  %i.cu = add nsw i64 %.05574.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cu, %2
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !89

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ee, %.preheader.preheader.i ] ; 3 uses
  %i.cv = shl nuw nsw i64 %.05379.i, 4
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv     ; 8 uses
  %i.cx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cw) ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 %3
  %i.cz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cy) ; 2 uses
  %i.da = getelementptr i8, ptr %i.cw, i64 %i.ce
  %i.db = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.da) ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cw, i64 %i.cf
  %i.dd = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dc) ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.cg
  %i.df = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.de) ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cw, i64 %i.ch
  %i.dh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dg) ; 2 uses
  %i.di = getelementptr i8, ptr %i.cw, i64 %i.ci
  %i.dj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.di) ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cw, i64 %i.cj
  %i.dl = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dk) ; 2 uses
  %5 = shufflevector <16 x i8> %i.cx, <16 x i8> %i.df, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %6 = shufflevector <16 x i8> %i.cx, <16 x i8> %i.df, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %7 = shufflevector <16 x i8> %i.cz, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %8 = shufflevector <16 x i8> %i.cz, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %9 = shufflevector <16 x i8> %i.db, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %10 = shufflevector <16 x i8> %i.db, <16 x i8> %i.dj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %11 = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %12 = shufflevector <16 x i8> %i.dd, <16 x i8> %i.dl, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dm = shufflevector <16 x i8> %5, <16 x i8> %9, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dn = shufflevector <16 x i8> %5, <16 x i8> %9, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i8> %6, <16 x i8> %10, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dp = shufflevector <16 x i8> %6, <16 x i8> %10, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x i8> %7, <16 x i8> %11, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dr = shufflevector <16 x i8> %7, <16 x i8> %11, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x i8> %8, <16 x i8> %12, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dt = shufflevector <16 x i8> %8, <16 x i8> %12, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.du = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dv = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dw = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dx = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dy = shufflevector <16 x i8> %i.do, <16 x i8> %i.ds, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dz = shufflevector <16 x i8> %i.do, <16 x i8> %i.ds, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ea = shufflevector <16 x i8> %i.dp, <16 x i8> %i.dt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eb = shufflevector <16 x i8> %i.dp, <16 x i8> %i.dt, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ec = shl i64 %.05379.i, 7
  %i.ed = getelementptr i8, ptr %4, i64 %i.ec     ; 8 uses
  store <16 x i8> %i.du, ptr %i.ed, align 1, !tbaa !7
  %.sroa.52.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <16 x i8> %i.dv, ptr %.sroa.52.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.53.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  store <16 x i8> %i.dw, ptr %.sroa.53.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.54.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store <16 x i8> %i.dx, ptr %.sroa.54.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.55.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  store <16 x i8> %i.dy, ptr %.sroa.55.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.56.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  store <16 x i8> %i.dz, ptr %.sroa.56.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.57.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store <16 x i8> %i.ea, ptr %.sroa.57.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.58.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 112
  store <16 x i8> %i.eb, ptr %.sroa.58.384..sroa_idx.i, align 1, !tbaa !7
  %i.ee = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.ee, %i.b
  br i1 %exitcond89.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !90

bb.c:                                             ; preds = %bb.a
  %i.ef = lshr i64 %2, 5
  %i.eg = and i64 %i.ef, 72057594037927935        ; 4 uses
  %i.eh = shl nuw nsw i64 %i.eg, 5                ; 14 uses
  %i.ei = icmp samesign ult i64 %i.eh, %2
  br i1 %i.ei, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ej = shl nsw i64 %3, 1                       ; 4 uses
  %i.ek = mul nsw i64 %3, 3                       ; 4 uses
  %i.el = shl nsw i64 %3, 2                       ; 4 uses
  %i.em = mul nsw i64 %3, 5                       ; 4 uses
  %i.en = mul nsw i64 %3, 6                       ; 4 uses
  %i.eo = mul nsw i64 %3, 7                       ; 4 uses
  %i.ep = sub nuw nsw i64 %2, %i.eh               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ep, 20
  br i1 %min.iters.check, label %.lr.ph.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.eq = shl nuw i64 %i.eg, 8
  %i.er = getelementptr i8, ptr %4, i64 %i.eq     ; 8 uses
  %i.es = shl i64 %2, 3
  %i.et = getelementptr i8, ptr %4, i64 %i.es     ; 8 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.eh
  %i.ev = getelementptr i8, ptr %i.eu, i64 %i.eo
  %i.ew = getelementptr i8, ptr %0, i64 %2
  %i.ex = getelementptr i8, ptr %i.ew, i64 %i.eo
  %i.ey = getelementptr i8, ptr %0, i64 %i.eh
  %i.ez = getelementptr i8, ptr %i.ey, i64 %i.en
  %i.fa = getelementptr i8, ptr %0, i64 %2
  %i.fb = getelementptr i8, ptr %i.fa, i64 %i.en
  %i.fc = getelementptr i8, ptr %0, i64 %i.eh
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.em
  %i.fe = getelementptr i8, ptr %0, i64 %2
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.em
  %i.fg = getelementptr i8, ptr %0, i64 %i.eh
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.el
  %i.fi = getelementptr i8, ptr %0, i64 %2
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.el
  %i.fk = getelementptr i8, ptr %0, i64 %i.eh
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.ek
  %i.fm = getelementptr i8, ptr %0, i64 %2
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.ek
  %i.fo = getelementptr i8, ptr %0, i64 %i.eh
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.ej
  %i.fq = getelementptr i8, ptr %0, i64 %2
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.ej
  %i.fs = getelementptr i8, ptr %0, i64 %3
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.eh
  %i.fu = getelementptr i8, ptr %0, i64 %3
  %i.fv = getelementptr i8, ptr %i.fu, i64 %2
  %i.fw = getelementptr i8, ptr %0, i64 %i.eh
  %i.fx = getelementptr i8, ptr %0, i64 %2
  %bound0 = icmp ult ptr %i.er, %i.ex
  %bound1 = icmp ult ptr %i.ev, %i.et
  %found.conflict = and i1 %bound0, %bound1
  %bound0150 = icmp ult ptr %i.er, %i.fb
  %bound1151 = icmp ult ptr %i.ez, %i.et
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx = or i1 %found.conflict, %found.conflict152
  %bound0153 = icmp ult ptr %i.er, %i.ff
  %bound1154 = icmp ult ptr %i.fd, %i.et
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx, %found.conflict155
  %bound0157 = icmp ult ptr %i.er, %i.fj
  %bound1158 = icmp ult ptr %i.fh, %i.et
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.er, %i.fn
  %bound1162 = icmp ult ptr %i.fl, %i.et
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.er, %i.fr
  %bound1166 = icmp ult ptr %i.fp, %i.et
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.er, %i.fv
  %bound1170 = icmp ult ptr %i.ft, %i.et
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.er, %i.fx
  %bound1174 = icmp ult ptr %i.fw, %i.et
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  br i1 %conflict.rdx176, label %.lr.ph.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fy = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nsw i64 %i.ep, %i.fy               ; 2 uses
  %i.fz = add i64 %i.eh, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = add nuw i64 %i.eh, %index               ; 2 uses
  %i.gb = getelementptr i8, ptr %0, i64 %i.ga     ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.gb, align 1, !tbaa !7, !alias.scope !118
  %i.gc = getelementptr i8, ptr %i.gb, i64 %3
  %wide.load177 = load <4 x i8>, ptr %i.gc, align 1, !tbaa !7, !alias.scope !119
  %i.gd = getelementptr i8, ptr %i.gb, i64 %i.ej
  %wide.load178 = load <4 x i8>, ptr %i.gd, align 1, !tbaa !7, !alias.scope !120
  %i.ge = getelementptr i8, ptr %i.gb, i64 %i.ek
  %wide.load179 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !7, !alias.scope !121
  %i.gf = getelementptr i8, ptr %i.gb, i64 %i.el
  %wide.load180 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !7, !alias.scope !122
  %i.gg = getelementptr i8, ptr %i.gb, i64 %i.em
  %wide.load181 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !7, !alias.scope !123
  %i.gh = getelementptr i8, ptr %i.gb, i64 %i.en
  %wide.load182 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !7, !alias.scope !124
  %i.gi = getelementptr i8, ptr %i.gb, i64 %i.eo
  %wide.load183 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !7, !alias.scope !125
  %i.gj = shl nuw nsw i64 %i.ga, 3
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 %i.gj
  %i.gl = zext <4 x i8> %wide.load183 to <4 x i64>
  %i.gm = shl nuw <4 x i64> %i.gl, splat (i64 56)
  %i.gn = zext <4 x i8> %wide.load182 to <4 x i64>
  %i.go = shl nuw nsw <4 x i64> %i.gn, splat (i64 48)
  %i.gp = or disjoint <4 x i64> %i.gm, %i.go
  %i.gq = zext <4 x i8> %wide.load181 to <4 x i64>
  %i.gr = shl nuw nsw <4 x i64> %i.gq, splat (i64 40)
  %i.gs = or disjoint <4 x i64> %i.gp, %i.gr
  %i.gt = zext <4 x i8> %wide.load180 to <4 x i64>
  %i.gu = shl nuw nsw <4 x i64> %i.gt, splat (i64 32)
  %i.gv = or disjoint <4 x i64> %i.gs, %i.gu
  %i.gw = zext <4 x i8> %wide.load179 to <4 x i64>
  %i.gx = shl nuw nsw <4 x i64> %i.gw, splat (i64 24)
  %i.gy = or disjoint <4 x i64> %i.gv, %i.gx
  %i.gz = zext <4 x i8> %wide.load178 to <4 x i64>
  %i.ha = shl nuw nsw <4 x i64> %i.gz, splat (i64 16)
  %i.hb = zext <4 x i8> %wide.load177 to <4 x i64>
  %i.hc = shl nuw nsw <4 x i64> %i.hb, splat (i64 8)
  %i.hd = or disjoint <4 x i64> %i.gy, %i.ha
  %i.he = zext <4 x i8> %wide.load to <4 x i64>
  %i.hf = or <4 x i64> %i.hd, %i.hc
  %i.hg = or <4 x i64> %i.hf, %i.he
  store <4 x i64> %i.hg, ptr %i.gk, align 1, !alias.scope !126, !noalias !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hh = icmp eq i64 %index.next, %n.vec
  br i1 %i.hh, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fy, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader284

.lr.ph.preheader284:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.eh, %vector.memcheck ], [ %i.eh, %.lr.ph.preheader ], [ %i.fz, %middle.block ]
  br label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.hi = shl nsw i64 %3, 1
  %i.hj = mul nsw i64 %3, 3
  %i.hk = shl nsw i64 %3, 2
  %i.hl = mul nsw i64 %3, 5
  %i.hm = mul nsw i64 %3, 6
  %i.hn = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader284, %.lr.ph
  %.05979 = phi i64 [ %i.hy, %.lr.ph ], [ %.05979.ph, %.lr.ph.preheader284 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 8 uses
  %i.ho = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.hp = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ej
  %i.hq = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.ek
  %i.hr = load i8, ptr %gep.3, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.el
  %i.hs = load i8, ptr %gep.4, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.em
  %i.ht = load i8, ptr %gep.5, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.en
  %i.hu = load i8, ptr %gep.6, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.eo
  %i.hv = load i8, ptr %gep.7, align 1, !tbaa !7
  %i.hw = shl nuw nsw i64 %.05979, 3
  %i.hx = getelementptr inbounds nuw i8, ptr %4, i64 %i.hw
  %.sroa.10100.0.insert.ext = zext i8 %i.hv to i64
  %.sroa.10100.0.insert.shift = shl nuw i64 %.sroa.10100.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.hu to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10100.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.899.0.insert.ext = zext i8 %i.ht to i64
  %.sroa.899.0.insert.shift = shl nuw nsw i64 %.sroa.899.0.insert.ext, 40
  %.sroa.899.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.899.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.hs to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.899.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.698.0.insert.ext = zext i8 %i.hr to i64
  %.sroa.698.0.insert.shift = shl nuw nsw i64 %.sroa.698.0.insert.ext, 24
  %.sroa.698.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.698.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.hq to i64
end_hunk_1
