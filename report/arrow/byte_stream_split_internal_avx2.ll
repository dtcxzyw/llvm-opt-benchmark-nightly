Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/byte_stream_split_internal_avx2?download=true
inline.NumInlined: 97
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi2EEEvPKhilPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi4EEEvPKhilPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi8EEEvPKhilPh = comdat any

$_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !34 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 16                          ; 5 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 10 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %iter.check157, label %.preheader.i

iter.check157:                                    ; preds = %bb.b
  %i.e = sub i64 %2, %i.c                         ; 6 uses
  %min.iters.check131 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check131, label %.lr.ph.i.preheader, label %vector.memcheck132

vector.memcheck132:                               ; preds = %iter.check157
  %i.f = shl i64 %i.b, 5
  %i.g = getelementptr i8, ptr %4, i64 %i.f       ; 2 uses
  %i.h = shl i64 %2, 1
  %i.i = getelementptr i8, ptr %4, i64 %i.h       ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 %i.c
  %i.k = getelementptr i8, ptr %0, i64 %2
  %i.l = getelementptr i8, ptr %0, i64 %3
  %i.m = getelementptr i8, ptr %i.l, i64 %i.c
  %i.n = getelementptr i8, ptr %0, i64 %3
  %i.o = getelementptr i8, ptr %i.n, i64 %2
  %bound0133 = icmp ult ptr %i.g, %i.k
  %bound1134 = icmp ult ptr %i.j, %i.i
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0136 = icmp ult ptr %i.g, %i.o
  %bound1137 = icmp ult ptr %i.m, %i.i
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %found.conflict135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check140

vector.main.loop.iter.check140:                   ; preds = %vector.memcheck132
  %min.iters.check141 = icmp ult i64 %i.e, 64
  br i1 %min.iters.check141, label %vec.epilog.ph161, label %vector.ph142

vector.ph142:                                     ; preds = %vector.main.loop.iter.check140
  %i.p = and i64 %i.e, 56
  %n.vec143 = and i64 %i.e, -64                   ; 4 uses
  %i.q = add i64 %i.c, %n.vec143
  br label %vector.body144

vector.body144:                                   ; preds = %vector.ph142, %vector.body144
  %index145 = phi i64 [ 0, %vector.ph142 ], [ %index.next154, %vector.body144 ] ; 2 uses
  %i.r = add i64 %i.c, %index145                  ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r       ; 5 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %i.s, i64 32
  %i.v = getelementptr i8, ptr %i.s, i64 48
  %wide.load146 = load <16 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !35
  %wide.load147 = load <16 x i8>, ptr %i.t, align 1, !tbaa !7, !alias.scope !35
  %wide.load148 = load <16 x i8>, ptr %i.u, align 1, !tbaa !7, !alias.scope !35
  %wide.load149 = load <16 x i8>, ptr %i.v, align 1, !tbaa !7, !alias.scope !35
  %i.w = getelementptr i8, ptr %i.s, i64 %3       ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = getelementptr i8, ptr %i.w, i64 32
  %i.z = getelementptr i8, ptr %i.w, i64 48
  %wide.load150 = load <16 x i8>, ptr %i.w, align 1, !tbaa !7, !alias.scope !36
  %wide.load151 = load <16 x i8>, ptr %i.x, align 1, !tbaa !7, !alias.scope !36
  %wide.load152 = load <16 x i8>, ptr %i.y, align 1, !tbaa !7, !alias.scope !36
  %wide.load153 = load <16 x i8>, ptr %i.z, align 1, !tbaa !7, !alias.scope !36
  %i.aa = shl nsw i64 %i.r, 1
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa ; 4 uses
  %i.ac = zext <16 x i8> %wide.load150 to <16 x i16>
  %i.ad = zext <16 x i8> %wide.load151 to <16 x i16>
  %i.ae = zext <16 x i8> %wide.load152 to <16 x i16>
  %i.af = zext <16 x i8> %wide.load153 to <16 x i16>
  %i.ag = shl nuw <16 x i16> %i.ac, splat (i16 8)
  %i.ah = shl nuw <16 x i16> %i.ad, splat (i16 8)
  %i.ai = shl nuw <16 x i16> %i.ae, splat (i16 8)
  %i.aj = shl nuw <16 x i16> %i.af, splat (i16 8)
  %i.ak = zext <16 x i8> %wide.load146 to <16 x i16>
  %i.al = zext <16 x i8> %wide.load147 to <16 x i16>
  %i.am = zext <16 x i8> %wide.load148 to <16 x i16>
  %i.an = zext <16 x i8> %wide.load149 to <16 x i16>
  %i.ao = or disjoint <16 x i16> %i.ag, %i.ak
  %i.ap = or disjoint <16 x i16> %i.ah, %i.al
  %i.aq = or disjoint <16 x i16> %i.ai, %i.am
  %i.ar = or disjoint <16 x i16> %i.aj, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  store <16 x i16> %i.ao, ptr %i.ab, align 1, !alias.scope !37, !noalias !38
  store <16 x i16> %i.ap, ptr %i.as, align 1, !alias.scope !37, !noalias !38
  store <16 x i16> %i.aq, ptr %i.at, align 1, !alias.scope !37, !noalias !38
  store <16 x i16> %i.ar, ptr %i.au, align 1, !alias.scope !37, !noalias !38
  %index.next154 = add nuw i64 %index145, 64      ; 2 uses
  %i.av = icmp eq i64 %index.next154, %n.vec143
  br i1 %i.av, label %middle.block155, label %vector.body144, !llvm.loop !17

middle.block155:                                  ; preds = %vector.body144
  %cmp.n156 = icmp eq i64 %i.e, %n.vec143
  br i1 %cmp.n156, label %.preheader.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block155
  %min.epilog.iters.check160 = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check160, label %.lr.ph.i.preheader, label %vec.epilog.ph161, !prof !11

vec.epilog.ph161:                                 ; preds = %vector.main.loop.iter.check140, %vec.epilog.iter.check158
  %vec.epilog.resume.val162 = phi i64 [ %n.vec143, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check140 ]
  %i.aw = and i64 %2, 7                           ; 2 uses
  %n.vec163 = sub i64 %i.e, %i.aw                 ; 2 uses
  %i.ax = add i64 %i.c, %n.vec163
  br label %vec.epilog.vector.body164

vec.epilog.vector.body164:                        ; preds = %vec.epilog.vector.body164, %vec.epilog.ph161
  %index165 = phi i64 [ %vec.epilog.resume.val162, %vec.epilog.ph161 ], [ %index.next168, %vec.epilog.vector.body164 ] ; 2 uses
  %i.ay = add i64 %i.c, %index165                 ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 %i.ay     ; 2 uses
  %wide.load166 = load <8 x i8>, ptr %i.az, align 1, !tbaa !7, !alias.scope !35
  %i.ba = getelementptr i8, ptr %i.az, i64 %3
  %wide.load167 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !36
  %i.bb = shl nsw i64 %i.ay, 1
  %i.bc = getelementptr inbounds i8, ptr %4, i64 %i.bb
  %i.bd = zext <8 x i8> %wide.load167 to <8 x i16>
  %i.be = shl nuw <8 x i16> %i.bd, splat (i16 8)
  %i.bf = zext <8 x i8> %wide.load166 to <8 x i16>
  %i.bg = or disjoint <8 x i16> %i.be, %i.bf
  store <8 x i16> %i.bg, ptr %i.bc, align 1, !alias.scope !37, !noalias !38
  %index.next168 = add nuw i64 %index165, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.bh, label %vec.epilog.middle.block169, label %vec.epilog.vector.body164, !llvm.loop !18

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body164
  %cmp.n170 = icmp eq i64 %i.aw, 0
  br i1 %cmp.n170, label %.preheader.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check157, %vector.memcheck132, %vec.epilog.iter.check158, %vec.epilog.middle.block169
  %.05572.i.ph = phi i64 [ %i.c, %iter.check157 ], [ %i.c, %vector.memcheck132 ], [ %i.q, %vec.epilog.iter.check158 ], [ %i.ax, %vec.epilog.middle.block169 ] ; 4 uses
  %i.bi = sub i64 %2, %.05572.i.ph
  %xtraiter174 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.05572.i.prol = phi i64 [ %i.bn, %.lr.ph.i.prol ], [ %.05572.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %invariant.gep.i.prol = getelementptr i8, ptr %0, i64 %.05572.i.prol ; 2 uses
  %i.bj = load i8, ptr %invariant.gep.i.prol, align 1, !tbaa !7
  %gep.1.i.prol = getelementptr i8, ptr %invariant.gep.i.prol, i64 %3
  %i.bk = load i8, ptr %gep.1.i.prol, align 1, !tbaa !7
  %i.bl = shl nsw i64 %.05572.i.prol, 1
  %i.bm = getelementptr inbounds i8, ptr %4, i64 %i.bl
  %.sroa.482.0.insert.ext.i.prol = zext i8 %i.bk to i16
  %.sroa.482.0.insert.shift.i.prol = shl nuw i16 %.sroa.482.0.insert.ext.i.prol, 8
  %.sroa.081.0.insert.ext.i.prol = zext i8 %i.bj to i16
  %.sroa.081.0.insert.insert.i.prol = or disjoint i16 %.sroa.482.0.insert.shift.i.prol, %.sroa.081.0.insert.ext.i.prol
  store i16 %.sroa.081.0.insert.insert.i.prol, ptr %i.bm, align 1
  %i.bn = add nsw i64 %.05572.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter174
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !19

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.05572.i.unr = phi i64 [ %.05572.i.ph, %.lr.ph.i.preheader ], [ %i.bn, %.lr.ph.i.prol ]
  %i.bo = sub i64 %.05572.i.ph, %2
  %i.bp = icmp ugt i64 %i.bo, -4
  br i1 %i.bp, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block155, %vec.epilog.middle.block169, %bb.b
  %i.bq = icmp sgt i64 %2, 15
  br i1 %i.bq, label %.critedge.critedge.i.preheader, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

.critedge.critedge.i.preheader:                   ; preds = %.preheader.i
  %xtraiter176 = and i64 %i.b, 1
  %i.br = and i64 %2, 9223372036854775792
  %i.bs = icmp eq i64 %i.br, 16
  br i1 %i.bs, label %.critedge.critedge.i.epil.preheader, label %.critedge.critedge.i.preheader.new

.critedge.critedge.i.preheader.new:               ; preds = %.critedge.critedge.i.preheader
  %unroll_iter179 = and i64 %i.b, 576460752303423486
  br label %.critedge.critedge.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.05572.i = phi i64 [ %i.cm, %.lr.ph.i ], [ %.05572.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05572.i ; 2 uses
  %i.bt = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.bu = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %i.bv = shl nsw i64 %.05572.i, 1
  %i.bw = getelementptr inbounds i8, ptr %4, i64 %i.bv
  %.sroa.482.0.insert.ext.i = zext i8 %i.bu to i16
  %.sroa.482.0.insert.shift.i = shl nuw i16 %.sroa.482.0.insert.ext.i, 8
  %.sroa.081.0.insert.ext.i = zext i8 %i.bt to i16
  %.sroa.081.0.insert.insert.i = or disjoint i16 %.sroa.482.0.insert.shift.i, %.sroa.081.0.insert.ext.i
  store i16 %.sroa.081.0.insert.insert.i, ptr %i.bw, align 1
  %i.bx = add nsw i64 %.05572.i, 1                ; 2 uses
  %invariant.gep.i.1 = getelementptr i8, ptr %0, i64 %i.bx ; 2 uses
  %i.by = load i8, ptr %invariant.gep.i.1, align 1, !tbaa !7
  %gep.1.i.1 = getelementptr i8, ptr %invariant.gep.i.1, i64 %3
  %i.bz = load i8, ptr %gep.1.i.1, align 1, !tbaa !7
  %i.ca = shl nsw i64 %i.bx, 1
  %i.cb = getelementptr inbounds i8, ptr %4, i64 %i.ca
  %.sroa.482.0.insert.ext.i.1 = zext i8 %i.bz to i16
  %.sroa.482.0.insert.shift.i.1 = shl nuw i16 %.sroa.482.0.insert.ext.i.1, 8
  %.sroa.081.0.insert.ext.i.1 = zext i8 %i.by to i16
  %.sroa.081.0.insert.insert.i.1 = or disjoint i16 %.sroa.482.0.insert.shift.i.1, %.sroa.081.0.insert.ext.i.1
  store i16 %.sroa.081.0.insert.insert.i.1, ptr %i.cb, align 1
  %i.cc = add nsw i64 %.05572.i, 2                ; 2 uses
  %invariant.gep.i.2 = getelementptr i8, ptr %0, i64 %i.cc ; 2 uses
  %i.cd = load i8, ptr %invariant.gep.i.2, align 1, !tbaa !7
  %gep.1.i.2 = getelementptr i8, ptr %invariant.gep.i.2, i64 %3
  %i.ce = load i8, ptr %gep.1.i.2, align 1, !tbaa !7
  %i.cf = shl nsw i64 %i.cc, 1
  %i.cg = getelementptr inbounds i8, ptr %4, i64 %i.cf
  %.sroa.482.0.insert.ext.i.2 = zext i8 %i.ce to i16
  %.sroa.482.0.insert.shift.i.2 = shl nuw i16 %.sroa.482.0.insert.ext.i.2, 8
  %.sroa.081.0.insert.ext.i.2 = zext i8 %i.cd to i16
  %.sroa.081.0.insert.insert.i.2 = or disjoint i16 %.sroa.482.0.insert.shift.i.2, %.sroa.081.0.insert.ext.i.2
  store i16 %.sroa.081.0.insert.insert.i.2, ptr %i.cg, align 1
  %i.ch = add nsw i64 %.05572.i, 3                ; 2 uses
  %invariant.gep.i.3 = getelementptr i8, ptr %0, i64 %i.ch ; 2 uses
  %i.ci = load i8, ptr %invariant.gep.i.3, align 1, !tbaa !7
  %gep.1.i.3 = getelementptr i8, ptr %invariant.gep.i.3, i64 %3
  %i.cj = load i8, ptr %gep.1.i.3, align 1, !tbaa !7
  %i.ck = shl nsw i64 %i.ch, 1
  %i.cl = getelementptr inbounds i8, ptr %4, i64 %i.ck
  %.sroa.482.0.insert.ext.i.3 = zext i8 %i.cj to i16
  %.sroa.482.0.insert.shift.i.3 = shl nuw i16 %.sroa.482.0.insert.ext.i.3, 8
  %.sroa.081.0.insert.ext.i.3 = zext i8 %i.ci to i16
  %.sroa.081.0.insert.insert.i.3 = or disjoint i16 %.sroa.482.0.insert.shift.i.3, %.sroa.081.0.insert.ext.i.3
  store i16 %.sroa.081.0.insert.insert.i.3, ptr %i.cl, align 1
  %i.cm = add nsw i64 %.05572.i, 4                ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.cm, %2
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph.i, !llvm.loop !20

.critedge.critedge.i:                             ; preds = %.critedge.critedge.i, %.critedge.critedge.i.preheader.new
  %.05375.i = phi i64 [ 0, %.critedge.critedge.i.preheader.new ], [ %i.dg, %.critedge.critedge.i ] ; 4 uses
  %niter180 = phi i64 [ 0, %.critedge.critedge.i.preheader.new ], [ %niter180.next.1, %.critedge.critedge.i ]
  %i.cn = shl nuw nsw i64 %.05375.i, 4
  %i.co = getelementptr i8, ptr %0, i64 %i.cn     ; 2 uses
  %i.cp = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.co) ; 2 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 %3
  %i.cr = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cq) ; 2 uses
  %i.cs = shufflevector <16 x i8> %i.cp, <16 x i8> %i.cr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ct = shufflevector <16 x i8> %i.cp, <16 x i8> %i.cr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.cu = shl nuw i64 %.05375.i, 5
  %i.cv = getelementptr i8, ptr %4, i64 %i.cu     ; 2 uses
  store <16 x i8> %i.cs, ptr %i.cv, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <16 x i8> %i.ct, ptr %.sroa.8.32..sroa_idx.i, align 1, !tbaa !7
  %i.cw = or disjoint i64 %.05375.i, 1            ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = getelementptr i8, ptr %0, i64 %i.cx     ; 2 uses
  %i.cz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cy) ; 2 uses
  %i.da = getelementptr i8, ptr %i.cy, i64 %3
  %i.db = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.da) ; 2 uses
  %i.dc = shufflevector <16 x i8> %i.cz, <16 x i8> %i.db, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dd = shufflevector <16 x i8> %i.cz, <16 x i8> %i.db, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.de = shl nuw i64 %i.cw, 5
  %i.df = getelementptr i8, ptr %4, i64 %i.de     ; 2 uses
  store <16 x i8> %i.dc, ptr %i.df, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <16 x i8> %i.dd, ptr %.sroa.8.32..sroa_idx.i.1, align 1, !tbaa !7
  %i.dg = add nuw nsw i64 %.05375.i, 2            ; 2 uses
  %niter180.next.1 = add i64 %niter180, 2         ; 2 uses
  %niter180.ncmp.1 = icmp eq i64 %niter180.next.1, %unroll_iter179
  br i1 %niter180.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, label %.critedge.critedge.i, !llvm.loop !21

