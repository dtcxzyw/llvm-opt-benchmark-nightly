Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/binaryop_x86_avx512bf16?download=true
inline.NumInlined: 199
inline.NumDeleted: 137
loop-unroll.NumRuntimeUnrolled: 194
loop-unroll.NumUnrolled: 194
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  switch i32 %7, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit [
    i32 0, label %bb.b
    i32 1, label %bb.ac
    i32 2, label %bb.bd
    i32 3, label %bb.ce
    i32 4, label %bb.df
    i32 5, label %bb.eg
    i32 6, label %bb.fh
    i32 7, label %bb.gl
    i32 8, label %bb.hm
    i32 9, label %bb.ik
    i32 10, label %bb.jr
    i32 11, label %bb.lb
    i32 12, label %bb.ml
    i32 13, label %bb.nm
    i32 14, label %bb.on
    i32 15, label %bb.po
    i32 16, label %bb.qp
    i32 17, label %bb.rn
    i32 18, label %bb.so
  ]

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated98.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.a = mul i32 %.sroa.speculated.i, %.sroa.speculated98.i ; 48 uses
  %i.b = icmp eq i32 %5, %6
  br i1 %i.b, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %3, %4
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = icmp sgt i32 %i.a, 15
  br i1 %i.d, label %.lr.ph.i.i.preheader, label %.preheader63.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.e = add nsw i32 %i.a, -16                    ; 2 uses
  %i.f = lshr i32 %i.e, 4                         ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 1                  ; 2 uses
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter11028 = and i32 %i.g, 536870910
  br label %.lr.ph.i.i

.preheader63.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  %i.i = and i32 %i.e, 16
  %lcmp.mod11023.not.not = icmp eq i32 %i.i, 0
  br i1 %lcmp.mod11023.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader63.loopexit.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader63.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.067.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.ak, %.preheader63.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03466.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.preheader ], [ %i.al, %.preheader63.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04264.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i.preheader ], [ %i.am, %.preheader63.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod11027 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod11027)
  %i.j = load <16 x bfloat>, ptr %.067.i.i.epil.init, align 1, !tbaa !555
  %i.k = fpext fast <16 x bfloat> %i.j to <16 x float>
  %i.l = load <16 x bfloat>, ptr %.03466.i.i.epil.init, align 1, !tbaa !555
  %i.m = fpext fast <16 x bfloat> %i.l to <16 x float>
  %i.n = fadd fast <16 x float> %i.m, %i.k
  %i.o = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.n)
  store <16 x bfloat> %i.o, ptr %.04264.i.i.epil.init, align 1, !tbaa !555
  %i.p = getelementptr inbounds nuw i8, ptr %.067.i.i.epil.init, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.03466.i.i.epil.init, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.04264.i.i.epil.init, i64 32
  br label %.preheader63.loopexit.i.i

.preheader63.loopexit.i.i:                        ; preds = %.preheader63.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.lcssa9249 = phi ptr [ %i.ak, %.preheader63.loopexit.i.i.unr-lcssa ], [ %i.p, %.lr.ph.i.i.epil.preheader ]
  %.lcssa9248 = phi ptr [ %i.al, %.preheader63.loopexit.i.i.unr-lcssa ], [ %i.q, %.lr.ph.i.i.epil.preheader ]
  %.lcssa9247 = phi ptr [ %i.am, %.preheader63.loopexit.i.i.unr-lcssa ], [ %i.r, %.lr.ph.i.i.epil.preheader ]
  %i.s = and i32 %i.a, 2147483632
  br label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %.preheader63.loopexit.i.i, %bb.d
  %.042.lcssa.i.i = phi ptr [ %2, %bb.d ], [ %.lcssa9247, %.preheader63.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i = phi i32 [ 0, %bb.d ], [ %i.s, %.preheader63.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i = phi ptr [ %1, %bb.d ], [ %.lcssa9248, %.preheader63.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %0, %bb.d ], [ %.lcssa9249, %.preheader63.loopexit.i.i ] ; 2 uses
  %i.t = or disjoint i32 %.038.lcssa.i.i, 7
  %i.u = icmp slt i32 %i.t, %i.a
  br i1 %i.u, label %.lr.ph75.i.i, label %.preheader62.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.067.i.i = phi ptr [ %0, %.lr.ph.i.i.preheader.new ], [ %i.ak, %.lr.ph.i.i ] ; 3 uses
  %.03466.i.i = phi ptr [ %1, %.lr.ph.i.i.preheader.new ], [ %i.al, %.lr.ph.i.i ] ; 3 uses
  %.04264.i.i = phi ptr [ %2, %.lr.ph.i.i.preheader.new ], [ %i.am, %.lr.ph.i.i ] ; 3 uses
  %niter11029 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter11029.next.1, %.lr.ph.i.i ]
  %i.v = load <16 x bfloat>, ptr %.067.i.i, align 1, !tbaa !555
  %i.w = fpext fast <16 x bfloat> %i.v to <16 x float>
  %i.x = load <16 x bfloat>, ptr %.03466.i.i, align 1, !tbaa !555
  %i.y = fpext fast <16 x bfloat> %i.x to <16 x float>
  %i.z = fadd fast <16 x float> %i.y, %i.w
  %i.aa = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.z)
  store <16 x bfloat> %i.aa, ptr %.04264.i.i, align 1, !tbaa !555
  %i.ab = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.03466.i.i, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.04264.i.i, i64 32
  %i.ae = load <16 x bfloat>, ptr %i.ab, align 1, !tbaa !555
  %i.af = fpext fast <16 x bfloat> %i.ae to <16 x float>
  %i.ag = load <16 x bfloat>, ptr %i.ac, align 1, !tbaa !555
  %i.ah = fpext fast <16 x bfloat> %i.ag to <16 x float>
  %i.ai = fadd fast <16 x float> %i.ah, %i.af
  %i.aj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ai)
  store <16 x bfloat> %i.aj, ptr %i.ad, align 1, !tbaa !555
  %i.ak = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03466.i.i, i64 64 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04264.i.i, i64 64 ; 3 uses
  %niter11029.next.1 = add i32 %niter11029, 2     ; 2 uses
  %niter11029.ncmp.1.not = icmp eq i32 %niter11029.next.1, %unroll_iter11028
  br i1 %niter11029.ncmp.1.not, label %.preheader63.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !9

.preheader62.i.i:                                 ; preds = %.lr.ph75.i.i, %.preheader63.i.i
  %.143.lcssa.i.i = phi ptr [ %.042.lcssa.i.i, %.preheader63.i.i ], [ %i.ax, %.lr.ph75.i.i ] ; 2 uses
  %.139.lcssa.i.i = phi i32 [ %.038.lcssa.i.i, %.preheader63.i.i ], [ %i.ay, %.lr.ph75.i.i ] ; 3 uses
  %.135.lcssa.i.i = phi ptr [ %.034.lcssa.i.i, %.preheader63.i.i ], [ %i.aw, %.lr.ph75.i.i ] ; 2 uses
  %.1.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader63.i.i ], [ %i.av, %.lr.ph75.i.i ] ; 2 uses
  %i.an = or disjoint i32 %.139.lcssa.i.i, 3
  %i.ao = icmp slt i32 %i.an, %i.a
  br i1 %i.ao, label %.lr.ph84.i.i, label %.preheader.i.i

.lr.ph75.i.i:                                     ; preds = %.preheader63.i.i, %.lr.ph75.i.i
  %.174.i.i = phi ptr [ %i.av, %.lr.ph75.i.i ], [ %.0.lcssa.i.i, %.preheader63.i.i ] ; 2 uses
  %.13573.i.i = phi ptr [ %i.aw, %.lr.ph75.i.i ], [ %.034.lcssa.i.i, %.preheader63.i.i ] ; 2 uses
  %.13972.i.i = phi i32 [ %i.ay, %.lr.ph75.i.i ], [ %.038.lcssa.i.i, %.preheader63.i.i ]
  %.14371.i.i = phi ptr [ %i.ax, %.lr.ph75.i.i ], [ %.042.lcssa.i.i, %.preheader63.i.i ] ; 2 uses
  %i.ap = load <8 x bfloat>, ptr %.174.i.i, align 1, !tbaa !555
  %i.aq = fpext fast <8 x bfloat> %i.ap to <8 x float>
  %i.ar = load <8 x bfloat>, ptr %.13573.i.i, align 1, !tbaa !555
  %i.as = fpext fast <8 x bfloat> %i.ar to <8 x float>
  %i.at = fadd fast <8 x float> %i.as, %i.aq
  %i.au = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.at)
  store <8 x bfloat> %i.au, ptr %.14371.i.i, align 1, !tbaa !555
  %i.av = getelementptr inbounds nuw i8, ptr %.174.i.i, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.13573.i.i, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.14371.i.i, i64 16 ; 2 uses
  %i.ay = add nuw nsw i32 %.13972.i.i, 8          ; 3 uses
  %i.az = or disjoint i32 %i.ay, 7
  %i.ba = icmp slt i32 %i.az, %i.a
  br i1 %i.ba, label %.lr.ph75.i.i, label %.preheader62.i.i, !llvm.loop !10

.preheader.i.i:                                   ; preds = %.lr.ph84.i.i, %.preheader62.i.i
  %.244.lcssa.i.i = phi ptr [ %.143.lcssa.i.i, %.preheader62.i.i ], [ %i.ec, %.lr.ph84.i.i ] ; 7 uses
  %.240.lcssa.i.i = phi i32 [ %.139.lcssa.i.i, %.preheader62.i.i ], [ %i.ed, %.lr.ph84.i.i ] ; 6 uses
  %.236.lcssa.i.i = phi ptr [ %.135.lcssa.i.i, %.preheader62.i.i ], [ %i.eb, %.lr.ph84.i.i ] ; 7 uses
  %.2.lcssa.i.i = phi ptr [ %.1.lcssa.i.i, %.preheader62.i.i ], [ %i.ea, %.lr.ph84.i.i ] ; 7 uses
  %.236.lcssa.i.i9123 = ptrtoaddr ptr %.236.lcssa.i.i to i64
  %.244.lcssa.i.i9124 = ptrtoaddr ptr %.2.lcssa.i.i to i64
  %.2.lcssa.i.i9125 = ptrtoaddr ptr %.244.lcssa.i.i to i64 ; 2 uses
  %i.bb = icmp slt i32 %.240.lcssa.i.i, %i.a
  br i1 %i.bb, label %iter.check9145, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check9145:                                   ; preds = %.preheader.i.i
  %i.bc = xor i32 %.240.lcssa.i.i, -1
  %i.bd = add i32 %i.a, %i.bc                     ; 3 uses
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.be, 1                ; 5 uses
  %min.iters.check9126 = icmp ult i32 %i.bd, 7
  br i1 %min.iters.check9126, label %.lr.ph93.i.i.preheader, label %vector.memcheck9127

vector.memcheck9127:                              ; preds = %iter.check9145
  %i.bg = sub i64 %.244.lcssa.i.i9124, %.2.lcssa.i.i9125
  %diff.check9128 = icmp ugt i64 %i.bg, -64
  %i.bh = sub i64 %.236.lcssa.i.i9123, %.2.lcssa.i.i9125
  %diff.check9129 = icmp ugt i64 %i.bh, -64
  %conflict.rdx9130 = or i1 %diff.check9128, %diff.check9129
  br i1 %conflict.rdx9130, label %.lr.ph93.i.i.preheader, label %vector.main.loop.iter.check9131

vector.main.loop.iter.check9131:                  ; preds = %vector.memcheck9127
  %min.iters.check9132 = icmp ult i32 %i.bd, 31
  br i1 %min.iters.check9132, label %vec.epilog.ph9149, label %vector.ph9133

vector.ph9133:                                    ; preds = %vector.main.loop.iter.check9131
  %i.bi = and i64 %i.bf, 24
  %n.vec9134 = and i64 %i.bf, 8589934560          ; 5 uses
  %i.bj = shl nuw nsw i64 %n.vec9134, 1           ; 3 uses
  %i.bk = getelementptr i8, ptr %.2.lcssa.i.i, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.236.lcssa.i.i, i64 %i.bj
  %i.bm = trunc i64 %n.vec9134 to i32
  %i.bn = add i32 %.240.lcssa.i.i, %i.bm
  %i.bo = getelementptr i8, ptr %.244.lcssa.i.i, i64 %i.bj
  br label %vector.body9135

vector.body9135:                                  ; preds = %vector.ph9133, %vector.body9135
  %index9136 = phi i64 [ 0, %vector.ph9133 ], [ %index.next9142, %vector.body9135 ] ; 2 uses
  %i.bp = shl i64 %index9136, 1                   ; 3 uses
  %next.gep9137 = getelementptr i8, ptr %.2.lcssa.i.i, i64 %i.bp
  %next.gep9138 = getelementptr i8, ptr %.236.lcssa.i.i, i64 %i.bp
  %next.gep9139 = getelementptr i8, ptr %.244.lcssa.i.i, i64 %i.bp
  %wide.load9140 = load <32 x i16>, ptr %next.gep9137, align 2, !tbaa !558
  %i.bq = zext <32 x i16> %wide.load9140 to <32 x i32>
  %i.br = shl nuw <32 x i32> %i.bq, splat (i32 16)
  %i.bs = bitcast <32 x i32> %i.br to <32 x float>
  %wide.load9141 = load <32 x i16>, ptr %next.gep9138, align 2, !tbaa !558
  %i.bt = zext <32 x i16> %wide.load9141 to <32 x i32>
  %i.bu = shl nuw <32 x i32> %i.bt, splat (i32 16)
  %i.bv = bitcast <32 x i32> %i.bu to <32 x float>
  %i.bw = fadd fast <32 x float> %i.bv, %i.bs
  %i.bx = bitcast <32 x float> %i.bw to <32 x i32>
  %i.by = lshr <32 x i32> %i.bx, splat (i32 16)
  %i.bz = trunc nuw <32 x i32> %i.by to <32 x i16>
  store <32 x i16> %i.bz, ptr %next.gep9139, align 2, !tbaa !558
  %index.next9142 = add nuw i64 %index9136, 32    ; 2 uses
  %i.ca = icmp eq i64 %index.next9142, %n.vec9134
  br i1 %i.ca, label %middle.block9143, label %vector.body9135, !llvm.loop !11

middle.block9143:                                 ; preds = %vector.body9135
  %cmp.n9144 = icmp eq i64 %i.bf, %n.vec9134
  br i1 %cmp.n9144, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check9146

vec.epilog.iter.check9146:                        ; preds = %middle.block9143
  %min.epilog.iters.check9148 = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check9148, label %.lr.ph93.i.i.preheader, label %vec.epilog.ph9149, !prof !561

vec.epilog.ph9149:                                ; preds = %vector.main.loop.iter.check9131, %vec.epilog.iter.check9146
  %vec.epilog.resume.val9150 = phi i64 [ %n.vec9134, %vec.epilog.iter.check9146 ], [ 0, %vector.main.loop.iter.check9131 ]
  %n.vec9151 = and i64 %i.bf, 8589934584          ; 4 uses
  %i.cb = shl nuw nsw i64 %n.vec9151, 1           ; 3 uses
  %i.cc = getelementptr i8, ptr %.2.lcssa.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %.236.lcssa.i.i, i64 %i.cb
  %i.ce = trunc i64 %n.vec9151 to i32
  %i.cf = add i32 %.240.lcssa.i.i, %i.ce
  %i.cg = getelementptr i8, ptr %.244.lcssa.i.i, i64 %i.cb
  br label %vec.epilog.vector.body9152

vec.epilog.vector.body9152:                       ; preds = %vec.epilog.vector.body9152, %vec.epilog.ph9149
  %index9153 = phi i64 [ %vec.epilog.resume.val9150, %vec.epilog.ph9149 ], [ %index.next9159, %vec.epilog.vector.body9152 ] ; 2 uses
  %i.ch = shl i64 %index9153, 1                   ; 3 uses
  %next.gep9154 = getelementptr i8, ptr %.2.lcssa.i.i, i64 %i.ch
  %next.gep9155 = getelementptr i8, ptr %.236.lcssa.i.i, i64 %i.ch
  %next.gep9156 = getelementptr i8, ptr %.244.lcssa.i.i, i64 %i.ch
  %wide.load9157 = load <8 x i16>, ptr %next.gep9154, align 2, !tbaa !558
  %i.ci = zext <8 x i16> %wide.load9157 to <8 x i32>
  %i.cj = shl nuw <8 x i32> %i.ci, splat (i32 16)
  %i.ck = bitcast <8 x i32> %i.cj to <8 x float>
  %wide.load9158 = load <8 x i16>, ptr %next.gep9155, align 2, !tbaa !558
  %i.cl = zext <8 x i16> %wide.load9158 to <8 x i32>
  %i.cm = shl nuw <8 x i32> %i.cl, splat (i32 16)
  %i.cn = bitcast <8 x i32> %i.cm to <8 x float>
  %i.co = fadd fast <8 x float> %i.cn, %i.ck
  %i.cp = bitcast <8 x float> %i.co to <8 x i32>
  %i.cq = lshr <8 x i32> %i.cp, splat (i32 16)
  %i.cr = trunc nuw <8 x i32> %i.cq to <8 x i16>
  store <8 x i16> %i.cr, ptr %next.gep9156, align 2, !tbaa !558
  %index.next9159 = add nuw i64 %index9153, 8     ; 2 uses
  %i.cs = icmp eq i64 %index.next9159, %n.vec9151
  br i1 %i.cs, label %vec.epilog.middle.block9160, label %vec.epilog.vector.body9152, !llvm.loop !12

vec.epilog.middle.block9160:                      ; preds = %vec.epilog.vector.body9152
  %cmp.n9161 = icmp eq i64 %i.bf, %n.vec9151
  br i1 %cmp.n9161, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i.preheader

.lr.ph93.i.i.preheader:                           ; preds = %iter.check9145, %vector.memcheck9127, %vec.epilog.iter.check9146, %vec.epilog.middle.block9160
  %.392.i.i.ph = phi ptr [ %.2.lcssa.i.i, %iter.check9145 ], [ %.2.lcssa.i.i, %vector.memcheck9127 ], [ %i.bk, %vec.epilog.iter.check9146 ], [ %i.cc, %vec.epilog.middle.block9160 ] ; 3 uses
  %.33791.i.i.ph = phi ptr [ %.236.lcssa.i.i, %iter.check9145 ], [ %.236.lcssa.i.i, %vector.memcheck9127 ], [ %i.bl, %vec.epilog.iter.check9146 ], [ %i.cd, %vec.epilog.middle.block9160 ] ; 3 uses
  %.34190.i.i.ph = phi i32 [ %.240.lcssa.i.i, %iter.check9145 ], [ %.240.lcssa.i.i, %vector.memcheck9127 ], [ %i.bn, %vec.epilog.iter.check9146 ], [ %i.cf, %vec.epilog.middle.block9160 ] ; 4 uses
  %.34589.i.i.ph = phi ptr [ %.244.lcssa.i.i, %iter.check9145 ], [ %.244.lcssa.i.i, %vector.memcheck9127 ], [ %i.bo, %vec.epilog.iter.check9146 ], [ %i.cg, %vec.epilog.middle.block9160 ] ; 3 uses
  %i.ct = sub i32 %i.a, %.34190.i.i.ph
  %.neg11092 = add i32 %.34190.i.i.ph, 1
  %xtraiter11030 = and i32 %i.ct, 1
  %lcmp.mod11031.not = icmp eq i32 %xtraiter11030, 0
  br i1 %lcmp.mod11031.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader
  %i.cu = getelementptr inbounds nuw i8, ptr %.392.i.i.ph, i64 2
  %i.cv = load i16, ptr %.392.i.i.ph, align 2, !tbaa !558
  %i.cw = zext i16 %i.cv to i32
  %i.cx = shl nuw i32 %i.cw, 16
  %i.cy = bitcast i32 %i.cx to float
  %i.cz = getelementptr inbounds nuw i8, ptr %.33791.i.i.ph, i64 2
  %i.da = load i16, ptr %.33791.i.i.ph, align 2, !tbaa !558
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = bitcast i32 %i.dc to float
  %i.de = fadd fast float %i.dd, %i.cy
  %i.df = bitcast float %i.de to i32
  %i.dg = lshr i32 %i.df, 16
  %i.dh = trunc nuw i32 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %.34589.i.i.ph, i64 2
  store i16 %i.dh, ptr %.34589.i.i.ph, align 2, !tbaa !558
  %i.dj = add nuw nsw i32 %.34190.i.i.ph, 1
  br label %.lr.ph93.i.i.prol.loopexit

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader
  %.392.i.i.unr = phi ptr [ %.392.i.i.ph, %.lr.ph93.i.i.preheader ], [ %i.cu, %.lr.ph93.i.i.prol ]
  %.33791.i.i.unr = phi ptr [ %.33791.i.i.ph, %.lr.ph93.i.i.preheader ], [ %i.cz, %.lr.ph93.i.i.prol ]
  %.34190.i.i.unr = phi i32 [ %.34190.i.i.ph, %.lr.ph93.i.i.preheader ], [ %i.dj, %.lr.ph93.i.i.prol ]
  %.34589.i.i.unr = phi ptr [ %.34589.i.i.ph, %.lr.ph93.i.i.preheader ], [ %i.di, %.lr.ph93.i.i.prol ]
  %i.dk = icmp eq i32 %i.a, %.neg11092
  br i1 %i.dk, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i

.lr.ph84.i.i:                                     ; preds = %.preheader62.i.i, %.lr.ph84.i.i
  %.283.i.i = phi ptr [ %i.ea, %.lr.ph84.i.i ], [ %.1.lcssa.i.i, %.preheader62.i.i ] ; 2 uses
  %.23682.i.i = phi ptr [ %i.eb, %.lr.ph84.i.i ], [ %.135.lcssa.i.i, %.preheader62.i.i ] ; 2 uses
  %.24081.i.i = phi i32 [ %i.ed, %.lr.ph84.i.i ], [ %.139.lcssa.i.i, %.preheader62.i.i ]
  %.24480.i.i = phi ptr [ %i.ec, %.lr.ph84.i.i ], [ %.143.lcssa.i.i, %.preheader62.i.i ] ; 2 uses
  %i.dl = load i64, ptr %.283.i.i, align 1, !tbaa !555
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
  %i.dn = bitcast <2 x i64> %i.dm to <8 x i16>
  %i.do = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dp = bitcast <8 x i16> %i.do to <4 x float>
  %i.dq = load i64, ptr %.23682.i.i, align 1, !tbaa !555
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = bitcast <2 x i64> %i.dr to <8 x i16>
  %i.dt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.du = bitcast <8 x i16> %i.dt to <4 x float>
  %i.dv = fadd fast <4 x float> %i.du, %i.dp
  %i.dw = shufflevector <4 x float> %i.dv, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dw)
  %i.dy = bitcast <8 x bfloat> %i.dx to <2 x i64>
  %i.dz = extractelement <2 x i64> %i.dy, i64 0
  store i64 %i.dz, ptr %.24480.i.i, align 1, !tbaa !555
  %i.ea = getelementptr inbounds nuw i8, ptr %.283.i.i, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.23682.i.i, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.24480.i.i, i64 8 ; 2 uses
  %i.ed = add nuw nsw i32 %.24081.i.i, 4          ; 3 uses
  %i.ee = or disjoint i32 %i.ed, 3
  %i.ef = icmp slt i32 %i.ee, %i.a
  br i1 %i.ef, label %.lr.ph84.i.i, label %.preheader.i.i, !llvm.loop !13

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %.392.i.i = phi ptr [ %i.ev, %.lr.ph93.i.i ], [ %.392.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 3 uses
  %.33791.i.i = phi ptr [ %i.fa, %.lr.ph93.i.i ], [ %.33791.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 3 uses
  %.34190.i.i = phi i32 [ %i.fk, %.lr.ph93.i.i ], [ %.34190.i.i.unr, %.lr.ph93.i.i.prol.loopexit ]
  %.34589.i.i = phi ptr [ %i.fj, %.lr.ph93.i.i ], [ %.34589.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.392.i.i, i64 2
  %i.eh = load i16, ptr %.392.i.i, align 2, !tbaa !558
  %i.ei = zext i16 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 16
  %i.ek = bitcast i32 %i.ej to float
  %i.el = getelementptr inbounds nuw i8, ptr %.33791.i.i, i64 2
  %i.em = load i16, ptr %.33791.i.i, align 2, !tbaa !558
  %i.en = zext i16 %i.em to i32
  %i.eo = shl nuw i32 %i.en, 16
  %i.ep = bitcast i32 %i.eo to float
  %i.eq = fadd fast float %i.ep, %i.ek
  %i.er = bitcast float %i.eq to i32
  %i.es = lshr i32 %i.er, 16
  %i.et = trunc nuw i32 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %.34589.i.i, i64 2
  store i16 %i.et, ptr %.34589.i.i, align 2, !tbaa !558
  %i.ev = getelementptr inbounds nuw i8, ptr %.392.i.i, i64 4
  %i.ew = load i16, ptr %i.eg, align 2, !tbaa !558
  %i.ex = zext i16 %i.ew to i32
  %i.ey = shl nuw i32 %i.ex, 16
  %i.ez = bitcast i32 %i.ey to float
  %i.fa = getelementptr inbounds nuw i8, ptr %.33791.i.i, i64 4
  %i.fb = load i16, ptr %i.el, align 2, !tbaa !558
  %i.fc = zext i16 %i.fb to i32
  %i.fd = shl nuw i32 %i.fc, 16
  %i.fe = bitcast i32 %i.fd to float
  %i.ff = fadd fast float %i.fe, %i.ez
  %i.fg = bitcast float %i.ff to i32
  %i.fh = lshr i32 %i.fg, 16
  %i.fi = trunc nuw i32 %i.fh to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %.34589.i.i, i64 4
  store i16 %i.fi, ptr %i.eu, align 2, !tbaa !558
  %i.fk = add nuw nsw i32 %.34190.i.i, 2          ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i32 %i.fk, %i.a
  br i1 %exitcond.not.i.i.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i, !llvm.loop !14

bb.e:                                             ; preds = %bb.c
  %i.fl = icmp eq i32 %4, 1
  br i1 %i.fl, label %bb.f, label %bb.l
end_hunk_0
begin_hunk_1_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.adz = shufflevector <8 x float> %i.ady, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aea = fadd fast <8 x float> %i.adz, %i.ads
  %i.aeb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aea)
  store <8 x bfloat> %i.aeb, ptr %.13152.i.i, align 1, !tbaa !555
  %i.aec = getelementptr inbounds nuw i8, ptr %.154.i.i, i64 2
  %i.aed = getelementptr inbounds nuw i8, ptr %.13152.i.i, i64 16
  %i.aee = load i16, ptr %i.aec, align 2, !tbaa !558
  %i.aef = zext i16 %i.aee to i32
  %i.aeg = shl nuw i32 %i.aef, 16
  %i.aeh = insertelement <8 x i32> poison, i32 %i.aeg, i64 0
  %i.aei = bitcast <8 x i32> %i.aeh to <8 x float>
  %i.aej = shufflevector <8 x float> %i.aei, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aek = fadd fast <8 x float> %i.aej, %i.ads
  %i.ael = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.aek)
  store <8 x bfloat> %i.ael, ptr %i.aed, align 1, !tbaa !555
  %i.aem = getelementptr inbounds nuw i8, ptr %.154.i.i, i64 4 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.13152.i.i, i64 32 ; 2 uses
  %niter10973.next.1 = add i32 %niter10973, 2     ; 2 uses
  %niter10973.ncmp.1 = icmp eq i32 %niter10973.next.1, %unroll_iter10972
  br i1 %niter10973.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9281.unr-lcssa, label %.lr.ph55.i.i, !llvm.loop !37

bb.ab:                                            ; preds = %bb.y
  %i.aeo = load i64, ptr %0, align 1, !tbaa !555
  %i.aep = insertelement <2 x i64> poison, i64 %i.aeo, i64 0
  %i.aeq = bitcast <2 x i64> %i.aep to <8 x i16>  ; 3 uses
  %xtraiter10963 = and i32 %.sroa.speculated98.i, 1
  %i.aer = icmp eq i32 %.sroa.speculated98.i, 1
  br i1 %i.aer, label %.lr.ph.i86.i.epil.preheader, label %.new10962

.new10962:                                        ; preds = %bb.ab
  %unroll_iter10966 = and i32 %.sroa.speculated98.i, 2147483646
  %i.aes = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aeq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aet = bitcast <16 x i16> %i.aes to <8 x float>
  %i.aeu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aeq, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aev = bitcast <16 x i16> %i.aeu to <8 x float>
  br label %.lr.ph.i86.i

.lr.ph.i86.i:                                     ; preds = %.lr.ph.i86.i, %.new10962
  %.250.i.i = phi ptr [ %1, %.new10962 ], [ %i.afs, %.lr.ph.i86.i ] ; 3 uses
  %.23249.i.i = phi ptr [ %2, %.new10962 ], [ %i.aft, %.lr.ph.i86.i ] ; 3 uses
  %niter10967 = phi i32 [ 0, %.new10962 ], [ %niter10967.next.1, %.lr.ph.i86.i ]
  %i.aew = load i16, ptr %.250.i.i, align 2, !tbaa !558
  %i.aex = zext i16 %i.aew to i32
  %i.aey = shl nuw i32 %i.aex, 16
  %i.aez = insertelement <4 x i32> poison, i32 %i.aey, i64 0
  %i.afa = bitcast <4 x i32> %i.aez to <4 x float>
  %i.afb = shufflevector <4 x float> %i.afa, <4 x float> poison, <8 x i32> zeroinitializer
  %i.afc = fadd fast <8 x float> %i.afb, %i.aet
  %i.afd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.afc)
  %i.afe = bitcast <8 x bfloat> %i.afd to <2 x i64>
  %i.aff = extractelement <2 x i64> %i.afe, i64 0
  store i64 %i.aff, ptr %.23249.i.i, align 1, !tbaa !555
  %i.afg = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 2
  %i.afh = getelementptr inbounds nuw i8, ptr %.23249.i.i, i64 8
  %i.afi = load i16, ptr %i.afg, align 2, !tbaa !558
  %i.afj = zext i16 %i.afi to i32
  %i.afk = shl nuw i32 %i.afj, 16
  %i.afl = insertelement <4 x i32> poison, i32 %i.afk, i64 0
  %i.afm = bitcast <4 x i32> %i.afl to <4 x float>
  %i.afn = shufflevector <4 x float> %i.afm, <4 x float> poison, <8 x i32> zeroinitializer
  %i.afo = fadd fast <8 x float> %i.afn, %i.aev
  %i.afp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.afo)
  %i.afq = bitcast <8 x bfloat> %i.afp to <2 x i64>
  %i.afr = extractelement <2 x i64> %i.afq, i64 0
  store i64 %i.afr, ptr %i.afh, align 1, !tbaa !555
  %i.afs = getelementptr inbounds nuw i8, ptr %.250.i.i, i64 4 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.23249.i.i, i64 16 ; 2 uses
  %niter10967.next.1 = add i32 %niter10967, 2     ; 2 uses
  %niter10967.ncmp.1 = icmp eq i32 %niter10967.next.1, %unroll_iter10966
  br i1 %niter10967.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9282.unr-lcssa, label %.lr.ph.i86.i, !llvm.loop !38

bb.ac:                                            ; preds = %bb.a
  %.sroa.speculated98.i151 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i152 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.afu = mul i32 %.sroa.speculated.i152, %.sroa.speculated98.i151 ; 48 uses
  %i.afv = icmp eq i32 %5, %6
  br i1 %i.afv, label %bb.ad, label %bb.at

bb.ad:                                            ; preds = %bb.ac
  %i.afw = icmp eq i32 %3, %4
  br i1 %i.afw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.afx = icmp sgt i32 %i.afu, 15
  br i1 %i.afx, label %.lr.ph.i.i315.preheader, label %.preheader63.i.i284

.lr.ph.i.i315.preheader:                          ; preds = %bb.ae
  %i.afy = add nsw i32 %i.afu, -16                ; 2 uses
  %i.afz = lshr i32 %i.afy, 4                     ; 2 uses
  %i.aga = add nuw nsw i32 %i.afz, 1              ; 2 uses
  %i.agb = icmp eq i32 %i.afz, 0
  br i1 %i.agb, label %.lr.ph.i.i315.epil.preheader, label %.lr.ph.i.i315.preheader.new

.lr.ph.i.i315.preheader.new:                      ; preds = %.lr.ph.i.i315.preheader
  %unroll_iter10958 = and i32 %i.aga, 536870910
  br label %.lr.ph.i.i315

.preheader63.loopexit.i.i320.unr-lcssa:           ; preds = %.lr.ph.i.i315
  %i.agc = and i32 %i.afy, 16
  %lcmp.mod10953.not.not = icmp eq i32 %i.agc, 0
  br i1 %lcmp.mod10953.not.not, label %.lr.ph.i.i315.epil.preheader, label %.preheader63.loopexit.i.i320

.lr.ph.i.i315.epil.preheader:                     ; preds = %.preheader63.loopexit.i.i320.unr-lcssa, %.lr.ph.i.i315.preheader
  %.067.i.i316.epil.init = phi ptr [ %0, %.lr.ph.i.i315.preheader ], [ %i.ahe, %.preheader63.loopexit.i.i320.unr-lcssa ] ; 2 uses
  %.03466.i.i317.epil.init = phi ptr [ %1, %.lr.ph.i.i315.preheader ], [ %i.ahf, %.preheader63.loopexit.i.i320.unr-lcssa ] ; 2 uses
  %.04264.i.i319.epil.init = phi ptr [ %2, %.lr.ph.i.i315.preheader ], [ %i.ahg, %.preheader63.loopexit.i.i320.unr-lcssa ] ; 2 uses
  %lcmp.mod10957 = trunc i32 %i.aga to i1
  tail call void @llvm.assume(i1 %lcmp.mod10957)
  %i.agd = load <16 x bfloat>, ptr %.067.i.i316.epil.init, align 1, !tbaa !555
  %i.age = fpext fast <16 x bfloat> %i.agd to <16 x float>
  %i.agf = load <16 x bfloat>, ptr %.03466.i.i317.epil.init, align 1, !tbaa !555
  %i.agg = fpext fast <16 x bfloat> %i.agf to <16 x float>
  %i.agh = fsub fast <16 x float> %i.age, %i.agg
  %i.agi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.agh)
  store <16 x bfloat> %i.agi, ptr %.04264.i.i319.epil.init, align 1, !tbaa !555
  %i.agj = getelementptr inbounds nuw i8, ptr %.067.i.i316.epil.init, i64 32
  %i.agk = getelementptr inbounds nuw i8, ptr %.03466.i.i317.epil.init, i64 32
  %i.agl = getelementptr inbounds nuw i8, ptr %.04264.i.i319.epil.init, i64 32
  br label %.preheader63.loopexit.i.i320

.preheader63.loopexit.i.i320:                     ; preds = %.preheader63.loopexit.i.i320.unr-lcssa, %.lr.ph.i.i315.epil.preheader
  %.lcssa9294 = phi ptr [ %i.ahe, %.preheader63.loopexit.i.i320.unr-lcssa ], [ %i.agj, %.lr.ph.i.i315.epil.preheader ]
  %.lcssa9293 = phi ptr [ %i.ahf, %.preheader63.loopexit.i.i320.unr-lcssa ], [ %i.agk, %.lr.ph.i.i315.epil.preheader ]
  %.lcssa9292 = phi ptr [ %i.ahg, %.preheader63.loopexit.i.i320.unr-lcssa ], [ %i.agl, %.lr.ph.i.i315.epil.preheader ]
  %i.agm = and i32 %i.afu, 2147483632
  br label %.preheader63.i.i284

.preheader63.i.i284:                              ; preds = %.preheader63.loopexit.i.i320, %bb.ae
  %.042.lcssa.i.i285 = phi ptr [ %2, %bb.ae ], [ %.lcssa9292, %.preheader63.loopexit.i.i320 ] ; 2 uses
  %.038.lcssa.i.i286 = phi i32 [ 0, %bb.ae ], [ %i.agm, %.preheader63.loopexit.i.i320 ] ; 3 uses
  %.034.lcssa.i.i287 = phi ptr [ %1, %bb.ae ], [ %.lcssa9293, %.preheader63.loopexit.i.i320 ] ; 2 uses
  %.0.lcssa.i.i288 = phi ptr [ %0, %bb.ae ], [ %.lcssa9294, %.preheader63.loopexit.i.i320 ] ; 2 uses
  %i.agn = or disjoint i32 %.038.lcssa.i.i286, 7
  %i.ago = icmp slt i32 %i.agn, %i.afu
  br i1 %i.ago, label %.lr.ph75.i.i310, label %.preheader62.i.i289

.lr.ph.i.i315:                                    ; preds = %.lr.ph.i.i315, %.lr.ph.i.i315.preheader.new
  %.067.i.i316 = phi ptr [ %0, %.lr.ph.i.i315.preheader.new ], [ %i.ahe, %.lr.ph.i.i315 ] ; 3 uses
  %.03466.i.i317 = phi ptr [ %1, %.lr.ph.i.i315.preheader.new ], [ %i.ahf, %.lr.ph.i.i315 ] ; 3 uses
  %.04264.i.i319 = phi ptr [ %2, %.lr.ph.i.i315.preheader.new ], [ %i.ahg, %.lr.ph.i.i315 ] ; 3 uses
  %niter10959 = phi i32 [ 0, %.lr.ph.i.i315.preheader.new ], [ %niter10959.next.1, %.lr.ph.i.i315 ]
  %i.agp = load <16 x bfloat>, ptr %.067.i.i316, align 1, !tbaa !555
  %i.agq = fpext fast <16 x bfloat> %i.agp to <16 x float>
  %i.agr = load <16 x bfloat>, ptr %.03466.i.i317, align 1, !tbaa !555
  %i.ags = fpext fast <16 x bfloat> %i.agr to <16 x float>
  %i.agt = fsub fast <16 x float> %i.agq, %i.ags
  %i.agu = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.agt)
  store <16 x bfloat> %i.agu, ptr %.04264.i.i319, align 1, !tbaa !555
  %i.agv = getelementptr inbounds nuw i8, ptr %.067.i.i316, i64 32
  %i.agw = getelementptr inbounds nuw i8, ptr %.03466.i.i317, i64 32
  %i.agx = getelementptr inbounds nuw i8, ptr %.04264.i.i319, i64 32
  %i.agy = load <16 x bfloat>, ptr %i.agv, align 1, !tbaa !555
  %i.agz = fpext fast <16 x bfloat> %i.agy to <16 x float>
  %i.aha = load <16 x bfloat>, ptr %i.agw, align 1, !tbaa !555
  %i.ahb = fpext fast <16 x bfloat> %i.aha to <16 x float>
  %i.ahc = fsub fast <16 x float> %i.agz, %i.ahb
  %i.ahd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ahc)
  store <16 x bfloat> %i.ahd, ptr %i.agx, align 1, !tbaa !555
  %i.ahe = getelementptr inbounds nuw i8, ptr %.067.i.i316, i64 64 ; 3 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %.03466.i.i317, i64 64 ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %.04264.i.i319, i64 64 ; 3 uses
  %niter10959.next.1 = add i32 %niter10959, 2     ; 2 uses
  %niter10959.ncmp.1.not = icmp eq i32 %niter10959.next.1, %unroll_iter10958
  br i1 %niter10959.ncmp.1.not, label %.preheader63.loopexit.i.i320.unr-lcssa, label %.lr.ph.i.i315, !llvm.loop !39

.preheader62.i.i289:                              ; preds = %.lr.ph75.i.i310, %.preheader63.i.i284
  %.143.lcssa.i.i290 = phi ptr [ %.042.lcssa.i.i285, %.preheader63.i.i284 ], [ %i.ahr, %.lr.ph75.i.i310 ] ; 2 uses
  %.139.lcssa.i.i291 = phi i32 [ %.038.lcssa.i.i286, %.preheader63.i.i284 ], [ %i.ahs, %.lr.ph75.i.i310 ] ; 3 uses
  %.135.lcssa.i.i292 = phi ptr [ %.034.lcssa.i.i287, %.preheader63.i.i284 ], [ %i.ahq, %.lr.ph75.i.i310 ] ; 2 uses
  %.1.lcssa.i.i293 = phi ptr [ %.0.lcssa.i.i288, %.preheader63.i.i284 ], [ %i.ahp, %.lr.ph75.i.i310 ] ; 2 uses
  %i.ahh = or disjoint i32 %.139.lcssa.i.i291, 3
  %i.ahi = icmp slt i32 %i.ahh, %i.afu
  br i1 %i.ahi, label %.lr.ph84.i.i305, label %.preheader.i.i294

.lr.ph75.i.i310:                                  ; preds = %.preheader63.i.i284, %.lr.ph75.i.i310
  %.174.i.i311 = phi ptr [ %i.ahp, %.lr.ph75.i.i310 ], [ %.0.lcssa.i.i288, %.preheader63.i.i284 ] ; 2 uses
  %.13573.i.i312 = phi ptr [ %i.ahq, %.lr.ph75.i.i310 ], [ %.034.lcssa.i.i287, %.preheader63.i.i284 ] ; 2 uses
  %.13972.i.i313 = phi i32 [ %i.ahs, %.lr.ph75.i.i310 ], [ %.038.lcssa.i.i286, %.preheader63.i.i284 ]
  %.14371.i.i314 = phi ptr [ %i.ahr, %.lr.ph75.i.i310 ], [ %.042.lcssa.i.i285, %.preheader63.i.i284 ] ; 2 uses
  %i.ahj = load <8 x bfloat>, ptr %.174.i.i311, align 1, !tbaa !555
  %i.ahk = fpext fast <8 x bfloat> %i.ahj to <8 x float>
  %i.ahl = load <8 x bfloat>, ptr %.13573.i.i312, align 1, !tbaa !555
  %i.ahm = fpext fast <8 x bfloat> %i.ahl to <8 x float>
  %i.ahn = fsub fast <8 x float> %i.ahk, %i.ahm
  %i.aho = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ahn)
  store <8 x bfloat> %i.aho, ptr %.14371.i.i314, align 1, !tbaa !555
  %i.ahp = getelementptr inbounds nuw i8, ptr %.174.i.i311, i64 16 ; 2 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.13573.i.i312, i64 16 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.14371.i.i314, i64 16 ; 2 uses
  %i.ahs = add nuw nsw i32 %.13972.i.i313, 8      ; 3 uses
  %i.aht = or disjoint i32 %i.ahs, 7
  %i.ahu = icmp slt i32 %i.aht, %i.afu
  br i1 %i.ahu, label %.lr.ph75.i.i310, label %.preheader62.i.i289, !llvm.loop !40

.preheader.i.i294:                                ; preds = %.lr.ph84.i.i305, %.preheader62.i.i289
  %.244.lcssa.i.i295 = phi ptr [ %.143.lcssa.i.i290, %.preheader62.i.i289 ], [ %i.akw, %.lr.ph84.i.i305 ] ; 7 uses
  %.240.lcssa.i.i296 = phi i32 [ %.139.lcssa.i.i291, %.preheader62.i.i289 ], [ %i.akx, %.lr.ph84.i.i305 ] ; 6 uses
  %.236.lcssa.i.i297 = phi ptr [ %.135.lcssa.i.i292, %.preheader62.i.i289 ], [ %i.akv, %.lr.ph84.i.i305 ] ; 7 uses
  %.2.lcssa.i.i298 = phi ptr [ %.1.lcssa.i.i293, %.preheader62.i.i289 ], [ %i.aku, %.lr.ph84.i.i305 ] ; 7 uses
  %.236.lcssa.i.i2978935 = ptrtoaddr ptr %.236.lcssa.i.i297 to i64
  %.244.lcssa.i.i2958936 = ptrtoaddr ptr %.2.lcssa.i.i298 to i64
  %.2.lcssa.i.i2988937 = ptrtoaddr ptr %.244.lcssa.i.i295 to i64 ; 2 uses
  %i.ahv = icmp slt i32 %.240.lcssa.i.i296, %i.afu
  br i1 %i.ahv, label %iter.check8957, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8957:                                   ; preds = %.preheader.i.i294
  %i.ahw = xor i32 %.240.lcssa.i.i296, -1
  %i.ahx = add i32 %i.afu, %i.ahw                 ; 3 uses
  %i.ahy = zext i32 %i.ahx to i64
  %i.ahz = add nuw nsw i64 %i.ahy, 1              ; 5 uses
  %min.iters.check8938 = icmp ult i32 %i.ahx, 7
  br i1 %min.iters.check8938, label %.lr.ph93.i.i299.preheader, label %vector.memcheck8939

vector.memcheck8939:                              ; preds = %iter.check8957
  %i.aia = sub i64 %.244.lcssa.i.i2958936, %.2.lcssa.i.i2988937
  %diff.check8940 = icmp ugt i64 %i.aia, -64
  %i.aib = sub i64 %.236.lcssa.i.i2978935, %.2.lcssa.i.i2988937
  %diff.check8941 = icmp ugt i64 %i.aib, -64
  %conflict.rdx8942 = or i1 %diff.check8940, %diff.check8941
  br i1 %conflict.rdx8942, label %.lr.ph93.i.i299.preheader, label %vector.main.loop.iter.check8943

vector.main.loop.iter.check8943:                  ; preds = %vector.memcheck8939
  %min.iters.check8944 = icmp ult i32 %i.ahx, 31
  br i1 %min.iters.check8944, label %vec.epilog.ph8961, label %vector.ph8945

vector.ph8945:                                    ; preds = %vector.main.loop.iter.check8943
  %i.aic = and i64 %i.ahz, 24
  %n.vec8946 = and i64 %i.ahz, 8589934560         ; 5 uses
  %i.aid = shl nuw nsw i64 %n.vec8946, 1          ; 3 uses
  %i.aie = getelementptr i8, ptr %.2.lcssa.i.i298, i64 %i.aid
  %i.aif = getelementptr i8, ptr %.236.lcssa.i.i297, i64 %i.aid
  %i.aig = trunc i64 %n.vec8946 to i32
  %i.aih = add i32 %.240.lcssa.i.i296, %i.aig
  %i.aii = getelementptr i8, ptr %.244.lcssa.i.i295, i64 %i.aid
  br label %vector.body8947

vector.body8947:                                  ; preds = %vector.ph8945, %vector.body8947
  %index8948 = phi i64 [ 0, %vector.ph8945 ], [ %index.next8954, %vector.body8947 ] ; 2 uses
  %i.aij = shl i64 %index8948, 1                  ; 3 uses
  %next.gep8949 = getelementptr i8, ptr %.2.lcssa.i.i298, i64 %i.aij
  %next.gep8950 = getelementptr i8, ptr %.236.lcssa.i.i297, i64 %i.aij
  %next.gep8951 = getelementptr i8, ptr %.244.lcssa.i.i295, i64 %i.aij
  %wide.load8952 = load <32 x i16>, ptr %next.gep8949, align 2, !tbaa !558
  %i.aik = zext <32 x i16> %wide.load8952 to <32 x i32>
  %i.ail = shl nuw <32 x i32> %i.aik, splat (i32 16)
  %i.aim = bitcast <32 x i32> %i.ail to <32 x float>
  %wide.load8953 = load <32 x i16>, ptr %next.gep8950, align 2, !tbaa !558
  %i.ain = zext <32 x i16> %wide.load8953 to <32 x i32>
  %i.aio = shl nuw <32 x i32> %i.ain, splat (i32 16)
  %i.aip = bitcast <32 x i32> %i.aio to <32 x float>
  %i.aiq = fsub fast <32 x float> %i.aim, %i.aip
  %i.air = bitcast <32 x float> %i.aiq to <32 x i32>
  %i.ais = lshr <32 x i32> %i.air, splat (i32 16)
  %i.ait = trunc nuw <32 x i32> %i.ais to <32 x i16>
  store <32 x i16> %i.ait, ptr %next.gep8951, align 2, !tbaa !558
  %index.next8954 = add nuw i64 %index8948, 32    ; 2 uses
  %i.aiu = icmp eq i64 %index.next8954, %n.vec8946
  br i1 %i.aiu, label %middle.block8955, label %vector.body8947, !llvm.loop !41

middle.block8955:                                 ; preds = %vector.body8947
  %cmp.n8956 = icmp eq i64 %i.ahz, %n.vec8946
  br i1 %cmp.n8956, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8958

vec.epilog.iter.check8958:                        ; preds = %middle.block8955
  %min.epilog.iters.check8960 = icmp eq i64 %i.aic, 0
  br i1 %min.epilog.iters.check8960, label %.lr.ph93.i.i299.preheader, label %vec.epilog.ph8961, !prof !561

vec.epilog.ph8961:                                ; preds = %vector.main.loop.iter.check8943, %vec.epilog.iter.check8958
  %vec.epilog.resume.val8962 = phi i64 [ %n.vec8946, %vec.epilog.iter.check8958 ], [ 0, %vector.main.loop.iter.check8943 ]
  %n.vec8963 = and i64 %i.ahz, 8589934584         ; 4 uses
  %i.aiv = shl nuw nsw i64 %n.vec8963, 1          ; 3 uses
  %i.aiw = getelementptr i8, ptr %.2.lcssa.i.i298, i64 %i.aiv
  %i.aix = getelementptr i8, ptr %.236.lcssa.i.i297, i64 %i.aiv
  %i.aiy = trunc i64 %n.vec8963 to i32
  %i.aiz = add i32 %.240.lcssa.i.i296, %i.aiy
  %i.aja = getelementptr i8, ptr %.244.lcssa.i.i295, i64 %i.aiv
  br label %vec.epilog.vector.body8964

vec.epilog.vector.body8964:                       ; preds = %vec.epilog.vector.body8964, %vec.epilog.ph8961
  %index8965 = phi i64 [ %vec.epilog.resume.val8962, %vec.epilog.ph8961 ], [ %index.next8971, %vec.epilog.vector.body8964 ] ; 2 uses
  %i.ajb = shl i64 %index8965, 1                  ; 3 uses
  %next.gep8966 = getelementptr i8, ptr %.2.lcssa.i.i298, i64 %i.ajb
  %next.gep8967 = getelementptr i8, ptr %.236.lcssa.i.i297, i64 %i.ajb
  %next.gep8968 = getelementptr i8, ptr %.244.lcssa.i.i295, i64 %i.ajb
  %wide.load8969 = load <8 x i16>, ptr %next.gep8966, align 2, !tbaa !558
  %i.ajc = zext <8 x i16> %wide.load8969 to <8 x i32>
  %i.ajd = shl nuw <8 x i32> %i.ajc, splat (i32 16)
  %i.aje = bitcast <8 x i32> %i.ajd to <8 x float>
  %wide.load8970 = load <8 x i16>, ptr %next.gep8967, align 2, !tbaa !558
  %i.ajf = zext <8 x i16> %wide.load8970 to <8 x i32>
  %i.ajg = shl nuw <8 x i32> %i.ajf, splat (i32 16)
  %i.ajh = bitcast <8 x i32> %i.ajg to <8 x float>
  %i.aji = fsub fast <8 x float> %i.aje, %i.ajh
  %i.ajj = bitcast <8 x float> %i.aji to <8 x i32>
  %i.ajk = lshr <8 x i32> %i.ajj, splat (i32 16)
  %i.ajl = trunc nuw <8 x i32> %i.ajk to <8 x i16>
  store <8 x i16> %i.ajl, ptr %next.gep8968, align 2, !tbaa !558
  %index.next8971 = add nuw i64 %index8965, 8     ; 2 uses
  %i.ajm = icmp eq i64 %index.next8971, %n.vec8963
  br i1 %i.ajm, label %vec.epilog.middle.block8972, label %vec.epilog.vector.body8964, !llvm.loop !42

vec.epilog.middle.block8972:                      ; preds = %vec.epilog.vector.body8964
  %cmp.n8973 = icmp eq i64 %i.ahz, %n.vec8963
  br i1 %cmp.n8973, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i299.preheader

.lr.ph93.i.i299.preheader:                        ; preds = %iter.check8957, %vector.memcheck8939, %vec.epilog.iter.check8958, %vec.epilog.middle.block8972
  %.392.i.i300.ph = phi ptr [ %.2.lcssa.i.i298, %iter.check8957 ], [ %.2.lcssa.i.i298, %vector.memcheck8939 ], [ %i.aie, %vec.epilog.iter.check8958 ], [ %i.aiw, %vec.epilog.middle.block8972 ] ; 3 uses
  %.33791.i.i301.ph = phi ptr [ %.236.lcssa.i.i297, %iter.check8957 ], [ %.236.lcssa.i.i297, %vector.memcheck8939 ], [ %i.aif, %vec.epilog.iter.check8958 ], [ %i.aix, %vec.epilog.middle.block8972 ] ; 3 uses
  %.34190.i.i302.ph = phi i32 [ %.240.lcssa.i.i296, %iter.check8957 ], [ %.240.lcssa.i.i296, %vector.memcheck8939 ], [ %i.aih, %vec.epilog.iter.check8958 ], [ %i.aiz, %vec.epilog.middle.block8972 ] ; 4 uses
  %.34589.i.i303.ph = phi ptr [ %.244.lcssa.i.i295, %iter.check8957 ], [ %.244.lcssa.i.i295, %vector.memcheck8939 ], [ %i.aii, %vec.epilog.iter.check8958 ], [ %i.aja, %vec.epilog.middle.block8972 ] ; 3 uses
  %i.ajn = sub i32 %i.afu, %.34190.i.i302.ph
  %.neg11088 = add i32 %.34190.i.i302.ph, 1
  %xtraiter10960 = and i32 %i.ajn, 1
  %lcmp.mod10961.not = icmp eq i32 %xtraiter10960, 0
  br i1 %lcmp.mod10961.not, label %.lr.ph93.i.i299.prol.loopexit, label %.lr.ph93.i.i299.prol

.lr.ph93.i.i299.prol:                             ; preds = %.lr.ph93.i.i299.preheader
  %i.ajo = getelementptr inbounds nuw i8, ptr %.392.i.i300.ph, i64 2
  %i.ajp = load i16, ptr %.392.i.i300.ph, align 2, !tbaa !558
  %i.ajq = zext i16 %i.ajp to i32
  %i.ajr = shl nuw i32 %i.ajq, 16
  %i.ajs = bitcast i32 %i.ajr to float
  %i.ajt = getelementptr inbounds nuw i8, ptr %.33791.i.i301.ph, i64 2
  %i.aju = load i16, ptr %.33791.i.i301.ph, align 2, !tbaa !558
  %i.ajv = zext i16 %i.aju to i32
  %i.ajw = shl nuw i32 %i.ajv, 16
  %i.ajx = bitcast i32 %i.ajw to float
  %i.ajy = fsub fast float %i.ajs, %i.ajx
  %i.ajz = bitcast float %i.ajy to i32
  %i.aka = lshr i32 %i.ajz, 16
  %i.akb = trunc nuw i32 %i.aka to i16
  %i.akc = getelementptr inbounds nuw i8, ptr %.34589.i.i303.ph, i64 2
  store i16 %i.akb, ptr %.34589.i.i303.ph, align 2, !tbaa !558
  %i.akd = add nuw nsw i32 %.34190.i.i302.ph, 1
  br label %.lr.ph93.i.i299.prol.loopexit

.lr.ph93.i.i299.prol.loopexit:                    ; preds = %.lr.ph93.i.i299.prol, %.lr.ph93.i.i299.preheader
  %.392.i.i300.unr = phi ptr [ %.392.i.i300.ph, %.lr.ph93.i.i299.preheader ], [ %i.ajo, %.lr.ph93.i.i299.prol ]
  %.33791.i.i301.unr = phi ptr [ %.33791.i.i301.ph, %.lr.ph93.i.i299.preheader ], [ %i.ajt, %.lr.ph93.i.i299.prol ]
  %.34190.i.i302.unr = phi i32 [ %.34190.i.i302.ph, %.lr.ph93.i.i299.preheader ], [ %i.akd, %.lr.ph93.i.i299.prol ]
  %.34589.i.i303.unr = phi ptr [ %.34589.i.i303.ph, %.lr.ph93.i.i299.preheader ], [ %i.akc, %.lr.ph93.i.i299.prol ]
  %i.ake = icmp eq i32 %i.afu, %.neg11088
  br i1 %i.ake, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i299

.lr.ph84.i.i305:                                  ; preds = %.preheader62.i.i289, %.lr.ph84.i.i305
  %.283.i.i306 = phi ptr [ %i.aku, %.lr.ph84.i.i305 ], [ %.1.lcssa.i.i293, %.preheader62.i.i289 ] ; 2 uses
  %.23682.i.i307 = phi ptr [ %i.akv, %.lr.ph84.i.i305 ], [ %.135.lcssa.i.i292, %.preheader62.i.i289 ] ; 2 uses
  %.24081.i.i308 = phi i32 [ %i.akx, %.lr.ph84.i.i305 ], [ %.139.lcssa.i.i291, %.preheader62.i.i289 ]
  %.24480.i.i309 = phi ptr [ %i.akw, %.lr.ph84.i.i305 ], [ %.143.lcssa.i.i290, %.preheader62.i.i289 ] ; 2 uses
  %i.akf = load i64, ptr %.283.i.i306, align 1, !tbaa !555
  %i.akg = insertelement <2 x i64> poison, i64 %i.akf, i64 0
  %i.akh = bitcast <2 x i64> %i.akg to <8 x i16>
  %i.aki = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.akj = bitcast <8 x i16> %i.aki to <4 x float>
  %i.akk = load i64, ptr %.23682.i.i307, align 1, !tbaa !555
  %i.akl = insertelement <2 x i64> poison, i64 %i.akk, i64 0
  %i.akm = bitcast <2 x i64> %i.akl to <8 x i16>
  %i.akn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.akm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ako = bitcast <8 x i16> %i.akn to <4 x float>
  %i.akp = fsub fast <4 x float> %i.akj, %i.ako
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.akr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.akq)
  %i.aks = bitcast <8 x bfloat> %i.akr to <2 x i64>
  %i.akt = extractelement <2 x i64> %i.aks, i64 0
  store i64 %i.akt, ptr %.24480.i.i309, align 1, !tbaa !555
  %i.aku = getelementptr inbounds nuw i8, ptr %.283.i.i306, i64 8 ; 2 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %.23682.i.i307, i64 8 ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.24480.i.i309, i64 8 ; 2 uses
  %i.akx = add nuw nsw i32 %.24081.i.i308, 4      ; 3 uses
  %i.aky = or disjoint i32 %i.akx, 3
  %i.akz = icmp slt i32 %i.aky, %i.afu
  br i1 %i.akz, label %.lr.ph84.i.i305, label %.preheader.i.i294, !llvm.loop !43

.lr.ph93.i.i299:                                  ; preds = %.lr.ph93.i.i299.prol.loopexit, %.lr.ph93.i.i299
  %.392.i.i300 = phi ptr [ %i.alp, %.lr.ph93.i.i299 ], [ %.392.i.i300.unr, %.lr.ph93.i.i299.prol.loopexit ] ; 3 uses
  %.33791.i.i301 = phi ptr [ %i.alu, %.lr.ph93.i.i299 ], [ %.33791.i.i301.unr, %.lr.ph93.i.i299.prol.loopexit ] ; 3 uses
  %.34190.i.i302 = phi i32 [ %i.ame, %.lr.ph93.i.i299 ], [ %.34190.i.i302.unr, %.lr.ph93.i.i299.prol.loopexit ]
  %.34589.i.i303 = phi ptr [ %i.amd, %.lr.ph93.i.i299 ], [ %.34589.i.i303.unr, %.lr.ph93.i.i299.prol.loopexit ] ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %.392.i.i300, i64 2
  %i.alb = load i16, ptr %.392.i.i300, align 2, !tbaa !558
  %i.alc = zext i16 %i.alb to i32
  %i.ald = shl nuw i32 %i.alc, 16
  %i.ale = bitcast i32 %i.ald to float
  %i.alf = getelementptr inbounds nuw i8, ptr %.33791.i.i301, i64 2
  %i.alg = load i16, ptr %.33791.i.i301, align 2, !tbaa !558
  %i.alh = zext i16 %i.alg to i32
  %i.ali = shl nuw i32 %i.alh, 16
  %i.alj = bitcast i32 %i.ali to float
  %i.alk = fsub fast float %i.ale, %i.alj
  %i.all = bitcast float %i.alk to i32
  %i.alm = lshr i32 %i.all, 16
  %i.aln = trunc nuw i32 %i.alm to i16
  %i.alo = getelementptr inbounds nuw i8, ptr %.34589.i.i303, i64 2
  store i16 %i.aln, ptr %.34589.i.i303, align 2, !tbaa !558
  %i.alp = getelementptr inbounds nuw i8, ptr %.392.i.i300, i64 4
  %i.alq = load i16, ptr %i.ala, align 2, !tbaa !558
  %i.alr = zext i16 %i.alq to i32
  %i.als = shl nuw i32 %i.alr, 16
  %i.alt = bitcast i32 %i.als to float
  %i.alu = getelementptr inbounds nuw i8, ptr %.33791.i.i301, i64 4
  %i.alv = load i16, ptr %i.alf, align 2, !tbaa !558
  %i.alw = zext i16 %i.alv to i32
  %i.alx = shl nuw i32 %i.alw, 16
  %i.aly = bitcast i32 %i.alx to float
  %i.alz = fsub fast float %i.alt, %i.aly
  %i.ama = bitcast float %i.alz to i32
  %i.amb = lshr i32 %i.ama, 16
  %i.amc = trunc nuw i32 %i.amb to i16
  %i.amd = getelementptr inbounds nuw i8, ptr %.34589.i.i303, i64 4
  store i16 %i.amc, ptr %i.alo, align 2, !tbaa !558
  %i.ame = add nuw nsw i32 %.34190.i.i302, 2      ; 2 uses
  %exitcond.not.i.i304.1 = icmp eq i32 %i.ame, %i.afu
  br i1 %exitcond.not.i.i304.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i299, !llvm.loop !44

bb.af:                                            ; preds = %bb.ad
  %i.amf = icmp eq i32 %4, 1
  br i1 %i.amf, label %bb.ag, label %bb.am
end_hunk_1
begin_hunk_2_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.bkt = shufflevector <8 x float> %i.bks, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bku = fsub fast <8 x float> %i.bkm, %i.bkt
  %i.bkv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bku)
  store <8 x bfloat> %i.bkv, ptr %.13152.i.i161, align 1, !tbaa !555
  %i.bkw = getelementptr inbounds nuw i8, ptr %.154.i.i159, i64 2
  %i.bkx = getelementptr inbounds nuw i8, ptr %.13152.i.i161, i64 16
  %i.bky = load i16, ptr %i.bkw, align 2, !tbaa !558
  %i.bkz = zext i16 %i.bky to i32
  %i.bla = shl nuw i32 %i.bkz, 16
  %i.blb = insertelement <8 x i32> poison, i32 %i.bla, i64 0
  %i.blc = bitcast <8 x i32> %i.blb to <8 x float>
  %i.bld = shufflevector <8 x float> %i.blc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ble = fsub fast <8 x float> %i.bkm, %i.bld
  %i.blf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ble)
  store <8 x bfloat> %i.blf, ptr %i.bkx, align 1, !tbaa !555
  %i.blg = getelementptr inbounds nuw i8, ptr %.154.i.i159, i64 4 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %.13152.i.i161, i64 32 ; 2 uses
  %niter10903.next.1 = add i32 %niter10903, 2     ; 2 uses
  %niter10903.ncmp.1 = icmp eq i32 %niter10903.next.1, %unroll_iter10902
  br i1 %niter10903.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9326.unr-lcssa, label %.lr.ph55.i.i158, !llvm.loop !67

bb.bc:                                            ; preds = %bb.az
  %i.bli = load i64, ptr %0, align 1, !tbaa !555
  %i.blj = insertelement <2 x i64> poison, i64 %i.bli, i64 0
  %i.blk = bitcast <2 x i64> %i.blj to <8 x i16>  ; 3 uses
  %xtraiter10893 = and i32 %.sroa.speculated98.i151, 1
  %i.bll = icmp eq i32 %.sroa.speculated98.i151, 1
  br i1 %i.bll, label %.lr.ph.i86.i153.epil.preheader, label %.new10892

.new10892:                                        ; preds = %bb.bc
  %unroll_iter10896 = and i32 %.sroa.speculated98.i151, 2147483646
  %i.blm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.blk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bln = bitcast <16 x i16> %i.blm to <8 x float>
  %i.blo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.blk, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.blp = bitcast <16 x i16> %i.blo to <8 x float>
  br label %.lr.ph.i86.i153

.lr.ph.i86.i153:                                  ; preds = %.lr.ph.i86.i153, %.new10892
  %.250.i.i155 = phi ptr [ %1, %.new10892 ], [ %i.bmm, %.lr.ph.i86.i153 ] ; 3 uses
  %.23249.i.i156 = phi ptr [ %2, %.new10892 ], [ %i.bmn, %.lr.ph.i86.i153 ] ; 3 uses
  %niter10897 = phi i32 [ 0, %.new10892 ], [ %niter10897.next.1, %.lr.ph.i86.i153 ]
  %i.blq = load i16, ptr %.250.i.i155, align 2, !tbaa !558
  %i.blr = zext i16 %i.blq to i32
  %i.bls = shl nuw i32 %i.blr, 16
  %i.blt = insertelement <4 x i32> poison, i32 %i.bls, i64 0
  %i.blu = bitcast <4 x i32> %i.blt to <4 x float>
  %i.blv = shufflevector <4 x float> %i.blu, <4 x float> poison, <8 x i32> zeroinitializer
  %i.blw = fsub fast <8 x float> %i.bln, %i.blv
  %i.blx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.blw)
  %i.bly = bitcast <8 x bfloat> %i.blx to <2 x i64>
  %i.blz = extractelement <2 x i64> %i.bly, i64 0
  store i64 %i.blz, ptr %.23249.i.i156, align 1, !tbaa !555
  %i.bma = getelementptr inbounds nuw i8, ptr %.250.i.i155, i64 2
  %i.bmb = getelementptr inbounds nuw i8, ptr %.23249.i.i156, i64 8
  %i.bmc = load i16, ptr %i.bma, align 2, !tbaa !558
  %i.bmd = zext i16 %i.bmc to i32
  %i.bme = shl nuw i32 %i.bmd, 16
  %i.bmf = insertelement <4 x i32> poison, i32 %i.bme, i64 0
  %i.bmg = bitcast <4 x i32> %i.bmf to <4 x float>
  %i.bmh = shufflevector <4 x float> %i.bmg, <4 x float> poison, <8 x i32> zeroinitializer
  %i.bmi = fsub fast <8 x float> %i.blp, %i.bmh
  %i.bmj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.bmi)
  %i.bmk = bitcast <8 x bfloat> %i.bmj to <2 x i64>
  %i.bml = extractelement <2 x i64> %i.bmk, i64 0
  store i64 %i.bml, ptr %i.bmb, align 1, !tbaa !555
  %i.bmm = getelementptr inbounds nuw i8, ptr %.250.i.i155, i64 4 ; 2 uses
  %i.bmn = getelementptr inbounds nuw i8, ptr %.23249.i.i156, i64 16 ; 2 uses
  %niter10897.next.1 = add i32 %niter10897, 2     ; 2 uses
  %niter10897.ncmp.1 = icmp eq i32 %niter10897.next.1, %unroll_iter10896
  br i1 %niter10897.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9327.unr-lcssa, label %.lr.ph.i86.i153, !llvm.loop !68

bb.bd:                                            ; preds = %bb.a
  %.sroa.speculated98.i321 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i322 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.bmo = mul i32 %.sroa.speculated.i322, %.sroa.speculated98.i321 ; 48 uses
  %i.bmp = icmp eq i32 %5, %6
  br i1 %i.bmp, label %bb.be, label %bb.bu

bb.be:                                            ; preds = %bb.bd
  %i.bmq = icmp eq i32 %3, %4
  br i1 %i.bmq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.bmr = icmp sgt i32 %i.bmo, 15
  br i1 %i.bmr, label %.lr.ph.i.i485.preheader, label %.preheader63.i.i454

.lr.ph.i.i485.preheader:                          ; preds = %bb.bf
  %i.bms = add nsw i32 %i.bmo, -16                ; 2 uses
  %i.bmt = lshr i32 %i.bms, 4                     ; 2 uses
  %i.bmu = add nuw nsw i32 %i.bmt, 1              ; 2 uses
  %i.bmv = icmp eq i32 %i.bmt, 0
  br i1 %i.bmv, label %.lr.ph.i.i485.epil.preheader, label %.lr.ph.i.i485.preheader.new

.lr.ph.i.i485.preheader.new:                      ; preds = %.lr.ph.i.i485.preheader
  %unroll_iter10888 = and i32 %i.bmu, 536870910
  br label %.lr.ph.i.i485

.preheader63.loopexit.i.i490.unr-lcssa:           ; preds = %.lr.ph.i.i485
  %i.bmw = and i32 %i.bms, 16
  %lcmp.mod10883.not.not = icmp eq i32 %i.bmw, 0
  br i1 %lcmp.mod10883.not.not, label %.lr.ph.i.i485.epil.preheader, label %.preheader63.loopexit.i.i490

.lr.ph.i.i485.epil.preheader:                     ; preds = %.preheader63.loopexit.i.i490.unr-lcssa, %.lr.ph.i.i485.preheader
  %.067.i.i486.epil.init = phi ptr [ %0, %.lr.ph.i.i485.preheader ], [ %i.bny, %.preheader63.loopexit.i.i490.unr-lcssa ] ; 2 uses
  %.03466.i.i487.epil.init = phi ptr [ %1, %.lr.ph.i.i485.preheader ], [ %i.bnz, %.preheader63.loopexit.i.i490.unr-lcssa ] ; 2 uses
  %.04264.i.i489.epil.init = phi ptr [ %2, %.lr.ph.i.i485.preheader ], [ %i.boa, %.preheader63.loopexit.i.i490.unr-lcssa ] ; 2 uses
  %lcmp.mod10887 = trunc i32 %i.bmu to i1
  tail call void @llvm.assume(i1 %lcmp.mod10887)
  %i.bmx = load <16 x bfloat>, ptr %.067.i.i486.epil.init, align 1, !tbaa !555
  %i.bmy = fpext fast <16 x bfloat> %i.bmx to <16 x float>
  %i.bmz = load <16 x bfloat>, ptr %.03466.i.i487.epil.init, align 1, !tbaa !555
  %i.bna = fpext fast <16 x bfloat> %i.bmz to <16 x float>
  %i.bnb = fmul fast <16 x float> %i.bna, %i.bmy
  %i.bnc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bnb)
  store <16 x bfloat> %i.bnc, ptr %.04264.i.i489.epil.init, align 1, !tbaa !555
  %i.bnd = getelementptr inbounds nuw i8, ptr %.067.i.i486.epil.init, i64 32
  %i.bne = getelementptr inbounds nuw i8, ptr %.03466.i.i487.epil.init, i64 32
  %i.bnf = getelementptr inbounds nuw i8, ptr %.04264.i.i489.epil.init, i64 32
  br label %.preheader63.loopexit.i.i490

.preheader63.loopexit.i.i490:                     ; preds = %.preheader63.loopexit.i.i490.unr-lcssa, %.lr.ph.i.i485.epil.preheader
  %.lcssa9339 = phi ptr [ %i.bny, %.preheader63.loopexit.i.i490.unr-lcssa ], [ %i.bnd, %.lr.ph.i.i485.epil.preheader ]
  %.lcssa9338 = phi ptr [ %i.bnz, %.preheader63.loopexit.i.i490.unr-lcssa ], [ %i.bne, %.lr.ph.i.i485.epil.preheader ]
  %.lcssa9337 = phi ptr [ %i.boa, %.preheader63.loopexit.i.i490.unr-lcssa ], [ %i.bnf, %.lr.ph.i.i485.epil.preheader ]
  %i.bng = and i32 %i.bmo, 2147483632
  br label %.preheader63.i.i454

.preheader63.i.i454:                              ; preds = %.preheader63.loopexit.i.i490, %bb.bf
  %.042.lcssa.i.i455 = phi ptr [ %2, %bb.bf ], [ %.lcssa9337, %.preheader63.loopexit.i.i490 ] ; 2 uses
  %.038.lcssa.i.i456 = phi i32 [ 0, %bb.bf ], [ %i.bng, %.preheader63.loopexit.i.i490 ] ; 3 uses
  %.034.lcssa.i.i457 = phi ptr [ %1, %bb.bf ], [ %.lcssa9338, %.preheader63.loopexit.i.i490 ] ; 2 uses
  %.0.lcssa.i.i458 = phi ptr [ %0, %bb.bf ], [ %.lcssa9339, %.preheader63.loopexit.i.i490 ] ; 2 uses
  %i.bnh = or disjoint i32 %.038.lcssa.i.i456, 7
  %i.bni = icmp slt i32 %i.bnh, %i.bmo
  br i1 %i.bni, label %.lr.ph75.i.i480, label %.preheader62.i.i459

.lr.ph.i.i485:                                    ; preds = %.lr.ph.i.i485, %.lr.ph.i.i485.preheader.new
  %.067.i.i486 = phi ptr [ %0, %.lr.ph.i.i485.preheader.new ], [ %i.bny, %.lr.ph.i.i485 ] ; 3 uses
  %.03466.i.i487 = phi ptr [ %1, %.lr.ph.i.i485.preheader.new ], [ %i.bnz, %.lr.ph.i.i485 ] ; 3 uses
  %.04264.i.i489 = phi ptr [ %2, %.lr.ph.i.i485.preheader.new ], [ %i.boa, %.lr.ph.i.i485 ] ; 3 uses
  %niter10889 = phi i32 [ 0, %.lr.ph.i.i485.preheader.new ], [ %niter10889.next.1, %.lr.ph.i.i485 ]
  %i.bnj = load <16 x bfloat>, ptr %.067.i.i486, align 1, !tbaa !555
  %i.bnk = fpext fast <16 x bfloat> %i.bnj to <16 x float>
  %i.bnl = load <16 x bfloat>, ptr %.03466.i.i487, align 1, !tbaa !555
  %i.bnm = fpext fast <16 x bfloat> %i.bnl to <16 x float>
  %i.bnn = fmul fast <16 x float> %i.bnm, %i.bnk
  %i.bno = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bnn)
  store <16 x bfloat> %i.bno, ptr %.04264.i.i489, align 1, !tbaa !555
  %i.bnp = getelementptr inbounds nuw i8, ptr %.067.i.i486, i64 32
  %i.bnq = getelementptr inbounds nuw i8, ptr %.03466.i.i487, i64 32
  %i.bnr = getelementptr inbounds nuw i8, ptr %.04264.i.i489, i64 32
  %i.bns = load <16 x bfloat>, ptr %i.bnp, align 1, !tbaa !555
  %i.bnt = fpext fast <16 x bfloat> %i.bns to <16 x float>
  %i.bnu = load <16 x bfloat>, ptr %i.bnq, align 1, !tbaa !555
  %i.bnv = fpext fast <16 x bfloat> %i.bnu to <16 x float>
  %i.bnw = fmul fast <16 x float> %i.bnv, %i.bnt
  %i.bnx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.bnw)
  store <16 x bfloat> %i.bnx, ptr %i.bnr, align 1, !tbaa !555
  %i.bny = getelementptr inbounds nuw i8, ptr %.067.i.i486, i64 64 ; 3 uses
  %i.bnz = getelementptr inbounds nuw i8, ptr %.03466.i.i487, i64 64 ; 3 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %.04264.i.i489, i64 64 ; 3 uses
  %niter10889.next.1 = add i32 %niter10889, 2     ; 2 uses
  %niter10889.ncmp.1.not = icmp eq i32 %niter10889.next.1, %unroll_iter10888
  br i1 %niter10889.ncmp.1.not, label %.preheader63.loopexit.i.i490.unr-lcssa, label %.lr.ph.i.i485, !llvm.loop !69

.preheader62.i.i459:                              ; preds = %.lr.ph75.i.i480, %.preheader63.i.i454
  %.143.lcssa.i.i460 = phi ptr [ %.042.lcssa.i.i455, %.preheader63.i.i454 ], [ %i.bol, %.lr.ph75.i.i480 ] ; 2 uses
  %.139.lcssa.i.i461 = phi i32 [ %.038.lcssa.i.i456, %.preheader63.i.i454 ], [ %i.bom, %.lr.ph75.i.i480 ] ; 3 uses
  %.135.lcssa.i.i462 = phi ptr [ %.034.lcssa.i.i457, %.preheader63.i.i454 ], [ %i.bok, %.lr.ph75.i.i480 ] ; 2 uses
  %.1.lcssa.i.i463 = phi ptr [ %.0.lcssa.i.i458, %.preheader63.i.i454 ], [ %i.boj, %.lr.ph75.i.i480 ] ; 2 uses
  %i.bob = or disjoint i32 %.139.lcssa.i.i461, 3
  %i.boc = icmp slt i32 %i.bob, %i.bmo
  br i1 %i.boc, label %.lr.ph84.i.i475, label %.preheader.i.i464

.lr.ph75.i.i480:                                  ; preds = %.preheader63.i.i454, %.lr.ph75.i.i480
  %.174.i.i481 = phi ptr [ %i.boj, %.lr.ph75.i.i480 ], [ %.0.lcssa.i.i458, %.preheader63.i.i454 ] ; 2 uses
  %.13573.i.i482 = phi ptr [ %i.bok, %.lr.ph75.i.i480 ], [ %.034.lcssa.i.i457, %.preheader63.i.i454 ] ; 2 uses
  %.13972.i.i483 = phi i32 [ %i.bom, %.lr.ph75.i.i480 ], [ %.038.lcssa.i.i456, %.preheader63.i.i454 ]
  %.14371.i.i484 = phi ptr [ %i.bol, %.lr.ph75.i.i480 ], [ %.042.lcssa.i.i455, %.preheader63.i.i454 ] ; 2 uses
  %i.bod = load <8 x bfloat>, ptr %.174.i.i481, align 1, !tbaa !555
  %i.boe = fpext fast <8 x bfloat> %i.bod to <8 x float>
  %i.bof = load <8 x bfloat>, ptr %.13573.i.i482, align 1, !tbaa !555
  %i.bog = fpext fast <8 x bfloat> %i.bof to <8 x float>
  %i.boh = fmul fast <8 x float> %i.bog, %i.boe
  %i.boi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.boh)
  store <8 x bfloat> %i.boi, ptr %.14371.i.i484, align 1, !tbaa !555
  %i.boj = getelementptr inbounds nuw i8, ptr %.174.i.i481, i64 16 ; 2 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %.13573.i.i482, i64 16 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %.14371.i.i484, i64 16 ; 2 uses
  %i.bom = add nuw nsw i32 %.13972.i.i483, 8      ; 3 uses
  %i.bon = or disjoint i32 %i.bom, 7
  %i.boo = icmp slt i32 %i.bon, %i.bmo
  br i1 %i.boo, label %.lr.ph75.i.i480, label %.preheader62.i.i459, !llvm.loop !70

.preheader.i.i464:                                ; preds = %.lr.ph84.i.i475, %.preheader62.i.i459
  %.244.lcssa.i.i465 = phi ptr [ %.143.lcssa.i.i460, %.preheader62.i.i459 ], [ %i.brq, %.lr.ph84.i.i475 ] ; 7 uses
  %.240.lcssa.i.i466 = phi i32 [ %.139.lcssa.i.i461, %.preheader62.i.i459 ], [ %i.brr, %.lr.ph84.i.i475 ] ; 6 uses
  %.236.lcssa.i.i467 = phi ptr [ %.135.lcssa.i.i462, %.preheader62.i.i459 ], [ %i.brp, %.lr.ph84.i.i475 ] ; 7 uses
  %.2.lcssa.i.i468 = phi ptr [ %.1.lcssa.i.i463, %.preheader62.i.i459 ], [ %i.bro, %.lr.ph84.i.i475 ] ; 7 uses
  %.236.lcssa.i.i4678747 = ptrtoaddr ptr %.236.lcssa.i.i467 to i64
  %.244.lcssa.i.i4658748 = ptrtoaddr ptr %.2.lcssa.i.i468 to i64
  %.2.lcssa.i.i4688749 = ptrtoaddr ptr %.244.lcssa.i.i465 to i64 ; 2 uses
  %i.bop = icmp slt i32 %.240.lcssa.i.i466, %i.bmo
  br i1 %i.bop, label %iter.check8769, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8769:                                   ; preds = %.preheader.i.i464
  %i.boq = xor i32 %.240.lcssa.i.i466, -1
  %i.bor = add i32 %i.bmo, %i.boq                 ; 3 uses
  %i.bos = zext i32 %i.bor to i64
  %i.bot = add nuw nsw i64 %i.bos, 1              ; 5 uses
  %min.iters.check8750 = icmp ult i32 %i.bor, 7
  br i1 %min.iters.check8750, label %.lr.ph93.i.i469.preheader, label %vector.memcheck8751

vector.memcheck8751:                              ; preds = %iter.check8769
  %i.bou = sub i64 %.244.lcssa.i.i4658748, %.2.lcssa.i.i4688749
  %diff.check8752 = icmp ugt i64 %i.bou, -64
  %i.bov = sub i64 %.236.lcssa.i.i4678747, %.2.lcssa.i.i4688749
  %diff.check8753 = icmp ugt i64 %i.bov, -64
  %conflict.rdx8754 = or i1 %diff.check8752, %diff.check8753
  br i1 %conflict.rdx8754, label %.lr.ph93.i.i469.preheader, label %vector.main.loop.iter.check8755

vector.main.loop.iter.check8755:                  ; preds = %vector.memcheck8751
  %min.iters.check8756 = icmp ult i32 %i.bor, 31
  br i1 %min.iters.check8756, label %vec.epilog.ph8773, label %vector.ph8757

vector.ph8757:                                    ; preds = %vector.main.loop.iter.check8755
  %i.bow = and i64 %i.bot, 24
  %n.vec8758 = and i64 %i.bot, 8589934560         ; 5 uses
  %i.box = shl nuw nsw i64 %n.vec8758, 1          ; 3 uses
  %i.boy = getelementptr i8, ptr %.2.lcssa.i.i468, i64 %i.box
  %i.boz = getelementptr i8, ptr %.236.lcssa.i.i467, i64 %i.box
  %i.bpa = trunc i64 %n.vec8758 to i32
  %i.bpb = add i32 %.240.lcssa.i.i466, %i.bpa
  %i.bpc = getelementptr i8, ptr %.244.lcssa.i.i465, i64 %i.box
  br label %vector.body8759

vector.body8759:                                  ; preds = %vector.ph8757, %vector.body8759
  %index8760 = phi i64 [ 0, %vector.ph8757 ], [ %index.next8766, %vector.body8759 ] ; 2 uses
  %i.bpd = shl i64 %index8760, 1                  ; 3 uses
  %next.gep8761 = getelementptr i8, ptr %.2.lcssa.i.i468, i64 %i.bpd
  %next.gep8762 = getelementptr i8, ptr %.236.lcssa.i.i467, i64 %i.bpd
  %next.gep8763 = getelementptr i8, ptr %.244.lcssa.i.i465, i64 %i.bpd
  %wide.load8764 = load <32 x i16>, ptr %next.gep8761, align 2, !tbaa !558
  %i.bpe = zext <32 x i16> %wide.load8764 to <32 x i32>
  %i.bpf = shl nuw <32 x i32> %i.bpe, splat (i32 16)
  %i.bpg = bitcast <32 x i32> %i.bpf to <32 x float>
  %wide.load8765 = load <32 x i16>, ptr %next.gep8762, align 2, !tbaa !558
  %i.bph = zext <32 x i16> %wide.load8765 to <32 x i32>
  %i.bpi = shl nuw <32 x i32> %i.bph, splat (i32 16)
  %i.bpj = bitcast <32 x i32> %i.bpi to <32 x float>
  %i.bpk = fmul fast <32 x float> %i.bpj, %i.bpg
  %i.bpl = bitcast <32 x float> %i.bpk to <32 x i32>
  %i.bpm = lshr <32 x i32> %i.bpl, splat (i32 16)
  %i.bpn = trunc nuw <32 x i32> %i.bpm to <32 x i16>
  store <32 x i16> %i.bpn, ptr %next.gep8763, align 2, !tbaa !558
  %index.next8766 = add nuw i64 %index8760, 32    ; 2 uses
  %i.bpo = icmp eq i64 %index.next8766, %n.vec8758
  br i1 %i.bpo, label %middle.block8767, label %vector.body8759, !llvm.loop !71

middle.block8767:                                 ; preds = %vector.body8759
  %cmp.n8768 = icmp eq i64 %i.bot, %n.vec8758
  br i1 %cmp.n8768, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8770

vec.epilog.iter.check8770:                        ; preds = %middle.block8767
  %min.epilog.iters.check8772 = icmp eq i64 %i.bow, 0
  br i1 %min.epilog.iters.check8772, label %.lr.ph93.i.i469.preheader, label %vec.epilog.ph8773, !prof !561

vec.epilog.ph8773:                                ; preds = %vector.main.loop.iter.check8755, %vec.epilog.iter.check8770
  %vec.epilog.resume.val8774 = phi i64 [ %n.vec8758, %vec.epilog.iter.check8770 ], [ 0, %vector.main.loop.iter.check8755 ]
  %n.vec8775 = and i64 %i.bot, 8589934584         ; 4 uses
  %i.bpp = shl nuw nsw i64 %n.vec8775, 1          ; 3 uses
  %i.bpq = getelementptr i8, ptr %.2.lcssa.i.i468, i64 %i.bpp
  %i.bpr = getelementptr i8, ptr %.236.lcssa.i.i467, i64 %i.bpp
  %i.bps = trunc i64 %n.vec8775 to i32
  %i.bpt = add i32 %.240.lcssa.i.i466, %i.bps
  %i.bpu = getelementptr i8, ptr %.244.lcssa.i.i465, i64 %i.bpp
  br label %vec.epilog.vector.body8776

vec.epilog.vector.body8776:                       ; preds = %vec.epilog.vector.body8776, %vec.epilog.ph8773
  %index8777 = phi i64 [ %vec.epilog.resume.val8774, %vec.epilog.ph8773 ], [ %index.next8783, %vec.epilog.vector.body8776 ] ; 2 uses
  %i.bpv = shl i64 %index8777, 1                  ; 3 uses
  %next.gep8778 = getelementptr i8, ptr %.2.lcssa.i.i468, i64 %i.bpv
  %next.gep8779 = getelementptr i8, ptr %.236.lcssa.i.i467, i64 %i.bpv
  %next.gep8780 = getelementptr i8, ptr %.244.lcssa.i.i465, i64 %i.bpv
  %wide.load8781 = load <8 x i16>, ptr %next.gep8778, align 2, !tbaa !558
  %i.bpw = zext <8 x i16> %wide.load8781 to <8 x i32>
  %i.bpx = shl nuw <8 x i32> %i.bpw, splat (i32 16)
  %i.bpy = bitcast <8 x i32> %i.bpx to <8 x float>
  %wide.load8782 = load <8 x i16>, ptr %next.gep8779, align 2, !tbaa !558
  %i.bpz = zext <8 x i16> %wide.load8782 to <8 x i32>
  %i.bqa = shl nuw <8 x i32> %i.bpz, splat (i32 16)
  %i.bqb = bitcast <8 x i32> %i.bqa to <8 x float>
  %i.bqc = fmul fast <8 x float> %i.bqb, %i.bpy
  %i.bqd = bitcast <8 x float> %i.bqc to <8 x i32>
  %i.bqe = lshr <8 x i32> %i.bqd, splat (i32 16)
  %i.bqf = trunc nuw <8 x i32> %i.bqe to <8 x i16>
  store <8 x i16> %i.bqf, ptr %next.gep8780, align 2, !tbaa !558
  %index.next8783 = add nuw i64 %index8777, 8     ; 2 uses
  %i.bqg = icmp eq i64 %index.next8783, %n.vec8775
  br i1 %i.bqg, label %vec.epilog.middle.block8784, label %vec.epilog.vector.body8776, !llvm.loop !72

vec.epilog.middle.block8784:                      ; preds = %vec.epilog.vector.body8776
  %cmp.n8785 = icmp eq i64 %i.bot, %n.vec8775
  br i1 %cmp.n8785, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i469.preheader

.lr.ph93.i.i469.preheader:                        ; preds = %iter.check8769, %vector.memcheck8751, %vec.epilog.iter.check8770, %vec.epilog.middle.block8784
  %.392.i.i470.ph = phi ptr [ %.2.lcssa.i.i468, %iter.check8769 ], [ %.2.lcssa.i.i468, %vector.memcheck8751 ], [ %i.boy, %vec.epilog.iter.check8770 ], [ %i.bpq, %vec.epilog.middle.block8784 ] ; 3 uses
  %.33791.i.i471.ph = phi ptr [ %.236.lcssa.i.i467, %iter.check8769 ], [ %.236.lcssa.i.i467, %vector.memcheck8751 ], [ %i.boz, %vec.epilog.iter.check8770 ], [ %i.bpr, %vec.epilog.middle.block8784 ] ; 3 uses
  %.34190.i.i472.ph = phi i32 [ %.240.lcssa.i.i466, %iter.check8769 ], [ %.240.lcssa.i.i466, %vector.memcheck8751 ], [ %i.bpb, %vec.epilog.iter.check8770 ], [ %i.bpt, %vec.epilog.middle.block8784 ] ; 4 uses
  %.34589.i.i473.ph = phi ptr [ %.244.lcssa.i.i465, %iter.check8769 ], [ %.244.lcssa.i.i465, %vector.memcheck8751 ], [ %i.bpc, %vec.epilog.iter.check8770 ], [ %i.bpu, %vec.epilog.middle.block8784 ] ; 3 uses
  %i.bqh = sub i32 %i.bmo, %.34190.i.i472.ph
  %.neg11084 = add i32 %.34190.i.i472.ph, 1
  %xtraiter10890 = and i32 %i.bqh, 1
  %lcmp.mod10891.not = icmp eq i32 %xtraiter10890, 0
  br i1 %lcmp.mod10891.not, label %.lr.ph93.i.i469.prol.loopexit, label %.lr.ph93.i.i469.prol

.lr.ph93.i.i469.prol:                             ; preds = %.lr.ph93.i.i469.preheader
  %i.bqi = getelementptr inbounds nuw i8, ptr %.392.i.i470.ph, i64 2
  %i.bqj = load i16, ptr %.392.i.i470.ph, align 2, !tbaa !558
  %i.bqk = zext i16 %i.bqj to i32
  %i.bql = shl nuw i32 %i.bqk, 16
  %i.bqm = bitcast i32 %i.bql to float
  %i.bqn = getelementptr inbounds nuw i8, ptr %.33791.i.i471.ph, i64 2
  %i.bqo = load i16, ptr %.33791.i.i471.ph, align 2, !tbaa !558
  %i.bqp = zext i16 %i.bqo to i32
  %i.bqq = shl nuw i32 %i.bqp, 16
  %i.bqr = bitcast i32 %i.bqq to float
  %i.bqs = fmul fast float %i.bqr, %i.bqm
  %i.bqt = bitcast float %i.bqs to i32
  %i.bqu = lshr i32 %i.bqt, 16
  %i.bqv = trunc nuw i32 %i.bqu to i16
  %i.bqw = getelementptr inbounds nuw i8, ptr %.34589.i.i473.ph, i64 2
  store i16 %i.bqv, ptr %.34589.i.i473.ph, align 2, !tbaa !558
  %i.bqx = add nuw nsw i32 %.34190.i.i472.ph, 1
  br label %.lr.ph93.i.i469.prol.loopexit

.lr.ph93.i.i469.prol.loopexit:                    ; preds = %.lr.ph93.i.i469.prol, %.lr.ph93.i.i469.preheader
  %.392.i.i470.unr = phi ptr [ %.392.i.i470.ph, %.lr.ph93.i.i469.preheader ], [ %i.bqi, %.lr.ph93.i.i469.prol ]
  %.33791.i.i471.unr = phi ptr [ %.33791.i.i471.ph, %.lr.ph93.i.i469.preheader ], [ %i.bqn, %.lr.ph93.i.i469.prol ]
  %.34190.i.i472.unr = phi i32 [ %.34190.i.i472.ph, %.lr.ph93.i.i469.preheader ], [ %i.bqx, %.lr.ph93.i.i469.prol ]
  %.34589.i.i473.unr = phi ptr [ %.34589.i.i473.ph, %.lr.ph93.i.i469.preheader ], [ %i.bqw, %.lr.ph93.i.i469.prol ]
  %i.bqy = icmp eq i32 %i.bmo, %.neg11084
  br i1 %i.bqy, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i469

.lr.ph84.i.i475:                                  ; preds = %.preheader62.i.i459, %.lr.ph84.i.i475
  %.283.i.i476 = phi ptr [ %i.bro, %.lr.ph84.i.i475 ], [ %.1.lcssa.i.i463, %.preheader62.i.i459 ] ; 2 uses
  %.23682.i.i477 = phi ptr [ %i.brp, %.lr.ph84.i.i475 ], [ %.135.lcssa.i.i462, %.preheader62.i.i459 ] ; 2 uses
  %.24081.i.i478 = phi i32 [ %i.brr, %.lr.ph84.i.i475 ], [ %.139.lcssa.i.i461, %.preheader62.i.i459 ]
  %.24480.i.i479 = phi ptr [ %i.brq, %.lr.ph84.i.i475 ], [ %.143.lcssa.i.i460, %.preheader62.i.i459 ] ; 2 uses
  %i.bqz = load i64, ptr %.283.i.i476, align 1, !tbaa !555
  %i.bra = insertelement <2 x i64> poison, i64 %i.bqz, i64 0
  %i.brb = bitcast <2 x i64> %i.bra to <8 x i16>
  %i.brc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.brd = bitcast <8 x i16> %i.brc to <4 x float>
  %i.bre = load i64, ptr %.23682.i.i477, align 1, !tbaa !555
  %i.brf = insertelement <2 x i64> poison, i64 %i.bre, i64 0
  %i.brg = bitcast <2 x i64> %i.brf to <8 x i16>
  %i.brh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bri = bitcast <8 x i16> %i.brh to <4 x float>
  %i.brj = fmul fast <4 x float> %i.bri, %i.brd
  %i.brk = shufflevector <4 x float> %i.brj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.brl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.brk)
  %i.brm = bitcast <8 x bfloat> %i.brl to <2 x i64>
  %i.brn = extractelement <2 x i64> %i.brm, i64 0
  store i64 %i.brn, ptr %.24480.i.i479, align 1, !tbaa !555
  %i.bro = getelementptr inbounds nuw i8, ptr %.283.i.i476, i64 8 ; 2 uses
  %i.brp = getelementptr inbounds nuw i8, ptr %.23682.i.i477, i64 8 ; 2 uses
  %i.brq = getelementptr inbounds nuw i8, ptr %.24480.i.i479, i64 8 ; 2 uses
  %i.brr = add nuw nsw i32 %.24081.i.i478, 4      ; 3 uses
  %i.brs = or disjoint i32 %i.brr, 3
  %i.brt = icmp slt i32 %i.brs, %i.bmo
  br i1 %i.brt, label %.lr.ph84.i.i475, label %.preheader.i.i464, !llvm.loop !73

.lr.ph93.i.i469:                                  ; preds = %.lr.ph93.i.i469.prol.loopexit, %.lr.ph93.i.i469
  %.392.i.i470 = phi ptr [ %i.bsj, %.lr.ph93.i.i469 ], [ %.392.i.i470.unr, %.lr.ph93.i.i469.prol.loopexit ] ; 3 uses
  %.33791.i.i471 = phi ptr [ %i.bso, %.lr.ph93.i.i469 ], [ %.33791.i.i471.unr, %.lr.ph93.i.i469.prol.loopexit ] ; 3 uses
  %.34190.i.i472 = phi i32 [ %i.bsy, %.lr.ph93.i.i469 ], [ %.34190.i.i472.unr, %.lr.ph93.i.i469.prol.loopexit ]
  %.34589.i.i473 = phi ptr [ %i.bsx, %.lr.ph93.i.i469 ], [ %.34589.i.i473.unr, %.lr.ph93.i.i469.prol.loopexit ] ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %.392.i.i470, i64 2
  %i.brv = load i16, ptr %.392.i.i470, align 2, !tbaa !558
  %i.brw = zext i16 %i.brv to i32
  %i.brx = shl nuw i32 %i.brw, 16
  %i.bry = bitcast i32 %i.brx to float
  %i.brz = getelementptr inbounds nuw i8, ptr %.33791.i.i471, i64 2
  %i.bsa = load i16, ptr %.33791.i.i471, align 2, !tbaa !558
  %i.bsb = zext i16 %i.bsa to i32
  %i.bsc = shl nuw i32 %i.bsb, 16
  %i.bsd = bitcast i32 %i.bsc to float
  %i.bse = fmul fast float %i.bsd, %i.bry
  %i.bsf = bitcast float %i.bse to i32
  %i.bsg = lshr i32 %i.bsf, 16
  %i.bsh = trunc nuw i32 %i.bsg to i16
  %i.bsi = getelementptr inbounds nuw i8, ptr %.34589.i.i473, i64 2
  store i16 %i.bsh, ptr %.34589.i.i473, align 2, !tbaa !558
  %i.bsj = getelementptr inbounds nuw i8, ptr %.392.i.i470, i64 4
  %i.bsk = load i16, ptr %i.bru, align 2, !tbaa !558
  %i.bsl = zext i16 %i.bsk to i32
  %i.bsm = shl nuw i32 %i.bsl, 16
  %i.bsn = bitcast i32 %i.bsm to float
  %i.bso = getelementptr inbounds nuw i8, ptr %.33791.i.i471, i64 4
  %i.bsp = load i16, ptr %i.brz, align 2, !tbaa !558
  %i.bsq = zext i16 %i.bsp to i32
  %i.bsr = shl nuw i32 %i.bsq, 16
  %i.bss = bitcast i32 %i.bsr to float
  %i.bst = fmul fast float %i.bss, %i.bsn
  %i.bsu = bitcast float %i.bst to i32
  %i.bsv = lshr i32 %i.bsu, 16
  %i.bsw = trunc nuw i32 %i.bsv to i16
  %i.bsx = getelementptr inbounds nuw i8, ptr %.34589.i.i473, i64 4
  store i16 %i.bsw, ptr %i.bsi, align 2, !tbaa !558
  %i.bsy = add nuw nsw i32 %.34190.i.i472, 2      ; 2 uses
  %exitcond.not.i.i474.1 = icmp eq i32 %i.bsy, %i.bmo
  br i1 %exitcond.not.i.i474.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i469, !llvm.loop !74

bb.bg:                                            ; preds = %bb.be
  %i.bsz = icmp eq i32 %4, 1
  br i1 %i.bsz, label %bb.bh, label %bb.bn
end_hunk_2
begin_hunk_3_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.crn = shufflevector <8 x float> %i.crm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cro = fmul fast <8 x float> %i.crn, %i.crg
  %i.crp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cro)
  store <8 x bfloat> %i.crp, ptr %.13152.i.i331, align 1, !tbaa !555
  %i.crq = getelementptr inbounds nuw i8, ptr %.154.i.i329, i64 2
  %i.crr = getelementptr inbounds nuw i8, ptr %.13152.i.i331, i64 16
  %i.crs = load i16, ptr %i.crq, align 2, !tbaa !558
  %i.crt = zext i16 %i.crs to i32
  %i.cru = shl nuw i32 %i.crt, 16
  %i.crv = insertelement <8 x i32> poison, i32 %i.cru, i64 0
  %i.crw = bitcast <8 x i32> %i.crv to <8 x float>
  %i.crx = shufflevector <8 x float> %i.crw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cry = fmul fast <8 x float> %i.crx, %i.crg
  %i.crz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cry)
  store <8 x bfloat> %i.crz, ptr %i.crr, align 1, !tbaa !555
  %i.csa = getelementptr inbounds nuw i8, ptr %.154.i.i329, i64 4 ; 2 uses
  %i.csb = getelementptr inbounds nuw i8, ptr %.13152.i.i331, i64 32 ; 2 uses
  %niter10833.next.1 = add i32 %niter10833, 2     ; 2 uses
  %niter10833.ncmp.1 = icmp eq i32 %niter10833.next.1, %unroll_iter10832
  br i1 %niter10833.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9371.unr-lcssa, label %.lr.ph55.i.i328, !llvm.loop !97

bb.cd:                                            ; preds = %bb.ca
  %i.csc = load i64, ptr %0, align 1, !tbaa !555
  %i.csd = insertelement <2 x i64> poison, i64 %i.csc, i64 0
  %i.cse = bitcast <2 x i64> %i.csd to <8 x i16>  ; 3 uses
  %xtraiter10823 = and i32 %.sroa.speculated98.i321, 1
  %i.csf = icmp eq i32 %.sroa.speculated98.i321, 1
  br i1 %i.csf, label %.lr.ph.i86.i323.epil.preheader, label %.new10822

.new10822:                                        ; preds = %bb.cd
  %unroll_iter10826 = and i32 %.sroa.speculated98.i321, 2147483646
  %i.csg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cse, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csh = bitcast <16 x i16> %i.csg to <8 x float>
  %i.csi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cse, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.csj = bitcast <16 x i16> %i.csi to <8 x float>
  br label %.lr.ph.i86.i323

.lr.ph.i86.i323:                                  ; preds = %.lr.ph.i86.i323, %.new10822
  %.250.i.i325 = phi ptr [ %1, %.new10822 ], [ %i.ctg, %.lr.ph.i86.i323 ] ; 3 uses
  %.23249.i.i326 = phi ptr [ %2, %.new10822 ], [ %i.cth, %.lr.ph.i86.i323 ] ; 3 uses
  %niter10827 = phi i32 [ 0, %.new10822 ], [ %niter10827.next.1, %.lr.ph.i86.i323 ]
  %i.csk = load i16, ptr %.250.i.i325, align 2, !tbaa !558
  %i.csl = zext i16 %i.csk to i32
  %i.csm = shl nuw i32 %i.csl, 16
  %i.csn = insertelement <4 x i32> poison, i32 %i.csm, i64 0
  %i.cso = bitcast <4 x i32> %i.csn to <4 x float>
  %i.csp = shufflevector <4 x float> %i.cso, <4 x float> poison, <8 x i32> zeroinitializer
  %i.csq = fmul fast <8 x float> %i.csp, %i.csh
  %i.csr = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.csq)
  %i.css = bitcast <8 x bfloat> %i.csr to <2 x i64>
  %i.cst = extractelement <2 x i64> %i.css, i64 0
  store i64 %i.cst, ptr %.23249.i.i326, align 1, !tbaa !555
  %i.csu = getelementptr inbounds nuw i8, ptr %.250.i.i325, i64 2
  %i.csv = getelementptr inbounds nuw i8, ptr %.23249.i.i326, i64 8
  %i.csw = load i16, ptr %i.csu, align 2, !tbaa !558
  %i.csx = zext i16 %i.csw to i32
  %i.csy = shl nuw i32 %i.csx, 16
  %i.csz = insertelement <4 x i32> poison, i32 %i.csy, i64 0
  %i.cta = bitcast <4 x i32> %i.csz to <4 x float>
  %i.ctb = shufflevector <4 x float> %i.cta, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ctc = fmul fast <8 x float> %i.ctb, %i.csj
  %i.ctd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ctc)
  %i.cte = bitcast <8 x bfloat> %i.ctd to <2 x i64>
  %i.ctf = extractelement <2 x i64> %i.cte, i64 0
  store i64 %i.ctf, ptr %i.csv, align 1, !tbaa !555
  %i.ctg = getelementptr inbounds nuw i8, ptr %.250.i.i325, i64 4 ; 2 uses
  %i.cth = getelementptr inbounds nuw i8, ptr %.23249.i.i326, i64 16 ; 2 uses
  %niter10827.next.1 = add i32 %niter10827, 2     ; 2 uses
  %niter10827.ncmp.1 = icmp eq i32 %niter10827.next.1, %unroll_iter10826
  br i1 %niter10827.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9372.unr-lcssa, label %.lr.ph.i86.i323, !llvm.loop !98

bb.ce:                                            ; preds = %bb.a
  %.sroa.speculated98.i491 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i492 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.cti = mul i32 %.sroa.speculated.i492, %.sroa.speculated98.i491 ; 48 uses
  %i.ctj = icmp eq i32 %5, %6
  br i1 %i.ctj, label %bb.cf, label %bb.cv

bb.cf:                                            ; preds = %bb.ce
  %i.ctk = icmp eq i32 %3, %4
  br i1 %i.ctk, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ctl = icmp sgt i32 %i.cti, 15
  br i1 %i.ctl, label %.lr.ph.i.i655.preheader, label %.preheader63.i.i624

.lr.ph.i.i655.preheader:                          ; preds = %bb.cg
  %i.ctm = add nsw i32 %i.cti, -16                ; 2 uses
  %i.ctn = lshr i32 %i.ctm, 4                     ; 2 uses
  %i.cto = add nuw nsw i32 %i.ctn, 1              ; 2 uses
  %i.ctp = icmp eq i32 %i.ctn, 0
  br i1 %i.ctp, label %.lr.ph.i.i655.epil.preheader, label %.lr.ph.i.i655.preheader.new

.lr.ph.i.i655.preheader.new:                      ; preds = %.lr.ph.i.i655.preheader
  %unroll_iter10818 = and i32 %i.cto, 536870910
  br label %.lr.ph.i.i655

.preheader63.loopexit.i.i660.unr-lcssa:           ; preds = %.lr.ph.i.i655
  %i.ctq = and i32 %i.ctm, 16
  %lcmp.mod10813.not.not = icmp eq i32 %i.ctq, 0
  br i1 %lcmp.mod10813.not.not, label %.lr.ph.i.i655.epil.preheader, label %.preheader63.loopexit.i.i660

.lr.ph.i.i655.epil.preheader:                     ; preds = %.preheader63.loopexit.i.i660.unr-lcssa, %.lr.ph.i.i655.preheader
  %.067.i.i656.epil.init = phi ptr [ %0, %.lr.ph.i.i655.preheader ], [ %i.cus, %.preheader63.loopexit.i.i660.unr-lcssa ] ; 2 uses
  %.03466.i.i657.epil.init = phi ptr [ %1, %.lr.ph.i.i655.preheader ], [ %i.cut, %.preheader63.loopexit.i.i660.unr-lcssa ] ; 2 uses
  %.04264.i.i659.epil.init = phi ptr [ %2, %.lr.ph.i.i655.preheader ], [ %i.cuu, %.preheader63.loopexit.i.i660.unr-lcssa ] ; 2 uses
  %lcmp.mod10817 = trunc i32 %i.cto to i1
  tail call void @llvm.assume(i1 %lcmp.mod10817)
  %i.ctr = load <16 x bfloat>, ptr %.067.i.i656.epil.init, align 1, !tbaa !555
  %i.cts = fpext fast <16 x bfloat> %i.ctr to <16 x float>
  %i.ctt = load <16 x bfloat>, ptr %.03466.i.i657.epil.init, align 1, !tbaa !555
  %i.ctu = fpext fast <16 x bfloat> %i.ctt to <16 x float>
  %i.ctv = fdiv fast <16 x float> %i.cts, %i.ctu
  %i.ctw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ctv)
  store <16 x bfloat> %i.ctw, ptr %.04264.i.i659.epil.init, align 1, !tbaa !555
  %i.ctx = getelementptr inbounds nuw i8, ptr %.067.i.i656.epil.init, i64 32
  %i.cty = getelementptr inbounds nuw i8, ptr %.03466.i.i657.epil.init, i64 32
  %i.ctz = getelementptr inbounds nuw i8, ptr %.04264.i.i659.epil.init, i64 32
  br label %.preheader63.loopexit.i.i660

.preheader63.loopexit.i.i660:                     ; preds = %.preheader63.loopexit.i.i660.unr-lcssa, %.lr.ph.i.i655.epil.preheader
  %.lcssa9384 = phi ptr [ %i.cus, %.preheader63.loopexit.i.i660.unr-lcssa ], [ %i.ctx, %.lr.ph.i.i655.epil.preheader ]
  %.lcssa9383 = phi ptr [ %i.cut, %.preheader63.loopexit.i.i660.unr-lcssa ], [ %i.cty, %.lr.ph.i.i655.epil.preheader ]
  %.lcssa9382 = phi ptr [ %i.cuu, %.preheader63.loopexit.i.i660.unr-lcssa ], [ %i.ctz, %.lr.ph.i.i655.epil.preheader ]
  %i.cua = and i32 %i.cti, 2147483632
  br label %.preheader63.i.i624

.preheader63.i.i624:                              ; preds = %.preheader63.loopexit.i.i660, %bb.cg
  %.042.lcssa.i.i625 = phi ptr [ %2, %bb.cg ], [ %.lcssa9382, %.preheader63.loopexit.i.i660 ] ; 2 uses
  %.038.lcssa.i.i626 = phi i32 [ 0, %bb.cg ], [ %i.cua, %.preheader63.loopexit.i.i660 ] ; 3 uses
  %.034.lcssa.i.i627 = phi ptr [ %1, %bb.cg ], [ %.lcssa9383, %.preheader63.loopexit.i.i660 ] ; 2 uses
  %.0.lcssa.i.i628 = phi ptr [ %0, %bb.cg ], [ %.lcssa9384, %.preheader63.loopexit.i.i660 ] ; 2 uses
  %i.cub = or disjoint i32 %.038.lcssa.i.i626, 7
  %i.cuc = icmp slt i32 %i.cub, %i.cti
  br i1 %i.cuc, label %.lr.ph75.i.i650, label %.preheader62.i.i629

.lr.ph.i.i655:                                    ; preds = %.lr.ph.i.i655, %.lr.ph.i.i655.preheader.new
  %.067.i.i656 = phi ptr [ %0, %.lr.ph.i.i655.preheader.new ], [ %i.cus, %.lr.ph.i.i655 ] ; 3 uses
  %.03466.i.i657 = phi ptr [ %1, %.lr.ph.i.i655.preheader.new ], [ %i.cut, %.lr.ph.i.i655 ] ; 3 uses
  %.04264.i.i659 = phi ptr [ %2, %.lr.ph.i.i655.preheader.new ], [ %i.cuu, %.lr.ph.i.i655 ] ; 3 uses
  %niter10819 = phi i32 [ 0, %.lr.ph.i.i655.preheader.new ], [ %niter10819.next.1, %.lr.ph.i.i655 ]
  %i.cud = load <16 x bfloat>, ptr %.067.i.i656, align 1, !tbaa !555
  %i.cue = fpext fast <16 x bfloat> %i.cud to <16 x float>
  %i.cuf = load <16 x bfloat>, ptr %.03466.i.i657, align 1, !tbaa !555
  %i.cug = fpext fast <16 x bfloat> %i.cuf to <16 x float>
  %i.cuh = fdiv fast <16 x float> %i.cue, %i.cug
  %i.cui = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cuh)
  store <16 x bfloat> %i.cui, ptr %.04264.i.i659, align 1, !tbaa !555
  %i.cuj = getelementptr inbounds nuw i8, ptr %.067.i.i656, i64 32
  %i.cuk = getelementptr inbounds nuw i8, ptr %.03466.i.i657, i64 32
  %i.cul = getelementptr inbounds nuw i8, ptr %.04264.i.i659, i64 32
  %i.cum = load <16 x bfloat>, ptr %i.cuj, align 1, !tbaa !555
  %i.cun = fpext fast <16 x bfloat> %i.cum to <16 x float>
  %i.cuo = load <16 x bfloat>, ptr %i.cuk, align 1, !tbaa !555
  %i.cup = fpext fast <16 x bfloat> %i.cuo to <16 x float>
  %i.cuq = fdiv fast <16 x float> %i.cun, %i.cup
  %i.cur = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cuq)
  store <16 x bfloat> %i.cur, ptr %i.cul, align 1, !tbaa !555
  %i.cus = getelementptr inbounds nuw i8, ptr %.067.i.i656, i64 64 ; 3 uses
  %i.cut = getelementptr inbounds nuw i8, ptr %.03466.i.i657, i64 64 ; 3 uses
  %i.cuu = getelementptr inbounds nuw i8, ptr %.04264.i.i659, i64 64 ; 3 uses
  %niter10819.next.1 = add i32 %niter10819, 2     ; 2 uses
  %niter10819.ncmp.1.not = icmp eq i32 %niter10819.next.1, %unroll_iter10818
  br i1 %niter10819.ncmp.1.not, label %.preheader63.loopexit.i.i660.unr-lcssa, label %.lr.ph.i.i655, !llvm.loop !99

.preheader62.i.i629:                              ; preds = %.lr.ph75.i.i650, %.preheader63.i.i624
  %.143.lcssa.i.i630 = phi ptr [ %.042.lcssa.i.i625, %.preheader63.i.i624 ], [ %i.cvf, %.lr.ph75.i.i650 ] ; 2 uses
  %.139.lcssa.i.i631 = phi i32 [ %.038.lcssa.i.i626, %.preheader63.i.i624 ], [ %i.cvg, %.lr.ph75.i.i650 ] ; 3 uses
  %.135.lcssa.i.i632 = phi ptr [ %.034.lcssa.i.i627, %.preheader63.i.i624 ], [ %i.cve, %.lr.ph75.i.i650 ] ; 2 uses
  %.1.lcssa.i.i633 = phi ptr [ %.0.lcssa.i.i628, %.preheader63.i.i624 ], [ %i.cvd, %.lr.ph75.i.i650 ] ; 2 uses
  %i.cuv = or disjoint i32 %.139.lcssa.i.i631, 3
  %i.cuw = icmp slt i32 %i.cuv, %i.cti
  br i1 %i.cuw, label %.lr.ph84.i.i645, label %.preheader.i.i634

.lr.ph75.i.i650:                                  ; preds = %.preheader63.i.i624, %.lr.ph75.i.i650
  %.174.i.i651 = phi ptr [ %i.cvd, %.lr.ph75.i.i650 ], [ %.0.lcssa.i.i628, %.preheader63.i.i624 ] ; 2 uses
  %.13573.i.i652 = phi ptr [ %i.cve, %.lr.ph75.i.i650 ], [ %.034.lcssa.i.i627, %.preheader63.i.i624 ] ; 2 uses
  %.13972.i.i653 = phi i32 [ %i.cvg, %.lr.ph75.i.i650 ], [ %.038.lcssa.i.i626, %.preheader63.i.i624 ]
  %.14371.i.i654 = phi ptr [ %i.cvf, %.lr.ph75.i.i650 ], [ %.042.lcssa.i.i625, %.preheader63.i.i624 ] ; 2 uses
  %i.cux = load <8 x bfloat>, ptr %.174.i.i651, align 1, !tbaa !555
  %i.cuy = fpext fast <8 x bfloat> %i.cux to <8 x float>
  %i.cuz = load <8 x bfloat>, ptr %.13573.i.i652, align 1, !tbaa !555
  %i.cva = fpext fast <8 x bfloat> %i.cuz to <8 x float>
  %i.cvb = fdiv fast <8 x float> %i.cuy, %i.cva
  %i.cvc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cvb)
  store <8 x bfloat> %i.cvc, ptr %.14371.i.i654, align 1, !tbaa !555
  %i.cvd = getelementptr inbounds nuw i8, ptr %.174.i.i651, i64 16 ; 2 uses
  %i.cve = getelementptr inbounds nuw i8, ptr %.13573.i.i652, i64 16 ; 2 uses
  %i.cvf = getelementptr inbounds nuw i8, ptr %.14371.i.i654, i64 16 ; 2 uses
  %i.cvg = add nuw nsw i32 %.13972.i.i653, 8      ; 3 uses
  %i.cvh = or disjoint i32 %i.cvg, 7
  %i.cvi = icmp slt i32 %i.cvh, %i.cti
  br i1 %i.cvi, label %.lr.ph75.i.i650, label %.preheader62.i.i629, !llvm.loop !100

.preheader.i.i634:                                ; preds = %.lr.ph84.i.i645, %.preheader62.i.i629
  %.244.lcssa.i.i635 = phi ptr [ %.143.lcssa.i.i630, %.preheader62.i.i629 ], [ %i.cyk, %.lr.ph84.i.i645 ] ; 7 uses
  %.240.lcssa.i.i636 = phi i32 [ %.139.lcssa.i.i631, %.preheader62.i.i629 ], [ %i.cyl, %.lr.ph84.i.i645 ] ; 6 uses
  %.236.lcssa.i.i637 = phi ptr [ %.135.lcssa.i.i632, %.preheader62.i.i629 ], [ %i.cyj, %.lr.ph84.i.i645 ] ; 7 uses
  %.2.lcssa.i.i638 = phi ptr [ %.1.lcssa.i.i633, %.preheader62.i.i629 ], [ %i.cyi, %.lr.ph84.i.i645 ] ; 7 uses
  %.236.lcssa.i.i6378559 = ptrtoaddr ptr %.236.lcssa.i.i637 to i64
  %.244.lcssa.i.i6358560 = ptrtoaddr ptr %.2.lcssa.i.i638 to i64
  %.2.lcssa.i.i6388561 = ptrtoaddr ptr %.244.lcssa.i.i635 to i64 ; 2 uses
  %i.cvj = icmp slt i32 %.240.lcssa.i.i636, %i.cti
  br i1 %i.cvj, label %iter.check8581, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8581:                                   ; preds = %.preheader.i.i634
  %i.cvk = xor i32 %.240.lcssa.i.i636, -1
  %i.cvl = add i32 %i.cti, %i.cvk                 ; 3 uses
  %i.cvm = zext i32 %i.cvl to i64
  %i.cvn = add nuw nsw i64 %i.cvm, 1              ; 5 uses
  %min.iters.check8562 = icmp ult i32 %i.cvl, 7
  br i1 %min.iters.check8562, label %.lr.ph93.i.i639.preheader, label %vector.memcheck8563

vector.memcheck8563:                              ; preds = %iter.check8581
  %i.cvo = sub i64 %.244.lcssa.i.i6358560, %.2.lcssa.i.i6388561
  %diff.check8564 = icmp ugt i64 %i.cvo, -64
  %i.cvp = sub i64 %.236.lcssa.i.i6378559, %.2.lcssa.i.i6388561
  %diff.check8565 = icmp ugt i64 %i.cvp, -64
  %conflict.rdx8566 = or i1 %diff.check8564, %diff.check8565
  br i1 %conflict.rdx8566, label %.lr.ph93.i.i639.preheader, label %vector.main.loop.iter.check8567

vector.main.loop.iter.check8567:                  ; preds = %vector.memcheck8563
  %min.iters.check8568 = icmp ult i32 %i.cvl, 31
  br i1 %min.iters.check8568, label %vec.epilog.ph8585, label %vector.ph8569

vector.ph8569:                                    ; preds = %vector.main.loop.iter.check8567
  %i.cvq = and i64 %i.cvn, 24
  %n.vec8570 = and i64 %i.cvn, 8589934560         ; 5 uses
  %i.cvr = shl nuw nsw i64 %n.vec8570, 1          ; 3 uses
  %i.cvs = getelementptr i8, ptr %.2.lcssa.i.i638, i64 %i.cvr
  %i.cvt = getelementptr i8, ptr %.236.lcssa.i.i637, i64 %i.cvr
  %i.cvu = trunc i64 %n.vec8570 to i32
  %i.cvv = add i32 %.240.lcssa.i.i636, %i.cvu
  %i.cvw = getelementptr i8, ptr %.244.lcssa.i.i635, i64 %i.cvr
  br label %vector.body8571

vector.body8571:                                  ; preds = %vector.ph8569, %vector.body8571
  %index8572 = phi i64 [ 0, %vector.ph8569 ], [ %index.next8578, %vector.body8571 ] ; 2 uses
  %i.cvx = shl i64 %index8572, 1                  ; 3 uses
  %next.gep8573 = getelementptr i8, ptr %.2.lcssa.i.i638, i64 %i.cvx
  %next.gep8574 = getelementptr i8, ptr %.236.lcssa.i.i637, i64 %i.cvx
  %next.gep8575 = getelementptr i8, ptr %.244.lcssa.i.i635, i64 %i.cvx
  %wide.load8576 = load <32 x i16>, ptr %next.gep8573, align 2, !tbaa !558
  %i.cvy = zext <32 x i16> %wide.load8576 to <32 x i32>
  %i.cvz = shl nuw <32 x i32> %i.cvy, splat (i32 16)
  %i.cwa = bitcast <32 x i32> %i.cvz to <32 x float>
  %wide.load8577 = load <32 x i16>, ptr %next.gep8574, align 2, !tbaa !558
  %i.cwb = zext <32 x i16> %wide.load8577 to <32 x i32>
  %i.cwc = shl nuw <32 x i32> %i.cwb, splat (i32 16)
  %i.cwd = bitcast <32 x i32> %i.cwc to <32 x float>
  %i.cwe = fdiv fast <32 x float> %i.cwa, %i.cwd
  %i.cwf = bitcast <32 x float> %i.cwe to <32 x i32>
  %i.cwg = lshr <32 x i32> %i.cwf, splat (i32 16)
  %i.cwh = trunc nuw <32 x i32> %i.cwg to <32 x i16>
  store <32 x i16> %i.cwh, ptr %next.gep8575, align 2, !tbaa !558
  %index.next8578 = add nuw i64 %index8572, 32    ; 2 uses
  %i.cwi = icmp eq i64 %index.next8578, %n.vec8570
  br i1 %i.cwi, label %middle.block8579, label %vector.body8571, !llvm.loop !101

middle.block8579:                                 ; preds = %vector.body8571
  %cmp.n8580 = icmp eq i64 %i.cvn, %n.vec8570
  br i1 %cmp.n8580, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8582

vec.epilog.iter.check8582:                        ; preds = %middle.block8579
  %min.epilog.iters.check8584 = icmp eq i64 %i.cvq, 0
  br i1 %min.epilog.iters.check8584, label %.lr.ph93.i.i639.preheader, label %vec.epilog.ph8585, !prof !561

vec.epilog.ph8585:                                ; preds = %vector.main.loop.iter.check8567, %vec.epilog.iter.check8582
  %vec.epilog.resume.val8586 = phi i64 [ %n.vec8570, %vec.epilog.iter.check8582 ], [ 0, %vector.main.loop.iter.check8567 ]
  %n.vec8587 = and i64 %i.cvn, 8589934584         ; 4 uses
  %i.cwj = shl nuw nsw i64 %n.vec8587, 1          ; 3 uses
  %i.cwk = getelementptr i8, ptr %.2.lcssa.i.i638, i64 %i.cwj
  %i.cwl = getelementptr i8, ptr %.236.lcssa.i.i637, i64 %i.cwj
  %i.cwm = trunc i64 %n.vec8587 to i32
  %i.cwn = add i32 %.240.lcssa.i.i636, %i.cwm
  %i.cwo = getelementptr i8, ptr %.244.lcssa.i.i635, i64 %i.cwj
  br label %vec.epilog.vector.body8588

vec.epilog.vector.body8588:                       ; preds = %vec.epilog.vector.body8588, %vec.epilog.ph8585
  %index8589 = phi i64 [ %vec.epilog.resume.val8586, %vec.epilog.ph8585 ], [ %index.next8595, %vec.epilog.vector.body8588 ] ; 2 uses
  %i.cwp = shl i64 %index8589, 1                  ; 3 uses
  %next.gep8590 = getelementptr i8, ptr %.2.lcssa.i.i638, i64 %i.cwp
  %next.gep8591 = getelementptr i8, ptr %.236.lcssa.i.i637, i64 %i.cwp
  %next.gep8592 = getelementptr i8, ptr %.244.lcssa.i.i635, i64 %i.cwp
  %wide.load8593 = load <8 x i16>, ptr %next.gep8590, align 2, !tbaa !558
  %i.cwq = zext <8 x i16> %wide.load8593 to <8 x i32>
  %i.cwr = shl nuw <8 x i32> %i.cwq, splat (i32 16)
  %i.cws = bitcast <8 x i32> %i.cwr to <8 x float>
  %wide.load8594 = load <8 x i16>, ptr %next.gep8591, align 2, !tbaa !558
  %i.cwt = zext <8 x i16> %wide.load8594 to <8 x i32>
  %i.cwu = shl nuw <8 x i32> %i.cwt, splat (i32 16)
  %i.cwv = bitcast <8 x i32> %i.cwu to <8 x float>
  %i.cww = fdiv fast <8 x float> %i.cws, %i.cwv
  %i.cwx = bitcast <8 x float> %i.cww to <8 x i32>
  %i.cwy = lshr <8 x i32> %i.cwx, splat (i32 16)
  %i.cwz = trunc nuw <8 x i32> %i.cwy to <8 x i16>
  store <8 x i16> %i.cwz, ptr %next.gep8592, align 2, !tbaa !558
  %index.next8595 = add nuw i64 %index8589, 8     ; 2 uses
  %i.cxa = icmp eq i64 %index.next8595, %n.vec8587
  br i1 %i.cxa, label %vec.epilog.middle.block8596, label %vec.epilog.vector.body8588, !llvm.loop !102

vec.epilog.middle.block8596:                      ; preds = %vec.epilog.vector.body8588
  %cmp.n8597 = icmp eq i64 %i.cvn, %n.vec8587
  br i1 %cmp.n8597, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i639.preheader

.lr.ph93.i.i639.preheader:                        ; preds = %iter.check8581, %vector.memcheck8563, %vec.epilog.iter.check8582, %vec.epilog.middle.block8596
  %.392.i.i640.ph = phi ptr [ %.2.lcssa.i.i638, %iter.check8581 ], [ %.2.lcssa.i.i638, %vector.memcheck8563 ], [ %i.cvs, %vec.epilog.iter.check8582 ], [ %i.cwk, %vec.epilog.middle.block8596 ] ; 3 uses
  %.33791.i.i641.ph = phi ptr [ %.236.lcssa.i.i637, %iter.check8581 ], [ %.236.lcssa.i.i637, %vector.memcheck8563 ], [ %i.cvt, %vec.epilog.iter.check8582 ], [ %i.cwl, %vec.epilog.middle.block8596 ] ; 3 uses
  %.34190.i.i642.ph = phi i32 [ %.240.lcssa.i.i636, %iter.check8581 ], [ %.240.lcssa.i.i636, %vector.memcheck8563 ], [ %i.cvv, %vec.epilog.iter.check8582 ], [ %i.cwn, %vec.epilog.middle.block8596 ] ; 4 uses
  %.34589.i.i643.ph = phi ptr [ %.244.lcssa.i.i635, %iter.check8581 ], [ %.244.lcssa.i.i635, %vector.memcheck8563 ], [ %i.cvw, %vec.epilog.iter.check8582 ], [ %i.cwo, %vec.epilog.middle.block8596 ] ; 3 uses
  %i.cxb = sub i32 %i.cti, %.34190.i.i642.ph
  %.neg11080 = add i32 %.34190.i.i642.ph, 1
  %xtraiter10820 = and i32 %i.cxb, 1
  %lcmp.mod10821.not = icmp eq i32 %xtraiter10820, 0
  br i1 %lcmp.mod10821.not, label %.lr.ph93.i.i639.prol.loopexit, label %.lr.ph93.i.i639.prol

.lr.ph93.i.i639.prol:                             ; preds = %.lr.ph93.i.i639.preheader
  %i.cxc = getelementptr inbounds nuw i8, ptr %.392.i.i640.ph, i64 2
  %i.cxd = load i16, ptr %.392.i.i640.ph, align 2, !tbaa !558
  %i.cxe = zext i16 %i.cxd to i32
  %i.cxf = shl nuw i32 %i.cxe, 16
  %i.cxg = bitcast i32 %i.cxf to float
  %i.cxh = getelementptr inbounds nuw i8, ptr %.33791.i.i641.ph, i64 2
  %i.cxi = load i16, ptr %.33791.i.i641.ph, align 2, !tbaa !558
  %i.cxj = zext i16 %i.cxi to i32
  %i.cxk = shl nuw i32 %i.cxj, 16
  %i.cxl = bitcast i32 %i.cxk to float
  %i.cxm = fdiv fast float %i.cxg, %i.cxl
  %i.cxn = bitcast float %i.cxm to i32
  %i.cxo = lshr i32 %i.cxn, 16
  %i.cxp = trunc nuw i32 %i.cxo to i16
  %i.cxq = getelementptr inbounds nuw i8, ptr %.34589.i.i643.ph, i64 2
  store i16 %i.cxp, ptr %.34589.i.i643.ph, align 2, !tbaa !558
  %i.cxr = add nuw nsw i32 %.34190.i.i642.ph, 1
  br label %.lr.ph93.i.i639.prol.loopexit

.lr.ph93.i.i639.prol.loopexit:                    ; preds = %.lr.ph93.i.i639.prol, %.lr.ph93.i.i639.preheader
  %.392.i.i640.unr = phi ptr [ %.392.i.i640.ph, %.lr.ph93.i.i639.preheader ], [ %i.cxc, %.lr.ph93.i.i639.prol ]
  %.33791.i.i641.unr = phi ptr [ %.33791.i.i641.ph, %.lr.ph93.i.i639.preheader ], [ %i.cxh, %.lr.ph93.i.i639.prol ]
  %.34190.i.i642.unr = phi i32 [ %.34190.i.i642.ph, %.lr.ph93.i.i639.preheader ], [ %i.cxr, %.lr.ph93.i.i639.prol ]
  %.34589.i.i643.unr = phi ptr [ %.34589.i.i643.ph, %.lr.ph93.i.i639.preheader ], [ %i.cxq, %.lr.ph93.i.i639.prol ]
  %i.cxs = icmp eq i32 %i.cti, %.neg11080
  br i1 %i.cxs, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i639

.lr.ph84.i.i645:                                  ; preds = %.preheader62.i.i629, %.lr.ph84.i.i645
  %.283.i.i646 = phi ptr [ %i.cyi, %.lr.ph84.i.i645 ], [ %.1.lcssa.i.i633, %.preheader62.i.i629 ] ; 2 uses
  %.23682.i.i647 = phi ptr [ %i.cyj, %.lr.ph84.i.i645 ], [ %.135.lcssa.i.i632, %.preheader62.i.i629 ] ; 2 uses
  %.24081.i.i648 = phi i32 [ %i.cyl, %.lr.ph84.i.i645 ], [ %.139.lcssa.i.i631, %.preheader62.i.i629 ]
  %.24480.i.i649 = phi ptr [ %i.cyk, %.lr.ph84.i.i645 ], [ %.143.lcssa.i.i630, %.preheader62.i.i629 ] ; 2 uses
  %i.cxt = load i64, ptr %.283.i.i646, align 1, !tbaa !555
  %i.cxu = insertelement <2 x i64> poison, i64 %i.cxt, i64 0
  %i.cxv = bitcast <2 x i64> %i.cxu to <8 x i16>
  %i.cxw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cxv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cxx = bitcast <8 x i16> %i.cxw to <4 x float>
  %i.cxy = load i64, ptr %.23682.i.i647, align 1, !tbaa !555
  %i.cxz = insertelement <2 x i64> poison, i64 %i.cxy, i64 0
  %i.cya = bitcast <2 x i64> %i.cxz to <8 x i16>
  %i.cyb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cya, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cyc = bitcast <8 x i16> %i.cyb to <4 x float>
  %i.cyd = fdiv fast <4 x float> %i.cxx, %i.cyc
  %i.cye = shufflevector <4 x float> %i.cyd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cyf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.cye)
  %i.cyg = bitcast <8 x bfloat> %i.cyf to <2 x i64>
  %i.cyh = extractelement <2 x i64> %i.cyg, i64 0
  store i64 %i.cyh, ptr %.24480.i.i649, align 1, !tbaa !555
  %i.cyi = getelementptr inbounds nuw i8, ptr %.283.i.i646, i64 8 ; 2 uses
  %i.cyj = getelementptr inbounds nuw i8, ptr %.23682.i.i647, i64 8 ; 2 uses
  %i.cyk = getelementptr inbounds nuw i8, ptr %.24480.i.i649, i64 8 ; 2 uses
  %i.cyl = add nuw nsw i32 %.24081.i.i648, 4      ; 3 uses
  %i.cym = or disjoint i32 %i.cyl, 3
  %i.cyn = icmp slt i32 %i.cym, %i.cti
  br i1 %i.cyn, label %.lr.ph84.i.i645, label %.preheader.i.i634, !llvm.loop !103

.lr.ph93.i.i639:                                  ; preds = %.lr.ph93.i.i639.prol.loopexit, %.lr.ph93.i.i639
  %.392.i.i640 = phi ptr [ %i.czd, %.lr.ph93.i.i639 ], [ %.392.i.i640.unr, %.lr.ph93.i.i639.prol.loopexit ] ; 3 uses
  %.33791.i.i641 = phi ptr [ %i.czi, %.lr.ph93.i.i639 ], [ %.33791.i.i641.unr, %.lr.ph93.i.i639.prol.loopexit ] ; 3 uses
  %.34190.i.i642 = phi i32 [ %i.czs, %.lr.ph93.i.i639 ], [ %.34190.i.i642.unr, %.lr.ph93.i.i639.prol.loopexit ]
  %.34589.i.i643 = phi ptr [ %i.czr, %.lr.ph93.i.i639 ], [ %.34589.i.i643.unr, %.lr.ph93.i.i639.prol.loopexit ] ; 3 uses
  %i.cyo = getelementptr inbounds nuw i8, ptr %.392.i.i640, i64 2
  %i.cyp = load i16, ptr %.392.i.i640, align 2, !tbaa !558
  %i.cyq = zext i16 %i.cyp to i32
  %i.cyr = shl nuw i32 %i.cyq, 16
  %i.cys = bitcast i32 %i.cyr to float
  %i.cyt = getelementptr inbounds nuw i8, ptr %.33791.i.i641, i64 2
  %i.cyu = load i16, ptr %.33791.i.i641, align 2, !tbaa !558
  %i.cyv = zext i16 %i.cyu to i32
  %i.cyw = shl nuw i32 %i.cyv, 16
  %i.cyx = bitcast i32 %i.cyw to float
  %i.cyy = fdiv fast float %i.cys, %i.cyx
  %i.cyz = bitcast float %i.cyy to i32
  %i.cza = lshr i32 %i.cyz, 16
  %i.czb = trunc nuw i32 %i.cza to i16
  %i.czc = getelementptr inbounds nuw i8, ptr %.34589.i.i643, i64 2
  store i16 %i.czb, ptr %.34589.i.i643, align 2, !tbaa !558
  %i.czd = getelementptr inbounds nuw i8, ptr %.392.i.i640, i64 4
  %i.cze = load i16, ptr %i.cyo, align 2, !tbaa !558
  %i.czf = zext i16 %i.cze to i32
  %i.czg = shl nuw i32 %i.czf, 16
  %i.czh = bitcast i32 %i.czg to float
  %i.czi = getelementptr inbounds nuw i8, ptr %.33791.i.i641, i64 4
  %i.czj = load i16, ptr %i.cyt, align 2, !tbaa !558
  %i.czk = zext i16 %i.czj to i32
  %i.czl = shl nuw i32 %i.czk, 16
  %i.czm = bitcast i32 %i.czl to float
  %i.czn = fdiv fast float %i.czh, %i.czm
  %i.czo = bitcast float %i.czn to i32
  %i.czp = lshr i32 %i.czo, 16
  %i.czq = trunc nuw i32 %i.czp to i16
  %i.czr = getelementptr inbounds nuw i8, ptr %.34589.i.i643, i64 4
  store i16 %i.czq, ptr %i.czc, align 2, !tbaa !558
  %i.czs = add nuw nsw i32 %.34190.i.i642, 2      ; 2 uses
  %exitcond.not.i.i644.1 = icmp eq i32 %i.czs, %i.cti
  br i1 %exitcond.not.i.i644.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i639, !llvm.loop !104

bb.ch:                                            ; preds = %bb.cf
  %i.czt = icmp eq i32 %4, 1
  br i1 %i.czt, label %bb.ci, label %bb.co
end_hunk_3
begin_hunk_4_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.dvs = shufflevector <8 x float> %i.dvr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dvt = fdiv fast <8 x float> %i.dvl, %i.dvs
  %i.dvu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dvt)
  store <8 x bfloat> %i.dvu, ptr %.13152.i.i501, align 1, !tbaa !555
  %i.dvv = getelementptr inbounds nuw i8, ptr %.154.i.i499, i64 2
  %i.dvw = getelementptr inbounds nuw i8, ptr %.13152.i.i501, i64 16
  %i.dvx = load i16, ptr %i.dvv, align 2, !tbaa !558
  %i.dvy = zext i16 %i.dvx to i32
  %i.dvz = shl nuw i32 %i.dvy, 16
  %i.dwa = insertelement <8 x i32> poison, i32 %i.dvz, i64 0
  %i.dwb = bitcast <8 x i32> %i.dwa to <8 x float>
  %i.dwc = shufflevector <8 x float> %i.dwb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dwd = fdiv fast <8 x float> %i.dvl, %i.dwc
  %i.dwe = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dwd)
  store <8 x bfloat> %i.dwe, ptr %i.dvw, align 1, !tbaa !555
  %i.dwf = getelementptr inbounds nuw i8, ptr %.154.i.i499, i64 4 ; 2 uses
  %i.dwg = getelementptr inbounds nuw i8, ptr %.13152.i.i501, i64 32 ; 2 uses
  %niter10763.next.1 = add i32 %niter10763, 2     ; 2 uses
  %niter10763.ncmp.1 = icmp eq i32 %niter10763.next.1, %unroll_iter10762
  br i1 %niter10763.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9416.unr-lcssa, label %.lr.ph55.i.i498, !llvm.loop !127

bb.de:                                            ; preds = %bb.db
  %i.dwh = load i64, ptr %0, align 1, !tbaa !555
  %i.dwi = insertelement <2 x i64> poison, i64 %i.dwh, i64 0
  %i.dwj = bitcast <2 x i64> %i.dwi to <8 x i16>
  %i.dwk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dwj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dwl = bitcast <8 x i16> %i.dwk to <4 x float> ; 3 uses
  %xtraiter10753 = and i32 %.sroa.speculated98.i491, 1
  %i.dwm = icmp eq i32 %.sroa.speculated98.i491, 1
  br i1 %i.dwm, label %.lr.ph.i86.i493.epil.preheader, label %.new10752

.new10752:                                        ; preds = %bb.de
  %unroll_iter10756 = and i32 %.sroa.speculated98.i491, 2147483646
  br label %.lr.ph.i86.i493

.lr.ph.i86.i493:                                  ; preds = %.lr.ph.i86.i493, %.new10752
  %.250.i.i495 = phi ptr [ %1, %.new10752 ], [ %i.dxl, %.lr.ph.i86.i493 ] ; 3 uses
  %.23249.i.i496 = phi ptr [ %2, %.new10752 ], [ %i.dxm, %.lr.ph.i86.i493 ] ; 3 uses
  %niter10757 = phi i32 [ 0, %.new10752 ], [ %niter10757.next.1, %.lr.ph.i86.i493 ]
  %i.dwn = load i16, ptr %.250.i.i495, align 2, !tbaa !558
  %i.dwo = zext i16 %i.dwn to i32
  %i.dwp = shl nuw i32 %i.dwo, 16
  %i.dwq = insertelement <4 x i32> poison, i32 %i.dwp, i64 0
  %i.dwr = bitcast <4 x i32> %i.dwq to <4 x float>
  %i.dws = shufflevector <4 x float> %i.dwr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwt = fdiv fast <4 x float> %i.dwl, %i.dws
  %i.dwu = shufflevector <4 x float> %i.dwt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dwv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dwu)
  %i.dww = bitcast <8 x bfloat> %i.dwv to <2 x i64>
  %i.dwx = extractelement <2 x i64> %i.dww, i64 0
  store i64 %i.dwx, ptr %.23249.i.i496, align 1, !tbaa !555
  %i.dwy = getelementptr inbounds nuw i8, ptr %.250.i.i495, i64 2
  %i.dwz = getelementptr inbounds nuw i8, ptr %.23249.i.i496, i64 8
  %i.dxa = load i16, ptr %i.dwy, align 2, !tbaa !558
  %i.dxb = zext i16 %i.dxa to i32
  %i.dxc = shl nuw i32 %i.dxb, 16
  %i.dxd = insertelement <4 x i32> poison, i32 %i.dxc, i64 0
  %i.dxe = bitcast <4 x i32> %i.dxd to <4 x float>
  %i.dxf = shufflevector <4 x float> %i.dxe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dxg = fdiv fast <4 x float> %i.dwl, %i.dxf
  %i.dxh = shufflevector <4 x float> %i.dxg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.dxi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dxh)
  %i.dxj = bitcast <8 x bfloat> %i.dxi to <2 x i64>
  %i.dxk = extractelement <2 x i64> %i.dxj, i64 0
  store i64 %i.dxk, ptr %i.dwz, align 1, !tbaa !555
  %i.dxl = getelementptr inbounds nuw i8, ptr %.250.i.i495, i64 4 ; 2 uses
  %i.dxm = getelementptr inbounds nuw i8, ptr %.23249.i.i496, i64 16 ; 2 uses
  %niter10757.next.1 = add i32 %niter10757, 2     ; 2 uses
  %niter10757.ncmp.1 = icmp eq i32 %niter10757.next.1, %unroll_iter10756
  br i1 %niter10757.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9417.unr-lcssa, label %.lr.ph.i86.i493, !llvm.loop !128

bb.df:                                            ; preds = %bb.a
  %.sroa.speculated101.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i661 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.dxn = mul i32 %.sroa.speculated.i661, %.sroa.speculated101.i ; 48 uses
  %i.dxo = icmp eq i32 %5, %6
  br i1 %i.dxo, label %bb.dg, label %bb.dw

bb.dg:                                            ; preds = %bb.df
  %i.dxp = icmp eq i32 %3, %4
  br i1 %i.dxp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.dxq = icmp sgt i32 %i.dxn, 15
  br i1 %i.dxq, label %.lr.ph.i.i727.preheader, label %.preheader62.i.i712

.lr.ph.i.i727.preheader:                          ; preds = %bb.dh
  %i.dxr = add nsw i32 %i.dxn, -16                ; 2 uses
  %i.dxs = lshr i32 %i.dxr, 4                     ; 2 uses
  %i.dxt = add nuw nsw i32 %i.dxs, 1              ; 2 uses
  %i.dxu = icmp eq i32 %i.dxs, 0
  br i1 %i.dxu, label %.lr.ph.i.i727.epil.preheader, label %.lr.ph.i.i727.preheader.new

.lr.ph.i.i727.preheader.new:                      ; preds = %.lr.ph.i.i727.preheader
  %unroll_iter10748 = and i32 %i.dxt, 536870910
  br label %.lr.ph.i.i727

.preheader62.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i727
  %i.dxv = and i32 %i.dxr, 16
  %lcmp.mod10743.not.not = icmp eq i32 %i.dxv, 0
  br i1 %lcmp.mod10743.not.not, label %.lr.ph.i.i727.epil.preheader, label %.preheader62.loopexit.i.i

.lr.ph.i.i727.epil.preheader:                     ; preds = %.preheader62.loopexit.i.i.unr-lcssa, %.lr.ph.i.i727.preheader
  %.066.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i727.preheader ], [ %i.dyx, %.preheader62.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03465.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i727.preheader ], [ %i.dyy, %.preheader62.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04263.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i727.preheader ], [ %i.dyz, %.preheader62.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod10747 = trunc i32 %i.dxt to i1
  tail call void @llvm.assume(i1 %lcmp.mod10747)
  %i.dxw = load <16 x bfloat>, ptr %.066.i.i.epil.init, align 1, !tbaa !555
  %i.dxx = fpext fast <16 x bfloat> %i.dxw to <16 x float>
  %i.dxy = load <16 x bfloat>, ptr %.03465.i.i.epil.init, align 1, !tbaa !555
  %i.dxz = fpext fast <16 x bfloat> %i.dxy to <16 x float>
  %i.dya = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dxx, <16 x float> nofpclass(nan inf) %i.dxz, i32 4)
  %i.dyb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dya)
  store <16 x bfloat> %i.dyb, ptr %.04263.i.i.epil.init, align 1, !tbaa !555
  %i.dyc = getelementptr inbounds nuw i8, ptr %.066.i.i.epil.init, i64 32
  %i.dyd = getelementptr inbounds nuw i8, ptr %.03465.i.i.epil.init, i64 32
  %i.dye = getelementptr inbounds nuw i8, ptr %.04263.i.i.epil.init, i64 32
  br label %.preheader62.loopexit.i.i

.preheader62.loopexit.i.i:                        ; preds = %.preheader62.loopexit.i.i.unr-lcssa, %.lr.ph.i.i727.epil.preheader
  %.lcssa9429 = phi ptr [ %i.dyx, %.preheader62.loopexit.i.i.unr-lcssa ], [ %i.dyc, %.lr.ph.i.i727.epil.preheader ]
  %.lcssa9428 = phi ptr [ %i.dyy, %.preheader62.loopexit.i.i.unr-lcssa ], [ %i.dyd, %.lr.ph.i.i727.epil.preheader ]
  %.lcssa9427 = phi ptr [ %i.dyz, %.preheader62.loopexit.i.i.unr-lcssa ], [ %i.dye, %.lr.ph.i.i727.epil.preheader ]
  %i.dyf = and i32 %i.dxn, 2147483632
  br label %.preheader62.i.i712

.preheader62.i.i712:                              ; preds = %.preheader62.loopexit.i.i, %bb.dh
  %.042.lcssa.i.i713 = phi ptr [ %2, %bb.dh ], [ %.lcssa9427, %.preheader62.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i714 = phi i32 [ 0, %bb.dh ], [ %i.dyf, %.preheader62.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i715 = phi ptr [ %1, %bb.dh ], [ %.lcssa9428, %.preheader62.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i716 = phi ptr [ %0, %bb.dh ], [ %.lcssa9429, %.preheader62.loopexit.i.i ] ; 2 uses
  %i.dyg = or disjoint i32 %.038.lcssa.i.i714, 7
  %i.dyh = icmp slt i32 %i.dyg, %i.dxn
  br i1 %i.dyh, label %.lr.ph74.i.i, label %.preheader61.i.i

.lr.ph.i.i727:                                    ; preds = %.lr.ph.i.i727, %.lr.ph.i.i727.preheader.new
  %.066.i.i = phi ptr [ %0, %.lr.ph.i.i727.preheader.new ], [ %i.dyx, %.lr.ph.i.i727 ] ; 3 uses
  %.03465.i.i = phi ptr [ %1, %.lr.ph.i.i727.preheader.new ], [ %i.dyy, %.lr.ph.i.i727 ] ; 3 uses
  %.04263.i.i = phi ptr [ %2, %.lr.ph.i.i727.preheader.new ], [ %i.dyz, %.lr.ph.i.i727 ] ; 3 uses
  %niter10749 = phi i32 [ 0, %.lr.ph.i.i727.preheader.new ], [ %niter10749.next.1, %.lr.ph.i.i727 ]
  %i.dyi = load <16 x bfloat>, ptr %.066.i.i, align 1, !tbaa !555
  %i.dyj = fpext fast <16 x bfloat> %i.dyi to <16 x float>
  %i.dyk = load <16 x bfloat>, ptr %.03465.i.i, align 1, !tbaa !555
  %i.dyl = fpext fast <16 x bfloat> %i.dyk to <16 x float>
  %i.dym = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dyj, <16 x float> nofpclass(nan inf) %i.dyl, i32 4)
  %i.dyn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dym)
  store <16 x bfloat> %i.dyn, ptr %.04263.i.i, align 1, !tbaa !555
  %i.dyo = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 32
  %i.dyp = getelementptr inbounds nuw i8, ptr %.03465.i.i, i64 32
  %i.dyq = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 32
  %i.dyr = load <16 x bfloat>, ptr %i.dyo, align 1, !tbaa !555
  %i.dys = fpext fast <16 x bfloat> %i.dyr to <16 x float>
  %i.dyt = load <16 x bfloat>, ptr %i.dyp, align 1, !tbaa !555
  %i.dyu = fpext fast <16 x bfloat> %i.dyt to <16 x float>
  %i.dyv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.dys, <16 x float> nofpclass(nan inf) %i.dyu, i32 4)
  %i.dyw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dyv)
  store <16 x bfloat> %i.dyw, ptr %i.dyq, align 1, !tbaa !555
  %i.dyx = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 64 ; 3 uses
  %i.dyy = getelementptr inbounds nuw i8, ptr %.03465.i.i, i64 64 ; 3 uses
  %i.dyz = getelementptr inbounds nuw i8, ptr %.04263.i.i, i64 64 ; 3 uses
  %niter10749.next.1 = add i32 %niter10749, 2     ; 2 uses
  %niter10749.ncmp.1.not = icmp eq i32 %niter10749.next.1, %unroll_iter10748
  br i1 %niter10749.ncmp.1.not, label %.preheader62.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i727, !llvm.loop !129

.preheader61.i.i:                                 ; preds = %.lr.ph74.i.i, %.preheader62.i.i712
  %.143.lcssa.i.i717 = phi ptr [ %.042.lcssa.i.i713, %.preheader62.i.i712 ], [ %i.dzk, %.lr.ph74.i.i ] ; 2 uses
  %.139.lcssa.i.i718 = phi i32 [ %.038.lcssa.i.i714, %.preheader62.i.i712 ], [ %i.dzl, %.lr.ph74.i.i ] ; 3 uses
  %.135.lcssa.i.i719 = phi ptr [ %.034.lcssa.i.i715, %.preheader62.i.i712 ], [ %i.dzj, %.lr.ph74.i.i ] ; 2 uses
  %.1.lcssa.i.i720 = phi ptr [ %.0.lcssa.i.i716, %.preheader62.i.i712 ], [ %i.dzi, %.lr.ph74.i.i ] ; 2 uses
  %i.dza = or disjoint i32 %.139.lcssa.i.i718, 3
  %i.dzb = icmp slt i32 %i.dza, %i.dxn
  br i1 %i.dzb, label %.lr.ph83.i.i, label %.preheader.i.i721

.lr.ph74.i.i:                                     ; preds = %.preheader62.i.i712, %.lr.ph74.i.i
  %.173.i.i = phi ptr [ %i.dzi, %.lr.ph74.i.i ], [ %.0.lcssa.i.i716, %.preheader62.i.i712 ] ; 2 uses
  %.13572.i.i = phi ptr [ %i.dzj, %.lr.ph74.i.i ], [ %.034.lcssa.i.i715, %.preheader62.i.i712 ] ; 2 uses
  %.13971.i.i = phi i32 [ %i.dzl, %.lr.ph74.i.i ], [ %.038.lcssa.i.i714, %.preheader62.i.i712 ]
  %.14370.i.i = phi ptr [ %i.dzk, %.lr.ph74.i.i ], [ %.042.lcssa.i.i713, %.preheader62.i.i712 ] ; 2 uses
  %i.dzc = load <8 x bfloat>, ptr %.173.i.i, align 1, !tbaa !555
  %i.dzd = fpext fast <8 x bfloat> %i.dzc to <8 x float>
  %i.dze = load <8 x bfloat>, ptr %.13572.i.i, align 1, !tbaa !555
  %i.dzf = fpext fast <8 x bfloat> %i.dze to <8 x float>
  %i.dzg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.dzd, <8 x float> nofpclass(nan inf) %i.dzf)
  %i.dzh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dzg)
  store <8 x bfloat> %i.dzh, ptr %.14370.i.i, align 1, !tbaa !555
  %i.dzi = getelementptr inbounds nuw i8, ptr %.173.i.i, i64 16 ; 2 uses
  %i.dzj = getelementptr inbounds nuw i8, ptr %.13572.i.i, i64 16 ; 2 uses
  %i.dzk = getelementptr inbounds nuw i8, ptr %.14370.i.i, i64 16 ; 2 uses
  %i.dzl = add nuw nsw i32 %.13971.i.i, 8         ; 3 uses
  %i.dzm = or disjoint i32 %i.dzl, 7
  %i.dzn = icmp slt i32 %i.dzm, %i.dxn
  br i1 %i.dzn, label %.lr.ph74.i.i, label %.preheader61.i.i, !llvm.loop !130

.preheader.i.i721:                                ; preds = %.lr.ph83.i.i, %.preheader61.i.i
  %.244.lcssa.i.i722 = phi ptr [ %.143.lcssa.i.i717, %.preheader61.i.i ], [ %i.ecl, %.lr.ph83.i.i ] ; 7 uses
  %.240.lcssa.i.i723 = phi i32 [ %.139.lcssa.i.i718, %.preheader61.i.i ], [ %i.ecm, %.lr.ph83.i.i ] ; 6 uses
  %.236.lcssa.i.i724 = phi ptr [ %.135.lcssa.i.i719, %.preheader61.i.i ], [ %i.eck, %.lr.ph83.i.i ] ; 7 uses
  %.2.lcssa.i.i725 = phi ptr [ %.1.lcssa.i.i720, %.preheader61.i.i ], [ %i.ecj, %.lr.ph83.i.i ] ; 7 uses
  %.236.lcssa.i.i7248380 = ptrtoaddr ptr %.236.lcssa.i.i724 to i64
  %.244.lcssa.i.i7228381 = ptrtoaddr ptr %.2.lcssa.i.i725 to i64
  %.2.lcssa.i.i7258382 = ptrtoaddr ptr %.244.lcssa.i.i722 to i64 ; 2 uses
  %i.dzo = icmp slt i32 %.240.lcssa.i.i723, %i.dxn
  br i1 %i.dzo, label %iter.check8402, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8402:                                   ; preds = %.preheader.i.i721
  %i.dzp = xor i32 %.240.lcssa.i.i723, -1
  %i.dzq = add i32 %i.dxn, %i.dzp                 ; 3 uses
  %i.dzr = zext i32 %i.dzq to i64
  %i.dzs = add nuw nsw i64 %i.dzr, 1              ; 5 uses
  %min.iters.check8383 = icmp ult i32 %i.dzq, 7
  br i1 %min.iters.check8383, label %.lr.ph92.i.i.preheader, label %vector.memcheck8384

vector.memcheck8384:                              ; preds = %iter.check8402
  %i.dzt = sub i64 %.244.lcssa.i.i7228381, %.2.lcssa.i.i7258382
  %diff.check8385 = icmp ugt i64 %i.dzt, -64
  %i.dzu = sub i64 %.236.lcssa.i.i7248380, %.2.lcssa.i.i7258382
  %diff.check8386 = icmp ugt i64 %i.dzu, -64
  %conflict.rdx8387 = or i1 %diff.check8385, %diff.check8386
  br i1 %conflict.rdx8387, label %.lr.ph92.i.i.preheader, label %vector.main.loop.iter.check8388

vector.main.loop.iter.check8388:                  ; preds = %vector.memcheck8384
  %min.iters.check8389 = icmp ult i32 %i.dzq, 31
  br i1 %min.iters.check8389, label %vec.epilog.ph8406, label %vector.ph8390

vector.ph8390:                                    ; preds = %vector.main.loop.iter.check8388
  %i.dzv = and i64 %i.dzs, 24
  %n.vec8391 = and i64 %i.dzs, 8589934560         ; 5 uses
  %i.dzw = shl nuw nsw i64 %n.vec8391, 1          ; 3 uses
  %i.dzx = getelementptr i8, ptr %.2.lcssa.i.i725, i64 %i.dzw
  %i.dzy = getelementptr i8, ptr %.236.lcssa.i.i724, i64 %i.dzw
  %i.dzz = trunc i64 %n.vec8391 to i32
  %i.eaa = add i32 %.240.lcssa.i.i723, %i.dzz
  %i.eab = getelementptr i8, ptr %.244.lcssa.i.i722, i64 %i.dzw
  br label %vector.body8392

vector.body8392:                                  ; preds = %vector.ph8390, %vector.body8392
  %index8393 = phi i64 [ 0, %vector.ph8390 ], [ %index.next8399, %vector.body8392 ] ; 2 uses
  %i.eac = shl i64 %index8393, 1                  ; 3 uses
  %next.gep8394 = getelementptr i8, ptr %.2.lcssa.i.i725, i64 %i.eac
  %next.gep8395 = getelementptr i8, ptr %.236.lcssa.i.i724, i64 %i.eac
  %next.gep8396 = getelementptr i8, ptr %.244.lcssa.i.i722, i64 %i.eac
  %wide.load8397 = load <32 x i16>, ptr %next.gep8394, align 2, !tbaa !558 ; 2 uses
  %i.ead = zext <32 x i16> %wide.load8397 to <32 x i32>
  %i.eae = shl nuw <32 x i32> %i.ead, splat (i32 16)
  %i.eaf = bitcast <32 x i32> %i.eae to <32 x float>
  %wide.load8398 = load <32 x i16>, ptr %next.gep8395, align 2, !tbaa !558 ; 2 uses
  %i.eag = zext <32 x i16> %wide.load8398 to <32 x i32>
  %i.eah = shl nuw <32 x i32> %i.eag, splat (i32 16)
  %i.eai = bitcast <32 x i32> %i.eah to <32 x float>
  %i.eaj = fcmp fast olt <32 x float> %i.eaf, %i.eai
  %i.eak = select <32 x i1> %i.eaj, <32 x i16> %wide.load8398, <32 x i16> %wide.load8397
  store <32 x i16> %i.eak, ptr %next.gep8396, align 2, !tbaa !558
  %index.next8399 = add nuw i64 %index8393, 32    ; 2 uses
  %i.eal = icmp eq i64 %index.next8399, %n.vec8391
  br i1 %i.eal, label %middle.block8400, label %vector.body8392, !llvm.loop !131

middle.block8400:                                 ; preds = %vector.body8392
  %cmp.n8401 = icmp eq i64 %i.dzs, %n.vec8391
  br i1 %cmp.n8401, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8403

vec.epilog.iter.check8403:                        ; preds = %middle.block8400
  %min.epilog.iters.check8405 = icmp eq i64 %i.dzv, 0
  br i1 %min.epilog.iters.check8405, label %.lr.ph92.i.i.preheader, label %vec.epilog.ph8406, !prof !561

vec.epilog.ph8406:                                ; preds = %vector.main.loop.iter.check8388, %vec.epilog.iter.check8403
  %vec.epilog.resume.val8407 = phi i64 [ %n.vec8391, %vec.epilog.iter.check8403 ], [ 0, %vector.main.loop.iter.check8388 ]
  %n.vec8408 = and i64 %i.dzs, 8589934584         ; 4 uses
  %i.eam = shl nuw nsw i64 %n.vec8408, 1          ; 3 uses
  %i.ean = getelementptr i8, ptr %.2.lcssa.i.i725, i64 %i.eam
  %i.eao = getelementptr i8, ptr %.236.lcssa.i.i724, i64 %i.eam
  %i.eap = trunc i64 %n.vec8408 to i32
  %i.eaq = add i32 %.240.lcssa.i.i723, %i.eap
  %i.ear = getelementptr i8, ptr %.244.lcssa.i.i722, i64 %i.eam
  br label %vec.epilog.vector.body8409

vec.epilog.vector.body8409:                       ; preds = %vec.epilog.vector.body8409, %vec.epilog.ph8406
  %index8410 = phi i64 [ %vec.epilog.resume.val8407, %vec.epilog.ph8406 ], [ %index.next8416, %vec.epilog.vector.body8409 ] ; 2 uses
  %i.eas = shl i64 %index8410, 1                  ; 3 uses
  %next.gep8411 = getelementptr i8, ptr %.2.lcssa.i.i725, i64 %i.eas
  %next.gep8412 = getelementptr i8, ptr %.236.lcssa.i.i724, i64 %i.eas
  %next.gep8413 = getelementptr i8, ptr %.244.lcssa.i.i722, i64 %i.eas
  %wide.load8414 = load <8 x i16>, ptr %next.gep8411, align 2, !tbaa !558 ; 2 uses
  %i.eat = zext <8 x i16> %wide.load8414 to <8 x i32>
  %i.eau = shl nuw <8 x i32> %i.eat, splat (i32 16)
  %i.eav = bitcast <8 x i32> %i.eau to <8 x float>
  %wide.load8415 = load <8 x i16>, ptr %next.gep8412, align 2, !tbaa !558 ; 2 uses
  %i.eaw = zext <8 x i16> %wide.load8415 to <8 x i32>
  %i.eax = shl nuw <8 x i32> %i.eaw, splat (i32 16)
  %i.eay = bitcast <8 x i32> %i.eax to <8 x float>
  %i.eaz = fcmp fast olt <8 x float> %i.eav, %i.eay
  %i.eba = select <8 x i1> %i.eaz, <8 x i16> %wide.load8415, <8 x i16> %wide.load8414
  store <8 x i16> %i.eba, ptr %next.gep8413, align 2, !tbaa !558
  %index.next8416 = add nuw i64 %index8410, 8     ; 2 uses
  %i.ebb = icmp eq i64 %index.next8416, %n.vec8408
  br i1 %i.ebb, label %vec.epilog.middle.block8417, label %vec.epilog.vector.body8409, !llvm.loop !132

vec.epilog.middle.block8417:                      ; preds = %vec.epilog.vector.body8409
  %cmp.n8418 = icmp eq i64 %i.dzs, %n.vec8408
  br i1 %cmp.n8418, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i.preheader

.lr.ph92.i.i.preheader:                           ; preds = %iter.check8402, %vector.memcheck8384, %vec.epilog.iter.check8403, %vec.epilog.middle.block8417
  %.391.i.i.ph = phi ptr [ %.2.lcssa.i.i725, %iter.check8402 ], [ %.2.lcssa.i.i725, %vector.memcheck8384 ], [ %i.dzx, %vec.epilog.iter.check8403 ], [ %i.ean, %vec.epilog.middle.block8417 ] ; 3 uses
  %.33790.i.i.ph = phi ptr [ %.236.lcssa.i.i724, %iter.check8402 ], [ %.236.lcssa.i.i724, %vector.memcheck8384 ], [ %i.dzy, %vec.epilog.iter.check8403 ], [ %i.eao, %vec.epilog.middle.block8417 ] ; 3 uses
  %.34189.i.i.ph = phi i32 [ %.240.lcssa.i.i723, %iter.check8402 ], [ %.240.lcssa.i.i723, %vector.memcheck8384 ], [ %i.eaa, %vec.epilog.iter.check8403 ], [ %i.eaq, %vec.epilog.middle.block8417 ] ; 4 uses
  %.34588.i.i.ph = phi ptr [ %.244.lcssa.i.i722, %iter.check8402 ], [ %.244.lcssa.i.i722, %vector.memcheck8384 ], [ %i.eab, %vec.epilog.iter.check8403 ], [ %i.ear, %vec.epilog.middle.block8417 ] ; 3 uses
  %i.ebc = sub i32 %i.dxn, %.34189.i.i.ph
  %.neg11076 = add i32 %.34189.i.i.ph, 1
  %xtraiter10750 = and i32 %i.ebc, 1
  %lcmp.mod10751.not = icmp eq i32 %xtraiter10750, 0
  br i1 %lcmp.mod10751.not, label %.lr.ph92.i.i.prol.loopexit, label %.lr.ph92.i.i.prol

.lr.ph92.i.i.prol:                                ; preds = %.lr.ph92.i.i.preheader
  %i.ebd = getelementptr inbounds nuw i8, ptr %.391.i.i.ph, i64 2
  %i.ebe = load i16, ptr %.391.i.i.ph, align 2, !tbaa !558
  %i.ebf = zext i16 %i.ebe to i32
  %i.ebg = shl nuw i32 %i.ebf, 16
  %i.ebh = bitcast i32 %i.ebg to float            ; 2 uses
  %i.ebi = getelementptr inbounds nuw i8, ptr %.33790.i.i.ph, i64 2
  %i.ebj = load i16, ptr %.33790.i.i.ph, align 2, !tbaa !558
  %i.ebk = zext i16 %i.ebj to i32
  %i.ebl = shl nuw i32 %i.ebk, 16
  %i.ebm = bitcast i32 %i.ebl to float            ; 2 uses
  %i.ebn = fcmp fast olt float %i.ebh, %i.ebm
  %.sroa.speculated.i.i.prol = select i1 %i.ebn, float %i.ebm, float %i.ebh
  %i.ebo = bitcast float %.sroa.speculated.i.i.prol to i32
  %i.ebp = lshr i32 %i.ebo, 16
  %i.ebq = trunc nuw i32 %i.ebp to i16
  %i.ebr = getelementptr inbounds nuw i8, ptr %.34588.i.i.ph, i64 2
  store i16 %i.ebq, ptr %.34588.i.i.ph, align 2, !tbaa !558
  %i.ebs = add nuw nsw i32 %.34189.i.i.ph, 1
  br label %.lr.ph92.i.i.prol.loopexit

.lr.ph92.i.i.prol.loopexit:                       ; preds = %.lr.ph92.i.i.prol, %.lr.ph92.i.i.preheader
  %.391.i.i.unr = phi ptr [ %.391.i.i.ph, %.lr.ph92.i.i.preheader ], [ %i.ebd, %.lr.ph92.i.i.prol ]
  %.33790.i.i.unr = phi ptr [ %.33790.i.i.ph, %.lr.ph92.i.i.preheader ], [ %i.ebi, %.lr.ph92.i.i.prol ]
  %.34189.i.i.unr = phi i32 [ %.34189.i.i.ph, %.lr.ph92.i.i.preheader ], [ %i.ebs, %.lr.ph92.i.i.prol ]
  %.34588.i.i.unr = phi ptr [ %.34588.i.i.ph, %.lr.ph92.i.i.preheader ], [ %i.ebr, %.lr.ph92.i.i.prol ]
  %i.ebt = icmp eq i32 %i.dxn, %.neg11076
  br i1 %i.ebt, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader61.i.i, %.lr.ph83.i.i
  %.282.i.i = phi ptr [ %i.ecj, %.lr.ph83.i.i ], [ %.1.lcssa.i.i720, %.preheader61.i.i ] ; 2 uses
  %.23681.i.i = phi ptr [ %i.eck, %.lr.ph83.i.i ], [ %.135.lcssa.i.i719, %.preheader61.i.i ] ; 2 uses
  %.24080.i.i = phi i32 [ %i.ecm, %.lr.ph83.i.i ], [ %.139.lcssa.i.i718, %.preheader61.i.i ]
  %.24479.i.i = phi ptr [ %i.ecl, %.lr.ph83.i.i ], [ %.143.lcssa.i.i717, %.preheader61.i.i ] ; 2 uses
  %i.ebu = load i64, ptr %.282.i.i, align 1, !tbaa !555
  %i.ebv = insertelement <2 x i64> poison, i64 %i.ebu, i64 0
  %i.ebw = bitcast <2 x i64> %i.ebv to <8 x i16>
  %i.ebx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.eby = bitcast <8 x i16> %i.ebx to <4 x float>
  %i.ebz = load i64, ptr %.23681.i.i, align 1, !tbaa !555
  %i.eca = insertelement <2 x i64> poison, i64 %i.ebz, i64 0
  %i.ecb = bitcast <2 x i64> %i.eca to <8 x i16>
  %i.ecc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ecb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ecd = bitcast <8 x i16> %i.ecc to <4 x float>
  %i.ece = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.eby, <4 x float> nofpclass(nan inf) %i.ecd)
  %i.ecf = shufflevector <4 x float> %i.ece, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ecg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ecf)
  %i.ech = bitcast <8 x bfloat> %i.ecg to <2 x i64>
  %i.eci = extractelement <2 x i64> %i.ech, i64 0
  store i64 %i.eci, ptr %.24479.i.i, align 1, !tbaa !555
  %i.ecj = getelementptr inbounds nuw i8, ptr %.282.i.i, i64 8 ; 2 uses
  %i.eck = getelementptr inbounds nuw i8, ptr %.23681.i.i, i64 8 ; 2 uses
  %i.ecl = getelementptr inbounds nuw i8, ptr %.24479.i.i, i64 8 ; 2 uses
  %i.ecm = add nuw nsw i32 %.24080.i.i, 4         ; 3 uses
  %i.ecn = or disjoint i32 %i.ecm, 3
  %i.eco = icmp slt i32 %i.ecn, %i.dxn
  br i1 %i.eco, label %.lr.ph83.i.i, label %.preheader.i.i721, !llvm.loop !133

.lr.ph92.i.i:                                     ; preds = %.lr.ph92.i.i.prol.loopexit, %.lr.ph92.i.i
  %.391.i.i = phi ptr [ %i.ede, %.lr.ph92.i.i ], [ %.391.i.i.unr, %.lr.ph92.i.i.prol.loopexit ] ; 3 uses
  %.33790.i.i = phi ptr [ %i.edj, %.lr.ph92.i.i ], [ %.33790.i.i.unr, %.lr.ph92.i.i.prol.loopexit ] ; 3 uses
  %.34189.i.i = phi i32 [ %i.edt, %.lr.ph92.i.i ], [ %.34189.i.i.unr, %.lr.ph92.i.i.prol.loopexit ]
  %.34588.i.i = phi ptr [ %i.eds, %.lr.ph92.i.i ], [ %.34588.i.i.unr, %.lr.ph92.i.i.prol.loopexit ] ; 3 uses
  %i.ecp = getelementptr inbounds nuw i8, ptr %.391.i.i, i64 2
  %i.ecq = load i16, ptr %.391.i.i, align 2, !tbaa !558
  %i.ecr = zext i16 %i.ecq to i32
  %i.ecs = shl nuw i32 %i.ecr, 16
  %i.ect = bitcast i32 %i.ecs to float            ; 2 uses
  %i.ecu = getelementptr inbounds nuw i8, ptr %.33790.i.i, i64 2
  %i.ecv = load i16, ptr %.33790.i.i, align 2, !tbaa !558
  %i.ecw = zext i16 %i.ecv to i32
  %i.ecx = shl nuw i32 %i.ecw, 16
  %i.ecy = bitcast i32 %i.ecx to float            ; 2 uses
  %i.ecz = fcmp fast olt float %i.ect, %i.ecy
  %.sroa.speculated.i.i = select i1 %i.ecz, float %i.ecy, float %i.ect
  %i.eda = bitcast float %.sroa.speculated.i.i to i32
  %i.edb = lshr i32 %i.eda, 16
  %i.edc = trunc nuw i32 %i.edb to i16
  %i.edd = getelementptr inbounds nuw i8, ptr %.34588.i.i, i64 2
  store i16 %i.edc, ptr %.34588.i.i, align 2, !tbaa !558
  %i.ede = getelementptr inbounds nuw i8, ptr %.391.i.i, i64 4
  %i.edf = load i16, ptr %i.ecp, align 2, !tbaa !558
  %i.edg = zext i16 %i.edf to i32
  %i.edh = shl nuw i32 %i.edg, 16
  %i.edi = bitcast i32 %i.edh to float            ; 2 uses
  %i.edj = getelementptr inbounds nuw i8, ptr %.33790.i.i, i64 4
  %i.edk = load i16, ptr %i.ecu, align 2, !tbaa !558
  %i.edl = zext i16 %i.edk to i32
  %i.edm = shl nuw i32 %i.edl, 16
  %i.edn = bitcast i32 %i.edm to float            ; 2 uses
  %i.edo = fcmp fast olt float %i.edi, %i.edn
  %.sroa.speculated.i.i.1 = select i1 %i.edo, float %i.edn, float %i.edi
  %i.edp = bitcast float %.sroa.speculated.i.i.1 to i32
  %i.edq = lshr i32 %i.edp, 16
  %i.edr = trunc nuw i32 %i.edq to i16
  %i.eds = getelementptr inbounds nuw i8, ptr %.34588.i.i, i64 4
  store i16 %i.edr, ptr %i.edd, align 2, !tbaa !558
  %i.edt = add nuw nsw i32 %.34189.i.i, 2         ; 2 uses
  %exitcond.not.i.i726.1 = icmp eq i32 %i.edt, %i.dxn
  br i1 %exitcond.not.i.i726.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i, !llvm.loop !134

bb.di:                                            ; preds = %bb.dg
  %i.edu = icmp eq i32 %4, 1
  br i1 %i.edu, label %bb.dj, label %bb.dp

end_hunk_4
begin_hunk_5_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.ezo = shufflevector <8 x float> %i.ezn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ezp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ezh, <8 x float> nofpclass(nan inf) %i.ezo)
  %i.ezq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ezp)
  store <8 x bfloat> %i.ezq, ptr %.13152.i.i668, align 1, !tbaa !555
  %i.ezr = getelementptr inbounds nuw i8, ptr %.154.i.i666, i64 2
  %i.ezs = getelementptr inbounds nuw i8, ptr %.13152.i.i668, i64 16
  %i.ezt = load i16, ptr %i.ezr, align 2, !tbaa !558
  %i.ezu = zext i16 %i.ezt to i32
  %i.ezv = shl nuw i32 %i.ezu, 16
  %i.ezw = insertelement <8 x i32> poison, i32 %i.ezv, i64 0
  %i.ezx = bitcast <8 x i32> %i.ezw to <8 x float>
  %i.ezy = shufflevector <8 x float> %i.ezx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ezz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ezh, <8 x float> nofpclass(nan inf) %i.ezy)
  %i.faa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ezz)
  store <8 x bfloat> %i.faa, ptr %i.ezs, align 1, !tbaa !555
  %i.fab = getelementptr inbounds nuw i8, ptr %.154.i.i666, i64 4 ; 2 uses
  %i.fac = getelementptr inbounds nuw i8, ptr %.13152.i.i668, i64 32 ; 2 uses
  %niter10693.next.1 = add i32 %niter10693, 2     ; 2 uses
  %niter10693.ncmp.1 = icmp eq i32 %niter10693.next.1, %unroll_iter10692
  br i1 %niter10693.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9461.unr-lcssa, label %.lr.ph55.i.i665, !llvm.loop !157

bb.ef:                                            ; preds = %bb.ec
  %i.fad = load i64, ptr %0, align 1, !tbaa !555
  %i.fae = insertelement <2 x i64> poison, i64 %i.fad, i64 0
  %i.faf = bitcast <2 x i64> %i.fae to <8 x i16>
  %i.fag = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.faf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fah = bitcast <8 x i16> %i.fag to <4 x float> ; 3 uses
  %xtraiter10683 = and i32 %.sroa.speculated101.i, 1
  %i.fai = icmp eq i32 %.sroa.speculated101.i, 1
  br i1 %i.fai, label %.lr.ph.i89.i.epil.preheader, label %.new10682

.new10682:                                        ; preds = %bb.ef
  %unroll_iter10686 = and i32 %.sroa.speculated101.i, 2147483646
  br label %.lr.ph.i89.i

.lr.ph.i89.i:                                     ; preds = %.lr.ph.i89.i, %.new10682
  %.250.i.i663 = phi ptr [ %1, %.new10682 ], [ %i.fbh, %.lr.ph.i89.i ] ; 3 uses
  %.23249.i.i664 = phi ptr [ %2, %.new10682 ], [ %i.fbi, %.lr.ph.i89.i ] ; 3 uses
  %niter10687 = phi i32 [ 0, %.new10682 ], [ %niter10687.next.1, %.lr.ph.i89.i ]
  %i.faj = load i16, ptr %.250.i.i663, align 2, !tbaa !558
  %i.fak = zext i16 %i.faj to i32
  %i.fal = shl nuw i32 %i.fak, 16
  %i.fam = insertelement <4 x i32> poison, i32 %i.fal, i64 0
  %i.fan = bitcast <4 x i32> %i.fam to <4 x float>
  %i.fao = shufflevector <4 x float> %i.fan, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fah, <4 x float> nofpclass(nan inf) %i.fao)
  %i.faq = shufflevector <4 x float> %i.fap, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.far = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.faq)
  %i.fas = bitcast <8 x bfloat> %i.far to <2 x i64>
  %i.fat = extractelement <2 x i64> %i.fas, i64 0
  store i64 %i.fat, ptr %.23249.i.i664, align 1, !tbaa !555
  %i.fau = getelementptr inbounds nuw i8, ptr %.250.i.i663, i64 2
  %i.fav = getelementptr inbounds nuw i8, ptr %.23249.i.i664, i64 8
  %i.faw = load i16, ptr %i.fau, align 2, !tbaa !558
  %i.fax = zext i16 %i.faw to i32
  %i.fay = shl nuw i32 %i.fax, 16
  %i.faz = insertelement <4 x i32> poison, i32 %i.fay, i64 0
  %i.fba = bitcast <4 x i32> %i.faz to <4 x float>
  %i.fbb = shufflevector <4 x float> %i.fba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fbc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fah, <4 x float> nofpclass(nan inf) %i.fbb)
  %i.fbd = shufflevector <4 x float> %i.fbc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fbe = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fbd)
  %i.fbf = bitcast <8 x bfloat> %i.fbe to <2 x i64>
  %i.fbg = extractelement <2 x i64> %i.fbf, i64 0
  store i64 %i.fbg, ptr %i.fav, align 1, !tbaa !555
  %i.fbh = getelementptr inbounds nuw i8, ptr %.250.i.i663, i64 4 ; 2 uses
  %i.fbi = getelementptr inbounds nuw i8, ptr %.23249.i.i664, i64 16 ; 2 uses
  %niter10687.next.1 = add i32 %niter10687, 2     ; 2 uses
  %niter10687.ncmp.1 = icmp eq i32 %niter10687.next.1, %unroll_iter10686
  br i1 %niter10687.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9462.unr-lcssa, label %.lr.ph.i89.i, !llvm.loop !158

bb.eg:                                            ; preds = %bb.a
  %.sroa.speculated101.i728 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i729 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.fbj = mul i32 %.sroa.speculated.i729, %.sroa.speculated101.i728 ; 48 uses
  %i.fbk = icmp eq i32 %5, %6
  br i1 %i.fbk, label %bb.eh, label %bb.ex

bb.eh:                                            ; preds = %bb.eg
  %i.fbl = icmp eq i32 %3, %4
  br i1 %i.fbl, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.fbm = icmp sgt i32 %i.fbj, 15
  br i1 %i.fbm, label %.lr.ph.i.i896.preheader, label %.preheader62.i.i864

.lr.ph.i.i896.preheader:                          ; preds = %bb.ei
  %i.fbn = add nsw i32 %i.fbj, -16                ; 2 uses
  %i.fbo = lshr i32 %i.fbn, 4                     ; 2 uses
  %i.fbp = add nuw nsw i32 %i.fbo, 1              ; 2 uses
  %i.fbq = icmp eq i32 %i.fbo, 0
  br i1 %i.fbq, label %.lr.ph.i.i896.epil.preheader, label %.lr.ph.i.i896.preheader.new

.lr.ph.i.i896.preheader.new:                      ; preds = %.lr.ph.i.i896.preheader
  %unroll_iter10678 = and i32 %i.fbp, 536870910
  br label %.lr.ph.i.i896

.preheader62.loopexit.i.i901.unr-lcssa:           ; preds = %.lr.ph.i.i896
  %i.fbr = and i32 %i.fbn, 16
  %lcmp.mod10673.not.not = icmp eq i32 %i.fbr, 0
  br i1 %lcmp.mod10673.not.not, label %.lr.ph.i.i896.epil.preheader, label %.preheader62.loopexit.i.i901

.lr.ph.i.i896.epil.preheader:                     ; preds = %.preheader62.loopexit.i.i901.unr-lcssa, %.lr.ph.i.i896.preheader
  %.066.i.i897.epil.init = phi ptr [ %0, %.lr.ph.i.i896.preheader ], [ %i.fct, %.preheader62.loopexit.i.i901.unr-lcssa ] ; 2 uses
  %.03465.i.i898.epil.init = phi ptr [ %1, %.lr.ph.i.i896.preheader ], [ %i.fcu, %.preheader62.loopexit.i.i901.unr-lcssa ] ; 2 uses
  %.04263.i.i900.epil.init = phi ptr [ %2, %.lr.ph.i.i896.preheader ], [ %i.fcv, %.preheader62.loopexit.i.i901.unr-lcssa ] ; 2 uses
  %lcmp.mod10677 = trunc i32 %i.fbp to i1
  tail call void @llvm.assume(i1 %lcmp.mod10677)
  %i.fbs = load <16 x bfloat>, ptr %.066.i.i897.epil.init, align 1, !tbaa !555
  %i.fbt = fpext fast <16 x bfloat> %i.fbs to <16 x float>
  %i.fbu = load <16 x bfloat>, ptr %.03465.i.i898.epil.init, align 1, !tbaa !555
  %i.fbv = fpext fast <16 x bfloat> %i.fbu to <16 x float>
  %i.fbw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fbt, <16 x float> nofpclass(nan inf) %i.fbv, i32 4)
  %i.fbx = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fbw)
  store <16 x bfloat> %i.fbx, ptr %.04263.i.i900.epil.init, align 1, !tbaa !555
  %i.fby = getelementptr inbounds nuw i8, ptr %.066.i.i897.epil.init, i64 32
  %i.fbz = getelementptr inbounds nuw i8, ptr %.03465.i.i898.epil.init, i64 32
  %i.fca = getelementptr inbounds nuw i8, ptr %.04263.i.i900.epil.init, i64 32
  br label %.preheader62.loopexit.i.i901

.preheader62.loopexit.i.i901:                     ; preds = %.preheader62.loopexit.i.i901.unr-lcssa, %.lr.ph.i.i896.epil.preheader
  %.lcssa9474 = phi ptr [ %i.fct, %.preheader62.loopexit.i.i901.unr-lcssa ], [ %i.fby, %.lr.ph.i.i896.epil.preheader ]
  %.lcssa9473 = phi ptr [ %i.fcu, %.preheader62.loopexit.i.i901.unr-lcssa ], [ %i.fbz, %.lr.ph.i.i896.epil.preheader ]
  %.lcssa9472 = phi ptr [ %i.fcv, %.preheader62.loopexit.i.i901.unr-lcssa ], [ %i.fca, %.lr.ph.i.i896.epil.preheader ]
  %i.fcb = and i32 %i.fbj, 2147483632
  br label %.preheader62.i.i864

.preheader62.i.i864:                              ; preds = %.preheader62.loopexit.i.i901, %bb.ei
  %.042.lcssa.i.i865 = phi ptr [ %2, %bb.ei ], [ %.lcssa9472, %.preheader62.loopexit.i.i901 ] ; 2 uses
  %.038.lcssa.i.i866 = phi i32 [ 0, %bb.ei ], [ %i.fcb, %.preheader62.loopexit.i.i901 ] ; 3 uses
  %.034.lcssa.i.i867 = phi ptr [ %1, %bb.ei ], [ %.lcssa9473, %.preheader62.loopexit.i.i901 ] ; 2 uses
  %.0.lcssa.i.i868 = phi ptr [ %0, %bb.ei ], [ %.lcssa9474, %.preheader62.loopexit.i.i901 ] ; 2 uses
  %i.fcc = or disjoint i32 %.038.lcssa.i.i866, 7
  %i.fcd = icmp slt i32 %i.fcc, %i.fbj
  br i1 %i.fcd, label %.lr.ph74.i.i891, label %.preheader61.i.i869

.lr.ph.i.i896:                                    ; preds = %.lr.ph.i.i896, %.lr.ph.i.i896.preheader.new
  %.066.i.i897 = phi ptr [ %0, %.lr.ph.i.i896.preheader.new ], [ %i.fct, %.lr.ph.i.i896 ] ; 3 uses
  %.03465.i.i898 = phi ptr [ %1, %.lr.ph.i.i896.preheader.new ], [ %i.fcu, %.lr.ph.i.i896 ] ; 3 uses
  %.04263.i.i900 = phi ptr [ %2, %.lr.ph.i.i896.preheader.new ], [ %i.fcv, %.lr.ph.i.i896 ] ; 3 uses
  %niter10679 = phi i32 [ 0, %.lr.ph.i.i896.preheader.new ], [ %niter10679.next.1, %.lr.ph.i.i896 ]
  %i.fce = load <16 x bfloat>, ptr %.066.i.i897, align 1, !tbaa !555
  %i.fcf = fpext fast <16 x bfloat> %i.fce to <16 x float>
  %i.fcg = load <16 x bfloat>, ptr %.03465.i.i898, align 1, !tbaa !555
  %i.fch = fpext fast <16 x bfloat> %i.fcg to <16 x float>
  %i.fci = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fcf, <16 x float> nofpclass(nan inf) %i.fch, i32 4)
  %i.fcj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fci)
  store <16 x bfloat> %i.fcj, ptr %.04263.i.i900, align 1, !tbaa !555
  %i.fck = getelementptr inbounds nuw i8, ptr %.066.i.i897, i64 32
  %i.fcl = getelementptr inbounds nuw i8, ptr %.03465.i.i898, i64 32
  %i.fcm = getelementptr inbounds nuw i8, ptr %.04263.i.i900, i64 32
  %i.fcn = load <16 x bfloat>, ptr %i.fck, align 1, !tbaa !555
  %i.fco = fpext fast <16 x bfloat> %i.fcn to <16 x float>
  %i.fcp = load <16 x bfloat>, ptr %i.fcl, align 1, !tbaa !555
  %i.fcq = fpext fast <16 x bfloat> %i.fcp to <16 x float>
  %i.fcr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.fco, <16 x float> nofpclass(nan inf) %i.fcq, i32 4)
  %i.fcs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.fcr)
  store <16 x bfloat> %i.fcs, ptr %i.fcm, align 1, !tbaa !555
  %i.fct = getelementptr inbounds nuw i8, ptr %.066.i.i897, i64 64 ; 3 uses
  %i.fcu = getelementptr inbounds nuw i8, ptr %.03465.i.i898, i64 64 ; 3 uses
  %i.fcv = getelementptr inbounds nuw i8, ptr %.04263.i.i900, i64 64 ; 3 uses
  %niter10679.next.1 = add i32 %niter10679, 2     ; 2 uses
  %niter10679.ncmp.1.not = icmp eq i32 %niter10679.next.1, %unroll_iter10678
  br i1 %niter10679.ncmp.1.not, label %.preheader62.loopexit.i.i901.unr-lcssa, label %.lr.ph.i.i896, !llvm.loop !159

.preheader61.i.i869:                              ; preds = %.lr.ph74.i.i891, %.preheader62.i.i864
  %.143.lcssa.i.i870 = phi ptr [ %.042.lcssa.i.i865, %.preheader62.i.i864 ], [ %i.fdg, %.lr.ph74.i.i891 ] ; 2 uses
  %.139.lcssa.i.i871 = phi i32 [ %.038.lcssa.i.i866, %.preheader62.i.i864 ], [ %i.fdh, %.lr.ph74.i.i891 ] ; 3 uses
  %.135.lcssa.i.i872 = phi ptr [ %.034.lcssa.i.i867, %.preheader62.i.i864 ], [ %i.fdf, %.lr.ph74.i.i891 ] ; 2 uses
  %.1.lcssa.i.i873 = phi ptr [ %.0.lcssa.i.i868, %.preheader62.i.i864 ], [ %i.fde, %.lr.ph74.i.i891 ] ; 2 uses
  %i.fcw = or disjoint i32 %.139.lcssa.i.i871, 3
  %i.fcx = icmp slt i32 %i.fcw, %i.fbj
  br i1 %i.fcx, label %.lr.ph83.i.i886, label %.preheader.i.i874

.lr.ph74.i.i891:                                  ; preds = %.preheader62.i.i864, %.lr.ph74.i.i891
  %.173.i.i892 = phi ptr [ %i.fde, %.lr.ph74.i.i891 ], [ %.0.lcssa.i.i868, %.preheader62.i.i864 ] ; 2 uses
  %.13572.i.i893 = phi ptr [ %i.fdf, %.lr.ph74.i.i891 ], [ %.034.lcssa.i.i867, %.preheader62.i.i864 ] ; 2 uses
  %.13971.i.i894 = phi i32 [ %i.fdh, %.lr.ph74.i.i891 ], [ %.038.lcssa.i.i866, %.preheader62.i.i864 ]
  %.14370.i.i895 = phi ptr [ %i.fdg, %.lr.ph74.i.i891 ], [ %.042.lcssa.i.i865, %.preheader62.i.i864 ] ; 2 uses
  %i.fcy = load <8 x bfloat>, ptr %.173.i.i892, align 1, !tbaa !555
  %i.fcz = fpext fast <8 x bfloat> %i.fcy to <8 x float>
  %i.fda = load <8 x bfloat>, ptr %.13572.i.i893, align 1, !tbaa !555
  %i.fdb = fpext fast <8 x bfloat> %i.fda to <8 x float>
  %i.fdc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.fcz, <8 x float> nofpclass(nan inf) %i.fdb)
  %i.fdd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fdc)
  store <8 x bfloat> %i.fdd, ptr %.14370.i.i895, align 1, !tbaa !555
  %i.fde = getelementptr inbounds nuw i8, ptr %.173.i.i892, i64 16 ; 2 uses
  %i.fdf = getelementptr inbounds nuw i8, ptr %.13572.i.i893, i64 16 ; 2 uses
  %i.fdg = getelementptr inbounds nuw i8, ptr %.14370.i.i895, i64 16 ; 2 uses
  %i.fdh = add nuw nsw i32 %.13971.i.i894, 8      ; 3 uses
  %i.fdi = or disjoint i32 %i.fdh, 7
  %i.fdj = icmp slt i32 %i.fdi, %i.fbj
  br i1 %i.fdj, label %.lr.ph74.i.i891, label %.preheader61.i.i869, !llvm.loop !160

.preheader.i.i874:                                ; preds = %.lr.ph83.i.i886, %.preheader61.i.i869
  %.244.lcssa.i.i875 = phi ptr [ %.143.lcssa.i.i870, %.preheader61.i.i869 ], [ %i.fgh, %.lr.ph83.i.i886 ] ; 7 uses
  %.240.lcssa.i.i876 = phi i32 [ %.139.lcssa.i.i871, %.preheader61.i.i869 ], [ %i.fgi, %.lr.ph83.i.i886 ] ; 6 uses
  %.236.lcssa.i.i877 = phi ptr [ %.135.lcssa.i.i872, %.preheader61.i.i869 ], [ %i.fgg, %.lr.ph83.i.i886 ] ; 7 uses
  %.2.lcssa.i.i878 = phi ptr [ %.1.lcssa.i.i873, %.preheader61.i.i869 ], [ %i.fgf, %.lr.ph83.i.i886 ] ; 7 uses
  %.236.lcssa.i.i8778201 = ptrtoaddr ptr %.236.lcssa.i.i877 to i64
  %.244.lcssa.i.i8758202 = ptrtoaddr ptr %.2.lcssa.i.i878 to i64
  %.2.lcssa.i.i8788203 = ptrtoaddr ptr %.244.lcssa.i.i875 to i64 ; 2 uses
  %i.fdk = icmp slt i32 %.240.lcssa.i.i876, %i.fbj
  br i1 %i.fdk, label %iter.check8223, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8223:                                   ; preds = %.preheader.i.i874
  %i.fdl = xor i32 %.240.lcssa.i.i876, -1
  %i.fdm = add i32 %i.fbj, %i.fdl                 ; 3 uses
  %i.fdn = zext i32 %i.fdm to i64
  %i.fdo = add nuw nsw i64 %i.fdn, 1              ; 5 uses
  %min.iters.check8204 = icmp ult i32 %i.fdm, 7
  br i1 %min.iters.check8204, label %.lr.ph92.i.i879.preheader, label %vector.memcheck8205

vector.memcheck8205:                              ; preds = %iter.check8223
  %i.fdp = sub i64 %.244.lcssa.i.i8758202, %.2.lcssa.i.i8788203
  %diff.check8206 = icmp ugt i64 %i.fdp, -64
  %i.fdq = sub i64 %.236.lcssa.i.i8778201, %.2.lcssa.i.i8788203
  %diff.check8207 = icmp ugt i64 %i.fdq, -64
  %conflict.rdx8208 = or i1 %diff.check8206, %diff.check8207
  br i1 %conflict.rdx8208, label %.lr.ph92.i.i879.preheader, label %vector.main.loop.iter.check8209

vector.main.loop.iter.check8209:                  ; preds = %vector.memcheck8205
  %min.iters.check8210 = icmp ult i32 %i.fdm, 31
  br i1 %min.iters.check8210, label %vec.epilog.ph8227, label %vector.ph8211

vector.ph8211:                                    ; preds = %vector.main.loop.iter.check8209
  %i.fdr = and i64 %i.fdo, 24
  %n.vec8212 = and i64 %i.fdo, 8589934560         ; 5 uses
  %i.fds = shl nuw nsw i64 %n.vec8212, 1          ; 3 uses
  %i.fdt = getelementptr i8, ptr %.2.lcssa.i.i878, i64 %i.fds
  %i.fdu = getelementptr i8, ptr %.236.lcssa.i.i877, i64 %i.fds
  %i.fdv = trunc i64 %n.vec8212 to i32
  %i.fdw = add i32 %.240.lcssa.i.i876, %i.fdv
  %i.fdx = getelementptr i8, ptr %.244.lcssa.i.i875, i64 %i.fds
  br label %vector.body8213

vector.body8213:                                  ; preds = %vector.ph8211, %vector.body8213
  %index8214 = phi i64 [ 0, %vector.ph8211 ], [ %index.next8220, %vector.body8213 ] ; 2 uses
  %i.fdy = shl i64 %index8214, 1                  ; 3 uses
  %next.gep8215 = getelementptr i8, ptr %.2.lcssa.i.i878, i64 %i.fdy
  %next.gep8216 = getelementptr i8, ptr %.236.lcssa.i.i877, i64 %i.fdy
  %next.gep8217 = getelementptr i8, ptr %.244.lcssa.i.i875, i64 %i.fdy
  %wide.load8218 = load <32 x i16>, ptr %next.gep8215, align 2, !tbaa !558 ; 2 uses
  %i.fdz = zext <32 x i16> %wide.load8218 to <32 x i32>
  %i.fea = shl nuw <32 x i32> %i.fdz, splat (i32 16)
  %i.feb = bitcast <32 x i32> %i.fea to <32 x float>
  %wide.load8219 = load <32 x i16>, ptr %next.gep8216, align 2, !tbaa !558 ; 2 uses
  %i.fec = zext <32 x i16> %wide.load8219 to <32 x i32>
  %i.fed = shl nuw <32 x i32> %i.fec, splat (i32 16)
  %i.fee = bitcast <32 x i32> %i.fed to <32 x float>
  %i.fef = fcmp fast olt <32 x float> %i.fee, %i.feb
  %i.feg = select <32 x i1> %i.fef, <32 x i16> %wide.load8219, <32 x i16> %wide.load8218
  store <32 x i16> %i.feg, ptr %next.gep8217, align 2, !tbaa !558
  %index.next8220 = add nuw i64 %index8214, 32    ; 2 uses
  %i.feh = icmp eq i64 %index.next8220, %n.vec8212
  br i1 %i.feh, label %middle.block8221, label %vector.body8213, !llvm.loop !161

middle.block8221:                                 ; preds = %vector.body8213
  %cmp.n8222 = icmp eq i64 %i.fdo, %n.vec8212
  br i1 %cmp.n8222, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8224

vec.epilog.iter.check8224:                        ; preds = %middle.block8221
  %min.epilog.iters.check8226 = icmp eq i64 %i.fdr, 0
  br i1 %min.epilog.iters.check8226, label %.lr.ph92.i.i879.preheader, label %vec.epilog.ph8227, !prof !561

vec.epilog.ph8227:                                ; preds = %vector.main.loop.iter.check8209, %vec.epilog.iter.check8224
  %vec.epilog.resume.val8228 = phi i64 [ %n.vec8212, %vec.epilog.iter.check8224 ], [ 0, %vector.main.loop.iter.check8209 ]
  %n.vec8229 = and i64 %i.fdo, 8589934584         ; 4 uses
  %i.fei = shl nuw nsw i64 %n.vec8229, 1          ; 3 uses
  %i.fej = getelementptr i8, ptr %.2.lcssa.i.i878, i64 %i.fei
  %i.fek = getelementptr i8, ptr %.236.lcssa.i.i877, i64 %i.fei
  %i.fel = trunc i64 %n.vec8229 to i32
  %i.fem = add i32 %.240.lcssa.i.i876, %i.fel
  %i.fen = getelementptr i8, ptr %.244.lcssa.i.i875, i64 %i.fei
  br label %vec.epilog.vector.body8230

vec.epilog.vector.body8230:                       ; preds = %vec.epilog.vector.body8230, %vec.epilog.ph8227
  %index8231 = phi i64 [ %vec.epilog.resume.val8228, %vec.epilog.ph8227 ], [ %index.next8237, %vec.epilog.vector.body8230 ] ; 2 uses
  %i.feo = shl i64 %index8231, 1                  ; 3 uses
  %next.gep8232 = getelementptr i8, ptr %.2.lcssa.i.i878, i64 %i.feo
  %next.gep8233 = getelementptr i8, ptr %.236.lcssa.i.i877, i64 %i.feo
  %next.gep8234 = getelementptr i8, ptr %.244.lcssa.i.i875, i64 %i.feo
  %wide.load8235 = load <8 x i16>, ptr %next.gep8232, align 2, !tbaa !558 ; 2 uses
  %i.fep = zext <8 x i16> %wide.load8235 to <8 x i32>
  %i.feq = shl nuw <8 x i32> %i.fep, splat (i32 16)
  %i.fer = bitcast <8 x i32> %i.feq to <8 x float>
  %wide.load8236 = load <8 x i16>, ptr %next.gep8233, align 2, !tbaa !558 ; 2 uses
  %i.fes = zext <8 x i16> %wide.load8236 to <8 x i32>
  %i.fet = shl nuw <8 x i32> %i.fes, splat (i32 16)
  %i.feu = bitcast <8 x i32> %i.fet to <8 x float>
  %i.fev = fcmp fast olt <8 x float> %i.feu, %i.fer
  %i.few = select <8 x i1> %i.fev, <8 x i16> %wide.load8236, <8 x i16> %wide.load8235
  store <8 x i16> %i.few, ptr %next.gep8234, align 2, !tbaa !558
  %index.next8237 = add nuw i64 %index8231, 8     ; 2 uses
  %i.fex = icmp eq i64 %index.next8237, %n.vec8229
  br i1 %i.fex, label %vec.epilog.middle.block8238, label %vec.epilog.vector.body8230, !llvm.loop !162

vec.epilog.middle.block8238:                      ; preds = %vec.epilog.vector.body8230
  %cmp.n8239 = icmp eq i64 %i.fdo, %n.vec8229
  br i1 %cmp.n8239, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i879.preheader

.lr.ph92.i.i879.preheader:                        ; preds = %iter.check8223, %vector.memcheck8205, %vec.epilog.iter.check8224, %vec.epilog.middle.block8238
  %.391.i.i880.ph = phi ptr [ %.2.lcssa.i.i878, %iter.check8223 ], [ %.2.lcssa.i.i878, %vector.memcheck8205 ], [ %i.fdt, %vec.epilog.iter.check8224 ], [ %i.fej, %vec.epilog.middle.block8238 ] ; 3 uses
  %.33790.i.i881.ph = phi ptr [ %.236.lcssa.i.i877, %iter.check8223 ], [ %.236.lcssa.i.i877, %vector.memcheck8205 ], [ %i.fdu, %vec.epilog.iter.check8224 ], [ %i.fek, %vec.epilog.middle.block8238 ] ; 3 uses
  %.34189.i.i882.ph = phi i32 [ %.240.lcssa.i.i876, %iter.check8223 ], [ %.240.lcssa.i.i876, %vector.memcheck8205 ], [ %i.fdw, %vec.epilog.iter.check8224 ], [ %i.fem, %vec.epilog.middle.block8238 ] ; 4 uses
  %.34588.i.i883.ph = phi ptr [ %.244.lcssa.i.i875, %iter.check8223 ], [ %.244.lcssa.i.i875, %vector.memcheck8205 ], [ %i.fdx, %vec.epilog.iter.check8224 ], [ %i.fen, %vec.epilog.middle.block8238 ] ; 3 uses
  %i.fey = sub i32 %i.fbj, %.34189.i.i882.ph
  %.neg11072 = add i32 %.34189.i.i882.ph, 1
  %xtraiter10680 = and i32 %i.fey, 1
  %lcmp.mod10681.not = icmp eq i32 %xtraiter10680, 0
  br i1 %lcmp.mod10681.not, label %.lr.ph92.i.i879.prol.loopexit, label %.lr.ph92.i.i879.prol

.lr.ph92.i.i879.prol:                             ; preds = %.lr.ph92.i.i879.preheader
  %i.fez = getelementptr inbounds nuw i8, ptr %.391.i.i880.ph, i64 2
  %i.ffa = load i16, ptr %.391.i.i880.ph, align 2, !tbaa !558
  %i.ffb = zext i16 %i.ffa to i32
  %i.ffc = shl nuw i32 %i.ffb, 16
  %i.ffd = bitcast i32 %i.ffc to float            ; 2 uses
  %i.ffe = getelementptr inbounds nuw i8, ptr %.33790.i.i881.ph, i64 2
  %i.fff = load i16, ptr %.33790.i.i881.ph, align 2, !tbaa !558
  %i.ffg = zext i16 %i.fff to i32
  %i.ffh = shl nuw i32 %i.ffg, 16
  %i.ffi = bitcast i32 %i.ffh to float            ; 2 uses
  %i.ffj = fcmp fast olt float %i.ffi, %i.ffd
  %.sroa.speculated.i.i884.prol = select i1 %i.ffj, float %i.ffi, float %i.ffd
  %i.ffk = bitcast float %.sroa.speculated.i.i884.prol to i32
  %i.ffl = lshr i32 %i.ffk, 16
  %i.ffm = trunc nuw i32 %i.ffl to i16
  %i.ffn = getelementptr inbounds nuw i8, ptr %.34588.i.i883.ph, i64 2
  store i16 %i.ffm, ptr %.34588.i.i883.ph, align 2, !tbaa !558
  %i.ffo = add nuw nsw i32 %.34189.i.i882.ph, 1
  br label %.lr.ph92.i.i879.prol.loopexit

.lr.ph92.i.i879.prol.loopexit:                    ; preds = %.lr.ph92.i.i879.prol, %.lr.ph92.i.i879.preheader
  %.391.i.i880.unr = phi ptr [ %.391.i.i880.ph, %.lr.ph92.i.i879.preheader ], [ %i.fez, %.lr.ph92.i.i879.prol ]
  %.33790.i.i881.unr = phi ptr [ %.33790.i.i881.ph, %.lr.ph92.i.i879.preheader ], [ %i.ffe, %.lr.ph92.i.i879.prol ]
  %.34189.i.i882.unr = phi i32 [ %.34189.i.i882.ph, %.lr.ph92.i.i879.preheader ], [ %i.ffo, %.lr.ph92.i.i879.prol ]
  %.34588.i.i883.unr = phi ptr [ %.34588.i.i883.ph, %.lr.ph92.i.i879.preheader ], [ %i.ffn, %.lr.ph92.i.i879.prol ]
  %i.ffp = icmp eq i32 %i.fbj, %.neg11072
  br i1 %i.ffp, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i879

.lr.ph83.i.i886:                                  ; preds = %.preheader61.i.i869, %.lr.ph83.i.i886
  %.282.i.i887 = phi ptr [ %i.fgf, %.lr.ph83.i.i886 ], [ %.1.lcssa.i.i873, %.preheader61.i.i869 ] ; 2 uses
  %.23681.i.i888 = phi ptr [ %i.fgg, %.lr.ph83.i.i886 ], [ %.135.lcssa.i.i872, %.preheader61.i.i869 ] ; 2 uses
  %.24080.i.i889 = phi i32 [ %i.fgi, %.lr.ph83.i.i886 ], [ %.139.lcssa.i.i871, %.preheader61.i.i869 ]
  %.24479.i.i890 = phi ptr [ %i.fgh, %.lr.ph83.i.i886 ], [ %.143.lcssa.i.i870, %.preheader61.i.i869 ] ; 2 uses
  %i.ffq = load i64, ptr %.282.i.i887, align 1, !tbaa !555
  %i.ffr = insertelement <2 x i64> poison, i64 %i.ffq, i64 0
  %i.ffs = bitcast <2 x i64> %i.ffr to <8 x i16>
  %i.fft = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffu = bitcast <8 x i16> %i.fft to <4 x float>
  %i.ffv = load i64, ptr %.23681.i.i888, align 1, !tbaa !555
  %i.ffw = insertelement <2 x i64> poison, i64 %i.ffv, i64 0
  %i.ffx = bitcast <2 x i64> %i.ffw to <8 x i16>
  %i.ffy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffz = bitcast <8 x i16> %i.ffy to <4 x float>
  %i.fga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ffu, <4 x float> nofpclass(nan inf) %i.ffz)
  %i.fgb = shufflevector <4 x float> %i.fga, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.fgc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.fgb)
  %i.fgd = bitcast <8 x bfloat> %i.fgc to <2 x i64>
  %i.fge = extractelement <2 x i64> %i.fgd, i64 0
  store i64 %i.fge, ptr %.24479.i.i890, align 1, !tbaa !555
  %i.fgf = getelementptr inbounds nuw i8, ptr %.282.i.i887, i64 8 ; 2 uses
  %i.fgg = getelementptr inbounds nuw i8, ptr %.23681.i.i888, i64 8 ; 2 uses
  %i.fgh = getelementptr inbounds nuw i8, ptr %.24479.i.i890, i64 8 ; 2 uses
  %i.fgi = add nuw nsw i32 %.24080.i.i889, 4      ; 3 uses
  %i.fgj = or disjoint i32 %i.fgi, 3
  %i.fgk = icmp slt i32 %i.fgj, %i.fbj
  br i1 %i.fgk, label %.lr.ph83.i.i886, label %.preheader.i.i874, !llvm.loop !163

.lr.ph92.i.i879:                                  ; preds = %.lr.ph92.i.i879.prol.loopexit, %.lr.ph92.i.i879
  %.391.i.i880 = phi ptr [ %i.fha, %.lr.ph92.i.i879 ], [ %.391.i.i880.unr, %.lr.ph92.i.i879.prol.loopexit ] ; 3 uses
  %.33790.i.i881 = phi ptr [ %i.fhf, %.lr.ph92.i.i879 ], [ %.33790.i.i881.unr, %.lr.ph92.i.i879.prol.loopexit ] ; 3 uses
  %.34189.i.i882 = phi i32 [ %i.fhp, %.lr.ph92.i.i879 ], [ %.34189.i.i882.unr, %.lr.ph92.i.i879.prol.loopexit ]
  %.34588.i.i883 = phi ptr [ %i.fho, %.lr.ph92.i.i879 ], [ %.34588.i.i883.unr, %.lr.ph92.i.i879.prol.loopexit ] ; 3 uses
  %i.fgl = getelementptr inbounds nuw i8, ptr %.391.i.i880, i64 2
  %i.fgm = load i16, ptr %.391.i.i880, align 2, !tbaa !558
  %i.fgn = zext i16 %i.fgm to i32
  %i.fgo = shl nuw i32 %i.fgn, 16
  %i.fgp = bitcast i32 %i.fgo to float            ; 2 uses
  %i.fgq = getelementptr inbounds nuw i8, ptr %.33790.i.i881, i64 2
  %i.fgr = load i16, ptr %.33790.i.i881, align 2, !tbaa !558
  %i.fgs = zext i16 %i.fgr to i32
  %i.fgt = shl nuw i32 %i.fgs, 16
  %i.fgu = bitcast i32 %i.fgt to float            ; 2 uses
  %i.fgv = fcmp fast olt float %i.fgu, %i.fgp
  %.sroa.speculated.i.i884 = select i1 %i.fgv, float %i.fgu, float %i.fgp
  %i.fgw = bitcast float %.sroa.speculated.i.i884 to i32
  %i.fgx = lshr i32 %i.fgw, 16
  %i.fgy = trunc nuw i32 %i.fgx to i16
  %i.fgz = getelementptr inbounds nuw i8, ptr %.34588.i.i883, i64 2
  store i16 %i.fgy, ptr %.34588.i.i883, align 2, !tbaa !558
  %i.fha = getelementptr inbounds nuw i8, ptr %.391.i.i880, i64 4
  %i.fhb = load i16, ptr %i.fgl, align 2, !tbaa !558
  %i.fhc = zext i16 %i.fhb to i32
  %i.fhd = shl nuw i32 %i.fhc, 16
  %i.fhe = bitcast i32 %i.fhd to float            ; 2 uses
  %i.fhf = getelementptr inbounds nuw i8, ptr %.33790.i.i881, i64 4
  %i.fhg = load i16, ptr %i.fgq, align 2, !tbaa !558
  %i.fhh = zext i16 %i.fhg to i32
  %i.fhi = shl nuw i32 %i.fhh, 16
  %i.fhj = bitcast i32 %i.fhi to float            ; 2 uses
  %i.fhk = fcmp fast olt float %i.fhj, %i.fhe
  %.sroa.speculated.i.i884.1 = select i1 %i.fhk, float %i.fhj, float %i.fhe
  %i.fhl = bitcast float %.sroa.speculated.i.i884.1 to i32
  %i.fhm = lshr i32 %i.fhl, 16
  %i.fhn = trunc nuw i32 %i.fhm to i16
  %i.fho = getelementptr inbounds nuw i8, ptr %.34588.i.i883, i64 4
  store i16 %i.fhn, ptr %i.fgz, align 2, !tbaa !558
  %i.fhp = add nuw nsw i32 %.34189.i.i882, 2      ; 2 uses
  %exitcond.not.i.i885.1 = icmp eq i32 %i.fhp, %i.fbj
  br i1 %exitcond.not.i.i885.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph92.i.i879, !llvm.loop !164

bb.ej:                                            ; preds = %bb.eh
  %i.fhq = icmp eq i32 %4, 1
  br i1 %i.fhq, label %bb.ek, label %bb.eq

end_hunk_5
begin_hunk_6_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.gez = shufflevector <4 x float> %i.gey, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gfa = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gez)
  %i.gfb = bitcast <8 x bfloat> %i.gfa to <2 x i64>
  %i.gfc = extractelement <2 x i64> %i.gfb, i64 0
  store i64 %i.gfc, ptr %i.ger, align 1, !tbaa !555
  %i.gfd = getelementptr inbounds nuw i8, ptr %.250.i.i732, i64 4 ; 2 uses
  %i.gfe = getelementptr inbounds nuw i8, ptr %.23249.i.i733, i64 16 ; 2 uses
  %niter10617.next.1 = add i32 %niter10617, 2     ; 2 uses
  %niter10617.ncmp.1 = icmp eq i32 %niter10617.next.1, %unroll_iter10616
  br i1 %niter10617.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9507.unr-lcssa, label %.lr.ph.i89.i730, !llvm.loop !188

bb.fh:                                            ; preds = %bb.a
  %.sroa.speculated98.i902 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i903 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.gff = mul i32 %.sroa.speculated.i903, %.sroa.speculated98.i902 ; 48 uses
  %i.gfg = icmp eq i32 %5, %6
  br i1 %i.gfg, label %bb.fi, label %bb.gb

bb.fi:                                            ; preds = %bb.fh
  %i.gfh = icmp eq i32 %3, %4
  br i1 %i.gfh, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.gfi = icmp sgt i32 %i.gff, 15
  br i1 %i.gfi, label %.lr.ph.i.i962, label %.preheader177.i.i

.preheader177.loopexit.i.i:                       ; preds = %.lr.ph.i.i962
  %i.gfj = and i32 %i.gff, 2147483632
  br label %.preheader177.i.i

.preheader177.i.i:                                ; preds = %.preheader177.loopexit.i.i, %bb.fj
  %.042.lcssa.i.i948 = phi ptr [ %2, %bb.fj ], [ %i.ghv, %.preheader177.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i949 = phi i32 [ 0, %bb.fj ], [ %i.gfj, %.preheader177.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i950 = phi ptr [ %1, %bb.fj ], [ %i.ghu, %.preheader177.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i951 = phi ptr [ %0, %bb.fj ], [ %i.ght, %.preheader177.loopexit.i.i ] ; 2 uses
  %i.gfk = or disjoint i32 %.038.lcssa.i.i949, 7
  %i.gfl = icmp slt i32 %i.gfk, %i.gff
  br i1 %i.gfl, label %.lr.ph189.i.i, label %.preheader176.i.i

.lr.ph.i.i962:                                    ; preds = %bb.fj, %.lr.ph.i.i962
  %.0181.i.i = phi ptr [ %i.ght, %.lr.ph.i.i962 ], [ %0, %bb.fj ] ; 2 uses
  %.034180.i.i = phi ptr [ %i.ghu, %.lr.ph.i.i962 ], [ %1, %bb.fj ] ; 2 uses
  %.038179.i.i = phi i32 [ %i.ghw, %.lr.ph.i.i962 ], [ 0, %bb.fj ]
  %.042178.i.i = phi ptr [ %i.ghv, %.lr.ph.i.i962 ], [ %2, %bb.fj ] ; 2 uses
  %i.gfm = load <16 x bfloat>, ptr %.0181.i.i, align 1, !tbaa !555
  %i.gfn = fpext fast <16 x bfloat> %i.gfm to <16 x float>
  %i.gfo = load <16 x bfloat>, ptr %.034180.i.i, align 1, !tbaa !555
  %i.gfp = fpext fast <16 x bfloat> %i.gfo to <16 x float>
  %i.gfq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.gfn, <16 x float> splat (float f0x00800000), i32 4)
  %i.gfr = bitcast <16 x float> %i.gfq to <16 x i32> ; 2 uses
  %i.gfs = lshr <16 x i32> %i.gfr, splat (i32 23)
  %i.gft = and <16 x i32> %i.gfr, splat (i32 -2139095041)
  %i.gfu = or disjoint <16 x i32> %i.gft, splat (i32 1056964608)
  %i.gfv = bitcast <16 x i32> %i.gfu to <16 x float> ; 3 uses
  %i.gfw = add nsw <16 x i32> %i.gfs, splat (i32 -127)
  %i.gfx = sitofp fast <16 x i32> %i.gfw to <16 x float> ; 2 uses
  %i.gfy = fadd fast <16 x float> %i.gfx, splat (float 1.000000e+00)
  %i.gfz = fcmp fast olt <16 x float> %i.gfv, splat (float f0x3F3504F3) ; 2 uses
  %i.gga = fadd fast <16 x float> %i.gfv, splat (float -1.000000e+00)
  %i.ggb = select fast <16 x i1> %i.gfz, <16 x float> %i.gfx, <16 x float> %i.gfy ; 2 uses
  %i.ggc = select fast <16 x i1> %i.gfz, <16 x float> %i.gfv, <16 x float> zeroinitializer
  %i.ggd = fadd fast <16 x float> %i.gga, %i.ggc  ; 12 uses
  %i.gge = fmul fast <16 x float> %i.ggd, %i.ggd  ; 2 uses
  %i.ggf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.ggg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggf, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0x3DEF251A))
  %i.ggh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggg, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0xBDFE5D4F))
  %i.ggi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggh, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0x3E11E9BF))
  %i.ggj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggi, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0xBE2AAE50))
  %i.ggk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggj, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0x3E4CCEAC))
  %i.ggl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggk, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0xBE7FFFFC))
  %i.ggm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggl, <16 x float> nofpclass(nan inf) %i.ggd, <16 x float> splat (float f0x3EAAAAAA))
  %i.ggn = fmul fast <16 x float> %i.gge, %i.ggd
  %i.ggo = fmul fast <16 x float> %i.ggn, %i.ggm
  %i.ggp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggb, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ggo)
  %i.ggq = fneg fast <16 x float> %i.gge
  %i.ggr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ggq, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.ggp)
  %i.ggs = fadd fast <16 x float> %i.ggr, %i.ggd
  %i.ggt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggb, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ggs)
  %i.ggu = fmul fast <16 x float> %i.ggt, %i.gfp
  %i.ggv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.ggu, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.ggw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ggv, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.ggx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ggw, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ggy = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ggx, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.ggz = fcmp fast ogt <16 x float> %i.ggy, %i.ggx
  %i.gha = fadd fast <16 x float> %i.ggy, splat (float -1.000000e+00)
  %i.ghb = select fast <16 x i1> %i.ggz, <16 x float> %i.gha, <16 x float> %i.ggy ; 2 uses
  %i.ghc = fneg fast <16 x float> %i.ghb          ; 2 uses
  %i.ghd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ghc, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.ggw)
  %i.ghe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.ghc, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.ghd) ; 8 uses
  %i.ghf = fmul fast <16 x float> %i.ghe, %i.ghe
  %i.ghg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghe, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.ghh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghg, <16 x float> nofpclass(nan inf) %i.ghe, <16 x float> splat (float f0x3C088908))
  %i.ghi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghh, <16 x float> nofpclass(nan inf) %i.ghe, <16 x float> splat (float f0x3D2AA9C1))
  %i.ghj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghi, <16 x float> nofpclass(nan inf) %i.ghe, <16 x float> splat (float f0x3E2AAAAA))
  %i.ghk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghj, <16 x float> nofpclass(nan inf) %i.ghe, <16 x float> splat (float 5.000000e-01))
  %i.ghl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ghk, <16 x float> nofpclass(nan inf) %i.ghf, <16 x float> nofpclass(nan inf) %i.ghe)
  %i.ghm = fadd fast <16 x float> %i.ghl, splat (float 1.000000e+00)
  %i.ghn = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.ghb, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.gho = shl <16 x i32> %i.ghn, splat (i32 23)
  %i.ghp = add <16 x i32> %i.gho, splat (i32 1065353216)
  %i.ghq = bitcast <16 x i32> %i.ghp to <16 x float>
  %i.ghr = fmul fast <16 x float> %i.ghm, %i.ghq
  %i.ghs = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ghr)
  store <16 x bfloat> %i.ghs, ptr %.042178.i.i, align 1, !tbaa !555
  %i.ght = getelementptr inbounds nuw i8, ptr %.0181.i.i, i64 32 ; 2 uses
  %i.ghu = getelementptr inbounds nuw i8, ptr %.034180.i.i, i64 32 ; 2 uses
  %i.ghv = getelementptr inbounds nuw i8, ptr %.042178.i.i, i64 32 ; 2 uses
  %i.ghw = add nuw nsw i32 %.038179.i.i, 16       ; 2 uses
  %i.ghx = or disjoint i32 %i.ghw, 15
  %i.ghy = icmp slt i32 %i.ghx, %i.gff
  br i1 %i.ghy, label %.lr.ph.i.i962, label %.preheader177.loopexit.i.i, !llvm.loop !189

.preheader176.i.i:                                ; preds = %.lr.ph189.i.i, %.preheader177.i.i
  %.143.lcssa.i.i952 = phi ptr [ %.042.lcssa.i.i948, %.preheader177.i.i ], [ %i.gkk, %.lr.ph189.i.i ] ; 2 uses
  %.139.lcssa.i.i953 = phi i32 [ %.038.lcssa.i.i949, %.preheader177.i.i ], [ %i.gkl, %.lr.ph189.i.i ] ; 3 uses
  %.135.lcssa.i.i954 = phi ptr [ %.034.lcssa.i.i950, %.preheader177.i.i ], [ %i.gkj, %.lr.ph189.i.i ] ; 2 uses
  %.1.lcssa.i.i955 = phi ptr [ %.0.lcssa.i.i951, %.preheader177.i.i ], [ %i.gki, %.lr.ph189.i.i ] ; 2 uses
  %i.ghz = or disjoint i32 %.139.lcssa.i.i953, 3
  %i.gia = icmp slt i32 %i.ghz, %i.gff
  br i1 %i.gia, label %.lr.ph198.i.i, label %.preheader.i.i956

.lr.ph189.i.i:                                    ; preds = %.preheader177.i.i, %.lr.ph189.i.i
  %.1188.i.i = phi ptr [ %i.gki, %.lr.ph189.i.i ], [ %.0.lcssa.i.i951, %.preheader177.i.i ] ; 2 uses
  %.135187.i.i = phi ptr [ %i.gkj, %.lr.ph189.i.i ], [ %.034.lcssa.i.i950, %.preheader177.i.i ] ; 2 uses
  %.139186.i.i = phi i32 [ %i.gkl, %.lr.ph189.i.i ], [ %.038.lcssa.i.i949, %.preheader177.i.i ]
  %.143185.i.i = phi ptr [ %i.gkk, %.lr.ph189.i.i ], [ %.042.lcssa.i.i948, %.preheader177.i.i ] ; 2 uses
  %i.gib = load <8 x bfloat>, ptr %.1188.i.i, align 1, !tbaa !555
  %i.gic = fpext fast <8 x bfloat> %i.gib to <8 x float>
  %i.gid = load <8 x bfloat>, ptr %.135187.i.i, align 1, !tbaa !555
  %i.gie = fpext fast <8 x bfloat> %i.gid to <8 x float>
  %i.gif = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gic, <8 x float> splat (float f0x00800000))
  %i.gig = bitcast <8 x float> %i.gif to <8 x i32> ; 2 uses
  %i.gih = lshr <8 x i32> %i.gig, splat (i32 23)
  %i.gii = and <8 x i32> %i.gig, splat (i32 -2139095041)
  %i.gij = or disjoint <8 x i32> %i.gii, splat (i32 1056964608)
  %i.gik = bitcast <8 x i32> %i.gij to <8 x float> ; 3 uses
  %i.gil = add nsw <8 x i32> %i.gih, splat (i32 -127)
  %i.gim = sitofp fast <8 x i32> %i.gil to <8 x float> ; 2 uses
  %i.gin = fadd fast <8 x float> %i.gim, splat (float 1.000000e+00)
  %i.gio = fcmp fast olt <8 x float> %i.gik, splat (float f0x3F3504F3) ; 2 uses
  %i.gip = select <8 x i1> %i.gio, <8 x float> %i.gik, <8 x float> zeroinitializer
  %i.giq = fadd fast <8 x float> %i.gik, splat (float -1.000000e+00)
  %i.gir = select fast <8 x i1> %i.gio, <8 x float> %i.gim, <8 x float> %i.gin ; 2 uses
  %i.gis = fadd fast <8 x float> %i.giq, %i.gip   ; 12 uses
  %i.git = fmul fast <8 x float> %i.gis, %i.gis   ; 2 uses
  %i.giu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gis, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.giv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.giu, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0x3DEF251A))
  %i.giw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.giv, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0xBDFE5D4F))
  %i.gix = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.giw, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0x3E11E9BF))
  %i.giy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gix, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0xBE2AAE50))
  %i.giz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.giy, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0x3E4CCEAC))
  %i.gja = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.giz, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0xBE7FFFFC))
  %i.gjb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gja, <8 x float> nofpclass(nan inf) %i.gis, <8 x float> splat (float f0x3EAAAAAA))
  %i.gjc = fmul fast <8 x float> %i.git, %i.gis
  %i.gjd = fmul fast <8 x float> %i.gjc, %i.gjb
  %i.gje = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gir, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gjd)
  %i.gjf = fneg fast <8 x float> %i.git
  %i.gjg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gjf, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.gje)
  %i.gjh = fadd fast <8 x float> %i.gjg, %i.gis
  %i.gji = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gir, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gjh)
  %i.gjj = fmul fast <8 x float> %i.gji, %i.gie
  %i.gjk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.gjj, <8 x float> splat (float f0x42B0C0A5))
  %i.gjl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.gjk, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gjm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjl, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.gjn = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.gjm, i32 1) ; 2 uses
  %i.gjo = fcmp fast ogt <8 x float> %i.gjn, %i.gjm
  %i.gjp = select <8 x i1> %i.gjo, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.gjq = fsub fast <8 x float> %i.gjn, %i.gjp   ; 2 uses
  %i.gjr = fneg fast <8 x float> %i.gjq           ; 2 uses
  %i.gjs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gjr, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.gjl)
  %i.gjt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.gjr, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.gjs) ; 8 uses
  %i.gju = fmul fast <8 x float> %i.gjt, %i.gjt
  %i.gjv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjt, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.gjw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjv, <8 x float> nofpclass(nan inf) %i.gjt, <8 x float> splat (float f0x3C088908))
  %i.gjx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjw, <8 x float> nofpclass(nan inf) %i.gjt, <8 x float> splat (float f0x3D2AA9C1))
  %i.gjy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjx, <8 x float> nofpclass(nan inf) %i.gjt, <8 x float> splat (float f0x3E2AAAAA))
  %i.gjz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjy, <8 x float> nofpclass(nan inf) %i.gjt, <8 x float> splat (float 5.000000e-01))
  %i.gka = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.gjz, <8 x float> nofpclass(nan inf) %i.gju, <8 x float> nofpclass(nan inf) %i.gjt)
  %i.gkb = fadd fast <8 x float> %i.gka, splat (float 1.000000e+00)
  %i.gkc = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.gjq)
  %i.gkd = shl <8 x i32> %i.gkc, splat (i32 23)
  %i.gke = add <8 x i32> %i.gkd, splat (i32 1065353216)
  %i.gkf = bitcast <8 x i32> %i.gke to <8 x float>
  %i.gkg = fmul fast <8 x float> %i.gkb, %i.gkf
  %i.gkh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gkg)
  store <8 x bfloat> %i.gkh, ptr %.143185.i.i, align 1, !tbaa !555
  %i.gki = getelementptr inbounds nuw i8, ptr %.1188.i.i, i64 16 ; 2 uses
  %i.gkj = getelementptr inbounds nuw i8, ptr %.135187.i.i, i64 16 ; 2 uses
  %i.gkk = getelementptr inbounds nuw i8, ptr %.143185.i.i, i64 16 ; 2 uses
  %i.gkl = add nuw nsw i32 %.139186.i.i, 8        ; 3 uses
  %i.gkm = or disjoint i32 %i.gkl, 7
  %i.gkn = icmp slt i32 %i.gkm, %i.gff
  br i1 %i.gkn, label %.lr.ph189.i.i, label %.preheader176.i.i, !llvm.loop !190

.preheader.i.i956:                                ; preds = %.lr.ph198.i.i, %.preheader176.i.i
  %.244.lcssa.i.i957 = phi ptr [ %.143.lcssa.i.i952, %.preheader176.i.i ], [ %i.gps, %.lr.ph198.i.i ] ; 7 uses
  %.240.lcssa.i.i958 = phi i32 [ %.139.lcssa.i.i953, %.preheader176.i.i ], [ %i.gpt, %.lr.ph198.i.i ] ; 6 uses
  %.236.lcssa.i.i959 = phi ptr [ %.135.lcssa.i.i954, %.preheader176.i.i ], [ %i.gpr, %.lr.ph198.i.i ] ; 7 uses
  %.2.lcssa.i.i960 = phi ptr [ %.1.lcssa.i.i955, %.preheader176.i.i ], [ %i.gpq, %.lr.ph198.i.i ] ; 7 uses
  %.236.lcssa.i.i9598022 = ptrtoaddr ptr %.236.lcssa.i.i959 to i64
  %.244.lcssa.i.i9578023 = ptrtoaddr ptr %.2.lcssa.i.i960 to i64
  %.2.lcssa.i.i9608024 = ptrtoaddr ptr %.244.lcssa.i.i957 to i64 ; 2 uses
  %i.gko = icmp slt i32 %.240.lcssa.i.i958, %i.gff
  br i1 %i.gko, label %iter.check8044, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check8044:                                   ; preds = %.preheader.i.i956
  %i.gkp = xor i32 %.240.lcssa.i.i958, -1
  %i.gkq = add i32 %i.gff, %i.gkp                 ; 3 uses
  %i.gkr = zext i32 %i.gkq to i64
  %i.gks = add nuw nsw i64 %i.gkr, 1              ; 5 uses
  %min.iters.check8025 = icmp ult i32 %i.gkq, 7
  br i1 %min.iters.check8025, label %.lr.ph207.i.i.preheader, label %vector.memcheck8026

vector.memcheck8026:                              ; preds = %iter.check8044
  %i.gkt = sub i64 %.244.lcssa.i.i9578023, %.2.lcssa.i.i9608024
  %diff.check8027 = icmp ugt i64 %i.gkt, -64
  %i.gku = sub i64 %.236.lcssa.i.i9598022, %.2.lcssa.i.i9608024
  %diff.check8028 = icmp ugt i64 %i.gku, -64
  %conflict.rdx8029 = or i1 %diff.check8027, %diff.check8028
  br i1 %conflict.rdx8029, label %.lr.ph207.i.i.preheader, label %vector.main.loop.iter.check8030

vector.main.loop.iter.check8030:                  ; preds = %vector.memcheck8026
  %min.iters.check8031 = icmp ult i32 %i.gkq, 31
  br i1 %min.iters.check8031, label %vec.epilog.ph8048, label %vector.ph8032

vector.ph8032:                                    ; preds = %vector.main.loop.iter.check8030
  %i.gkv = and i64 %i.gks, 24
  %n.vec8033 = and i64 %i.gks, 8589934560         ; 5 uses
  %i.gkw = shl nuw nsw i64 %n.vec8033, 1          ; 3 uses
  %i.gkx = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.gkw
  %i.gky = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.gkw
  %i.gkz = trunc i64 %n.vec8033 to i32
  %i.gla = add i32 %.240.lcssa.i.i958, %i.gkz
  %i.glb = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.gkw
  br label %vector.body8034

vector.body8034:                                  ; preds = %vector.ph8032, %vector.body8034
  %index8035 = phi i64 [ 0, %vector.ph8032 ], [ %index.next8041, %vector.body8034 ] ; 2 uses
  %i.glc = shl i64 %index8035, 1                  ; 3 uses
  %next.gep8036 = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.glc
  %next.gep8037 = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.glc
  %next.gep8038 = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.glc
  %wide.load8039 = load <32 x i16>, ptr %next.gep8036, align 2, !tbaa !558
  %i.gld = zext <32 x i16> %wide.load8039 to <32 x i32>
  %i.gle = shl nuw <32 x i32> %i.gld, splat (i32 16)
  %i.glf = bitcast <32 x i32> %i.gle to <32 x float>
  %wide.load8040 = load <32 x i16>, ptr %next.gep8037, align 2, !tbaa !558
  %i.glg = zext <32 x i16> %wide.load8040 to <32 x i32>
  %i.glh = shl nuw <32 x i32> %i.glg, splat (i32 16)
  %i.gli = bitcast <32 x i32> %i.glh to <32 x float>
  %i.glj = tail call fast <32 x float> @llvm.pow.v32f32(<32 x float> %i.glf, <32 x float> %i.gli)
  %i.glk = bitcast <32 x float> %i.glj to <32 x i32>
  %i.gll = lshr <32 x i32> %i.glk, splat (i32 16)
  %i.glm = trunc nuw <32 x i32> %i.gll to <32 x i16>
  store <32 x i16> %i.glm, ptr %next.gep8038, align 2, !tbaa !558
  %index.next8041 = add nuw i64 %index8035, 32    ; 2 uses
  %i.gln = icmp eq i64 %index.next8041, %n.vec8033
  br i1 %i.gln, label %middle.block8042, label %vector.body8034, !llvm.loop !191

middle.block8042:                                 ; preds = %vector.body8034
  %cmp.n8043 = icmp eq i64 %i.gks, %n.vec8033
  br i1 %cmp.n8043, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check8045

vec.epilog.iter.check8045:                        ; preds = %middle.block8042
  %min.epilog.iters.check8047 = icmp eq i64 %i.gkv, 0
  br i1 %min.epilog.iters.check8047, label %.lr.ph207.i.i.preheader, label %vec.epilog.ph8048, !prof !561

vec.epilog.ph8048:                                ; preds = %vector.main.loop.iter.check8030, %vec.epilog.iter.check8045
  %vec.epilog.resume.val8049 = phi i64 [ %n.vec8033, %vec.epilog.iter.check8045 ], [ 0, %vector.main.loop.iter.check8030 ]
  %n.vec8050 = and i64 %i.gks, 8589934584         ; 4 uses
  %i.glo = shl nuw nsw i64 %n.vec8050, 1          ; 3 uses
  %i.glp = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.glo
  %i.glq = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.glo
  %i.glr = trunc i64 %n.vec8050 to i32
  %i.gls = add i32 %.240.lcssa.i.i958, %i.glr
  %i.glt = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.glo
  br label %vec.epilog.vector.body8051

vec.epilog.vector.body8051:                       ; preds = %vec.epilog.vector.body8051, %vec.epilog.ph8048
  %index8052 = phi i64 [ %vec.epilog.resume.val8049, %vec.epilog.ph8048 ], [ %index.next8058, %vec.epilog.vector.body8051 ] ; 2 uses
  %i.glu = shl i64 %index8052, 1                  ; 3 uses
  %next.gep8053 = getelementptr i8, ptr %.2.lcssa.i.i960, i64 %i.glu
  %next.gep8054 = getelementptr i8, ptr %.236.lcssa.i.i959, i64 %i.glu
  %next.gep8055 = getelementptr i8, ptr %.244.lcssa.i.i957, i64 %i.glu
  %wide.load8056 = load <8 x i16>, ptr %next.gep8053, align 2, !tbaa !558
  %i.glv = zext <8 x i16> %wide.load8056 to <8 x i32>
  %i.glw = shl nuw <8 x i32> %i.glv, splat (i32 16)
  %i.glx = bitcast <8 x i32> %i.glw to <8 x float>
  %wide.load8057 = load <8 x i16>, ptr %next.gep8054, align 2, !tbaa !558
  %i.gly = zext <8 x i16> %wide.load8057 to <8 x i32>
  %i.glz = shl nuw <8 x i32> %i.gly, splat (i32 16)
  %i.gma = bitcast <8 x i32> %i.glz to <8 x float>
  %i.gmb = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.glx, <8 x float> %i.gma)
  %i.gmc = bitcast <8 x float> %i.gmb to <8 x i32>
  %i.gmd = lshr <8 x i32> %i.gmc, splat (i32 16)
  %i.gme = trunc nuw <8 x i32> %i.gmd to <8 x i16>
  store <8 x i16> %i.gme, ptr %next.gep8055, align 2, !tbaa !558
  %index.next8058 = add nuw i64 %index8052, 8     ; 2 uses
  %i.gmf = icmp eq i64 %index.next8058, %n.vec8050
  br i1 %i.gmf, label %vec.epilog.middle.block8059, label %vec.epilog.vector.body8051, !llvm.loop !192

vec.epilog.middle.block8059:                      ; preds = %vec.epilog.vector.body8051
  %cmp.n8060 = icmp eq i64 %i.gks, %n.vec8050
  br i1 %cmp.n8060, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i.preheader

.lr.ph207.i.i.preheader:                          ; preds = %iter.check8044, %vector.memcheck8026, %vec.epilog.iter.check8045, %vec.epilog.middle.block8059
  %.3206.i.i.ph = phi ptr [ %.2.lcssa.i.i960, %iter.check8044 ], [ %.2.lcssa.i.i960, %vector.memcheck8026 ], [ %i.gkx, %vec.epilog.iter.check8045 ], [ %i.glp, %vec.epilog.middle.block8059 ] ; 3 uses
  %.337205.i.i.ph = phi ptr [ %.236.lcssa.i.i959, %iter.check8044 ], [ %.236.lcssa.i.i959, %vector.memcheck8026 ], [ %i.gky, %vec.epilog.iter.check8045 ], [ %i.glq, %vec.epilog.middle.block8059 ] ; 3 uses
  %.341204.i.i.ph = phi i32 [ %.240.lcssa.i.i958, %iter.check8044 ], [ %.240.lcssa.i.i958, %vector.memcheck8026 ], [ %i.gla, %vec.epilog.iter.check8045 ], [ %i.gls, %vec.epilog.middle.block8059 ] ; 4 uses
  %.345203.i.i.ph = phi ptr [ %.244.lcssa.i.i957, %iter.check8044 ], [ %.244.lcssa.i.i957, %vector.memcheck8026 ], [ %i.glb, %vec.epilog.iter.check8045 ], [ %i.glt, %vec.epilog.middle.block8059 ] ; 3 uses
  %i.gmg = sub i32 %i.gff, %.341204.i.i.ph
  %.neg11068 = add i32 %.341204.i.i.ph, 1
  %xtraiter10610 = and i32 %i.gmg, 1
  %lcmp.mod10611.not = icmp eq i32 %xtraiter10610, 0
  br i1 %lcmp.mod10611.not, label %.lr.ph207.i.i.prol.loopexit, label %.lr.ph207.i.i.prol

.lr.ph207.i.i.prol:                               ; preds = %.lr.ph207.i.i.preheader
  %i.gmh = getelementptr inbounds nuw i8, ptr %.3206.i.i.ph, i64 2
  %i.gmi = load i16, ptr %.3206.i.i.ph, align 2, !tbaa !558
  %i.gmj = zext i16 %i.gmi to i32
  %i.gmk = shl nuw i32 %i.gmj, 16
  %i.gml = bitcast i32 %i.gmk to float
  %i.gmm = getelementptr inbounds nuw i8, ptr %.337205.i.i.ph, i64 2
  %i.gmn = load i16, ptr %.337205.i.i.ph, align 2, !tbaa !558
  %i.gmo = zext i16 %i.gmn to i32
  %i.gmp = shl nuw i32 %i.gmo, 16
  %i.gmq = bitcast i32 %i.gmp to float
  %i.gmr = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.gml, float %i.gmq)
  %i.gms = bitcast float %i.gmr to i32
  %i.gmt = lshr i32 %i.gms, 16
  %i.gmu = trunc nuw i32 %i.gmt to i16
  %i.gmv = getelementptr inbounds nuw i8, ptr %.345203.i.i.ph, i64 2
  store i16 %i.gmu, ptr %.345203.i.i.ph, align 2, !tbaa !558
  %i.gmw = add nuw nsw i32 %.341204.i.i.ph, 1
  br label %.lr.ph207.i.i.prol.loopexit

.lr.ph207.i.i.prol.loopexit:                      ; preds = %.lr.ph207.i.i.prol, %.lr.ph207.i.i.preheader
  %.3206.i.i.unr = phi ptr [ %.3206.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gmh, %.lr.ph207.i.i.prol ]
  %.337205.i.i.unr = phi ptr [ %.337205.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gmm, %.lr.ph207.i.i.prol ]
  %.341204.i.i.unr = phi i32 [ %.341204.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gmw, %.lr.ph207.i.i.prol ]
  %.345203.i.i.unr = phi ptr [ %.345203.i.i.ph, %.lr.ph207.i.i.preheader ], [ %i.gmv, %.lr.ph207.i.i.prol ]
  %i.gmx = icmp eq i32 %i.gff, %.neg11068
  br i1 %i.gmx, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i

.lr.ph198.i.i:                                    ; preds = %.preheader176.i.i, %.lr.ph198.i.i
  %.2197.i.i = phi ptr [ %i.gpq, %.lr.ph198.i.i ], [ %.1.lcssa.i.i955, %.preheader176.i.i ] ; 2 uses
  %.236196.i.i = phi ptr [ %i.gpr, %.lr.ph198.i.i ], [ %.135.lcssa.i.i954, %.preheader176.i.i ] ; 2 uses
  %.240195.i.i = phi i32 [ %i.gpt, %.lr.ph198.i.i ], [ %.139.lcssa.i.i953, %.preheader176.i.i ]
  %.244194.i.i = phi ptr [ %i.gps, %.lr.ph198.i.i ], [ %.143.lcssa.i.i952, %.preheader176.i.i ] ; 2 uses
  %i.gmy = load i64, ptr %.2197.i.i, align 1, !tbaa !555
  %i.gmz = insertelement <2 x i64> poison, i64 %i.gmy, i64 0
  %i.gna = bitcast <2 x i64> %i.gmz to <8 x i16>
  %i.gnb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gna, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gnc = bitcast <8 x i16> %i.gnb to <4 x float>
  %i.gnd = load i64, ptr %.236196.i.i, align 1, !tbaa !555
  %i.gne = insertelement <2 x i64> poison, i64 %i.gnd, i64 0
  %i.gnf = bitcast <2 x i64> %i.gne to <8 x i16>
  %i.gng = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gnf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gnh = bitcast <8 x i16> %i.gng to <4 x float>
  %i.gni = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gnc, <4 x float> splat (float f0x00800000))
  %i.gnj = bitcast <4 x float> %i.gni to <4 x i32> ; 2 uses
  %i.gnk = lshr <4 x i32> %i.gnj, splat (i32 23)
  %i.gnl = and <4 x i32> %i.gnj, splat (i32 -2139095041)
  %i.gnm = or disjoint <4 x i32> %i.gnl, splat (i32 1056964608)
  %i.gnn = bitcast <4 x i32> %i.gnm to <4 x float> ; 3 uses
  %i.gno = add nsw <4 x i32> %i.gnk, splat (i32 -127)
  %i.gnp = sitofp fast <4 x i32> %i.gno to <4 x float> ; 2 uses
  %i.gnq = fadd fast <4 x float> %i.gnp, splat (float 1.000000e+00)
  %i.gnr = fcmp fast olt <4 x float> %i.gnn, splat (float f0x3F3504F3) ; 2 uses
  %i.gns = select <4 x i1> %i.gnr, <4 x float> %i.gnn, <4 x float> zeroinitializer
  %i.gnt = fadd fast <4 x float> %i.gnn, splat (float -1.000000e+00)
  %i.gnu = select fast <4 x i1> %i.gnr, <4 x float> %i.gnp, <4 x float> %i.gnq ; 2 uses
  %i.gnv = fadd fast <4 x float> %i.gnt, %i.gns   ; 12 uses
  %i.gnw = fmul fast <4 x float> %i.gnv, %i.gnv   ; 2 uses
  %i.gnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gnv, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.gny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gnx, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0x3DEF251A))
  %i.gnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gny, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0xBDFE5D4F))
  %i.goa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gnz, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0x3E11E9BF))
  %i.gob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goa, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0xBE2AAE50))
  %i.goc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gob, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0x3E4CCEAC))
  %i.god = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goc, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0xBE7FFFFC))
  %i.goe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.god, <4 x float> nofpclass(nan inf) %i.gnv, <4 x float> splat (float f0x3EAAAAAA))
  %i.gof = fmul fast <4 x float> %i.gnw, %i.gnv
  %i.gog = fmul fast <4 x float> %i.gof, %i.goe
  %i.goh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gnu, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gog)
  %i.goi = fneg fast <4 x float> %i.gnw
  %i.goj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.goi, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.goh)
  %i.gok = fadd fast <4 x float> %i.goj, %i.gnv
  %i.gol = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gnu, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.gok)
  %i.gom = fmul fast <4 x float> %i.gol, %i.gnh
  %i.gon = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gom, <4 x float> splat (float f0x42B0C0A5))
  %i.goo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gon, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gop = fmul fast <4 x float> %i.goo, splat (float f0x3FB8AA3B)
  %i.goq = fadd fast <4 x float> %i.gop, splat (float 5.000000e-01) ; 2 uses
  %i.gor = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.goq)
  %i.gos = sitofp fast <4 x i32> %i.gor to <4 x float> ; 2 uses
  %i.got = fcmp fast olt <4 x float> %i.goq, %i.gos
  %i.gou = select <4 x i1> %i.got, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gov = fsub fast <4 x float> %i.gos, %i.gou   ; 2 uses
  %i.gow = fneg fast <4 x float> %i.gov           ; 2 uses
  %i.gox = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gow, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.goo)
  %i.goy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.gow, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.gox) ; 8 uses
  %i.goz = fmul fast <4 x float> %i.goy, %i.goy
  %i.gpa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.goy, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.gpb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpa, <4 x float> nofpclass(nan inf) %i.goy, <4 x float> splat (float f0x3C088908))
  %i.gpc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpb, <4 x float> nofpclass(nan inf) %i.goy, <4 x float> splat (float f0x3D2AA9C1))
  %i.gpd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpc, <4 x float> nofpclass(nan inf) %i.goy, <4 x float> splat (float f0x3E2AAAAA))
  %i.gpe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpd, <4 x float> nofpclass(nan inf) %i.goy, <4 x float> splat (float 5.000000e-01))
  %i.gpf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.gpe, <4 x float> nofpclass(nan inf) %i.goz, <4 x float> nofpclass(nan inf) %i.goy)
  %i.gpg = fadd fast <4 x float> %i.gpf, splat (float 1.000000e+00)
  %i.gph = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gov)
  %i.gpi = shl <4 x i32> %i.gph, splat (i32 23)
  %i.gpj = add <4 x i32> %i.gpi, splat (i32 1065353216)
  %i.gpk = bitcast <4 x i32> %i.gpj to <4 x float>
  %i.gpl = fmul fast <4 x float> %i.gpg, %i.gpk
  %i.gpm = shufflevector <4 x float> %i.gpl, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.gpn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.gpm)
end_hunk_6
begin_hunk_7_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.irs = fadd fast <4 x float> %i.irr, splat (float 1.000000e+00)
  %i.irt = fcmp fast olt <4 x float> %i.irp, splat (float f0x3F3504F3) ; 2 uses
  %i.iru = select <4 x i1> %i.irt, <4 x float> %i.irp, <4 x float> zeroinitializer
  %i.irv = fadd fast <4 x float> %i.irp, splat (float -1.000000e+00)
  %i.irw = select fast <4 x i1> %i.irt, <4 x float> %i.irr, <4 x float> %i.irs ; 2 uses
  %i.irx = fadd fast <4 x float> %i.irv, %i.iru   ; 12 uses
  %i.iry = fmul fast <4 x float> %i.irx, %i.irx   ; 2 uses
  %i.irz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irx, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.isa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irz, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0x3DEF251A))
  %i.isb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isa, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0xBDFE5D4F))
  %i.isc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isb, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0x3E11E9BF))
  %i.isd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isc, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0xBE2AAE50))
  %i.ise = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isd, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0x3E4CCEAC))
  %i.isf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ise, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0xBE7FFFFC))
  %i.isg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.isf, <4 x float> nofpclass(nan inf) %i.irx, <4 x float> splat (float f0x3EAAAAAA))
  %i.ish = fmul fast <4 x float> %i.iry, %i.irx
  %i.isi = fmul fast <4 x float> %i.ish, %i.isg
  %i.isj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irw, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.isi)
  %i.isk = fneg fast <4 x float> %i.iry
  %i.isl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.isk, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.isj)
  %i.ism = fadd fast <4 x float> %i.isl, %i.irx
  %i.isn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.irw, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.ism)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %.lr.ph.i86.i904
  %.0165.i.i = phi i32 [ 0, %.lr.ph.i86.i904 ], [ %i.iua, %bb.gk ]
  %.2164.i.i = phi ptr [ %1, %.lr.ph.i86.i904 ], [ %i.ity, %bb.gk ] ; 2 uses
  %.232163.i.i = phi ptr [ %2, %.lr.ph.i86.i904 ], [ %i.itz, %bb.gk ] ; 2 uses
  %i.iso = load i16, ptr %.2164.i.i, align 2, !tbaa !558
  %i.isp = zext i16 %i.iso to i32
  %i.isq = shl nuw i32 %i.isp, 16
  %i.isr = insertelement <4 x i32> poison, i32 %i.isq, i64 0
  %i.iss = bitcast <4 x i32> %i.isr to <4 x float>
  %i.ist = shufflevector <4 x float> %i.iss, <4 x float> poison, <4 x i32> zeroinitializer
  %i.isu = fmul fast <4 x float> %i.ist, %i.isn
  %i.isv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.isu, <4 x float> splat (float f0x42B0C0A5))
  %i.isw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.isv, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.isx = fmul fast <4 x float> %i.isw, splat (float f0x3FB8AA3B)
  %i.isy = fadd fast <4 x float> %i.isx, splat (float 5.000000e-01) ; 2 uses
  %i.isz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.isy)
  %i.ita = sitofp fast <4 x i32> %i.isz to <4 x float> ; 2 uses
  %i.itb = fcmp fast olt <4 x float> %i.isy, %i.ita
  %i.itc = select <4 x i1> %i.itb, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.itd = fsub fast <4 x float> %i.ita, %i.itc   ; 2 uses
  %i.ite = fneg fast <4 x float> %i.itd           ; 2 uses
  %i.itf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ite, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.isw)
  %i.itg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ite, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.itf) ; 8 uses
  %i.ith = fmul fast <4 x float> %i.itg, %i.itg
  %i.iti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.itg, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.itj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.iti, <4 x float> nofpclass(nan inf) %i.itg, <4 x float> splat (float f0x3C088908))
  %i.itk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.itj, <4 x float> nofpclass(nan inf) %i.itg, <4 x float> splat (float f0x3D2AA9C1))
  %i.itl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.itk, <4 x float> nofpclass(nan inf) %i.itg, <4 x float> splat (float f0x3E2AAAAA))
  %i.itm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.itl, <4 x float> nofpclass(nan inf) %i.itg, <4 x float> splat (float 5.000000e-01))
  %i.itn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.itm, <4 x float> nofpclass(nan inf) %i.ith, <4 x float> nofpclass(nan inf) %i.itg)
  %i.ito = fadd fast <4 x float> %i.itn, splat (float 1.000000e+00)
  %i.itp = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.itd)
  %i.itq = shl <4 x i32> %i.itp, splat (i32 23)
  %i.itr = add <4 x i32> %i.itq, splat (i32 1065353216)
  %i.its = bitcast <4 x i32> %i.itr to <4 x float>
  %i.itt = fmul fast <4 x float> %i.ito, %i.its
  %i.itu = shufflevector <4 x float> %i.itt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.itv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.itu)
  %i.itw = bitcast <8 x bfloat> %i.itv to <2 x i64>
  %i.itx = extractelement <2 x i64> %i.itw, i64 0
  store i64 %i.itx, ptr %.232163.i.i, align 1, !tbaa !555
  %i.ity = getelementptr inbounds nuw i8, ptr %.2164.i.i, i64 2
  %i.itz = getelementptr inbounds nuw i8, ptr %.232163.i.i, i64 8
  %i.iua = add nuw nsw i32 %.0165.i.i, 1          ; 2 uses
  %exitcond.not.i87.i905 = icmp eq i32 %i.iua, %.sroa.speculated98.i902
  br i1 %exitcond.not.i87.i905, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.gk, !llvm.loop !218

bb.gl:                                            ; preds = %bb.a
  %.sroa.speculated98.i963 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i964 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.iub = mul i32 %.sroa.speculated.i964, %.sroa.speculated98.i963 ; 48 uses
  %i.iuc = icmp eq i32 %5, %6
  br i1 %i.iuc, label %bb.gm, label %bb.hc

bb.gm:                                            ; preds = %bb.gl
  %i.iud = icmp eq i32 %3, %4
  br i1 %i.iud, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.iue = icmp sgt i32 %i.iub, 15
  br i1 %i.iue, label %.lr.ph.i.i1127.preheader, label %.preheader63.i.i1096

.lr.ph.i.i1127.preheader:                         ; preds = %bb.gn
  %i.iuf = add nsw i32 %i.iub, -16                ; 2 uses
  %i.iug = lshr i32 %i.iuf, 4                     ; 2 uses
  %i.iuh = add nuw nsw i32 %i.iug, 1              ; 2 uses
  %i.iui = icmp eq i32 %i.iug, 0
  br i1 %i.iui, label %.lr.ph.i.i1127.epil.preheader, label %.lr.ph.i.i1127.preheader.new

.lr.ph.i.i1127.preheader.new:                     ; preds = %.lr.ph.i.i1127.preheader
  %unroll_iter10600 = and i32 %i.iuh, 536870910
  br label %.lr.ph.i.i1127

.preheader63.loopexit.i.i1132.unr-lcssa:          ; preds = %.lr.ph.i.i1127
  %i.iuj = and i32 %i.iuf, 16
  %lcmp.mod10595.not.not = icmp eq i32 %i.iuj, 0
  br i1 %lcmp.mod10595.not.not, label %.lr.ph.i.i1127.epil.preheader, label %.preheader63.loopexit.i.i1132

.lr.ph.i.i1127.epil.preheader:                    ; preds = %.preheader63.loopexit.i.i1132.unr-lcssa, %.lr.ph.i.i1127.preheader
  %.067.i.i1128.epil.init = phi ptr [ %0, %.lr.ph.i.i1127.preheader ], [ %i.ivl, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %.03466.i.i1129.epil.init = phi ptr [ %1, %.lr.ph.i.i1127.preheader ], [ %i.ivm, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %.04264.i.i1131.epil.init = phi ptr [ %2, %.lr.ph.i.i1127.preheader ], [ %i.ivn, %.preheader63.loopexit.i.i1132.unr-lcssa ] ; 2 uses
  %lcmp.mod10599 = trunc i32 %i.iuh to i1
  tail call void @llvm.assume(i1 %lcmp.mod10599)
  %i.iuk = load <16 x bfloat>, ptr %.067.i.i1128.epil.init, align 1, !tbaa !555
  %i.iul = fpext fast <16 x bfloat> %i.iuk to <16 x float>
  %i.ium = load <16 x bfloat>, ptr %.03466.i.i1129.epil.init, align 1, !tbaa !555
  %i.iun = fpext fast <16 x bfloat> %i.ium to <16 x float>
  %i.iuo = fsub fast <16 x float> %i.iun, %i.iul
  %i.iup = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.iuo)
  store <16 x bfloat> %i.iup, ptr %.04264.i.i1131.epil.init, align 1, !tbaa !555
  %i.iuq = getelementptr inbounds nuw i8, ptr %.067.i.i1128.epil.init, i64 32
  %i.iur = getelementptr inbounds nuw i8, ptr %.03466.i.i1129.epil.init, i64 32
  %i.ius = getelementptr inbounds nuw i8, ptr %.04264.i.i1131.epil.init, i64 32
  br label %.preheader63.loopexit.i.i1132

.preheader63.loopexit.i.i1132:                    ; preds = %.preheader63.loopexit.i.i1132.unr-lcssa, %.lr.ph.i.i1127.epil.preheader
  %.lcssa9564 = phi ptr [ %i.ivl, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.iuq, %.lr.ph.i.i1127.epil.preheader ]
  %.lcssa9563 = phi ptr [ %i.ivm, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.iur, %.lr.ph.i.i1127.epil.preheader ]
  %.lcssa9562 = phi ptr [ %i.ivn, %.preheader63.loopexit.i.i1132.unr-lcssa ], [ %i.ius, %.lr.ph.i.i1127.epil.preheader ]
  %i.iut = and i32 %i.iub, 2147483632
  br label %.preheader63.i.i1096

.preheader63.i.i1096:                             ; preds = %.preheader63.loopexit.i.i1132, %bb.gn
  %.042.lcssa.i.i1097 = phi ptr [ %2, %bb.gn ], [ %.lcssa9562, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %.038.lcssa.i.i1098 = phi i32 [ 0, %bb.gn ], [ %i.iut, %.preheader63.loopexit.i.i1132 ] ; 3 uses
  %.034.lcssa.i.i1099 = phi ptr [ %1, %bb.gn ], [ %.lcssa9563, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %.0.lcssa.i.i1100 = phi ptr [ %0, %bb.gn ], [ %.lcssa9564, %.preheader63.loopexit.i.i1132 ] ; 2 uses
  %i.iuu = or disjoint i32 %.038.lcssa.i.i1098, 7
  %i.iuv = icmp slt i32 %i.iuu, %i.iub
  br i1 %i.iuv, label %.lr.ph75.i.i1122, label %.preheader62.i.i1101

.lr.ph.i.i1127:                                   ; preds = %.lr.ph.i.i1127, %.lr.ph.i.i1127.preheader.new
  %.067.i.i1128 = phi ptr [ %0, %.lr.ph.i.i1127.preheader.new ], [ %i.ivl, %.lr.ph.i.i1127 ] ; 3 uses
  %.03466.i.i1129 = phi ptr [ %1, %.lr.ph.i.i1127.preheader.new ], [ %i.ivm, %.lr.ph.i.i1127 ] ; 3 uses
  %.04264.i.i1131 = phi ptr [ %2, %.lr.ph.i.i1127.preheader.new ], [ %i.ivn, %.lr.ph.i.i1127 ] ; 3 uses
  %niter10601 = phi i32 [ 0, %.lr.ph.i.i1127.preheader.new ], [ %niter10601.next.1, %.lr.ph.i.i1127 ]
  %i.iuw = load <16 x bfloat>, ptr %.067.i.i1128, align 1, !tbaa !555
  %i.iux = fpext fast <16 x bfloat> %i.iuw to <16 x float>
  %i.iuy = load <16 x bfloat>, ptr %.03466.i.i1129, align 1, !tbaa !555
  %i.iuz = fpext fast <16 x bfloat> %i.iuy to <16 x float>
  %i.iva = fsub fast <16 x float> %i.iuz, %i.iux
  %i.ivb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.iva)
  store <16 x bfloat> %i.ivb, ptr %.04264.i.i1131, align 1, !tbaa !555
  %i.ivc = getelementptr inbounds nuw i8, ptr %.067.i.i1128, i64 32
  %i.ivd = getelementptr inbounds nuw i8, ptr %.03466.i.i1129, i64 32
  %i.ive = getelementptr inbounds nuw i8, ptr %.04264.i.i1131, i64 32
  %i.ivf = load <16 x bfloat>, ptr %i.ivc, align 1, !tbaa !555
  %i.ivg = fpext fast <16 x bfloat> %i.ivf to <16 x float>
  %i.ivh = load <16 x bfloat>, ptr %i.ivd, align 1, !tbaa !555
  %i.ivi = fpext fast <16 x bfloat> %i.ivh to <16 x float>
  %i.ivj = fsub fast <16 x float> %i.ivi, %i.ivg
  %i.ivk = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ivj)
  store <16 x bfloat> %i.ivk, ptr %i.ive, align 1, !tbaa !555
  %i.ivl = getelementptr inbounds nuw i8, ptr %.067.i.i1128, i64 64 ; 3 uses
  %i.ivm = getelementptr inbounds nuw i8, ptr %.03466.i.i1129, i64 64 ; 3 uses
  %i.ivn = getelementptr inbounds nuw i8, ptr %.04264.i.i1131, i64 64 ; 3 uses
  %niter10601.next.1 = add i32 %niter10601, 2     ; 2 uses
  %niter10601.ncmp.1.not = icmp eq i32 %niter10601.next.1, %unroll_iter10600
  br i1 %niter10601.ncmp.1.not, label %.preheader63.loopexit.i.i1132.unr-lcssa, label %.lr.ph.i.i1127, !llvm.loop !219

.preheader62.i.i1101:                             ; preds = %.lr.ph75.i.i1122, %.preheader63.i.i1096
  %.143.lcssa.i.i1102 = phi ptr [ %.042.lcssa.i.i1097, %.preheader63.i.i1096 ], [ %i.ivy, %.lr.ph75.i.i1122 ] ; 2 uses
  %.139.lcssa.i.i1103 = phi i32 [ %.038.lcssa.i.i1098, %.preheader63.i.i1096 ], [ %i.ivz, %.lr.ph75.i.i1122 ] ; 3 uses
  %.135.lcssa.i.i1104 = phi ptr [ %.034.lcssa.i.i1099, %.preheader63.i.i1096 ], [ %i.ivx, %.lr.ph75.i.i1122 ] ; 2 uses
  %.1.lcssa.i.i1105 = phi ptr [ %.0.lcssa.i.i1100, %.preheader63.i.i1096 ], [ %i.ivw, %.lr.ph75.i.i1122 ] ; 2 uses
  %i.ivo = or disjoint i32 %.139.lcssa.i.i1103, 3
  %i.ivp = icmp slt i32 %i.ivo, %i.iub
  br i1 %i.ivp, label %.lr.ph84.i.i1117, label %.preheader.i.i1106

.lr.ph75.i.i1122:                                 ; preds = %.preheader63.i.i1096, %.lr.ph75.i.i1122
  %.174.i.i1123 = phi ptr [ %i.ivw, %.lr.ph75.i.i1122 ], [ %.0.lcssa.i.i1100, %.preheader63.i.i1096 ] ; 2 uses
  %.13573.i.i1124 = phi ptr [ %i.ivx, %.lr.ph75.i.i1122 ], [ %.034.lcssa.i.i1099, %.preheader63.i.i1096 ] ; 2 uses
  %.13972.i.i1125 = phi i32 [ %i.ivz, %.lr.ph75.i.i1122 ], [ %.038.lcssa.i.i1098, %.preheader63.i.i1096 ]
  %.14371.i.i1126 = phi ptr [ %i.ivy, %.lr.ph75.i.i1122 ], [ %.042.lcssa.i.i1097, %.preheader63.i.i1096 ] ; 2 uses
  %i.ivq = load <8 x bfloat>, ptr %.174.i.i1123, align 1, !tbaa !555
  %i.ivr = fpext fast <8 x bfloat> %i.ivq to <8 x float>
  %i.ivs = load <8 x bfloat>, ptr %.13573.i.i1124, align 1, !tbaa !555
  %i.ivt = fpext fast <8 x bfloat> %i.ivs to <8 x float>
  %i.ivu = fsub fast <8 x float> %i.ivt, %i.ivr
  %i.ivv = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.ivu)
  store <8 x bfloat> %i.ivv, ptr %.14371.i.i1126, align 1, !tbaa !555
  %i.ivw = getelementptr inbounds nuw i8, ptr %.174.i.i1123, i64 16 ; 2 uses
  %i.ivx = getelementptr inbounds nuw i8, ptr %.13573.i.i1124, i64 16 ; 2 uses
  %i.ivy = getelementptr inbounds nuw i8, ptr %.14371.i.i1126, i64 16 ; 2 uses
  %i.ivz = add nuw nsw i32 %.13972.i.i1125, 8     ; 3 uses
  %i.iwa = or disjoint i32 %i.ivz, 7
  %i.iwb = icmp slt i32 %i.iwa, %i.iub
  br i1 %i.iwb, label %.lr.ph75.i.i1122, label %.preheader62.i.i1101, !llvm.loop !220

.preheader.i.i1106:                               ; preds = %.lr.ph84.i.i1117, %.preheader62.i.i1101
  %.244.lcssa.i.i1107 = phi ptr [ %.143.lcssa.i.i1102, %.preheader62.i.i1101 ], [ %i.izd, %.lr.ph84.i.i1117 ] ; 7 uses
  %.240.lcssa.i.i1108 = phi i32 [ %.139.lcssa.i.i1103, %.preheader62.i.i1101 ], [ %i.ize, %.lr.ph84.i.i1117 ] ; 6 uses
  %.236.lcssa.i.i1109 = phi ptr [ %.135.lcssa.i.i1104, %.preheader62.i.i1101 ], [ %i.izc, %.lr.ph84.i.i1117 ] ; 7 uses
  %.2.lcssa.i.i1110 = phi ptr [ %.1.lcssa.i.i1105, %.preheader62.i.i1101 ], [ %i.izb, %.lr.ph84.i.i1117 ] ; 7 uses
  %.236.lcssa.i.i11097855 = ptrtoaddr ptr %.236.lcssa.i.i1109 to i64
  %.244.lcssa.i.i11077856 = ptrtoaddr ptr %.2.lcssa.i.i1110 to i64
  %.2.lcssa.i.i11107857 = ptrtoaddr ptr %.244.lcssa.i.i1107 to i64 ; 2 uses
  %i.iwc = icmp slt i32 %.240.lcssa.i.i1108, %i.iub
  br i1 %i.iwc, label %iter.check7877, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7877:                                   ; preds = %.preheader.i.i1106
  %i.iwd = xor i32 %.240.lcssa.i.i1108, -1
  %i.iwe = add i32 %i.iub, %i.iwd                 ; 3 uses
  %i.iwf = zext i32 %i.iwe to i64
  %i.iwg = add nuw nsw i64 %i.iwf, 1              ; 5 uses
  %min.iters.check7858 = icmp ult i32 %i.iwe, 7
  br i1 %min.iters.check7858, label %.lr.ph93.i.i1111.preheader, label %vector.memcheck7859

vector.memcheck7859:                              ; preds = %iter.check7877
  %i.iwh = sub i64 %.244.lcssa.i.i11077856, %.2.lcssa.i.i11107857
  %diff.check7860 = icmp ugt i64 %i.iwh, -64
  %i.iwi = sub i64 %.236.lcssa.i.i11097855, %.2.lcssa.i.i11107857
  %diff.check7861 = icmp ugt i64 %i.iwi, -64
  %conflict.rdx7862 = or i1 %diff.check7860, %diff.check7861
  br i1 %conflict.rdx7862, label %.lr.ph93.i.i1111.preheader, label %vector.main.loop.iter.check7863

vector.main.loop.iter.check7863:                  ; preds = %vector.memcheck7859
  %min.iters.check7864 = icmp ult i32 %i.iwe, 31
  br i1 %min.iters.check7864, label %vec.epilog.ph7881, label %vector.ph7865

vector.ph7865:                                    ; preds = %vector.main.loop.iter.check7863
  %i.iwj = and i64 %i.iwg, 24
  %n.vec7866 = and i64 %i.iwg, 8589934560         ; 5 uses
  %i.iwk = shl nuw nsw i64 %n.vec7866, 1          ; 3 uses
  %i.iwl = getelementptr i8, ptr %.2.lcssa.i.i1110, i64 %i.iwk
  %i.iwm = getelementptr i8, ptr %.236.lcssa.i.i1109, i64 %i.iwk
  %i.iwn = trunc i64 %n.vec7866 to i32
  %i.iwo = add i32 %.240.lcssa.i.i1108, %i.iwn
  %i.iwp = getelementptr i8, ptr %.244.lcssa.i.i1107, i64 %i.iwk
  br label %vector.body7867

vector.body7867:                                  ; preds = %vector.ph7865, %vector.body7867
  %index7868 = phi i64 [ 0, %vector.ph7865 ], [ %index.next7874, %vector.body7867 ] ; 2 uses
  %i.iwq = shl i64 %index7868, 1                  ; 3 uses
  %next.gep7869 = getelementptr i8, ptr %.2.lcssa.i.i1110, i64 %i.iwq
  %next.gep7870 = getelementptr i8, ptr %.236.lcssa.i.i1109, i64 %i.iwq
  %next.gep7871 = getelementptr i8, ptr %.244.lcssa.i.i1107, i64 %i.iwq
  %wide.load7872 = load <32 x i16>, ptr %next.gep7869, align 2, !tbaa !558
  %i.iwr = zext <32 x i16> %wide.load7872 to <32 x i32>
  %i.iws = shl nuw <32 x i32> %i.iwr, splat (i32 16)
  %i.iwt = bitcast <32 x i32> %i.iws to <32 x float>
  %wide.load7873 = load <32 x i16>, ptr %next.gep7870, align 2, !tbaa !558
  %i.iwu = zext <32 x i16> %wide.load7873 to <32 x i32>
  %i.iwv = shl nuw <32 x i32> %i.iwu, splat (i32 16)
  %i.iww = bitcast <32 x i32> %i.iwv to <32 x float>
  %i.iwx = fsub fast <32 x float> %i.iww, %i.iwt
  %i.iwy = bitcast <32 x float> %i.iwx to <32 x i32>
  %i.iwz = lshr <32 x i32> %i.iwy, splat (i32 16)
  %i.ixa = trunc nuw <32 x i32> %i.iwz to <32 x i16>
  store <32 x i16> %i.ixa, ptr %next.gep7871, align 2, !tbaa !558
  %index.next7874 = add nuw i64 %index7868, 32    ; 2 uses
  %i.ixb = icmp eq i64 %index.next7874, %n.vec7866
  br i1 %i.ixb, label %middle.block7875, label %vector.body7867, !llvm.loop !221

middle.block7875:                                 ; preds = %vector.body7867
  %cmp.n7876 = icmp eq i64 %i.iwg, %n.vec7866
  br i1 %cmp.n7876, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7878

vec.epilog.iter.check7878:                        ; preds = %middle.block7875
  %min.epilog.iters.check7880 = icmp eq i64 %i.iwj, 0
  br i1 %min.epilog.iters.check7880, label %.lr.ph93.i.i1111.preheader, label %vec.epilog.ph7881, !prof !561

vec.epilog.ph7881:                                ; preds = %vector.main.loop.iter.check7863, %vec.epilog.iter.check7878
  %vec.epilog.resume.val7882 = phi i64 [ %n.vec7866, %vec.epilog.iter.check7878 ], [ 0, %vector.main.loop.iter.check7863 ]
  %n.vec7883 = and i64 %i.iwg, 8589934584         ; 4 uses
  %i.ixc = shl nuw nsw i64 %n.vec7883, 1          ; 3 uses
  %i.ixd = getelementptr i8, ptr %.2.lcssa.i.i1110, i64 %i.ixc
  %i.ixe = getelementptr i8, ptr %.236.lcssa.i.i1109, i64 %i.ixc
  %i.ixf = trunc i64 %n.vec7883 to i32
  %i.ixg = add i32 %.240.lcssa.i.i1108, %i.ixf
  %i.ixh = getelementptr i8, ptr %.244.lcssa.i.i1107, i64 %i.ixc
  br label %vec.epilog.vector.body7884

vec.epilog.vector.body7884:                       ; preds = %vec.epilog.vector.body7884, %vec.epilog.ph7881
  %index7885 = phi i64 [ %vec.epilog.resume.val7882, %vec.epilog.ph7881 ], [ %index.next7891, %vec.epilog.vector.body7884 ] ; 2 uses
  %i.ixi = shl i64 %index7885, 1                  ; 3 uses
  %next.gep7886 = getelementptr i8, ptr %.2.lcssa.i.i1110, i64 %i.ixi
  %next.gep7887 = getelementptr i8, ptr %.236.lcssa.i.i1109, i64 %i.ixi
  %next.gep7888 = getelementptr i8, ptr %.244.lcssa.i.i1107, i64 %i.ixi
  %wide.load7889 = load <8 x i16>, ptr %next.gep7886, align 2, !tbaa !558
  %i.ixj = zext <8 x i16> %wide.load7889 to <8 x i32>
  %i.ixk = shl nuw <8 x i32> %i.ixj, splat (i32 16)
  %i.ixl = bitcast <8 x i32> %i.ixk to <8 x float>
  %wide.load7890 = load <8 x i16>, ptr %next.gep7887, align 2, !tbaa !558
  %i.ixm = zext <8 x i16> %wide.load7890 to <8 x i32>
  %i.ixn = shl nuw <8 x i32> %i.ixm, splat (i32 16)
  %i.ixo = bitcast <8 x i32> %i.ixn to <8 x float>
  %i.ixp = fsub fast <8 x float> %i.ixo, %i.ixl
  %i.ixq = bitcast <8 x float> %i.ixp to <8 x i32>
  %i.ixr = lshr <8 x i32> %i.ixq, splat (i32 16)
  %i.ixs = trunc nuw <8 x i32> %i.ixr to <8 x i16>
  store <8 x i16> %i.ixs, ptr %next.gep7888, align 2, !tbaa !558
  %index.next7891 = add nuw i64 %index7885, 8     ; 2 uses
  %i.ixt = icmp eq i64 %index.next7891, %n.vec7883
  br i1 %i.ixt, label %vec.epilog.middle.block7892, label %vec.epilog.vector.body7884, !llvm.loop !222

vec.epilog.middle.block7892:                      ; preds = %vec.epilog.vector.body7884
  %cmp.n7893 = icmp eq i64 %i.iwg, %n.vec7883
  br i1 %cmp.n7893, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1111.preheader

.lr.ph93.i.i1111.preheader:                       ; preds = %iter.check7877, %vector.memcheck7859, %vec.epilog.iter.check7878, %vec.epilog.middle.block7892
  %.392.i.i1112.ph = phi ptr [ %.2.lcssa.i.i1110, %iter.check7877 ], [ %.2.lcssa.i.i1110, %vector.memcheck7859 ], [ %i.iwl, %vec.epilog.iter.check7878 ], [ %i.ixd, %vec.epilog.middle.block7892 ] ; 3 uses
  %.33791.i.i1113.ph = phi ptr [ %.236.lcssa.i.i1109, %iter.check7877 ], [ %.236.lcssa.i.i1109, %vector.memcheck7859 ], [ %i.iwm, %vec.epilog.iter.check7878 ], [ %i.ixe, %vec.epilog.middle.block7892 ] ; 3 uses
  %.34190.i.i1114.ph = phi i32 [ %.240.lcssa.i.i1108, %iter.check7877 ], [ %.240.lcssa.i.i1108, %vector.memcheck7859 ], [ %i.iwo, %vec.epilog.iter.check7878 ], [ %i.ixg, %vec.epilog.middle.block7892 ] ; 4 uses
  %.34589.i.i1115.ph = phi ptr [ %.244.lcssa.i.i1107, %iter.check7877 ], [ %.244.lcssa.i.i1107, %vector.memcheck7859 ], [ %i.iwp, %vec.epilog.iter.check7878 ], [ %i.ixh, %vec.epilog.middle.block7892 ] ; 3 uses
  %i.ixu = sub i32 %i.iub, %.34190.i.i1114.ph
  %.neg11064 = add i32 %.34190.i.i1114.ph, 1
  %xtraiter10602 = and i32 %i.ixu, 1
  %lcmp.mod10603.not = icmp eq i32 %xtraiter10602, 0
  br i1 %lcmp.mod10603.not, label %.lr.ph93.i.i1111.prol.loopexit, label %.lr.ph93.i.i1111.prol

.lr.ph93.i.i1111.prol:                            ; preds = %.lr.ph93.i.i1111.preheader
  %i.ixv = getelementptr inbounds nuw i8, ptr %.392.i.i1112.ph, i64 2
  %i.ixw = load i16, ptr %.392.i.i1112.ph, align 2, !tbaa !558
  %i.ixx = zext i16 %i.ixw to i32
  %i.ixy = shl nuw i32 %i.ixx, 16
  %i.ixz = bitcast i32 %i.ixy to float
  %i.iya = getelementptr inbounds nuw i8, ptr %.33791.i.i1113.ph, i64 2
  %i.iyb = load i16, ptr %.33791.i.i1113.ph, align 2, !tbaa !558
  %i.iyc = zext i16 %i.iyb to i32
  %i.iyd = shl nuw i32 %i.iyc, 16
  %i.iye = bitcast i32 %i.iyd to float
  %i.iyf = fsub fast float %i.iye, %i.ixz
  %i.iyg = bitcast float %i.iyf to i32
  %i.iyh = lshr i32 %i.iyg, 16
  %i.iyi = trunc nuw i32 %i.iyh to i16
  %i.iyj = getelementptr inbounds nuw i8, ptr %.34589.i.i1115.ph, i64 2
  store i16 %i.iyi, ptr %.34589.i.i1115.ph, align 2, !tbaa !558
  %i.iyk = add nuw nsw i32 %.34190.i.i1114.ph, 1
  br label %.lr.ph93.i.i1111.prol.loopexit

.lr.ph93.i.i1111.prol.loopexit:                   ; preds = %.lr.ph93.i.i1111.prol, %.lr.ph93.i.i1111.preheader
  %.392.i.i1112.unr = phi ptr [ %.392.i.i1112.ph, %.lr.ph93.i.i1111.preheader ], [ %i.ixv, %.lr.ph93.i.i1111.prol ]
  %.33791.i.i1113.unr = phi ptr [ %.33791.i.i1113.ph, %.lr.ph93.i.i1111.preheader ], [ %i.iya, %.lr.ph93.i.i1111.prol ]
  %.34190.i.i1114.unr = phi i32 [ %.34190.i.i1114.ph, %.lr.ph93.i.i1111.preheader ], [ %i.iyk, %.lr.ph93.i.i1111.prol ]
  %.34589.i.i1115.unr = phi ptr [ %.34589.i.i1115.ph, %.lr.ph93.i.i1111.preheader ], [ %i.iyj, %.lr.ph93.i.i1111.prol ]
  %i.iyl = icmp eq i32 %i.iub, %.neg11064
  br i1 %i.iyl, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1111

.lr.ph84.i.i1117:                                 ; preds = %.preheader62.i.i1101, %.lr.ph84.i.i1117
  %.283.i.i1118 = phi ptr [ %i.izb, %.lr.ph84.i.i1117 ], [ %.1.lcssa.i.i1105, %.preheader62.i.i1101 ] ; 2 uses
  %.23682.i.i1119 = phi ptr [ %i.izc, %.lr.ph84.i.i1117 ], [ %.135.lcssa.i.i1104, %.preheader62.i.i1101 ] ; 2 uses
  %.24081.i.i1120 = phi i32 [ %i.ize, %.lr.ph84.i.i1117 ], [ %.139.lcssa.i.i1103, %.preheader62.i.i1101 ]
  %.24480.i.i1121 = phi ptr [ %i.izd, %.lr.ph84.i.i1117 ], [ %.143.lcssa.i.i1102, %.preheader62.i.i1101 ] ; 2 uses
  %i.iym = load i64, ptr %.283.i.i1118, align 1, !tbaa !555
  %i.iyn = insertelement <2 x i64> poison, i64 %i.iym, i64 0
  %i.iyo = bitcast <2 x i64> %i.iyn to <8 x i16>
  %i.iyp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iyo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iyq = bitcast <8 x i16> %i.iyp to <4 x float>
  %i.iyr = load i64, ptr %.23682.i.i1119, align 1, !tbaa !555
  %i.iys = insertelement <2 x i64> poison, i64 %i.iyr, i64 0
  %i.iyt = bitcast <2 x i64> %i.iys to <8 x i16>
  %i.iyu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.iyt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.iyv = bitcast <8 x i16> %i.iyu to <4 x float>
  %i.iyw = fsub fast <4 x float> %i.iyv, %i.iyq
  %i.iyx = shufflevector <4 x float> %i.iyw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.iyy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.iyx)
  %i.iyz = bitcast <8 x bfloat> %i.iyy to <2 x i64>
  %i.iza = extractelement <2 x i64> %i.iyz, i64 0
  store i64 %i.iza, ptr %.24480.i.i1121, align 1, !tbaa !555
  %i.izb = getelementptr inbounds nuw i8, ptr %.283.i.i1118, i64 8 ; 2 uses
  %i.izc = getelementptr inbounds nuw i8, ptr %.23682.i.i1119, i64 8 ; 2 uses
  %i.izd = getelementptr inbounds nuw i8, ptr %.24480.i.i1121, i64 8 ; 2 uses
  %i.ize = add nuw nsw i32 %.24081.i.i1120, 4     ; 3 uses
  %i.izf = or disjoint i32 %i.ize, 3
  %i.izg = icmp slt i32 %i.izf, %i.iub
  br i1 %i.izg, label %.lr.ph84.i.i1117, label %.preheader.i.i1106, !llvm.loop !223

.lr.ph93.i.i1111:                                 ; preds = %.lr.ph93.i.i1111.prol.loopexit, %.lr.ph93.i.i1111
  %.392.i.i1112 = phi ptr [ %i.izw, %.lr.ph93.i.i1111 ], [ %.392.i.i1112.unr, %.lr.ph93.i.i1111.prol.loopexit ] ; 3 uses
  %.33791.i.i1113 = phi ptr [ %i.jab, %.lr.ph93.i.i1111 ], [ %.33791.i.i1113.unr, %.lr.ph93.i.i1111.prol.loopexit ] ; 3 uses
  %.34190.i.i1114 = phi i32 [ %i.jal, %.lr.ph93.i.i1111 ], [ %.34190.i.i1114.unr, %.lr.ph93.i.i1111.prol.loopexit ]
  %.34589.i.i1115 = phi ptr [ %i.jak, %.lr.ph93.i.i1111 ], [ %.34589.i.i1115.unr, %.lr.ph93.i.i1111.prol.loopexit ] ; 3 uses
  %i.izh = getelementptr inbounds nuw i8, ptr %.392.i.i1112, i64 2
  %i.izi = load i16, ptr %.392.i.i1112, align 2, !tbaa !558
  %i.izj = zext i16 %i.izi to i32
  %i.izk = shl nuw i32 %i.izj, 16
  %i.izl = bitcast i32 %i.izk to float
  %i.izm = getelementptr inbounds nuw i8, ptr %.33791.i.i1113, i64 2
  %i.izn = load i16, ptr %.33791.i.i1113, align 2, !tbaa !558
  %i.izo = zext i16 %i.izn to i32
  %i.izp = shl nuw i32 %i.izo, 16
  %i.izq = bitcast i32 %i.izp to float
  %i.izr = fsub fast float %i.izq, %i.izl
  %i.izs = bitcast float %i.izr to i32
  %i.izt = lshr i32 %i.izs, 16
  %i.izu = trunc nuw i32 %i.izt to i16
  %i.izv = getelementptr inbounds nuw i8, ptr %.34589.i.i1115, i64 2
  store i16 %i.izu, ptr %.34589.i.i1115, align 2, !tbaa !558
  %i.izw = getelementptr inbounds nuw i8, ptr %.392.i.i1112, i64 4
  %i.izx = load i16, ptr %i.izh, align 2, !tbaa !558
  %i.izy = zext i16 %i.izx to i32
  %i.izz = shl nuw i32 %i.izy, 16
  %i.jaa = bitcast i32 %i.izz to float
  %i.jab = getelementptr inbounds nuw i8, ptr %.33791.i.i1113, i64 4
  %i.jac = load i16, ptr %i.izm, align 2, !tbaa !558
  %i.jad = zext i16 %i.jac to i32
  %i.jae = shl nuw i32 %i.jad, 16
  %i.jaf = bitcast i32 %i.jae to float
  %i.jag = fsub fast float %i.jaf, %i.jaa
  %i.jah = bitcast float %i.jag to i32
  %i.jai = lshr i32 %i.jah, 16
  %i.jaj = trunc nuw i32 %i.jai to i16
  %i.jak = getelementptr inbounds nuw i8, ptr %.34589.i.i1115, i64 4
  store i16 %i.jaj, ptr %i.izv, align 2, !tbaa !558
  %i.jal = add nuw nsw i32 %.34190.i.i1114, 2     ; 2 uses
  %exitcond.not.i.i1116.1 = icmp eq i32 %i.jal, %i.iub
  br i1 %exitcond.not.i.i1116.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1111, !llvm.loop !224

bb.go:                                            ; preds = %bb.gm
  %i.jam = icmp eq i32 %4, 1
  br i1 %i.jam, label %bb.gp, label %bb.gv
end_hunk_7
begin_hunk_8_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.jza = shufflevector <8 x float> %i.jyz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jzb = fsub fast <8 x float> %i.jza, %i.jyt
  %i.jzc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jzb)
  store <8 x bfloat> %i.jzc, ptr %.13152.i.i973, align 1, !tbaa !555
  %i.jzd = getelementptr inbounds nuw i8, ptr %.154.i.i971, i64 2
  %i.jze = getelementptr inbounds nuw i8, ptr %.13152.i.i973, i64 16
  %i.jzf = load i16, ptr %i.jzd, align 2, !tbaa !558
  %i.jzg = zext i16 %i.jzf to i32
  %i.jzh = shl nuw i32 %i.jzg, 16
  %i.jzi = insertelement <8 x i32> poison, i32 %i.jzh, i64 0
  %i.jzj = bitcast <8 x i32> %i.jzi to <8 x float>
  %i.jzk = shufflevector <8 x float> %i.jzj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jzl = fsub fast <8 x float> %i.jzk, %i.jyt
  %i.jzm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.jzl)
  store <8 x bfloat> %i.jzm, ptr %i.jze, align 1, !tbaa !555
  %i.jzn = getelementptr inbounds nuw i8, ptr %.154.i.i971, i64 4 ; 2 uses
  %i.jzo = getelementptr inbounds nuw i8, ptr %.13152.i.i973, i64 32 ; 2 uses
  %niter10545.next.1 = add i32 %niter10545, 2     ; 2 uses
  %niter10545.ncmp.1 = icmp eq i32 %niter10545.next.1, %unroll_iter10544
  br i1 %niter10545.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9596.unr-lcssa, label %.lr.ph55.i.i970, !llvm.loop !247

bb.hl:                                            ; preds = %bb.hi
  %i.jzp = load i64, ptr %0, align 1, !tbaa !555
  %i.jzq = insertelement <2 x i64> poison, i64 %i.jzp, i64 0
  %i.jzr = bitcast <2 x i64> %i.jzq to <8 x i16>  ; 3 uses
  %xtraiter10535 = and i32 %.sroa.speculated98.i963, 1
  %i.jzs = icmp eq i32 %.sroa.speculated98.i963, 1
  br i1 %i.jzs, label %.lr.ph.i86.i965.epil.preheader, label %.new10534

.new10534:                                        ; preds = %bb.hl
  %unroll_iter10538 = and i32 %.sroa.speculated98.i963, 2147483646
  %i.jzt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jzr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jzu = bitcast <16 x i16> %i.jzt to <8 x float>
  %i.jzv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jzr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jzw = bitcast <16 x i16> %i.jzv to <8 x float>
  br label %.lr.ph.i86.i965

.lr.ph.i86.i965:                                  ; preds = %.lr.ph.i86.i965, %.new10534
  %.250.i.i967 = phi ptr [ %1, %.new10534 ], [ %i.kat, %.lr.ph.i86.i965 ] ; 3 uses
  %.23249.i.i968 = phi ptr [ %2, %.new10534 ], [ %i.kau, %.lr.ph.i86.i965 ] ; 3 uses
  %niter10539 = phi i32 [ 0, %.new10534 ], [ %niter10539.next.1, %.lr.ph.i86.i965 ]
  %i.jzx = load i16, ptr %.250.i.i967, align 2, !tbaa !558
  %i.jzy = zext i16 %i.jzx to i32
  %i.jzz = shl nuw i32 %i.jzy, 16
  %i.kaa = insertelement <4 x i32> poison, i32 %i.jzz, i64 0
  %i.kab = bitcast <4 x i32> %i.kaa to <4 x float>
  %i.kac = shufflevector <4 x float> %i.kab, <4 x float> poison, <8 x i32> zeroinitializer
  %i.kad = fsub fast <8 x float> %i.kac, %i.jzu
  %i.kae = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kad)
  %i.kaf = bitcast <8 x bfloat> %i.kae to <2 x i64>
  %i.kag = extractelement <2 x i64> %i.kaf, i64 0
  store i64 %i.kag, ptr %.23249.i.i968, align 1, !tbaa !555
  %i.kah = getelementptr inbounds nuw i8, ptr %.250.i.i967, i64 2
  %i.kai = getelementptr inbounds nuw i8, ptr %.23249.i.i968, i64 8
  %i.kaj = load i16, ptr %i.kah, align 2, !tbaa !558
  %i.kak = zext i16 %i.kaj to i32
  %i.kal = shl nuw i32 %i.kak, 16
  %i.kam = insertelement <4 x i32> poison, i32 %i.kal, i64 0
  %i.kan = bitcast <4 x i32> %i.kam to <4 x float>
  %i.kao = shufflevector <4 x float> %i.kan, <4 x float> poison, <8 x i32> zeroinitializer
  %i.kap = fsub fast <8 x float> %i.kao, %i.jzw
  %i.kaq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kap)
  %i.kar = bitcast <8 x bfloat> %i.kaq to <2 x i64>
  %i.kas = extractelement <2 x i64> %i.kar, i64 0
  store i64 %i.kas, ptr %i.kai, align 1, !tbaa !555
  %i.kat = getelementptr inbounds nuw i8, ptr %.250.i.i967, i64 4 ; 2 uses
  %i.kau = getelementptr inbounds nuw i8, ptr %.23249.i.i968, i64 16 ; 2 uses
  %niter10539.next.1 = add i32 %niter10539, 2     ; 2 uses
  %niter10539.ncmp.1 = icmp eq i32 %niter10539.next.1, %unroll_iter10538
  br i1 %niter10539.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9597.unr-lcssa, label %.lr.ph.i86.i965, !llvm.loop !248

bb.hm:                                            ; preds = %bb.a
  %.sroa.speculated99.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 28 uses
  %.sroa.speculated.i1133 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.kav = mul i32 %.sroa.speculated.i1133, %.sroa.speculated99.i ; 48 uses
  %i.kaw = icmp eq i32 %5, %6
  br i1 %i.kaw, label %bb.hn, label %bb.id

bb.hn:                                            ; preds = %bb.hm
  %i.kax = icmp eq i32 %3, %4
  br i1 %i.kax, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.kay = icmp sgt i32 %i.kav, 15
  br i1 %i.kay, label %.lr.ph.i.i1294.preheader, label %.preheader63.i.i1263

.lr.ph.i.i1294.preheader:                         ; preds = %bb.ho
  %i.kaz = add nsw i32 %i.kav, -16                ; 2 uses
  %i.kba = lshr i32 %i.kaz, 4                     ; 2 uses
  %i.kbb = add nuw nsw i32 %i.kba, 1              ; 2 uses
  %i.kbc = icmp eq i32 %i.kba, 0
  br i1 %i.kbc, label %.lr.ph.i.i1294.epil.preheader, label %.lr.ph.i.i1294.preheader.new

.lr.ph.i.i1294.preheader.new:                     ; preds = %.lr.ph.i.i1294.preheader
  %unroll_iter10530 = and i32 %i.kbb, 536870910
  br label %.lr.ph.i.i1294

.preheader63.loopexit.i.i1299.unr-lcssa:          ; preds = %.lr.ph.i.i1294
  %i.kbd = and i32 %i.kaz, 16
  %lcmp.mod10525.not.not = icmp eq i32 %i.kbd, 0
  br i1 %lcmp.mod10525.not.not, label %.lr.ph.i.i1294.epil.preheader, label %.preheader63.loopexit.i.i1299

.lr.ph.i.i1294.epil.preheader:                    ; preds = %.preheader63.loopexit.i.i1299.unr-lcssa, %.lr.ph.i.i1294.preheader
  %.067.i.i1295.epil.init = phi ptr [ %0, %.lr.ph.i.i1294.preheader ], [ %i.kcf, %.preheader63.loopexit.i.i1299.unr-lcssa ] ; 2 uses
  %.03466.i.i1296.epil.init = phi ptr [ %1, %.lr.ph.i.i1294.preheader ], [ %i.kcg, %.preheader63.loopexit.i.i1299.unr-lcssa ] ; 2 uses
  %.04264.i.i1298.epil.init = phi ptr [ %2, %.lr.ph.i.i1294.preheader ], [ %i.kch, %.preheader63.loopexit.i.i1299.unr-lcssa ] ; 2 uses
  %lcmp.mod10529 = trunc i32 %i.kbb to i1
  tail call void @llvm.assume(i1 %lcmp.mod10529)
  %i.kbe = load <16 x bfloat>, ptr %.067.i.i1295.epil.init, align 1, !tbaa !555
  %i.kbf = fpext fast <16 x bfloat> %i.kbe to <16 x float>
  %i.kbg = load <16 x bfloat>, ptr %.03466.i.i1296.epil.init, align 1, !tbaa !555
  %i.kbh = fpext fast <16 x bfloat> %i.kbg to <16 x float>
  %i.kbi = fdiv fast <16 x float> %i.kbh, %i.kbf
  %i.kbj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.kbi)
  store <16 x bfloat> %i.kbj, ptr %.04264.i.i1298.epil.init, align 1, !tbaa !555
  %i.kbk = getelementptr inbounds nuw i8, ptr %.067.i.i1295.epil.init, i64 32
  %i.kbl = getelementptr inbounds nuw i8, ptr %.03466.i.i1296.epil.init, i64 32
  %i.kbm = getelementptr inbounds nuw i8, ptr %.04264.i.i1298.epil.init, i64 32
  br label %.preheader63.loopexit.i.i1299

.preheader63.loopexit.i.i1299:                    ; preds = %.preheader63.loopexit.i.i1299.unr-lcssa, %.lr.ph.i.i1294.epil.preheader
  %.lcssa9609 = phi ptr [ %i.kcf, %.preheader63.loopexit.i.i1299.unr-lcssa ], [ %i.kbk, %.lr.ph.i.i1294.epil.preheader ]
  %.lcssa9608 = phi ptr [ %i.kcg, %.preheader63.loopexit.i.i1299.unr-lcssa ], [ %i.kbl, %.lr.ph.i.i1294.epil.preheader ]
  %.lcssa9607 = phi ptr [ %i.kch, %.preheader63.loopexit.i.i1299.unr-lcssa ], [ %i.kbm, %.lr.ph.i.i1294.epil.preheader ]
  %i.kbn = and i32 %i.kav, 2147483632
  br label %.preheader63.i.i1263

.preheader63.i.i1263:                             ; preds = %.preheader63.loopexit.i.i1299, %bb.ho
  %.042.lcssa.i.i1264 = phi ptr [ %2, %bb.ho ], [ %.lcssa9607, %.preheader63.loopexit.i.i1299 ] ; 2 uses
  %.038.lcssa.i.i1265 = phi i32 [ 0, %bb.ho ], [ %i.kbn, %.preheader63.loopexit.i.i1299 ] ; 3 uses
  %.034.lcssa.i.i1266 = phi ptr [ %1, %bb.ho ], [ %.lcssa9608, %.preheader63.loopexit.i.i1299 ] ; 2 uses
  %.0.lcssa.i.i1267 = phi ptr [ %0, %bb.ho ], [ %.lcssa9609, %.preheader63.loopexit.i.i1299 ] ; 2 uses
  %i.kbo = or disjoint i32 %.038.lcssa.i.i1265, 7
  %i.kbp = icmp slt i32 %i.kbo, %i.kav
  br i1 %i.kbp, label %.lr.ph75.i.i1289, label %.preheader62.i.i1268

.lr.ph.i.i1294:                                   ; preds = %.lr.ph.i.i1294, %.lr.ph.i.i1294.preheader.new
  %.067.i.i1295 = phi ptr [ %0, %.lr.ph.i.i1294.preheader.new ], [ %i.kcf, %.lr.ph.i.i1294 ] ; 3 uses
  %.03466.i.i1296 = phi ptr [ %1, %.lr.ph.i.i1294.preheader.new ], [ %i.kcg, %.lr.ph.i.i1294 ] ; 3 uses
  %.04264.i.i1298 = phi ptr [ %2, %.lr.ph.i.i1294.preheader.new ], [ %i.kch, %.lr.ph.i.i1294 ] ; 3 uses
  %niter10531 = phi i32 [ 0, %.lr.ph.i.i1294.preheader.new ], [ %niter10531.next.1, %.lr.ph.i.i1294 ]
  %i.kbq = load <16 x bfloat>, ptr %.067.i.i1295, align 1, !tbaa !555
  %i.kbr = fpext fast <16 x bfloat> %i.kbq to <16 x float>
  %i.kbs = load <16 x bfloat>, ptr %.03466.i.i1296, align 1, !tbaa !555
  %i.kbt = fpext fast <16 x bfloat> %i.kbs to <16 x float>
  %i.kbu = fdiv fast <16 x float> %i.kbt, %i.kbr
  %i.kbv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.kbu)
  store <16 x bfloat> %i.kbv, ptr %.04264.i.i1298, align 1, !tbaa !555
  %i.kbw = getelementptr inbounds nuw i8, ptr %.067.i.i1295, i64 32
  %i.kbx = getelementptr inbounds nuw i8, ptr %.03466.i.i1296, i64 32
  %i.kby = getelementptr inbounds nuw i8, ptr %.04264.i.i1298, i64 32
  %i.kbz = load <16 x bfloat>, ptr %i.kbw, align 1, !tbaa !555
  %i.kca = fpext fast <16 x bfloat> %i.kbz to <16 x float>
  %i.kcb = load <16 x bfloat>, ptr %i.kbx, align 1, !tbaa !555
  %i.kcc = fpext fast <16 x bfloat> %i.kcb to <16 x float>
  %i.kcd = fdiv fast <16 x float> %i.kcc, %i.kca
  %i.kce = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.kcd)
  store <16 x bfloat> %i.kce, ptr %i.kby, align 1, !tbaa !555
  %i.kcf = getelementptr inbounds nuw i8, ptr %.067.i.i1295, i64 64 ; 3 uses
  %i.kcg = getelementptr inbounds nuw i8, ptr %.03466.i.i1296, i64 64 ; 3 uses
  %i.kch = getelementptr inbounds nuw i8, ptr %.04264.i.i1298, i64 64 ; 3 uses
  %niter10531.next.1 = add i32 %niter10531, 2     ; 2 uses
  %niter10531.ncmp.1.not = icmp eq i32 %niter10531.next.1, %unroll_iter10530
  br i1 %niter10531.ncmp.1.not, label %.preheader63.loopexit.i.i1299.unr-lcssa, label %.lr.ph.i.i1294, !llvm.loop !249

.preheader62.i.i1268:                             ; preds = %.lr.ph75.i.i1289, %.preheader63.i.i1263
  %.143.lcssa.i.i1269 = phi ptr [ %.042.lcssa.i.i1264, %.preheader63.i.i1263 ], [ %i.kcs, %.lr.ph75.i.i1289 ] ; 2 uses
  %.139.lcssa.i.i1270 = phi i32 [ %.038.lcssa.i.i1265, %.preheader63.i.i1263 ], [ %i.kct, %.lr.ph75.i.i1289 ] ; 3 uses
  %.135.lcssa.i.i1271 = phi ptr [ %.034.lcssa.i.i1266, %.preheader63.i.i1263 ], [ %i.kcr, %.lr.ph75.i.i1289 ] ; 2 uses
  %.1.lcssa.i.i1272 = phi ptr [ %.0.lcssa.i.i1267, %.preheader63.i.i1263 ], [ %i.kcq, %.lr.ph75.i.i1289 ] ; 2 uses
  %i.kci = or disjoint i32 %.139.lcssa.i.i1270, 3
  %i.kcj = icmp slt i32 %i.kci, %i.kav
  br i1 %i.kcj, label %.lr.ph84.i.i1284, label %.preheader.i.i1273

.lr.ph75.i.i1289:                                 ; preds = %.preheader63.i.i1263, %.lr.ph75.i.i1289
  %.174.i.i1290 = phi ptr [ %i.kcq, %.lr.ph75.i.i1289 ], [ %.0.lcssa.i.i1267, %.preheader63.i.i1263 ] ; 2 uses
  %.13573.i.i1291 = phi ptr [ %i.kcr, %.lr.ph75.i.i1289 ], [ %.034.lcssa.i.i1266, %.preheader63.i.i1263 ] ; 2 uses
  %.13972.i.i1292 = phi i32 [ %i.kct, %.lr.ph75.i.i1289 ], [ %.038.lcssa.i.i1265, %.preheader63.i.i1263 ]
  %.14371.i.i1293 = phi ptr [ %i.kcs, %.lr.ph75.i.i1289 ], [ %.042.lcssa.i.i1264, %.preheader63.i.i1263 ] ; 2 uses
  %i.kck = load <8 x bfloat>, ptr %.174.i.i1290, align 1, !tbaa !555
  %i.kcl = fpext fast <8 x bfloat> %i.kck to <8 x float>
  %i.kcm = load <8 x bfloat>, ptr %.13573.i.i1291, align 1, !tbaa !555
  %i.kcn = fpext fast <8 x bfloat> %i.kcm to <8 x float>
  %i.kco = fdiv fast <8 x float> %i.kcn, %i.kcl
  %i.kcp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kco)
  store <8 x bfloat> %i.kcp, ptr %.14371.i.i1293, align 1, !tbaa !555
  %i.kcq = getelementptr inbounds nuw i8, ptr %.174.i.i1290, i64 16 ; 2 uses
  %i.kcr = getelementptr inbounds nuw i8, ptr %.13573.i.i1291, i64 16 ; 2 uses
  %i.kcs = getelementptr inbounds nuw i8, ptr %.14371.i.i1293, i64 16 ; 2 uses
  %i.kct = add nuw nsw i32 %.13972.i.i1292, 8     ; 3 uses
  %i.kcu = or disjoint i32 %i.kct, 7
  %i.kcv = icmp slt i32 %i.kcu, %i.kav
  br i1 %i.kcv, label %.lr.ph75.i.i1289, label %.preheader62.i.i1268, !llvm.loop !250

.preheader.i.i1273:                               ; preds = %.lr.ph84.i.i1284, %.preheader62.i.i1268
  %.244.lcssa.i.i1274 = phi ptr [ %.143.lcssa.i.i1269, %.preheader62.i.i1268 ], [ %i.kfx, %.lr.ph84.i.i1284 ] ; 7 uses
  %.240.lcssa.i.i1275 = phi i32 [ %.139.lcssa.i.i1270, %.preheader62.i.i1268 ], [ %i.kfy, %.lr.ph84.i.i1284 ] ; 6 uses
  %.236.lcssa.i.i1276 = phi ptr [ %.135.lcssa.i.i1271, %.preheader62.i.i1268 ], [ %i.kfw, %.lr.ph84.i.i1284 ] ; 7 uses
  %.2.lcssa.i.i1277 = phi ptr [ %.1.lcssa.i.i1272, %.preheader62.i.i1268 ], [ %i.kfv, %.lr.ph84.i.i1284 ] ; 7 uses
  %.236.lcssa.i.i12767667 = ptrtoaddr ptr %.236.lcssa.i.i1276 to i64
  %.244.lcssa.i.i12747668 = ptrtoaddr ptr %.2.lcssa.i.i1277 to i64
  %.2.lcssa.i.i12777669 = ptrtoaddr ptr %.244.lcssa.i.i1274 to i64 ; 2 uses
  %i.kcw = icmp slt i32 %.240.lcssa.i.i1275, %i.kav
  br i1 %i.kcw, label %iter.check7689, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7689:                                   ; preds = %.preheader.i.i1273
  %i.kcx = xor i32 %.240.lcssa.i.i1275, -1
  %i.kcy = add i32 %i.kav, %i.kcx                 ; 3 uses
  %i.kcz = zext i32 %i.kcy to i64
  %i.kda = add nuw nsw i64 %i.kcz, 1              ; 5 uses
  %min.iters.check7670 = icmp ult i32 %i.kcy, 7
  br i1 %min.iters.check7670, label %.lr.ph93.i.i1278.preheader, label %vector.memcheck7671

vector.memcheck7671:                              ; preds = %iter.check7689
  %i.kdb = sub i64 %.244.lcssa.i.i12747668, %.2.lcssa.i.i12777669
  %diff.check7672 = icmp ugt i64 %i.kdb, -64
  %i.kdc = sub i64 %.236.lcssa.i.i12767667, %.2.lcssa.i.i12777669
  %diff.check7673 = icmp ugt i64 %i.kdc, -64
  %conflict.rdx7674 = or i1 %diff.check7672, %diff.check7673
  br i1 %conflict.rdx7674, label %.lr.ph93.i.i1278.preheader, label %vector.main.loop.iter.check7675

vector.main.loop.iter.check7675:                  ; preds = %vector.memcheck7671
  %min.iters.check7676 = icmp ult i32 %i.kcy, 31
  br i1 %min.iters.check7676, label %vec.epilog.ph7693, label %vector.ph7677

vector.ph7677:                                    ; preds = %vector.main.loop.iter.check7675
  %i.kdd = and i64 %i.kda, 24
  %n.vec7678 = and i64 %i.kda, 8589934560         ; 5 uses
  %i.kde = shl nuw nsw i64 %n.vec7678, 1          ; 3 uses
  %i.kdf = getelementptr i8, ptr %.2.lcssa.i.i1277, i64 %i.kde
  %i.kdg = getelementptr i8, ptr %.236.lcssa.i.i1276, i64 %i.kde
  %i.kdh = trunc i64 %n.vec7678 to i32
  %i.kdi = add i32 %.240.lcssa.i.i1275, %i.kdh
  %i.kdj = getelementptr i8, ptr %.244.lcssa.i.i1274, i64 %i.kde
  br label %vector.body7679

vector.body7679:                                  ; preds = %vector.ph7677, %vector.body7679
  %index7680 = phi i64 [ 0, %vector.ph7677 ], [ %index.next7686, %vector.body7679 ] ; 2 uses
  %i.kdk = shl i64 %index7680, 1                  ; 3 uses
  %next.gep7681 = getelementptr i8, ptr %.2.lcssa.i.i1277, i64 %i.kdk
  %next.gep7682 = getelementptr i8, ptr %.236.lcssa.i.i1276, i64 %i.kdk
  %next.gep7683 = getelementptr i8, ptr %.244.lcssa.i.i1274, i64 %i.kdk
  %wide.load7684 = load <32 x i16>, ptr %next.gep7681, align 2, !tbaa !558
  %i.kdl = zext <32 x i16> %wide.load7684 to <32 x i32>
  %i.kdm = shl nuw <32 x i32> %i.kdl, splat (i32 16)
  %i.kdn = bitcast <32 x i32> %i.kdm to <32 x float>
  %wide.load7685 = load <32 x i16>, ptr %next.gep7682, align 2, !tbaa !558
  %i.kdo = zext <32 x i16> %wide.load7685 to <32 x i32>
  %i.kdp = shl nuw <32 x i32> %i.kdo, splat (i32 16)
  %i.kdq = bitcast <32 x i32> %i.kdp to <32 x float>
  %i.kdr = fdiv fast <32 x float> %i.kdq, %i.kdn
  %i.kds = bitcast <32 x float> %i.kdr to <32 x i32>
  %i.kdt = lshr <32 x i32> %i.kds, splat (i32 16)
  %i.kdu = trunc nuw <32 x i32> %i.kdt to <32 x i16>
  store <32 x i16> %i.kdu, ptr %next.gep7683, align 2, !tbaa !558
  %index.next7686 = add nuw i64 %index7680, 32    ; 2 uses
  %i.kdv = icmp eq i64 %index.next7686, %n.vec7678
  br i1 %i.kdv, label %middle.block7687, label %vector.body7679, !llvm.loop !251

middle.block7687:                                 ; preds = %vector.body7679
  %cmp.n7688 = icmp eq i64 %i.kda, %n.vec7678
  br i1 %cmp.n7688, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7690

vec.epilog.iter.check7690:                        ; preds = %middle.block7687
  %min.epilog.iters.check7692 = icmp eq i64 %i.kdd, 0
  br i1 %min.epilog.iters.check7692, label %.lr.ph93.i.i1278.preheader, label %vec.epilog.ph7693, !prof !561

vec.epilog.ph7693:                                ; preds = %vector.main.loop.iter.check7675, %vec.epilog.iter.check7690
  %vec.epilog.resume.val7694 = phi i64 [ %n.vec7678, %vec.epilog.iter.check7690 ], [ 0, %vector.main.loop.iter.check7675 ]
  %n.vec7695 = and i64 %i.kda, 8589934584         ; 4 uses
  %i.kdw = shl nuw nsw i64 %n.vec7695, 1          ; 3 uses
  %i.kdx = getelementptr i8, ptr %.2.lcssa.i.i1277, i64 %i.kdw
  %i.kdy = getelementptr i8, ptr %.236.lcssa.i.i1276, i64 %i.kdw
  %i.kdz = trunc i64 %n.vec7695 to i32
  %i.kea = add i32 %.240.lcssa.i.i1275, %i.kdz
  %i.keb = getelementptr i8, ptr %.244.lcssa.i.i1274, i64 %i.kdw
  br label %vec.epilog.vector.body7696

vec.epilog.vector.body7696:                       ; preds = %vec.epilog.vector.body7696, %vec.epilog.ph7693
  %index7697 = phi i64 [ %vec.epilog.resume.val7694, %vec.epilog.ph7693 ], [ %index.next7703, %vec.epilog.vector.body7696 ] ; 2 uses
  %i.kec = shl i64 %index7697, 1                  ; 3 uses
  %next.gep7698 = getelementptr i8, ptr %.2.lcssa.i.i1277, i64 %i.kec
  %next.gep7699 = getelementptr i8, ptr %.236.lcssa.i.i1276, i64 %i.kec
  %next.gep7700 = getelementptr i8, ptr %.244.lcssa.i.i1274, i64 %i.kec
  %wide.load7701 = load <8 x i16>, ptr %next.gep7698, align 2, !tbaa !558
  %i.ked = zext <8 x i16> %wide.load7701 to <8 x i32>
  %i.kee = shl nuw <8 x i32> %i.ked, splat (i32 16)
  %i.kef = bitcast <8 x i32> %i.kee to <8 x float>
  %wide.load7702 = load <8 x i16>, ptr %next.gep7699, align 2, !tbaa !558
  %i.keg = zext <8 x i16> %wide.load7702 to <8 x i32>
  %i.keh = shl nuw <8 x i32> %i.keg, splat (i32 16)
  %i.kei = bitcast <8 x i32> %i.keh to <8 x float>
  %i.kej = fdiv fast <8 x float> %i.kei, %i.kef
  %i.kek = bitcast <8 x float> %i.kej to <8 x i32>
  %i.kel = lshr <8 x i32> %i.kek, splat (i32 16)
  %i.kem = trunc nuw <8 x i32> %i.kel to <8 x i16>
  store <8 x i16> %i.kem, ptr %next.gep7700, align 2, !tbaa !558
  %index.next7703 = add nuw i64 %index7697, 8     ; 2 uses
  %i.ken = icmp eq i64 %index.next7703, %n.vec7695
  br i1 %i.ken, label %vec.epilog.middle.block7704, label %vec.epilog.vector.body7696, !llvm.loop !252

vec.epilog.middle.block7704:                      ; preds = %vec.epilog.vector.body7696
  %cmp.n7705 = icmp eq i64 %i.kda, %n.vec7695
  br i1 %cmp.n7705, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1278.preheader

.lr.ph93.i.i1278.preheader:                       ; preds = %iter.check7689, %vector.memcheck7671, %vec.epilog.iter.check7690, %vec.epilog.middle.block7704
  %.392.i.i1279.ph = phi ptr [ %.2.lcssa.i.i1277, %iter.check7689 ], [ %.2.lcssa.i.i1277, %vector.memcheck7671 ], [ %i.kdf, %vec.epilog.iter.check7690 ], [ %i.kdx, %vec.epilog.middle.block7704 ] ; 3 uses
  %.33791.i.i1280.ph = phi ptr [ %.236.lcssa.i.i1276, %iter.check7689 ], [ %.236.lcssa.i.i1276, %vector.memcheck7671 ], [ %i.kdg, %vec.epilog.iter.check7690 ], [ %i.kdy, %vec.epilog.middle.block7704 ] ; 3 uses
  %.34190.i.i1281.ph = phi i32 [ %.240.lcssa.i.i1275, %iter.check7689 ], [ %.240.lcssa.i.i1275, %vector.memcheck7671 ], [ %i.kdi, %vec.epilog.iter.check7690 ], [ %i.kea, %vec.epilog.middle.block7704 ] ; 4 uses
  %.34589.i.i1282.ph = phi ptr [ %.244.lcssa.i.i1274, %iter.check7689 ], [ %.244.lcssa.i.i1274, %vector.memcheck7671 ], [ %i.kdj, %vec.epilog.iter.check7690 ], [ %i.keb, %vec.epilog.middle.block7704 ] ; 3 uses
  %i.keo = sub i32 %i.kav, %.34190.i.i1281.ph
  %.neg11060 = add i32 %.34190.i.i1281.ph, 1
  %xtraiter10532 = and i32 %i.keo, 1
  %lcmp.mod10533.not = icmp eq i32 %xtraiter10532, 0
  br i1 %lcmp.mod10533.not, label %.lr.ph93.i.i1278.prol.loopexit, label %.lr.ph93.i.i1278.prol

.lr.ph93.i.i1278.prol:                            ; preds = %.lr.ph93.i.i1278.preheader
  %i.kep = getelementptr inbounds nuw i8, ptr %.392.i.i1279.ph, i64 2
  %i.keq = load i16, ptr %.392.i.i1279.ph, align 2, !tbaa !558
  %i.ker = zext i16 %i.keq to i32
  %i.kes = shl nuw i32 %i.ker, 16
  %i.ket = bitcast i32 %i.kes to float
  %i.keu = getelementptr inbounds nuw i8, ptr %.33791.i.i1280.ph, i64 2
  %i.kev = load i16, ptr %.33791.i.i1280.ph, align 2, !tbaa !558
  %i.kew = zext i16 %i.kev to i32
  %i.kex = shl nuw i32 %i.kew, 16
  %i.key = bitcast i32 %i.kex to float
  %i.kez = fdiv fast float %i.key, %i.ket
  %i.kfa = bitcast float %i.kez to i32
  %i.kfb = lshr i32 %i.kfa, 16
  %i.kfc = trunc nuw i32 %i.kfb to i16
  %i.kfd = getelementptr inbounds nuw i8, ptr %.34589.i.i1282.ph, i64 2
  store i16 %i.kfc, ptr %.34589.i.i1282.ph, align 2, !tbaa !558
  %i.kfe = add nuw nsw i32 %.34190.i.i1281.ph, 1
  br label %.lr.ph93.i.i1278.prol.loopexit

.lr.ph93.i.i1278.prol.loopexit:                   ; preds = %.lr.ph93.i.i1278.prol, %.lr.ph93.i.i1278.preheader
  %.392.i.i1279.unr = phi ptr [ %.392.i.i1279.ph, %.lr.ph93.i.i1278.preheader ], [ %i.kep, %.lr.ph93.i.i1278.prol ]
  %.33791.i.i1280.unr = phi ptr [ %.33791.i.i1280.ph, %.lr.ph93.i.i1278.preheader ], [ %i.keu, %.lr.ph93.i.i1278.prol ]
  %.34190.i.i1281.unr = phi i32 [ %.34190.i.i1281.ph, %.lr.ph93.i.i1278.preheader ], [ %i.kfe, %.lr.ph93.i.i1278.prol ]
  %.34589.i.i1282.unr = phi ptr [ %.34589.i.i1282.ph, %.lr.ph93.i.i1278.preheader ], [ %i.kfd, %.lr.ph93.i.i1278.prol ]
  %i.kff = icmp eq i32 %i.kav, %.neg11060
  br i1 %i.kff, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1278

.lr.ph84.i.i1284:                                 ; preds = %.preheader62.i.i1268, %.lr.ph84.i.i1284
  %.283.i.i1285 = phi ptr [ %i.kfv, %.lr.ph84.i.i1284 ], [ %.1.lcssa.i.i1272, %.preheader62.i.i1268 ] ; 2 uses
  %.23682.i.i1286 = phi ptr [ %i.kfw, %.lr.ph84.i.i1284 ], [ %.135.lcssa.i.i1271, %.preheader62.i.i1268 ] ; 2 uses
  %.24081.i.i1287 = phi i32 [ %i.kfy, %.lr.ph84.i.i1284 ], [ %.139.lcssa.i.i1270, %.preheader62.i.i1268 ]
  %.24480.i.i1288 = phi ptr [ %i.kfx, %.lr.ph84.i.i1284 ], [ %.143.lcssa.i.i1269, %.preheader62.i.i1268 ] ; 2 uses
  %i.kfg = load i64, ptr %.283.i.i1285, align 1, !tbaa !555
  %i.kfh = insertelement <2 x i64> poison, i64 %i.kfg, i64 0
  %i.kfi = bitcast <2 x i64> %i.kfh to <8 x i16>
  %i.kfj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kfi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kfk = bitcast <8 x i16> %i.kfj to <4 x float>
  %i.kfl = load i64, ptr %.23682.i.i1286, align 1, !tbaa !555
  %i.kfm = insertelement <2 x i64> poison, i64 %i.kfl, i64 0
  %i.kfn = bitcast <2 x i64> %i.kfm to <8 x i16>
  %i.kfo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.kfn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.kfp = bitcast <8 x i16> %i.kfo to <4 x float>
  %i.kfq = fdiv fast <4 x float> %i.kfp, %i.kfk
  %i.kfr = shufflevector <4 x float> %i.kfq, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.kfs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.kfr)
  %i.kft = bitcast <8 x bfloat> %i.kfs to <2 x i64>
  %i.kfu = extractelement <2 x i64> %i.kft, i64 0
  store i64 %i.kfu, ptr %.24480.i.i1288, align 1, !tbaa !555
  %i.kfv = getelementptr inbounds nuw i8, ptr %.283.i.i1285, i64 8 ; 2 uses
  %i.kfw = getelementptr inbounds nuw i8, ptr %.23682.i.i1286, i64 8 ; 2 uses
  %i.kfx = getelementptr inbounds nuw i8, ptr %.24480.i.i1288, i64 8 ; 2 uses
  %i.kfy = add nuw nsw i32 %.24081.i.i1287, 4     ; 3 uses
  %i.kfz = or disjoint i32 %i.kfy, 3
  %i.kga = icmp slt i32 %i.kfz, %i.kav
  br i1 %i.kga, label %.lr.ph84.i.i1284, label %.preheader.i.i1273, !llvm.loop !253

.lr.ph93.i.i1278:                                 ; preds = %.lr.ph93.i.i1278.prol.loopexit, %.lr.ph93.i.i1278
  %.392.i.i1279 = phi ptr [ %i.kgq, %.lr.ph93.i.i1278 ], [ %.392.i.i1279.unr, %.lr.ph93.i.i1278.prol.loopexit ] ; 3 uses
  %.33791.i.i1280 = phi ptr [ %i.kgv, %.lr.ph93.i.i1278 ], [ %.33791.i.i1280.unr, %.lr.ph93.i.i1278.prol.loopexit ] ; 3 uses
  %.34190.i.i1281 = phi i32 [ %i.khf, %.lr.ph93.i.i1278 ], [ %.34190.i.i1281.unr, %.lr.ph93.i.i1278.prol.loopexit ]
  %.34589.i.i1282 = phi ptr [ %i.khe, %.lr.ph93.i.i1278 ], [ %.34589.i.i1282.unr, %.lr.ph93.i.i1278.prol.loopexit ] ; 3 uses
  %i.kgb = getelementptr inbounds nuw i8, ptr %.392.i.i1279, i64 2
  %i.kgc = load i16, ptr %.392.i.i1279, align 2, !tbaa !558
  %i.kgd = zext i16 %i.kgc to i32
  %i.kge = shl nuw i32 %i.kgd, 16
  %i.kgf = bitcast i32 %i.kge to float
  %i.kgg = getelementptr inbounds nuw i8, ptr %.33791.i.i1280, i64 2
  %i.kgh = load i16, ptr %.33791.i.i1280, align 2, !tbaa !558
  %i.kgi = zext i16 %i.kgh to i32
  %i.kgj = shl nuw i32 %i.kgi, 16
  %i.kgk = bitcast i32 %i.kgj to float
  %i.kgl = fdiv fast float %i.kgk, %i.kgf
  %i.kgm = bitcast float %i.kgl to i32
  %i.kgn = lshr i32 %i.kgm, 16
  %i.kgo = trunc nuw i32 %i.kgn to i16
  %i.kgp = getelementptr inbounds nuw i8, ptr %.34589.i.i1282, i64 2
  store i16 %i.kgo, ptr %.34589.i.i1282, align 2, !tbaa !558
  %i.kgq = getelementptr inbounds nuw i8, ptr %.392.i.i1279, i64 4
  %i.kgr = load i16, ptr %i.kgb, align 2, !tbaa !558
  %i.kgs = zext i16 %i.kgr to i32
  %i.kgt = shl nuw i32 %i.kgs, 16
  %i.kgu = bitcast i32 %i.kgt to float
  %i.kgv = getelementptr inbounds nuw i8, ptr %.33791.i.i1280, i64 4
  %i.kgw = load i16, ptr %i.kgg, align 2, !tbaa !558
  %i.kgx = zext i16 %i.kgw to i32
  %i.kgy = shl nuw i32 %i.kgx, 16
  %i.kgz = bitcast i32 %i.kgy to float
  %i.kha = fdiv fast float %i.kgz, %i.kgu
  %i.khb = bitcast float %i.kha to i32
  %i.khc = lshr i32 %i.khb, 16
  %i.khd = trunc nuw i32 %i.khc to i16
  %i.khe = getelementptr inbounds nuw i8, ptr %.34589.i.i1282, i64 4
  store i16 %i.khd, ptr %i.kgp, align 2, !tbaa !558
  %i.khf = add nuw nsw i32 %.34190.i.i1281, 2     ; 2 uses
  %exitcond.not.i.i1283.1 = icmp eq i32 %i.khf, %i.kav
  br i1 %exitcond.not.i.i1283.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph93.i.i1278, !llvm.loop !254

bb.hp:                                            ; preds = %bb.hn
  %i.khg = icmp eq i32 %4, 1
  br i1 %i.khg, label %bb.hq, label %bb.hw
end_hunk_8
begin_hunk_9_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.lex = shufflevector <4 x float> %i.lew, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ley = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lex)
  %i.lez = bitcast <8 x bfloat> %i.ley to <2 x i64>
  %i.lfa = extractelement <2 x i64> %i.lez, i64 0
  store i64 %i.lfa, ptr %i.lep, align 1, !tbaa !555
  %i.lfb = getelementptr inbounds nuw i8, ptr %.250.i.i1135, i64 4 ; 2 uses
  %i.lfc = getelementptr inbounds nuw i8, ptr %.23249.i.i1136, i64 16 ; 2 uses
  %niter10471.next.1 = add i32 %niter10471, 2     ; 2 uses
  %niter10471.ncmp.1 = icmp eq i32 %niter10471.next.1, %unroll_iter10470
  br i1 %niter10471.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9642.unr-lcssa, label %.lr.ph.i87.i, !llvm.loop !278

bb.ik:                                            ; preds = %bb.a
  %.sroa.speculated98.i1300 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1301 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.lfd = mul i32 %.sroa.speculated.i1301, %.sroa.speculated98.i1300 ; 48 uses
  %i.lfe = icmp eq i32 %5, %6
  br i1 %i.lfe, label %bb.il, label %bb.je

bb.il:                                            ; preds = %bb.ik
  %i.lff = icmp eq i32 %3, %4
  br i1 %i.lff, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.lfg = icmp sgt i32 %i.lfd, 15
  br i1 %i.lfg, label %.lr.ph.i.i1464, label %.preheader177.i.i1433

.preheader177.loopexit.i.i1469:                   ; preds = %.lr.ph.i.i1464
  %i.lfh = and i32 %i.lfd, 2147483632
  br label %.preheader177.i.i1433

.preheader177.i.i1433:                            ; preds = %.preheader177.loopexit.i.i1469, %bb.im
  %.042.lcssa.i.i1434 = phi ptr [ %2, %bb.im ], [ %i.lht, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %.038.lcssa.i.i1435 = phi i32 [ 0, %bb.im ], [ %i.lfh, %.preheader177.loopexit.i.i1469 ] ; 3 uses
  %.034.lcssa.i.i1436 = phi ptr [ %1, %bb.im ], [ %i.lhs, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %.0.lcssa.i.i1437 = phi ptr [ %0, %bb.im ], [ %i.lhr, %.preheader177.loopexit.i.i1469 ] ; 2 uses
  %i.lfi = or disjoint i32 %.038.lcssa.i.i1435, 7
  %i.lfj = icmp slt i32 %i.lfi, %i.lfd
  br i1 %i.lfj, label %.lr.ph189.i.i1459, label %.preheader176.i.i1438

.lr.ph.i.i1464:                                   ; preds = %bb.im, %.lr.ph.i.i1464
  %.0181.i.i1465 = phi ptr [ %i.lhr, %.lr.ph.i.i1464 ], [ %0, %bb.im ] ; 2 uses
  %.034180.i.i1466 = phi ptr [ %i.lhs, %.lr.ph.i.i1464 ], [ %1, %bb.im ] ; 2 uses
  %.038179.i.i1467 = phi i32 [ %i.lhu, %.lr.ph.i.i1464 ], [ 0, %bb.im ]
  %.042178.i.i1468 = phi ptr [ %i.lht, %.lr.ph.i.i1464 ], [ %2, %bb.im ] ; 2 uses
  %i.lfk = load <16 x bfloat>, ptr %.0181.i.i1465, align 1, !tbaa !555
  %i.lfl = fpext fast <16 x bfloat> %i.lfk to <16 x float>
  %i.lfm = load <16 x bfloat>, ptr %.034180.i.i1466, align 1, !tbaa !555
  %i.lfn = fpext fast <16 x bfloat> %i.lfm to <16 x float>
  %i.lfo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lfn, <16 x float> splat (float f0x00800000), i32 4)
  %i.lfp = bitcast <16 x float> %i.lfo to <16 x i32> ; 2 uses
  %i.lfq = lshr <16 x i32> %i.lfp, splat (i32 23)
  %i.lfr = and <16 x i32> %i.lfp, splat (i32 -2139095041)
  %i.lfs = or disjoint <16 x i32> %i.lfr, splat (i32 1056964608)
  %i.lft = bitcast <16 x i32> %i.lfs to <16 x float> ; 3 uses
  %i.lfu = add nsw <16 x i32> %i.lfq, splat (i32 -127)
  %i.lfv = sitofp fast <16 x i32> %i.lfu to <16 x float> ; 2 uses
  %i.lfw = fadd fast <16 x float> %i.lfv, splat (float 1.000000e+00)
  %i.lfx = fcmp fast olt <16 x float> %i.lft, splat (float f0x3F3504F3) ; 2 uses
  %i.lfy = fadd fast <16 x float> %i.lft, splat (float -1.000000e+00)
  %i.lfz = select fast <16 x i1> %i.lfx, <16 x float> %i.lfv, <16 x float> %i.lfw ; 2 uses
  %i.lga = select fast <16 x i1> %i.lfx, <16 x float> %i.lft, <16 x float> zeroinitializer
  %i.lgb = fadd fast <16 x float> %i.lfy, %i.lga  ; 12 uses
  %i.lgc = fmul fast <16 x float> %i.lgb, %i.lgb  ; 2 uses
  %i.lgd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0x3D9021BB), <16 x float> splat (float f0xBDEBD1B8))
  %i.lge = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgd, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0x3DEF251A))
  %i.lgf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lge, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0xBDFE5D4F))
  %i.lgg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgf, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0x3E11E9BF))
  %i.lgh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgg, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0xBE2AAE50))
  %i.lgi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgh, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0x3E4CCEAC))
  %i.lgj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgi, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0xBE7FFFFC))
  %i.lgk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgj, <16 x float> nofpclass(nan inf) %i.lgb, <16 x float> splat (float f0x3EAAAAAA))
  %i.lgl = fmul fast <16 x float> %i.lgc, %i.lgb
  %i.lgm = fmul fast <16 x float> %i.lgl, %i.lgk
  %i.lgn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lfz, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.lgm)
  %i.lgo = fneg fast <16 x float> %i.lgc
  %i.lgp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.lgo, <16 x float> splat (float 5.000000e-01), <16 x float> nofpclass(nan inf) %i.lgn)
  %i.lgq = fadd fast <16 x float> %i.lgp, %i.lgb
  %i.lgr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lfz, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.lgq)
  %i.lgs = fmul fast <16 x float> %i.lgr, %i.lfl
  %i.lgt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float> nofpclass(nan inf) %i.lgs, <16 x float> splat (float f0x42B0C0A5), i32 4)
  %i.lgu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.lgt, <16 x float> splat (float f0xC2B0C0A5), i32 4) ; 2 uses
  %i.lgv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lgu, <16 x float> splat (float f0x3FB8AA3B), <16 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.lgw = tail call fast <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.lgv, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4) ; 3 uses
  %i.lgx = fcmp fast ogt <16 x float> %i.lgw, %i.lgv
  %i.lgy = fadd fast <16 x float> %i.lgw, splat (float -1.000000e+00)
  %i.lgz = select fast <16 x i1> %i.lgx, <16 x float> %i.lgy, <16 x float> %i.lgw ; 2 uses
  %i.lha = fneg fast <16 x float> %i.lgz          ; 2 uses
  %i.lhb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.lha, <16 x float> splat (float f0x3F318000), <16 x float> nofpclass(nan inf) %i.lgu)
  %i.lhc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> %i.lha, <16 x float> splat (float f0xB95E8083), <16 x float> nofpclass(nan inf) %i.lhb) ; 8 uses
  %i.lhd = fmul fast <16 x float> %i.lhc, %i.lhc
  %i.lhe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhc, <16 x float> splat (float f0x39506967), <16 x float> splat (float f0x3AB743CE))
  %i.lhf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhe, <16 x float> nofpclass(nan inf) %i.lhc, <16 x float> splat (float f0x3C088908))
  %i.lhg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhf, <16 x float> nofpclass(nan inf) %i.lhc, <16 x float> splat (float f0x3D2AA9C1))
  %i.lhh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhg, <16 x float> nofpclass(nan inf) %i.lhc, <16 x float> splat (float f0x3E2AAAAA))
  %i.lhi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhh, <16 x float> nofpclass(nan inf) %i.lhc, <16 x float> splat (float 5.000000e-01))
  %i.lhj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.lhi, <16 x float> nofpclass(nan inf) %i.lhd, <16 x float> nofpclass(nan inf) %i.lhc)
  %i.lhk = fadd fast <16 x float> %i.lhj, splat (float 1.000000e+00)
  %i.lhl = tail call <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float> nofpclass(nan inf) %i.lgz, <16 x i32> zeroinitializer, i16 -1, i32 4)
  %i.lhm = shl <16 x i32> %i.lhl, splat (i32 23)
  %i.lhn = add <16 x i32> %i.lhm, splat (i32 1065353216)
  %i.lho = bitcast <16 x i32> %i.lhn to <16 x float>
  %i.lhp = fmul fast <16 x float> %i.lhk, %i.lho
  %i.lhq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.lhp)
  store <16 x bfloat> %i.lhq, ptr %.042178.i.i1468, align 1, !tbaa !555
  %i.lhr = getelementptr inbounds nuw i8, ptr %.0181.i.i1465, i64 32 ; 2 uses
  %i.lhs = getelementptr inbounds nuw i8, ptr %.034180.i.i1466, i64 32 ; 2 uses
  %i.lht = getelementptr inbounds nuw i8, ptr %.042178.i.i1468, i64 32 ; 2 uses
  %i.lhu = add nuw nsw i32 %.038179.i.i1467, 16   ; 2 uses
  %i.lhv = or disjoint i32 %i.lhu, 15
  %i.lhw = icmp slt i32 %i.lhv, %i.lfd
  br i1 %i.lhw, label %.lr.ph.i.i1464, label %.preheader177.loopexit.i.i1469, !llvm.loop !279

.preheader176.i.i1438:                            ; preds = %.lr.ph189.i.i1459, %.preheader177.i.i1433
  %.143.lcssa.i.i1439 = phi ptr [ %.042.lcssa.i.i1434, %.preheader177.i.i1433 ], [ %i.lki, %.lr.ph189.i.i1459 ] ; 2 uses
  %.139.lcssa.i.i1440 = phi i32 [ %.038.lcssa.i.i1435, %.preheader177.i.i1433 ], [ %i.lkj, %.lr.ph189.i.i1459 ] ; 3 uses
  %.135.lcssa.i.i1441 = phi ptr [ %.034.lcssa.i.i1436, %.preheader177.i.i1433 ], [ %i.lkh, %.lr.ph189.i.i1459 ] ; 2 uses
  %.1.lcssa.i.i1442 = phi ptr [ %.0.lcssa.i.i1437, %.preheader177.i.i1433 ], [ %i.lkg, %.lr.ph189.i.i1459 ] ; 2 uses
  %i.lhx = or disjoint i32 %.139.lcssa.i.i1440, 3
  %i.lhy = icmp slt i32 %i.lhx, %i.lfd
  br i1 %i.lhy, label %.lr.ph198.i.i1454, label %.preheader.i.i1443

.lr.ph189.i.i1459:                                ; preds = %.preheader177.i.i1433, %.lr.ph189.i.i1459
  %.1188.i.i1460 = phi ptr [ %i.lkg, %.lr.ph189.i.i1459 ], [ %.0.lcssa.i.i1437, %.preheader177.i.i1433 ] ; 2 uses
  %.135187.i.i1461 = phi ptr [ %i.lkh, %.lr.ph189.i.i1459 ], [ %.034.lcssa.i.i1436, %.preheader177.i.i1433 ] ; 2 uses
  %.139186.i.i1462 = phi i32 [ %i.lkj, %.lr.ph189.i.i1459 ], [ %.038.lcssa.i.i1435, %.preheader177.i.i1433 ]
  %.143185.i.i1463 = phi ptr [ %i.lki, %.lr.ph189.i.i1459 ], [ %.042.lcssa.i.i1434, %.preheader177.i.i1433 ] ; 2 uses
  %i.lhz = load <8 x bfloat>, ptr %.1188.i.i1460, align 1, !tbaa !555
  %i.lia = fpext fast <8 x bfloat> %i.lhz to <8 x float>
  %i.lib = load <8 x bfloat>, ptr %.135187.i.i1461, align 1, !tbaa !555
  %i.lic = fpext fast <8 x bfloat> %i.lib to <8 x float>
  %i.lid = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lic, <8 x float> splat (float f0x00800000))
  %i.lie = bitcast <8 x float> %i.lid to <8 x i32> ; 2 uses
  %i.lif = lshr <8 x i32> %i.lie, splat (i32 23)
  %i.lig = and <8 x i32> %i.lie, splat (i32 -2139095041)
  %i.lih = or disjoint <8 x i32> %i.lig, splat (i32 1056964608)
  %i.lii = bitcast <8 x i32> %i.lih to <8 x float> ; 3 uses
  %i.lij = add nsw <8 x i32> %i.lif, splat (i32 -127)
  %i.lik = sitofp fast <8 x i32> %i.lij to <8 x float> ; 2 uses
  %i.lil = fadd fast <8 x float> %i.lik, splat (float 1.000000e+00)
  %i.lim = fcmp fast olt <8 x float> %i.lii, splat (float f0x3F3504F3) ; 2 uses
  %i.lin = select <8 x i1> %i.lim, <8 x float> %i.lii, <8 x float> zeroinitializer
  %i.lio = fadd fast <8 x float> %i.lii, splat (float -1.000000e+00)
  %i.lip = select fast <8 x i1> %i.lim, <8 x float> %i.lik, <8 x float> %i.lil ; 2 uses
  %i.liq = fadd fast <8 x float> %i.lio, %i.lin   ; 12 uses
  %i.lir = fmul fast <8 x float> %i.liq, %i.liq   ; 2 uses
  %i.lis = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.liq, <8 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <8 x float> splat (float f0xBDEBD1B8))
  %i.lit = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lis, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0x3DEF251A))
  %i.liu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lit, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0xBDFE5D4F))
  %i.liv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.liu, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0x3E11E9BF))
  %i.liw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.liv, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0xBE2AAE50))
  %i.lix = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.liw, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0x3E4CCEAC))
  %i.liy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lix, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0xBE7FFFFC))
  %i.liz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.liy, <8 x float> nofpclass(nan inf) %i.liq, <8 x float> splat (float f0x3EAAAAAA))
  %i.lja = fmul fast <8 x float> %i.lir, %i.liq
  %i.ljb = fmul fast <8 x float> %i.lja, %i.liz
  %i.ljc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lip, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ljb)
  %i.ljd = fneg fast <8 x float> %i.lir
  %i.lje = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ljd, <8 x float> splat (float 5.000000e-01), <8 x float> nofpclass(nan inf) %i.ljc)
  %i.ljf = fadd fast <8 x float> %i.lje, %i.liq
  %i.ljg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lip, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ljf)
  %i.ljh = fmul fast <8 x float> %i.ljg, %i.lia
  %i.lji = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> nofpclass(nan inf) %i.ljh, <8 x float> splat (float f0x42B0C0A5))
  %i.ljj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.lji, <8 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ljk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljj, <8 x float> splat (float f0x3FB8AA3B), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ljl = tail call fast <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ljk, i32 1) ; 2 uses
  %i.ljm = fcmp fast ogt <8 x float> %i.ljl, %i.ljk
  %i.ljn = select <8 x i1> %i.ljm, <8 x float> splat (float 1.000000e+00), <8 x float> zeroinitializer
  %i.ljo = fsub fast <8 x float> %i.ljl, %i.ljn   ; 2 uses
  %i.ljp = fneg fast <8 x float> %i.ljo           ; 2 uses
  %i.ljq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ljp, <8 x float> splat (float f0x3F318000), <8 x float> nofpclass(nan inf) %i.ljj)
  %i.ljr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> %i.ljp, <8 x float> splat (float f0xB95E8083), <8 x float> nofpclass(nan inf) %i.ljq) ; 8 uses
  %i.ljs = fmul fast <8 x float> %i.ljr, %i.ljr
  %i.ljt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljr, <8 x float> nofpclass(nan inf) splat (float f0x39506967), <8 x float> splat (float f0x3AB743CE))
  %i.lju = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljt, <8 x float> nofpclass(nan inf) %i.ljr, <8 x float> splat (float f0x3C088908))
  %i.ljv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.lju, <8 x float> nofpclass(nan inf) %i.ljr, <8 x float> splat (float f0x3D2AA9C1))
  %i.ljw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljv, <8 x float> nofpclass(nan inf) %i.ljr, <8 x float> splat (float f0x3E2AAAAA))
  %i.ljx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljw, <8 x float> nofpclass(nan inf) %i.ljr, <8 x float> splat (float 5.000000e-01))
  %i.ljy = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ljx, <8 x float> nofpclass(nan inf) %i.ljs, <8 x float> nofpclass(nan inf) %i.ljr)
  %i.ljz = fadd fast <8 x float> %i.ljy, splat (float 1.000000e+00)
  %i.lka = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> nofpclass(nan inf) %i.ljo)
  %i.lkb = shl <8 x i32> %i.lka, splat (i32 23)
  %i.lkc = add <8 x i32> %i.lkb, splat (i32 1065353216)
  %i.lkd = bitcast <8 x i32> %i.lkc to <8 x float>
  %i.lke = fmul fast <8 x float> %i.ljz, %i.lkd
  %i.lkf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lke)
  store <8 x bfloat> %i.lkf, ptr %.143185.i.i1463, align 1, !tbaa !555
  %i.lkg = getelementptr inbounds nuw i8, ptr %.1188.i.i1460, i64 16 ; 2 uses
  %i.lkh = getelementptr inbounds nuw i8, ptr %.135187.i.i1461, i64 16 ; 2 uses
  %i.lki = getelementptr inbounds nuw i8, ptr %.143185.i.i1463, i64 16 ; 2 uses
  %i.lkj = add nuw nsw i32 %.139186.i.i1462, 8    ; 3 uses
  %i.lkk = or disjoint i32 %i.lkj, 7
  %i.lkl = icmp slt i32 %i.lkk, %i.lfd
  br i1 %i.lkl, label %.lr.ph189.i.i1459, label %.preheader176.i.i1438, !llvm.loop !280

.preheader.i.i1443:                               ; preds = %.lr.ph198.i.i1454, %.preheader176.i.i1438
  %.244.lcssa.i.i1444 = phi ptr [ %.143.lcssa.i.i1439, %.preheader176.i.i1438 ], [ %i.lpq, %.lr.ph198.i.i1454 ] ; 7 uses
  %.240.lcssa.i.i1445 = phi i32 [ %.139.lcssa.i.i1440, %.preheader176.i.i1438 ], [ %i.lpr, %.lr.ph198.i.i1454 ] ; 6 uses
  %.236.lcssa.i.i1446 = phi ptr [ %.135.lcssa.i.i1441, %.preheader176.i.i1438 ], [ %i.lpp, %.lr.ph198.i.i1454 ] ; 7 uses
  %.2.lcssa.i.i1447 = phi ptr [ %.1.lcssa.i.i1442, %.preheader176.i.i1438 ], [ %i.lpo, %.lr.ph198.i.i1454 ] ; 7 uses
  %.236.lcssa.i.i14467488 = ptrtoaddr ptr %.236.lcssa.i.i1446 to i64
  %.244.lcssa.i.i14447489 = ptrtoaddr ptr %.2.lcssa.i.i1447 to i64
  %.2.lcssa.i.i14477490 = ptrtoaddr ptr %.244.lcssa.i.i1444 to i64 ; 2 uses
  %i.lkm = icmp slt i32 %.240.lcssa.i.i1445, %i.lfd
  br i1 %i.lkm, label %iter.check7510, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7510:                                   ; preds = %.preheader.i.i1443
  %i.lkn = xor i32 %.240.lcssa.i.i1445, -1
  %i.lko = add i32 %i.lfd, %i.lkn                 ; 3 uses
  %i.lkp = zext i32 %i.lko to i64
  %i.lkq = add nuw nsw i64 %i.lkp, 1              ; 5 uses
  %min.iters.check7491 = icmp ult i32 %i.lko, 7
  br i1 %min.iters.check7491, label %.lr.ph207.i.i1448.preheader, label %vector.memcheck7492

vector.memcheck7492:                              ; preds = %iter.check7510
  %i.lkr = sub i64 %.244.lcssa.i.i14447489, %.2.lcssa.i.i14477490
  %diff.check7493 = icmp ugt i64 %i.lkr, -64
  %i.lks = sub i64 %.236.lcssa.i.i14467488, %.2.lcssa.i.i14477490
  %diff.check7494 = icmp ugt i64 %i.lks, -64
  %conflict.rdx7495 = or i1 %diff.check7493, %diff.check7494
  br i1 %conflict.rdx7495, label %.lr.ph207.i.i1448.preheader, label %vector.main.loop.iter.check7496

vector.main.loop.iter.check7496:                  ; preds = %vector.memcheck7492
  %min.iters.check7497 = icmp ult i32 %i.lko, 31
  br i1 %min.iters.check7497, label %vec.epilog.ph7514, label %vector.ph7498

vector.ph7498:                                    ; preds = %vector.main.loop.iter.check7496
  %i.lkt = and i64 %i.lkq, 24
  %n.vec7499 = and i64 %i.lkq, 8589934560         ; 5 uses
  %i.lku = shl nuw nsw i64 %n.vec7499, 1          ; 3 uses
  %i.lkv = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.lku
  %i.lkw = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.lku
  %i.lkx = trunc i64 %n.vec7499 to i32
  %i.lky = add i32 %.240.lcssa.i.i1445, %i.lkx
  %i.lkz = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.lku
  br label %vector.body7500

vector.body7500:                                  ; preds = %vector.ph7498, %vector.body7500
  %index7501 = phi i64 [ 0, %vector.ph7498 ], [ %index.next7507, %vector.body7500 ] ; 2 uses
  %i.lla = shl i64 %index7501, 1                  ; 3 uses
  %next.gep7502 = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.lla
  %next.gep7503 = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.lla
  %next.gep7504 = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.lla
  %wide.load7505 = load <32 x i16>, ptr %next.gep7502, align 2, !tbaa !558
  %i.llb = zext <32 x i16> %wide.load7505 to <32 x i32>
  %i.llc = shl nuw <32 x i32> %i.llb, splat (i32 16)
  %i.lld = bitcast <32 x i32> %i.llc to <32 x float>
  %wide.load7506 = load <32 x i16>, ptr %next.gep7503, align 2, !tbaa !558
  %i.lle = zext <32 x i16> %wide.load7506 to <32 x i32>
  %i.llf = shl nuw <32 x i32> %i.lle, splat (i32 16)
  %i.llg = bitcast <32 x i32> %i.llf to <32 x float>
  %i.llh = tail call fast <32 x float> @llvm.pow.v32f32(<32 x float> %i.llg, <32 x float> %i.lld)
  %i.lli = bitcast <32 x float> %i.llh to <32 x i32>
  %i.llj = lshr <32 x i32> %i.lli, splat (i32 16)
  %i.llk = trunc nuw <32 x i32> %i.llj to <32 x i16>
  store <32 x i16> %i.llk, ptr %next.gep7504, align 2, !tbaa !558
  %index.next7507 = add nuw i64 %index7501, 32    ; 2 uses
  %i.lll = icmp eq i64 %index.next7507, %n.vec7499
  br i1 %i.lll, label %middle.block7508, label %vector.body7500, !llvm.loop !281

middle.block7508:                                 ; preds = %vector.body7500
  %cmp.n7509 = icmp eq i64 %i.lkq, %n.vec7499
  br i1 %cmp.n7509, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7511

vec.epilog.iter.check7511:                        ; preds = %middle.block7508
  %min.epilog.iters.check7513 = icmp eq i64 %i.lkt, 0
  br i1 %min.epilog.iters.check7513, label %.lr.ph207.i.i1448.preheader, label %vec.epilog.ph7514, !prof !561

vec.epilog.ph7514:                                ; preds = %vector.main.loop.iter.check7496, %vec.epilog.iter.check7511
  %vec.epilog.resume.val7515 = phi i64 [ %n.vec7499, %vec.epilog.iter.check7511 ], [ 0, %vector.main.loop.iter.check7496 ]
  %n.vec7516 = and i64 %i.lkq, 8589934584         ; 4 uses
  %i.llm = shl nuw nsw i64 %n.vec7516, 1          ; 3 uses
  %i.lln = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.llm
  %i.llo = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.llm
  %i.llp = trunc i64 %n.vec7516 to i32
  %i.llq = add i32 %.240.lcssa.i.i1445, %i.llp
  %i.llr = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.llm
  br label %vec.epilog.vector.body7517

vec.epilog.vector.body7517:                       ; preds = %vec.epilog.vector.body7517, %vec.epilog.ph7514
  %index7518 = phi i64 [ %vec.epilog.resume.val7515, %vec.epilog.ph7514 ], [ %index.next7524, %vec.epilog.vector.body7517 ] ; 2 uses
  %i.lls = shl i64 %index7518, 1                  ; 3 uses
  %next.gep7519 = getelementptr i8, ptr %.2.lcssa.i.i1447, i64 %i.lls
  %next.gep7520 = getelementptr i8, ptr %.236.lcssa.i.i1446, i64 %i.lls
  %next.gep7521 = getelementptr i8, ptr %.244.lcssa.i.i1444, i64 %i.lls
  %wide.load7522 = load <8 x i16>, ptr %next.gep7519, align 2, !tbaa !558
  %i.llt = zext <8 x i16> %wide.load7522 to <8 x i32>
  %i.llu = shl nuw <8 x i32> %i.llt, splat (i32 16)
  %i.llv = bitcast <8 x i32> %i.llu to <8 x float>
  %wide.load7523 = load <8 x i16>, ptr %next.gep7520, align 2, !tbaa !558
  %i.llw = zext <8 x i16> %wide.load7523 to <8 x i32>
  %i.llx = shl nuw <8 x i32> %i.llw, splat (i32 16)
  %i.lly = bitcast <8 x i32> %i.llx to <8 x float>
  %i.llz = tail call fast <8 x float> @llvm.pow.v8f32(<8 x float> %i.lly, <8 x float> %i.llv)
  %i.lma = bitcast <8 x float> %i.llz to <8 x i32>
  %i.lmb = lshr <8 x i32> %i.lma, splat (i32 16)
  %i.lmc = trunc nuw <8 x i32> %i.lmb to <8 x i16>
  store <8 x i16> %i.lmc, ptr %next.gep7521, align 2, !tbaa !558
  %index.next7524 = add nuw i64 %index7518, 8     ; 2 uses
  %i.lmd = icmp eq i64 %index.next7524, %n.vec7516
  br i1 %i.lmd, label %vec.epilog.middle.block7525, label %vec.epilog.vector.body7517, !llvm.loop !282

vec.epilog.middle.block7525:                      ; preds = %vec.epilog.vector.body7517
  %cmp.n7526 = icmp eq i64 %i.lkq, %n.vec7516
  br i1 %cmp.n7526, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i1448.preheader

.lr.ph207.i.i1448.preheader:                      ; preds = %iter.check7510, %vector.memcheck7492, %vec.epilog.iter.check7511, %vec.epilog.middle.block7525
  %.3206.i.i1449.ph = phi ptr [ %.2.lcssa.i.i1447, %iter.check7510 ], [ %.2.lcssa.i.i1447, %vector.memcheck7492 ], [ %i.lkv, %vec.epilog.iter.check7511 ], [ %i.lln, %vec.epilog.middle.block7525 ] ; 3 uses
  %.337205.i.i1450.ph = phi ptr [ %.236.lcssa.i.i1446, %iter.check7510 ], [ %.236.lcssa.i.i1446, %vector.memcheck7492 ], [ %i.lkw, %vec.epilog.iter.check7511 ], [ %i.llo, %vec.epilog.middle.block7525 ] ; 3 uses
  %.341204.i.i1451.ph = phi i32 [ %.240.lcssa.i.i1445, %iter.check7510 ], [ %.240.lcssa.i.i1445, %vector.memcheck7492 ], [ %i.lky, %vec.epilog.iter.check7511 ], [ %i.llq, %vec.epilog.middle.block7525 ] ; 4 uses
  %.345203.i.i1452.ph = phi ptr [ %.244.lcssa.i.i1444, %iter.check7510 ], [ %.244.lcssa.i.i1444, %vector.memcheck7492 ], [ %i.lkz, %vec.epilog.iter.check7511 ], [ %i.llr, %vec.epilog.middle.block7525 ] ; 3 uses
  %i.lme = sub i32 %i.lfd, %.341204.i.i1451.ph
  %.neg11056 = add i32 %.341204.i.i1451.ph, 1
  %xtraiter10465 = and i32 %i.lme, 1
  %lcmp.mod10466.not = icmp eq i32 %xtraiter10465, 0
  br i1 %lcmp.mod10466.not, label %.lr.ph207.i.i1448.prol.loopexit, label %.lr.ph207.i.i1448.prol

.lr.ph207.i.i1448.prol:                           ; preds = %.lr.ph207.i.i1448.preheader
  %i.lmf = getelementptr inbounds nuw i8, ptr %.3206.i.i1449.ph, i64 2
  %i.lmg = load i16, ptr %.3206.i.i1449.ph, align 2, !tbaa !558
  %i.lmh = zext i16 %i.lmg to i32
  %i.lmi = shl nuw i32 %i.lmh, 16
  %i.lmj = bitcast i32 %i.lmi to float
  %i.lmk = getelementptr inbounds nuw i8, ptr %.337205.i.i1450.ph, i64 2
  %i.lml = load i16, ptr %.337205.i.i1450.ph, align 2, !tbaa !558
  %i.lmm = zext i16 %i.lml to i32
  %i.lmn = shl nuw i32 %i.lmm, 16
  %i.lmo = bitcast i32 %i.lmn to float
  %i.lmp = tail call fast noundef nofpclass(nan inf) float @llvm.pow.f32(float %i.lmo, float %i.lmj)
  %i.lmq = bitcast float %i.lmp to i32
  %i.lmr = lshr i32 %i.lmq, 16
  %i.lms = trunc nuw i32 %i.lmr to i16
  %i.lmt = getelementptr inbounds nuw i8, ptr %.345203.i.i1452.ph, i64 2
  store i16 %i.lms, ptr %.345203.i.i1452.ph, align 2, !tbaa !558
  %i.lmu = add nuw nsw i32 %.341204.i.i1451.ph, 1
  br label %.lr.ph207.i.i1448.prol.loopexit

.lr.ph207.i.i1448.prol.loopexit:                  ; preds = %.lr.ph207.i.i1448.prol, %.lr.ph207.i.i1448.preheader
  %.3206.i.i1449.unr = phi ptr [ %.3206.i.i1449.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lmf, %.lr.ph207.i.i1448.prol ]
  %.337205.i.i1450.unr = phi ptr [ %.337205.i.i1450.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lmk, %.lr.ph207.i.i1448.prol ]
  %.341204.i.i1451.unr = phi i32 [ %.341204.i.i1451.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lmu, %.lr.ph207.i.i1448.prol ]
  %.345203.i.i1452.unr = phi ptr [ %.345203.i.i1452.ph, %.lr.ph207.i.i1448.preheader ], [ %i.lmt, %.lr.ph207.i.i1448.prol ]
  %i.lmv = icmp eq i32 %i.lfd, %.neg11056
  br i1 %i.lmv, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph207.i.i1448

.lr.ph198.i.i1454:                                ; preds = %.preheader176.i.i1438, %.lr.ph198.i.i1454
  %.2197.i.i1455 = phi ptr [ %i.lpo, %.lr.ph198.i.i1454 ], [ %.1.lcssa.i.i1442, %.preheader176.i.i1438 ] ; 2 uses
  %.236196.i.i1456 = phi ptr [ %i.lpp, %.lr.ph198.i.i1454 ], [ %.135.lcssa.i.i1441, %.preheader176.i.i1438 ] ; 2 uses
  %.240195.i.i1457 = phi i32 [ %i.lpr, %.lr.ph198.i.i1454 ], [ %.139.lcssa.i.i1440, %.preheader176.i.i1438 ]
  %.244194.i.i1458 = phi ptr [ %i.lpq, %.lr.ph198.i.i1454 ], [ %.143.lcssa.i.i1439, %.preheader176.i.i1438 ] ; 2 uses
  %i.lmw = load i64, ptr %.2197.i.i1455, align 1, !tbaa !555
  %i.lmx = insertelement <2 x i64> poison, i64 %i.lmw, i64 0
  %i.lmy = bitcast <2 x i64> %i.lmx to <8 x i16>
  %i.lmz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lmy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lna = bitcast <8 x i16> %i.lmz to <4 x float>
  %i.lnb = load i64, ptr %.236196.i.i1456, align 1, !tbaa !555
  %i.lnc = insertelement <2 x i64> poison, i64 %i.lnb, i64 0
  %i.lnd = bitcast <2 x i64> %i.lnc to <8 x i16>
  %i.lne = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lnd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lnf = bitcast <8 x i16> %i.lne to <4 x float>
  %i.lng = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lnf, <4 x float> splat (float f0x00800000))
  %i.lnh = bitcast <4 x float> %i.lng to <4 x i32> ; 2 uses
  %i.lni = lshr <4 x i32> %i.lnh, splat (i32 23)
  %i.lnj = and <4 x i32> %i.lnh, splat (i32 -2139095041)
  %i.lnk = or disjoint <4 x i32> %i.lnj, splat (i32 1056964608)
  %i.lnl = bitcast <4 x i32> %i.lnk to <4 x float> ; 3 uses
  %i.lnm = add nsw <4 x i32> %i.lni, splat (i32 -127)
  %i.lnn = sitofp fast <4 x i32> %i.lnm to <4 x float> ; 2 uses
  %i.lno = fadd fast <4 x float> %i.lnn, splat (float 1.000000e+00)
  %i.lnp = fcmp fast olt <4 x float> %i.lnl, splat (float f0x3F3504F3) ; 2 uses
  %i.lnq = select <4 x i1> %i.lnp, <4 x float> %i.lnl, <4 x float> zeroinitializer
  %i.lnr = fadd fast <4 x float> %i.lnl, splat (float -1.000000e+00)
  %i.lns = select fast <4 x i1> %i.lnp, <4 x float> %i.lnn, <4 x float> %i.lno ; 2 uses
  %i.lnt = fadd fast <4 x float> %i.lnr, %i.lnq   ; 12 uses
  %i.lnu = fmul fast <4 x float> %i.lnt, %i.lnt   ; 2 uses
  %i.lnv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnt, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.lnw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnv, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0x3DEF251A))
  %i.lnx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnw, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0xBDFE5D4F))
  %i.lny = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnx, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0x3E11E9BF))
  %i.lnz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lny, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0xBE2AAE50))
  %i.loa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lnz, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0x3E4CCEAC))
  %i.lob = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.loa, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0xBE7FFFFC))
  %i.loc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lob, <4 x float> nofpclass(nan inf) %i.lnt, <4 x float> splat (float f0x3EAAAAAA))
  %i.lod = fmul fast <4 x float> %i.lnu, %i.lnt
  %i.loe = fmul fast <4 x float> %i.lod, %i.loc
  %i.lof = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.loe)
  %i.log = fneg fast <4 x float> %i.lnu
  %i.loh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.log, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.lof)
  %i.loi = fadd fast <4 x float> %i.loh, %i.lnt
  %i.loj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lns, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.loi)
  %i.lok = fmul fast <4 x float> %i.loj, %i.lna
  %i.lol = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.lok, <4 x float> splat (float f0x42B0C0A5))
  %i.lom = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.lol, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lon = fmul fast <4 x float> %i.lom, splat (float f0x3FB8AA3B)
  %i.loo = fadd fast <4 x float> %i.lon, splat (float 5.000000e-01) ; 2 uses
  %i.lop = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.loo)
  %i.loq = sitofp fast <4 x i32> %i.lop to <4 x float> ; 2 uses
  %i.lor = fcmp fast olt <4 x float> %i.loo, %i.loq
  %i.los = select <4 x i1> %i.lor, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lot = fsub fast <4 x float> %i.loq, %i.los   ; 2 uses
  %i.lou = fneg fast <4 x float> %i.lot           ; 2 uses
  %i.lov = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lou, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.lom)
  %i.low = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.lou, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.lov) ; 8 uses
  %i.lox = fmul fast <4 x float> %i.low, %i.low
  %i.loy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.low, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.loz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.loy, <4 x float> nofpclass(nan inf) %i.low, <4 x float> splat (float f0x3C088908))
  %i.lpa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.loz, <4 x float> nofpclass(nan inf) %i.low, <4 x float> splat (float f0x3D2AA9C1))
  %i.lpb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lpa, <4 x float> nofpclass(nan inf) %i.low, <4 x float> splat (float f0x3E2AAAAA))
  %i.lpc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lpb, <4 x float> nofpclass(nan inf) %i.low, <4 x float> splat (float 5.000000e-01))
  %i.lpd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.lpc, <4 x float> nofpclass(nan inf) %i.lox, <4 x float> nofpclass(nan inf) %i.low)
  %i.lpe = fadd fast <4 x float> %i.lpd, splat (float 1.000000e+00)
  %i.lpf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lot)
  %i.lpg = shl <4 x i32> %i.lpf, splat (i32 23)
  %i.lph = add <4 x i32> %i.lpg, splat (i32 1065353216)
  %i.lpi = bitcast <4 x i32> %i.lph to <4 x float>
  %i.lpj = fmul fast <4 x float> %i.lpe, %i.lpi
  %i.lpk = shufflevector <4 x float> %i.lpj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.lpl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.lpk)
end_hunk_9
begin_hunk_10_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.nsr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nsa, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nsq)
  %i.nss = fmul fast <4 x float> %i.nsr, %i.nrh
  %i.nst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.nss, <4 x float> splat (float f0x42B0C0A5))
  %i.nsu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.nst, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.nsv = fmul fast <4 x float> %i.nsu, splat (float f0x3FB8AA3B)
  %i.nsw = fadd fast <4 x float> %i.nsv, splat (float 5.000000e-01) ; 2 uses
  %i.nsx = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nsw)
  %i.nsy = sitofp fast <4 x i32> %i.nsx to <4 x float> ; 2 uses
  %i.nsz = fcmp fast olt <4 x float> %i.nsw, %i.nsy
  %i.nta = select <4 x i1> %i.nsz, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ntb = fsub fast <4 x float> %i.nsy, %i.nta   ; 2 uses
  %i.ntc = fneg fast <4 x float> %i.ntb           ; 2 uses
  %i.ntd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ntc, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.nsu)
  %i.nte = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.ntc, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.ntd) ; 8 uses
  %i.ntf = fmul fast <4 x float> %i.nte, %i.nte
  %i.ntg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nte, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.nth = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntg, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3C088908))
  %i.nti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nth, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3D2AA9C1))
  %i.ntj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.nti, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float f0x3E2AAAAA))
  %i.ntk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntj, <4 x float> nofpclass(nan inf) %i.nte, <4 x float> splat (float 5.000000e-01))
  %i.ntl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ntk, <4 x float> nofpclass(nan inf) %i.ntf, <4 x float> nofpclass(nan inf) %i.nte)
  %i.ntm = fadd fast <4 x float> %i.ntl, splat (float 1.000000e+00)
  %i.ntn = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ntb)
  %i.nto = shl <4 x i32> %i.ntn, splat (i32 23)
  %i.ntp = add <4 x i32> %i.nto, splat (i32 1065353216)
  %i.ntq = bitcast <4 x i32> %i.ntp to <4 x float>
  %i.ntr = fmul fast <4 x float> %i.ntm, %i.ntq
  %i.nts = shufflevector <4 x float> %i.ntr, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ntt = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nts)
  %i.ntu = bitcast <8 x bfloat> %i.ntt to <2 x i64>
  %i.ntv = extractelement <2 x i64> %i.ntu, i64 0
  store i64 %i.ntv, ptr %.232163.i.i1305, align 1, !tbaa !555
  %i.ntw = getelementptr inbounds nuw i8, ptr %.2164.i.i1304, i64 2
  %i.ntx = getelementptr inbounds nuw i8, ptr %.232163.i.i1305, i64 8
  %i.nty = add nuw nsw i32 %.0165.i.i1303, 1      ; 2 uses
  %exitcond.not.i87.i1306 = icmp eq i32 %i.nty, %.sroa.speculated98.i1300
  br i1 %exitcond.not.i87.i1306, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i86.i1302, !llvm.loop !308

bb.jr:                                            ; preds = %bb.a
  %.sroa.speculated104.i = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1470 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.ntz = mul i32 %.sroa.speculated.i1470, %.sroa.speculated104.i ; 48 uses
  %i.nua = icmp eq i32 %5, %6
  br i1 %i.nua, label %bb.js, label %bb.ko

bb.js:                                            ; preds = %bb.jr
  %i.nub = icmp eq i32 %3, %4
  br i1 %i.nub, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.nuc = icmp sgt i32 %i.ntz, 15
  br i1 %i.nuc, label %.lr.ph.i.i1514, label %.preheader133.i.i

.preheader133.loopexit.i.i:                       ; preds = %.lr.ph.i.i1514
  %i.nud = and i32 %i.ntz, 2147483632
  br label %.preheader133.i.i

.preheader133.i.i:                                ; preds = %.preheader133.loopexit.i.i, %bb.jt
  %.042.lcssa.i.i1500 = phi ptr [ %2, %bb.jt ], [ %i.nvy, %.preheader133.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1501 = phi i32 [ 0, %bb.jt ], [ %i.nud, %.preheader133.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1502 = phi ptr [ %1, %bb.jt ], [ %i.nvx, %.preheader133.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1503 = phi ptr [ %0, %bb.jt ], [ %i.nvw, %.preheader133.loopexit.i.i ] ; 2 uses
  %i.nue = or disjoint i32 %.038.lcssa.i.i1501, 7
  %i.nuf = icmp slt i32 %i.nue, %i.ntz
  br i1 %i.nuf, label %.lr.ph145.i.i, label %.preheader132.i.i

.lr.ph.i.i1514:                                   ; preds = %bb.jt, %.lr.ph.i.i1514
  %.0137.i.i = phi ptr [ %i.nvw, %.lr.ph.i.i1514 ], [ %0, %bb.jt ] ; 2 uses
  %.034136.i.i = phi ptr [ %i.nvx, %.lr.ph.i.i1514 ], [ %1, %bb.jt ] ; 2 uses
  %.038135.i.i = phi i32 [ %i.nvz, %.lr.ph.i.i1514 ], [ 0, %bb.jt ]
  %.042134.i.i = phi ptr [ %i.nvy, %.lr.ph.i.i1514 ], [ %2, %bb.jt ] ; 2 uses
  %i.nug = load <16 x bfloat>, ptr %.0137.i.i, align 1, !tbaa !555 ; 3 uses
  %i.nuh = fpext fast <16 x bfloat> %i.nug to <16 x float> ; 2 uses
  %i.nui = load <16 x bfloat>, ptr %.034136.i.i, align 1, !tbaa !555 ; 4 uses
  %i.nuj = fpext fast <16 x bfloat> %i.nui to <16 x float>
  %i.nuk = fcmp fast one <16 x bfloat> %i.nui, zeroinitializer
  %i.nul = fcmp fast one <16 x bfloat> %i.nug, zeroinitializer
  %i.num = fcmp fast olt <16 x bfloat> %i.nui, zeroinitializer
  %i.nun = fcmp fast olt <16 x bfloat> %i.nug, zeroinitializer
  %i.nuo = select fast <16 x i1> %i.nun, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.nup = select fast <16 x i1> %i.num, <16 x float> %i.nuo, <16 x float> zeroinitializer
  %i.nuq = fdiv fast <16 x float> %i.nuh, %i.nuj  ; 2 uses
  %i.nur = bitcast <16 x float> %i.nuq to <16 x i32>
  %i.nus = and <16 x i32> %i.nur, splat (i32 -2147483648)
  %i.nut = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.nuq) ; 3 uses
  %i.nuu = fcmp fast ogt <16 x float> %i.nut, splat (float 1.000000e+00) ; 2 uses
  %i.nuv = select fast <16 x i1> %i.nuu, <16 x float> splat (float -1.000000e+00), <16 x float> %i.nut
  %i.nuw = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.nut, <16 x float> splat (float 1.000000e+00))
  %i.nux = fdiv fast <16 x float> %i.nuv, %i.nuw  ; 3 uses
  %i.nuy = fmul fast <16 x float> %i.nux, %i.nux  ; 3 uses
  %i.nuz = fmul fast <16 x float> %i.nuy, %i.nuy  ; 7 uses
  %i.nva = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.nvb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nva, <16 x float> splat (float f0xBE117200))
  %i.nvc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvb, <16 x float> splat (float f0xBEAAAA53))
  %i.nvd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.nve = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvd, <16 x float> splat (float f0x3DD9ED24))
  %i.nvf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nve, <16 x float> splat (float f0x3E4CB974))
  %i.nvg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuz, <16 x float> nofpclass(nan inf) %i.nvf, <16 x float> splat (float 1.000000e+00))
  %i.nvh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nuy, <16 x float> nofpclass(nan inf) %i.nvc, <16 x float> nofpclass(nan inf) %i.nvg)
  %i.nvi = fmul fast <16 x float> %i.nvh, %i.nux
  %i.nvj = select fast <16 x i1> %i.nuu, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.nvk = fadd fast <16 x float> %i.nvi, %i.nvj
  %i.nvl = bitcast <16 x float> %i.nvk to <16 x i32>
  %i.nvm = or <16 x i32> %i.nus, %i.nvl
  %i.nvn = bitcast <16 x i32> %i.nvm to <16 x float>
  %i.nvo = fadd fast <16 x float> %i.nup, %i.nvn
  %i.nvp = bitcast <16 x bfloat> %i.nui to <16 x i16>
  %i.nvq = icmp slt <16 x i16> %i.nvp, zeroinitializer
  %i.nvr = select fast <16 x i1> %i.nvq, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.nvs = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.nuh)
  %i.nvt = select <16 x i1> %i.nuk, <16 x float> %i.nvo, <16 x float> %i.nvs
  %i.nvu = select <16 x i1> %i.nul, <16 x float> %i.nvt, <16 x float> %i.nvr
  %i.nvv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.nvu)
  store <16 x bfloat> %i.nvv, ptr %.042134.i.i, align 1, !tbaa !555
  %i.nvw = getelementptr inbounds nuw i8, ptr %.0137.i.i, i64 32 ; 2 uses
  %i.nvx = getelementptr inbounds nuw i8, ptr %.034136.i.i, i64 32 ; 2 uses
  %i.nvy = getelementptr inbounds nuw i8, ptr %.042134.i.i, i64 32 ; 2 uses
  %i.nvz = add nuw nsw i32 %.038135.i.i, 16       ; 2 uses
  %i.nwa = or disjoint i32 %i.nvz, 15
  %i.nwb = icmp slt i32 %i.nwa, %i.ntz
  br i1 %i.nwb, label %.lr.ph.i.i1514, label %.preheader133.loopexit.i.i, !llvm.loop !309

.preheader132.i.i:                                ; preds = %.lr.ph145.i.i, %.preheader133.i.i
  %.143.lcssa.i.i1504 = phi ptr [ %.042.lcssa.i.i1500, %.preheader133.i.i ], [ %i.nyb, %.lr.ph145.i.i ] ; 2 uses
  %.139.lcssa.i.i1505 = phi i32 [ %.038.lcssa.i.i1501, %.preheader133.i.i ], [ %i.nyc, %.lr.ph145.i.i ] ; 3 uses
  %.135.lcssa.i.i1506 = phi ptr [ %.034.lcssa.i.i1502, %.preheader133.i.i ], [ %i.nya, %.lr.ph145.i.i ] ; 2 uses
  %.1.lcssa.i.i1507 = phi ptr [ %.0.lcssa.i.i1503, %.preheader133.i.i ], [ %i.nxz, %.lr.ph145.i.i ] ; 2 uses
  %i.nwc = or disjoint i32 %.139.lcssa.i.i1505, 3
  %i.nwd = icmp slt i32 %i.nwc, %i.ntz
  br i1 %i.nwd, label %.lr.ph154.i.i, label %.preheader.i.i1508

.lr.ph145.i.i:                                    ; preds = %.preheader133.i.i, %.lr.ph145.i.i
  %.1144.i.i = phi ptr [ %i.nxz, %.lr.ph145.i.i ], [ %.0.lcssa.i.i1503, %.preheader133.i.i ] ; 2 uses
  %.135143.i.i = phi ptr [ %i.nya, %.lr.ph145.i.i ], [ %.034.lcssa.i.i1502, %.preheader133.i.i ] ; 2 uses
  %.139142.i.i = phi i32 [ %i.nyc, %.lr.ph145.i.i ], [ %.038.lcssa.i.i1501, %.preheader133.i.i ]
  %.143141.i.i = phi ptr [ %i.nyb, %.lr.ph145.i.i ], [ %.042.lcssa.i.i1500, %.preheader133.i.i ] ; 2 uses
  %i.nwe = load <8 x bfloat>, ptr %.1144.i.i, align 1, !tbaa !555 ; 3 uses
  %i.nwf = fpext fast <8 x bfloat> %i.nwe to <8 x float> ; 2 uses
  %i.nwg = load <8 x bfloat>, ptr %.135143.i.i, align 1, !tbaa !555 ; 4 uses
  %i.nwh = fpext fast <8 x bfloat> %i.nwg to <8 x float>
  %i.nwi = fcmp fast ueq <8 x bfloat> %i.nwg, zeroinitializer ; 2 uses
  %i.nwj = fcmp fast ueq <8 x bfloat> %i.nwe, zeroinitializer ; 2 uses
  %.not131.i.i = or <8 x i1> %i.nwj, %i.nwi
  %i.nwk = bitcast <8 x float> %i.nwf to <8 x i32>
  %i.nwl = and <8 x i32> %i.nwk, splat (i32 -2147483648)
  %i.nwm = fcmp fast olt <8 x bfloat> %i.nwg, zeroinitializer
  %i.nwn = fcmp fast olt <8 x bfloat> %i.nwe, zeroinitializer
  %i.nwo = select <8 x i1> %i.nwn, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.nwp = select <8 x i1> %i.nwm, <8 x float> %i.nwo, <8 x float> zeroinitializer
  %i.nwq = fdiv fast <8 x float> %i.nwf, %i.nwh   ; 2 uses
  %i.nwr = bitcast <8 x float> %i.nwq to <8 x i32>
  %i.nws = and <8 x i32> %i.nwr, splat (i32 -2147483648)
  %i.nwt = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.nwq) ; 3 uses
  %i.nwu = fcmp fast ogt <8 x float> %i.nwt, splat (float 1.000000e+00) ; 2 uses
  %i.nwv = select <8 x i1> %i.nwu, <8 x float> splat (float -1.000000e+00), <8 x float> %i.nwt
  %i.nww = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.nwt, <8 x float> splat (float 1.000000e+00))
  %i.nwx = fdiv fast <8 x float> %i.nwv, %i.nww   ; 3 uses
  %i.nwy = fmul fast <8 x float> %i.nwx, %i.nwx   ; 3 uses
  %i.nwz = fmul fast <8 x float> %i.nwy, %i.nwy   ; 7 uses
  %i.nxa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.nxb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxa, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.nxc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxb, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.nxd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.nxe = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxd, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.nxf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxe, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.nxg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwz, <8 x float> nofpclass(nan inf) %i.nxf, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.nxh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nwy, <8 x float> nofpclass(nan inf) %i.nxc, <8 x float> nofpclass(nan inf) %i.nxg)
  %i.nxi = fmul fast <8 x float> %i.nxh, %i.nwx
  %i.nxj = select <8 x i1> %i.nwu, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.nxk = fadd fast <8 x float> %i.nxi, %i.nxj
  %i.nxl = bitcast <8 x float> %i.nxk to <8 x i32>
  %i.nxm = or <8 x i32> %i.nws, %i.nxl
  %i.nxn = bitcast <8 x i32> %i.nxm to <8 x float>
  %i.nxo = fadd fast <8 x float> %i.nwp, %i.nxn
  %i.nxp = bitcast <8 x bfloat> %i.nwg to <8 x i16>
  %i.nxq = or disjoint <8 x i32> %i.nwl, splat (i32 1070141403)
  %isneg.i.i = icmp sgt <8 x i16> %i.nxp, splat (i16 -1)
  %i.nxr = select <8 x i1> %isneg.i.i, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.nxs = bitcast <8 x float> %i.nxo to <8 x i32>
  %i.nxt = select <8 x i1> %.not131.i.i, <8 x i32> zeroinitializer, <8 x i32> %i.nxs
  %i.nxu = select <8 x i1> %i.nwi, <8 x i32> %i.nxq, <8 x i32> zeroinitializer
  %i.nxv = select <8 x i1> %i.nwj, <8 x i32> %i.nxr, <8 x i32> %i.nxu
  %i.nxw = or <8 x i32> %i.nxt, %i.nxv
  %i.nxx = bitcast <8 x i32> %i.nxw to <8 x float>
  %i.nxy = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.nxx)
  store <8 x bfloat> %i.nxy, ptr %.143141.i.i, align 1, !tbaa !555
  %i.nxz = getelementptr inbounds nuw i8, ptr %.1144.i.i, i64 16 ; 2 uses
  %i.nya = getelementptr inbounds nuw i8, ptr %.135143.i.i, i64 16 ; 2 uses
  %i.nyb = getelementptr inbounds nuw i8, ptr %.143141.i.i, i64 16 ; 2 uses
  %i.nyc = add nuw nsw i32 %.139142.i.i, 8        ; 3 uses
  %i.nyd = or disjoint i32 %i.nyc, 7
  %i.nye = icmp slt i32 %i.nyd, %i.ntz
  br i1 %i.nye, label %.lr.ph145.i.i, label %.preheader132.i.i, !llvm.loop !310

.preheader.i.i1508:                               ; preds = %.lr.ph154.i.i, %.preheader132.i.i
  %.244.lcssa.i.i1509 = phi ptr [ %.143.lcssa.i.i1504, %.preheader132.i.i ], [ %i.ocz, %.lr.ph154.i.i ] ; 7 uses
  %.240.lcssa.i.i1510 = phi i32 [ %.139.lcssa.i.i1505, %.preheader132.i.i ], [ %i.oda, %.lr.ph154.i.i ] ; 6 uses
  %.236.lcssa.i.i1511 = phi ptr [ %.135.lcssa.i.i1506, %.preheader132.i.i ], [ %i.ocy, %.lr.ph154.i.i ] ; 7 uses
  %.2.lcssa.i.i1512 = phi ptr [ %.1.lcssa.i.i1507, %.preheader132.i.i ], [ %i.ocx, %.lr.ph154.i.i ] ; 7 uses
  %.236.lcssa.i.i15117321 = ptrtoaddr ptr %.236.lcssa.i.i1511 to i64
  %.244.lcssa.i.i15097322 = ptrtoaddr ptr %.2.lcssa.i.i1512 to i64
  %.2.lcssa.i.i15127323 = ptrtoaddr ptr %.244.lcssa.i.i1509 to i64 ; 2 uses
  %i.nyf = icmp slt i32 %.240.lcssa.i.i1510, %i.ntz
  br i1 %i.nyf, label %iter.check7343, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7343:                                   ; preds = %.preheader.i.i1508
  %i.nyg = xor i32 %.240.lcssa.i.i1510, -1
  %i.nyh = add i32 %i.ntz, %i.nyg                 ; 3 uses
  %i.nyi = zext i32 %i.nyh to i64
  %i.nyj = add nuw nsw i64 %i.nyi, 1              ; 5 uses
  %min.iters.check7324 = icmp ult i32 %i.nyh, 7
  br i1 %min.iters.check7324, label %.lr.ph163.i.i.preheader, label %vector.memcheck7325

vector.memcheck7325:                              ; preds = %iter.check7343
  %i.nyk = sub i64 %.244.lcssa.i.i15097322, %.2.lcssa.i.i15127323
  %diff.check7326 = icmp ugt i64 %i.nyk, -64
  %i.nyl = sub i64 %.236.lcssa.i.i15117321, %.2.lcssa.i.i15127323
  %diff.check7327 = icmp ugt i64 %i.nyl, -64
  %conflict.rdx7328 = or i1 %diff.check7326, %diff.check7327
  br i1 %conflict.rdx7328, label %.lr.ph163.i.i.preheader, label %vector.main.loop.iter.check7329

vector.main.loop.iter.check7329:                  ; preds = %vector.memcheck7325
  %min.iters.check7330 = icmp ult i32 %i.nyh, 31
  br i1 %min.iters.check7330, label %vec.epilog.ph7347, label %vector.ph7331

vector.ph7331:                                    ; preds = %vector.main.loop.iter.check7329
  %i.nym = and i64 %i.nyj, 24
  %n.vec7332 = and i64 %i.nyj, 8589934560         ; 5 uses
  %i.nyn = shl nuw nsw i64 %n.vec7332, 1          ; 3 uses
  %i.nyo = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nyn
  %i.nyp = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nyn
  %i.nyq = trunc i64 %n.vec7332 to i32
  %i.nyr = add i32 %.240.lcssa.i.i1510, %i.nyq
  %i.nys = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nyn
  br label %vector.body7333

vector.body7333:                                  ; preds = %vector.ph7331, %vector.body7333
  %index7334 = phi i64 [ 0, %vector.ph7331 ], [ %index.next7340, %vector.body7333 ] ; 2 uses
  %i.nyt = shl i64 %index7334, 1                  ; 3 uses
  %next.gep7335 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nyt
  %next.gep7336 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nyt
  %next.gep7337 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nyt
  %wide.load7338 = load <32 x i16>, ptr %next.gep7335, align 2, !tbaa !558
  %i.nyu = zext <32 x i16> %wide.load7338 to <32 x i32>
  %i.nyv = shl nuw <32 x i32> %i.nyu, splat (i32 16)
  %i.nyw = bitcast <32 x i32> %i.nyv to <32 x float>
  %wide.load7339 = load <32 x i16>, ptr %next.gep7336, align 2, !tbaa !558
  %i.nyx = zext <32 x i16> %wide.load7339 to <32 x i32>
  %i.nyy = shl nuw <32 x i32> %i.nyx, splat (i32 16)
  %i.nyz = bitcast <32 x i32> %i.nyy to <32 x float>
  %i.nza = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.nyw, <32 x float> %i.nyz)
  %i.nzb = bitcast <32 x float> %i.nza to <32 x i32>
  %i.nzc = lshr <32 x i32> %i.nzb, splat (i32 16)
  %i.nzd = trunc nuw <32 x i32> %i.nzc to <32 x i16>
  store <32 x i16> %i.nzd, ptr %next.gep7337, align 2, !tbaa !558
  %index.next7340 = add nuw i64 %index7334, 32    ; 2 uses
  %i.nze = icmp eq i64 %index.next7340, %n.vec7332
  br i1 %i.nze, label %middle.block7341, label %vector.body7333, !llvm.loop !311

middle.block7341:                                 ; preds = %vector.body7333
  %cmp.n7342 = icmp eq i64 %i.nyj, %n.vec7332
  br i1 %cmp.n7342, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7344

vec.epilog.iter.check7344:                        ; preds = %middle.block7341
  %min.epilog.iters.check7346 = icmp eq i64 %i.nym, 0
  br i1 %min.epilog.iters.check7346, label %.lr.ph163.i.i.preheader, label %vec.epilog.ph7347, !prof !561

vec.epilog.ph7347:                                ; preds = %vector.main.loop.iter.check7329, %vec.epilog.iter.check7344
  %vec.epilog.resume.val7348 = phi i64 [ %n.vec7332, %vec.epilog.iter.check7344 ], [ 0, %vector.main.loop.iter.check7329 ]
  %n.vec7349 = and i64 %i.nyj, 8589934584         ; 4 uses
  %i.nzf = shl nuw nsw i64 %n.vec7349, 1          ; 3 uses
  %i.nzg = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nzf
  %i.nzh = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nzf
  %i.nzi = trunc i64 %n.vec7349 to i32
  %i.nzj = add i32 %.240.lcssa.i.i1510, %i.nzi
  %i.nzk = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nzf
  br label %vec.epilog.vector.body7350

vec.epilog.vector.body7350:                       ; preds = %vec.epilog.vector.body7350, %vec.epilog.ph7347
  %index7351 = phi i64 [ %vec.epilog.resume.val7348, %vec.epilog.ph7347 ], [ %index.next7357, %vec.epilog.vector.body7350 ] ; 2 uses
  %i.nzl = shl i64 %index7351, 1                  ; 3 uses
  %next.gep7352 = getelementptr i8, ptr %.2.lcssa.i.i1512, i64 %i.nzl
  %next.gep7353 = getelementptr i8, ptr %.236.lcssa.i.i1511, i64 %i.nzl
  %next.gep7354 = getelementptr i8, ptr %.244.lcssa.i.i1509, i64 %i.nzl
  %wide.load7355 = load <8 x i16>, ptr %next.gep7352, align 2, !tbaa !558
  %i.nzm = zext <8 x i16> %wide.load7355 to <8 x i32>
  %i.nzn = shl nuw <8 x i32> %i.nzm, splat (i32 16)
  %i.nzo = bitcast <8 x i32> %i.nzn to <8 x float>
  %wide.load7356 = load <8 x i16>, ptr %next.gep7353, align 2, !tbaa !558
  %i.nzp = zext <8 x i16> %wide.load7356 to <8 x i32>
  %i.nzq = shl nuw <8 x i32> %i.nzp, splat (i32 16)
  %i.nzr = bitcast <8 x i32> %i.nzq to <8 x float>
  %i.nzs = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.nzo, <8 x float> %i.nzr)
  %i.nzt = bitcast <8 x float> %i.nzs to <8 x i32>
  %i.nzu = lshr <8 x i32> %i.nzt, splat (i32 16)
  %i.nzv = trunc nuw <8 x i32> %i.nzu to <8 x i16>
  store <8 x i16> %i.nzv, ptr %next.gep7354, align 2, !tbaa !558
  %index.next7357 = add nuw i64 %index7351, 8     ; 2 uses
  %i.nzw = icmp eq i64 %index.next7357, %n.vec7349
  br i1 %i.nzw, label %vec.epilog.middle.block7358, label %vec.epilog.vector.body7350, !llvm.loop !312

vec.epilog.middle.block7358:                      ; preds = %vec.epilog.vector.body7350
  %cmp.n7359 = icmp eq i64 %i.nyj, %n.vec7349
  br i1 %cmp.n7359, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i.preheader

.lr.ph163.i.i.preheader:                          ; preds = %iter.check7343, %vector.memcheck7325, %vec.epilog.iter.check7344, %vec.epilog.middle.block7358
  %.3162.i.i.ph = phi ptr [ %.2.lcssa.i.i1512, %iter.check7343 ], [ %.2.lcssa.i.i1512, %vector.memcheck7325 ], [ %i.nyo, %vec.epilog.iter.check7344 ], [ %i.nzg, %vec.epilog.middle.block7358 ] ; 3 uses
  %.337161.i.i.ph = phi ptr [ %.236.lcssa.i.i1511, %iter.check7343 ], [ %.236.lcssa.i.i1511, %vector.memcheck7325 ], [ %i.nyp, %vec.epilog.iter.check7344 ], [ %i.nzh, %vec.epilog.middle.block7358 ] ; 3 uses
  %.341160.i.i.ph = phi i32 [ %.240.lcssa.i.i1510, %iter.check7343 ], [ %.240.lcssa.i.i1510, %vector.memcheck7325 ], [ %i.nyr, %vec.epilog.iter.check7344 ], [ %i.nzj, %vec.epilog.middle.block7358 ] ; 4 uses
  %.345159.i.i.ph = phi ptr [ %.244.lcssa.i.i1509, %iter.check7343 ], [ %.244.lcssa.i.i1509, %vector.memcheck7325 ], [ %i.nys, %vec.epilog.iter.check7344 ], [ %i.nzk, %vec.epilog.middle.block7358 ] ; 3 uses
  %i.nzx = sub i32 %i.ntz, %.341160.i.i.ph
  %.neg11052 = add i32 %.341160.i.i.ph, 1
  %xtraiter10457 = and i32 %i.nzx, 1
  %lcmp.mod10458.not = icmp eq i32 %xtraiter10457, 0
  br i1 %lcmp.mod10458.not, label %.lr.ph163.i.i.prol.loopexit, label %.lr.ph163.i.i.prol

.lr.ph163.i.i.prol:                               ; preds = %.lr.ph163.i.i.preheader
  %i.nzy = getelementptr inbounds nuw i8, ptr %.3162.i.i.ph, i64 2
  %i.nzz = load i16, ptr %.3162.i.i.ph, align 2, !tbaa !558
  %i.oaa = zext i16 %i.nzz to i32
  %i.oab = shl nuw i32 %i.oaa, 16
  %i.oac = bitcast i32 %i.oab to float
  %i.oad = getelementptr inbounds nuw i8, ptr %.337161.i.i.ph, i64 2
  %i.oae = load i16, ptr %.337161.i.i.ph, align 2, !tbaa !558
  %i.oaf = zext i16 %i.oae to i32
  %i.oag = shl nuw i32 %i.oaf, 16
  %i.oah = bitcast i32 %i.oag to float
  %i.oai = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.oac, float %i.oah)
  %i.oaj = bitcast float %i.oai to i32
  %i.oak = lshr i32 %i.oaj, 16
  %i.oal = trunc nuw i32 %i.oak to i16
  %i.oam = getelementptr inbounds nuw i8, ptr %.345159.i.i.ph, i64 2
  store i16 %i.oal, ptr %.345159.i.i.ph, align 2, !tbaa !558
  %i.oan = add nuw nsw i32 %.341160.i.i.ph, 1
  br label %.lr.ph163.i.i.prol.loopexit

.lr.ph163.i.i.prol.loopexit:                      ; preds = %.lr.ph163.i.i.prol, %.lr.ph163.i.i.preheader
  %.3162.i.i.unr = phi ptr [ %.3162.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.nzy, %.lr.ph163.i.i.prol ]
  %.337161.i.i.unr = phi ptr [ %.337161.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oad, %.lr.ph163.i.i.prol ]
  %.341160.i.i.unr = phi i32 [ %.341160.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oan, %.lr.ph163.i.i.prol ]
  %.345159.i.i.unr = phi ptr [ %.345159.i.i.ph, %.lr.ph163.i.i.preheader ], [ %i.oam, %.lr.ph163.i.i.prol ]
  %i.oao = icmp eq i32 %i.ntz, %.neg11052
  br i1 %i.oao, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i

.lr.ph154.i.i:                                    ; preds = %.preheader132.i.i, %.lr.ph154.i.i
  %.2153.i.i = phi ptr [ %i.ocx, %.lr.ph154.i.i ], [ %.1.lcssa.i.i1507, %.preheader132.i.i ] ; 2 uses
  %.236152.i.i = phi ptr [ %i.ocy, %.lr.ph154.i.i ], [ %.135.lcssa.i.i1506, %.preheader132.i.i ] ; 2 uses
  %.240151.i.i = phi i32 [ %i.oda, %.lr.ph154.i.i ], [ %.139.lcssa.i.i1505, %.preheader132.i.i ]
  %.244150.i.i = phi ptr [ %i.ocz, %.lr.ph154.i.i ], [ %.143.lcssa.i.i1504, %.preheader132.i.i ] ; 2 uses
  %i.oap = load i64, ptr %.2153.i.i, align 1, !tbaa !555
  %i.oaq = insertelement <2 x i64> poison, i64 %i.oap, i64 0
  %i.oar = bitcast <2 x i64> %i.oaq to <8 x i16>
  %i.oas = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oat = bitcast <8 x i16> %i.oas to <4 x float> ; 3 uses
  %i.oau = load i64, ptr %.236152.i.i, align 1, !tbaa !555
  %i.oav = insertelement <2 x i64> poison, i64 %i.oau, i64 0
  %i.oaw = bitcast <2 x i64> %i.oav to <8 x i16>
  %i.oax = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.oaw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.oay = bitcast <8 x i16> %i.oax to <4 x float> ; 3 uses
  %i.oaz = fcmp fast oeq <4 x float> %i.oay, zeroinitializer ; 2 uses
  %i.oba = fcmp fast oeq <4 x float> %i.oat, zeroinitializer ; 2 uses
  %.not129.i.i = or <4 x i1> %i.oba, %i.oaz
  %i.obb = fcmp fast olt <4 x float> %i.oay, zeroinitializer
  %i.obc = fcmp fast olt <4 x float> %i.oat, zeroinitializer
  %i.obd = select <4 x i1> %i.obc, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.obe = select <4 x i1> %i.obb, <4 x float> %i.obd, <4 x float> zeroinitializer
  %i.obf = fdiv fast <4 x float> %i.oat, %i.oay   ; 2 uses
  %i.obg = bitcast <4 x float> %i.obf to <4 x i32>
  %i.obh = and <4 x i32> %i.obg, splat (i32 -2147483648)
  %i.obi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.obf) ; 3 uses
  %i.obj = fcmp fast ogt <4 x float> %i.obi, splat (float 1.000000e+00) ; 2 uses
  %i.obk = select <4 x i1> %i.obj, <4 x float> splat (float -1.000000e+00), <4 x float> %i.obi
  %i.obl = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.obi, <4 x float> splat (float 1.000000e+00))
  %i.obm = fdiv fast <4 x float> %i.obk, %i.obl   ; 3 uses
  %i.obn = fmul fast <4 x float> %i.obm, %i.obm   ; 3 uses
  %i.obo = fmul fast <4 x float> %i.obn, %i.obn   ; 7 uses
  %i.obp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.obq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) %i.obp, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.obr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) %i.obq, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.obs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.obt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) %i.obs, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.obu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) %i.obt, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.obv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obo, <4 x float> nofpclass(nan inf) %i.obu, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.obw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.obn, <4 x float> nofpclass(nan inf) %i.obr, <4 x float> nofpclass(nan inf) %i.obv)
  %i.obx = fmul fast <4 x float> %i.obw, %i.obm
  %i.oby = select <4 x i1> %i.obj, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.obz = fadd fast <4 x float> %i.obx, %i.oby
  %i.oca = bitcast <4 x float> %i.obz to <4 x i32>
  %i.ocb = or <4 x i32> %i.obh, %i.oca
  %i.occ = bitcast <4 x i32> %i.ocb to <4 x float>
  %i.ocd = fadd fast <4 x float> %i.obe, %i.occ
  %i.oce = bitcast <8 x i16> %i.oax to <4 x i32>
  %i.ocf = and <4 x i32> %i.oce, splat (i32 -2147483648)
  %i.ocg = or disjoint <4 x i32> %i.ocf, splat (i32 1078530011)
  %i.och = bitcast <4 x i32> %i.ocg to <4 x float>
  %i.oci = fcmp fast uge <4 x float> %i.och, zeroinitializer
  %i.ocj = bitcast <8 x i16> %i.oas to <4 x i32>
  %i.ock = and <4 x i32> %i.ocj, splat (i32 -2147483648)
  %i.ocl = or disjoint <4 x i32> %i.ock, splat (i32 1070141403)
  %i.ocm = select <4 x i1> %i.oci, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.ocn = bitcast <4 x float> %i.ocd to <4 x i32>
  %i.oco = select <4 x i1> %.not129.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.ocn
  %i.ocp = select <4 x i1> %i.oaz, <4 x i32> %i.ocl, <4 x i32> zeroinitializer
  %i.ocq = select <4 x i1> %i.oba, <4 x i32> %i.ocm, <4 x i32> %i.ocp
  %i.ocr = or <4 x i32> %i.oco, %i.ocq
  %i.ocs = bitcast <4 x i32> %i.ocr to <4 x float>
  %i.oct = shufflevector <4 x float> %i.ocs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ocu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.oct)
  %i.ocv = bitcast <8 x bfloat> %i.ocu to <2 x i64>
  %i.ocw = extractelement <2 x i64> %i.ocv, i64 0
  store i64 %i.ocw, ptr %.244150.i.i, align 1, !tbaa !555
  %i.ocx = getelementptr inbounds nuw i8, ptr %.2153.i.i, i64 8 ; 2 uses
  %i.ocy = getelementptr inbounds nuw i8, ptr %.236152.i.i, i64 8 ; 2 uses
  %i.ocz = getelementptr inbounds nuw i8, ptr %.244150.i.i, i64 8 ; 2 uses
  %i.oda = add nuw nsw i32 %.240151.i.i, 4        ; 3 uses
  %i.odb = or disjoint i32 %i.oda, 3
  %i.odc = icmp slt i32 %i.odb, %i.ntz
end_hunk_10
begin_hunk_11_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.pye = fdiv fast <4 x float> %i.pyc, %i.pyd   ; 3 uses
  %i.pyf = fmul fast <4 x float> %i.pye, %i.pye   ; 3 uses
  %i.pyg = fmul fast <4 x float> %i.pyf, %i.pyf   ; 7 uses
  %i.pyh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.pyi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) %i.pyh, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.pyj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) %i.pyi, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.pyk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.pyl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) %i.pyk, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.pym = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) %i.pyl, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.pyn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyg, <4 x float> nofpclass(nan inf) %i.pym, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.pyo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.pyf, <4 x float> nofpclass(nan inf) %i.pyj, <4 x float> nofpclass(nan inf) %i.pyn)
  %i.pyp = fmul fast <4 x float> %i.pyo, %i.pye
  %i.pyq = select <4 x i1> %i.pyb, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.pyr = fadd fast <4 x float> %i.pyp, %i.pyq
  %i.pys = bitcast <4 x float> %i.pyr to <4 x i32>
  %i.pyt = or <4 x i32> %i.pxz, %i.pys
  %i.pyu = bitcast <4 x i32> %i.pyt to <4 x float>
  %i.pyv = fadd fast <4 x float> %i.pxw, %i.pyu
  %i.pyw = bitcast <4 x float> %i.pxt to <4 x i32>
  %isneg.inv.i92.i = icmp slt <4 x i32> %i.pyw, zeroinitializer
  %i.pyx = select <4 x i1> %isneg.inv.i92.i, <4 x i32> splat (i32 1078530011), <4 x i32> zeroinitializer
  %i.pyy = bitcast <4 x float> %i.pyv to <4 x i32>
  %i.pyz = select <4 x i1> %.not113.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.pyy
  %i.pza = select <4 x i1> %i.pxu, <4 x i32> %i.pxn, <4 x i32> zeroinitializer
  %i.pzb = select <4 x i1> %i.pxi, <4 x i32> %i.pyx, <4 x i32> %i.pza
  %i.pzc = or <4 x i32> %i.pyz, %i.pzb
  %i.pzd = bitcast <4 x i32> %i.pzc to <4 x float>
  %i.pze = shufflevector <4 x float> %i.pzd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pzf = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.pze)
  %i.pzg = bitcast <8 x bfloat> %i.pzf to <2 x i64>
  %i.pzh = extractelement <2 x i64> %i.pzg, i64 0
  store i64 %i.pzh, ptr %.232119.i.i, align 1, !tbaa !555
  %i.pzi = getelementptr inbounds nuw i8, ptr %.2120.i.i, i64 2
  %i.pzj = getelementptr inbounds nuw i8, ptr %.232119.i.i, i64 8
  %i.pzk = add nuw nsw i32 %.0121.i.i, 1          ; 2 uses
  %exitcond.not.i93.i = icmp eq i32 %i.pzk, %.sroa.speculated104.i
  br i1 %exitcond.not.i93.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.la, !llvm.loop !338

bb.lb:                                            ; preds = %bb.a
  %.sroa.speculated104.i1515 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 10 uses
  %.sroa.speculated.i1516 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.pzl = mul i32 %.sroa.speculated.i1516, %.sroa.speculated104.i1515 ; 48 uses
  %i.pzm = icmp eq i32 %5, %6
  br i1 %i.pzm, label %bb.lc, label %bb.ly

bb.lc:                                            ; preds = %bb.lb
  %i.pzn = icmp eq i32 %3, %4
  br i1 %i.pzn, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  %i.pzo = icmp sgt i32 %i.pzl, 15
  br i1 %i.pzo, label %.lr.ph.i.i1681, label %.preheader133.i.i1647

.preheader133.loopexit.i.i1686:                   ; preds = %.lr.ph.i.i1681
  %i.pzp = and i32 %i.pzl, 2147483632
  br label %.preheader133.i.i1647

.preheader133.i.i1647:                            ; preds = %.preheader133.loopexit.i.i1686, %bb.ld
  %.042.lcssa.i.i1648 = phi ptr [ %2, %bb.ld ], [ %i.qbk, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.038.lcssa.i.i1649 = phi i32 [ 0, %bb.ld ], [ %i.pzp, %.preheader133.loopexit.i.i1686 ] ; 3 uses
  %.034.lcssa.i.i1650 = phi ptr [ %1, %bb.ld ], [ %i.qbj, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %.0.lcssa.i.i1651 = phi ptr [ %0, %bb.ld ], [ %i.qbi, %.preheader133.loopexit.i.i1686 ] ; 2 uses
  %i.pzq = or disjoint i32 %.038.lcssa.i.i1649, 7
  %i.pzr = icmp slt i32 %i.pzq, %i.pzl
  br i1 %i.pzr, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652

.lr.ph.i.i1681:                                   ; preds = %bb.ld, %.lr.ph.i.i1681
  %.0137.i.i1682 = phi ptr [ %i.qbi, %.lr.ph.i.i1681 ], [ %0, %bb.ld ] ; 2 uses
  %.034136.i.i1683 = phi ptr [ %i.qbj, %.lr.ph.i.i1681 ], [ %1, %bb.ld ] ; 2 uses
  %.038135.i.i1684 = phi i32 [ %i.qbl, %.lr.ph.i.i1681 ], [ 0, %bb.ld ]
  %.042134.i.i1685 = phi ptr [ %i.qbk, %.lr.ph.i.i1681 ], [ %2, %bb.ld ] ; 2 uses
  %i.pzs = load <16 x bfloat>, ptr %.0137.i.i1682, align 1, !tbaa !555 ; 4 uses
  %i.pzt = fpext fast <16 x bfloat> %i.pzs to <16 x float>
  %i.pzu = load <16 x bfloat>, ptr %.034136.i.i1683, align 1, !tbaa !555 ; 3 uses
  %i.pzv = fpext fast <16 x bfloat> %i.pzu to <16 x float> ; 2 uses
  %i.pzw = fcmp fast one <16 x bfloat> %i.pzs, zeroinitializer
  %i.pzx = fcmp fast one <16 x bfloat> %i.pzu, zeroinitializer
  %i.pzy = fcmp fast olt <16 x bfloat> %i.pzs, zeroinitializer
  %i.pzz = fcmp fast olt <16 x bfloat> %i.pzu, zeroinitializer
  %i.qaa = select fast <16 x i1> %i.pzz, <16 x float> splat (float f0xC0490FDB), <16 x float> splat (float f0x40490FDB)
  %i.qab = select fast <16 x i1> %i.pzy, <16 x float> %i.qaa, <16 x float> zeroinitializer
  %i.qac = fdiv fast <16 x float> %i.pzv, %i.pzt  ; 2 uses
  %i.qad = bitcast <16 x float> %i.qac to <16 x i32>
  %i.qae = and <16 x i32> %i.qad, splat (i32 -2147483648)
  %i.qaf = tail call noundef nofpclass(nan inf) <16 x float> @llvm.fabs.v16f32(<16 x float> nofpclass(nan inf) %i.qac) ; 3 uses
  %i.qag = fcmp fast ogt <16 x float> %i.qaf, splat (float 1.000000e+00) ; 2 uses
  %i.qah = select fast <16 x i1> %i.qag, <16 x float> splat (float -1.000000e+00), <16 x float> %i.qaf
  %i.qai = tail call fast <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.qaf, <16 x float> splat (float 1.000000e+00))
  %i.qaj = fdiv fast <16 x float> %i.qah, %i.qai  ; 3 uses
  %i.qak = fmul fast <16 x float> %i.qaj, %i.qaj  ; 3 uses
  %i.qal = fmul fast <16 x float> %i.qak, %i.qak  ; 7 uses
  %i.qam = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> splat (float f0xBC83A25C), <16 x float> splat (float f0xBD99B01E))
  %i.qan = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> nofpclass(nan inf) %i.qam, <16 x float> splat (float f0xBE117200))
  %i.qao = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> nofpclass(nan inf) %i.qan, <16 x float> splat (float f0xBEAAAA53))
  %i.qap = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> splat (float f0x3B3AC537), <16 x float> splat (float f0x3D2EDD4E))
  %i.qaq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> nofpclass(nan inf) %i.qap, <16 x float> splat (float f0x3DD9ED24))
  %i.qar = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> nofpclass(nan inf) %i.qaq, <16 x float> splat (float f0x3E4CB974))
  %i.qas = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qal, <16 x float> nofpclass(nan inf) %i.qar, <16 x float> splat (float 1.000000e+00))
  %i.qat = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.qak, <16 x float> nofpclass(nan inf) %i.qao, <16 x float> nofpclass(nan inf) %i.qas)
  %i.qau = fmul fast <16 x float> %i.qat, %i.qaj
  %i.qav = select fast <16 x i1> %i.qag, <16 x float> splat (float f0x3FC90FDB), <16 x float> zeroinitializer
  %i.qaw = fadd fast <16 x float> %i.qau, %i.qav
  %i.qax = bitcast <16 x float> %i.qaw to <16 x i32>
  %i.qay = or <16 x i32> %i.qae, %i.qax
  %i.qaz = bitcast <16 x i32> %i.qay to <16 x float>
  %i.qba = fadd fast <16 x float> %i.qab, %i.qaz
  %i.qbb = bitcast <16 x bfloat> %i.pzs to <16 x i16>
  %i.qbc = icmp slt <16 x i16> %i.qbb, zeroinitializer
  %i.qbd = select fast <16 x i1> %i.qbc, <16 x float> splat (float f0x40490FDB), <16 x float> zeroinitializer
  %i.qbe = tail call <16 x float> @llvm.copysign.v16f32(<16 x float> splat (float f0x3FC90FDB), <16 x float> %i.pzv)
  %i.qbf = select <16 x i1> %i.pzw, <16 x float> %i.qba, <16 x float> %i.qbe
  %i.qbg = select <16 x i1> %i.pzx, <16 x float> %i.qbf, <16 x float> %i.qbd
  %i.qbh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.qbg)
  store <16 x bfloat> %i.qbh, ptr %.042134.i.i1685, align 1, !tbaa !555
  %i.qbi = getelementptr inbounds nuw i8, ptr %.0137.i.i1682, i64 32 ; 2 uses
  %i.qbj = getelementptr inbounds nuw i8, ptr %.034136.i.i1683, i64 32 ; 2 uses
  %i.qbk = getelementptr inbounds nuw i8, ptr %.042134.i.i1685, i64 32 ; 2 uses
  %i.qbl = add nuw nsw i32 %.038135.i.i1684, 16   ; 2 uses
  %i.qbm = or disjoint i32 %i.qbl, 15
  %i.qbn = icmp slt i32 %i.qbm, %i.pzl
  br i1 %i.qbn, label %.lr.ph.i.i1681, label %.preheader133.loopexit.i.i1686, !llvm.loop !339

.preheader132.i.i1652:                            ; preds = %.lr.ph145.i.i1674, %.preheader133.i.i1647
  %.143.lcssa.i.i1653 = phi ptr [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ], [ %i.qdn, %.lr.ph145.i.i1674 ] ; 2 uses
  %.139.lcssa.i.i1654 = phi i32 [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ], [ %i.qdo, %.lr.ph145.i.i1674 ] ; 3 uses
  %.135.lcssa.i.i1655 = phi ptr [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ], [ %i.qdm, %.lr.ph145.i.i1674 ] ; 2 uses
  %.1.lcssa.i.i1656 = phi ptr [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ], [ %i.qdl, %.lr.ph145.i.i1674 ] ; 2 uses
  %i.qbo = or disjoint i32 %.139.lcssa.i.i1654, 3
  %i.qbp = icmp slt i32 %i.qbo, %i.pzl
  br i1 %i.qbp, label %.lr.ph154.i.i1668, label %.preheader.i.i1657

.lr.ph145.i.i1674:                                ; preds = %.preheader133.i.i1647, %.lr.ph145.i.i1674
  %.1144.i.i1675 = phi ptr [ %i.qdl, %.lr.ph145.i.i1674 ], [ %.0.lcssa.i.i1651, %.preheader133.i.i1647 ] ; 2 uses
  %.135143.i.i1676 = phi ptr [ %i.qdm, %.lr.ph145.i.i1674 ], [ %.034.lcssa.i.i1650, %.preheader133.i.i1647 ] ; 2 uses
  %.139142.i.i1677 = phi i32 [ %i.qdo, %.lr.ph145.i.i1674 ], [ %.038.lcssa.i.i1649, %.preheader133.i.i1647 ]
  %.143141.i.i1678 = phi ptr [ %i.qdn, %.lr.ph145.i.i1674 ], [ %.042.lcssa.i.i1648, %.preheader133.i.i1647 ] ; 2 uses
  %i.qbq = load <8 x bfloat>, ptr %.1144.i.i1675, align 1, !tbaa !555 ; 4 uses
  %i.qbr = fpext fast <8 x bfloat> %i.qbq to <8 x float>
  %i.qbs = load <8 x bfloat>, ptr %.135143.i.i1676, align 1, !tbaa !555 ; 3 uses
  %i.qbt = fpext fast <8 x bfloat> %i.qbs to <8 x float> ; 2 uses
  %i.qbu = fcmp fast ueq <8 x bfloat> %i.qbq, zeroinitializer ; 2 uses
  %i.qbv = fcmp fast ueq <8 x bfloat> %i.qbs, zeroinitializer ; 2 uses
  %.not131.i.i1679 = or <8 x i1> %i.qbu, %i.qbv
  %i.qbw = bitcast <8 x float> %i.qbt to <8 x i32>
  %i.qbx = and <8 x i32> %i.qbw, splat (i32 -2147483648)
  %i.qby = fcmp fast olt <8 x bfloat> %i.qbq, zeroinitializer
  %i.qbz = fcmp fast olt <8 x bfloat> %i.qbs, zeroinitializer
  %i.qca = select <8 x i1> %i.qbz, <8 x float> splat (float f0xC0490FDB), <8 x float> splat (float f0x40490FDB)
  %i.qcb = select <8 x i1> %i.qby, <8 x float> %i.qca, <8 x float> zeroinitializer
  %i.qcc = fdiv fast <8 x float> %i.qbt, %i.qbr   ; 2 uses
  %i.qcd = bitcast <8 x float> %i.qcc to <8 x i32>
  %i.qce = and <8 x i32> %i.qcd, splat (i32 -2147483648)
  %i.qcf = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.qcc) ; 3 uses
  %i.qcg = fcmp fast ogt <8 x float> %i.qcf, splat (float 1.000000e+00) ; 2 uses
  %i.qch = select <8 x i1> %i.qcg, <8 x float> splat (float -1.000000e+00), <8 x float> %i.qcf
  %i.qci = tail call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.qcf, <8 x float> splat (float 1.000000e+00))
  %i.qcj = fdiv fast <8 x float> %i.qch, %i.qci   ; 3 uses
  %i.qck = fmul fast <8 x float> %i.qcj, %i.qcj   ; 3 uses
  %i.qcl = fmul fast <8 x float> %i.qck, %i.qck   ; 7 uses
  %i.qcm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <8 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qcn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) %i.qcm, <8 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) %i.qcn, <8 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qcp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <8 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qcq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) %i.qcp, <8 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qcr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) %i.qcq, <8 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qcs = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qcl, <8 x float> nofpclass(nan inf) %i.qcr, <8 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qct = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qck, <8 x float> nofpclass(nan inf) %i.qco, <8 x float> nofpclass(nan inf) %i.qcs)
  %i.qcu = fmul fast <8 x float> %i.qct, %i.qcj
  %i.qcv = select <8 x i1> %i.qcg, <8 x float> splat (float f0x3FC90FDB), <8 x float> zeroinitializer
  %i.qcw = fadd fast <8 x float> %i.qcu, %i.qcv
  %i.qcx = bitcast <8 x float> %i.qcw to <8 x i32>
  %i.qcy = or <8 x i32> %i.qce, %i.qcx
  %i.qcz = bitcast <8 x i32> %i.qcy to <8 x float>
  %i.qda = fadd fast <8 x float> %i.qcb, %i.qcz
  %i.qdb = bitcast <8 x bfloat> %i.qbq to <8 x i16>
  %i.qdc = or disjoint <8 x i32> %i.qbx, splat (i32 1070141403)
  %isneg.i.i1680 = icmp sgt <8 x i16> %i.qdb, splat (i16 -1)
  %i.qdd = select <8 x i1> %isneg.i.i1680, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1078530011)
  %i.qde = bitcast <8 x float> %i.qda to <8 x i32>
  %i.qdf = select <8 x i1> %.not131.i.i1679, <8 x i32> zeroinitializer, <8 x i32> %i.qde
  %i.qdg = select <8 x i1> %i.qbu, <8 x i32> %i.qdc, <8 x i32> zeroinitializer
  %i.qdh = select <8 x i1> %i.qbv, <8 x i32> %i.qdd, <8 x i32> %i.qdg
  %i.qdi = or <8 x i32> %i.qdf, %i.qdh
  %i.qdj = bitcast <8 x i32> %i.qdi to <8 x float>
  %i.qdk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qdj)
  store <8 x bfloat> %i.qdk, ptr %.143141.i.i1678, align 1, !tbaa !555
  %i.qdl = getelementptr inbounds nuw i8, ptr %.1144.i.i1675, i64 16 ; 2 uses
  %i.qdm = getelementptr inbounds nuw i8, ptr %.135143.i.i1676, i64 16 ; 2 uses
  %i.qdn = getelementptr inbounds nuw i8, ptr %.143141.i.i1678, i64 16 ; 2 uses
  %i.qdo = add nuw nsw i32 %.139142.i.i1677, 8    ; 3 uses
  %i.qdp = or disjoint i32 %i.qdo, 7
  %i.qdq = icmp slt i32 %i.qdp, %i.pzl
  br i1 %i.qdq, label %.lr.ph145.i.i1674, label %.preheader132.i.i1652, !llvm.loop !340

.preheader.i.i1657:                               ; preds = %.lr.ph154.i.i1668, %.preheader132.i.i1652
  %.244.lcssa.i.i1658 = phi ptr [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ], [ %i.qil, %.lr.ph154.i.i1668 ] ; 7 uses
  %.240.lcssa.i.i1659 = phi i32 [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ], [ %i.qim, %.lr.ph154.i.i1668 ] ; 6 uses
  %.236.lcssa.i.i1660 = phi ptr [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ], [ %i.qik, %.lr.ph154.i.i1668 ] ; 7 uses
  %.2.lcssa.i.i1661 = phi ptr [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ], [ %i.qij, %.lr.ph154.i.i1668 ] ; 7 uses
  %.236.lcssa.i.i16607154 = ptrtoaddr ptr %.236.lcssa.i.i1660 to i64
  %.244.lcssa.i.i16587155 = ptrtoaddr ptr %.2.lcssa.i.i1661 to i64
  %.2.lcssa.i.i16617156 = ptrtoaddr ptr %.244.lcssa.i.i1658 to i64 ; 2 uses
  %i.qdr = icmp slt i32 %.240.lcssa.i.i1659, %i.pzl
  br i1 %i.qdr, label %iter.check7176, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7176:                                   ; preds = %.preheader.i.i1657
  %i.qds = xor i32 %.240.lcssa.i.i1659, -1
  %i.qdt = add i32 %i.pzl, %i.qds                 ; 3 uses
  %i.qdu = zext i32 %i.qdt to i64
  %i.qdv = add nuw nsw i64 %i.qdu, 1              ; 5 uses
  %min.iters.check7157 = icmp ult i32 %i.qdt, 7
  br i1 %min.iters.check7157, label %.lr.ph163.i.i1662.preheader, label %vector.memcheck7158

vector.memcheck7158:                              ; preds = %iter.check7176
  %i.qdw = sub i64 %.244.lcssa.i.i16587155, %.2.lcssa.i.i16617156
  %diff.check7159 = icmp ugt i64 %i.qdw, -64
  %i.qdx = sub i64 %.236.lcssa.i.i16607154, %.2.lcssa.i.i16617156
  %diff.check7160 = icmp ugt i64 %i.qdx, -64
  %conflict.rdx7161 = or i1 %diff.check7159, %diff.check7160
  br i1 %conflict.rdx7161, label %.lr.ph163.i.i1662.preheader, label %vector.main.loop.iter.check7162

vector.main.loop.iter.check7162:                  ; preds = %vector.memcheck7158
  %min.iters.check7163 = icmp ult i32 %i.qdt, 31
  br i1 %min.iters.check7163, label %vec.epilog.ph7180, label %vector.ph7164

vector.ph7164:                                    ; preds = %vector.main.loop.iter.check7162
  %i.qdy = and i64 %i.qdv, 24
  %n.vec7165 = and i64 %i.qdv, 8589934560         ; 5 uses
  %i.qdz = shl nuw nsw i64 %n.vec7165, 1          ; 3 uses
  %i.qea = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qdz
  %i.qeb = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qdz
  %i.qec = trunc i64 %n.vec7165 to i32
  %i.qed = add i32 %.240.lcssa.i.i1659, %i.qec
  %i.qee = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qdz
  br label %vector.body7166

vector.body7166:                                  ; preds = %vector.ph7164, %vector.body7166
  %index7167 = phi i64 [ 0, %vector.ph7164 ], [ %index.next7173, %vector.body7166 ] ; 2 uses
  %i.qef = shl i64 %index7167, 1                  ; 3 uses
  %next.gep7168 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qef
  %next.gep7169 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qef
  %next.gep7170 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qef
  %wide.load7171 = load <32 x i16>, ptr %next.gep7168, align 2, !tbaa !558
  %i.qeg = zext <32 x i16> %wide.load7171 to <32 x i32>
  %i.qeh = shl nuw <32 x i32> %i.qeg, splat (i32 16)
  %i.qei = bitcast <32 x i32> %i.qeh to <32 x float>
  %wide.load7172 = load <32 x i16>, ptr %next.gep7169, align 2, !tbaa !558
  %i.qej = zext <32 x i16> %wide.load7172 to <32 x i32>
  %i.qek = shl nuw <32 x i32> %i.qej, splat (i32 16)
  %i.qel = bitcast <32 x i32> %i.qek to <32 x float>
  %i.qem = tail call fast <32 x float> @llvm.atan2.v32f32(<32 x float> %i.qel, <32 x float> %i.qei)
  %i.qen = bitcast <32 x float> %i.qem to <32 x i32>
  %i.qeo = lshr <32 x i32> %i.qen, splat (i32 16)
  %i.qep = trunc nuw <32 x i32> %i.qeo to <32 x i16>
  store <32 x i16> %i.qep, ptr %next.gep7170, align 2, !tbaa !558
  %index.next7173 = add nuw i64 %index7167, 32    ; 2 uses
  %i.qeq = icmp eq i64 %index.next7173, %n.vec7165
  br i1 %i.qeq, label %middle.block7174, label %vector.body7166, !llvm.loop !341

middle.block7174:                                 ; preds = %vector.body7166
  %cmp.n7175 = icmp eq i64 %i.qdv, %n.vec7165
  br i1 %cmp.n7175, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7177

vec.epilog.iter.check7177:                        ; preds = %middle.block7174
  %min.epilog.iters.check7179 = icmp eq i64 %i.qdy, 0
  br i1 %min.epilog.iters.check7179, label %.lr.ph163.i.i1662.preheader, label %vec.epilog.ph7180, !prof !561

vec.epilog.ph7180:                                ; preds = %vector.main.loop.iter.check7162, %vec.epilog.iter.check7177
  %vec.epilog.resume.val7181 = phi i64 [ %n.vec7165, %vec.epilog.iter.check7177 ], [ 0, %vector.main.loop.iter.check7162 ]
  %n.vec7182 = and i64 %i.qdv, 8589934584         ; 4 uses
  %i.qer = shl nuw nsw i64 %n.vec7182, 1          ; 3 uses
  %i.qes = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qer
  %i.qet = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qer
  %i.qeu = trunc i64 %n.vec7182 to i32
  %i.qev = add i32 %.240.lcssa.i.i1659, %i.qeu
  %i.qew = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qer
  br label %vec.epilog.vector.body7183

vec.epilog.vector.body7183:                       ; preds = %vec.epilog.vector.body7183, %vec.epilog.ph7180
  %index7184 = phi i64 [ %vec.epilog.resume.val7181, %vec.epilog.ph7180 ], [ %index.next7190, %vec.epilog.vector.body7183 ] ; 2 uses
  %i.qex = shl i64 %index7184, 1                  ; 3 uses
  %next.gep7185 = getelementptr i8, ptr %.2.lcssa.i.i1661, i64 %i.qex
  %next.gep7186 = getelementptr i8, ptr %.236.lcssa.i.i1660, i64 %i.qex
  %next.gep7187 = getelementptr i8, ptr %.244.lcssa.i.i1658, i64 %i.qex
  %wide.load7188 = load <8 x i16>, ptr %next.gep7185, align 2, !tbaa !558
  %i.qey = zext <8 x i16> %wide.load7188 to <8 x i32>
  %i.qez = shl nuw <8 x i32> %i.qey, splat (i32 16)
  %i.qfa = bitcast <8 x i32> %i.qez to <8 x float>
  %wide.load7189 = load <8 x i16>, ptr %next.gep7186, align 2, !tbaa !558
  %i.qfb = zext <8 x i16> %wide.load7189 to <8 x i32>
  %i.qfc = shl nuw <8 x i32> %i.qfb, splat (i32 16)
  %i.qfd = bitcast <8 x i32> %i.qfc to <8 x float>
  %i.qfe = tail call fast <8 x float> @llvm.atan2.v8f32(<8 x float> %i.qfd, <8 x float> %i.qfa)
  %i.qff = bitcast <8 x float> %i.qfe to <8 x i32>
  %i.qfg = lshr <8 x i32> %i.qff, splat (i32 16)
  %i.qfh = trunc nuw <8 x i32> %i.qfg to <8 x i16>
  store <8 x i16> %i.qfh, ptr %next.gep7187, align 2, !tbaa !558
  %index.next7190 = add nuw i64 %index7184, 8     ; 2 uses
  %i.qfi = icmp eq i64 %index.next7190, %n.vec7182
  br i1 %i.qfi, label %vec.epilog.middle.block7191, label %vec.epilog.vector.body7183, !llvm.loop !342

vec.epilog.middle.block7191:                      ; preds = %vec.epilog.vector.body7183
  %cmp.n7192 = icmp eq i64 %i.qdv, %n.vec7182
  br i1 %cmp.n7192, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662.preheader

.lr.ph163.i.i1662.preheader:                      ; preds = %iter.check7176, %vector.memcheck7158, %vec.epilog.iter.check7177, %vec.epilog.middle.block7191
  %.3162.i.i1663.ph = phi ptr [ %.2.lcssa.i.i1661, %iter.check7176 ], [ %.2.lcssa.i.i1661, %vector.memcheck7158 ], [ %i.qea, %vec.epilog.iter.check7177 ], [ %i.qes, %vec.epilog.middle.block7191 ] ; 3 uses
  %.337161.i.i1664.ph = phi ptr [ %.236.lcssa.i.i1660, %iter.check7176 ], [ %.236.lcssa.i.i1660, %vector.memcheck7158 ], [ %i.qeb, %vec.epilog.iter.check7177 ], [ %i.qet, %vec.epilog.middle.block7191 ] ; 3 uses
  %.341160.i.i1665.ph = phi i32 [ %.240.lcssa.i.i1659, %iter.check7176 ], [ %.240.lcssa.i.i1659, %vector.memcheck7158 ], [ %i.qed, %vec.epilog.iter.check7177 ], [ %i.qev, %vec.epilog.middle.block7191 ] ; 4 uses
  %.345159.i.i1666.ph = phi ptr [ %.244.lcssa.i.i1658, %iter.check7176 ], [ %.244.lcssa.i.i1658, %vector.memcheck7158 ], [ %i.qee, %vec.epilog.iter.check7177 ], [ %i.qew, %vec.epilog.middle.block7191 ] ; 3 uses
  %i.qfj = sub i32 %i.pzl, %.341160.i.i1665.ph
  %.neg11048 = add i32 %.341160.i.i1665.ph, 1
  %xtraiter10449 = and i32 %i.qfj, 1
  %lcmp.mod10450.not = icmp eq i32 %xtraiter10449, 0
  br i1 %lcmp.mod10450.not, label %.lr.ph163.i.i1662.prol.loopexit, label %.lr.ph163.i.i1662.prol

.lr.ph163.i.i1662.prol:                           ; preds = %.lr.ph163.i.i1662.preheader
  %i.qfk = getelementptr inbounds nuw i8, ptr %.3162.i.i1663.ph, i64 2
  %i.qfl = load i16, ptr %.3162.i.i1663.ph, align 2, !tbaa !558
  %i.qfm = zext i16 %i.qfl to i32
  %i.qfn = shl nuw i32 %i.qfm, 16
  %i.qfo = bitcast i32 %i.qfn to float
  %i.qfp = getelementptr inbounds nuw i8, ptr %.337161.i.i1664.ph, i64 2
  %i.qfq = load i16, ptr %.337161.i.i1664.ph, align 2, !tbaa !558
  %i.qfr = zext i16 %i.qfq to i32
  %i.qfs = shl nuw i32 %i.qfr, 16
  %i.qft = bitcast i32 %i.qfs to float
  %i.qfu = tail call fast noundef nofpclass(nan inf) float @llvm.atan2.f32(float %i.qft, float %i.qfo)
  %i.qfv = bitcast float %i.qfu to i32
  %i.qfw = lshr i32 %i.qfv, 16
  %i.qfx = trunc nuw i32 %i.qfw to i16
  %i.qfy = getelementptr inbounds nuw i8, ptr %.345159.i.i1666.ph, i64 2
  store i16 %i.qfx, ptr %.345159.i.i1666.ph, align 2, !tbaa !558
  %i.qfz = add nuw nsw i32 %.341160.i.i1665.ph, 1
  br label %.lr.ph163.i.i1662.prol.loopexit

.lr.ph163.i.i1662.prol.loopexit:                  ; preds = %.lr.ph163.i.i1662.prol, %.lr.ph163.i.i1662.preheader
  %.3162.i.i1663.unr = phi ptr [ %.3162.i.i1663.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qfk, %.lr.ph163.i.i1662.prol ]
  %.337161.i.i1664.unr = phi ptr [ %.337161.i.i1664.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qfp, %.lr.ph163.i.i1662.prol ]
  %.341160.i.i1665.unr = phi i32 [ %.341160.i.i1665.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qfz, %.lr.ph163.i.i1662.prol ]
  %.345159.i.i1666.unr = phi ptr [ %.345159.i.i1666.ph, %.lr.ph163.i.i1662.preheader ], [ %i.qfy, %.lr.ph163.i.i1662.prol ]
  %i.qga = icmp eq i32 %i.pzl, %.neg11048
  br i1 %i.qga, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph163.i.i1662

.lr.ph154.i.i1668:                                ; preds = %.preheader132.i.i1652, %.lr.ph154.i.i1668
  %.2153.i.i1669 = phi ptr [ %i.qij, %.lr.ph154.i.i1668 ], [ %.1.lcssa.i.i1656, %.preheader132.i.i1652 ] ; 2 uses
  %.236152.i.i1670 = phi ptr [ %i.qik, %.lr.ph154.i.i1668 ], [ %.135.lcssa.i.i1655, %.preheader132.i.i1652 ] ; 2 uses
  %.240151.i.i1671 = phi i32 [ %i.qim, %.lr.ph154.i.i1668 ], [ %.139.lcssa.i.i1654, %.preheader132.i.i1652 ]
  %.244150.i.i1672 = phi ptr [ %i.qil, %.lr.ph154.i.i1668 ], [ %.143.lcssa.i.i1653, %.preheader132.i.i1652 ] ; 2 uses
  %i.qgb = load i64, ptr %.2153.i.i1669, align 1, !tbaa !555
  %i.qgc = insertelement <2 x i64> poison, i64 %i.qgb, i64 0
  %i.qgd = bitcast <2 x i64> %i.qgc to <8 x i16>
  %i.qge = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qgd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qgf = bitcast <8 x i16> %i.qge to <4 x float> ; 3 uses
  %i.qgg = load i64, ptr %.236152.i.i1670, align 1, !tbaa !555
  %i.qgh = insertelement <2 x i64> poison, i64 %i.qgg, i64 0
  %i.qgi = bitcast <2 x i64> %i.qgh to <8 x i16>
  %i.qgj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.qgi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.qgk = bitcast <8 x i16> %i.qgj to <4 x float> ; 3 uses
  %i.qgl = fcmp fast oeq <4 x float> %i.qgf, zeroinitializer ; 2 uses
  %i.qgm = fcmp fast oeq <4 x float> %i.qgk, zeroinitializer ; 2 uses
  %.not129.i.i1673 = or <4 x i1> %i.qgl, %i.qgm
  %i.qgn = fcmp fast olt <4 x float> %i.qgf, zeroinitializer
  %i.qgo = fcmp fast olt <4 x float> %i.qgk, zeroinitializer
  %i.qgp = select <4 x i1> %i.qgo, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.qgq = select <4 x i1> %i.qgn, <4 x float> %i.qgp, <4 x float> zeroinitializer
  %i.qgr = fdiv fast <4 x float> %i.qgk, %i.qgf   ; 2 uses
  %i.qgs = bitcast <4 x float> %i.qgr to <4 x i32>
  %i.qgt = and <4 x i32> %i.qgs, splat (i32 -2147483648)
  %i.qgu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.qgr) ; 3 uses
  %i.qgv = fcmp fast ogt <4 x float> %i.qgu, splat (float 1.000000e+00) ; 2 uses
  %i.qgw = select <4 x i1> %i.qgv, <4 x float> splat (float -1.000000e+00), <4 x float> %i.qgu
  %i.qgx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.qgu, <4 x float> splat (float 1.000000e+00))
  %i.qgy = fdiv fast <4 x float> %i.qgw, %i.qgx   ; 3 uses
  %i.qgz = fmul fast <4 x float> %i.qgy, %i.qgy   ; 3 uses
  %i.qha = fmul fast <4 x float> %i.qgz, %i.qgz   ; 7 uses
  %i.qhb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.qhc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) %i.qhb, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.qhd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) %i.qhc, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.qhe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.qhf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) %i.qhe, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.qhg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) %i.qhf, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.qhh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qha, <4 x float> nofpclass(nan inf) %i.qhg, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.qhi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.qgz, <4 x float> nofpclass(nan inf) %i.qhd, <4 x float> nofpclass(nan inf) %i.qhh)
  %i.qhj = fmul fast <4 x float> %i.qhi, %i.qgy
  %i.qhk = select <4 x i1> %i.qgv, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.qhl = fadd fast <4 x float> %i.qhj, %i.qhk
  %i.qhm = bitcast <4 x float> %i.qhl to <4 x i32>
  %i.qhn = or <4 x i32> %i.qgt, %i.qhm
  %i.qho = bitcast <4 x i32> %i.qhn to <4 x float>
  %i.qhp = fadd fast <4 x float> %i.qgq, %i.qho
  %i.qhq = bitcast <8 x i16> %i.qge to <4 x i32>
  %i.qhr = and <4 x i32> %i.qhq, splat (i32 -2147483648)
  %i.qhs = or disjoint <4 x i32> %i.qhr, splat (i32 1078530011)
  %i.qht = bitcast <4 x i32> %i.qhs to <4 x float>
  %i.qhu = fcmp fast uge <4 x float> %i.qht, zeroinitializer
  %i.qhv = bitcast <8 x i16> %i.qgj to <4 x i32>
  %i.qhw = and <4 x i32> %i.qhv, splat (i32 -2147483648)
  %i.qhx = or disjoint <4 x i32> %i.qhw, splat (i32 1070141403)
  %i.qhy = select <4 x i1> %i.qhu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 1078530011)
  %i.qhz = bitcast <4 x float> %i.qhp to <4 x i32>
  %i.qia = select <4 x i1> %.not129.i.i1673, <4 x i32> zeroinitializer, <4 x i32> %i.qhz
  %i.qib = select <4 x i1> %i.qgl, <4 x i32> %i.qhx, <4 x i32> zeroinitializer
  %i.qic = select <4 x i1> %i.qgm, <4 x i32> %i.qhy, <4 x i32> %i.qib
  %i.qid = or <4 x i32> %i.qia, %i.qic
  %i.qie = bitcast <4 x i32> %i.qid to <4 x float>
  %i.qif = shufflevector <4 x float> %i.qie, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.qig = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.qif)
  %i.qih = bitcast <8 x bfloat> %i.qig to <2 x i64>
  %i.qii = extractelement <2 x i64> %i.qih, i64 0
  store i64 %i.qii, ptr %.244150.i.i1672, align 1, !tbaa !555
  %i.qij = getelementptr inbounds nuw i8, ptr %.2153.i.i1669, i64 8 ; 2 uses
  %i.qik = getelementptr inbounds nuw i8, ptr %.236152.i.i1670, i64 8 ; 2 uses
  %i.qil = getelementptr inbounds nuw i8, ptr %.244150.i.i1672, i64 8 ; 2 uses
  %i.qim = add nuw nsw i32 %.240151.i.i1671, 4    ; 3 uses
  %i.qin = or disjoint i32 %i.qim, 3
  %i.qio = icmp slt i32 %i.qin, %i.pzl
end_hunk_11
begin_hunk_12_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %.0121.i.i1518 = phi i32 [ 0, %.lr.ph.i91.i1517 ], [ %i.sfi, %bb.mk ]
  %.2120.i.i1519 = phi ptr [ %1, %.lr.ph.i91.i1517 ], [ %i.sfg, %bb.mk ] ; 2 uses
  %.232119.i.i1520 = phi ptr [ %2, %.lr.ph.i91.i1517 ], [ %i.sfh, %bb.mk ] ; 2 uses
  %i.sdk = load i16, ptr %.2120.i.i1519, align 2, !tbaa !558
  %i.sdl = zext i16 %i.sdk to i32
  %i.sdm = shl nuw i32 %i.sdl, 16
  %i.sdn = insertelement <4 x i32> poison, i32 %i.sdm, i64 0
  %i.sdo = bitcast <4 x i32> %i.sdn to <4 x float>
  %i.sdp = shufflevector <4 x float> %i.sdo, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.sdq = fcmp fast oeq <4 x float> %i.sdp, zeroinitializer ; 2 uses
  %.not114.i.i = or <4 x i1> %i.sdb, %i.sdq
  %i.sdr = bitcast <4 x float> %i.sdp to <4 x i32>
  %i.sds = and <4 x i32> %i.sdr, splat (i32 -2147483648)
  %i.sdt = fcmp fast olt <4 x float> %i.sdp, zeroinitializer
  %i.sdu = select <4 x i1> %i.sdt, <4 x float> splat (float f0xC0490FDB), <4 x float> splat (float f0x40490FDB)
  %i.sdv = select <4 x i1> %i.sdc, <4 x float> %i.sdu, <4 x float> zeroinitializer
  %i.sdw = fmul fast <4 x float> %i.sdp, %i.sdj   ; 2 uses
  %i.sdx = bitcast <4 x float> %i.sdw to <4 x i32>
  %i.sdy = and <4 x i32> %i.sdx, splat (i32 -2147483648)
  %i.sdz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.sdw) ; 3 uses
  %i.sea = fcmp fast ogt <4 x float> %i.sdz, splat (float 1.000000e+00) ; 2 uses
  %i.seb = select <4 x i1> %i.sea, <4 x float> splat (float -1.000000e+00), <4 x float> %i.sdz
  %i.sec = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.sdz, <4 x float> splat (float 1.000000e+00))
  %i.sed = fdiv fast <4 x float> %i.seb, %i.sec   ; 3 uses
  %i.see = fmul fast <4 x float> %i.sed, %i.sed   ; 3 uses
  %i.sef = fmul fast <4 x float> %i.see, %i.see   ; 7 uses
  %i.seg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) splat (float f0xBC83A25C), <4 x float> nofpclass(nan inf) splat (float f0xBD99B01E))
  %i.seh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) %i.seg, <4 x float> nofpclass(nan inf) splat (float f0xBE117200))
  %i.sei = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) %i.seh, <4 x float> nofpclass(nan inf) splat (float f0xBEAAAA53))
  %i.sej = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) splat (float f0x3B3AC537), <4 x float> nofpclass(nan inf) splat (float f0x3D2EDD4E))
  %i.sek = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) %i.sej, <4 x float> nofpclass(nan inf) splat (float f0x3DD9ED24))
  %i.sel = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) %i.sek, <4 x float> nofpclass(nan inf) splat (float f0x3E4CB974))
  %i.sem = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sef, <4 x float> nofpclass(nan inf) %i.sel, <4 x float> nofpclass(nan inf) splat (float 1.000000e+00))
  %i.sen = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.see, <4 x float> nofpclass(nan inf) %i.sei, <4 x float> nofpclass(nan inf) %i.sem)
  %i.seo = fmul fast <4 x float> %i.sen, %i.sed
  %i.sep = select <4 x i1> %i.sea, <4 x float> splat (float f0x3FC90FDB), <4 x float> zeroinitializer
  %i.seq = fadd fast <4 x float> %i.seo, %i.sep
  %i.ser = bitcast <4 x float> %i.seq to <4 x i32>
  %i.ses = or <4 x i32> %i.sdy, %i.ser
  %i.set = bitcast <4 x i32> %i.ses to <4 x float>
  %i.seu = fadd fast <4 x float> %i.sdv, %i.set
  %i.sev = or disjoint <4 x i32> %i.sds, splat (i32 1070141403)
  %i.sew = bitcast <4 x float> %i.seu to <4 x i32>
  %i.sex = select <4 x i1> %.not114.i.i, <4 x i32> zeroinitializer, <4 x i32> %i.sew
  %i.sey = select <4 x i1> %i.sdb, <4 x i32> %i.sev, <4 x i32> zeroinitializer
  %i.sez = select <4 x i1> %i.sdq, <4 x i32> %i.sdi, <4 x i32> %i.sey
  %i.sfa = or <4 x i32> %i.sex, %i.sez
  %i.sfb = bitcast <4 x i32> %i.sfa to <4 x float>
  %i.sfc = shufflevector <4 x float> %i.sfb, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.sfd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sfc)
  %i.sfe = bitcast <8 x bfloat> %i.sfd to <2 x i64>
  %i.sff = extractelement <2 x i64> %i.sfe, i64 0
  store i64 %i.sff, ptr %.232119.i.i1520, align 1, !tbaa !555
  %i.sfg = getelementptr inbounds nuw i8, ptr %.2120.i.i1519, i64 2
  %i.sfh = getelementptr inbounds nuw i8, ptr %.232119.i.i1520, i64 8
  %i.sfi = add nuw nsw i32 %.0121.i.i1518, 1      ; 2 uses
  %exitcond.not.i92.i = icmp eq i32 %i.sfi, %.sroa.speculated104.i1515
  br i1 %exitcond.not.i92.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %bb.mk, !llvm.loop !368

bb.ml:                                            ; preds = %bb.a
  %.sroa.speculated99.i1687 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 22 uses
  %.sroa.speculated.i1688 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.sfj = mul i32 %.sroa.speculated.i1688, %.sroa.speculated99.i1687 ; 46 uses
  %i.sfk = icmp eq i32 %5, %6
  br i1 %i.sfk, label %bb.mm, label %bb.nc

bb.mm:                                            ; preds = %bb.ml
  %i.sfl = icmp eq i32 %3, %4
  br i1 %i.sfl, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.sfm = icmp sgt i32 %i.sfj, 15
  br i1 %i.sfm, label %.lr.ph.i.i1757.preheader, label %.preheader72.i.i

.lr.ph.i.i1757.preheader:                         ; preds = %bb.mn
  %i.sfn = add nsw i32 %i.sfj, -16                ; 2 uses
  %i.sfo = lshr i32 %i.sfn, 4                     ; 2 uses
  %i.sfp = add nuw nsw i32 %i.sfo, 1              ; 2 uses
  %i.sfq = icmp eq i32 %i.sfo, 0
  br i1 %i.sfq, label %.lr.ph.i.i1757.epil.preheader, label %.lr.ph.i.i1757.preheader.new

.lr.ph.i.i1757.preheader.new:                     ; preds = %.lr.ph.i.i1757.preheader
  %unroll_iter10441 = and i32 %i.sfp, 536870910
  br label %.lr.ph.i.i1757

.preheader72.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i1757
  %i.sfr = and i32 %i.sfn, 16
  %lcmp.mod10436.not.not = icmp eq i32 %i.sfr, 0
  br i1 %lcmp.mod10436.not.not, label %.lr.ph.i.i1757.epil.preheader, label %.preheader72.loopexit.i.i

.lr.ph.i.i1757.epil.preheader:                    ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.preheader
  %.076.i.i.epil.init = phi ptr [ %0, %.lr.ph.i.i1757.preheader ], [ %i.shc, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03475.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i1757.preheader ], [ %i.shd, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04273.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i1757.preheader ], [ %i.she, %.preheader72.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod10440 = trunc i32 %i.sfp to i1
  tail call void @llvm.assume(i1 %lcmp.mod10440)
  %i.sfs = load <16 x bfloat>, ptr %.076.i.i.epil.init, align 1, !tbaa !555
  %i.sft = fpext fast <16 x bfloat> %i.sfs to <16 x float> ; 2 uses
  %i.sfu = load <16 x bfloat>, ptr %.03475.i.i.epil.init, align 1, !tbaa !555
  %i.sfv = fpext fast <16 x bfloat> %i.sfu to <16 x float> ; 2 uses
  %i.sfw = fdiv fast <16 x float> %i.sft, %i.sfv
  %i.sfx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sfw, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sfy = fmul fast <16 x float> %i.sfx, %i.sfv
  %i.sfz = fsub fast <16 x float> %i.sft, %i.sfy
  %i.sga = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sfz)
  store <16 x bfloat> %i.sga, ptr %.04273.i.i.epil.init, align 1, !tbaa !555
  %i.sgb = getelementptr inbounds nuw i8, ptr %.076.i.i.epil.init, i64 32
  %i.sgc = getelementptr inbounds nuw i8, ptr %.03475.i.i.epil.init, i64 32
  %i.sgd = getelementptr inbounds nuw i8, ptr %.04273.i.i.epil.init, i64 32
  br label %.preheader72.loopexit.i.i

.preheader72.loopexit.i.i:                        ; preds = %.preheader72.loopexit.i.i.unr-lcssa, %.lr.ph.i.i1757.epil.preheader
  %.lcssa9789 = phi ptr [ %i.shc, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.sgb, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9788 = phi ptr [ %i.shd, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.sgc, %.lr.ph.i.i1757.epil.preheader ]
  %.lcssa9787 = phi ptr [ %i.she, %.preheader72.loopexit.i.i.unr-lcssa ], [ %i.sgd, %.lr.ph.i.i1757.epil.preheader ]
  %i.sge = and i32 %i.sfj, 2147483632
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.preheader72.loopexit.i.i, %bb.mn
  %.042.lcssa.i.i1741 = phi ptr [ %2, %bb.mn ], [ %.lcssa9787, %.preheader72.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i1742 = phi i32 [ 0, %bb.mn ], [ %i.sge, %.preheader72.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i1743 = phi ptr [ %1, %bb.mn ], [ %.lcssa9788, %.preheader72.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i1744 = phi ptr [ %0, %bb.mn ], [ %.lcssa9789, %.preheader72.loopexit.i.i ] ; 2 uses
  %i.sgf = or disjoint i32 %.038.lcssa.i.i1742, 7
  %i.sgg = icmp slt i32 %i.sgf, %i.sfj
  br i1 %i.sgg, label %.lr.ph84.i.i1756, label %.preheader71.i.i

.lr.ph.i.i1757:                                   ; preds = %.lr.ph.i.i1757, %.lr.ph.i.i1757.preheader.new
  %.076.i.i = phi ptr [ %0, %.lr.ph.i.i1757.preheader.new ], [ %i.shc, %.lr.ph.i.i1757 ] ; 3 uses
  %.03475.i.i = phi ptr [ %1, %.lr.ph.i.i1757.preheader.new ], [ %i.shd, %.lr.ph.i.i1757 ] ; 3 uses
  %.04273.i.i = phi ptr [ %2, %.lr.ph.i.i1757.preheader.new ], [ %i.she, %.lr.ph.i.i1757 ] ; 3 uses
  %niter10442 = phi i32 [ 0, %.lr.ph.i.i1757.preheader.new ], [ %niter10442.next.1, %.lr.ph.i.i1757 ]
  %i.sgh = load <16 x bfloat>, ptr %.076.i.i, align 1, !tbaa !555
  %i.sgi = fpext fast <16 x bfloat> %i.sgh to <16 x float> ; 2 uses
  %i.sgj = load <16 x bfloat>, ptr %.03475.i.i, align 1, !tbaa !555
  %i.sgk = fpext fast <16 x bfloat> %i.sgj to <16 x float> ; 2 uses
  %i.sgl = fdiv fast <16 x float> %i.sgi, %i.sgk
  %i.sgm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sgl, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sgn = fmul fast <16 x float> %i.sgm, %i.sgk
  %i.sgo = fsub fast <16 x float> %i.sgi, %i.sgn
  %i.sgp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sgo)
  store <16 x bfloat> %i.sgp, ptr %.04273.i.i, align 1, !tbaa !555
  %i.sgq = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 32
  %i.sgr = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 32
  %i.sgs = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 32
  %i.sgt = load <16 x bfloat>, ptr %i.sgq, align 1, !tbaa !555
  %i.sgu = fpext fast <16 x bfloat> %i.sgt to <16 x float> ; 2 uses
  %i.sgv = load <16 x bfloat>, ptr %i.sgr, align 1, !tbaa !555
  %i.sgw = fpext fast <16 x bfloat> %i.sgv to <16 x float> ; 2 uses
  %i.sgx = fdiv fast <16 x float> %i.sgu, %i.sgw
  %i.sgy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.sgx, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.sgz = fmul fast <16 x float> %i.sgy, %i.sgw
  %i.sha = fsub fast <16 x float> %i.sgu, %i.sgz
  %i.shb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.sha)
  store <16 x bfloat> %i.shb, ptr %i.sgs, align 1, !tbaa !555
  %i.shc = getelementptr inbounds nuw i8, ptr %.076.i.i, i64 64 ; 3 uses
  %i.shd = getelementptr inbounds nuw i8, ptr %.03475.i.i, i64 64 ; 3 uses
  %i.she = getelementptr inbounds nuw i8, ptr %.04273.i.i, i64 64 ; 3 uses
  %niter10442.next.1 = add i32 %niter10442, 2     ; 2 uses
  %niter10442.ncmp.1.not = icmp eq i32 %niter10442.next.1, %unroll_iter10441
  br i1 %niter10442.ncmp.1.not, label %.preheader72.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i1757, !llvm.loop !369

.preheader71.i.i:                                 ; preds = %.lr.ph84.i.i1756, %.preheader72.i.i
  %.143.lcssa.i.i1745 = phi ptr [ %.042.lcssa.i.i1741, %.preheader72.i.i ], [ %i.shs, %.lr.ph84.i.i1756 ] ; 2 uses
  %.139.lcssa.i.i1746 = phi i32 [ %.038.lcssa.i.i1742, %.preheader72.i.i ], [ %i.sht, %.lr.ph84.i.i1756 ] ; 3 uses
  %.135.lcssa.i.i1747 = phi ptr [ %.034.lcssa.i.i1743, %.preheader72.i.i ], [ %i.shr, %.lr.ph84.i.i1756 ] ; 2 uses
  %.1.lcssa.i.i1748 = phi ptr [ %.0.lcssa.i.i1744, %.preheader72.i.i ], [ %i.shq, %.lr.ph84.i.i1756 ] ; 2 uses
  %i.shf = or disjoint i32 %.139.lcssa.i.i1746, 3
  %i.shg = icmp slt i32 %i.shf, %i.sfj
  br i1 %i.shg, label %.lr.ph93.i.i1755, label %.preheader.i.i1749

.lr.ph84.i.i1756:                                 ; preds = %.preheader72.i.i, %.lr.ph84.i.i1756
  %.183.i.i = phi ptr [ %i.shq, %.lr.ph84.i.i1756 ], [ %.0.lcssa.i.i1744, %.preheader72.i.i ] ; 2 uses
  %.13582.i.i = phi ptr [ %i.shr, %.lr.ph84.i.i1756 ], [ %.034.lcssa.i.i1743, %.preheader72.i.i ] ; 2 uses
  %.13981.i.i = phi i32 [ %i.sht, %.lr.ph84.i.i1756 ], [ %.038.lcssa.i.i1742, %.preheader72.i.i ]
  %.14380.i.i = phi ptr [ %i.shs, %.lr.ph84.i.i1756 ], [ %.042.lcssa.i.i1741, %.preheader72.i.i ] ; 2 uses
  %i.shh = load <8 x bfloat>, ptr %.183.i.i, align 1, !tbaa !555
  %i.shi = fpext fast <8 x bfloat> %i.shh to <8 x float> ; 2 uses
  %i.shj = load <8 x bfloat>, ptr %.13582.i.i, align 1, !tbaa !555
  %i.shk = fpext fast <8 x bfloat> %i.shj to <8 x float> ; 2 uses
  %i.shl = fdiv fast <8 x float> %i.shi, %i.shk
  %i.shm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.shl)
  %i.shn = fmul fast <8 x float> %i.shm, %i.shk
  %i.sho = fsub fast <8 x float> %i.shi, %i.shn
  %i.shp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.sho)
  store <8 x bfloat> %i.shp, ptr %.14380.i.i, align 1, !tbaa !555
  %i.shq = getelementptr inbounds nuw i8, ptr %.183.i.i, i64 16 ; 2 uses
  %i.shr = getelementptr inbounds nuw i8, ptr %.13582.i.i, i64 16 ; 2 uses
  %i.shs = getelementptr inbounds nuw i8, ptr %.14380.i.i, i64 16 ; 2 uses
  %i.sht = add nuw nsw i32 %.13981.i.i, 8         ; 3 uses
  %i.shu = or disjoint i32 %i.sht, 7
  %i.shv = icmp slt i32 %i.shu, %i.sfj
  br i1 %i.shv, label %.lr.ph84.i.i1756, label %.preheader71.i.i, !llvm.loop !370

.preheader.i.i1749:                               ; preds = %.lr.ph93.i.i1755, %.preheader71.i.i
  %.244.lcssa.i.i1750 = phi ptr [ %.143.lcssa.i.i1745, %.preheader71.i.i ], [ %i.skj, %.lr.ph93.i.i1755 ] ; 7 uses
  %.240.lcssa.i.i1751 = phi i32 [ %.139.lcssa.i.i1746, %.preheader71.i.i ], [ %i.skk, %.lr.ph93.i.i1755 ] ; 6 uses
  %.236.lcssa.i.i1752 = phi ptr [ %.135.lcssa.i.i1747, %.preheader71.i.i ], [ %i.ski, %.lr.ph93.i.i1755 ] ; 7 uses
  %.2.lcssa.i.i1753 = phi ptr [ %.1.lcssa.i.i1748, %.preheader71.i.i ], [ %i.skh, %.lr.ph93.i.i1755 ] ; 7 uses
  %.236.lcssa.i.i17526987 = ptrtoaddr ptr %.236.lcssa.i.i1752 to i64
  %.244.lcssa.i.i17506988 = ptrtoaddr ptr %.2.lcssa.i.i1753 to i64
  %.2.lcssa.i.i17536989 = ptrtoaddr ptr %.244.lcssa.i.i1750 to i64 ; 2 uses
  %i.shw = icmp slt i32 %.240.lcssa.i.i1751, %i.sfj
  br i1 %i.shw, label %iter.check7009, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check7009:                                   ; preds = %.preheader.i.i1749
  %i.shx = xor i32 %.240.lcssa.i.i1751, -1
  %i.shy = add i32 %i.sfj, %i.shx                 ; 3 uses
  %i.shz = zext i32 %i.shy to i64
  %i.sia = add nuw nsw i64 %i.shz, 1              ; 5 uses
  %min.iters.check6990 = icmp ult i32 %i.shy, 7
  br i1 %min.iters.check6990, label %.lr.ph102.i.i.preheader, label %vector.memcheck6991

vector.memcheck6991:                              ; preds = %iter.check7009
  %i.sib = sub i64 %.244.lcssa.i.i17506988, %.2.lcssa.i.i17536989
  %diff.check6992 = icmp ugt i64 %i.sib, -64
  %i.sic = sub i64 %.236.lcssa.i.i17526987, %.2.lcssa.i.i17536989
  %diff.check6993 = icmp ugt i64 %i.sic, -64
  %conflict.rdx6994 = or i1 %diff.check6992, %diff.check6993
  br i1 %conflict.rdx6994, label %.lr.ph102.i.i.preheader, label %vector.main.loop.iter.check6995

vector.main.loop.iter.check6995:                  ; preds = %vector.memcheck6991
  %min.iters.check6996 = icmp ult i32 %i.shy, 31
  br i1 %min.iters.check6996, label %vec.epilog.ph7013, label %vector.ph6997

vector.ph6997:                                    ; preds = %vector.main.loop.iter.check6995
  %i.sid = and i64 %i.sia, 24
  %n.vec6998 = and i64 %i.sia, 8589934560         ; 5 uses
  %i.sie = shl nuw nsw i64 %n.vec6998, 1          ; 3 uses
  %i.sif = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.sie
  %i.sig = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.sie
  %i.sih = trunc i64 %n.vec6998 to i32
  %i.sii = add i32 %.240.lcssa.i.i1751, %i.sih
  %i.sij = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.sie
  br label %vector.body6999

vector.body6999:                                  ; preds = %vector.ph6997, %vector.body6999
  %index7000 = phi i64 [ 0, %vector.ph6997 ], [ %index.next7006, %vector.body6999 ] ; 2 uses
  %i.sik = shl i64 %index7000, 1                  ; 3 uses
  %next.gep7001 = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.sik
  %next.gep7002 = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.sik
  %next.gep7003 = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.sik
  %wide.load7004 = load <32 x i16>, ptr %next.gep7001, align 2, !tbaa !558
  %i.sil = zext <32 x i16> %wide.load7004 to <32 x i32>
  %i.sim = shl nuw <32 x i32> %i.sil, splat (i32 16)
  %i.sin = bitcast <32 x i32> %i.sim to <32 x float>
  %wide.load7005 = load <32 x i16>, ptr %next.gep7002, align 2, !tbaa !558
  %i.sio = zext <32 x i16> %wide.load7005 to <32 x i32>
  %i.sip = shl nuw <32 x i32> %i.sio, splat (i32 16)
  %i.siq = bitcast <32 x i32> %i.sip to <32 x float>
  %i.sir = frem fast <32 x float> %i.sin, %i.siq
  %i.sis = bitcast <32 x float> %i.sir to <32 x i32>
  %i.sit = lshr <32 x i32> %i.sis, splat (i32 16)
  %i.siu = trunc nuw <32 x i32> %i.sit to <32 x i16>
  store <32 x i16> %i.siu, ptr %next.gep7003, align 2, !tbaa !558
  %index.next7006 = add nuw i64 %index7000, 32    ; 2 uses
  %i.siv = icmp eq i64 %index.next7006, %n.vec6998
  br i1 %i.siv, label %middle.block7007, label %vector.body6999, !llvm.loop !371

middle.block7007:                                 ; preds = %vector.body6999
  %cmp.n7008 = icmp eq i64 %i.sia, %n.vec6998
  br i1 %cmp.n7008, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check7010

vec.epilog.iter.check7010:                        ; preds = %middle.block7007
  %min.epilog.iters.check7012 = icmp eq i64 %i.sid, 0
  br i1 %min.epilog.iters.check7012, label %.lr.ph102.i.i.preheader, label %vec.epilog.ph7013, !prof !561

vec.epilog.ph7013:                                ; preds = %vector.main.loop.iter.check6995, %vec.epilog.iter.check7010
  %vec.epilog.resume.val7014 = phi i64 [ %n.vec6998, %vec.epilog.iter.check7010 ], [ 0, %vector.main.loop.iter.check6995 ]
  %n.vec7015 = and i64 %i.sia, 8589934584         ; 4 uses
  %i.siw = shl nuw nsw i64 %n.vec7015, 1          ; 3 uses
  %i.six = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.siw
  %i.siy = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.siw
  %i.siz = trunc i64 %n.vec7015 to i32
  %i.sja = add i32 %.240.lcssa.i.i1751, %i.siz
  %i.sjb = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.siw
  br label %vec.epilog.vector.body7016

vec.epilog.vector.body7016:                       ; preds = %vec.epilog.vector.body7016, %vec.epilog.ph7013
  %index7017 = phi i64 [ %vec.epilog.resume.val7014, %vec.epilog.ph7013 ], [ %index.next7023, %vec.epilog.vector.body7016 ] ; 2 uses
  %i.sjc = shl i64 %index7017, 1                  ; 3 uses
  %next.gep7018 = getelementptr i8, ptr %.2.lcssa.i.i1753, i64 %i.sjc
  %next.gep7019 = getelementptr i8, ptr %.236.lcssa.i.i1752, i64 %i.sjc
  %next.gep7020 = getelementptr i8, ptr %.244.lcssa.i.i1750, i64 %i.sjc
  %wide.load7021 = load <8 x i16>, ptr %next.gep7018, align 2, !tbaa !558
  %i.sjd = zext <8 x i16> %wide.load7021 to <8 x i32>
  %i.sje = shl nuw <8 x i32> %i.sjd, splat (i32 16)
  %i.sjf = bitcast <8 x i32> %i.sje to <8 x float>
  %wide.load7022 = load <8 x i16>, ptr %next.gep7019, align 2, !tbaa !558
  %i.sjg = zext <8 x i16> %wide.load7022 to <8 x i32>
  %i.sjh = shl nuw <8 x i32> %i.sjg, splat (i32 16)
  %i.sji = bitcast <8 x i32> %i.sjh to <8 x float>
  %i.sjj = frem fast <8 x float> %i.sjf, %i.sji
  %i.sjk = bitcast <8 x float> %i.sjj to <8 x i32>
  %i.sjl = lshr <8 x i32> %i.sjk, splat (i32 16)
  %i.sjm = trunc nuw <8 x i32> %i.sjl to <8 x i16>
  store <8 x i16> %i.sjm, ptr %next.gep7020, align 2, !tbaa !558
  %index.next7023 = add nuw i64 %index7017, 8     ; 2 uses
  %i.sjn = icmp eq i64 %index.next7023, %n.vec7015
  br i1 %i.sjn, label %vec.epilog.middle.block7024, label %vec.epilog.vector.body7016, !llvm.loop !372

vec.epilog.middle.block7024:                      ; preds = %vec.epilog.vector.body7016
  %cmp.n7025 = icmp eq i64 %i.sia, %n.vec7015
  br i1 %cmp.n7025, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph102.i.i.preheader

.lr.ph102.i.i.preheader:                          ; preds = %iter.check7009, %vector.memcheck6991, %vec.epilog.iter.check7010, %vec.epilog.middle.block7024
  %.3101.i.i.ph = phi ptr [ %.2.lcssa.i.i1753, %iter.check7009 ], [ %.2.lcssa.i.i1753, %vector.memcheck6991 ], [ %i.sif, %vec.epilog.iter.check7010 ], [ %i.six, %vec.epilog.middle.block7024 ]
  %.337100.i.i.ph = phi ptr [ %.236.lcssa.i.i1752, %iter.check7009 ], [ %.236.lcssa.i.i1752, %vector.memcheck6991 ], [ %i.sig, %vec.epilog.iter.check7010 ], [ %i.siy, %vec.epilog.middle.block7024 ]
  %.34199.i.i.ph = phi i32 [ %.240.lcssa.i.i1751, %iter.check7009 ], [ %.240.lcssa.i.i1751, %vector.memcheck6991 ], [ %i.sii, %vec.epilog.iter.check7010 ], [ %i.sja, %vec.epilog.middle.block7024 ]
  %.34598.i.i.ph = phi ptr [ %.244.lcssa.i.i1750, %iter.check7009 ], [ %.244.lcssa.i.i1750, %vector.memcheck6991 ], [ %i.sij, %vec.epilog.iter.check7010 ], [ %i.sjb, %vec.epilog.middle.block7024 ]
  br label %.lr.ph102.i.i

.lr.ph93.i.i1755:                                 ; preds = %.preheader71.i.i, %.lr.ph93.i.i1755
  %.292.i.i = phi ptr [ %i.skh, %.lr.ph93.i.i1755 ], [ %.1.lcssa.i.i1748, %.preheader71.i.i ] ; 2 uses
  %.23691.i.i = phi ptr [ %i.ski, %.lr.ph93.i.i1755 ], [ %.135.lcssa.i.i1747, %.preheader71.i.i ] ; 2 uses
  %.24090.i.i = phi i32 [ %i.skk, %.lr.ph93.i.i1755 ], [ %.139.lcssa.i.i1746, %.preheader71.i.i ]
  %.24489.i.i = phi ptr [ %i.skj, %.lr.ph93.i.i1755 ], [ %.143.lcssa.i.i1745, %.preheader71.i.i ] ; 2 uses
  %i.sjo = load i64, ptr %.292.i.i, align 1, !tbaa !555
  %i.sjp = insertelement <2 x i64> poison, i64 %i.sjo, i64 0
  %i.sjq = bitcast <2 x i64> %i.sjp to <8 x i16>
  %i.sjr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sjq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sjs = bitcast <8 x i16> %i.sjr to <4 x float> ; 2 uses
  %i.sjt = load i64, ptr %.23691.i.i, align 1, !tbaa !555
  %i.sju = insertelement <2 x i64> poison, i64 %i.sjt, i64 0
  %i.sjv = bitcast <2 x i64> %i.sju to <8 x i16>
  %i.sjw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sjv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sjx = bitcast <8 x i16> %i.sjw to <4 x float> ; 2 uses
  %i.sjy = fdiv fast <4 x float> %i.sjs, %i.sjx
  %i.sjz = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.sjy)
  %i.ska = sitofp fast <4 x i32> %i.sjz to <4 x float>
  %i.skb = fmul fast <4 x float> %i.sjx, %i.ska
  %i.skc = fsub fast <4 x float> %i.sjs, %i.skb
  %i.skd = shufflevector <4 x float> %i.skc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ske = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.skd)
  %i.skf = bitcast <8 x bfloat> %i.ske to <2 x i64>
  %i.skg = extractelement <2 x i64> %i.skf, i64 0
  store i64 %i.skg, ptr %.24489.i.i, align 1, !tbaa !555
  %i.skh = getelementptr inbounds nuw i8, ptr %.292.i.i, i64 8 ; 2 uses
  %i.ski = getelementptr inbounds nuw i8, ptr %.23691.i.i, i64 8 ; 2 uses
  %i.skj = getelementptr inbounds nuw i8, ptr %.24489.i.i, i64 8 ; 2 uses
  %i.skk = add nuw nsw i32 %.24090.i.i, 4         ; 3 uses
  %i.skl = or disjoint i32 %i.skk, 3
  %i.skm = icmp slt i32 %i.skl, %i.sfj
  br i1 %i.skm, label %.lr.ph93.i.i1755, label %.preheader.i.i1749, !llvm.loop !373

.lr.ph102.i.i:                                    ; preds = %.lr.ph102.i.i.preheader, %.lr.ph102.i.i
  %.3101.i.i = phi ptr [ %i.skn, %.lr.ph102.i.i ], [ %.3101.i.i.ph, %.lr.ph102.i.i.preheader ] ; 2 uses
  %.337100.i.i = phi ptr [ %i.sks, %.lr.ph102.i.i ], [ %.337100.i.i.ph, %.lr.ph102.i.i.preheader ] ; 2 uses
  %.34199.i.i = phi i32 [ %i.slc, %.lr.ph102.i.i ], [ %.34199.i.i.ph, %.lr.ph102.i.i.preheader ]
  %.34598.i.i = phi ptr [ %i.slb, %.lr.ph102.i.i ], [ %.34598.i.i.ph, %.lr.ph102.i.i.preheader ] ; 2 uses
  %i.skn = getelementptr inbounds nuw i8, ptr %.3101.i.i, i64 2
  %i.sko = load i16, ptr %.3101.i.i, align 2, !tbaa !558
  %i.skp = zext i16 %i.sko to i32
  %i.skq = shl nuw i32 %i.skp, 16
  %i.skr = bitcast i32 %i.skq to float
  %i.sks = getelementptr inbounds nuw i8, ptr %.337100.i.i, i64 2
  %i.skt = load i16, ptr %.337100.i.i, align 2, !tbaa !558
  %i.sku = zext i16 %i.skt to i32
  %i.skv = shl nuw i32 %i.sku, 16
  %i.skw = bitcast i32 %i.skv to float
  %i.skx = frem fast float %i.skr, %i.skw
  %i.sky = bitcast float %i.skx to i32
  %i.skz = lshr i32 %i.sky, 16
  %i.sla = trunc nuw i32 %i.skz to i16
  %i.slb = getelementptr inbounds nuw i8, ptr %.34598.i.i, i64 2
  store i16 %i.sla, ptr %.34598.i.i, align 2, !tbaa !558
  %i.slc = add nuw nsw i32 %.34199.i.i, 1         ; 2 uses
  %exitcond.not.i.i1754 = icmp eq i32 %i.slc, %i.sfj
  br i1 %exitcond.not.i.i1754, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph102.i.i, !llvm.loop !374

bb.mo:                                            ; preds = %bb.mm
  %i.sld = icmp eq i32 %4, 1
  br i1 %i.sld, label %bb.mp, label %bb.mv

bb.mp:                                            ; preds = %bb.mo
  %i.sle = load i16, ptr %1, align 2, !tbaa !558
  %i.slf = zext i16 %i.sle to i32
  %i.slg = shl nuw i32 %i.slf, 16
  %i.slh = bitcast i32 %i.slg to float            ; 6 uses
  %i.sli = icmp eq i32 %.sroa.speculated.i1688, 4
  br i1 %i.sli, label %.thread73.i.i, label %bb.mq

.thread73.i.i:                                    ; preds = %bb.mp
  %i.slj = load i64, ptr %1, align 2, !tbaa !555
  %i.slk = insertelement <2 x i64> poison, i64 %i.slj, i64 0
  %i.sll = bitcast <2 x i64> %i.slk to <8 x i16>
  %i.slm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sln = bitcast <8 x i16> %i.slm to <4 x float> ; 2 uses
  %i.slo = shufflevector <4 x float> %i.sln, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.mt

bb.mq:                                            ; preds = %bb.mp
  %i.slp = insertelement <4 x float> poison, float %i.slh, i64 0 ; 2 uses
  %i.slq = shufflevector <4 x float> %i.slp, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.slr = icmp eq i32 %.sroa.speculated.i1688, 8
  br i1 %i.slr, label %.thread72.i.i, label %bb.mr

.thread72.i.i:                                    ; preds = %bb.mq
  %i.sls = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.slt = fpext fast <8 x bfloat> %i.sls to <8 x float>
  br label %bb.mt

bb.mr:                                            ; preds = %bb.mq
  %i.slu = shufflevector <4 x float> %i.slp, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.slv = icmp eq i32 %.sroa.speculated.i1688, 16
  br i1 %i.slv, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.slw = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.slx = fpext fast <16 x bfloat> %i.slw to <16 x float>
  br label %bb.mu

bb.mt:                                            ; preds = %bb.mr, %.thread72.i.i, %.thread73.i.i
  %i.sly = phi <8 x float> [ %i.slt, %.thread72.i.i ], [ %i.slu, %bb.mr ], [ %i.slo, %.thread73.i.i ] ; 2 uses
  %i.slz = phi <4 x float> [ %i.slq, %.thread72.i.i ], [ %i.slq, %bb.mr ], [ %i.sln, %.thread73.i.i ]
  %i.sma = shufflevector <8 x float> %i.sly, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.mu
end_hunk_12
begin_hunk_13_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.tja = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.tiz)
  %i.tjb = fmul fast <8 x float> %i.tja, %i.tiy
  %i.tjc = fsub fast <8 x float> %i.tir, %i.tjb
  %i.tjd = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.tjc)
  store <8 x bfloat> %i.tjd, ptr %.13161.i.i, align 1, !tbaa !555
  %i.tje = getelementptr inbounds nuw i8, ptr %.163.i.i, i64 2
  %i.tjf = getelementptr inbounds nuw i8, ptr %.13161.i.i, i64 16
  %i.tjg = load i16, ptr %i.tje, align 2, !tbaa !558
  %i.tjh = zext i16 %i.tjg to i32
  %i.tji = shl nuw i32 %i.tjh, 16
  %i.tjj = insertelement <8 x i32> poison, i32 %i.tji, i64 0
  %i.tjk = bitcast <8 x i32> %i.tjj to <8 x float>
  %i.tjl = shufflevector <8 x float> %i.tjk, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.tjm = fdiv fast <8 x float> %i.tir, %i.tjl
  %i.tjn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.tjm)
  %i.tjo = fmul fast <8 x float> %i.tjn, %i.tjl
  %i.tjp = fsub fast <8 x float> %i.tir, %i.tjo
  %i.tjq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.tjp)
  store <8 x bfloat> %i.tjq, ptr %i.tjf, align 1, !tbaa !555
  %i.tjr = getelementptr inbounds nuw i8, ptr %.163.i.i, i64 4 ; 2 uses
  %i.tjs = getelementptr inbounds nuw i8, ptr %.13161.i.i, i64 32 ; 2 uses
  %niter10391.next.1 = add i32 %niter10391, 2     ; 2 uses
  %niter10391.ncmp.1 = icmp eq i32 %niter10391.next.1, %unroll_iter10390
  br i1 %niter10391.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9821.unr-lcssa, label %.lr.ph64.i.i, !llvm.loop !397

bb.nl:                                            ; preds = %bb.ni
  %i.tjt = load i64, ptr %0, align 1, !tbaa !555
  %i.tju = insertelement <2 x i64> poison, i64 %i.tjt, i64 0
  %i.tjv = bitcast <2 x i64> %i.tju to <8 x i16>
  %i.tjw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tjv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tjx = bitcast <8 x i16> %i.tjw to <4 x float> ; 2 uses
  br label %.lr.ph.i87.i1689

.lr.ph.i87.i1689:                                 ; preds = %.lr.ph.i87.i1689, %bb.nl
  %.060.i.i1690 = phi i32 [ %i.tkp, %.lr.ph.i87.i1689 ], [ 0, %bb.nl ]
  %.259.i.i1691 = phi ptr [ %i.tkn, %.lr.ph.i87.i1689 ], [ %1, %bb.nl ] ; 2 uses
  %.23258.i.i = phi ptr [ %i.tko, %.lr.ph.i87.i1689 ], [ %2, %bb.nl ] ; 2 uses
  %i.tjy = load i16, ptr %.259.i.i1691, align 2, !tbaa !558
  %i.tjz = zext i16 %i.tjy to i32
  %i.tka = shl nuw i32 %i.tjz, 16
  %i.tkb = insertelement <4 x i32> poison, i32 %i.tka, i64 0
  %i.tkc = bitcast <4 x i32> %i.tkb to <4 x float>
  %i.tkd = shufflevector <4 x float> %i.tkc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tke = fdiv fast <4 x float> %i.tjx, %i.tkd
  %i.tkf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tke)
  %i.tkg = sitofp fast <4 x i32> %i.tkf to <4 x float>
  %i.tkh = fmul fast <4 x float> %i.tkd, %i.tkg
  %i.tki = fsub fast <4 x float> %i.tjx, %i.tkh
  %i.tkj = shufflevector <4 x float> %i.tki, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.tkk = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.tkj)
  %i.tkl = bitcast <8 x bfloat> %i.tkk to <2 x i64>
  %i.tkm = extractelement <2 x i64> %i.tkl, i64 0
  store i64 %i.tkm, ptr %.23258.i.i, align 1, !tbaa !555
  %i.tkn = getelementptr inbounds nuw i8, ptr %.259.i.i1691, i64 2
  %i.tko = getelementptr inbounds nuw i8, ptr %.23258.i.i, i64 8
  %i.tkp = add nuw nsw i32 %.060.i.i1690, 1       ; 2 uses
  %exitcond.not.i88.i1692 = icmp eq i32 %i.tkp, %.sroa.speculated99.i1687
  br i1 %exitcond.not.i88.i1692, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i87.i1689, !llvm.loop !398

bb.nm:                                            ; preds = %bb.a
  %.sroa.speculated99.i1758 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 22 uses
  %.sroa.speculated.i1759 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.tkq = mul i32 %.sroa.speculated.i1759, %.sroa.speculated99.i1758 ; 46 uses
  %i.tkr = icmp eq i32 %5, %6
  br i1 %i.tkr, label %bb.nn, label %bb.od

bb.nn:                                            ; preds = %bb.nm
  %i.tks = icmp eq i32 %3, %4
  br i1 %i.tks, label %bb.no, label %bb.np

bb.no:                                            ; preds = %bb.nn
  %i.tkt = icmp sgt i32 %i.tkq, 15
  br i1 %i.tkt, label %.lr.ph.i.i1923.preheader, label %.preheader72.i.i1892

.lr.ph.i.i1923.preheader:                         ; preds = %bb.no
  %i.tku = add nsw i32 %i.tkq, -16                ; 2 uses
  %i.tkv = lshr i32 %i.tku, 4                     ; 2 uses
  %i.tkw = add nuw nsw i32 %i.tkv, 1              ; 2 uses
  %i.tkx = icmp eq i32 %i.tkv, 0
  br i1 %i.tkx, label %.lr.ph.i.i1923.epil.preheader, label %.lr.ph.i.i1923.preheader.new

.lr.ph.i.i1923.preheader.new:                     ; preds = %.lr.ph.i.i1923.preheader
  %unroll_iter10384 = and i32 %i.tkw, 536870910
  br label %.lr.ph.i.i1923

.preheader72.loopexit.i.i1928.unr-lcssa:          ; preds = %.lr.ph.i.i1923
  %i.tky = and i32 %i.tku, 16
  %lcmp.mod10379.not.not = icmp eq i32 %i.tky, 0
  br i1 %lcmp.mod10379.not.not, label %.lr.ph.i.i1923.epil.preheader, label %.preheader72.loopexit.i.i1928

.lr.ph.i.i1923.epil.preheader:                    ; preds = %.preheader72.loopexit.i.i1928.unr-lcssa, %.lr.ph.i.i1923.preheader
  %.076.i.i1924.epil.init = phi ptr [ %0, %.lr.ph.i.i1923.preheader ], [ %i.tmj, %.preheader72.loopexit.i.i1928.unr-lcssa ] ; 2 uses
  %.03475.i.i1925.epil.init = phi ptr [ %1, %.lr.ph.i.i1923.preheader ], [ %i.tmk, %.preheader72.loopexit.i.i1928.unr-lcssa ] ; 2 uses
  %.04273.i.i1927.epil.init = phi ptr [ %2, %.lr.ph.i.i1923.preheader ], [ %i.tml, %.preheader72.loopexit.i.i1928.unr-lcssa ] ; 2 uses
  %lcmp.mod10383 = trunc i32 %i.tkw to i1
  tail call void @llvm.assume(i1 %lcmp.mod10383)
  %i.tkz = load <16 x bfloat>, ptr %.076.i.i1924.epil.init, align 1, !tbaa !555
  %i.tla = fpext fast <16 x bfloat> %i.tkz to <16 x float> ; 2 uses
  %i.tlb = load <16 x bfloat>, ptr %.03475.i.i1925.epil.init, align 1, !tbaa !555
  %i.tlc = fpext fast <16 x bfloat> %i.tlb to <16 x float> ; 2 uses
  %i.tld = fdiv fast <16 x float> %i.tlc, %i.tla
  %i.tle = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.tld, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.tlf = fmul fast <16 x float> %i.tle, %i.tla
  %i.tlg = fsub fast <16 x float> %i.tlc, %i.tlf
  %i.tlh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tlg)
  store <16 x bfloat> %i.tlh, ptr %.04273.i.i1927.epil.init, align 1, !tbaa !555
  %i.tli = getelementptr inbounds nuw i8, ptr %.076.i.i1924.epil.init, i64 32
  %i.tlj = getelementptr inbounds nuw i8, ptr %.03475.i.i1925.epil.init, i64 32
  %i.tlk = getelementptr inbounds nuw i8, ptr %.04273.i.i1927.epil.init, i64 32
  br label %.preheader72.loopexit.i.i1928

.preheader72.loopexit.i.i1928:                    ; preds = %.preheader72.loopexit.i.i1928.unr-lcssa, %.lr.ph.i.i1923.epil.preheader
  %.lcssa9834 = phi ptr [ %i.tmj, %.preheader72.loopexit.i.i1928.unr-lcssa ], [ %i.tli, %.lr.ph.i.i1923.epil.preheader ]
  %.lcssa9833 = phi ptr [ %i.tmk, %.preheader72.loopexit.i.i1928.unr-lcssa ], [ %i.tlj, %.lr.ph.i.i1923.epil.preheader ]
  %.lcssa9832 = phi ptr [ %i.tml, %.preheader72.loopexit.i.i1928.unr-lcssa ], [ %i.tlk, %.lr.ph.i.i1923.epil.preheader ]
  %i.tll = and i32 %i.tkq, 2147483632
  br label %.preheader72.i.i1892

.preheader72.i.i1892:                             ; preds = %.preheader72.loopexit.i.i1928, %bb.no
  %.042.lcssa.i.i1893 = phi ptr [ %2, %bb.no ], [ %.lcssa9832, %.preheader72.loopexit.i.i1928 ] ; 2 uses
  %.038.lcssa.i.i1894 = phi i32 [ 0, %bb.no ], [ %i.tll, %.preheader72.loopexit.i.i1928 ] ; 3 uses
  %.034.lcssa.i.i1895 = phi ptr [ %1, %bb.no ], [ %.lcssa9833, %.preheader72.loopexit.i.i1928 ] ; 2 uses
  %.0.lcssa.i.i1896 = phi ptr [ %0, %bb.no ], [ %.lcssa9834, %.preheader72.loopexit.i.i1928 ] ; 2 uses
  %i.tlm = or disjoint i32 %.038.lcssa.i.i1894, 7
  %i.tln = icmp slt i32 %i.tlm, %i.tkq
  br i1 %i.tln, label %.lr.ph84.i.i1918, label %.preheader71.i.i1897

.lr.ph.i.i1923:                                   ; preds = %.lr.ph.i.i1923, %.lr.ph.i.i1923.preheader.new
  %.076.i.i1924 = phi ptr [ %0, %.lr.ph.i.i1923.preheader.new ], [ %i.tmj, %.lr.ph.i.i1923 ] ; 3 uses
  %.03475.i.i1925 = phi ptr [ %1, %.lr.ph.i.i1923.preheader.new ], [ %i.tmk, %.lr.ph.i.i1923 ] ; 3 uses
  %.04273.i.i1927 = phi ptr [ %2, %.lr.ph.i.i1923.preheader.new ], [ %i.tml, %.lr.ph.i.i1923 ] ; 3 uses
  %niter10385 = phi i32 [ 0, %.lr.ph.i.i1923.preheader.new ], [ %niter10385.next.1, %.lr.ph.i.i1923 ]
  %i.tlo = load <16 x bfloat>, ptr %.076.i.i1924, align 1, !tbaa !555
  %i.tlp = fpext fast <16 x bfloat> %i.tlo to <16 x float> ; 2 uses
  %i.tlq = load <16 x bfloat>, ptr %.03475.i.i1925, align 1, !tbaa !555
  %i.tlr = fpext fast <16 x bfloat> %i.tlq to <16 x float> ; 2 uses
  %i.tls = fdiv fast <16 x float> %i.tlr, %i.tlp
  %i.tlt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.tls, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.tlu = fmul fast <16 x float> %i.tlt, %i.tlp
  %i.tlv = fsub fast <16 x float> %i.tlr, %i.tlu
  %i.tlw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tlv)
  store <16 x bfloat> %i.tlw, ptr %.04273.i.i1927, align 1, !tbaa !555
  %i.tlx = getelementptr inbounds nuw i8, ptr %.076.i.i1924, i64 32
  %i.tly = getelementptr inbounds nuw i8, ptr %.03475.i.i1925, i64 32
  %i.tlz = getelementptr inbounds nuw i8, ptr %.04273.i.i1927, i64 32
  %i.tma = load <16 x bfloat>, ptr %i.tlx, align 1, !tbaa !555
  %i.tmb = fpext fast <16 x bfloat> %i.tma to <16 x float> ; 2 uses
  %i.tmc = load <16 x bfloat>, ptr %i.tly, align 1, !tbaa !555
  %i.tmd = fpext fast <16 x bfloat> %i.tmc to <16 x float> ; 2 uses
  %i.tme = fdiv fast <16 x float> %i.tmd, %i.tmb
  %i.tmf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.tme, i32 11, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.tmg = fmul fast <16 x float> %i.tmf, %i.tmb
  %i.tmh = fsub fast <16 x float> %i.tmd, %i.tmg
  %i.tmi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.tmh)
  store <16 x bfloat> %i.tmi, ptr %i.tlz, align 1, !tbaa !555
  %i.tmj = getelementptr inbounds nuw i8, ptr %.076.i.i1924, i64 64 ; 3 uses
  %i.tmk = getelementptr inbounds nuw i8, ptr %.03475.i.i1925, i64 64 ; 3 uses
  %i.tml = getelementptr inbounds nuw i8, ptr %.04273.i.i1927, i64 64 ; 3 uses
  %niter10385.next.1 = add i32 %niter10385, 2     ; 2 uses
  %niter10385.ncmp.1.not = icmp eq i32 %niter10385.next.1, %unroll_iter10384
  br i1 %niter10385.ncmp.1.not, label %.preheader72.loopexit.i.i1928.unr-lcssa, label %.lr.ph.i.i1923, !llvm.loop !399

.preheader71.i.i1897:                             ; preds = %.lr.ph84.i.i1918, %.preheader72.i.i1892
  %.143.lcssa.i.i1898 = phi ptr [ %.042.lcssa.i.i1893, %.preheader72.i.i1892 ], [ %i.tmz, %.lr.ph84.i.i1918 ] ; 2 uses
  %.139.lcssa.i.i1899 = phi i32 [ %.038.lcssa.i.i1894, %.preheader72.i.i1892 ], [ %i.tna, %.lr.ph84.i.i1918 ] ; 3 uses
  %.135.lcssa.i.i1900 = phi ptr [ %.034.lcssa.i.i1895, %.preheader72.i.i1892 ], [ %i.tmy, %.lr.ph84.i.i1918 ] ; 2 uses
  %.1.lcssa.i.i1901 = phi ptr [ %.0.lcssa.i.i1896, %.preheader72.i.i1892 ], [ %i.tmx, %.lr.ph84.i.i1918 ] ; 2 uses
  %i.tmm = or disjoint i32 %.139.lcssa.i.i1899, 3
  %i.tmn = icmp slt i32 %i.tmm, %i.tkq
  br i1 %i.tmn, label %.lr.ph93.i.i1913, label %.preheader.i.i1902

.lr.ph84.i.i1918:                                 ; preds = %.preheader72.i.i1892, %.lr.ph84.i.i1918
  %.183.i.i1919 = phi ptr [ %i.tmx, %.lr.ph84.i.i1918 ], [ %.0.lcssa.i.i1896, %.preheader72.i.i1892 ] ; 2 uses
  %.13582.i.i1920 = phi ptr [ %i.tmy, %.lr.ph84.i.i1918 ], [ %.034.lcssa.i.i1895, %.preheader72.i.i1892 ] ; 2 uses
  %.13981.i.i1921 = phi i32 [ %i.tna, %.lr.ph84.i.i1918 ], [ %.038.lcssa.i.i1894, %.preheader72.i.i1892 ]
  %.14380.i.i1922 = phi ptr [ %i.tmz, %.lr.ph84.i.i1918 ], [ %.042.lcssa.i.i1893, %.preheader72.i.i1892 ] ; 2 uses
  %i.tmo = load <8 x bfloat>, ptr %.183.i.i1919, align 1, !tbaa !555
  %i.tmp = fpext fast <8 x bfloat> %i.tmo to <8 x float> ; 2 uses
  %i.tmq = load <8 x bfloat>, ptr %.13582.i.i1920, align 1, !tbaa !555
  %i.tmr = fpext fast <8 x bfloat> %i.tmq to <8 x float> ; 2 uses
  %i.tms = fdiv fast <8 x float> %i.tmr, %i.tmp
  %i.tmt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.trunc.v8f32(<8 x float> %i.tms)
  %i.tmu = fmul fast <8 x float> %i.tmt, %i.tmp
  %i.tmv = fsub fast <8 x float> %i.tmr, %i.tmu
  %i.tmw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.tmv)
  store <8 x bfloat> %i.tmw, ptr %.14380.i.i1922, align 1, !tbaa !555
  %i.tmx = getelementptr inbounds nuw i8, ptr %.183.i.i1919, i64 16 ; 2 uses
  %i.tmy = getelementptr inbounds nuw i8, ptr %.13582.i.i1920, i64 16 ; 2 uses
  %i.tmz = getelementptr inbounds nuw i8, ptr %.14380.i.i1922, i64 16 ; 2 uses
  %i.tna = add nuw nsw i32 %.13981.i.i1921, 8     ; 3 uses
  %i.tnb = or disjoint i32 %i.tna, 7
  %i.tnc = icmp slt i32 %i.tnb, %i.tkq
  br i1 %i.tnc, label %.lr.ph84.i.i1918, label %.preheader71.i.i1897, !llvm.loop !400

.preheader.i.i1902:                               ; preds = %.lr.ph93.i.i1913, %.preheader71.i.i1897
  %.244.lcssa.i.i1903 = phi ptr [ %.143.lcssa.i.i1898, %.preheader71.i.i1897 ], [ %i.tpq, %.lr.ph93.i.i1913 ] ; 7 uses
  %.240.lcssa.i.i1904 = phi i32 [ %.139.lcssa.i.i1899, %.preheader71.i.i1897 ], [ %i.tpr, %.lr.ph93.i.i1913 ] ; 6 uses
  %.236.lcssa.i.i1905 = phi ptr [ %.135.lcssa.i.i1900, %.preheader71.i.i1897 ], [ %i.tpp, %.lr.ph93.i.i1913 ] ; 7 uses
  %.2.lcssa.i.i1906 = phi ptr [ %.1.lcssa.i.i1901, %.preheader71.i.i1897 ], [ %i.tpo, %.lr.ph93.i.i1913 ] ; 7 uses
  %.236.lcssa.i.i19056808 = ptrtoaddr ptr %.236.lcssa.i.i1905 to i64
  %.244.lcssa.i.i19036809 = ptrtoaddr ptr %.2.lcssa.i.i1906 to i64
  %.2.lcssa.i.i19066810 = ptrtoaddr ptr %.244.lcssa.i.i1903 to i64 ; 2 uses
  %i.tnd = icmp slt i32 %.240.lcssa.i.i1904, %i.tkq
  br i1 %i.tnd, label %iter.check6830, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6830:                                   ; preds = %.preheader.i.i1902
  %i.tne = xor i32 %.240.lcssa.i.i1904, -1
  %i.tnf = add i32 %i.tkq, %i.tne                 ; 3 uses
  %i.tng = zext i32 %i.tnf to i64
  %i.tnh = add nuw nsw i64 %i.tng, 1              ; 5 uses
  %min.iters.check6811 = icmp ult i32 %i.tnf, 7
  br i1 %min.iters.check6811, label %.lr.ph102.i.i1907.preheader, label %vector.memcheck6812

vector.memcheck6812:                              ; preds = %iter.check6830
  %i.tni = sub i64 %.244.lcssa.i.i19036809, %.2.lcssa.i.i19066810
  %diff.check6813 = icmp ugt i64 %i.tni, -64
  %i.tnj = sub i64 %.236.lcssa.i.i19056808, %.2.lcssa.i.i19066810
  %diff.check6814 = icmp ugt i64 %i.tnj, -64
  %conflict.rdx6815 = or i1 %diff.check6813, %diff.check6814
  br i1 %conflict.rdx6815, label %.lr.ph102.i.i1907.preheader, label %vector.main.loop.iter.check6816

vector.main.loop.iter.check6816:                  ; preds = %vector.memcheck6812
  %min.iters.check6817 = icmp ult i32 %i.tnf, 31
  br i1 %min.iters.check6817, label %vec.epilog.ph6834, label %vector.ph6818

vector.ph6818:                                    ; preds = %vector.main.loop.iter.check6816
  %i.tnk = and i64 %i.tnh, 24
  %n.vec6819 = and i64 %i.tnh, 8589934560         ; 5 uses
  %i.tnl = shl nuw nsw i64 %n.vec6819, 1          ; 3 uses
  %i.tnm = getelementptr i8, ptr %.2.lcssa.i.i1906, i64 %i.tnl
  %i.tnn = getelementptr i8, ptr %.236.lcssa.i.i1905, i64 %i.tnl
  %i.tno = trunc i64 %n.vec6819 to i32
  %i.tnp = add i32 %.240.lcssa.i.i1904, %i.tno
  %i.tnq = getelementptr i8, ptr %.244.lcssa.i.i1903, i64 %i.tnl
  br label %vector.body6820

vector.body6820:                                  ; preds = %vector.ph6818, %vector.body6820
  %index6821 = phi i64 [ 0, %vector.ph6818 ], [ %index.next6827, %vector.body6820 ] ; 2 uses
  %i.tnr = shl i64 %index6821, 1                  ; 3 uses
  %next.gep6822 = getelementptr i8, ptr %.2.lcssa.i.i1906, i64 %i.tnr
  %next.gep6823 = getelementptr i8, ptr %.236.lcssa.i.i1905, i64 %i.tnr
  %next.gep6824 = getelementptr i8, ptr %.244.lcssa.i.i1903, i64 %i.tnr
  %wide.load6825 = load <32 x i16>, ptr %next.gep6822, align 2, !tbaa !558
  %i.tns = zext <32 x i16> %wide.load6825 to <32 x i32>
  %i.tnt = shl nuw <32 x i32> %i.tns, splat (i32 16)
  %i.tnu = bitcast <32 x i32> %i.tnt to <32 x float>
  %wide.load6826 = load <32 x i16>, ptr %next.gep6823, align 2, !tbaa !558
  %i.tnv = zext <32 x i16> %wide.load6826 to <32 x i32>
  %i.tnw = shl nuw <32 x i32> %i.tnv, splat (i32 16)
  %i.tnx = bitcast <32 x i32> %i.tnw to <32 x float>
  %i.tny = frem fast <32 x float> %i.tnx, %i.tnu
  %i.tnz = bitcast <32 x float> %i.tny to <32 x i32>
  %i.toa = lshr <32 x i32> %i.tnz, splat (i32 16)
  %i.tob = trunc nuw <32 x i32> %i.toa to <32 x i16>
  store <32 x i16> %i.tob, ptr %next.gep6824, align 2, !tbaa !558
  %index.next6827 = add nuw i64 %index6821, 32    ; 2 uses
  %i.toc = icmp eq i64 %index.next6827, %n.vec6819
  br i1 %i.toc, label %middle.block6828, label %vector.body6820, !llvm.loop !401

middle.block6828:                                 ; preds = %vector.body6820
  %cmp.n6829 = icmp eq i64 %i.tnh, %n.vec6819
  br i1 %cmp.n6829, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6831

vec.epilog.iter.check6831:                        ; preds = %middle.block6828
  %min.epilog.iters.check6833 = icmp eq i64 %i.tnk, 0
  br i1 %min.epilog.iters.check6833, label %.lr.ph102.i.i1907.preheader, label %vec.epilog.ph6834, !prof !561

vec.epilog.ph6834:                                ; preds = %vector.main.loop.iter.check6816, %vec.epilog.iter.check6831
  %vec.epilog.resume.val6835 = phi i64 [ %n.vec6819, %vec.epilog.iter.check6831 ], [ 0, %vector.main.loop.iter.check6816 ]
  %n.vec6836 = and i64 %i.tnh, 8589934584         ; 4 uses
  %i.tod = shl nuw nsw i64 %n.vec6836, 1          ; 3 uses
  %i.toe = getelementptr i8, ptr %.2.lcssa.i.i1906, i64 %i.tod
  %i.tof = getelementptr i8, ptr %.236.lcssa.i.i1905, i64 %i.tod
  %i.tog = trunc i64 %n.vec6836 to i32
  %i.toh = add i32 %.240.lcssa.i.i1904, %i.tog
  %i.toi = getelementptr i8, ptr %.244.lcssa.i.i1903, i64 %i.tod
  br label %vec.epilog.vector.body6837

vec.epilog.vector.body6837:                       ; preds = %vec.epilog.vector.body6837, %vec.epilog.ph6834
  %index6838 = phi i64 [ %vec.epilog.resume.val6835, %vec.epilog.ph6834 ], [ %index.next6844, %vec.epilog.vector.body6837 ] ; 2 uses
  %i.toj = shl i64 %index6838, 1                  ; 3 uses
  %next.gep6839 = getelementptr i8, ptr %.2.lcssa.i.i1906, i64 %i.toj
  %next.gep6840 = getelementptr i8, ptr %.236.lcssa.i.i1905, i64 %i.toj
  %next.gep6841 = getelementptr i8, ptr %.244.lcssa.i.i1903, i64 %i.toj
  %wide.load6842 = load <8 x i16>, ptr %next.gep6839, align 2, !tbaa !558
  %i.tok = zext <8 x i16> %wide.load6842 to <8 x i32>
  %i.tol = shl nuw <8 x i32> %i.tok, splat (i32 16)
  %i.tom = bitcast <8 x i32> %i.tol to <8 x float>
  %wide.load6843 = load <8 x i16>, ptr %next.gep6840, align 2, !tbaa !558
  %i.ton = zext <8 x i16> %wide.load6843 to <8 x i32>
  %i.too = shl nuw <8 x i32> %i.ton, splat (i32 16)
  %i.top = bitcast <8 x i32> %i.too to <8 x float>
  %i.toq = frem fast <8 x float> %i.top, %i.tom
  %i.tor = bitcast <8 x float> %i.toq to <8 x i32>
  %i.tos = lshr <8 x i32> %i.tor, splat (i32 16)
  %i.tot = trunc nuw <8 x i32> %i.tos to <8 x i16>
  store <8 x i16> %i.tot, ptr %next.gep6841, align 2, !tbaa !558
  %index.next6844 = add nuw i64 %index6838, 8     ; 2 uses
  %i.tou = icmp eq i64 %index.next6844, %n.vec6836
  br i1 %i.tou, label %vec.epilog.middle.block6845, label %vec.epilog.vector.body6837, !llvm.loop !402

vec.epilog.middle.block6845:                      ; preds = %vec.epilog.vector.body6837
  %cmp.n6846 = icmp eq i64 %i.tnh, %n.vec6836
  br i1 %cmp.n6846, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph102.i.i1907.preheader

.lr.ph102.i.i1907.preheader:                      ; preds = %iter.check6830, %vector.memcheck6812, %vec.epilog.iter.check6831, %vec.epilog.middle.block6845
  %.3101.i.i1908.ph = phi ptr [ %.2.lcssa.i.i1906, %iter.check6830 ], [ %.2.lcssa.i.i1906, %vector.memcheck6812 ], [ %i.tnm, %vec.epilog.iter.check6831 ], [ %i.toe, %vec.epilog.middle.block6845 ]
  %.337100.i.i1909.ph = phi ptr [ %.236.lcssa.i.i1905, %iter.check6830 ], [ %.236.lcssa.i.i1905, %vector.memcheck6812 ], [ %i.tnn, %vec.epilog.iter.check6831 ], [ %i.tof, %vec.epilog.middle.block6845 ]
  %.34199.i.i1910.ph = phi i32 [ %.240.lcssa.i.i1904, %iter.check6830 ], [ %.240.lcssa.i.i1904, %vector.memcheck6812 ], [ %i.tnp, %vec.epilog.iter.check6831 ], [ %i.toh, %vec.epilog.middle.block6845 ]
  %.34598.i.i1911.ph = phi ptr [ %.244.lcssa.i.i1903, %iter.check6830 ], [ %.244.lcssa.i.i1903, %vector.memcheck6812 ], [ %i.tnq, %vec.epilog.iter.check6831 ], [ %i.toi, %vec.epilog.middle.block6845 ]
  br label %.lr.ph102.i.i1907

.lr.ph93.i.i1913:                                 ; preds = %.preheader71.i.i1897, %.lr.ph93.i.i1913
  %.292.i.i1914 = phi ptr [ %i.tpo, %.lr.ph93.i.i1913 ], [ %.1.lcssa.i.i1901, %.preheader71.i.i1897 ] ; 2 uses
  %.23691.i.i1915 = phi ptr [ %i.tpp, %.lr.ph93.i.i1913 ], [ %.135.lcssa.i.i1900, %.preheader71.i.i1897 ] ; 2 uses
  %.24090.i.i1916 = phi i32 [ %i.tpr, %.lr.ph93.i.i1913 ], [ %.139.lcssa.i.i1899, %.preheader71.i.i1897 ]
  %.24489.i.i1917 = phi ptr [ %i.tpq, %.lr.ph93.i.i1913 ], [ %.143.lcssa.i.i1898, %.preheader71.i.i1897 ] ; 2 uses
  %i.tov = load i64, ptr %.292.i.i1914, align 1, !tbaa !555
  %i.tow = insertelement <2 x i64> poison, i64 %i.tov, i64 0
  %i.tox = bitcast <2 x i64> %i.tow to <8 x i16>
  %i.toy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tox, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.toz = bitcast <8 x i16> %i.toy to <4 x float> ; 2 uses
  %i.tpa = load i64, ptr %.23691.i.i1915, align 1, !tbaa !555
  %i.tpb = insertelement <2 x i64> poison, i64 %i.tpa, i64 0
  %i.tpc = bitcast <2 x i64> %i.tpb to <8 x i16>
  %i.tpd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tpc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tpe = bitcast <8 x i16> %i.tpd to <4 x float> ; 2 uses
  %i.tpf = fdiv fast <4 x float> %i.tpe, %i.toz
  %i.tpg = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.tpf)
  %i.tph = sitofp fast <4 x i32> %i.tpg to <4 x float>
  %i.tpi = fmul fast <4 x float> %i.toz, %i.tph
  %i.tpj = fsub fast <4 x float> %i.tpe, %i.tpi
  %i.tpk = shufflevector <4 x float> %i.tpj, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.tpl = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.tpk)
  %i.tpm = bitcast <8 x bfloat> %i.tpl to <2 x i64>
  %i.tpn = extractelement <2 x i64> %i.tpm, i64 0
  store i64 %i.tpn, ptr %.24489.i.i1917, align 1, !tbaa !555
  %i.tpo = getelementptr inbounds nuw i8, ptr %.292.i.i1914, i64 8 ; 2 uses
  %i.tpp = getelementptr inbounds nuw i8, ptr %.23691.i.i1915, i64 8 ; 2 uses
  %i.tpq = getelementptr inbounds nuw i8, ptr %.24489.i.i1917, i64 8 ; 2 uses
  %i.tpr = add nuw nsw i32 %.24090.i.i1916, 4     ; 3 uses
  %i.tps = or disjoint i32 %i.tpr, 3
  %i.tpt = icmp slt i32 %i.tps, %i.tkq
  br i1 %i.tpt, label %.lr.ph93.i.i1913, label %.preheader.i.i1902, !llvm.loop !403

.lr.ph102.i.i1907:                                ; preds = %.lr.ph102.i.i1907.preheader, %.lr.ph102.i.i1907
  %.3101.i.i1908 = phi ptr [ %i.tpu, %.lr.ph102.i.i1907 ], [ %.3101.i.i1908.ph, %.lr.ph102.i.i1907.preheader ] ; 2 uses
  %.337100.i.i1909 = phi ptr [ %i.tpz, %.lr.ph102.i.i1907 ], [ %.337100.i.i1909.ph, %.lr.ph102.i.i1907.preheader ] ; 2 uses
  %.34199.i.i1910 = phi i32 [ %i.tqj, %.lr.ph102.i.i1907 ], [ %.34199.i.i1910.ph, %.lr.ph102.i.i1907.preheader ]
  %.34598.i.i1911 = phi ptr [ %i.tqi, %.lr.ph102.i.i1907 ], [ %.34598.i.i1911.ph, %.lr.ph102.i.i1907.preheader ] ; 2 uses
  %i.tpu = getelementptr inbounds nuw i8, ptr %.3101.i.i1908, i64 2
  %i.tpv = load i16, ptr %.3101.i.i1908, align 2, !tbaa !558
  %i.tpw = zext i16 %i.tpv to i32
  %i.tpx = shl nuw i32 %i.tpw, 16
  %i.tpy = bitcast i32 %i.tpx to float
  %i.tpz = getelementptr inbounds nuw i8, ptr %.337100.i.i1909, i64 2
  %i.tqa = load i16, ptr %.337100.i.i1909, align 2, !tbaa !558
  %i.tqb = zext i16 %i.tqa to i32
  %i.tqc = shl nuw i32 %i.tqb, 16
  %i.tqd = bitcast i32 %i.tqc to float
  %i.tqe = frem fast float %i.tqd, %i.tpy
  %i.tqf = bitcast float %i.tqe to i32
  %i.tqg = lshr i32 %i.tqf, 16
  %i.tqh = trunc nuw i32 %i.tqg to i16
  %i.tqi = getelementptr inbounds nuw i8, ptr %.34598.i.i1911, i64 2
  store i16 %i.tqh, ptr %.34598.i.i1911, align 2, !tbaa !558
  %i.tqj = add nuw nsw i32 %.34199.i.i1910, 1     ; 2 uses
  %exitcond.not.i.i1912 = icmp eq i32 %i.tqj, %i.tkq
  br i1 %exitcond.not.i.i1912, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph102.i.i1907, !llvm.loop !404

bb.np:                                            ; preds = %bb.nn
  %i.tqk = icmp eq i32 %4, 1
  br i1 %i.tqk, label %bb.nq, label %bb.nw

bb.nq:                                            ; preds = %bb.np
  %i.tql = load i16, ptr %1, align 2, !tbaa !558
  %i.tqm = zext i16 %i.tql to i32
  %i.tqn = shl nuw i32 %i.tqm, 16
  %i.tqo = bitcast i32 %i.tqn to float            ; 6 uses
  %i.tqp = icmp eq i32 %.sroa.speculated.i1759, 4
  br i1 %i.tqp, label %.thread73.i.i1891, label %bb.nr

.thread73.i.i1891:                                ; preds = %bb.nq
  %i.tqq = load i64, ptr %1, align 2, !tbaa !555
  %i.tqr = insertelement <2 x i64> poison, i64 %i.tqq, i64 0
  %i.tqs = bitcast <2 x i64> %i.tqr to <8 x i16>
  %i.tqt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tqs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tqu = bitcast <8 x i16> %i.tqt to <4 x float> ; 2 uses
  %i.tqv = shufflevector <4 x float> %i.tqu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  br label %bb.nu

bb.nr:                                            ; preds = %bb.nq
  %i.tqw = insertelement <4 x float> poison, float %i.tqo, i64 0 ; 2 uses
  %i.tqx = shufflevector <4 x float> %i.tqw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.tqy = icmp eq i32 %.sroa.speculated.i1759, 8
  br i1 %i.tqy, label %.thread72.i.i1890, label %bb.ns

.thread72.i.i1890:                                ; preds = %bb.nr
  %i.tqz = load <8 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.tra = fpext fast <8 x bfloat> %i.tqz to <8 x float>
  br label %bb.nu

bb.ns:                                            ; preds = %bb.nr
  %i.trb = shufflevector <4 x float> %i.tqw, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.trc = icmp eq i32 %.sroa.speculated.i1759, 16
  br i1 %i.trc, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  %i.trd = load <16 x bfloat>, ptr %1, align 2, !tbaa !555
  %i.tre = fpext fast <16 x bfloat> %i.trd to <16 x float>
  br label %bb.nv

bb.nu:                                            ; preds = %bb.ns, %.thread72.i.i1890, %.thread73.i.i1891
  %i.trf = phi <8 x float> [ %i.tra, %.thread72.i.i1890 ], [ %i.trb, %bb.ns ], [ %i.tqv, %.thread73.i.i1891 ] ; 2 uses
  %i.trg = phi <4 x float> [ %i.tqx, %.thread72.i.i1890 ], [ %i.tqx, %bb.ns ], [ %i.tqu, %.thread73.i.i1891 ]
  %i.trh = shufflevector <8 x float> %i.trf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.nv
end_hunk_13
begin_hunk_14_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.wse = fadd fast <4 x float> %i.wsd, splat (float 5.000000e-01) ; 2 uses
  %i.wsf = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wse)
  %i.wsg = sitofp fast <4 x i32> %i.wsf to <4 x float> ; 2 uses
  %i.wsh = fcmp fast olt <4 x float> %i.wse, %i.wsg
  %i.wsi = select <4 x i1> %i.wsh, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.wsj = fsub fast <4 x float> %i.wsg, %i.wsi   ; 2 uses
  %i.wsk = fneg fast <4 x float> %i.wsj           ; 2 uses
  %i.wsl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wsk, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.wsc)
  %i.wsm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wsk, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.wsl) ; 8 uses
  %i.wsn = fmul fast <4 x float> %i.wsm, %i.wsm
  %i.wso = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wsm, <4 x float> nofpclass(nan inf) splat (float f0x39506967), <4 x float> splat (float f0x3AB743CE))
  %i.wsp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wso, <4 x float> nofpclass(nan inf) %i.wsm, <4 x float> splat (float f0x3C088908))
  %i.wsq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wsp, <4 x float> nofpclass(nan inf) %i.wsm, <4 x float> splat (float f0x3D2AA9C1))
  %i.wsr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wsq, <4 x float> nofpclass(nan inf) %i.wsm, <4 x float> splat (float f0x3E2AAAAA))
  %i.wss = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wsr, <4 x float> nofpclass(nan inf) %i.wsm, <4 x float> splat (float 5.000000e-01))
  %i.wst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wss, <4 x float> nofpclass(nan inf) %i.wsn, <4 x float> nofpclass(nan inf) %i.wsm)
  %i.wsu = fadd fast <4 x float> %i.wst, splat (float 1.000000e+00)
  %i.wsv = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.wsj)
  %i.wsw = shl <4 x i32> %i.wsv, splat (i32 23)
  %i.wsx = add <4 x i32> %i.wsw, splat (i32 1065353216)
  %i.wsy = bitcast <4 x i32> %i.wsx to <4 x float>
  %i.wsz = fmul fast <4 x float> %i.wsu, %i.wsy
  %i.wta = fadd fast <4 x float> %i.wsz, splat (float 1.000000e+00) ; 2 uses
  %i.wtb = fcmp fast ole <4 x float> %i.wta, zeroinitializer
  %i.wtc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.wta, <4 x float> splat (float f0x00800000))
  %i.wtd = bitcast <4 x float> %i.wtc to <4 x i32> ; 2 uses
  %i.wte = lshr <4 x i32> %i.wtd, splat (i32 23)
  %i.wtf = and <4 x i32> %i.wtd, splat (i32 -2139095041)
  %i.wtg = or disjoint <4 x i32> %i.wtf, splat (i32 1056964608)
  %i.wth = bitcast <4 x i32> %i.wtg to <4 x float> ; 3 uses
  %i.wti = add nsw <4 x i32> %i.wte, splat (i32 -127)
  %i.wtj = sitofp fast <4 x i32> %i.wti to <4 x float> ; 2 uses
  %i.wtk = fadd fast <4 x float> %i.wtj, splat (float 1.000000e+00)
  %i.wtl = fcmp fast olt <4 x float> %i.wth, splat (float f0x3F3504F3) ; 2 uses
  %i.wtm = select <4 x i1> %i.wtl, <4 x float> %i.wth, <4 x float> zeroinitializer
  %i.wtn = fadd fast <4 x float> %i.wth, splat (float -1.000000e+00)
  %i.wto = select fast <4 x i1> %i.wtl, <4 x float> %i.wtj, <4 x float> %i.wtk ; 2 uses
  %i.wtp = fadd fast <4 x float> %i.wtn, %i.wtm   ; 12 uses
  %i.wtq = fmul fast <4 x float> %i.wtp, %i.wtp   ; 2 uses
  %i.wtr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtp, <4 x float> nofpclass(nan inf) splat (float f0x3D9021BB), <4 x float> splat (float f0xBDEBD1B8))
  %i.wts = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtr, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0x3DEF251A))
  %i.wtt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wts, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0xBDFE5D4F))
  %i.wtu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtt, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0x3E11E9BF))
  %i.wtv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtu, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0xBE2AAE50))
  %i.wtw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtv, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0x3E4CCEAC))
  %i.wtx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtw, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0xBE7FFFFC))
  %i.wty = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wtx, <4 x float> nofpclass(nan inf) %i.wtp, <4 x float> splat (float f0x3EAAAAAA))
  %i.wtz = fmul fast <4 x float> %i.wtq, %i.wtp
  %i.wua = fmul fast <4 x float> %i.wtz, %i.wty
  %i.wub = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wto, <4 x float> splat (float f0xB95E8083), <4 x float> nofpclass(nan inf) %i.wua)
  %i.wuc = fneg fast <4 x float> %i.wtq
  %i.wud = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> %i.wuc, <4 x float> splat (float 5.000000e-01), <4 x float> nofpclass(nan inf) %i.wub)
  %i.wue = fadd fast <4 x float> %i.wud, %i.wtp
  %i.wuf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.wto, <4 x float> splat (float f0x3F318000), <4 x float> nofpclass(nan inf) %i.wue)
  %i.wug = select <4 x i1> %i.wtb, <4 x float> splat (float -nan(0x3FFFFF)), <4 x float> %i.wuf
  %i.wuh = fadd fast <4 x float> %i.wug, %i.wry
  %i.wui = shufflevector <4 x float> %i.wuh, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wuj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.wui)
  %i.wuk = bitcast <8 x bfloat> %i.wuj to <2 x i64>
  %i.wul = extractelement <2 x i64> %i.wuk, i64 0
  store i64 %i.wul, ptr %.232172.i.i, align 1, !tbaa !555
  %i.wum = getelementptr inbounds nuw i8, ptr %.2173.i.i1932, i64 2
  %i.wun = getelementptr inbounds nuw i8, ptr %.232172.i.i, i64 8
  %i.wuo = add nuw nsw i32 %.0174.i.i1931, 1      ; 2 uses
  %exitcond.not.i91.i = icmp eq i32 %i.wuo, %.sroa.speculated102.i
  br i1 %exitcond.not.i91.i, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph.i90.i1930, !llvm.loop !450

bb.po:                                            ; preds = %bb.a
  %.sroa.speculated98.i1987 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 25 uses
  %.sroa.speculated.i1988 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.wup = mul i32 %.sroa.speculated.i1988, %.sroa.speculated98.i1987 ; 48 uses
  %i.wuq = icmp eq i32 %5, %6
  br i1 %i.wuq, label %bb.pp, label %bb.qf

bb.pp:                                            ; preds = %bb.po
  %i.wur = icmp eq i32 %3, %4
  br i1 %i.wur, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  %i.wus = icmp sgt i32 %i.wup, 15
  br i1 %i.wus, label %.lr.ph.i.i2065.preheader, label %.preheader64.i.i2048

.lr.ph.i.i2065.preheader:                         ; preds = %bb.pq
  %i.wut = add nsw i32 %i.wup, -16                ; 2 uses
  %i.wuu = lshr i32 %i.wut, 4                     ; 2 uses
  %i.wuv = add nuw nsw i32 %i.wuu, 1              ; 2 uses
  %i.wuw = icmp eq i32 %i.wuu, 0
  br i1 %i.wuw, label %.lr.ph.i.i2065.epil.preheader, label %.lr.ph.i.i2065.preheader.new

.lr.ph.i.i2065.preheader.new:                     ; preds = %.lr.ph.i.i2065.preheader
  %unroll_iter10325 = and i32 %i.wuv, 536870910
  br label %.lr.ph.i.i2065

.preheader64.loopexit.i.i.unr-lcssa:              ; preds = %.lr.ph.i.i2065
  %i.wux = and i32 %i.wut, 16
  %lcmp.mod10320.not.not = icmp eq i32 %i.wux, 0
  br i1 %lcmp.mod10320.not.not, label %.lr.ph.i.i2065.epil.preheader, label %.preheader64.loopexit.i.i

.lr.ph.i.i2065.epil.preheader:                    ; preds = %.preheader64.loopexit.i.i.unr-lcssa, %.lr.ph.i.i2065.preheader
  %.068.i.i2066.epil.init = phi ptr [ %0, %.lr.ph.i.i2065.preheader ], [ %i.wwc, %.preheader64.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.03467.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i2065.preheader ], [ %i.wwd, %.preheader64.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.04265.i.i.epil.init = phi ptr [ %2, %.lr.ph.i.i2065.preheader ], [ %i.wwe, %.preheader64.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod10324 = trunc i32 %i.wuv to i1
  tail call void @llvm.assume(i1 %lcmp.mod10324)
  %i.wuy = load <16 x bfloat>, ptr %.068.i.i2066.epil.init, align 1, !tbaa !555
  %i.wuz = fpext fast <16 x bfloat> %i.wuy to <16 x float>
  %i.wva = load <16 x bfloat>, ptr %.03467.i.i.epil.init, align 1, !tbaa !555
  %i.wvb = fpext fast <16 x bfloat> %i.wva to <16 x float>
  %i.wvc = fdiv fast <16 x float> %i.wuz, %i.wvb
  %i.wvd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.wvc, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.wve = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wvd)
  store <16 x bfloat> %i.wve, ptr %.04265.i.i.epil.init, align 1, !tbaa !555
  %i.wvf = getelementptr inbounds nuw i8, ptr %.068.i.i2066.epil.init, i64 32
  %i.wvg = getelementptr inbounds nuw i8, ptr %.03467.i.i.epil.init, i64 32
  %i.wvh = getelementptr inbounds nuw i8, ptr %.04265.i.i.epil.init, i64 32
  br label %.preheader64.loopexit.i.i

.preheader64.loopexit.i.i:                        ; preds = %.preheader64.loopexit.i.i.unr-lcssa, %.lr.ph.i.i2065.epil.preheader
  %.lcssa9924 = phi ptr [ %i.wwc, %.preheader64.loopexit.i.i.unr-lcssa ], [ %i.wvf, %.lr.ph.i.i2065.epil.preheader ]
  %.lcssa9923 = phi ptr [ %i.wwd, %.preheader64.loopexit.i.i.unr-lcssa ], [ %i.wvg, %.lr.ph.i.i2065.epil.preheader ]
  %.lcssa9922 = phi ptr [ %i.wwe, %.preheader64.loopexit.i.i.unr-lcssa ], [ %i.wvh, %.lr.ph.i.i2065.epil.preheader ]
  %i.wvi = and i32 %i.wup, 2147483632
  br label %.preheader64.i.i2048

.preheader64.i.i2048:                             ; preds = %.preheader64.loopexit.i.i, %bb.pq
  %.042.lcssa.i.i2049 = phi ptr [ %2, %bb.pq ], [ %.lcssa9922, %.preheader64.loopexit.i.i ] ; 2 uses
  %.038.lcssa.i.i2050 = phi i32 [ 0, %bb.pq ], [ %i.wvi, %.preheader64.loopexit.i.i ] ; 3 uses
  %.034.lcssa.i.i2051 = phi ptr [ %1, %bb.pq ], [ %.lcssa9923, %.preheader64.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i2052 = phi ptr [ %0, %bb.pq ], [ %.lcssa9924, %.preheader64.loopexit.i.i ] ; 2 uses
  %i.wvj = or disjoint i32 %.038.lcssa.i.i2050, 7
  %i.wvk = icmp slt i32 %i.wvj, %i.wup
  br i1 %i.wvk, label %.lr.ph76.i.i, label %.preheader63.i.i2053

.lr.ph.i.i2065:                                   ; preds = %.lr.ph.i.i2065, %.lr.ph.i.i2065.preheader.new
  %.068.i.i2066 = phi ptr [ %0, %.lr.ph.i.i2065.preheader.new ], [ %i.wwc, %.lr.ph.i.i2065 ] ; 3 uses
  %.03467.i.i = phi ptr [ %1, %.lr.ph.i.i2065.preheader.new ], [ %i.wwd, %.lr.ph.i.i2065 ] ; 3 uses
  %.04265.i.i = phi ptr [ %2, %.lr.ph.i.i2065.preheader.new ], [ %i.wwe, %.lr.ph.i.i2065 ] ; 3 uses
  %niter10326 = phi i32 [ 0, %.lr.ph.i.i2065.preheader.new ], [ %niter10326.next.1, %.lr.ph.i.i2065 ]
  %i.wvl = load <16 x bfloat>, ptr %.068.i.i2066, align 1, !tbaa !555
  %i.wvm = fpext fast <16 x bfloat> %i.wvl to <16 x float>
  %i.wvn = load <16 x bfloat>, ptr %.03467.i.i, align 1, !tbaa !555
  %i.wvo = fpext fast <16 x bfloat> %i.wvn to <16 x float>
  %i.wvp = fdiv fast <16 x float> %i.wvm, %i.wvo
  %i.wvq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.wvp, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.wvr = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wvq)
  store <16 x bfloat> %i.wvr, ptr %.04265.i.i, align 1, !tbaa !555
  %i.wvs = getelementptr inbounds nuw i8, ptr %.068.i.i2066, i64 32
  %i.wvt = getelementptr inbounds nuw i8, ptr %.03467.i.i, i64 32
  %i.wvu = getelementptr inbounds nuw i8, ptr %.04265.i.i, i64 32
  %i.wvv = load <16 x bfloat>, ptr %i.wvs, align 1, !tbaa !555
  %i.wvw = fpext fast <16 x bfloat> %i.wvv to <16 x float>
  %i.wvx = load <16 x bfloat>, ptr %i.wvt, align 1, !tbaa !555
  %i.wvy = fpext fast <16 x bfloat> %i.wvx to <16 x float>
  %i.wvz = fdiv fast <16 x float> %i.wvw, %i.wvy
  %i.wwa = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.wvz, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.wwb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.wwa)
  store <16 x bfloat> %i.wwb, ptr %i.wvu, align 1, !tbaa !555
  %i.wwc = getelementptr inbounds nuw i8, ptr %.068.i.i2066, i64 64 ; 3 uses
  %i.wwd = getelementptr inbounds nuw i8, ptr %.03467.i.i, i64 64 ; 3 uses
  %i.wwe = getelementptr inbounds nuw i8, ptr %.04265.i.i, i64 64 ; 3 uses
  %niter10326.next.1 = add i32 %niter10326, 2     ; 2 uses
  %niter10326.ncmp.1.not = icmp eq i32 %niter10326.next.1, %unroll_iter10325
  br i1 %niter10326.ncmp.1.not, label %.preheader64.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i2065, !llvm.loop !451

.preheader63.i.i2053:                             ; preds = %.lr.ph76.i.i, %.preheader64.i.i2048
  %.143.lcssa.i.i2054 = phi ptr [ %.042.lcssa.i.i2049, %.preheader64.i.i2048 ], [ %i.wwq, %.lr.ph76.i.i ] ; 2 uses
  %.139.lcssa.i.i2055 = phi i32 [ %.038.lcssa.i.i2050, %.preheader64.i.i2048 ], [ %i.wwr, %.lr.ph76.i.i ] ; 3 uses
  %.135.lcssa.i.i2056 = phi ptr [ %.034.lcssa.i.i2051, %.preheader64.i.i2048 ], [ %i.wwp, %.lr.ph76.i.i ] ; 2 uses
  %.1.lcssa.i.i2057 = phi ptr [ %.0.lcssa.i.i2052, %.preheader64.i.i2048 ], [ %i.wwo, %.lr.ph76.i.i ] ; 2 uses
  %i.wwf = or disjoint i32 %.139.lcssa.i.i2055, 3
  %i.wwg = icmp slt i32 %i.wwf, %i.wup
  br i1 %i.wwg, label %.lr.ph85.i.i, label %.preheader.i.i2058

.lr.ph76.i.i:                                     ; preds = %.preheader64.i.i2048, %.lr.ph76.i.i
  %.175.i.i = phi ptr [ %i.wwo, %.lr.ph76.i.i ], [ %.0.lcssa.i.i2052, %.preheader64.i.i2048 ] ; 2 uses
  %.13574.i.i = phi ptr [ %i.wwp, %.lr.ph76.i.i ], [ %.034.lcssa.i.i2051, %.preheader64.i.i2048 ] ; 2 uses
  %.13973.i.i = phi i32 [ %i.wwr, %.lr.ph76.i.i ], [ %.038.lcssa.i.i2050, %.preheader64.i.i2048 ]
  %.14372.i.i = phi ptr [ %i.wwq, %.lr.ph76.i.i ], [ %.042.lcssa.i.i2049, %.preheader64.i.i2048 ] ; 2 uses
  %i.wwh = load <8 x bfloat>, ptr %.175.i.i, align 1, !tbaa !555
  %i.wwi = fpext fast <8 x bfloat> %i.wwh to <8 x float>
  %i.wwj = load <8 x bfloat>, ptr %.13574.i.i, align 1, !tbaa !555
  %i.wwk = fpext fast <8 x bfloat> %i.wwj to <8 x float>
  %i.wwl = fdiv fast <8 x float> %i.wwi, %i.wwk
  %i.wwm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.wwl, i32 1)
  %i.wwn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.wwm)
  store <8 x bfloat> %i.wwn, ptr %.14372.i.i, align 1, !tbaa !555
  %i.wwo = getelementptr inbounds nuw i8, ptr %.175.i.i, i64 16 ; 2 uses
  %i.wwp = getelementptr inbounds nuw i8, ptr %.13574.i.i, i64 16 ; 2 uses
  %i.wwq = getelementptr inbounds nuw i8, ptr %.14372.i.i, i64 16 ; 2 uses
  %i.wwr = add nuw nsw i32 %.13973.i.i, 8         ; 3 uses
  %i.wws = or disjoint i32 %i.wwr, 7
  %i.wwt = icmp slt i32 %i.wws, %i.wup
  br i1 %i.wwt, label %.lr.ph76.i.i, label %.preheader63.i.i2053, !llvm.loop !452

.preheader.i.i2058:                               ; preds = %.lr.ph85.i.i, %.preheader63.i.i2053
  %.244.lcssa.i.i2059 = phi ptr [ %.143.lcssa.i.i2054, %.preheader63.i.i2053 ], [ %i.wzz, %.lr.ph85.i.i ] ; 7 uses
  %.240.lcssa.i.i2060 = phi i32 [ %.139.lcssa.i.i2055, %.preheader63.i.i2053 ], [ %i.xaa, %.lr.ph85.i.i ] ; 6 uses
  %.236.lcssa.i.i2061 = phi ptr [ %.135.lcssa.i.i2056, %.preheader63.i.i2053 ], [ %i.wzy, %.lr.ph85.i.i ] ; 7 uses
  %.2.lcssa.i.i2062 = phi ptr [ %.1.lcssa.i.i2057, %.preheader63.i.i2053 ], [ %i.wzx, %.lr.ph85.i.i ] ; 7 uses
  %.236.lcssa.i.i20616629 = ptrtoaddr ptr %.236.lcssa.i.i2061 to i64
  %.244.lcssa.i.i20596630 = ptrtoaddr ptr %.2.lcssa.i.i2062 to i64
  %.2.lcssa.i.i20626631 = ptrtoaddr ptr %.244.lcssa.i.i2059 to i64 ; 2 uses
  %i.wwu = icmp slt i32 %.240.lcssa.i.i2060, %i.wup
  br i1 %i.wwu, label %iter.check6651, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6651:                                   ; preds = %.preheader.i.i2058
  %i.wwv = xor i32 %.240.lcssa.i.i2060, -1
  %i.www = add i32 %i.wup, %i.wwv                 ; 3 uses
  %i.wwx = zext i32 %i.www to i64
  %i.wwy = add nuw nsw i64 %i.wwx, 1              ; 5 uses
  %min.iters.check6632 = icmp ult i32 %i.www, 7
  br i1 %min.iters.check6632, label %.lr.ph94.i.i2063.preheader, label %vector.memcheck6633

vector.memcheck6633:                              ; preds = %iter.check6651
  %i.wwz = sub i64 %.244.lcssa.i.i20596630, %.2.lcssa.i.i20626631
  %diff.check6634 = icmp ugt i64 %i.wwz, -64
  %i.wxa = sub i64 %.236.lcssa.i.i20616629, %.2.lcssa.i.i20626631
  %diff.check6635 = icmp ugt i64 %i.wxa, -64
  %conflict.rdx6636 = or i1 %diff.check6634, %diff.check6635
  br i1 %conflict.rdx6636, label %.lr.ph94.i.i2063.preheader, label %vector.main.loop.iter.check6637

vector.main.loop.iter.check6637:                  ; preds = %vector.memcheck6633
  %min.iters.check6638 = icmp ult i32 %i.www, 31
  br i1 %min.iters.check6638, label %vec.epilog.ph6655, label %vector.ph6639

vector.ph6639:                                    ; preds = %vector.main.loop.iter.check6637
  %i.wxb = and i64 %i.wwy, 24
  %n.vec6640 = and i64 %i.wwy, 8589934560         ; 5 uses
  %i.wxc = shl nuw nsw i64 %n.vec6640, 1          ; 3 uses
  %i.wxd = getelementptr i8, ptr %.2.lcssa.i.i2062, i64 %i.wxc
  %i.wxe = getelementptr i8, ptr %.236.lcssa.i.i2061, i64 %i.wxc
  %i.wxf = trunc i64 %n.vec6640 to i32
  %i.wxg = add i32 %.240.lcssa.i.i2060, %i.wxf
  %i.wxh = getelementptr i8, ptr %.244.lcssa.i.i2059, i64 %i.wxc
  br label %vector.body6641

vector.body6641:                                  ; preds = %vector.ph6639, %vector.body6641
  %index6642 = phi i64 [ 0, %vector.ph6639 ], [ %index.next6648, %vector.body6641 ] ; 2 uses
  %i.wxi = shl i64 %index6642, 1                  ; 3 uses
  %next.gep6643 = getelementptr i8, ptr %.2.lcssa.i.i2062, i64 %i.wxi
  %next.gep6644 = getelementptr i8, ptr %.236.lcssa.i.i2061, i64 %i.wxi
  %next.gep6645 = getelementptr i8, ptr %.244.lcssa.i.i2059, i64 %i.wxi
  %wide.load6646 = load <32 x i16>, ptr %next.gep6643, align 2, !tbaa !558
  %i.wxj = zext <32 x i16> %wide.load6646 to <32 x i32>
  %i.wxk = shl nuw <32 x i32> %i.wxj, splat (i32 16)
  %i.wxl = bitcast <32 x i32> %i.wxk to <32 x float>
  %wide.load6647 = load <32 x i16>, ptr %next.gep6644, align 2, !tbaa !558
  %i.wxm = zext <32 x i16> %wide.load6647 to <32 x i32>
  %i.wxn = shl nuw <32 x i32> %i.wxm, splat (i32 16)
  %i.wxo = bitcast <32 x i32> %i.wxn to <32 x float>
  %i.wxp = fdiv fast <32 x float> %i.wxl, %i.wxo
  %i.wxq = tail call fast <32 x float> @llvm.floor.v32f32(<32 x float> %i.wxp)
  %i.wxr = bitcast <32 x float> %i.wxq to <32 x i32>
  %i.wxs = lshr <32 x i32> %i.wxr, splat (i32 16)
  %i.wxt = trunc nuw <32 x i32> %i.wxs to <32 x i16>
  store <32 x i16> %i.wxt, ptr %next.gep6645, align 2, !tbaa !558
  %index.next6648 = add nuw i64 %index6642, 32    ; 2 uses
  %i.wxu = icmp eq i64 %index.next6648, %n.vec6640
  br i1 %i.wxu, label %middle.block6649, label %vector.body6641, !llvm.loop !453

middle.block6649:                                 ; preds = %vector.body6641
  %cmp.n6650 = icmp eq i64 %i.wwy, %n.vec6640
  br i1 %cmp.n6650, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6652

vec.epilog.iter.check6652:                        ; preds = %middle.block6649
  %min.epilog.iters.check6654 = icmp eq i64 %i.wxb, 0
  br i1 %min.epilog.iters.check6654, label %.lr.ph94.i.i2063.preheader, label %vec.epilog.ph6655, !prof !561

vec.epilog.ph6655:                                ; preds = %vector.main.loop.iter.check6637, %vec.epilog.iter.check6652
  %vec.epilog.resume.val6656 = phi i64 [ %n.vec6640, %vec.epilog.iter.check6652 ], [ 0, %vector.main.loop.iter.check6637 ]
  %n.vec6657 = and i64 %i.wwy, 8589934584         ; 4 uses
  %i.wxv = shl nuw nsw i64 %n.vec6657, 1          ; 3 uses
  %i.wxw = getelementptr i8, ptr %.2.lcssa.i.i2062, i64 %i.wxv
  %i.wxx = getelementptr i8, ptr %.236.lcssa.i.i2061, i64 %i.wxv
  %i.wxy = trunc i64 %n.vec6657 to i32
  %i.wxz = add i32 %.240.lcssa.i.i2060, %i.wxy
  %i.wya = getelementptr i8, ptr %.244.lcssa.i.i2059, i64 %i.wxv
  br label %vec.epilog.vector.body6658

vec.epilog.vector.body6658:                       ; preds = %vec.epilog.vector.body6658, %vec.epilog.ph6655
  %index6659 = phi i64 [ %vec.epilog.resume.val6656, %vec.epilog.ph6655 ], [ %index.next6665, %vec.epilog.vector.body6658 ] ; 2 uses
  %i.wyb = shl i64 %index6659, 1                  ; 3 uses
  %next.gep6660 = getelementptr i8, ptr %.2.lcssa.i.i2062, i64 %i.wyb
  %next.gep6661 = getelementptr i8, ptr %.236.lcssa.i.i2061, i64 %i.wyb
  %next.gep6662 = getelementptr i8, ptr %.244.lcssa.i.i2059, i64 %i.wyb
  %wide.load6663 = load <8 x i16>, ptr %next.gep6660, align 2, !tbaa !558
  %i.wyc = zext <8 x i16> %wide.load6663 to <8 x i32>
  %i.wyd = shl nuw <8 x i32> %i.wyc, splat (i32 16)
  %i.wye = bitcast <8 x i32> %i.wyd to <8 x float>
  %wide.load6664 = load <8 x i16>, ptr %next.gep6661, align 2, !tbaa !558
  %i.wyf = zext <8 x i16> %wide.load6664 to <8 x i32>
  %i.wyg = shl nuw <8 x i32> %i.wyf, splat (i32 16)
  %i.wyh = bitcast <8 x i32> %i.wyg to <8 x float>
  %i.wyi = fdiv fast <8 x float> %i.wye, %i.wyh
  %i.wyj = tail call fast <8 x float> @llvm.floor.v8f32(<8 x float> %i.wyi)
  %i.wyk = bitcast <8 x float> %i.wyj to <8 x i32>
  %i.wyl = lshr <8 x i32> %i.wyk, splat (i32 16)
  %i.wym = trunc nuw <8 x i32> %i.wyl to <8 x i16>
  store <8 x i16> %i.wym, ptr %next.gep6662, align 2, !tbaa !558
  %index.next6665 = add nuw i64 %index6659, 8     ; 2 uses
  %i.wyn = icmp eq i64 %index.next6665, %n.vec6657
  br i1 %i.wyn, label %vec.epilog.middle.block6666, label %vec.epilog.vector.body6658, !llvm.loop !454

vec.epilog.middle.block6666:                      ; preds = %vec.epilog.vector.body6658
  %cmp.n6667 = icmp eq i64 %i.wwy, %n.vec6657
  br i1 %cmp.n6667, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i2063.preheader

.lr.ph94.i.i2063.preheader:                       ; preds = %iter.check6651, %vector.memcheck6633, %vec.epilog.iter.check6652, %vec.epilog.middle.block6666
  %.393.i.i.ph = phi ptr [ %.2.lcssa.i.i2062, %iter.check6651 ], [ %.2.lcssa.i.i2062, %vector.memcheck6633 ], [ %i.wxd, %vec.epilog.iter.check6652 ], [ %i.wxw, %vec.epilog.middle.block6666 ] ; 3 uses
  %.33792.i.i.ph = phi ptr [ %.236.lcssa.i.i2061, %iter.check6651 ], [ %.236.lcssa.i.i2061, %vector.memcheck6633 ], [ %i.wxe, %vec.epilog.iter.check6652 ], [ %i.wxx, %vec.epilog.middle.block6666 ] ; 3 uses
  %.34191.i.i.ph = phi i32 [ %.240.lcssa.i.i2060, %iter.check6651 ], [ %.240.lcssa.i.i2060, %vector.memcheck6633 ], [ %i.wxg, %vec.epilog.iter.check6652 ], [ %i.wxz, %vec.epilog.middle.block6666 ] ; 4 uses
  %.34590.i.i.ph = phi ptr [ %.244.lcssa.i.i2059, %iter.check6651 ], [ %.244.lcssa.i.i2059, %vector.memcheck6633 ], [ %i.wxh, %vec.epilog.iter.check6652 ], [ %i.wya, %vec.epilog.middle.block6666 ] ; 3 uses
  %i.wyo = sub i32 %i.wup, %.34191.i.i.ph
  %.neg11038 = add i32 %.34191.i.i.ph, 1
  %xtraiter10327 = and i32 %i.wyo, 1
  %lcmp.mod10328.not = icmp eq i32 %xtraiter10327, 0
  br i1 %lcmp.mod10328.not, label %.lr.ph94.i.i2063.prol.loopexit, label %.lr.ph94.i.i2063.prol

.lr.ph94.i.i2063.prol:                            ; preds = %.lr.ph94.i.i2063.preheader
  %i.wyp = getelementptr inbounds nuw i8, ptr %.393.i.i.ph, i64 2
  %i.wyq = load i16, ptr %.393.i.i.ph, align 2, !tbaa !558
  %i.wyr = zext i16 %i.wyq to i32
  %i.wys = shl nuw i32 %i.wyr, 16
  %i.wyt = bitcast i32 %i.wys to float
  %i.wyu = getelementptr inbounds nuw i8, ptr %.33792.i.i.ph, i64 2
  %i.wyv = load i16, ptr %.33792.i.i.ph, align 2, !tbaa !558
  %i.wyw = zext i16 %i.wyv to i32
  %i.wyx = shl nuw i32 %i.wyw, 16
  %i.wyy = bitcast i32 %i.wyx to float
  %i.wyz = fdiv fast float %i.wyt, %i.wyy
  %i.wza = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.wyz)
  %i.wzb = bitcast float %i.wza to i32
  %i.wzc = lshr i32 %i.wzb, 16
  %i.wzd = trunc nuw i32 %i.wzc to i16
  %i.wze = getelementptr inbounds nuw i8, ptr %.34590.i.i.ph, i64 2
  store i16 %i.wzd, ptr %.34590.i.i.ph, align 2, !tbaa !558
  %i.wzf = add nuw nsw i32 %.34191.i.i.ph, 1
  br label %.lr.ph94.i.i2063.prol.loopexit

.lr.ph94.i.i2063.prol.loopexit:                   ; preds = %.lr.ph94.i.i2063.prol, %.lr.ph94.i.i2063.preheader
  %.393.i.i.unr = phi ptr [ %.393.i.i.ph, %.lr.ph94.i.i2063.preheader ], [ %i.wyp, %.lr.ph94.i.i2063.prol ]
  %.33792.i.i.unr = phi ptr [ %.33792.i.i.ph, %.lr.ph94.i.i2063.preheader ], [ %i.wyu, %.lr.ph94.i.i2063.prol ]
  %.34191.i.i.unr = phi i32 [ %.34191.i.i.ph, %.lr.ph94.i.i2063.preheader ], [ %i.wzf, %.lr.ph94.i.i2063.prol ]
  %.34590.i.i.unr = phi ptr [ %.34590.i.i.ph, %.lr.ph94.i.i2063.preheader ], [ %i.wze, %.lr.ph94.i.i2063.prol ]
  %i.wzg = icmp eq i32 %i.wup, %.neg11038
  br i1 %i.wzg, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i2063

.lr.ph85.i.i:                                     ; preds = %.preheader63.i.i2053, %.lr.ph85.i.i
  %.284.i.i = phi ptr [ %i.wzx, %.lr.ph85.i.i ], [ %.1.lcssa.i.i2057, %.preheader63.i.i2053 ] ; 2 uses
  %.23683.i.i = phi ptr [ %i.wzy, %.lr.ph85.i.i ], [ %.135.lcssa.i.i2056, %.preheader63.i.i2053 ] ; 2 uses
  %.24082.i.i = phi i32 [ %i.xaa, %.lr.ph85.i.i ], [ %.139.lcssa.i.i2055, %.preheader63.i.i2053 ]
  %.24481.i.i = phi ptr [ %i.wzz, %.lr.ph85.i.i ], [ %.143.lcssa.i.i2054, %.preheader63.i.i2053 ] ; 2 uses
  %i.wzh = load i64, ptr %.284.i.i, align 1, !tbaa !555
  %i.wzi = insertelement <2 x i64> poison, i64 %i.wzh, i64 0
  %i.wzj = bitcast <2 x i64> %i.wzi to <8 x i16>
  %i.wzk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wzj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wzl = bitcast <8 x i16> %i.wzk to <4 x float>
  %i.wzm = load i64, ptr %.23683.i.i, align 1, !tbaa !555
  %i.wzn = insertelement <2 x i64> poison, i64 %i.wzm, i64 0
  %i.wzo = bitcast <2 x i64> %i.wzn to <8 x i16>
  %i.wzp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.wzo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wzq = bitcast <8 x i16> %i.wzp to <4 x float>
  %i.wzr = fdiv fast <4 x float> %i.wzl, %i.wzq
  %i.wzs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.wzr, i32 1)
  %i.wzt = shufflevector <4 x float> %i.wzs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wzu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.wzt)
  %i.wzv = bitcast <8 x bfloat> %i.wzu to <2 x i64>
  %i.wzw = extractelement <2 x i64> %i.wzv, i64 0
  store i64 %i.wzw, ptr %.24481.i.i, align 1, !tbaa !555
  %i.wzx = getelementptr inbounds nuw i8, ptr %.284.i.i, i64 8 ; 2 uses
  %i.wzy = getelementptr inbounds nuw i8, ptr %.23683.i.i, i64 8 ; 2 uses
  %i.wzz = getelementptr inbounds nuw i8, ptr %.24481.i.i, i64 8 ; 2 uses
  %i.xaa = add nuw nsw i32 %.24082.i.i, 4         ; 3 uses
  %i.xab = or disjoint i32 %i.xaa, 3
  %i.xac = icmp slt i32 %i.xab, %i.wup
  br i1 %i.xac, label %.lr.ph85.i.i, label %.preheader.i.i2058, !llvm.loop !455

.lr.ph94.i.i2063:                                 ; preds = %.lr.ph94.i.i2063.prol.loopexit, %.lr.ph94.i.i2063
  %.393.i.i = phi ptr [ %i.xat, %.lr.ph94.i.i2063 ], [ %.393.i.i.unr, %.lr.ph94.i.i2063.prol.loopexit ] ; 3 uses
  %.33792.i.i = phi ptr [ %i.xay, %.lr.ph94.i.i2063 ], [ %.33792.i.i.unr, %.lr.ph94.i.i2063.prol.loopexit ] ; 3 uses
  %.34191.i.i = phi i32 [ %i.xbj, %.lr.ph94.i.i2063 ], [ %.34191.i.i.unr, %.lr.ph94.i.i2063.prol.loopexit ]
  %.34590.i.i = phi ptr [ %i.xbi, %.lr.ph94.i.i2063 ], [ %.34590.i.i.unr, %.lr.ph94.i.i2063.prol.loopexit ] ; 3 uses
  %i.xad = getelementptr inbounds nuw i8, ptr %.393.i.i, i64 2
  %i.xae = load i16, ptr %.393.i.i, align 2, !tbaa !558
  %i.xaf = zext i16 %i.xae to i32
  %i.xag = shl nuw i32 %i.xaf, 16
  %i.xah = bitcast i32 %i.xag to float
  %i.xai = getelementptr inbounds nuw i8, ptr %.33792.i.i, i64 2
  %i.xaj = load i16, ptr %.33792.i.i, align 2, !tbaa !558
  %i.xak = zext i16 %i.xaj to i32
  %i.xal = shl nuw i32 %i.xak, 16
  %i.xam = bitcast i32 %i.xal to float
  %i.xan = fdiv fast float %i.xah, %i.xam
  %i.xao = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.xan)
  %i.xap = bitcast float %i.xao to i32
  %i.xaq = lshr i32 %i.xap, 16
  %i.xar = trunc nuw i32 %i.xaq to i16
  %i.xas = getelementptr inbounds nuw i8, ptr %.34590.i.i, i64 2
  store i16 %i.xar, ptr %.34590.i.i, align 2, !tbaa !558
  %i.xat = getelementptr inbounds nuw i8, ptr %.393.i.i, i64 4
  %i.xau = load i16, ptr %i.xad, align 2, !tbaa !558
  %i.xav = zext i16 %i.xau to i32
  %i.xaw = shl nuw i32 %i.xav, 16
  %i.xax = bitcast i32 %i.xaw to float
  %i.xay = getelementptr inbounds nuw i8, ptr %.33792.i.i, i64 4
  %i.xaz = load i16, ptr %i.xai, align 2, !tbaa !558
  %i.xba = zext i16 %i.xaz to i32
  %i.xbb = shl nuw i32 %i.xba, 16
  %i.xbc = bitcast i32 %i.xbb to float
  %i.xbd = fdiv fast float %i.xax, %i.xbc
  %i.xbe = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.xbd)
  %i.xbf = bitcast float %i.xbe to i32
  %i.xbg = lshr i32 %i.xbf, 16
  %i.xbh = trunc nuw i32 %i.xbg to i16
  %i.xbi = getelementptr inbounds nuw i8, ptr %.34590.i.i, i64 4
  store i16 %i.xbh, ptr %i.xas, align 2, !tbaa !558
  %i.xbj = add nuw nsw i32 %.34191.i.i, 2         ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN4ncnn33binary_op_vector_bf16s_avx512bf16EPKtS1_Ptiiiii:bb.a
  %i.xyj = zext i16 %i.xyi to i32
  %i.xyk = shl nuw i32 %i.xyj, 16
  %i.xyl = insertelement <8 x i32> poison, i32 %i.xyk, i64 0
  %i.xym = bitcast <8 x i32> %i.xyl to <8 x float>
  %i.xyn = shufflevector <8 x float> %i.xym, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xyo = fdiv fast <8 x float> %i.xxv, %i.xyn
  %i.xyp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.xyo, i32 1)
  %i.xyq = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.xyp)
  store <8 x bfloat> %i.xyq, ptr %i.xyh, align 1, !tbaa !555
  %i.xyr = getelementptr inbounds nuw i8, ptr %.155.i.i, i64 4 ; 2 uses
  %i.xys = getelementptr inbounds nuw i8, ptr %.13153.i.i, i64 32 ; 2 uses
  %niter10275.next.1 = add i32 %niter10275, 2     ; 2 uses
  %niter10275.ncmp.1 = icmp eq i32 %niter10275.next.1, %unroll_iter10274
  br i1 %niter10275.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9956.unr-lcssa, label %.lr.ph56.i.i, !llvm.loop !479

bb.qo:                                            ; preds = %bb.ql
  %i.xyt = load i64, ptr %0, align 1, !tbaa !555
  %i.xyu = insertelement <2 x i64> poison, i64 %i.xyt, i64 0
  %i.xyv = bitcast <2 x i64> %i.xyu to <8 x i16>
  %i.xyw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.xyv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.xyx = bitcast <8 x i16> %i.xyw to <4 x float> ; 3 uses
  %xtraiter10265 = and i32 %.sroa.speculated98.i1987, 1
  %i.xyy = icmp eq i32 %.sroa.speculated98.i1987, 1
  br i1 %i.xyy, label %.lr.ph.i86.i1989.epil.preheader, label %.new10264

.new10264:                                        ; preds = %bb.qo
  %unroll_iter10268 = and i32 %.sroa.speculated98.i1987, 2147483646
  br label %.lr.ph.i86.i1989

.lr.ph.i86.i1989:                                 ; preds = %.lr.ph.i86.i1989, %.new10264
  %.251.i.i = phi ptr [ %1, %.new10264 ], [ %i.xzz, %.lr.ph.i86.i1989 ] ; 3 uses
  %.23250.i.i = phi ptr [ %2, %.new10264 ], [ %i.yaa, %.lr.ph.i86.i1989 ] ; 3 uses
  %niter10269 = phi i32 [ 0, %.new10264 ], [ %niter10269.next.1, %.lr.ph.i86.i1989 ]
  %i.xyz = load i16, ptr %.251.i.i, align 2, !tbaa !558
  %i.xza = zext i16 %i.xyz to i32
  %i.xzb = shl nuw i32 %i.xza, 16
  %i.xzc = insertelement <4 x i32> poison, i32 %i.xzb, i64 0
  %i.xzd = bitcast <4 x i32> %i.xzc to <4 x float>
  %i.xze = shufflevector <4 x float> %i.xzd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xzf = fdiv fast <4 x float> %i.xyx, %i.xze
  %i.xzg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.xzf, i32 1)
  %i.xzh = shufflevector <4 x float> %i.xzg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xzi = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.xzh)
  %i.xzj = bitcast <8 x bfloat> %i.xzi to <2 x i64>
  %i.xzk = extractelement <2 x i64> %i.xzj, i64 0
  store i64 %i.xzk, ptr %.23250.i.i, align 1, !tbaa !555
  %i.xzl = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 2
  %i.xzm = getelementptr inbounds nuw i8, ptr %.23250.i.i, i64 8
  %i.xzn = load i16, ptr %i.xzl, align 2, !tbaa !558
  %i.xzo = zext i16 %i.xzn to i32
  %i.xzp = shl nuw i32 %i.xzo, 16
  %i.xzq = insertelement <4 x i32> poison, i32 %i.xzp, i64 0
  %i.xzr = bitcast <4 x i32> %i.xzq to <4 x float>
  %i.xzs = shufflevector <4 x float> %i.xzr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xzt = fdiv fast <4 x float> %i.xyx, %i.xzs
  %i.xzu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.xzt, i32 1)
  %i.xzv = shufflevector <4 x float> %i.xzu, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.xzw = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.xzv)
  %i.xzx = bitcast <8 x bfloat> %i.xzw to <2 x i64>
  %i.xzy = extractelement <2 x i64> %i.xzx, i64 0
  store i64 %i.xzy, ptr %i.xzm, align 1, !tbaa !555
  %i.xzz = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 4 ; 2 uses
  %i.yaa = getelementptr inbounds nuw i8, ptr %.23250.i.i, i64 16 ; 2 uses
  %niter10269.next.1 = add i32 %niter10269, 2     ; 2 uses
  %niter10269.ncmp.1 = icmp eq i32 %niter10269.next.1, %unroll_iter10268
  br i1 %niter10269.ncmp.1, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit.loopexit9957.unr-lcssa, label %.lr.ph.i86.i1989, !llvm.loop !480

bb.qp:                                            ; preds = %bb.a
  %.sroa.speculated99.i2067 = tail call i32 @llvm.smax.i32(i32 %3, i32 %4) ; 25 uses
  %.sroa.speculated.i2068 = tail call i32 @llvm.smax.i32(i32 %5, i32 %6) ; 9 uses
  %i.yab = mul i32 %.sroa.speculated.i2068, %.sroa.speculated99.i2067 ; 48 uses
  %i.yac = icmp eq i32 %5, %6
  br i1 %i.yac, label %bb.qq, label %bb.rg

bb.qq:                                            ; preds = %bb.qp
  %i.yad = icmp eq i32 %3, %4
  br i1 %i.yad, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq
  %i.yae = icmp sgt i32 %i.yab, 15
  br i1 %i.yae, label %.lr.ph.i.i2233.preheader, label %.preheader64.i.i2202

.lr.ph.i.i2233.preheader:                         ; preds = %bb.qr
  %i.yaf = add nsw i32 %i.yab, -16                ; 2 uses
  %i.yag = lshr i32 %i.yaf, 4                     ; 2 uses
  %i.yah = add nuw nsw i32 %i.yag, 1              ; 2 uses
  %i.yai = icmp eq i32 %i.yag, 0
  br i1 %i.yai, label %.lr.ph.i.i2233.epil.preheader, label %.lr.ph.i.i2233.preheader.new

.lr.ph.i.i2233.preheader.new:                     ; preds = %.lr.ph.i.i2233.preheader
  %unroll_iter10260 = and i32 %i.yah, 536870910
  br label %.lr.ph.i.i2233

.preheader64.loopexit.i.i2238.unr-lcssa:          ; preds = %.lr.ph.i.i2233
  %i.yaj = and i32 %i.yaf, 16
  %lcmp.mod10255.not.not = icmp eq i32 %i.yaj, 0
  br i1 %lcmp.mod10255.not.not, label %.lr.ph.i.i2233.epil.preheader, label %.preheader64.loopexit.i.i2238

.lr.ph.i.i2233.epil.preheader:                    ; preds = %.preheader64.loopexit.i.i2238.unr-lcssa, %.lr.ph.i.i2233.preheader
  %.068.i.i2234.epil.init = phi ptr [ %0, %.lr.ph.i.i2233.preheader ], [ %i.ybo, %.preheader64.loopexit.i.i2238.unr-lcssa ] ; 2 uses
  %.03467.i.i2235.epil.init = phi ptr [ %1, %.lr.ph.i.i2233.preheader ], [ %i.ybp, %.preheader64.loopexit.i.i2238.unr-lcssa ] ; 2 uses
  %.04265.i.i2237.epil.init = phi ptr [ %2, %.lr.ph.i.i2233.preheader ], [ %i.ybq, %.preheader64.loopexit.i.i2238.unr-lcssa ] ; 2 uses
  %lcmp.mod10259 = trunc i32 %i.yah to i1
  tail call void @llvm.assume(i1 %lcmp.mod10259)
  %i.yak = load <16 x bfloat>, ptr %.068.i.i2234.epil.init, align 1, !tbaa !555
  %i.yal = fpext fast <16 x bfloat> %i.yak to <16 x float>
  %i.yam = load <16 x bfloat>, ptr %.03467.i.i2235.epil.init, align 1, !tbaa !555
  %i.yan = fpext fast <16 x bfloat> %i.yam to <16 x float>
  %i.yao = fdiv fast <16 x float> %i.yan, %i.yal
  %i.yap = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.yao, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.yaq = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.yap)
  store <16 x bfloat> %i.yaq, ptr %.04265.i.i2237.epil.init, align 1, !tbaa !555
  %i.yar = getelementptr inbounds nuw i8, ptr %.068.i.i2234.epil.init, i64 32
  %i.yas = getelementptr inbounds nuw i8, ptr %.03467.i.i2235.epil.init, i64 32
  %i.yat = getelementptr inbounds nuw i8, ptr %.04265.i.i2237.epil.init, i64 32
  br label %.preheader64.loopexit.i.i2238

.preheader64.loopexit.i.i2238:                    ; preds = %.preheader64.loopexit.i.i2238.unr-lcssa, %.lr.ph.i.i2233.epil.preheader
  %.lcssa9969 = phi ptr [ %i.ybo, %.preheader64.loopexit.i.i2238.unr-lcssa ], [ %i.yar, %.lr.ph.i.i2233.epil.preheader ]
  %.lcssa9968 = phi ptr [ %i.ybp, %.preheader64.loopexit.i.i2238.unr-lcssa ], [ %i.yas, %.lr.ph.i.i2233.epil.preheader ]
  %.lcssa9967 = phi ptr [ %i.ybq, %.preheader64.loopexit.i.i2238.unr-lcssa ], [ %i.yat, %.lr.ph.i.i2233.epil.preheader ]
  %i.yau = and i32 %i.yab, 2147483632
  br label %.preheader64.i.i2202

.preheader64.i.i2202:                             ; preds = %.preheader64.loopexit.i.i2238, %bb.qr
  %.042.lcssa.i.i2203 = phi ptr [ %2, %bb.qr ], [ %.lcssa9967, %.preheader64.loopexit.i.i2238 ] ; 2 uses
  %.038.lcssa.i.i2204 = phi i32 [ 0, %bb.qr ], [ %i.yau, %.preheader64.loopexit.i.i2238 ] ; 3 uses
  %.034.lcssa.i.i2205 = phi ptr [ %1, %bb.qr ], [ %.lcssa9968, %.preheader64.loopexit.i.i2238 ] ; 2 uses
  %.0.lcssa.i.i2206 = phi ptr [ %0, %bb.qr ], [ %.lcssa9969, %.preheader64.loopexit.i.i2238 ] ; 2 uses
  %i.yav = or disjoint i32 %.038.lcssa.i.i2204, 7
  %i.yaw = icmp slt i32 %i.yav, %i.yab
  br i1 %i.yaw, label %.lr.ph76.i.i2228, label %.preheader63.i.i2207

.lr.ph.i.i2233:                                   ; preds = %.lr.ph.i.i2233, %.lr.ph.i.i2233.preheader.new
  %.068.i.i2234 = phi ptr [ %0, %.lr.ph.i.i2233.preheader.new ], [ %i.ybo, %.lr.ph.i.i2233 ] ; 3 uses
  %.03467.i.i2235 = phi ptr [ %1, %.lr.ph.i.i2233.preheader.new ], [ %i.ybp, %.lr.ph.i.i2233 ] ; 3 uses
  %.04265.i.i2237 = phi ptr [ %2, %.lr.ph.i.i2233.preheader.new ], [ %i.ybq, %.lr.ph.i.i2233 ] ; 3 uses
  %niter10261 = phi i32 [ 0, %.lr.ph.i.i2233.preheader.new ], [ %niter10261.next.1, %.lr.ph.i.i2233 ]
  %i.yax = load <16 x bfloat>, ptr %.068.i.i2234, align 1, !tbaa !555
  %i.yay = fpext fast <16 x bfloat> %i.yax to <16 x float>
  %i.yaz = load <16 x bfloat>, ptr %.03467.i.i2235, align 1, !tbaa !555
  %i.yba = fpext fast <16 x bfloat> %i.yaz to <16 x float>
  %i.ybb = fdiv fast <16 x float> %i.yba, %i.yay
  %i.ybc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ybb, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.ybd = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ybc)
  store <16 x bfloat> %i.ybd, ptr %.04265.i.i2237, align 1, !tbaa !555
  %i.ybe = getelementptr inbounds nuw i8, ptr %.068.i.i2234, i64 32
  %i.ybf = getelementptr inbounds nuw i8, ptr %.03467.i.i2235, i64 32
  %i.ybg = getelementptr inbounds nuw i8, ptr %.04265.i.i2237, i64 32
  %i.ybh = load <16 x bfloat>, ptr %i.ybe, align 1, !tbaa !555
  %i.ybi = fpext fast <16 x bfloat> %i.ybh to <16 x float>
  %i.ybj = load <16 x bfloat>, ptr %i.ybf, align 1, !tbaa !555
  %i.ybk = fpext fast <16 x bfloat> %i.ybj to <16 x float>
  %i.ybl = fdiv fast <16 x float> %i.ybk, %i.ybi
  %i.ybm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float> %i.ybl, i32 1, <16 x float> zeroinitializer, i16 -1, i32 4)
  %i.ybn = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ybm)
  store <16 x bfloat> %i.ybn, ptr %i.ybg, align 1, !tbaa !555
  %i.ybo = getelementptr inbounds nuw i8, ptr %.068.i.i2234, i64 64 ; 3 uses
  %i.ybp = getelementptr inbounds nuw i8, ptr %.03467.i.i2235, i64 64 ; 3 uses
  %i.ybq = getelementptr inbounds nuw i8, ptr %.04265.i.i2237, i64 64 ; 3 uses
  %niter10261.next.1 = add i32 %niter10261, 2     ; 2 uses
  %niter10261.ncmp.1.not = icmp eq i32 %niter10261.next.1, %unroll_iter10260
  br i1 %niter10261.ncmp.1.not, label %.preheader64.loopexit.i.i2238.unr-lcssa, label %.lr.ph.i.i2233, !llvm.loop !481

.preheader63.i.i2207:                             ; preds = %.lr.ph76.i.i2228, %.preheader64.i.i2202
  %.143.lcssa.i.i2208 = phi ptr [ %.042.lcssa.i.i2203, %.preheader64.i.i2202 ], [ %i.ycc, %.lr.ph76.i.i2228 ] ; 2 uses
  %.139.lcssa.i.i2209 = phi i32 [ %.038.lcssa.i.i2204, %.preheader64.i.i2202 ], [ %i.ycd, %.lr.ph76.i.i2228 ] ; 3 uses
  %.135.lcssa.i.i2210 = phi ptr [ %.034.lcssa.i.i2205, %.preheader64.i.i2202 ], [ %i.ycb, %.lr.ph76.i.i2228 ] ; 2 uses
  %.1.lcssa.i.i2211 = phi ptr [ %.0.lcssa.i.i2206, %.preheader64.i.i2202 ], [ %i.yca, %.lr.ph76.i.i2228 ] ; 2 uses
  %i.ybr = or disjoint i32 %.139.lcssa.i.i2209, 3
  %i.ybs = icmp slt i32 %i.ybr, %i.yab
  br i1 %i.ybs, label %.lr.ph85.i.i2223, label %.preheader.i.i2212

.lr.ph76.i.i2228:                                 ; preds = %.preheader64.i.i2202, %.lr.ph76.i.i2228
  %.175.i.i2229 = phi ptr [ %i.yca, %.lr.ph76.i.i2228 ], [ %.0.lcssa.i.i2206, %.preheader64.i.i2202 ] ; 2 uses
  %.13574.i.i2230 = phi ptr [ %i.ycb, %.lr.ph76.i.i2228 ], [ %.034.lcssa.i.i2205, %.preheader64.i.i2202 ] ; 2 uses
  %.13973.i.i2231 = phi i32 [ %i.ycd, %.lr.ph76.i.i2228 ], [ %.038.lcssa.i.i2204, %.preheader64.i.i2202 ]
  %.14372.i.i2232 = phi ptr [ %i.ycc, %.lr.ph76.i.i2228 ], [ %.042.lcssa.i.i2203, %.preheader64.i.i2202 ] ; 2 uses
  %i.ybt = load <8 x bfloat>, ptr %.175.i.i2229, align 1, !tbaa !555
  %i.ybu = fpext fast <8 x bfloat> %i.ybt to <8 x float>
  %i.ybv = load <8 x bfloat>, ptr %.13574.i.i2230, align 1, !tbaa !555
  %i.ybw = fpext fast <8 x bfloat> %i.ybv to <8 x float>
  %i.ybx = fdiv fast <8 x float> %i.ybw, %i.ybu
  %i.yby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.round.ps.256(<8 x float> %i.ybx, i32 1)
  %i.ybz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.yby)
  store <8 x bfloat> %i.ybz, ptr %.14372.i.i2232, align 1, !tbaa !555
  %i.yca = getelementptr inbounds nuw i8, ptr %.175.i.i2229, i64 16 ; 2 uses
  %i.ycb = getelementptr inbounds nuw i8, ptr %.13574.i.i2230, i64 16 ; 2 uses
  %i.ycc = getelementptr inbounds nuw i8, ptr %.14372.i.i2232, i64 16 ; 2 uses
  %i.ycd = add nuw nsw i32 %.13973.i.i2231, 8     ; 3 uses
  %i.yce = or disjoint i32 %i.ycd, 7
  %i.ycf = icmp slt i32 %i.yce, %i.yab
  br i1 %i.ycf, label %.lr.ph76.i.i2228, label %.preheader63.i.i2207, !llvm.loop !482

.preheader.i.i2212:                               ; preds = %.lr.ph85.i.i2223, %.preheader63.i.i2207
  %.244.lcssa.i.i2213 = phi ptr [ %.143.lcssa.i.i2208, %.preheader63.i.i2207 ], [ %i.yfl, %.lr.ph85.i.i2223 ] ; 7 uses
  %.240.lcssa.i.i2214 = phi i32 [ %.139.lcssa.i.i2209, %.preheader63.i.i2207 ], [ %i.yfm, %.lr.ph85.i.i2223 ] ; 6 uses
  %.236.lcssa.i.i2215 = phi ptr [ %.135.lcssa.i.i2210, %.preheader63.i.i2207 ], [ %i.yfk, %.lr.ph85.i.i2223 ] ; 7 uses
  %.2.lcssa.i.i2216 = phi ptr [ %.1.lcssa.i.i2211, %.preheader63.i.i2207 ], [ %i.yfj, %.lr.ph85.i.i2223 ] ; 7 uses
  %.236.lcssa.i.i22156451 = ptrtoaddr ptr %.236.lcssa.i.i2215 to i64
  %.244.lcssa.i.i22136452 = ptrtoaddr ptr %.2.lcssa.i.i2216 to i64
  %.2.lcssa.i.i22166453 = ptrtoaddr ptr %.244.lcssa.i.i2213 to i64 ; 2 uses
  %i.ycg = icmp slt i32 %.240.lcssa.i.i2214, %i.yab
  br i1 %i.ycg, label %iter.check6472, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit

iter.check6472:                                   ; preds = %.preheader.i.i2212
  %i.ych = xor i32 %.240.lcssa.i.i2214, -1
  %i.yci = add i32 %i.yab, %i.ych                 ; 3 uses
  %i.ycj = zext i32 %i.yci to i64
  %i.yck = add nuw nsw i64 %i.ycj, 1              ; 5 uses
  %min.iters.check6454 = icmp ult i32 %i.yci, 7
  br i1 %min.iters.check6454, label %.lr.ph94.i.i2217.preheader, label %vector.memcheck6455

vector.memcheck6455:                              ; preds = %iter.check6472
  %i.ycl = sub i64 %.244.lcssa.i.i22136452, %.2.lcssa.i.i22166453
  %diff.check6456 = icmp ugt i64 %i.ycl, -64
  %i.ycm = sub i64 %.236.lcssa.i.i22156451, %.2.lcssa.i.i22166453
  %diff.check6457 = icmp ugt i64 %i.ycm, -64
  %conflict.rdx = or i1 %diff.check6456, %diff.check6457
  br i1 %conflict.rdx, label %.lr.ph94.i.i2217.preheader, label %vector.main.loop.iter.check6458

vector.main.loop.iter.check6458:                  ; preds = %vector.memcheck6455
  %min.iters.check6459 = icmp ult i32 %i.yci, 31
  br i1 %min.iters.check6459, label %vec.epilog.ph6476, label %vector.ph6460

vector.ph6460:                                    ; preds = %vector.main.loop.iter.check6458
  %i.ycn = and i64 %i.yck, 24
  %n.vec6461 = and i64 %i.yck, 8589934560         ; 5 uses
  %i.yco = shl nuw nsw i64 %n.vec6461, 1          ; 3 uses
  %i.ycp = getelementptr i8, ptr %.2.lcssa.i.i2216, i64 %i.yco
  %i.ycq = getelementptr i8, ptr %.236.lcssa.i.i2215, i64 %i.yco
  %i.ycr = trunc i64 %n.vec6461 to i32
  %i.ycs = add i32 %.240.lcssa.i.i2214, %i.ycr
  %i.yct = getelementptr i8, ptr %.244.lcssa.i.i2213, i64 %i.yco
  br label %vector.body6462

vector.body6462:                                  ; preds = %vector.ph6460, %vector.body6462
  %index6463 = phi i64 [ 0, %vector.ph6460 ], [ %index.next6469, %vector.body6462 ] ; 2 uses
  %i.ycu = shl i64 %index6463, 1                  ; 3 uses
  %next.gep6464 = getelementptr i8, ptr %.2.lcssa.i.i2216, i64 %i.ycu
  %next.gep6465 = getelementptr i8, ptr %.236.lcssa.i.i2215, i64 %i.ycu
  %next.gep6466 = getelementptr i8, ptr %.244.lcssa.i.i2213, i64 %i.ycu
  %wide.load6467 = load <32 x i16>, ptr %next.gep6464, align 2, !tbaa !558
  %i.ycv = zext <32 x i16> %wide.load6467 to <32 x i32>
  %i.ycw = shl nuw <32 x i32> %i.ycv, splat (i32 16)
  %i.ycx = bitcast <32 x i32> %i.ycw to <32 x float>
  %wide.load6468 = load <32 x i16>, ptr %next.gep6465, align 2, !tbaa !558
  %i.ycy = zext <32 x i16> %wide.load6468 to <32 x i32>
  %i.ycz = shl nuw <32 x i32> %i.ycy, splat (i32 16)
  %i.yda = bitcast <32 x i32> %i.ycz to <32 x float>
  %i.ydb = fdiv fast <32 x float> %i.yda, %i.ycx
  %i.ydc = tail call fast <32 x float> @llvm.floor.v32f32(<32 x float> %i.ydb)
  %i.ydd = bitcast <32 x float> %i.ydc to <32 x i32>
  %i.yde = lshr <32 x i32> %i.ydd, splat (i32 16)
  %i.ydf = trunc nuw <32 x i32> %i.yde to <32 x i16>
  store <32 x i16> %i.ydf, ptr %next.gep6466, align 2, !tbaa !558
  %index.next6469 = add nuw i64 %index6463, 32    ; 2 uses
  %i.ydg = icmp eq i64 %index.next6469, %n.vec6461
  br i1 %i.ydg, label %middle.block6470, label %vector.body6462, !llvm.loop !483

middle.block6470:                                 ; preds = %vector.body6462
  %cmp.n6471 = icmp eq i64 %i.yck, %n.vec6461
  br i1 %cmp.n6471, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %vec.epilog.iter.check6473

vec.epilog.iter.check6473:                        ; preds = %middle.block6470
  %min.epilog.iters.check6475 = icmp eq i64 %i.ycn, 0
  br i1 %min.epilog.iters.check6475, label %.lr.ph94.i.i2217.preheader, label %vec.epilog.ph6476, !prof !561

vec.epilog.ph6476:                                ; preds = %vector.main.loop.iter.check6458, %vec.epilog.iter.check6473
  %vec.epilog.resume.val6477 = phi i64 [ %n.vec6461, %vec.epilog.iter.check6473 ], [ 0, %vector.main.loop.iter.check6458 ]
  %n.vec6478 = and i64 %i.yck, 8589934584         ; 4 uses
  %i.ydh = shl nuw nsw i64 %n.vec6478, 1          ; 3 uses
  %i.ydi = getelementptr i8, ptr %.2.lcssa.i.i2216, i64 %i.ydh
  %i.ydj = getelementptr i8, ptr %.236.lcssa.i.i2215, i64 %i.ydh
  %i.ydk = trunc i64 %n.vec6478 to i32
  %i.ydl = add i32 %.240.lcssa.i.i2214, %i.ydk
  %i.ydm = getelementptr i8, ptr %.244.lcssa.i.i2213, i64 %i.ydh
  br label %vec.epilog.vector.body6479

vec.epilog.vector.body6479:                       ; preds = %vec.epilog.vector.body6479, %vec.epilog.ph6476
  %index6480 = phi i64 [ %vec.epilog.resume.val6477, %vec.epilog.ph6476 ], [ %index.next6486, %vec.epilog.vector.body6479 ] ; 2 uses
  %i.ydn = shl i64 %index6480, 1                  ; 3 uses
  %next.gep6481 = getelementptr i8, ptr %.2.lcssa.i.i2216, i64 %i.ydn
  %next.gep6482 = getelementptr i8, ptr %.236.lcssa.i.i2215, i64 %i.ydn
  %next.gep6483 = getelementptr i8, ptr %.244.lcssa.i.i2213, i64 %i.ydn
  %wide.load6484 = load <8 x i16>, ptr %next.gep6481, align 2, !tbaa !558
  %i.ydo = zext <8 x i16> %wide.load6484 to <8 x i32>
  %i.ydp = shl nuw <8 x i32> %i.ydo, splat (i32 16)
  %i.ydq = bitcast <8 x i32> %i.ydp to <8 x float>
  %wide.load6485 = load <8 x i16>, ptr %next.gep6482, align 2, !tbaa !558
  %i.ydr = zext <8 x i16> %wide.load6485 to <8 x i32>
  %i.yds = shl nuw <8 x i32> %i.ydr, splat (i32 16)
  %i.ydt = bitcast <8 x i32> %i.yds to <8 x float>
  %i.ydu = fdiv fast <8 x float> %i.ydt, %i.ydq
  %i.ydv = tail call fast <8 x float> @llvm.floor.v8f32(<8 x float> %i.ydu)
  %i.ydw = bitcast <8 x float> %i.ydv to <8 x i32>
  %i.ydx = lshr <8 x i32> %i.ydw, splat (i32 16)
  %i.ydy = trunc nuw <8 x i32> %i.ydx to <8 x i16>
  store <8 x i16> %i.ydy, ptr %next.gep6483, align 2, !tbaa !558
  %index.next6486 = add nuw i64 %index6480, 8     ; 2 uses
  %i.ydz = icmp eq i64 %index.next6486, %n.vec6478
  br i1 %i.ydz, label %vec.epilog.middle.block6487, label %vec.epilog.vector.body6479, !llvm.loop !484

vec.epilog.middle.block6487:                      ; preds = %vec.epilog.vector.body6479
  %cmp.n6488 = icmp eq i64 %i.yck, %n.vec6478
  br i1 %cmp.n6488, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i2217.preheader

.lr.ph94.i.i2217.preheader:                       ; preds = %iter.check6472, %vector.memcheck6455, %vec.epilog.iter.check6473, %vec.epilog.middle.block6487
  %.393.i.i2218.ph = phi ptr [ %.2.lcssa.i.i2216, %iter.check6472 ], [ %.2.lcssa.i.i2216, %vector.memcheck6455 ], [ %i.ycp, %vec.epilog.iter.check6473 ], [ %i.ydi, %vec.epilog.middle.block6487 ] ; 3 uses
  %.33792.i.i2219.ph = phi ptr [ %.236.lcssa.i.i2215, %iter.check6472 ], [ %.236.lcssa.i.i2215, %vector.memcheck6455 ], [ %i.ycq, %vec.epilog.iter.check6473 ], [ %i.ydj, %vec.epilog.middle.block6487 ] ; 3 uses
  %.34191.i.i2220.ph = phi i32 [ %.240.lcssa.i.i2214, %iter.check6472 ], [ %.240.lcssa.i.i2214, %vector.memcheck6455 ], [ %i.ycs, %vec.epilog.iter.check6473 ], [ %i.ydl, %vec.epilog.middle.block6487 ] ; 4 uses
  %.34590.i.i2221.ph = phi ptr [ %.244.lcssa.i.i2213, %iter.check6472 ], [ %.244.lcssa.i.i2213, %vector.memcheck6455 ], [ %i.yct, %vec.epilog.iter.check6473 ], [ %i.ydm, %vec.epilog.middle.block6487 ] ; 3 uses
  %i.yea = sub i32 %i.yab, %.34191.i.i2220.ph
  %.neg11034 = add i32 %.34191.i.i2220.ph, 1
  %xtraiter10262 = and i32 %i.yea, 1
  %lcmp.mod10263.not = icmp eq i32 %xtraiter10262, 0
  br i1 %lcmp.mod10263.not, label %.lr.ph94.i.i2217.prol.loopexit, label %.lr.ph94.i.i2217.prol

.lr.ph94.i.i2217.prol:                            ; preds = %.lr.ph94.i.i2217.preheader
  %i.yeb = getelementptr inbounds nuw i8, ptr %.393.i.i2218.ph, i64 2
  %i.yec = load i16, ptr %.393.i.i2218.ph, align 2, !tbaa !558
  %i.yed = zext i16 %i.yec to i32
  %i.yee = shl nuw i32 %i.yed, 16
  %i.yef = bitcast i32 %i.yee to float
  %i.yeg = getelementptr inbounds nuw i8, ptr %.33792.i.i2219.ph, i64 2
  %i.yeh = load i16, ptr %.33792.i.i2219.ph, align 2, !tbaa !558
  %i.yei = zext i16 %i.yeh to i32
  %i.yej = shl nuw i32 %i.yei, 16
  %i.yek = bitcast i32 %i.yej to float
  %i.yel = fdiv fast float %i.yek, %i.yef
  %i.yem = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.yel)
  %i.yen = bitcast float %i.yem to i32
  %i.yeo = lshr i32 %i.yen, 16
  %i.yep = trunc nuw i32 %i.yeo to i16
  %i.yeq = getelementptr inbounds nuw i8, ptr %.34590.i.i2221.ph, i64 2
  store i16 %i.yep, ptr %.34590.i.i2221.ph, align 2, !tbaa !558
  %i.yer = add nuw nsw i32 %.34191.i.i2220.ph, 1
  br label %.lr.ph94.i.i2217.prol.loopexit

.lr.ph94.i.i2217.prol.loopexit:                   ; preds = %.lr.ph94.i.i2217.prol, %.lr.ph94.i.i2217.preheader
  %.393.i.i2218.unr = phi ptr [ %.393.i.i2218.ph, %.lr.ph94.i.i2217.preheader ], [ %i.yeb, %.lr.ph94.i.i2217.prol ]
  %.33792.i.i2219.unr = phi ptr [ %.33792.i.i2219.ph, %.lr.ph94.i.i2217.preheader ], [ %i.yeg, %.lr.ph94.i.i2217.prol ]
  %.34191.i.i2220.unr = phi i32 [ %.34191.i.i2220.ph, %.lr.ph94.i.i2217.preheader ], [ %i.yer, %.lr.ph94.i.i2217.prol ]
  %.34590.i.i2221.unr = phi ptr [ %.34590.i.i2221.ph, %.lr.ph94.i.i2217.preheader ], [ %i.yeq, %.lr.ph94.i.i2217.prol ]
  %i.yes = icmp eq i32 %i.yab, %.neg11034
  br i1 %i.yes, label %_ZN4ncnnL22binary_op_vector_bf16sINS_20BinaryOp_x86_functor13binary_op_addEEEvPKtS4_Ptiiii.exit, label %.lr.ph94.i.i2217

.lr.ph85.i.i2223:                                 ; preds = %.preheader63.i.i2207, %.lr.ph85.i.i2223
  %.284.i.i2224 = phi ptr [ %i.yfj, %.lr.ph85.i.i2223 ], [ %.1.lcssa.i.i2211, %.preheader63.i.i2207 ] ; 2 uses
  %.23683.i.i2225 = phi ptr [ %i.yfk, %.lr.ph85.i.i2223 ], [ %.135.lcssa.i.i2210, %.preheader63.i.i2207 ] ; 2 uses
  %.24082.i.i2226 = phi i32 [ %i.yfm, %.lr.ph85.i.i2223 ], [ %.139.lcssa.i.i2209, %.preheader63.i.i2207 ]
  %.24481.i.i2227 = phi ptr [ %i.yfl, %.lr.ph85.i.i2223 ], [ %.143.lcssa.i.i2208, %.preheader63.i.i2207 ] ; 2 uses
  %i.yet = load i64, ptr %.284.i.i2224, align 1, !tbaa !555
  %i.yeu = insertelement <2 x i64> poison, i64 %i.yet, i64 0
  %i.yev = bitcast <2 x i64> %i.yeu to <8 x i16>
  %i.yew = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yev, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yex = bitcast <8 x i16> %i.yew to <4 x float>
  %i.yey = load i64, ptr %.23683.i.i2225, align 1, !tbaa !555
  %i.yez = insertelement <2 x i64> poison, i64 %i.yey, i64 0
  %i.yfa = bitcast <2 x i64> %i.yez to <8 x i16>
  %i.yfb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yfa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yfc = bitcast <8 x i16> %i.yfb to <4 x float>
  %i.yfd = fdiv fast <4 x float> %i.yfc, %i.yex
  %i.yfe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse41.round.ps(<4 x float> %i.yfd, i32 1)
  %i.yff = shufflevector <4 x float> %i.yfe, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.yfg = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.yff)
  %i.yfh = bitcast <8 x bfloat> %i.yfg to <2 x i64>
  %i.yfi = extractelement <2 x i64> %i.yfh, i64 0
  store i64 %i.yfi, ptr %.24481.i.i2227, align 1, !tbaa !555
  %i.yfj = getelementptr inbounds nuw i8, ptr %.284.i.i2224, i64 8 ; 2 uses
  %i.yfk = getelementptr inbounds nuw i8, ptr %.23683.i.i2225, i64 8 ; 2 uses
  %i.yfl = getelementptr inbounds nuw i8, ptr %.24481.i.i2227, i64 8 ; 2 uses
  %i.yfm = add nuw nsw i32 %.24082.i.i2226, 4     ; 3 uses
  %i.yfn = or disjoint i32 %i.yfm, 3
  %i.yfo = icmp slt i32 %i.yfn, %i.yab
  br i1 %i.yfo, label %.lr.ph85.i.i2223, label %.preheader.i.i2212, !llvm.loop !485

.lr.ph94.i.i2217:                                 ; preds = %.lr.ph94.i.i2217.prol.loopexit, %.lr.ph94.i.i2217
  %.393.i.i2218 = phi ptr [ %i.ygf, %.lr.ph94.i.i2217 ], [ %.393.i.i2218.unr, %.lr.ph94.i.i2217.prol.loopexit ] ; 3 uses
  %.33792.i.i2219 = phi ptr [ %i.ygk, %.lr.ph94.i.i2217 ], [ %.33792.i.i2219.unr, %.lr.ph94.i.i2217.prol.loopexit ] ; 3 uses
  %.34191.i.i2220 = phi i32 [ %i.ygv, %.lr.ph94.i.i2217 ], [ %.34191.i.i2220.unr, %.lr.ph94.i.i2217.prol.loopexit ]
  %.34590.i.i2221 = phi ptr [ %i.ygu, %.lr.ph94.i.i2217 ], [ %.34590.i.i2221.unr, %.lr.ph94.i.i2217.prol.loopexit ] ; 3 uses
  %i.yfp = getelementptr inbounds nuw i8, ptr %.393.i.i2218, i64 2
  %i.yfq = load i16, ptr %.393.i.i2218, align 2, !tbaa !558
  %i.yfr = zext i16 %i.yfq to i32
  %i.yfs = shl nuw i32 %i.yfr, 16
  %i.yft = bitcast i32 %i.yfs to float
  %i.yfu = getelementptr inbounds nuw i8, ptr %.33792.i.i2219, i64 2
  %i.yfv = load i16, ptr %.33792.i.i2219, align 2, !tbaa !558
  %i.yfw = zext i16 %i.yfv to i32
  %i.yfx = shl nuw i32 %i.yfw, 16
  %i.yfy = bitcast i32 %i.yfx to float
  %i.yfz = fdiv fast float %i.yfy, %i.yft
  %i.yga = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.yfz)
  %i.ygb = bitcast float %i.yga to i32
  %i.ygc = lshr i32 %i.ygb, 16
  %i.ygd = trunc nuw i32 %i.ygc to i16
  %i.yge = getelementptr inbounds nuw i8, ptr %.34590.i.i2221, i64 2
  store i16 %i.ygd, ptr %.34590.i.i2221, align 2, !tbaa !558
  %i.ygf = getelementptr inbounds nuw i8, ptr %.393.i.i2218, i64 4
  %i.ygg = load i16, ptr %i.yfp, align 2, !tbaa !558
  %i.ygh = zext i16 %i.ygg to i32
  %i.ygi = shl nuw i32 %i.ygh, 16
  %i.ygj = bitcast i32 %i.ygi to float
  %i.ygk = getelementptr inbounds nuw i8, ptr %.33792.i.i2219, i64 4
  %i.ygl = load i16, ptr %i.yfu, align 2, !tbaa !558
  %i.ygm = zext i16 %i.ygl to i32
  %i.ygn = shl nuw i32 %i.ygm, 16
  %i.ygo = bitcast i32 %i.ygn to float
  %i.ygp = fdiv fast float %i.ygo, %i.ygj
  %i.ygq = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float %i.ygp)
  %i.ygr = bitcast float %i.ygq to i32
  %i.ygs = lshr i32 %i.ygr, 16
  %i.ygt = trunc nuw i32 %i.ygs to i16
  %i.ygu = getelementptr inbounds nuw i8, ptr %.34590.i.i2221, i64 4
  store i16 %i.ygt, ptr %i.yge, align 2, !tbaa !558
  %i.ygv = add nuw nsw i32 %.34191.i.i2220, 2     ; 2 uses
end_hunk_15
