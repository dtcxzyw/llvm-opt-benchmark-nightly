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
define weak_odr void @_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4avx2ELi2EEEvPKhillPh(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 16                          ; 5 uses
  %i.c = shl nsw i64 %i.b, 4                      ; 10 uses
  %i.d = icmp slt i64 %i.c, %2
  br i1 %i.d, label %iter.check155, label %.preheader72.i

iter.check155:                                    ; preds = %bb.b
  %i.e = sub i64 %2, %i.c                         ; 6 uses
  %min.iters.check135 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check135, label %.lr.ph.i.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %iter.check155
  %i.f = shl i64 %i.b, 5
  %scevgep122 = getelementptr i8, ptr %4, i64 %i.f ; 2 uses
  %i.g = shl i64 %2, 1
  %scevgep123 = getelementptr i8, ptr %4, i64 %i.g ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %3
  %scevgep124 = getelementptr i8, ptr %i.h, i64 %i.c
  %i.i = getelementptr i8, ptr %0, i64 %3
  %scevgep125 = getelementptr i8, ptr %i.i, i64 %2
  %scevgep126 = getelementptr i8, ptr %0, i64 %i.c
  %scevgep127 = getelementptr i8, ptr %0, i64 %2
  %bound0128 = icmp ult ptr %scevgep122, %scevgep125
  %bound1129 = icmp ult ptr %scevgep124, %scevgep123
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0131 = icmp ult ptr %scevgep122, %scevgep127
  %bound1132 = icmp ult ptr %scevgep126, %scevgep123
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %found.conflict130, %found.conflict133
  br i1 %conflict.rdx134, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %vector.memcheck121
  %min.iters.check137 = icmp ult i64 %i.e, 64
  br i1 %min.iters.check137, label %vec.epilog.ph159, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %n.mod.vf139 = and i64 %i.e, 56
  %n.vec140 = and i64 %i.e, -64                   ; 4 uses
  %i.j = add i64 %i.c, %n.vec140
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph138
  %index142 = phi i64 [ 0, %vector.ph138 ], [ %index.next151, %vector.body141 ] ; 2 uses
  %i.k = add i64 %i.c, %index142                  ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k       ; 5 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %i.n = getelementptr i8, ptr %i.l, i64 32
  %i.o = getelementptr i8, ptr %i.l, i64 48
  %wide.load143 = load <16 x i8>, ptr %i.l, align 1, !tbaa !7, !alias.scope !8
  %wide.load144 = load <16 x i8>, ptr %i.m, align 1, !tbaa !7, !alias.scope !8
  %wide.load145 = load <16 x i8>, ptr %i.n, align 1, !tbaa !7, !alias.scope !8
  %wide.load146 = load <16 x i8>, ptr %i.o, align 1, !tbaa !7, !alias.scope !8
  %i.p = getelementptr i8, ptr %i.l, i64 %3       ; 4 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %i.s = getelementptr i8, ptr %i.p, i64 48
  %wide.load147 = load <16 x i8>, ptr %i.p, align 1, !tbaa !7, !alias.scope !11
  %wide.load148 = load <16 x i8>, ptr %i.q, align 1, !tbaa !7, !alias.scope !11
  %wide.load149 = load <16 x i8>, ptr %i.r, align 1, !tbaa !7, !alias.scope !11
  %wide.load150 = load <16 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !11
  %i.t = shl nsw i64 %i.k, 1
  %i.u = getelementptr inbounds i8, ptr %4, i64 %i.t ; 4 uses
  %i.v = zext <16 x i8> %wide.load147 to <16 x i16>
  %i.w = zext <16 x i8> %wide.load148 to <16 x i16>
  %i.x = zext <16 x i8> %wide.load149 to <16 x i16>
  %i.y = zext <16 x i8> %wide.load150 to <16 x i16>
  %i.z = shl nuw <16 x i16> %i.v, splat (i16 8)
  %i.aa = shl nuw <16 x i16> %i.w, splat (i16 8)
  %i.ab = shl nuw <16 x i16> %i.x, splat (i16 8)
  %i.ac = shl nuw <16 x i16> %i.y, splat (i16 8)
  %i.ad = zext <16 x i8> %wide.load143 to <16 x i16>
  %i.ae = zext <16 x i8> %wide.load144 to <16 x i16>
  %i.af = zext <16 x i8> %wide.load145 to <16 x i16>
  %i.ag = zext <16 x i8> %wide.load146 to <16 x i16>
  %i.ah = or disjoint <16 x i16> %i.z, %i.ad
  %i.ai = or disjoint <16 x i16> %i.aa, %i.ae
  %i.aj = or disjoint <16 x i16> %i.ab, %i.af
  %i.ak = or disjoint <16 x i16> %i.ac, %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store <16 x i16> %i.ah, ptr %i.u, align 1, !alias.scope !13, !noalias !15
  store <16 x i16> %i.ai, ptr %i.al, align 1, !alias.scope !13, !noalias !15
  store <16 x i16> %i.aj, ptr %i.am, align 1, !alias.scope !13, !noalias !15
  store <16 x i16> %i.ak, ptr %i.an, align 1, !alias.scope !13, !noalias !15
  %index.next151 = add nuw i64 %index142, 64      ; 2 uses
  %i.ao = icmp eq i64 %index.next151, %n.vec140
  br i1 %i.ao, label %middle.block152, label %vector.body141, !llvm.loop !16

middle.block152:                                  ; preds = %vector.body141
  %cmp.n153 = icmp eq i64 %i.e, %n.vec140
  br i1 %cmp.n153, label %.preheader72.i, label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block152
  %min.epilog.iters.check158 = icmp eq i64 %n.mod.vf139, 0
  br i1 %min.epilog.iters.check158, label %.lr.ph.i.preheader, label %vec.epilog.ph159, !prof !20

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check157
  %vec.epilog.resume.val154 = phi i64 [ %n.vec140, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.mod.vf160 = and i64 %2, 7                    ; 2 uses
  %n.vec161 = sub i64 %i.e, %n.mod.vf160          ; 2 uses
  %i.ap = add i64 %i.c, %n.vec161
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph159
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
  %i.dh = add i64 %i.cy, %index                   ; 2 uses
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
  %5 = and i64 %2, 32
  %lcmp.mod.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit, label %.preheader75.epil.preheader

.preheader75.epil.preheader:                      ; preds = %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa, %.preheader75.preheader
  %.05782.epil.init = phi i64 [ 0, %.preheader75.preheader ], [ %i.gd, %_ZN5arrow4util8internal25ByteStreamSplitDecodeSimdIN5xsimd4fma3INS3_6sse4_2EEELi2EEEvPKhillPh.exit.loopexit170.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i64 %i.cx to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.gm = shl i64 %.05782.epil.init, 6
  %scevgep.epil = getelementptr i8, ptr %4, i64 %i.gm ; 2 uses
  %i.gn = shl nuw nsw i64 %.05782.epil.init, 5
  %i.go = getelementptr i8, ptr %0, i64 %i.gn     ; 2 uses
  %i.gp = load <32 x i8>, ptr %i.go, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 %3
  %i.gr = load <32 x i8>, ptr %i.gq, align 1, !tbaa !7, !noalias !37 ; 2 uses
  %i.gs = shufflevector <32 x i8> %i.gp, <32 x i8> %i.gr, <32 x i32> <i32 0, i32 32, i32 1, i32 33, i32 2, i32 34, i32 3, i32 35, i32 4, i32 36, i32 5, i32 37, i32 6, i32 38, i32 7, i32 39, i32 16, i32 48, i32 17, i32 49, i32 18, i32 50, i32 19, i32 51, i32 20, i32 52, i32 21, i32 53, i32 22, i32 54, i32 23, i32 55> ; 2 uses
  %i.gt = shufflevector <32 x i8> %i.gp, <32 x i8> %i.gr, <32 x i32> <i32 8, i32 40, i32 9, i32 41, i32 10, i32 42, i32 11, i32 43, i32 12, i32 44, i32 13, i32 45, i32 14, i32 46, i32 15, i32 47, i32 24, i32 56, i32 25, i32 57, i32 26, i32 58, i32 27, i32 59, i32 28, i32 60, i32 29, i32 61, i32 30, i32 62, i32 31, i32 63> ; 2 uses
  %i.gu = shufflevector <32 x i8> %i.gs, <32 x i8> %i.gt, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47>
  %i.gv = bitcast <32 x i8> %i.gs to <8 x i32>
  %i.gw = bitcast <32 x i8> %i.gt to <8 x i32>
  %i.gx = shufflevector <8 x i32> %i.gv, <8 x i32> %i.gw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <32 x i8> %i.gu, ptr %scevgep.epil, align 1, !tbaa !7
  %.sroa.8.64.scevgep.sroa_idx.epil = getelementptr inbounds nuw i8, ptr %scevgep.epil, i64 32
  store <8 x i32> %i.gx, ptr %.sroa.8.64.scevgep.sroa_idx.epil, align 1, !tbaa !7
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
  %n.vec156 = sub i64 %i.h, %n.mod.vf155          ; 2 uses
  %i.q = add i64 %i.c, %n.vec156
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph154
  %index158 = phi i64 [ 0, %vector.ph154 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.r = add i64 %i.c, %index158                  ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r       ; 4 uses
  %wide.load159 = load <8 x i8>, ptr %i.s, align 1, !tbaa !7, !alias.scope !43
  %i.t = getelementptr i8, ptr %i.s, i64 %3
  %wide.load160 = load <8 x i8>, ptr %i.t, align 1, !tbaa !7, !alias.scope !46
  %i.u = getelementptr i8, ptr %i.s, i64 %i.e
  %wide.load161 = load <8 x i8>, ptr %i.u, align 1, !tbaa !7, !alias.scope !48
  %i.v = getelementptr i8, ptr %i.s, i64 %i.f
  %wide.load162 = load <8 x i8>, ptr %i.v, align 1, !tbaa !7, !alias.scope !50
  %i.w = shl nsw i64 %i.r, 2
  %i.x = getelementptr inbounds i8, ptr %4, i64 %i.w
  %i.y = zext <8 x i8> %wide.load162 to <8 x i32>
  %i.z = shl nuw <8 x i32> %i.y, splat (i32 24)
  %i.aa = zext <8 x i8> %wide.load161 to <8 x i32>
  %i.ab = shl nuw nsw <8 x i32> %i.aa, splat (i32 16)
  %i.ac = zext <8 x i8> %wide.load160 to <8 x i32>
  %i.ad = shl nuw nsw <8 x i32> %i.ac, splat (i32 8)
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
  %i.ct = add i64 %i.ce, %index                   ; 2 uses
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
  %min.iters.check209 = icmp ult i64 %i.l, 20
  br i1 %min.iters.check209, label %.lr.ph.i.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.preheader.i
  %i.m = shl i64 %i.b, 7
  %scevgep159 = getelementptr i8, ptr %4, i64 %i.m ; 8 uses
  %i.n = shl i64 %2, 3
  %scevgep160 = getelementptr i8, ptr %4, i64 %i.n ; 8 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.c
  %scevgep161 = getelementptr i8, ptr %i.o, i64 %i.j
  %i.p = getelementptr i8, ptr %0, i64 %2
  %scevgep162 = getelementptr i8, ptr %i.p, i64 %i.j
  %i.q = getelementptr i8, ptr %0, i64 %i.c
  %scevgep163 = getelementptr i8, ptr %i.q, i64 %i.i
  %i.r = getelementptr i8, ptr %0, i64 %2
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.i
  %i.s = getelementptr i8, ptr %0, i64 %i.c
  %scevgep165 = getelementptr i8, ptr %i.s, i64 %i.h
  %i.t = getelementptr i8, ptr %0, i64 %2
  %scevgep166 = getelementptr i8, ptr %i.t, i64 %i.h
  %i.u = getelementptr i8, ptr %0, i64 %i.c
  %scevgep167 = getelementptr i8, ptr %i.u, i64 %i.g
  %i.v = getelementptr i8, ptr %0, i64 %2
  %scevgep168 = getelementptr i8, ptr %i.v, i64 %i.g
  %i.w = getelementptr i8, ptr %0, i64 %i.c
  %scevgep169 = getelementptr i8, ptr %i.w, i64 %i.f
  %i.x = getelementptr i8, ptr %0, i64 %2
  %scevgep170 = getelementptr i8, ptr %i.x, i64 %i.f
  %i.y = getelementptr i8, ptr %0, i64 %i.c
  %scevgep171 = getelementptr i8, ptr %i.y, i64 %i.e
  %i.z = getelementptr i8, ptr %0, i64 %2
  %scevgep172 = getelementptr i8, ptr %i.z, i64 %i.e
  %i.aa = getelementptr i8, ptr %0, i64 %3
  %scevgep173 = getelementptr i8, ptr %i.aa, i64 %i.c
  %i.ab = getelementptr i8, ptr %0, i64 %3
  %scevgep174 = getelementptr i8, ptr %i.ab, i64 %2
end_hunk_0
begin_hunk_1_@_ZN5arrow4util8internal25ByteStreamSplitEncodeAvx2ILi2EEEvPKhilPh:bb.a
  %i.e = icmp slt i64 %i.d, %2
  br i1 %i.e, label %iter.check77, label %.preheader98.i.i

iter.check77:                                     ; preds = %bb.b
  %i.f = sub i64 %2, %i.d                         ; 6 uses
  %min.iters.check59 = icmp ult i64 %i.f, 8
  br i1 %min.iters.check59, label %.preheader99.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check77
  %i.g = xor i64 %i.d, -1
  %i.h = add i64 %2, %i.g                         ; 3 uses
  %i.i = shl i64 %i.c, 5                          ; 2 uses
  %scevgep36 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %mul.result = shl i64 %i.h, 1
  %i.j = getelementptr i8, ptr %scevgep36, i64 %mul.result
  %i.k = icmp ult ptr %i.j, %scevgep36
  %i.l = getelementptr i8, ptr %0, i64 %i.i
  %scevgep37 = getelementptr i8, ptr %i.l, i64 1  ; 2 uses
  %mul.result39 = shl i64 %i.h, 1
  %mul.overflow40 = icmp slt i64 %i.h, 0
  %i.m = getelementptr i8, ptr %scevgep37, i64 %mul.result39
  %i.n = icmp ult ptr %i.m, %scevgep37
  %i.o = or i1 %i.n, %mul.overflow40
  %i.p = or i1 %i.k, %i.o
  br i1 %i.p, label %.preheader99.i.i.preheader, label %vector.memcheck41

vector.memcheck41:                                ; preds = %vector.scevcheck
  %scevgep42 = getelementptr i8, ptr %3, i64 %i.d ; 2 uses
  %scevgep43 = getelementptr i8, ptr %3, i64 %2   ; 2 uses
  %i.q = getelementptr i8, ptr %3, i64 %2
  %scevgep44 = getelementptr i8, ptr %i.q, i64 %i.d ; 2 uses
  %i.r = shl i64 %2, 1                            ; 2 uses
  %scevgep45 = getelementptr i8, ptr %3, i64 %i.r ; 2 uses
  %i.s = shl i64 %i.c, 5
  %scevgep46 = getelementptr i8, ptr %0, i64 %i.s ; 2 uses
  %scevgep47 = getelementptr i8, ptr %0, i64 %i.r ; 2 uses
  %bound048 = icmp ult ptr %scevgep42, %scevgep45
  %bound149 = icmp ult ptr %scevgep44, %scevgep43
  %found.conflict50 = and i1 %bound048, %bound149
  %bound051 = icmp ult ptr %scevgep42, %scevgep47
  %bound152 = icmp ult ptr %scevgep46, %scevgep43
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %found.conflict50, %found.conflict53
  %bound055 = icmp ult ptr %scevgep44, %scevgep47
  %bound156 = icmp ult ptr %scevgep46, %scevgep45
  %found.conflict57 = and i1 %bound055, %bound156
  %conflict.rdx58 = or i1 %conflict.rdx54, %found.conflict57
  br i1 %conflict.rdx58, label %.preheader99.i.i.preheader, label %vector.main.loop.iter.check60

vector.main.loop.iter.check60:                    ; preds = %vector.memcheck41
  %min.iters.check61 = icmp ult i64 %i.f, 64
  br i1 %min.iters.check61, label %vec.epilog.ph81, label %vector.ph62

vector.ph62:                                      ; preds = %vector.main.loop.iter.check60
  %n.mod.vf63 = and i64 %i.f, 56
  %n.vec64 = and i64 %i.f, -64                    ; 4 uses
  %i.t = add i64 %i.d, %n.vec64
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph62
  %index66 = phi i64 [ 0, %vector.ph62 ], [ %index.next73, %vector.body65 ] ; 2 uses
  %i.u = add i64 %i.d, %index66                   ; 3 uses
  %i.v = shl nsw i64 %i.u, 1
  %i.w = shl i64 %i.u, 1
  %i.x = getelementptr i8, ptr %0, i64 %i.v
  %i.y = getelementptr i8, ptr %0, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 64
  %i.aa = getelementptr i8, ptr %3, i64 %i.u      ; 3 uses
  %wide.vec67 = load <64 x i8>, ptr %i.x, align 1, !tbaa !7, !alias.scope !129 ; 2 uses
  %strided.vec68 = shufflevector <64 x i8> %wide.vec67, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec69 = shufflevector <64 x i8> %wide.vec67, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %wide.vec70 = load <64 x i8>, ptr %i.z, align 1, !tbaa !7, !alias.scope !129 ; 2 uses
  %strided.vec71 = shufflevector <64 x i8> %wide.vec70, <64 x i8> poison, <32 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30, i32 32, i32 34, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62>
  %strided.vec72 = shufflevector <64 x i8> %wide.vec70, <64 x i8> poison, <32 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43, i32 45, i32 47, i32 49, i32 51, i32 53, i32 55, i32 57, i32 59, i32 61, i32 63>
  %i.ab = getelementptr i8, ptr %i.aa, i64 32
  store <32 x i8> %strided.vec68, ptr %i.aa, align 1, !tbaa !7, !alias.scope !132, !noalias !134
  store <32 x i8> %strided.vec71, ptr %i.ab, align 1, !tbaa !7, !alias.scope !132, !noalias !134
  %i.ac = getelementptr i8, ptr %i.aa, i64 %2     ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 32
  store <32 x i8> %strided.vec69, ptr %i.ac, align 1, !tbaa !7, !alias.scope !136, !noalias !129
  store <32 x i8> %strided.vec72, ptr %i.ad, align 1, !tbaa !7, !alias.scope !136, !noalias !129
  %index.next73 = add nuw i64 %index66, 64        ; 2 uses
  %i.ae = icmp eq i64 %index.next73, %n.vec64
  br i1 %i.ae, label %middle.block74, label %vector.body65, !llvm.loop !137

middle.block74:                                   ; preds = %vector.body65
  %cmp.n75 = icmp eq i64 %i.f, %n.vec64
  br i1 %cmp.n75, label %.preheader98.i.i, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block74
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf63, 0
  br i1 %min.epilog.iters.check80, label %.preheader99.i.i.preheader, label %vec.epilog.ph81, !prof !20

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
  %i.dc = add i64 %i.ct, %index                   ; 3 uses
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
  %i.do = add i64 %i.ct, %index29                 ; 2 uses
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
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %scevgep85, %scevgep90
  %bound1113 = icmp ult ptr %scevgep89, %scevgep86
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %scevgep85, %scevgep92
  %bound1117 = icmp ult ptr %scevgep91, %scevgep86
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  %bound0120 = icmp ult ptr %scevgep87, %scevgep90
  %bound1121 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %scevgep87, %scevgep92
  %bound1125 = icmp ult ptr %scevgep91, %scevgep88
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  %bound0128 = icmp ult ptr %scevgep89, %scevgep92
  %bound1129 = icmp ult ptr %scevgep91, %scevgep90
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx131 = or i1 %conflict.rdx127, %found.conflict130
  br i1 %conflict.rdx131, label %.preheader101.i.i.preheader, label %vector.main.loop.iter.check133

vector.main.loop.iter.check133:                   ; preds = %vector.memcheck82
  %min.iters.check134 = icmp ult i64 %i.j, 16
  br i1 %min.iters.check134, label %vec.epilog.ph153, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check133
  %n.mod.vf136 = and i64 %2, 15                   ; 3 uses
  %n.vec137 = sub nuw i64 %i.j, %n.mod.vf136      ; 3 uses
  %i.ah = add i64 %i.h, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph135
  %index139 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body138 ] ; 2 uses
  %i.ai = add i64 %i.h, %index139                 ; 2 uses
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %i.al = getelementptr i8, ptr %3, i64 %i.ai     ; 4 uses
  %wide.vec140 = load <64 x i8>, ptr %i.ak, align 1, !tbaa !7, !alias.scope !154 ; 4 uses
  %strided.vec141 = shufflevector <64 x i8> %wide.vec140, <64 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec142 = shufflevector <64 x i8> %wide.vec140, <64 x i8> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec143 = shufflevector <64 x i8> %wide.vec140, <64 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec144 = shufflevector <64 x i8> %wide.vec140, <64 x i8> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  store <16 x i8> %strided.vec141, ptr %i.al, align 1, !tbaa !7, !alias.scope !157, !noalias !159
  %i.am = getelementptr i8, ptr %i.al, i64 %2
  store <16 x i8> %strided.vec142, ptr %i.am, align 1, !tbaa !7, !alias.scope !163, !noalias !164
  %i.an = getelementptr i8, ptr %i.al, i64 %i.c
  store <16 x i8> %strided.vec143, ptr %i.an, align 1, !tbaa !7, !alias.scope !165, !noalias !166
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.e
  store <16 x i8> %strided.vec144, ptr %i.ao, align 1, !tbaa !7, !alias.scope !167, !noalias !154
  %index.next145 = add nuw i64 %index139, 16      ; 2 uses
  %i.ap = icmp eq i64 %index.next145, %n.vec137
  br i1 %i.ap, label %middle.block146, label %vector.body138, !llvm.loop !168

middle.block146:                                  ; preds = %vector.body138
  %cmp.n147 = icmp eq i64 %n.mod.vf136, 0
  br i1 %cmp.n147, label %.preheader100.i.i, label %vec.epilog.iter.check151

vec.epilog.iter.check151:                         ; preds = %middle.block146
  %min.epilog.iters.check152 = icmp samesign ult i64 %n.mod.vf136, 4
  br i1 %min.epilog.iters.check152, label %.preheader101.i.i.preheader, label %vec.epilog.ph153, !prof !169

vec.epilog.ph153:                                 ; preds = %vector.main.loop.iter.check133, %vec.epilog.iter.check151
  %vec.epilog.resume.val148 = phi i64 [ %n.vec137, %vec.epilog.iter.check151 ], [ 0, %vector.main.loop.iter.check133 ]
  %n.mod.vf154 = and i64 %2, 3                    ; 2 uses
  %n.vec155 = sub i64 %i.j, %n.mod.vf154          ; 2 uses
  %i.aq = add i64 %i.h, %n.vec155
  br label %vec.epilog.vector.body156

vec.epilog.vector.body156:                        ; preds = %vec.epilog.vector.body156, %vec.epilog.ph153
  %index157 = phi i64 [ %vec.epilog.resume.val148, %vec.epilog.ph153 ], [ %index.next163, %vec.epilog.vector.body156 ] ; 2 uses
  %i.ar = add i64 %i.h, %index157                 ; 2 uses
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %3, i64 %i.ar     ; 4 uses
  %wide.vec158 = load <16 x i8>, ptr %i.at, align 1, !tbaa !7, !alias.scope !154 ; 4 uses
  %strided.vec159 = shufflevector <16 x i8> %wide.vec158, <16 x i8> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec160 = shufflevector <16 x i8> %wide.vec158, <16 x i8> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec161 = shufflevector <16 x i8> %wide.vec158, <16 x i8> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec162 = shufflevector <16 x i8> %wide.vec158, <16 x i8> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  store <4 x i8> %strided.vec159, ptr %i.au, align 1, !tbaa !7, !alias.scope !157, !noalias !159
  %i.av = getelementptr i8, ptr %i.au, i64 %2
  store <4 x i8> %strided.vec160, ptr %i.av, align 1, !tbaa !7, !alias.scope !163, !noalias !164
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.c
  store <4 x i8> %strided.vec161, ptr %i.aw, align 1, !tbaa !7, !alias.scope !165, !noalias !166
  %i.ax = getelementptr i8, ptr %i.au, i64 %i.e
  store <4 x i8> %strided.vec162, ptr %i.ax, align 1, !tbaa !7, !alias.scope !167, !noalias !154
  %index.next163 = add nuw i64 %index157, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next163, %n.vec155
  br i1 %i.ay, label %vec.epilog.middle.block164, label %vec.epilog.vector.body156, !llvm.loop !170

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
  %i.ds = add i64 %i.dj, %index                   ; 2 uses
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
  %i.eb = add i64 %i.dj, %index60                 ; 2 uses
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
  %i.aa = or i1 %i.z, %mul.overflow318
  %i.ab = getelementptr i8, ptr %0, i64 %i.u
  %scevgep319 = getelementptr i8, ptr %i.ab, i64 2 ; 2 uses
  %mul.result321 = shl i64 %i.t, 3
  %i.ac = getelementptr i8, ptr %scevgep319, i64 %mul.result321
  %i.ad = icmp ult ptr %i.ac, %scevgep319
  %i.ae = getelementptr i8, ptr %0, i64 %i.u
  %scevgep323 = getelementptr i8, ptr %i.ae, i64 3 ; 2 uses
  %mul.result325 = shl i64 %i.t, 3
  %i.af = getelementptr i8, ptr %scevgep323, i64 %mul.result325
  %i.ag = icmp ult ptr %i.af, %scevgep323
  %i.ah = getelementptr i8, ptr %0, i64 %i.u
  %scevgep327 = getelementptr i8, ptr %i.ah, i64 4 ; 2 uses
  %mul.result329 = shl i64 %i.t, 3
  %i.ai = getelementptr i8, ptr %scevgep327, i64 %mul.result329
  %i.aj = icmp ult ptr %i.ai, %scevgep327
  %i.ak = getelementptr i8, ptr %0, i64 %i.u
  %scevgep331 = getelementptr i8, ptr %i.ak, i64 5 ; 2 uses
  %mul.result333 = shl i64 %i.t, 3
  %i.al = getelementptr i8, ptr %scevgep331, i64 %mul.result333
  %i.am = icmp ult ptr %i.al, %scevgep331
  %i.an = getelementptr i8, ptr %0, i64 %i.u
  %scevgep335 = getelementptr i8, ptr %i.an, i64 6 ; 2 uses
  %mul.result337 = shl i64 %i.t, 3
  %i.ao = getelementptr i8, ptr %scevgep335, i64 %mul.result337
  %i.ap = icmp ult ptr %i.ao, %scevgep335
  %i.aq = getelementptr i8, ptr %0, i64 %i.u
  %scevgep339 = getelementptr i8, ptr %i.aq, i64 7 ; 2 uses
  %mul.result341 = shl i64 %i.t, 3
  %i.ar = getelementptr i8, ptr %scevgep339, i64 %mul.result341
end_hunk_1