bb.c:                                             ; preds = %bb.a
  %i.dh = lshr i64 %2, 5                          ; 4 uses
  %i.di = and i64 %2, 9223372036854775776         ; 12 uses
  %.not = icmp eq i64 %i.di, %2
  br i1 %.not, label %.critedge.critedge.preheader, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.dj = or disjoint i64 %i.di, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.dj) ; 2 uses
  %i.dk = sub nsw i64 %smax, %i.di                ; 6 uses
  %min.iters.check = icmp ult i64 %i.dk, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dl = shl nuw i64 %i.dh, 6
  %i.dm = getelementptr i8, ptr %4, i64 %i.dl     ; 2 uses
  %i.dn = or disjoint i64 %i.di, 1
  %i.do = tail call i64 @llvm.smax.i64(i64 %2, i64 %i.dn) ; 3 uses
  %i.dp = shl nuw i64 %i.do, 1
  %i.dq = getelementptr i8, ptr %4, i64 %i.dp     ; 2 uses
  %i.dr = getelementptr i8, ptr %0, i64 %i.di
  %i.ds = getelementptr i8, ptr %0, i64 %i.do
  %i.dt = getelementptr i8, ptr %0, i64 %3
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.di
  %i.dv = getelementptr i8, ptr %0, i64 %3
  %i.dw = getelementptr i8, ptr %i.dv, i64 %i.do
  %bound0 = icmp ult ptr %i.dm, %i.ds
  %bound1 = icmp ult ptr %i.dr, %i.dq
  %found.conflict = and i1 %bound0, %bound1
  %bound0101 = icmp ult ptr %i.dm, %i.dw
  %bound1102 = icmp ult ptr %i.du, %i.dq
  %found.conflict103 = and i1 %bound0101, %bound1102
  %conflict.rdx = or i1 %found.conflict, %found.conflict103
  br i1 %conflict.rdx, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check104 = icmp ult i64 %i.dk, 64
  br i1 %min.iters.check104, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dx = and i64 %i.dk, 56
  %n.vec = and i64 %i.dk, -64                     ; 4 uses
  %i.dy = add i64 %i.di, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = add nuw i64 %i.di, %index               ; 2 uses
  %i.ea = getelementptr i8, ptr %0, i64 %i.dz     ; 5 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 16
  %i.ec = getelementptr i8, ptr %i.ea, i64 32
  %i.ed = getelementptr i8, ptr %i.ea, i64 48
  %wide.load = load <16 x i8>, ptr %i.ea, align 1, !tbaa !7, !alias.scope !39
  %wide.load105 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !7, !alias.scope !39
  %wide.load106 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !7, !alias.scope !39
  %wide.load107 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !7, !alias.scope !39
  %i.ee = getelementptr i8, ptr %i.ea, i64 %3     ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = getelementptr i8, ptr %i.ee, i64 32
  %i.eh = getelementptr i8, ptr %i.ee, i64 48
  %wide.load108 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !7, !alias.scope !40
  %wide.load109 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !7, !alias.scope !40
  %wide.load110 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !7, !alias.scope !40
  %wide.load111 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !7, !alias.scope !40
  %i.ei = shl nuw nsw i64 %i.dz, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 %i.ei ; 4 uses
  %i.ek = zext <16 x i8> %wide.load108 to <16 x i16>
  %i.el = zext <16 x i8> %wide.load109 to <16 x i16>
  %i.em = zext <16 x i8> %wide.load110 to <16 x i16>
  %i.en = zext <16 x i8> %wide.load111 to <16 x i16>
  %i.eo = shl nuw <16 x i16> %i.ek, splat (i16 8)
  %i.ep = shl nuw <16 x i16> %i.el, splat (i16 8)
  %i.eq = shl nuw <16 x i16> %i.em, splat (i16 8)
  %i.er = shl nuw <16 x i16> %i.en, splat (i16 8)
  %i.es = zext <16 x i8> %wide.load to <16 x i16>
  %i.et = zext <16 x i8> %wide.load105 to <16 x i16>
  %i.eu = zext <16 x i8> %wide.load106 to <16 x i16>
  %i.ev = zext <16 x i8> %wide.load107 to <16 x i16>
  %i.ew = or disjoint <16 x i16> %i.eo, %i.es
  %i.ex = or disjoint <16 x i16> %i.ep, %i.et
  %i.ey = or disjoint <16 x i16> %i.eq, %i.eu
  %i.ez = or disjoint <16 x i16> %i.er, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  store <16 x i16> %i.ew, ptr %i.ej, align 1, !alias.scope !41, !noalias !42
  store <16 x i16> %i.ex, ptr %i.fa, align 1, !alias.scope !41, !noalias !42
  store <16 x i16> %i.ey, ptr %i.fb, align 1, !alias.scope !41, !noalias !42
  store <16 x i16> %i.ez, ptr %i.fc, align 1, !alias.scope !41, !noalias !42
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.critedge.critedge.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.fe = and i64 %smax, 7                        ; 2 uses
  %n.vec112 = sub i64 %i.dk, %i.fe                ; 2 uses
  %i.ff = add i64 %i.di, %n.vec112
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index113 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next116, %vec.epilog.vector.body ] ; 2 uses
  %i.fg = add nuw i64 %i.di, %index113            ; 2 uses
  %i.fh = getelementptr i8, ptr %0, i64 %i.fg     ; 2 uses
  %wide.load114 = load <8 x i8>, ptr %i.fh, align 1, !tbaa !7, !alias.scope !39
  %i.fi = getelementptr i8, ptr %i.fh, i64 %3
  %wide.load115 = load <8 x i8>, ptr %i.fi, align 1, !tbaa !7, !alias.scope !40
  %i.fj = shl nuw nsw i64 %i.fg, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %4, i64 %i.fj
  %i.fl = zext <8 x i8> %wide.load115 to <8 x i16>
  %i.fm = shl nuw <8 x i16> %i.fl, splat (i16 8)
  %i.fn = zext <8 x i8> %wide.load114 to <8 x i16>
  %i.fo = or disjoint <8 x i16> %i.fm, %i.fn
  store <8 x i16> %i.fo, ptr %i.fk, align 1, !alias.scope !41, !noalias !42
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n117 = icmp eq i64 %i.fe, 0
  br i1 %cmp.n117, label %.critedge.critedge.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05977.ph = phi i64 [ %i.di, %iter.check ], [ %i.di, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ff, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.05977 = phi i64 [ %i.fu, %.lr.ph ], [ %.05977.ph, %.lr.ph.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05977 ; 2 uses
  %i.fq = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.fr = load i8, ptr %gep.1, align 1, !tbaa !7
  %i.fs = shl nuw nsw i64 %.05977, 1
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 %i.fs
  %.sroa.487.0.insert.ext = zext i8 %i.fr to i16
  %.sroa.487.0.insert.shift = shl nuw i16 %.sroa.487.0.insert.ext, 8
  %.sroa.086.0.insert.ext = zext i8 %i.fq to i16
  %.sroa.086.0.insert.insert = or disjoint i16 %.sroa.487.0.insert.shift, %.sroa.086.0.insert.ext
  store i16 %.sroa.086.0.insert.insert, ptr %i.ft, align 1
  %i.fu = add nuw nsw i64 %.05977, 1              ; 2 uses
  %i.fv = icmp slt i64 %i.fu, %2
  br i1 %i.fv, label %.lr.ph, label %.critedge.critedge.preheader, !llvm.loop !28

.critedge.critedge.preheader:                     ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.fw = icmp eq i64 %i.dh, 1
  br i1 %i.fw, label %.critedge.critedge.epil.preheader, label %.critedge.critedge.preheader.new

.critedge.critedge.preheader.new:                 ; preds = %.critedge.critedge.preheader
  %unroll_iter = and i64 %i.dh, 288230376151711742
  br label %.critedge.critedge

.critedge.critedge:                               ; preds = %.critedge.critedge, %.critedge.critedge.preheader.new
  %.05780 = phi i64 [ 0, %.critedge.critedge.preheader.new ], [ %i.gy, %.critedge.critedge ] ; 4 uses
  %niter = phi i64 [ 0, %.critedge.critedge.preheader.new ], [ %niter.next.1, %.critedge.critedge ]
  %i.fx = shl nuw nsw i64 %.05780, 5
  %i.fy = getelementptr i8, ptr %0, i64 %i.fx     ; 2 uses
  %i.fz = load <32 x i8>, ptr %i.fy, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 %3
  %i.gb = load <32 x i8>, ptr %i.ga, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.gc = shufflevector <32 x i8> %i.fz, <32 x i8> %i.gb, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gd = shufflevector <32 x i8> %i.fz, <32 x i8> %i.gb, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ge = shufflevector <32 x i8> %i.gc, <32 x i8> %i.gd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gf = bitcast <32 x i8> %i.gc to <8 x i32>
  %i.gg = bitcast <32 x i8> %i.gd to <8 x i32>
  %i.gh = shufflevector <8 x i32> %i.gf, <8 x i32> %i.gg, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gi = shl i64 %.05780, 6
  %i.gj = getelementptr i8, ptr %4, i64 %i.gi     ; 2 uses
  store <32 x i8> %i.ge, ptr %i.gj, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store <8 x i32> %i.gh, ptr %.sroa.8.64..sroa_idx, align 1, !tbaa !7
  %i.gk = or disjoint i64 %.05780, 1              ; 2 uses
  %i.gl = shl nuw nsw i64 %i.gk, 5
  %i.gm = getelementptr i8, ptr %0, i64 %i.gl     ; 2 uses
  %i.gn = load <32 x i8>, ptr %i.gm, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gm, i64 %3
  %i.gp = load <32 x i8>, ptr %i.go, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.gq = shufflevector <32 x i8> %i.gn, <32 x i8> %i.gp, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gr = shufflevector <32 x i8> %i.gn, <32 x i8> %i.gp, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gs = shufflevector <32 x i8> %i.gq, <32 x i8> %i.gr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gt = bitcast <32 x i8> %i.gq to <8 x i32>
  %i.gu = bitcast <32 x i8> %i.gr to <8 x i32>
  %i.gv = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gw = shl i64 %i.gk, 6
  %i.gx = getelementptr i8, ptr %4, i64 %i.gw     ; 2 uses
  store <32 x i8> %i.gs, ptr %i.gx, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  store <8 x i32> %i.gv, ptr %.sroa.8.64..sroa_idx.1, align 1, !tbaa !7
  %i.gy = add nuw nsw i64 %.05780, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit172.unr-lcssa, label %.critedge.critedge, !llvm.loop !33

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa: ; preds = %.critedge.critedge.i
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.critedge.critedge.i.epil.preheader

.critedge.critedge.i.epil.preheader:              ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.critedge.critedge.i.preheader
  %.05375.i.epil.init = phi i64 [ 0, %.critedge.critedge.i.preheader ], [ %i.dg, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod178 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod178)
  %i.gz = shl nuw nsw i64 %.05375.i.epil.init, 4
  %i.ha = getelementptr i8, ptr %0, i64 %i.gz     ; 2 uses
  %i.hb = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ha) ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 %3
  %i.hd = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.hc) ; 2 uses
  %i.he = shufflevector <16 x i8> %i.hb, <16 x i8> %i.hd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.hf = shufflevector <16 x i8> %i.hb, <16 x i8> %i.hd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.hg = shl nuw i64 %.05375.i.epil.init, 5
  %i.hh = getelementptr i8, ptr %4, i64 %i.hg     ; 2 uses
  store <16 x i8> %i.he, ptr %i.hh, align 1, !tbaa !7
  %.sroa.8.32..sroa_idx.i.epil = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <16 x i8> %i.hf, ptr %.sroa.8.32..sroa_idx.i.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit172.unr-lcssa: ; preds = %.critedge.critedge
  %i.hi = and i64 %2, 32
  %lcmp.mod.not = icmp eq i64 %i.hi, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.critedge.critedge.epil.preheader

.critedge.critedge.epil.preheader:                ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit172.unr-lcssa, %.critedge.critedge.preheader
  %.05780.epil.init = phi i64 [ 0, %.critedge.critedge.preheader ], [ %i.gy, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit172.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i64 %i.dh to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.hj = shl nuw nsw i64 %.05780.epil.init, 5
  %i.hk = getelementptr i8, ptr %0, i64 %i.hj     ; 2 uses
  %i.hl = load <32 x i8>, ptr %i.hk, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 %3
  %i.hn = load <32 x i8>, ptr %i.hm, align 1, !tbaa !7, !noalias !43 ; 2 uses
  %i.ho = shufflevector <32 x i8> %i.hl, <32 x i8> %i.hn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.hp = shufflevector <32 x i8> %i.hl, <32 x i8> %i.hn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.hq = shufflevector <32 x i8> %i.ho, <32 x i8> %i.hp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.hr = bitcast <32 x i8> %i.ho to <8 x i32>
  %i.hs = bitcast <32 x i8> %i.hp to <8 x i32>
  %i.ht = shufflevector <8 x i32> %i.hr, <8 x i32> %i.hs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.hu = shl i64 %.05780.epil.init, 6
  %i.hv = getelementptr i8, ptr %4, i64 %i.hu     ; 2 uses
  store <32 x i8> %i.hq, ptr %i.hv, align 1, !tbaa !7
  %.sroa.8.64..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  store <8 x i32> %i.ht, ptr %.sroa.8.64..sroa_idx.epil, align 1, !tbaa !7
  br label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit: ; preds = %.critedge.critedge.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit172.unr-lcssa, %.critedge.critedge.i.epil.preheader, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit.unr-lcssa, %.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi4EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !66 {
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
  %i.m = getelementptr i8, ptr %0, i64 %2
  %i.n = getelementptr i8, ptr %0, i64 %3
  %i.o = getelementptr i8, ptr %i.n, i64 %i.c
  %i.p = getelementptr i8, ptr %0, i64 %3
  %i.q = getelementptr i8, ptr %i.p, i64 %2
  %i.r = getelementptr i8, ptr %0, i64 %i.c
  %i.s = getelementptr i8, ptr %i.r, i64 %i.e
  %i.t = getelementptr i8, ptr %0, i64 %2
  %i.u = getelementptr i8, ptr %i.t, i64 %i.e
  %i.v = getelementptr i8, ptr %0, i64 %i.c
  %i.w = getelementptr i8, ptr %i.v, i64 %i.f
  %i.x = getelementptr i8, ptr %0, i64 %2
  %i.y = getelementptr i8, ptr %i.x, i64 %i.f
  %bound0164 = icmp ult ptr %i.i, %i.m
  %bound1165 = icmp ult ptr %i.l, %i.k
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0167 = icmp ult ptr %i.i, %i.q
  %bound1168 = icmp ult ptr %i.o, %i.k
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %found.conflict166, %found.conflict169
  %bound0171 = icmp ult ptr %i.i, %i.u
  %bound1172 = icmp ult ptr %i.s, %i.k
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %i.i, %i.y
  %bound1176 = icmp ult ptr %i.w, %i.k
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
  %wide.load183 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !7, !alias.scope !67
  %i.ad = getelementptr i8, ptr %i.ac, i64 %3
  %wide.load184 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !7, !alias.scope !68
  %i.ae = getelementptr i8, ptr %i.ac, i64 %i.e
  %wide.load185 = load <8 x i8>, ptr %i.ae, align 1, !tbaa !7, !alias.scope !69
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.f
  %wide.load186 = load <8 x i8>, ptr %i.af, align 1, !tbaa !7, !alias.scope !70
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
  store <8 x i32> %i.ar, ptr %i.ah, align 1, !alias.scope !71, !noalias !72
  %index.next187 = add nuw i64 %index182, 8       ; 2 uses
  %i.as = icmp eq i64 %index.next187, %n.vec180
  br i1 %i.as, label %middle.block188, label %vector.body181, !llvm.loop !50

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
  br i1 %exitcond.not.i.1, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !51

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.cm, %.preheader.preheader.i ] ; 3 uses
  %i.bt = shl nuw nsw i64 %.05379.i, 4
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt     ; 4 uses
  %i.bv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bu) ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 %3
  %i.bx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.bw) ; 2 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 %i.bd
  %i.bz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.by) ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bu, i64 %i.be
  %i.cb = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.ca) ; 2 uses
  %i.cc = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cd = shufflevector <16 x i8> %i.bv, <16 x i8> %i.bz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ce = shufflevector <16 x i8> %i.bx, <16 x i8> %i.cb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.cf = shufflevector <16 x i8> %i.bx, <16 x i8> %i.cb, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cg = shufflevector <16 x i8> %i.cc, <16 x i8> %i.ce, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ch = shufflevector <16 x i8> %i.cc, <16 x i8> %i.ce, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ci = shufflevector <16 x i8> %i.cd, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cj = shufflevector <16 x i8> %i.cd, <16 x i8> %i.cf, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ck = shl i64 %.05379.i, 6
  %i.cl = getelementptr i8, ptr %4, i64 %i.ck     ; 4 uses
  store <16 x i8> %i.cg, ptr %i.cl, align 1, !tbaa !7
  %.sroa.20.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <16 x i8> %i.ch, ptr %.sroa.20.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.21.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store <16 x i8> %i.ci, ptr %.sroa.21.128..sroa_idx.i, align 1, !tbaa !7
  %.sroa.22.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store <16 x i8> %i.cj, ptr %.sroa.22.128..sroa_idx.i, align 1, !tbaa !7
  %i.cm = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.cm, %i.b
  br i1 %exitcond87.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !52

bb.c:                                             ; preds = %bb.a
  %i.cn = lshr i64 %2, 5
  %i.co = and i64 %i.cn, 144115188075855871       ; 4 uses
  %i.cp = shl nuw nsw i64 %i.co, 5                ; 10 uses
  %i.cq = icmp samesign ult i64 %i.cp, %2
  br i1 %i.cq, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.cr = shl nsw i64 %3, 1                       ; 6 uses
  %i.cs = mul nsw i64 %3, 3                       ; 6 uses
  %i.ct = sub nuw nsw i64 %2, %i.cp               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ct, 24
  br i1 %min.iters.check, label %.lr.ph.preheader192, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.cu = shl nuw i64 %i.co, 7
  %i.cv = getelementptr i8, ptr %4, i64 %i.cu     ; 4 uses
  %i.cw = shl i64 %2, 2
  %i.cx = getelementptr i8, ptr %4, i64 %i.cw     ; 4 uses
  %i.cy = getelementptr i8, ptr %0, i64 %i.cp
  %i.cz = getelementptr i8, ptr %0, i64 %2
  %i.da = getelementptr i8, ptr %0, i64 %3
  %i.db = getelementptr i8, ptr %i.da, i64 %i.cp
  %i.dc = getelementptr i8, ptr %0, i64 %3
  %i.dd = getelementptr i8, ptr %i.dc, i64 %2
  %i.de = getelementptr i8, ptr %0, i64 %i.cp
  %i.df = getelementptr i8, ptr %i.de, i64 %i.cr
  %i.dg = getelementptr i8, ptr %0, i64 %2
  %i.dh = getelementptr i8, ptr %i.dg, i64 %i.cr
  %i.di = getelementptr i8, ptr %0, i64 %i.cp
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.cs
  %i.dk = getelementptr i8, ptr %0, i64 %2
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.cs
  %bound0 = icmp ult ptr %i.cv, %i.cz
  %bound1 = icmp ult ptr %i.cy, %i.cx
  %found.conflict = and i1 %bound0, %bound1
  %bound0122 = icmp ult ptr %i.cv, %i.dd
  %bound1123 = icmp ult ptr %i.db, %i.cx
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx = or i1 %found.conflict, %found.conflict124
  %bound0125 = icmp ult ptr %i.cv, %i.dh
  %bound1126 = icmp ult ptr %i.df, %i.cx
  %found.conflict127 = and i1 %bound0125, %bound1126
  %conflict.rdx128 = or i1 %conflict.rdx, %found.conflict127
  %bound0129 = icmp ult ptr %i.cv, %i.dl
  %bound1130 = icmp ult ptr %i.dj, %i.cx
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx128, %found.conflict131
  br i1 %conflict.rdx132, label %.lr.ph.preheader192, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.dm = and i64 %2, 7                           ; 2 uses
  %n.vec = sub nsw i64 %i.ct, %i.dm               ; 2 uses
  %i.dn = add i64 %i.cp, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.do = add nuw i64 %i.cp, %index               ; 2 uses
  %i.dp = getelementptr i8, ptr %0, i64 %i.do     ; 4 uses
  %wide.load = load <8 x i8>, ptr %i.dp, align 1, !tbaa !7, !alias.scope !73
  %i.dq = getelementptr i8, ptr %i.dp, i64 %3
  %wide.load133 = load <8 x i8>, ptr %i.dq, align 1, !tbaa !7, !alias.scope !74
  %i.dr = getelementptr i8, ptr %i.dp, i64 %i.cr
  %wide.load134 = load <8 x i8>, ptr %i.dr, align 1, !tbaa !7, !alias.scope !75
  %i.ds = getelementptr i8, ptr %i.dp, i64 %i.cs
  %wide.load135 = load <8 x i8>, ptr %i.ds, align 1, !tbaa !7, !alias.scope !76
  %i.dt = shl nuw nsw i64 %i.do, 2
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 %i.dt
  %i.dv = zext <8 x i8> %wide.load135 to <8 x i32>
  %i.dw = shl nuw <8 x i32> %i.dv, splat (i32 24)
  %i.dx = zext <8 x i8> %wide.load134 to <8 x i32>
  %i.dy = shl nuw nsw <8 x i32> %i.dx, splat (i32 16)
  %i.dz = or disjoint <8 x i32> %i.dw, %i.dy
  %i.ea = zext <8 x i8> %wide.load133 to <8 x i32>
  %i.eb = shl nuw nsw <8 x i32> %i.ea, splat (i32 8)
  %i.ec = or disjoint <8 x i32> %i.dz, %i.eb
  %i.ed = zext <8 x i8> %wide.load to <8 x i32>
  %i.ee = or disjoint <8 x i32> %i.ec, %i.ed
  store <8 x i32> %i.ee, ptr %i.du, align 1, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader192

.lr.ph.preheader192:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.preheader ], [ %i.dn, %middle.block ] ; 6 uses
  %i.eg = sub i64 %2, %.05979.ph
  %.neg = add i64 %.05979.ph, 1
  %xtraiter = and i64 %i.eg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader192
  %invariant.gep.prol = getelementptr i8, ptr %0, i64 %.05979.ph ; 4 uses
  %i.eh = load i8, ptr %invariant.gep.prol, align 1, !tbaa !7
  %gep.1.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %3
  %i.ei = load i8, ptr %gep.1.prol, align 1, !tbaa !7
  %gep.2.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cr
  %i.ej = load i8, ptr %gep.2.prol, align 1, !tbaa !7
  %gep.3.prol = getelementptr i8, ptr %invariant.gep.prol, i64 %i.cs
  %i.ek = load i8, ptr %gep.3.prol, align 1, !tbaa !7
  %i.el = shl nuw nsw i64 %.05979.ph, 2
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 %i.el
  %.sroa.696.0.insert.ext.prol = zext i8 %i.ek to i32
  %.sroa.696.0.insert.shift.prol = shl nuw i32 %.sroa.696.0.insert.ext.prol, 24
  %.sroa.5.0.insert.ext.prol = zext i8 %i.ej to i32
  %.sroa.5.0.insert.shift.prol = shl nuw nsw i32 %.sroa.5.0.insert.ext.prol, 16
  %.sroa.5.0.insert.insert.prol = or disjoint i32 %.sroa.696.0.insert.shift.prol, %.sroa.5.0.insert.shift.prol
  %.sroa.495.0.insert.ext.prol = zext i8 %i.ei to i32
  %.sroa.495.0.insert.shift.prol = shl nuw nsw i32 %.sroa.495.0.insert.ext.prol, 8
  %.sroa.495.0.insert.insert.prol = or disjoint i32 %.sroa.5.0.insert.insert.prol, %.sroa.495.0.insert.shift.prol
  %.sroa.094.0.insert.ext.prol = zext i8 %i.eh to i32
  %.sroa.094.0.insert.insert.prol = or disjoint i32 %.sroa.495.0.insert.insert.prol, %.sroa.094.0.insert.ext.prol
  store i32 %.sroa.094.0.insert.insert.prol, ptr %i.em, align 1
  %i.en = add nuw nsw i64 %.05979.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader192
  %.05979.unr = phi i64 [ %.05979.ph, %.lr.ph.preheader192 ], [ %i.en, %.lr.ph.prol ]
  %i.eo = icmp eq i64 %2, %.neg
  br i1 %i.eo, label %.preheader76, label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.ep = shl nsw i64 %3, 1
  %i.eq = mul nsw i64 %3, 3
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05979 = phi i64 [ %i.fe, %.lr.ph ], [ %.05979.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 4 uses
  %i.er = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.es = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.cr
  %i.et = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.cs
  %i.eu = load i8, ptr %gep.3, align 1, !tbaa !7
  %i.ev = shl nuw nsw i64 %.05979, 2
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 %i.ev
  %.sroa.696.0.insert.ext = zext i8 %i.eu to i32
  %.sroa.696.0.insert.shift = shl nuw i32 %.sroa.696.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.et to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.696.0.insert.shift, %.sroa.5.0.insert.shift
  %.sroa.495.0.insert.ext = zext i8 %i.es to i32
  %.sroa.495.0.insert.shift = shl nuw nsw i32 %.sroa.495.0.insert.ext, 8
  %.sroa.495.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.495.0.insert.shift
  %.sroa.094.0.insert.ext = zext i8 %i.er to i32
  %.sroa.094.0.insert.insert = or disjoint i32 %.sroa.495.0.insert.insert, %.sroa.094.0.insert.ext
  store i32 %.sroa.094.0.insert.insert, ptr %i.ew, align 1
  %i.ex = add nuw nsw i64 %.05979, 1              ; 2 uses
  %invariant.gep.1 = getelementptr i8, ptr %0, i64 %i.ex ; 4 uses
  %i.ey = load i8, ptr %invariant.gep.1, align 1, !tbaa !7
  %gep.1.1 = getelementptr i8, ptr %invariant.gep.1, i64 %3
  %i.ez = load i8, ptr %gep.1.1, align 1, !tbaa !7
  %gep.2.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cr
  %i.fa = load i8, ptr %gep.2.1, align 1, !tbaa !7
  %gep.3.1 = getelementptr i8, ptr %invariant.gep.1, i64 %i.cs
  %i.fb = load i8, ptr %gep.3.1, align 1, !tbaa !7
  %i.fc = shl nuw nsw i64 %i.ex, 2
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 %i.fc
  %.sroa.696.0.insert.ext.1 = zext i8 %i.fb to i32
  %.sroa.696.0.insert.shift.1 = shl nuw i32 %.sroa.696.0.insert.ext.1, 24
  %.sroa.5.0.insert.ext.1 = zext i8 %i.fa to i32
  %.sroa.5.0.insert.shift.1 = shl nuw nsw i32 %.sroa.5.0.insert.ext.1, 16
  %.sroa.5.0.insert.insert.1 = or disjoint i32 %.sroa.696.0.insert.shift.1, %.sroa.5.0.insert.shift.1
  %.sroa.495.0.insert.ext.1 = zext i8 %i.ez to i32
  %.sroa.495.0.insert.shift.1 = shl nuw nsw i32 %.sroa.495.0.insert.ext.1, 8
  %.sroa.495.0.insert.insert.1 = or disjoint i32 %.sroa.5.0.insert.insert.1, %.sroa.495.0.insert.shift.1
  %.sroa.094.0.insert.ext.1 = zext i8 %i.ey to i32
  %.sroa.094.0.insert.insert.1 = or disjoint i32 %.sroa.495.0.insert.insert.1, %.sroa.094.0.insert.ext.1
  store i32 %.sroa.094.0.insert.insert.1, ptr %i.fd, align 1
  %i.fe = add nuw nsw i64 %.05979, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.fe, %2
  br i1 %exitcond.not.1, label %.preheader76, label %.lr.ph, !llvm.loop !60

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.gq, %.preheader.preheader ] ; 3 uses
  %i.ff = shl nuw nsw i64 %.05784, 5
  %i.fg = getelementptr i8, ptr %0, i64 %i.ff     ; 4 uses
  %i.fh = load <32 x i8>, ptr %i.fg, align 1, !tbaa !7, !noalias !79 ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fg, i64 %3
  %i.fj = load <32 x i8>, ptr %i.fi, align 1, !tbaa !7, !noalias !79 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fg, i64 %i.ep
  %i.fl = load <32 x i8>, ptr %i.fk, align 1, !tbaa !7, !noalias !79 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fg, i64 %i.eq
  %i.fn = load <32 x i8>, ptr %i.fm, align 1, !tbaa !7, !noalias !79 ; 2 uses
  %i.fo = shufflevector <32 x i8> %i.fh, <32 x i8> %i.fl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fp = shufflevector <32 x i8> %i.fh, <32 x i8> %i.fl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fq = shufflevector <32 x i8> %i.fo, <32 x i8> %i.fp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fr = bitcast <32 x i8> %i.fo to <8 x i32>
  %i.fs = bitcast <32 x i8> %i.fp to <8 x i32>
  %i.ft = shufflevector <8 x i32> %i.fr, <8 x i32> %i.fs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.fu = shufflevector <32 x i8> %i.fj, <32 x i8> %i.fn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.fv = shufflevector <32 x i8> %i.fj, <32 x i8> %i.fn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.fw = shufflevector <32 x i8> %i.fu, <32 x i8> %i.fv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.fx = bitcast <32 x i8> %i.fu to <8 x i32>
  %i.fy = bitcast <32 x i8> %i.fv to <8 x i32>
  %i.fz = shufflevector <8 x i32> %i.fx, <8 x i32> %i.fy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ga = shufflevector <32 x i8> %i.fq, <32 x i8> %i.fw, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gb = shufflevector <32 x i8> %i.fq, <32 x i8> %i.fw, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gc = shufflevector <32 x i8> %i.ga, <32 x i8> %i.gb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gd = bitcast <32 x i8> %i.ga to <8 x i32>
  %i.ge = bitcast <32 x i8> %i.gb to <8 x i32>
  %i.gf = shufflevector <8 x i32> %i.gd, <8 x i32> %i.ge, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.gg = bitcast <8 x i32> %i.ft to <32 x i8>    ; 2 uses
  %i.gh = bitcast <8 x i32> %i.fz to <32 x i8>    ; 2 uses
  %i.gi = shufflevector <32 x i8> %i.gg, <32 x i8> %i.gh, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gj = shufflevector <32 x i8> %i.gg, <32 x i8> %i.gh, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gk = shufflevector <32 x i8> %i.gi, <32 x i8> %i.gj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gl = bitcast <32 x i8> %i.gi to <8 x i32>
  %i.gm = bitcast <32 x i8> %i.gj to <8 x i32>
  %i.gn = shufflevector <8 x i32> %i.gl, <8 x i32> %i.gm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.go = shl nuw i64 %.05784, 7
  %i.gp = getelementptr i8, ptr %4, i64 %i.go     ; 4 uses
  store <32 x i8> %i.gc, ptr %i.gp, align 1, !tbaa !7
  %.sroa.20.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store <8 x i32> %i.gf, ptr %.sroa.20.256..sroa_idx, align 1, !tbaa !7
  %.sroa.21.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 64
  store <32 x i8> %i.gk, ptr %.sroa.21.256..sroa_idx, align 1, !tbaa !7
  %.sroa.22.256..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 96
  store <8 x i32> %i.gn, ptr %.sroa.22.256..sroa_idx, align 1, !tbaa !7
  %i.gq = add nuw nsw i64 %.05784, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.gq, %i.co
  br i1 %exitcond93.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit, label %.preheader.preheader, !llvm.loop !65

_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi4EEEvPKhillPh.exit: ; preds = %.preheader.preheader, %.preheader.preheader.i, %.preheader76, %.preheader72.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi8EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !guid !110 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 16                          ; 3 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 14 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %.lr.ph.preheader.i, label %.preheader72.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = shl nsw i64 %3, 1                        ; 4 uses
  %i.f = mul nsw i64 %3, 3                        ; 4 uses
  %i.g = shl nsw i64 %3, 2                        ; 4 uses
  %i.h = mul nsw i64 %3, 5                        ; 4 uses
  %i.i = mul nsw i64 %3, 6                        ; 4 uses
  %i.j = mul nsw i64 %3, 7                        ; 4 uses
  %i.k = sub i64 %2, %i.c                         ; 2 uses
  %min.iters.check234 = icmp ult i64 %i.k, 20
  br i1 %min.iters.check234, label %.lr.ph.i.preheader, label %vector.memcheck235

vector.memcheck235:                               ; preds = %.lr.ph.preheader.i
  %i.l = shl i64 %i.b, 7
  %i.m = getelementptr i8, ptr %4, i64 %i.l       ; 8 uses
  %i.n = shl i64 %2, 3
  %i.o = getelementptr i8, ptr %4, i64 %i.n       ; 8 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.c
  %i.q = getelementptr i8, ptr %0, i64 %2
  %i.r = getelementptr i8, ptr %0, i64 %3
  %i.s = getelementptr i8, ptr %i.r, i64 %i.c
  %i.t = getelementptr i8, ptr %0, i64 %3
  %i.u = getelementptr i8, ptr %i.t, i64 %2
  %i.v = getelementptr i8, ptr %0, i64 %i.c
  %i.w = getelementptr i8, ptr %i.v, i64 %i.e
  %i.x = getelementptr i8, ptr %0, i64 %2
  %i.y = getelementptr i8, ptr %i.x, i64 %i.e
  %i.z = getelementptr i8, ptr %0, i64 %i.c
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.f
  %i.ab = getelementptr i8, ptr %0, i64 %2
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %0, i64 %i.c
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.g
  %i.af = getelementptr i8, ptr %0, i64 %2
  %i.ag = getelementptr i8, ptr %i.af, i64 %i.g
  %i.ah = getelementptr i8, ptr %0, i64 %i.c
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.h
  %i.aj = getelementptr i8, ptr %0, i64 %2
  %i.ak = getelementptr i8, ptr %i.aj, i64 %i.h
  %i.al = getelementptr i8, ptr %0, i64 %i.c
  %i.am = getelementptr i8, ptr %i.al, i64 %i.i
  %i.an = getelementptr i8, ptr %0, i64 %2
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.i
  %i.ap = getelementptr i8, ptr %0, i64 %i.c
  %5 = getelementptr i8, ptr %i.ap, i64 %i.j
  %i.aq = getelementptr i8, ptr %0, i64 %2
  %6 = getelementptr i8, ptr %i.aq, i64 %i.j
  %bound0236 = icmp ult ptr %i.m, %i.q
  %bound1237 = icmp ult ptr %i.p, %i.o
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult ptr %i.m, %i.u
  %bound1240 = icmp ult ptr %i.s, %i.o
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  %bound0243 = icmp ult ptr %i.m, %i.y
  %bound1244 = icmp ult ptr %i.w, %i.o
  %found.conflict245 = and i1 %bound0243, %bound1244
  %conflict.rdx246 = or i1 %conflict.rdx242, %found.conflict245
  %bound0247 = icmp ult ptr %i.m, %i.ac
  %bound1248 = icmp ult ptr %i.aa, %i.o
  %found.conflict249 = and i1 %bound0247, %bound1248
  %conflict.rdx250 = or i1 %conflict.rdx246, %found.conflict249
  %bound0251 = icmp ult ptr %i.m, %i.ag
  %bound1252 = icmp ult ptr %i.ae, %i.o
  %found.conflict253 = and i1 %bound0251, %bound1252
  %conflict.rdx254 = or i1 %conflict.rdx250, %found.conflict253
  %bound0255 = icmp ult ptr %i.m, %i.ak
  %bound1256 = icmp ult ptr %i.ai, %i.o
  %found.conflict257 = and i1 %bound0255, %bound1256
  %conflict.rdx258 = or i1 %conflict.rdx254, %found.conflict257
  %bound0259 = icmp ult ptr %i.m, %i.ao
  %bound1260 = icmp ult ptr %i.am, %i.o
  %found.conflict261 = and i1 %bound0259, %bound1260
  %conflict.rdx262 = or i1 %conflict.rdx258, %found.conflict261
  %bound0263 = icmp ult ptr %i.m, %6
  %bound1264 = icmp ult ptr %5, %i.o
  %found.conflict265 = and i1 %bound0263, %bound1264
  %conflict.rdx266 = or i1 %conflict.rdx262, %found.conflict265
  br i1 %conflict.rdx266, label %.lr.ph.i.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %vector.memcheck235
  %i.ar = and i64 %2, 3                           ; 2 uses
  %n.vec268 = sub i64 %i.k, %i.ar                 ; 2 uses
  %i.as = add i64 %i.c, %n.vec268
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next279, %vector.body269 ] ; 2 uses
  %i.at = add i64 %i.c, %index270                 ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 %i.at     ; 8 uses
  %wide.load271 = load <4 x i8>, ptr %i.au, align 1, !tbaa !7, !alias.scope !111
  %i.av = getelementptr i8, ptr %i.au, i64 %3
  %wide.load272 = load <4 x i8>, ptr %i.av, align 1, !tbaa !7, !alias.scope !112
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.e
  %wide.load273 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !7, !alias.scope !113
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.f
  %wide.load274 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !7, !alias.scope !114
  %i.ay = getelementptr i8, ptr %i.au, i64 %i.g
  %wide.load275 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !7, !alias.scope !115
  %i.az = getelementptr i8, ptr %i.au, i64 %i.h
  %wide.load276 = load <4 x i8>, ptr %i.az, align 1, !tbaa !7, !alias.scope !116
  %i.ba = getelementptr i8, ptr %i.au, i64 %i.i
  %wide.load277 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !7, !alias.scope !117
  %i.bb = getelementptr i8, ptr %i.au, i64 %i.j
  %wide.load278 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !7, !alias.scope !118
  %i.bc = shl nsw i64 %i.at, 3
  %i.bd = getelementptr inbounds i8, ptr %4, i64 %i.bc
  %i.be = zext <4 x i8> %wide.load278 to <4 x i64>
  %i.bf = shl nuw <4 x i64> %i.be, splat (i64 56)
  %i.bg = zext <4 x i8> %wide.load277 to <4 x i64>
  %i.bh = shl nuw nsw <4 x i64> %i.bg, splat (i64 48)
  %i.bi = zext <4 x i8> %wide.load276 to <4 x i64>
  %i.bj = shl nuw nsw <4 x i64> %i.bi, splat (i64 40)
  %i.bk = zext <4 x i8> %wide.load275 to <4 x i64>
  %i.bl = shl nuw nsw <4 x i64> %i.bk, splat (i64 32)
  %i.bm = zext <4 x i8> %wide.load274 to <4 x i64>
  %i.bn = shl nuw nsw <4 x i64> %i.bm, splat (i64 24)
  %i.bo = zext <4 x i8> %wide.load273 to <4 x i64>
  %i.bp = shl nuw nsw <4 x i64> %i.bo, splat (i64 16)
  %i.bq = zext <4 x i8> %wide.load272 to <4 x i64>
  %i.br = shl nuw nsw <4 x i64> %i.bq, splat (i64 8)
  %i.bs = zext <4 x i8> %wide.load271 to <4 x i64>
  %i.bt = or disjoint <4 x i64> %i.br, %i.bs
  %i.bu = or disjoint <4 x i64> %i.bt, %i.bp
  %i.bv = or disjoint <4 x i64> %i.bu, %i.bn
  %i.bw = or disjoint <4 x i64> %i.bv, %i.bl
  %i.bx = or <4 x i64> %i.bw, %i.bj
  %i.by = or <4 x i64> %i.bx, %i.bh
  %i.bz = or <4 x i64> %i.by, %i.bf
  store <4 x i64> %i.bz, ptr %i.bd, align 1, !alias.scope !119, !noalias !120
  %index.next279 = add nuw i64 %index270, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next279, %n.vec268
  br i1 %i.ca, label %middle.block280, label %vector.body269, !llvm.loop !90

middle.block280:                                  ; preds = %vector.body269
  %cmp.n281 = icmp eq i64 %i.ar, 0
  br i1 %cmp.n281, label %.preheader72.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck235, %.lr.ph.preheader.i, %middle.block280
  %.05574.i.ph = phi i64 [ %i.c, %vector.memcheck235 ], [ %i.c, %.lr.ph.preheader.i ], [ %i.as, %middle.block280 ]
  br label %.lr.ph.i

.preheader72.i:                                   ; preds = %.lr.ph.i, %middle.block280, %bb.b
  %i.cb = icmp sgt i64 %2, 15
  br i1 %i.cb, label %.lr.ph80.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit

.lr.ph80.i:                                       ; preds = %.preheader72.i
  %i.cc = shl nsw i64 %3, 1
  %i.cd = mul nsw i64 %3, 3
  %i.ce = shl nsw i64 %3, 2
  %i.cf = mul nsw i64 %3, 5
  %i.cg = mul nsw i64 %3, 6
  %i.ch = mul nsw i64 %3, 7
  br label %.preheader.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.05574.i = phi i64 [ %i.cs, %.lr.ph.i ], [ %.05574.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %0, i64 %.05574.i ; 8 uses
  %i.ci = load i8, ptr %invariant.gep.i, align 1, !tbaa !7
  %gep.1.i = getelementptr i8, ptr %invariant.gep.i, i64 %3
  %i.cj = load i8, ptr %gep.1.i, align 1, !tbaa !7
  %gep.2.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.e
  %i.ck = load i8, ptr %gep.2.i, align 1, !tbaa !7
  %gep.3.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.f
  %i.cl = load i8, ptr %gep.3.i, align 1, !tbaa !7
  %gep.4.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.g
  %i.cm = load i8, ptr %gep.4.i, align 1, !tbaa !7
  %gep.5.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.h
  %i.cn = load i8, ptr %gep.5.i, align 1, !tbaa !7
  %gep.6.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.i
  %i.co = load i8, ptr %gep.6.i, align 1, !tbaa !7
  %gep.7.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.j
  %i.cp = load i8, ptr %gep.7.i, align 1, !tbaa !7
  %i.cq = shl nsw i64 %.05574.i, 3
  %i.cr = getelementptr inbounds i8, ptr %4, i64 %i.cq
  %.sroa.1094.0.insert.ext.i = zext i8 %i.cp to i64
  %.sroa.1094.0.insert.shift.i = shl nuw i64 %.sroa.1094.0.insert.ext.i, 56
  %.sroa.9.0.insert.ext.i = zext i8 %i.co to i64
  %.sroa.9.0.insert.shift.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i, 48
  %.sroa.893.0.insert.ext.i = zext i8 %i.cn to i64
  %.sroa.893.0.insert.shift.i = shl nuw nsw i64 %.sroa.893.0.insert.ext.i, 40
  %.sroa.7.0.insert.ext.i = zext i8 %i.cm to i64
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32
  %.sroa.692.0.insert.ext.i = zext i8 %i.cl to i64
  %.sroa.692.0.insert.shift.i = shl nuw nsw i64 %.sroa.692.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.ck to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16
  %.sroa.491.0.insert.ext.i = zext i8 %i.cj to i64
  %.sroa.491.0.insert.shift.i = shl nuw nsw i64 %.sroa.491.0.insert.ext.i, 8
  %.sroa.090.0.insert.ext.i = zext i8 %i.ci to i64
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.491.0.insert.shift.i, %.sroa.090.0.insert.ext.i
  %.sroa.893.0.insert.insert.i = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.893.0.insert.insert.i, %.sroa.692.0.insert.shift.i
  %.sroa.692.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.7.0.insert.shift.i
  %.sroa.491.0.insert.mask.i = or i64 %.sroa.692.0.insert.insert.i, %.sroa.893.0.insert.shift.i
  %.sroa.090.0.insert.mask.i = or i64 %.sroa.491.0.insert.mask.i, %.sroa.9.0.insert.shift.i
  %.sroa.090.0.insert.insert.i = or i64 %.sroa.090.0.insert.mask.i, %.sroa.1094.0.insert.shift.i
  store i64 %.sroa.090.0.insert.insert.i, ptr %i.cr, align 1
  %i.cs = add nsw i64 %.05574.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %2
  br i1 %exitcond.not.i, label %.preheader72.i, label %.lr.ph.i, !llvm.loop !91

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.lr.ph80.i
  %.05379.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ek, %.preheader.preheader.i ] ; 3 uses
  %i.ct = shl nuw nsw i64 %.05379.i, 4
  %i.cu = getelementptr i8, ptr %0, i64 %i.ct     ; 8 uses
  %i.cv = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cu) ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 %3
  %i.cx = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cw) ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cu, i64 %i.cc
  %i.cz = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.cy) ; 2 uses
  %i.da = getelementptr i8, ptr %i.cu, i64 %i.cd
  %i.db = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.da) ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cu, i64 %i.ce
  %i.dd = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dc) ; 2 uses
  %i.de = getelementptr i8, ptr %i.cu, i64 %i.cf
  %i.df = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.de) ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %i.cg
  %i.dh = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.dg) ; 2 uses
  %i.di = getelementptr i8, ptr %i.cu, i64 %i.ch
  %i.dj = tail call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.di) ; 2 uses
  %i.dk = shufflevector <16 x i8> %i.cv, <16 x i8> %i.dd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dl = shufflevector <16 x i8> %i.cv, <16 x i8> %i.dd, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dm = shufflevector <16 x i8> %i.cx, <16 x i8> %i.df, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dn = shufflevector <16 x i8> %i.cx, <16 x i8> %i.df, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.do = shufflevector <16 x i8> %i.cz, <16 x i8> %i.dh, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dp = shufflevector <16 x i8> %i.cz, <16 x i8> %i.dh, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dq = shufflevector <16 x i8> %i.db, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dr = shufflevector <16 x i8> %i.db, <16 x i8> %i.dj, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ds = shufflevector <16 x i8> %i.dk, <16 x i8> %i.do, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dt = shufflevector <16 x i8> %i.dk, <16 x i8> %i.do, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.du = shufflevector <16 x i8> %i.dl, <16 x i8> %i.dp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dv = shufflevector <16 x i8> %i.dl, <16 x i8> %i.dp, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dw = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dx = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.dy = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dr, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.dz = shufflevector <16 x i8> %i.dn, <16 x i8> %i.dr, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ea = shufflevector <16 x i8> %i.ds, <16 x i8> %i.dw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eb = shufflevector <16 x i8> %i.ds, <16 x i8> %i.dw, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ec = shufflevector <16 x i8> %i.dt, <16 x i8> %i.dx, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ed = shufflevector <16 x i8> %i.dt, <16 x i8> %i.dx, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ee = shufflevector <16 x i8> %i.du, <16 x i8> %i.dy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ef = shufflevector <16 x i8> %i.du, <16 x i8> %i.dy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.eg = shufflevector <16 x i8> %i.dv, <16 x i8> %i.dz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eh = shufflevector <16 x i8> %i.dv, <16 x i8> %i.dz, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ei = shl i64 %.05379.i, 7
  %i.ej = getelementptr i8, ptr %4, i64 %i.ei     ; 8 uses
  store <16 x i8> %i.ea, ptr %i.ej, align 1, !tbaa !7
  %.sroa.52.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <16 x i8> %i.eb, ptr %.sroa.52.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.53.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  store <16 x i8> %i.ec, ptr %.sroa.53.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.54.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store <16 x i8> %i.ed, ptr %.sroa.54.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.55.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  store <16 x i8> %i.ee, ptr %.sroa.55.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.56.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 80
  store <16 x i8> %i.ef, ptr %.sroa.56.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.57.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  store <16 x i8> %i.eg, ptr %.sroa.57.384..sroa_idx.i, align 1, !tbaa !7
  %.sroa.58.384..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  store <16 x i8> %i.eh, ptr %.sroa.58.384..sroa_idx.i, align 1, !tbaa !7
  %i.ek = add nuw nsw i64 %.05379.i, 1            ; 2 uses
  %exitcond89.not.i = icmp eq i64 %i.ek, %i.b
  br i1 %exitcond89.not.i, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.preheader.preheader.i, !llvm.loop !92

bb.c:                                             ; preds = %bb.a
  %i.el = lshr i64 %2, 5
  %i.em = and i64 %i.el, 72057594037927935        ; 4 uses
  %i.en = shl nuw nsw i64 %i.em, 5                ; 14 uses
  %i.eo = icmp samesign ult i64 %i.en, %2
  br i1 %i.eo, label %.lr.ph.preheader, label %.preheader76

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ep = shl nsw i64 %3, 1                       ; 4 uses
  %i.eq = mul nsw i64 %3, 3                       ; 4 uses
  %i.er = shl nsw i64 %3, 2                       ; 4 uses
  %i.es = mul nsw i64 %3, 5                       ; 4 uses
  %i.et = mul nsw i64 %3, 6                       ; 4 uses
  %i.eu = mul nsw i64 %3, 7                       ; 4 uses
  %i.ev = sub nuw nsw i64 %2, %i.en               ; 2 uses
  %min.iters.check = icmp ult i64 %i.ev, 20
  br i1 %min.iters.check, label %.lr.ph.preheader284, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ew = shl nuw i64 %i.em, 8
  %i.ex = getelementptr i8, ptr %4, i64 %i.ew     ; 8 uses
  %i.ey = shl i64 %2, 3
  %i.ez = getelementptr i8, ptr %4, i64 %i.ey     ; 8 uses
  %i.fa = getelementptr i8, ptr %0, i64 %i.en
  %i.fb = getelementptr i8, ptr %0, i64 %2
  %i.fc = getelementptr i8, ptr %0, i64 %3
  %i.fd = getelementptr i8, ptr %i.fc, i64 %i.en
  %i.fe = getelementptr i8, ptr %0, i64 %3
  %i.ff = getelementptr i8, ptr %i.fe, i64 %2
  %i.fg = getelementptr i8, ptr %0, i64 %i.en
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.ep
  %i.fi = getelementptr i8, ptr %0, i64 %2
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.ep
  %i.fk = getelementptr i8, ptr %0, i64 %i.en
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.eq
  %i.fm = getelementptr i8, ptr %0, i64 %2
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.eq
  %i.fo = getelementptr i8, ptr %0, i64 %i.en
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.er
  %i.fq = getelementptr i8, ptr %0, i64 %2
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.er
  %i.fs = getelementptr i8, ptr %0, i64 %i.en
  %i.ft = getelementptr i8, ptr %i.fs, i64 %i.es
  %i.fu = getelementptr i8, ptr %0, i64 %2
  %i.fv = getelementptr i8, ptr %i.fu, i64 %i.es
  %i.fw = getelementptr i8, ptr %0, i64 %i.en
  %i.fx = getelementptr i8, ptr %i.fw, i64 %i.et
  %i.fy = getelementptr i8, ptr %0, i64 %2
  %i.fz = getelementptr i8, ptr %i.fy, i64 %i.et
  %i.ga = getelementptr i8, ptr %0, i64 %i.en
  %7 = getelementptr i8, ptr %i.ga, i64 %i.eu
  %i.gb = getelementptr i8, ptr %0, i64 %2
  %8 = getelementptr i8, ptr %i.gb, i64 %i.eu
  %bound0 = icmp ult ptr %i.ex, %i.fb
  %bound1 = icmp ult ptr %i.fa, %i.ez
  %found.conflict = and i1 %bound0, %bound1
  %bound0150 = icmp ult ptr %i.ex, %i.ff
  %bound1151 = icmp ult ptr %i.fd, %i.ez
  %found.conflict152 = and i1 %bound0150, %bound1151
  %conflict.rdx = or i1 %found.conflict, %found.conflict152
  %bound0153 = icmp ult ptr %i.ex, %i.fj
  %bound1154 = icmp ult ptr %i.fh, %i.ez
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %conflict.rdx, %found.conflict155
  %bound0157 = icmp ult ptr %i.ex, %i.fn
  %bound1158 = icmp ult ptr %i.fl, %i.ez
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %i.ex, %i.fr
  %bound1162 = icmp ult ptr %i.fp, %i.ez
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %i.ex, %i.fv
  %bound1166 = icmp ult ptr %i.ft, %i.ez
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %i.ex, %i.fz
  %bound1170 = icmp ult ptr %i.fx, %i.ez
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  %bound0173 = icmp ult ptr %i.ex, %8
  %bound1174 = icmp ult ptr %7, %i.ez
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx172, %found.conflict175
  br i1 %conflict.rdx176, label %.lr.ph.preheader284, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gc = and i64 %2, 3                           ; 2 uses
  %n.vec = sub nsw i64 %i.ev, %i.gc               ; 2 uses
  %i.gd = add i64 %i.en, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ge = add nuw i64 %i.en, %index               ; 2 uses
  %i.gf = getelementptr i8, ptr %0, i64 %i.ge     ; 8 uses
  %wide.load = load <4 x i8>, ptr %i.gf, align 1, !tbaa !7, !alias.scope !121
  %i.gg = getelementptr i8, ptr %i.gf, i64 %3
  %wide.load177 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !7, !alias.scope !122
  %i.gh = getelementptr i8, ptr %i.gf, i64 %i.ep
  %wide.load178 = load <4 x i8>, ptr %i.gh, align 1, !tbaa !7, !alias.scope !123
  %i.gi = getelementptr i8, ptr %i.gf, i64 %i.eq
  %wide.load179 = load <4 x i8>, ptr %i.gi, align 1, !tbaa !7, !alias.scope !124
  %i.gj = getelementptr i8, ptr %i.gf, i64 %i.er
  %wide.load180 = load <4 x i8>, ptr %i.gj, align 1, !tbaa !7, !alias.scope !125
  %i.gk = getelementptr i8, ptr %i.gf, i64 %i.es
  %wide.load181 = load <4 x i8>, ptr %i.gk, align 1, !tbaa !7, !alias.scope !126
  %i.gl = getelementptr i8, ptr %i.gf, i64 %i.et
  %wide.load182 = load <4 x i8>, ptr %i.gl, align 1, !tbaa !7, !alias.scope !127
  %i.gm = getelementptr i8, ptr %i.gf, i64 %i.eu
  %wide.load183 = load <4 x i8>, ptr %i.gm, align 1, !tbaa !7, !alias.scope !128
  %i.gn = shl nuw nsw i64 %i.ge, 3
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 %i.gn
  %i.gp = zext <4 x i8> %wide.load183 to <4 x i64>
  %i.gq = shl nuw <4 x i64> %i.gp, splat (i64 56)
  %i.gr = zext <4 x i8> %wide.load182 to <4 x i64>
  %i.gs = shl nuw nsw <4 x i64> %i.gr, splat (i64 48)
  %i.gt = or disjoint <4 x i64> %i.gq, %i.gs
  %i.gu = zext <4 x i8> %wide.load181 to <4 x i64>
  %i.gv = shl nuw nsw <4 x i64> %i.gu, splat (i64 40)
  %i.gw = or disjoint <4 x i64> %i.gt, %i.gv
  %i.gx = zext <4 x i8> %wide.load180 to <4 x i64>
  %i.gy = shl nuw nsw <4 x i64> %i.gx, splat (i64 32)
  %i.gz = or disjoint <4 x i64> %i.gw, %i.gy
  %i.ha = zext <4 x i8> %wide.load179 to <4 x i64>
  %i.hb = shl nuw nsw <4 x i64> %i.ha, splat (i64 24)
  %i.hc = or disjoint <4 x i64> %i.gz, %i.hb
  %i.hd = zext <4 x i8> %wide.load178 to <4 x i64>
  %i.he = shl nuw nsw <4 x i64> %i.hd, splat (i64 16)
  %i.hf = zext <4 x i8> %wide.load177 to <4 x i64>
  %i.hg = shl nuw nsw <4 x i64> %i.hf, splat (i64 8)
  %i.hh = or disjoint <4 x i64> %i.hc, %i.he
  %i.hi = zext <4 x i8> %wide.load to <4 x i64>
  %i.hj = or <4 x i64> %i.hh, %i.hg
  %i.hk = or <4 x i64> %i.hj, %i.hi
  store <4 x i64> %i.hk, ptr %i.go, align 1, !alias.scope !129, !noalias !130
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gc, 0
  br i1 %cmp.n, label %.preheader76, label %.lr.ph.preheader284

.lr.ph.preheader284:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.05979.ph = phi i64 [ %i.en, %vector.memcheck ], [ %i.en, %.lr.ph.preheader ], [ %i.gd, %middle.block ]
  br label %.lr.ph

.preheader76:                                     ; preds = %.lr.ph, %middle.block, %bb.c
  %.not = icmp eq i64 %i.em, 0
  br i1 %.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhillPh.exit, label %.lr.ph85

.lr.ph85:                                         ; preds = %.preheader76
  %i.hm = shl nsw i64 %3, 1
  %i.hn = mul nsw i64 %3, 3
  %i.ho = shl nsw i64 %3, 2
  %i.hp = mul nsw i64 %3, 5
  %i.hq = mul nsw i64 %3, 6
  %i.hr = mul nsw i64 %3, 7
  br label %.preheader.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader284, %.lr.ph
  %.05979 = phi i64 [ %i.ic, %.lr.ph ], [ %.05979.ph, %.lr.ph.preheader284 ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %.05979 ; 8 uses
  %i.hs = load i8, ptr %invariant.gep, align 1, !tbaa !7
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %3
  %i.ht = load i8, ptr %gep.1, align 1, !tbaa !7
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %i.ep
  %i.hu = load i8, ptr %gep.2, align 1, !tbaa !7
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %i.eq
  %i.hv = load i8, ptr %gep.3, align 1, !tbaa !7
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %i.er
  %i.hw = load i8, ptr %gep.4, align 1, !tbaa !7
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %i.es
  %i.hx = load i8, ptr %gep.5, align 1, !tbaa !7
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %i.et
  %i.hy = load i8, ptr %gep.6, align 1, !tbaa !7
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %i.eu
  %i.hz = load i8, ptr %gep.7, align 1, !tbaa !7
  %i.ia = shl nuw nsw i64 %.05979, 3
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 %i.ia
  %.sroa.10100.0.insert.ext = zext i8 %i.hz to i64
  %.sroa.10100.0.insert.shift = shl nuw i64 %.sroa.10100.0.insert.ext, 56
  %.sroa.9.0.insert.ext = zext i8 %i.hy to i64
  %.sroa.9.0.insert.shift = shl nuw nsw i64 %.sroa.9.0.insert.ext, 48
  %.sroa.9.0.insert.insert = or disjoint i64 %.sroa.10100.0.insert.shift, %.sroa.9.0.insert.shift
  %.sroa.899.0.insert.ext = zext i8 %i.hx to i64
  %.sroa.899.0.insert.shift = shl nuw nsw i64 %.sroa.899.0.insert.ext, 40
  %.sroa.899.0.insert.insert = or disjoint i64 %.sroa.9.0.insert.insert, %.sroa.899.0.insert.shift
  %.sroa.7.0.insert.ext = zext i8 %i.hw to i64
  %.sroa.7.0.insert.shift = shl nuw nsw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.7.0.insert.insert = or disjoint i64 %.sroa.899.0.insert.insert, %.sroa.7.0.insert.shift
  %.sroa.698.0.insert.ext = zext i8 %i.hv to i64
  %.sroa.698.0.insert.shift = shl nuw nsw i64 %.sroa.698.0.insert.ext, 24
  %.sroa.698.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.insert, %.sroa.698.0.insert.shift
  %.sroa.5.0.insert.ext = zext i8 %i.hu to i64
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.5.0.insert.ext, 16
  %.sroa.497.0.insert.ext = zext i8 %i.ht to i64
  %.sroa.497.0.insert.shift = shl nuw nsw i64 %.sroa.497.0.insert.ext, 8
  %.sroa.497.0.insert.mask = or disjoint i64 %.sroa.698.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.096.0.insert.ext = zext i8 %i.hs to i64
  %.sroa.096.0.insert.mask = or i64 %.sroa.497.0.insert.mask, %.sroa.497.0.insert.shift
  %.sroa.096.0.insert.insert = or i64 %.sroa.096.0.insert.mask, %.sroa.096.0.insert.ext
  store i64 %.sroa.096.0.insert.insert, ptr %i.ib, align 1
  %i.ic = add nuw nsw i64 %.05979, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ic, %2
  br i1 %exitcond.not, label %.preheader76, label %.lr.ph, !llvm.loop !104

.preheader.preheader:                             ; preds = %.lr.ph85, %.preheader.preheader
  %.05784 = phi i64 [ 0, %.lr.ph85 ], [ %i.ly, %.preheader.preheader ] ; 3 uses
  %i.id = shl nuw nsw i64 %.05784, 5
  %i.ie = getelementptr i8, ptr %0, i64 %i.id     ; 8 uses
  %i.if = load <32 x i8>, ptr %i.ie, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.ie, i64 %3
  %i.ih = load <32 x i8>, ptr %i.ig, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.hm
  %i.ij = load <32 x i8>, ptr %i.ii, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.ik = getelementptr i8, ptr %i.ie, i64 %i.hn
  %i.il = load <32 x i8>, ptr %i.ik, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.im = getelementptr i8, ptr %i.ie, i64 %i.ho
  %i.in = load <32 x i8>, ptr %i.im, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.io = getelementptr i8, ptr %i.ie, i64 %i.hp
  %i.ip = load <32 x i8>, ptr %i.io, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ie, i64 %i.hq
  %i.ir = load <32 x i8>, ptr %i.iq, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.is = getelementptr i8, ptr %i.ie, i64 %i.hr
  %i.it = load <32 x i8>, ptr %i.is, align 1, !tbaa !7, !noalias !131 ; 2 uses
  %i.iu = shufflevector <32 x i8> %i.if, <32 x i8> %i.in, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.iv = shufflevector <32 x i8> %i.if, <32 x i8> %i.in, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.iw = shufflevector <32 x i8> %i.iu, <32 x i8> %i.iv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ix = bitcast <32 x i8> %i.iu to <8 x i32>
  %i.iy = bitcast <32 x i8> %i.iv to <8 x i32>
  %i.iz = shufflevector <8 x i32> %i.ix, <8 x i32> %i.iy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ja = shufflevector <32 x i8> %i.ih, <32 x i8> %i.ip, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jb = shufflevector <32 x i8> %i.ih, <32 x i8> %i.ip, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jc = shufflevector <32 x i8> %i.ja, <32 x i8> %i.jb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jd = bitcast <32 x i8> %i.ja to <8 x i32>
  %i.je = bitcast <32 x i8> %i.jb to <8 x i32>
  %i.jf = shufflevector <8 x i32> %i.jd, <8 x i32> %i.je, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jg = shufflevector <32 x i8> %i.ij, <32 x i8> %i.ir, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jh = shufflevector <32 x i8> %i.ij, <32 x i8> %i.ir, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ji = shufflevector <32 x i8> %i.jg, <32 x i8> %i.jh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jj = bitcast <32 x i8> %i.jg to <8 x i32>
  %i.jk = bitcast <32 x i8> %i.jh to <8 x i32>
  %i.jl = shufflevector <8 x i32> %i.jj, <8 x i32> %i.jk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jm = shufflevector <32 x i8> %i.il, <32 x i8> %i.it, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jn = shufflevector <32 x i8> %i.il, <32 x i8> %i.it, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.jo = shufflevector <32 x i8> %i.jm, <32 x i8> %i.jn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jp = bitcast <32 x i8> %i.jm to <8 x i32>
  %i.jq = bitcast <32 x i8> %i.jn to <8 x i32>
  %i.jr = shufflevector <8 x i32> %i.jp, <8 x i32> %i.jq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.js = shufflevector <32 x i8> %i.iw, <32 x i8> %i.ji, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.jt = shufflevector <32 x i8> %i.iw, <32 x i8> %i.ji, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ju = shufflevector <32 x i8> %i.js, <32 x i8> %i.jt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.jv = bitcast <32 x i8> %i.js to <8 x i32>
  %i.jw = bitcast <32 x i8> %i.jt to <8 x i32>
  %i.jx = shufflevector <8 x i32> %i.jv, <8 x i32> %i.jw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.jy = bitcast <8 x i32> %i.iz to <32 x i8>    ; 2 uses
  %i.jz = bitcast <8 x i32> %i.jl to <32 x i8>    ; 2 uses
  %i.ka = shufflevector <32 x i8> %i.jy, <32 x i8> %i.jz, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.kb = shufflevector <32 x i8> %i.jy, <32 x i8> %i.jz, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.kc = shufflevector <32 x i8> %i.ka, <32 x i8> %i.kb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.kd = bitcast <32 x i8> %i.ka to <8 x i32>
  %i.ke = bitcast <32 x i8> %i.kb to <8 x i32>
  %i.kf = shufflevector <8 x i32> %i.kd, <8 x i32> %i.ke, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.kg = shufflevector <32 x i8> %i.jc, <32 x i8> %i.jo, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.kh = shufflevector <32 x i8> %i.jc, <32 x i8> %i.jo, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ki = shufflevector <32 x i8> %i.kg, <32 x i8> %i.kh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.kj = bitcast <32 x i8> %i.kg to <8 x i32>
  %i.kk = bitcast <32 x i8> %i.kh to <8 x i32>
  %i.kl = shufflevector <8 x i32> %i.kj, <8 x i32> %i.kk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.km = bitcast <8 x i32> %i.jf to <32 x i8>    ; 2 uses
  %i.kn = bitcast <8 x i32> %i.jr to <32 x i8>    ; 2 uses
  %i.ko = shufflevector <32 x i8> %i.km, <32 x i8> %i.kn, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.kp = shufflevector <32 x i8> %i.km, <32 x i8> %i.kn, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.kq = shufflevector <32 x i8> %i.ko, <32 x i8> %i.kp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.kr = bitcast <32 x i8> %i.ko to <8 x i32>
  %i.ks = bitcast <32 x i8> %i.kp to <8 x i32>
  %i.kt = shufflevector <8 x i32> %i.kr, <8 x i32> %i.ks, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ku = shufflevector <32 x i8> %i.ju, <32 x i8> %i.ki, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.kv = shufflevector <32 x i8> %i.ju, <32 x i8> %i.ki, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.kw = shufflevector <32 x i8> %i.ku, <32 x i8> %i.kv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4avx2ELi8EEEvPKhilPh:bb.a
  %i.dbr = shufflevector <64 x i8> %i.dau, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbs = shufflevector <64 x i8> %i.dau, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dbt = shufflevector <32 x i8> %i.dbr, <32 x i8> %i.dbs, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dbu = bitcast <32 x i8> %i.dbr to <8 x i32>
  %i.dbv = bitcast <32 x i8> %i.dbs to <8 x i32>
  %i.dbw = shufflevector <8 x i32> %i.dbu, <8 x i32> %i.dbv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dbx = bitcast <8 x i32> %i.dbw to <32 x i8>  ; 2 uses
  %i.dby = shufflevector <32 x i8> %i.dbt, <32 x i8> %i.dbx, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dbz = shufflevector <32 x i8> %i.dbt, <32 x i8> %i.dbx, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dca = shufflevector <32 x i8> %i.dby, <32 x i8> %i.dbz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcb = bitcast <32 x i8> %i.dby to <8 x i32>
  %i.dcc = bitcast <32 x i8> %i.dbz to <8 x i32>
  %i.dcd = shufflevector <8 x i32> %i.dcb, <8 x i32> %i.dcc, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dce = bitcast <8 x i32> %i.dcd to <32 x i8>  ; 2 uses
  %i.dcf = shufflevector <32 x i8> %i.dca, <32 x i8> %i.dce, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dcg = shufflevector <32 x i8> %i.dca, <32 x i8> %i.dce, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.dch = shufflevector <32 x i8> %i.dcf, <32 x i8> %i.dcg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.dci = bitcast <32 x i8> %i.dcf to <8 x i32>
  %i.dcj = bitcast <32 x i8> %i.dcg to <8 x i32>
  %i.dck = shufflevector <8 x i32> %i.dci, <8 x i32> %i.dcj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dcl = shufflevector <64 x i8> %i.dav, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dcm = shufflevector <64 x i8> %i.dav, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dcn = shufflevector <32 x i8> %i.dcl, <32 x i8> %i.dcm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dco = bitcast <32 x i8> %i.dcl to <8 x i32>
  %i.dcp = bitcast <32 x i8> %i.dcm to <8 x i32>
  %i.dcq = shufflevector <8 x i32> %i.dco, <8 x i32> %i.dcp, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dcr = bitcast <8 x i32> %i.dcq to <32 x i8>  ; 2 uses
  %i.dcs = shufflevector <32 x i8> %i.dcn, <32 x i8> %i.dcr, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.dct = shufflevector <32 x i8> %i.dcn, <32 x i8> %i.dcr, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.dcu = shufflevector <32 x i8> %i.dcs, <32 x i8> %i.dct, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.dcv = bitcast <32 x i8> %i.dcs to <8 x i32>
  %i.dcw = bitcast <32 x i8> %i.dct to <8 x i32>
  %i.dcx = shufflevector <8 x i32> %i.dcv, <8 x i32> %i.dcw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dcy = bitcast <8 x i32> %i.dcx to <32 x i8>  ; 2 uses
  %i.dcz = shufflevector <32 x i8> %i.dcu, <32 x i8> %i.dcy, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.dda = shufflevector <32 x i8> %i.dcu, <32 x i8> %i.dcy, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.ddb = shufflevector <32 x i8> %i.dcz, <32 x i8> %i.dda, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.ddc = bitcast <32 x i8> %i.dcz to <8 x i32>
  %i.ddd = bitcast <32 x i8> %i.dda to <8 x i32>
  %i.dde = shufflevector <8 x i32> %i.ddc, <8 x i32> %i.ddd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ddf = shufflevector <64 x i8> %i.daw, <64 x i8> poison, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddg = shufflevector <64 x i8> %i.daw, <64 x i8> poison, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddh = shufflevector <32 x i8> %i.ddf, <32 x i8> %i.ddg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddi = bitcast <32 x i8> %i.ddf to <8 x i32>
  %i.ddj = bitcast <32 x i8> %i.ddg to <8 x i32>
  %i.ddk = shufflevector <8 x i32> %i.ddi, <8 x i32> %i.ddj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ddl = bitcast <8 x i32> %i.ddk to <32 x i8>  ; 2 uses
  %i.ddm = shufflevector <32 x i8> %i.ddh, <32 x i8> %i.ddl, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.ddn = shufflevector <32 x i8> %i.ddh, <32 x i8> %i.ddl, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.ddo = shufflevector <32 x i8> %i.ddm, <32 x i8> %i.ddn, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 2 uses
  %i.ddp = bitcast <32 x i8> %i.ddm to <8 x i32>
  %i.ddq = bitcast <32 x i8> %i.ddn to <8 x i32>
  %i.ddr = shufflevector <8 x i32> %i.ddp, <8 x i32> %i.ddq, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dds = bitcast <8 x i32> %i.ddr to <32 x i8>  ; 2 uses
  %i.ddt = shufflevector <32 x i8> %i.ddo, <32 x i8> %i.dds, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 4 uses
  %i.ddu = shufflevector <32 x i8> %i.ddo, <32 x i8> %i.dds, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 5 uses
  %i.ddv = shufflevector <32 x i8> %i.ddt, <32 x i8> %i.ddu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47> ; 3 uses
  %i.ddw = bitcast <32 x i8> %i.ddt to <8 x i32>
  %i.ddx = bitcast <32 x i8> %i.ddu to <8 x i32>
  %i.ddy = shufflevector <8 x i32> %i.ddw, <8 x i32> %i.ddx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ddz = shufflevector <32 x i8> %i.dbl, <32 x i8> %i.dcz, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dea = bitcast <32 x i8> %i.ddz to <4 x i64>
  %i.deb = shufflevector <32 x i8> %i.dbn, <32 x i8> %i.ddb, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dec = bitcast <32 x i8> %i.deb to <4 x i64>
  %i.ded = shufflevector <32 x i8> %i.dbn, <32 x i8> %i.ddb, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dee = bitcast <32 x i8> %i.ded to <4 x i64>
  %i.def = shufflevector <4 x i64> %i.dec, <4 x i64> %i.dee, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.deg = shufflevector <8 x i32> %i.dbq, <8 x i32> %i.dde, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.deh = bitcast <4 x i32> %i.deg to <2 x i64>
  %i.dei = shufflevector <32 x i8> %i.dbm, <32 x i8> %i.dda, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dej = bitcast <32 x i8> %i.dei to <8 x i32>
  %i.dek = shufflevector <32 x i8> %i.dbm, <32 x i8> %i.dda, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.del = bitcast <32 x i8> %i.dek to <8 x i32>
  %i.dem = shufflevector <8 x i32> %i.dej, <8 x i32> %i.del, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.den = shufflevector <32 x i8> %i.dcf, <32 x i8> %i.ddt, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.deo = bitcast <32 x i8> %i.den to <4 x i64>
  %i.dep = shufflevector <32 x i8> %i.dch, <32 x i8> %i.ddv, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.deq = bitcast <32 x i8> %i.dep to <4 x i64>
  %i.der = shufflevector <32 x i8> %i.dch, <32 x i8> %i.ddv, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.des = bitcast <32 x i8> %i.der to <4 x i64>
  %i.det = shufflevector <4 x i64> %i.deq, <4 x i64> %i.des, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 2 uses
  %i.deu = shufflevector <8 x i32> %i.dck, <8 x i32> %i.ddy, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.dev = bitcast <4 x i32> %i.deu to <2 x i64>
  %i.dew = shufflevector <32 x i8> %i.dcg, <32 x i8> %i.ddu, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>
  %i.dex = bitcast <32 x i8> %i.dew to <8 x i32>
  %i.dey = shufflevector <32 x i8> %i.dcg, <32 x i8> %i.ddu, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dez = bitcast <32 x i8> %i.dey to <8 x i32>
  %i.dfa = shufflevector <8 x i32> %i.dex, <8 x i32> %i.dez, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dfb = shufflevector <32 x i8> %i.dbl, <32 x i8> %i.dcf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfc = shufflevector <32 x i8> %i.dcz, <32 x i8> %i.ddt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfd = shufflevector <32 x i8> %i.dfb, <32 x i8> %i.dfc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.dfe = shufflevector <4 x i64> %i.dea, <4 x i64> %i.deo, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.dff = shufflevector <4 x i64> %i.def, <4 x i64> %i.det, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.dfg = shufflevector <4 x i64> %i.def, <4 x i64> %i.det, <2 x i32> <i32 1, i32 5>
  %i.dfh = shufflevector <2 x i64> %i.dfg, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dfi = shufflevector <4 x i64> %i.dff, <4 x i64> %i.dfh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dfj = shufflevector <32 x i8> %i.dbn, <32 x i8> %i.dch, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfk = bitcast <32 x i8> %i.dfj to <4 x i64>
  %i.dfl = shufflevector <32 x i8> %i.ddb, <32 x i8> %i.ddv, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfm = bitcast <32 x i8> %i.dfl to <4 x i64>
  %i.dfn = shufflevector <4 x i64> %i.dfk, <4 x i64> %i.dfm, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.dfo = shufflevector <8 x i32> %i.dbq, <8 x i32> %i.dck, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfp = shufflevector <8 x i32> %i.dde, <8 x i32> %i.ddy, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dfq = shufflevector <8 x i32> %i.dfo, <8 x i32> %i.dfp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dfr = shufflevector <2 x i64> %i.deh, <2 x i64> %i.dev, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dfs = shufflevector <8 x i32> %i.dem, <8 x i32> %i.dfa, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dft = bitcast <8 x i32> %i.dfs to <4 x i64>
  %i.dfu = shufflevector <8 x i32> %i.dem, <8 x i32> %i.dfa, <4 x i32> <i32 2, i32 3, i32 10, i32 11>
  %i.dfv = bitcast <4 x i32> %i.dfu to <2 x i64>
  %i.dfw = shufflevector <2 x i64> %i.dfv, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dfx = shufflevector <4 x i64> %i.dft, <4 x i64> %i.dfw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dfy = shufflevector <32 x i8> %i.dbm, <32 x i8> %i.dcg, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfz = bitcast <32 x i8> %i.dfy to <8 x i32>
  %i.dga = shufflevector <32 x i8> %i.dda, <32 x i8> %i.ddu, <32 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dgb = bitcast <32 x i8> %i.dga to <8 x i32>
  %i.dgc = shufflevector <8 x i32> %i.dfz, <8 x i32> %i.dgb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.dgd = shl nuw nsw i64 %.078113, 5            ; 8 uses
  %i.dge = getelementptr inbounds nuw i8, ptr %3, i64 %i.dgd
  store <32 x i8> %i.dfd, ptr %i.dge, align 1, !tbaa !7
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dgd
  store <4 x i64> %i.dfe, ptr %i.dgf, align 1, !tbaa !7
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dgd
  store <4 x i64> %i.dfi, ptr %i.dgg, align 1, !tbaa !7
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dgd
  store <4 x i64> %i.dfn, ptr %i.dgh, align 1, !tbaa !7
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dgd
  store <8 x i32> %i.dfq, ptr %i.dgi, align 1, !tbaa !7
  %i.dgj = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.dgd
  store <4 x i64> %i.dfr, ptr %i.dgj, align 1, !tbaa !7
  %i.dgk = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dgd
  store <4 x i64> %i.dfx, ptr %i.dgk, align 1, !tbaa !7
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dgd
  store <8 x i32> %i.dgc, ptr %i.dgl, align 1, !tbaa !7
  %i.dgm = add nuw nsw i64 %.078113, 1            ; 2 uses
  %exitcond127.not = icmp eq i64 %i.dgm, %i.bby
  br i1 %exitcond127.not, label %_ZN5arrow4util8internal25ByteStreamSplitEncodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi8EEEvPKhilPh.exit, label %.preheader98.preheader, !llvm.loop !224

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
!29 = distinct !{!29, i1 true, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!30 = distinct !{!30, !29, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!31 = distinct !{!31, i1 true, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!32 = distinct !{!32, !31, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!33 = distinct !{!33, !8}
!34 = !{i64 -9031246190751761708}
!35 = !{!14}
!36 = !{!15}
!37 = !{!16}
!38 = !{!14, !15}
!39 = !{!23}
!40 = !{!24}
!41 = !{!25}
!42 = !{!23, !24}
!43 = !{!32, !30}
!44 = distinct !{!44, i1 false, !"LVerDomain"}
!45 = distinct !{!45, !44}
!46 = distinct !{!46, !44}
!47 = distinct !{!47, !44}
!48 = distinct !{!48, !44}
!49 = distinct !{!49, !44}
!50 = distinct !{!50, !8, !9, !10}
!51 = distinct !{!51, !8, !9}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, i1 false, !"LVerDomain"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = distinct !{!58, !53}
!59 = distinct !{!59, !8, !9, !10}
!60 = distinct !{!60, !8, !9}
!61 = distinct !{!61, i1 true, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!62 = distinct !{!62, !61, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!63 = distinct !{!63, i1 true, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!64 = distinct !{!64, !63, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!65 = distinct !{!65, !8}
!66 = !{i64 -2934291992592256586}
!67 = !{!45}
!68 = !{!46}
!69 = !{!47}
!70 = !{!48}
!71 = !{!49}
!72 = !{!45, !46, !47, !48}
!73 = !{!54}
!74 = !{!55}
!75 = !{!56}
!76 = !{!57}
!77 = !{!58}
!78 = !{!54, !55, !56, !57}
!79 = !{!64, !62}
!80 = distinct !{!80, i1 false, !"LVerDomain"}
!81 = distinct !{!81, !80}
!82 = distinct !{!82, !80}
!83 = distinct !{!83, !80}
!84 = distinct !{!84, !80}
!85 = distinct !{!85, !80}
!86 = distinct !{!86, !80}
!87 = distinct !{!87, !80}
!88 = distinct !{!88, !80}
!89 = distinct !{!89, !80}
!90 = distinct !{!90, !8, !9, !10}
!91 = distinct !{!91, !8, !9}
!92 = distinct !{!92, !8}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !93}
!99 = distinct !{!99, !93}
!100 = distinct !{!100, !93}
!101 = distinct !{!101, !93}
!102 = distinct !{!102, !93}
!103 = distinct !{!103, !8, !9, !10}
!104 = distinct !{!104, !8, !9}
!105 = distinct !{!105, i1 true, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE"}
!106 = distinct !{!106, !105, !"_ZN5xsimd6kernel6detail14load_unalignedINS_4avx2EhaEENS_5batchIT1_T_EEPKT0_NS0_7convertIS5_EERKNS_6commonENS1_20with_fast_conversionE: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE"}
!108 = distinct !{!108, !107, !"_ZN5xsimd6kernel14load_unalignedINS_4avx2EhvEENS_5batchIT0_T_EEPKS4_NS0_7convertIS4_EERKNS_3avxE: argument 0"}
!109 = distinct !{!109, !8}
!110 = !{i64 2144067820651610267}
!111 = !{!81}
!112 = !{!82}
!113 = !{!83}
!114 = !{!84}
!115 = !{!85}
!116 = !{!86}
!117 = !{!87}
!118 = !{!88}
!119 = !{!89}
!120 = !{!81, !82, !83, !84, !85, !86, !87, !88}
!121 = !{!94}
!122 = !{!95}
!123 = !{!96}
!124 = !{!97}
!125 = !{!98}
!126 = !{!99}
!127 = !{!100}
!128 = !{!101}
!129 = !{!102}
!130 = !{!94, !95, !96, !97, !98, !99, !100, !101}
!131 = !{!108, !106}
!132 = distinct !{!132, i1 false, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !8, !9, !10}
!137 = distinct !{!137, !8, !9, !10}
!138 = distinct !{!138, !12}
!139 = distinct !{!139, !8, !9}
!140 = distinct !{!140, !8}
!141 = distinct !{!141, i1 false, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !141}
!145 = distinct !{!145, !8, !9, !10}
!146 = distinct !{!146, !8, !9, !10}
!147 = distinct !{!147, !8, !9}
!148 = distinct !{!148, !8}
!149 = !{i64 2763812302364575247}
!150 = !{!133}
!151 = !{!134}
!152 = !{!135, !133}
!153 = !{!135}
!154 = !{!142}
!155 = !{!143}
!156 = !{!144, !142}
!157 = !{!144}
!158 = distinct !{!158, i1 false, !"LVerDomain"}
!159 = distinct !{!159, !158}
!160 = distinct !{!160, !158}
!161 = distinct !{!161, !158}
!162 = distinct !{!162, !158}
!163 = distinct !{!163, !158}
!164 = distinct !{!164, !8, !9, !10}
!165 = distinct !{!165, !8, !9, !10}
!166 = distinct !{!166, !8, !9}
!167 = distinct !{!167, !8}
!168 = distinct !{!168, i1 false, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !168}
!172 = distinct !{!172, !168}
!173 = distinct !{!173, !168}
!174 = distinct !{!174, !8, !9, !10}
!175 = distinct !{!175, !8, !9, !10}
!176 = distinct !{!176, !8, !9}
!177 = distinct !{!177, !8}
!178 = !{i64 501530568848012053}
!179 = !{!159}
!180 = !{!160}
!181 = !{!163, !162, !161, !159}
!182 = !{!163}
!183 = !{!162, !161, !159}
!184 = !{!162}
!185 = !{!161, !159}
!186 = !{!161}
!187 = !{!"branch_weights", i32 4, i32 12}
!188 = !{!169}
!189 = !{!170}
!190 = !{!173, !172, !171, !169}
!191 = !{!173}
!192 = !{!172, !171, !169}
!193 = !{!172}
!194 = !{!171, !169}
!195 = !{!171}
!196 = !{i64 6285109495968342601}
!197 = distinct !{!197, i1 false, !"LVerDomain"}
!198 = distinct !{!198, !197}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !197}
!201 = distinct !{!201, !197}
!202 = distinct !{!202, !197}
!203 = distinct !{!203, !197}
!204 = distinct !{!204, !197}
!205 = distinct !{!205, !197}
!206 = distinct !{!206, !197}
!207 = distinct !{!207, !8, !9, !10}
!208 = distinct !{!208, !8, !9, !10}
!209 = distinct !{!209, !8, !9}
!210 = distinct !{!210, !8}
!211 = distinct !{!211, i1 false, !"LVerDomain"}
!212 = distinct !{!212, !211}
!213 = distinct !{!213, !211}
!214 = distinct !{!214, !211}
!215 = distinct !{!215, !211}
!216 = distinct !{!216, !211}
!217 = distinct !{!217, !211}
!218 = distinct !{!218, !211}
!219 = distinct !{!219, !211}
!220 = distinct !{!220, !211}
!221 = distinct !{!221, !8, !9, !10}
!222 = distinct !{!222, !8, !9, !10}
!223 = distinct !{!223, !8, !9}
!224 = distinct !{!224, !8}
!225 = !{i64 -9162456969049929834}
!226 = !{!198}
!227 = !{!199}
!228 = !{!206, !205, !204, !203, !202, !201, !200, !198}
!229 = !{!206}
!230 = !{!205, !204, !203, !202, !201, !200, !198}
!231 = !{!205}
!232 = !{!204, !203, !202, !201, !200, !198}
!233 = !{!204}
!234 = !{!203, !202, !201, !200, !198}
!235 = !{!203}
!236 = !{!202, !201, !200, !198}
!237 = !{!202}
!238 = !{!201, !200, !198}
!239 = !{!201}
!240 = !{!200, !198}
!241 = !{!200}
!242 = !{!"branch_weights", i32 16, i32 16}
!243 = !{!212}
!244 = !{!213}
!245 = !{!220, !219, !218, !217, !216, !215, !214, !212}
!246 = !{!220}
!247 = !{!219, !218, !217, !216, !215, !214, !212}
!248 = !{!219}
!249 = !{!218, !217, !216, !215, !214, !212}
!250 = !{!218}
!251 = !{!217, !216, !215, !214, !212}
!252 = !{!217}
!253 = !{!216, !215, !214, !212}
!254 = !{!216}
!255 = !{!215, !214, !212}
!256 = !{!215}
!257 = !{!214, !212}
!258 = !{!214}
end_hunk_1
