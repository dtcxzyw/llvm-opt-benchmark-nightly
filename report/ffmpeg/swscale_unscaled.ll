Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/swscale_unscaled?download=true
inline.NumInlined: 35
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 106
begin_hunk_0_@bswap_16bpc:bb.a
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = mul nsw i64 %i.ht, %i.ia
  %i.ic = add i64 %i.ib, %wide.trip.count.3
  %i.id = shl i64 %i.ic, 1
  %scevgep181 = getelementptr i8, ptr %i.hl, i64 %i.id
  %i.ie = mul nsw i64 %i.hu, %i.ia
  %i.if = add i64 %i.ie, %wide.trip.count.3
  %i.ig = add i64 %i.if, %i.hx
  %i.ih = shl i64 %i.ig, 1
  %scevgep182 = getelementptr i8, ptr %i.hj, i64 %i.ih
  %min.iters.check183 = icmp samesign ult i32 %..3, 4
  %bound0185 = icmp ult ptr %i.hy, %scevgep181
  %bound1186 = icmp ult ptr %i.hl, %scevgep182
  %found.conflict187 = and i1 %bound0185, %bound1186
  %stride.check188 = icmp slt i32 %i.hg, -1
  %i.ii = or i1 %found.conflict187, %stride.check188
  %stride.check189 = icmp slt i32 %i.hd, -1
  %i.ij = or i1 %i.ii, %stride.check189
  %min.iters.check191 = icmp samesign ult i32 %..3, 16
  %i.ik = and i64 %wide.trip.count.3, 12
  %n.vec193 = and i64 %wide.trip.count.3, 2147483632 ; 4 uses
  %cmp.n200 = icmp eq i64 %n.vec193, %wide.trip.count.3
  %min.epilog.iters.check204 = icmp eq i64 %i.ik, 0
  %n.vec207 = and i64 %wide.trip.count.3, 2147483644 ; 3 uses
  %cmp.n213 = icmp eq i64 %n.vec207, %wide.trip.count.3
  %xtraiter227 = and i64 %wide.trip.count.3, 3    ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br label %iter.check201

iter.check201:                                    ; preds = %._crit_edge.3, %.preheader.preheader.3
  %.055.3 = phi ptr [ %i.js, %._crit_edge.3 ], [ %i.hl, %.preheader.preheader.3 ] ; 8 uses
  %.04454.3 = phi ptr [ %i.jt, %._crit_edge.3 ], [ %i.hy, %.preheader.preheader.3 ] ; 8 uses
  %.04753.3 = phi i32 [ %i.ju, %._crit_edge.3 ], [ 0, %.preheader.preheader.3 ]
  %brmerge232 = select i1 %min.iters.check183, i1 true, i1 %i.ij
  br i1 %brmerge232, label %vec.epilog.scalar.ph203.preheader, label %vector.main.loop.iter.check190

vector.main.loop.iter.check190:                   ; preds = %iter.check201
  br i1 %min.iters.check191, label %vec.epilog.ph205, label %vector.body194

vector.body194:                                   ; preds = %vector.main.loop.iter.check190, %vector.body194
  %index195 = phi i64 [ %index.next198, %vector.body194 ], [ 0, %vector.main.loop.iter.check190 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %index195 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %wide.load196 = load <8 x i16>, ptr %i.il, align 2, !tbaa !60, !alias.scope !193
  %wide.load197 = load <8 x i16>, ptr %i.im, align 2, !tbaa !60, !alias.scope !193
  %i.in = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load196)
  %i.io = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load197)
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %index195 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <8 x i16> %i.in, ptr %i.ip, align 2, !tbaa !60, !alias.scope !194, !noalias !193
  store <8 x i16> %i.io, ptr %i.iq, align 2, !tbaa !60, !alias.scope !194, !noalias !193
  %index.next198 = add nuw i64 %index195, 16      ; 2 uses
  %i.ir = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.ir, label %middle.block199, label %vector.body194, !llvm.loop !183

middle.block199:                                  ; preds = %vector.body194
  br i1 %cmp.n200, label %._crit_edge.3, label %vec.epilog.iter.check202

vec.epilog.iter.check202:                         ; preds = %middle.block199
  br i1 %min.epilog.iters.check204, label %vec.epilog.scalar.ph203.preheader, label %vec.epilog.ph205, !prof !63

vec.epilog.ph205:                                 ; preds = %vector.main.loop.iter.check190, %vec.epilog.iter.check202
  %vec.epilog.resume.val206 = phi i64 [ %n.vec193, %vec.epilog.iter.check202 ], [ 0, %vector.main.loop.iter.check190 ]
  br label %vec.epilog.vector.body208

vec.epilog.vector.body208:                        ; preds = %vec.epilog.vector.body208, %vec.epilog.ph205
  %index209 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph205 ], [ %index.next211, %vec.epilog.vector.body208 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %index209
  %wide.load210 = load <4 x i16>, ptr %i.is, align 2, !tbaa !60, !alias.scope !193
  %i.it = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load210)
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %index209
  store <4 x i16> %i.it, ptr %i.iu, align 2, !tbaa !60, !alias.scope !194, !noalias !193
  %index.next211 = add nuw i64 %index209, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next211, %n.vec207
  br i1 %i.iv, label %vec.epilog.middle.block212, label %vec.epilog.vector.body208, !llvm.loop !184

vec.epilog.middle.block212:                       ; preds = %vec.epilog.vector.body208
  br i1 %cmp.n213, label %._crit_edge.3, label %vec.epilog.scalar.ph203.preheader

vec.epilog.scalar.ph203.preheader:                ; preds = %iter.check201, %vec.epilog.iter.check202, %vec.epilog.middle.block212
  %indvars.iv.3.ph = phi i64 [ 0, %iter.check201 ], [ %n.vec207, %vec.epilog.middle.block212 ], [ %n.vec193, %vec.epilog.iter.check202 ] ; 3 uses
  br i1 %lcmp.mod228.not, label %vec.epilog.scalar.ph203.prol.loopexit, label %vec.epilog.scalar.ph203.prol

vec.epilog.scalar.ph203.prol:                     ; preds = %vec.epilog.scalar.ph203.preheader, %vec.epilog.scalar.ph203.prol
  %indvars.iv.3.prol = phi i64 [ %indvars.iv.next.3.prol, %vec.epilog.scalar.ph203.prol ], [ %indvars.iv.3.ph, %vec.epilog.scalar.ph203.preheader ] ; 3 uses
  %prol.iter229 = phi i64 [ %prol.iter229.next, %vec.epilog.scalar.ph203.prol ], [ 0, %vec.epilog.scalar.ph203.preheader ]
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %indvars.iv.3.prol
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !60
  %i.iy = tail call i16 @llvm.bswap.i16(i16 %i.ix)
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %indvars.iv.3.prol
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !60
  %indvars.iv.next.3.prol = add nuw nsw i64 %indvars.iv.3.prol, 1 ; 2 uses
  %prol.iter229.next = add i64 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i64 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %vec.epilog.scalar.ph203.prol.loopexit, label %vec.epilog.scalar.ph203.prol, !llvm.loop !185

vec.epilog.scalar.ph203.prol.loopexit:            ; preds = %vec.epilog.scalar.ph203.prol, %vec.epilog.scalar.ph203.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %vec.epilog.scalar.ph203.preheader ], [ %indvars.iv.next.3.prol, %vec.epilog.scalar.ph203.prol ]
  %i.ja = sub nsw i64 %indvars.iv.3.ph, %wide.trip.count.3
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %._crit_edge.3, label %vec.epilog.scalar.ph203

vec.epilog.scalar.ph203:                          ; preds = %vec.epilog.scalar.ph203.prol.loopexit, %vec.epilog.scalar.ph203
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.3, %vec.epilog.scalar.ph203 ], [ %indvars.iv.3.unr, %vec.epilog.scalar.ph203.prol.loopexit ] ; 6 uses
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %indvars.iv.3
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !60
  %i.je = tail call i16 @llvm.bswap.i16(i16 %i.jd)
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %indvars.iv.3
  store i16 %i.je, ptr %i.jf, align 2, !tbaa !60
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %indvars.iv.next.3
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !60
  %i.ji = tail call i16 @llvm.bswap.i16(i16 %i.jh)
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %indvars.iv.next.3
  store i16 %i.ji, ptr %i.jj, align 2, !tbaa !60
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %indvars.iv.next.3.1
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !60
  %i.jm = tail call i16 @llvm.bswap.i16(i16 %i.jl)
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %indvars.iv.next.3.1
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !60
  %indvars.iv.next.3.2 = add nuw nsw i64 %indvars.iv.3, 3 ; 2 uses
  %i.jo = getelementptr inbounds nuw [2 x i8], ptr %.055.3, i64 %indvars.iv.next.3.2
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !60
  %i.jq = tail call i16 @llvm.bswap.i16(i16 %i.jp)
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %.04454.3, i64 %indvars.iv.next.3.2
  store i16 %i.jq, ptr %i.jr, align 2, !tbaa !60
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %exitcond.3.not.3 = icmp eq i64 %indvars.iv.next.3.3, %wide.trip.count.3
  br i1 %exitcond.3.not.3, label %._crit_edge.3, label %vec.epilog.scalar.ph203, !llvm.loop !186

._crit_edge.3:                                    ; preds = %vec.epilog.scalar.ph203.prol.loopexit, %vec.epilog.scalar.ph203, %vec.epilog.middle.block212, %middle.block199
  %i.js = getelementptr inbounds [2 x i8], ptr %.055.3, i64 %i.ht
  %i.jt = getelementptr inbounds [2 x i8], ptr %.04454.3, i64 %i.hu
  %i.ju = add nuw nsw i32 %.04753.3, 1            ; 2 uses
  %exitcond58.3.not = icmp eq i32 %i.ju, %i.hr
  br i1 %exitcond58.3.not, label %.loopexit.3, label %iter.check201, !llvm.loop !165

.loopexit.3:                                      ; preds = %._crit_edge.3, %.preheader.lr.ph.3, %bb.e, %.loopexit.2
  ret i32 %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @bswap_32bpc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef returned %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 8 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !16
  %i.c = sdiv i32 %i.b, 4                         ; 2 uses
  %i.d = load i32, ptr %6, align 4, !tbaa !16
  %i.e = sdiv i32 %i.d, 4                         ; 3 uses
  %i.f = load ptr, ptr %5, align 8, !tbaa !52     ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !52     ; 3 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.c, i1 false)
  %i.i = tail call i32 @llvm.abs.i32(i32 %i.e, i1 false)
  %. = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %i.i) ; 3 uses
  %i.j = icmp ne ptr %i.f, null
  %i.k = icmp ne ptr %i.g, null
  %or.cond = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.a, align 4, !tbaa !49   ; 2 uses
  %i.m = ashr i32 %4, %i.l
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.b
  %.not = icmp eq i32 %., 0
  %i.o = sext i32 %i.c to i64                     ; 2 uses
  %i.p = sext i32 %i.e to i64                     ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = ashr i32 %3, %i.l
  %i.r = mul i32 %i.q, %i.e
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.s
  %wide.trip.count = zext i32 %. to i64           ; 7 uses
  %i.u = shl nsw i64 %i.o, 2
  %i.v = shl nuw nsw i64 %wide.trip.count, 2
  %i.w = shl nsw i64 %i.p, 2
  %i.x = add nsw i64 %wide.trip.count, %i.s
  %i.y = shl nsw i64 %i.x, 2
  %min.iters.check = icmp samesign ult i32 %., 8
  %i.z = getelementptr i8, ptr %i.f, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.v
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %.055 = phi ptr [ %i.g, %.preheader.preheader ], [ %i.bi, %._crit_edge ] ; 8 uses
  %.04454 = phi ptr [ %i.t, %.preheader.preheader ], [ %i.bj, %._crit_edge ] ; 8 uses
  %.04753 = phi i32 [ 0, %.preheader.preheader ], [ %i.bk, %._crit_edge ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.ab = mul nsw i64 %indvar, %i.w
  %i.ac = getelementptr i8, ptr %i.z, i64 %i.ab
  %i.ad = mul nsw i64 %indvar, %i.u
  %i.ae = getelementptr i8, ptr %i.aa, i64 %i.ad
  %bound0 = icmp ult ptr %.04454, %i.ae
  %bound1 = icmp ult ptr %.055, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %wide.load = load <4 x i32>, ptr %i.af, align 4, !tbaa !16, !alias.scope !220
  %wide.load74 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !16, !alias.scope !220
  %i.ah = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.ai = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load74)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x i32> %i.ah, ptr %i.aj, align 4, !tbaa !16, !alias.scope !221, !noalias !220
  store <4 x i32> %i.ai, ptr %i.ak, align 4, !tbaa !16, !alias.scope !221, !noalias !220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %indvars.iv.prol
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  %i.ao = tail call i32 @llvm.bswap.i32(i32 %i.an)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %indvars.iv.prol
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !16
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !199

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3155, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16
  %i.au = tail call i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %indvars.iv
  store i32 %i.au, ptr %i.av, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = tail call i32 @llvm.bswap.i32(i32 %i.ax)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %indvars.iv.next
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !16
  %indvars.iv.next.1151 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %indvars.iv.next.1151
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bc = tail call i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %indvars.iv.next.1151
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !16
  %indvars.iv.next.2153 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.055, i64 %indvars.iv.next.2153
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.04454, i64 %indvars.iv.next.2153
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !16
  %indvars.iv.next.3155 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3155, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !200

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bi = getelementptr inbounds [4 x i8], ptr %.055, i64 %i.o
  %i.bj = getelementptr inbounds [4 x i8], ptr %.04454, i64 %i.p
  %i.bk = add nuw nsw i32 %.04753, 1              ; 2 uses
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !49
  %i.bm = ashr i32 %4, %i.bl
  %i.bn = icmp slt i32 %i.bk, %i.bm
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bn, label %.preheader, label %.loopexit, !llvm.loop !201

.loopexit:                                        ; preds = %._crit_edge, %bb.b, %.preheader.lr.ph, %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = sdiv i32 %i.bp, 4                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16
  %i.bt = sdiv i32 %i.bs, 4                       ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !52 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 3 uses
  %i.by = tail call i32 @llvm.abs.i32(i32 %i.bq, i1 false)
  %i.bz = tail call i32 @llvm.abs.i32(i32 %i.bt, i1 false)
  %..1 = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bz) ; 3 uses
  %i.ca = icmp ne ptr %i.bv, null
  %i.cb = icmp ne ptr %i.bx, null
  %or.cond.1 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond.1, label %bb.c, label %.loopexit.1

bb.c:                                             ; preds = %.loopexit
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %i.cd = ashr i32 %4, %i.cc
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader.lr.ph.1, label %.loopexit.1

.preheader.lr.ph.1:                               ; preds = %bb.c
  %.not.1 = icmp eq i32 %..1, 0
  %i.cf = sext i32 %i.bq to i64                   ; 2 uses
  %i.cg = sext i32 %i.bt to i64                   ; 2 uses
  br i1 %.not.1, label %.loopexit.1, label %.preheader.preheader.1

.preheader.preheader.1:                           ; preds = %.preheader.lr.ph.1
  %i.ch = ashr i32 %3, %i.cc
  %i.ci = mul i32 %i.ch, %i.bt
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cj
  %wide.trip.count.1 = zext i32 %..1 to i64       ; 7 uses
  %i.cl = shl nsw i64 %i.cf, 2
  %i.cm = shl nuw nsw i64 %wide.trip.count.1, 2
  %i.cn = shl nsw i64 %i.cg, 2
  %i.co = add nsw i64 %wide.trip.count.1, %i.cj
  %i.cp = shl nsw i64 %i.co, 2
  %min.iters.check85 = icmp samesign ult i32 %..1, 8
  %i.cq = getelementptr i8, ptr %i.bv, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.bx, i64 %i.cm
  %n.vec91 = and i64 %wide.trip.count.1, 2147483640 ; 3 uses
  %cmp.n98 = icmp eq i64 %n.vec91, %wide.trip.count.1
  %xtraiter156 = and i64 %wide.trip.count.1, 3    ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br label %.preheader.1

.preheader.1:                                     ; preds = %._crit_edge.1, %.preheader.preheader.1
  %indvar82 = phi i64 [ %indvar.next83, %._crit_edge.1 ], [ 0, %.preheader.preheader.1 ] ; 3 uses
  %.055.1 = phi ptr [ %i.dz, %._crit_edge.1 ], [ %i.bx, %.preheader.preheader.1 ] ; 8 uses
  %.04454.1 = phi ptr [ %i.ea, %._crit_edge.1 ], [ %i.ck, %.preheader.preheader.1 ] ; 8 uses
  %.04753.1 = phi i32 [ %i.eb, %._crit_edge.1 ], [ 0, %.preheader.preheader.1 ]
  br i1 %min.iters.check85, label %scalar.ph84.preheader, label %vector.memcheck86

vector.memcheck86:                                ; preds = %.preheader.1
  %i.cs = mul nsw i64 %indvar82, %i.cn
  %i.ct = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.cu = mul nsw i64 %indvar82, %i.cl
  %i.cv = getelementptr i8, ptr %i.cr, i64 %i.cu
  %bound087 = icmp ult ptr %.04454.1, %i.cv
  %bound188 = icmp ult ptr %.055.1, %i.ct
  %found.conflict89 = and i1 %bound087, %bound188
  br i1 %found.conflict89, label %scalar.ph84.preheader, label %vector.body92

vector.body92:                                    ; preds = %vector.memcheck86, %vector.body92
  %index93 = phi i64 [ %index.next96, %vector.body92 ], [ 0, %vector.memcheck86 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %index93 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load94 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !16, !alias.scope !222
  %wide.load95 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !16, !alias.scope !222
  %i.cy = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load94)
  %i.cz = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load95)
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %index93 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !16, !alias.scope !223, !noalias !222
  store <4 x i32> %i.cz, ptr %i.db, align 4, !tbaa !16, !alias.scope !223, !noalias !222
  %index.next96 = add nuw i64 %index93, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.dc, label %middle.block97, label %vector.body92, !llvm.loop !205

middle.block97:                                   ; preds = %vector.body92
  br i1 %cmp.n98, label %._crit_edge.1, label %scalar.ph84.preheader

scalar.ph84.preheader:                            ; preds = %vector.memcheck86, %.preheader.1, %middle.block97
  %indvars.iv.1.ph = phi i64 [ 0, %vector.memcheck86 ], [ 0, %.preheader.1 ], [ %n.vec91, %middle.block97 ] ; 3 uses
  br i1 %lcmp.mod157.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol

scalar.ph84.prol:                                 ; preds = %scalar.ph84.preheader, %scalar.ph84.prol
  %indvars.iv.1.prol = phi i64 [ %indvars.iv.next.1.prol, %scalar.ph84.prol ], [ %indvars.iv.1.ph, %scalar.ph84.preheader ] ; 3 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %scalar.ph84.prol ], [ 0, %scalar.ph84.preheader ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %indvars.iv.1.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !16
  %i.df = tail call i32 @llvm.bswap.i32(i32 %i.de)
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %indvars.iv.1.prol
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !16
  %indvars.iv.next.1.prol = add nuw nsw i64 %indvars.iv.1.prol, 1 ; 2 uses
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %scalar.ph84.prol.loopexit, label %scalar.ph84.prol, !llvm.loop !206

scalar.ph84.prol.loopexit:                        ; preds = %scalar.ph84.prol, %scalar.ph84.preheader
  %indvars.iv.1.unr = phi i64 [ %indvars.iv.1.ph, %scalar.ph84.preheader ], [ %indvars.iv.next.1.prol, %scalar.ph84.prol ]
  %i.dh = sub nsw i64 %indvars.iv.1.ph, %wide.trip.count.1
  %i.di = icmp ugt i64 %i.dh, -4
  br i1 %i.di, label %._crit_edge.1, label %scalar.ph84

scalar.ph84:                                      ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.3, %scalar.ph84 ], [ %indvars.iv.1.unr, %scalar.ph84.prol.loopexit ] ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %indvars.iv.1
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !16
  %i.dl = tail call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %indvars.iv.1
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %indvars.iv.next.1
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !16
  %i.dp = tail call i32 @llvm.bswap.i32(i32 %i.do)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %indvars.iv.next.1
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !16
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %indvars.iv.next.1.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !16
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %indvars.iv.next.1.1
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !16
  %indvars.iv.next.1.2 = add nuw nsw i64 %indvars.iv.1, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.055.1, i64 %indvars.iv.next.1.2
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !16
  %i.dx = tail call i32 @llvm.bswap.i32(i32 %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.04454.1, i64 %indvars.iv.next.1.2
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !16
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %exitcond.1.not.3 = icmp eq i64 %indvars.iv.next.1.3, %wide.trip.count.1
  br i1 %exitcond.1.not.3, label %._crit_edge.1, label %scalar.ph84, !llvm.loop !207

._crit_edge.1:                                    ; preds = %scalar.ph84.prol.loopexit, %scalar.ph84, %middle.block97
  %i.dz = getelementptr inbounds [4 x i8], ptr %.055.1, i64 %i.cf
  %i.ea = getelementptr inbounds [4 x i8], ptr %.04454.1, i64 %i.cg
  %i.eb = add nuw nsw i32 %.04753.1, 1            ; 2 uses
  %i.ec = load i32, ptr %i.a, align 4, !tbaa !49
  %i.ed = ashr i32 %4, %i.ec
  %i.ee = icmp slt i32 %i.eb, %i.ed
  %indvar.next83 = add i64 %indvar82, 1
  br i1 %i.ee, label %.preheader.1, label %.loopexit.1, !llvm.loop !201

.loopexit.1:                                      ; preds = %._crit_edge.1, %.preheader.lr.ph.1, %bb.c, %.loopexit
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !16
  %i.eh = sdiv i32 %i.eg, 4                       ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !16
  %i.ek = sdiv i32 %i.ej, 4                       ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !52 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 3 uses
  %i.ep = tail call i32 @llvm.abs.i32(i32 %i.eh, i1 false)
  %i.eq = tail call i32 @llvm.abs.i32(i32 %i.ek, i1 false)
  %..2 = tail call i32 @llvm.umin.i32(i32 %i.ep, i32 %i.eq) ; 3 uses
  %i.er = icmp ne ptr %i.em, null
  %i.es = icmp ne ptr %i.eo, null
  %or.cond.2 = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.2, label %bb.d, label %.loopexit.2

bb.d:                                             ; preds = %.loopexit.1
  %i.et = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %i.eu = ashr i32 %4, %i.et
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.preheader.lr.ph.2, label %.loopexit.2

.preheader.lr.ph.2:                               ; preds = %bb.d
  %.not.2 = icmp eq i32 %..2, 0
  %i.ew = sext i32 %i.eh to i64                   ; 2 uses
  %i.ex = sext i32 %i.ek to i64                   ; 2 uses
  br i1 %.not.2, label %.loopexit.2, label %.preheader.preheader.2

.preheader.preheader.2:                           ; preds = %.preheader.lr.ph.2
  %i.ey = ashr i32 %3, %i.et
  %i.ez = mul i32 %i.ey, %i.ek
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fa
  %wide.trip.count.2 = zext i32 %..2 to i64       ; 7 uses
  %i.fc = shl nsw i64 %i.ew, 2
  %i.fd = shl nuw nsw i64 %wide.trip.count.2, 2
  %i.fe = shl nsw i64 %i.ex, 2
  %i.ff = add nsw i64 %wide.trip.count.2, %i.fa
  %i.fg = shl nsw i64 %i.ff, 2
  %min.iters.check110 = icmp samesign ult i32 %..2, 8
  %i.fh = getelementptr i8, ptr %i.em, i64 %i.fg
  %i.fi = getelementptr i8, ptr %i.eo, i64 %i.fd
  %n.vec116 = and i64 %wide.trip.count.2, 2147483640 ; 3 uses
  %cmp.n123 = icmp eq i64 %n.vec116, %wide.trip.count.2
  %xtraiter159 = and i64 %wide.trip.count.2, 3    ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br label %.preheader.2

.preheader.2:                                     ; preds = %._crit_edge.2, %.preheader.preheader.2
  %indvar107 = phi i64 [ %indvar.next108, %._crit_edge.2 ], [ 0, %.preheader.preheader.2 ] ; 3 uses
  %.055.2 = phi ptr [ %i.gq, %._crit_edge.2 ], [ %i.eo, %.preheader.preheader.2 ] ; 8 uses
  %.04454.2 = phi ptr [ %i.gr, %._crit_edge.2 ], [ %i.fb, %.preheader.preheader.2 ] ; 8 uses
  %.04753.2 = phi i32 [ %i.gs, %._crit_edge.2 ], [ 0, %.preheader.preheader.2 ]
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.memcheck111

vector.memcheck111:                               ; preds = %.preheader.2
  %i.fj = mul nsw i64 %indvar107, %i.fe
  %i.fk = getelementptr i8, ptr %i.fh, i64 %i.fj
  %i.fl = mul nsw i64 %indvar107, %i.fc
  %i.fm = getelementptr i8, ptr %i.fi, i64 %i.fl
  %bound0112 = icmp ult ptr %.04454.2, %i.fm
  %bound1113 = icmp ult ptr %.055.2, %i.fk
  %found.conflict114 = and i1 %bound0112, %bound1113
  br i1 %found.conflict114, label %scalar.ph109.preheader, label %vector.body117

vector.body117:                                   ; preds = %vector.memcheck111, %vector.body117
  %index118 = phi i64 [ %index.next121, %vector.body117 ], [ 0, %vector.memcheck111 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %index118 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load119 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !16, !alias.scope !224
  %wide.load120 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !16, !alias.scope !224
  %i.fp = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load119)
  %i.fq = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load120)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %index118 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x i32> %i.fp, ptr %i.fr, align 4, !tbaa !16, !alias.scope !225, !noalias !224
  store <4 x i32> %i.fq, ptr %i.fs, align 4, !tbaa !16, !alias.scope !225, !noalias !224
  %index.next121 = add nuw i64 %index118, 8       ; 2 uses
  %i.ft = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.ft, label %middle.block122, label %vector.body117, !llvm.loop !211

middle.block122:                                  ; preds = %vector.body117
  br i1 %cmp.n123, label %._crit_edge.2, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %vector.memcheck111, %.preheader.2, %middle.block122
  %indvars.iv.2.ph = phi i64 [ 0, %vector.memcheck111 ], [ 0, %.preheader.2 ], [ %n.vec116, %middle.block122 ] ; 3 uses
  br i1 %lcmp.mod160.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol

scalar.ph109.prol:                                ; preds = %scalar.ph109.preheader, %scalar.ph109.prol
  %indvars.iv.2.prol = phi i64 [ %indvars.iv.next.2.prol, %scalar.ph109.prol ], [ %indvars.iv.2.ph, %scalar.ph109.preheader ] ; 3 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %scalar.ph109.prol ], [ 0, %scalar.ph109.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %indvars.iv.2.prol
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !16
  %i.fw = tail call i32 @llvm.bswap.i32(i32 %i.fv)
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %indvars.iv.2.prol
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !16
  %indvars.iv.next.2.prol = add nuw nsw i64 %indvars.iv.2.prol, 1 ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %scalar.ph109.prol.loopexit, label %scalar.ph109.prol, !llvm.loop !212

scalar.ph109.prol.loopexit:                       ; preds = %scalar.ph109.prol, %scalar.ph109.preheader
  %indvars.iv.2.unr = phi i64 [ %indvars.iv.2.ph, %scalar.ph109.preheader ], [ %indvars.iv.next.2.prol, %scalar.ph109.prol ]
  %i.fy = sub nsw i64 %indvars.iv.2.ph, %wide.trip.count.2
  %i.fz = icmp ugt i64 %i.fy, -4
  br i1 %i.fz, label %._crit_edge.2, label %scalar.ph109

scalar.ph109:                                     ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.3, %scalar.ph109 ], [ %indvars.iv.2.unr, %scalar.ph109.prol.loopexit ] ; 6 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %indvars.iv.2
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !16
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %indvars.iv.2
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !16
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %indvars.iv.next.2
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !16
  %i.gg = tail call i32 @llvm.bswap.i32(i32 %i.gf)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %indvars.iv.next.2
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !16
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %indvars.iv.next.2.1
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !16
  %i.gk = tail call i32 @llvm.bswap.i32(i32 %i.gj)
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %indvars.iv.next.2.1
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !16
  %indvars.iv.next.2.2 = add nuw nsw i64 %indvars.iv.2, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.055.2, i64 %indvars.iv.next.2.2
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !16
  %i.go = tail call i32 @llvm.bswap.i32(i32 %i.gn)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.04454.2, i64 %indvars.iv.next.2.2
  store i32 %i.go, ptr %i.gp, align 4, !tbaa !16
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %exitcond.2.not.3 = icmp eq i64 %indvars.iv.next.2.3, %wide.trip.count.2
  br i1 %exitcond.2.not.3, label %._crit_edge.2, label %scalar.ph109, !llvm.loop !213

._crit_edge.2:                                    ; preds = %scalar.ph109.prol.loopexit, %scalar.ph109, %middle.block122
  %i.gq = getelementptr inbounds [4 x i8], ptr %.055.2, i64 %i.ew
  %i.gr = getelementptr inbounds [4 x i8], ptr %.04454.2, i64 %i.ex
  %i.gs = add nuw nsw i32 %.04753.2, 1            ; 2 uses
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !49
  %i.gu = ashr i32 %4, %i.gt
  %i.gv = icmp slt i32 %i.gs, %i.gu
  %indvar.next108 = add i64 %indvar107, 1
  br i1 %i.gv, label %.preheader.2, label %.loopexit.2, !llvm.loop !201

.loopexit.2:                                      ; preds = %._crit_edge.2, %.preheader.lr.ph.2, %bb.d, %.loopexit.1
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !16
  %i.gy = sdiv i32 %i.gx, 4                       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !16
  %i.hb = sdiv i32 %i.ha, 4                       ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !52 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !52 ; 3 uses
  %i.hg = tail call i32 @llvm.abs.i32(i32 %i.gy, i1 false)
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.hb, i1 false)
  %..3 = tail call i32 @llvm.umin.i32(i32 %i.hg, i32 %i.hh) ; 3 uses
  %i.hi = icmp ne ptr %i.hd, null
  %i.hj = icmp ne ptr %i.hf, null
  %or.cond.3 = select i1 %i.hi, i1 %i.hj, i1 false
  br i1 %or.cond.3, label %bb.e, label %.loopexit.3

bb.e:                                             ; preds = %.loopexit.2
  %i.hk = load i32, ptr %i.a, align 4, !tbaa !49  ; 2 uses
  %i.hl = ashr i32 %4, %i.hk
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.preheader.lr.ph.3, label %.loopexit.3

.preheader.lr.ph.3:                               ; preds = %bb.e
  %.not.3 = icmp eq i32 %..3, 0
  %i.hn = sext i32 %i.gy to i64                   ; 2 uses
  %i.ho = sext i32 %i.hb to i64                   ; 2 uses
  br i1 %.not.3, label %.loopexit.3, label %.preheader.preheader.3

.preheader.preheader.3:                           ; preds = %.preheader.lr.ph.3
  %i.hp = ashr i32 %3, %i.hk
  %i.hq = mul i32 %i.hp, %i.hb
  %i.hr = sext i32 %i.hq to i64                   ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hr
  %wide.trip.count.3 = zext i32 %..3 to i64       ; 7 uses
  %i.ht = shl nsw i64 %i.hn, 2
  %i.hu = shl nuw nsw i64 %wide.trip.count.3, 2
  %i.hv = shl nsw i64 %i.ho, 2
  %i.hw = add nsw i64 %wide.trip.count.3, %i.hr
  %i.hx = shl nsw i64 %i.hw, 2
  %min.iters.check135 = icmp samesign ult i32 %..3, 8
  %i.hy = getelementptr i8, ptr %i.hd, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hf, i64 %i.hu
  %n.vec141 = and i64 %wide.trip.count.3, 2147483640 ; 3 uses
  %cmp.n148 = icmp eq i64 %n.vec141, %wide.trip.count.3
  %xtraiter162 = and i64 %wide.trip.count.3, 3    ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br label %.preheader.3

.preheader.3:                                     ; preds = %._crit_edge.3, %.preheader.preheader.3
  %indvar132 = phi i64 [ %indvar.next133, %._crit_edge.3 ], [ 0, %.preheader.preheader.3 ] ; 3 uses
  %.055.3 = phi ptr [ %i.jh, %._crit_edge.3 ], [ %i.hf, %.preheader.preheader.3 ] ; 8 uses
  %.04454.3 = phi ptr [ %i.ji, %._crit_edge.3 ], [ %i.hs, %.preheader.preheader.3 ] ; 8 uses
  %.04753.3 = phi i32 [ %i.jj, %._crit_edge.3 ], [ 0, %.preheader.preheader.3 ]
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.preheader.3
  %i.ia = mul nsw i64 %indvar132, %i.hv
  %i.ib = getelementptr i8, ptr %i.hy, i64 %i.ia
  %i.ic = mul nsw i64 %indvar132, %i.ht
  %i.id = getelementptr i8, ptr %i.hz, i64 %i.ic
  %bound0137 = icmp ult ptr %.04454.3, %i.id
  %bound1138 = icmp ult ptr %.055.3, %i.ib
  %found.conflict139 = and i1 %bound0137, %bound1138
  br i1 %found.conflict139, label %scalar.ph134.preheader, label %vector.body142

vector.body142:                                   ; preds = %vector.memcheck136, %vector.body142
  %index143 = phi i64 [ %index.next146, %vector.body142 ], [ 0, %vector.memcheck136 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %index143 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load144 = load <4 x i32>, ptr %i.ie, align 4, !tbaa !16, !alias.scope !226
  %wide.load145 = load <4 x i32>, ptr %i.if, align 4, !tbaa !16, !alias.scope !226
  %i.ig = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load144)
  %i.ih = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load145)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %index143 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %i.ig, ptr %i.ii, align 4, !tbaa !16, !alias.scope !227, !noalias !226
  store <4 x i32> %i.ih, ptr %i.ij, align 4, !tbaa !16, !alias.scope !227, !noalias !226
  %index.next146 = add nuw i64 %index143, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next146, %n.vec141
  br i1 %i.ik, label %middle.block147, label %vector.body142, !llvm.loop !217

middle.block147:                                  ; preds = %vector.body142
  br i1 %cmp.n148, label %._crit_edge.3, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %vector.memcheck136, %.preheader.3, %middle.block147
  %indvars.iv.3.ph = phi i64 [ 0, %vector.memcheck136 ], [ 0, %.preheader.3 ], [ %n.vec141, %middle.block147 ] ; 3 uses
  br i1 %lcmp.mod163.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol

scalar.ph134.prol:                                ; preds = %scalar.ph134.preheader, %scalar.ph134.prol
  %indvars.iv.3.prol = phi i64 [ %indvars.iv.next.3.prol, %scalar.ph134.prol ], [ %indvars.iv.3.ph, %scalar.ph134.preheader ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %scalar.ph134.prol ], [ 0, %scalar.ph134.preheader ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %indvars.iv.3.prol
  %i.im = load i32, ptr %i.il, align 4, !tbaa !16
  %i.in = tail call i32 @llvm.bswap.i32(i32 %i.im)
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %indvars.iv.3.prol
  store i32 %i.in, ptr %i.io, align 4, !tbaa !16
  %indvars.iv.next.3.prol = add nuw nsw i64 %indvars.iv.3.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol, !llvm.loop !218

scalar.ph134.prol.loopexit:                       ; preds = %scalar.ph134.prol, %scalar.ph134.preheader
  %indvars.iv.3.unr = phi i64 [ %indvars.iv.3.ph, %scalar.ph134.preheader ], [ %indvars.iv.next.3.prol, %scalar.ph134.prol ]
  %i.ip = sub nsw i64 %indvars.iv.3.ph, %wide.trip.count.3
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %._crit_edge.3, label %scalar.ph134

scalar.ph134:                                     ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3.3, %scalar.ph134 ], [ %indvars.iv.3.unr, %scalar.ph134.prol.loopexit ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %indvars.iv.3
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !16
  %i.it = tail call i32 @llvm.bswap.i32(i32 %i.is)
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %indvars.iv.3
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !16
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %indvars.iv.next.3
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !16
  %i.ix = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %indvars.iv.next.3
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !16
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %indvars.iv.next.3.1
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !16
  %i.jb = tail call i32 @llvm.bswap.i32(i32 %i.ja)
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %indvars.iv.next.3.1
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !16
  %indvars.iv.next.3.2 = add nuw nsw i64 %indvars.iv.3, 3 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.055.3, i64 %indvars.iv.next.3.2
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !16
  %i.jf = tail call i32 @llvm.bswap.i32(i32 %i.je)
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.04454.3, i64 %indvars.iv.next.3.2
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !16
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %exitcond.3.not.3 = icmp eq i64 %indvars.iv.next.3.3, %wide.trip.count.3
  br i1 %exitcond.3.not.3, label %._crit_edge.3, label %scalar.ph134, !llvm.loop !219

._crit_edge.3:                                    ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134, %middle.block147
  %i.jh = getelementptr inbounds [4 x i8], ptr %.055.3, i64 %i.hn
  %i.ji = getelementptr inbounds [4 x i8], ptr %.04454.3, i64 %i.ho
  %i.jj = add nuw nsw i32 %.04753.3, 1            ; 2 uses
  %i.jk = load i32, ptr %i.a, align 4, !tbaa !49
  %i.jl = ashr i32 %4, %i.jk
  %i.jm = icmp slt i32 %i.jj, %i.jl
  %indvar.next133 = add i64 %indvar132, 1
  br i1 %i.jm, label %.preheader.3, label %.loopexit.3, !llvm.loop !201

.loopexit.3:                                      ; preds = %._crit_edge.3, %.preheader.lr.ph.3, %bb.e, %.loopexit.2
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @palToGbrpWrapper(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef returned %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54   ; 6 uses
  %i.f = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.e) #14 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 901) #14
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %i.e, 11
  br i1 %i.g, label %isALPHA.exit.thread, label %isALPHA.exit

isALPHA.exit:                                     ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !41
  %.fr49 = freeze i64 %i.i
  %i.j = and i64 %.fr49, 128
  %.not = icmp eq i64 %i.j, 0
  %i.k = select i1 %.not, i64 3, i64 4
  br label %isALPHA.exit.thread

isALPHA.exit.thread:                              ; preds = %isALPHA.exit, %bb.c
  %wide.trip.count = phi i64 [ 4, %bb.c ], [ %i.k, %isALPHA.exit ] ; 6 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %n.vec = and i64 %wide.trip.count, 6            ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %isALPHA.exit.thread
  %index = phi i64 [ 0, %isALPHA.exit.thread ], [ %index.next, %vector.body ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index
  %wide.load = load <2 x ptr>, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index
  %wide.load63 = load <2 x i32>, ptr %i.n, align 4, !tbaa !16
  %i.o = mul nsw <2 x i32> %wide.load63, %broadcast.splat
  %i.p = sext <2 x i32> %i.o to <2 x i64>
  %wide.gep = getelementptr inbounds i8, <2 x ptr> %wide.load, <2 x i64> %i.p
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index
  store <2 x ptr> %wide.gep, ptr %i.q, align 16, !tbaa !52
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.loopexit75, label %scalar.ph

.loopexit75:                                      ; preds = %scalar.ph, %middle.block
  switch i32 %i.c, label %usePal.exit.thread [
    i32 56, label %bb.d
    i32 11, label %usePal.exit
    i32 19, label %usePal.exit
    i32 17, label %usePal.exit
    i32 8, label %usePal.exit
    i32 22, label %usePal.exit
    i32 20, label %usePal.exit
  ]

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %i.w = mul nsw i32 %i.v, %3
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit75, label %scalar.ph, !llvm.loop !229

bb.d:                                             ; preds = %.loopexit75
  %switch.selectcmp.case1 = icmp eq i32 %i.e, 71
  %switch.selectcmp.case2 = icmp eq i32 %i.e, 111
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.aa = select i1 %switch.selectcmp, ptr @gray8aToPlanar8, ptr null
  br label %usePal.exit.thread

usePal.exit:                                      ; preds = %.loopexit75, %.loopexit75, %.loopexit75, %.loopexit75, %.loopexit75, %.loopexit75
  %switch.selectcmp.case140 = icmp eq i32 %i.e, 71
  %switch.selectcmp.case241 = icmp eq i32 %i.e, 111
  %switch.selectcmp42 = or i1 %switch.selectcmp.case140, %switch.selectcmp.case241
  %i.ab = select i1 %switch.selectcmp42, ptr @pal8ToPlanar8, ptr null
  br label %usePal.exit.thread

usePal.exit.thread:                               ; preds = %.loopexit75, %usePal.exit, %bb.d
  %.035 = phi ptr [ %i.ab, %usePal.exit ], [ %i.aa, %bb.d ], [ null, %.loopexit75 ]
  %i.ac = icmp sgt i32 %4, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %usePal.exit.thread
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_0
begin_hunk_1_@planarCopyWrapper:bb.a
  %i.dnz = insertelement <8 x i16> %i.dny, i16 %i.dnr, i64 5
  %i.doa = insertelement <8 x i16> %i.dnz, i16 %i.dns, i64 6
  %i.dob = insertelement <8 x i16> %i.doa, i16 %i.dnt, i64 7
  %i.doc = zext <8 x i16> %i.dob to <8 x i32>
  %i.dod = lshr <8 x i32> %i.doc, %broadcast.splat3944
  %i.doe = add nuw <8 x i32> %i.dod, %broadcast.splat3946
  %i.dof = lshr <8 x i32> %i.doe, %broadcast.splat3948 ; 2 uses
  %i.dog = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dog, i64 8
  %i.doi = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.doj = getelementptr inbounds nuw i8, ptr %i.doi, i64 24
  %i.dok = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dol = getelementptr inbounds nuw i8, ptr %i.dok, i64 40
  %i.dom = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.don = getelementptr inbounds nuw i8, ptr %i.dom, i64 56
  %i.doo = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dop = getelementptr inbounds nuw i8, ptr %i.doo, i64 72
  %i.doq = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dor = getelementptr inbounds nuw i8, ptr %i.doq, i64 88
  %i.dos = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dos, i64 104
  %i.dou = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dov = getelementptr inbounds nuw i8, ptr %i.dou, i64 120
  %i.dow = load i16, ptr %i.doh, align 2, !tbaa !60, !alias.scope !483
  %i.dox = load i16, ptr %i.doj, align 2, !tbaa !60, !alias.scope !483
  %i.doy = load i16, ptr %i.dol, align 2, !tbaa !60, !alias.scope !483
  %i.doz = load i16, ptr %i.don, align 2, !tbaa !60, !alias.scope !483
  %i.dpa = load i16, ptr %i.dop, align 2, !tbaa !60, !alias.scope !483
  %i.dpb = load i16, ptr %i.dor, align 2, !tbaa !60, !alias.scope !483
  %i.dpc = load i16, ptr %i.dot, align 2, !tbaa !60, !alias.scope !483
  %i.dpd = load i16, ptr %i.dov, align 2, !tbaa !60, !alias.scope !483
  %i.dpe = insertelement <8 x i16> poison, i16 %i.dow, i64 0
  %i.dpf = insertelement <8 x i16> %i.dpe, i16 %i.dox, i64 1
  %i.dpg = insertelement <8 x i16> %i.dpf, i16 %i.doy, i64 2
  %i.dph = insertelement <8 x i16> %i.dpg, i16 %i.doz, i64 3
  %i.dpi = insertelement <8 x i16> %i.dph, i16 %i.dpa, i64 4
  %i.dpj = insertelement <8 x i16> %i.dpi, i16 %i.dpb, i64 5
  %i.dpk = insertelement <8 x i16> %i.dpj, i16 %i.dpc, i64 6
  %i.dpl = insertelement <8 x i16> %i.dpk, i16 %i.dpd, i64 7
  %i.dpm = zext <8 x i16> %i.dpl to <8 x i32>
  %i.dpn = lshr <8 x i32> %i.dpm, %broadcast.splat3944
  %i.dpo = add nuw <8 x i32> %i.dpn, %broadcast.splat3946
  %i.dpp = lshr <8 x i32> %i.dpo, %broadcast.splat3948 ; 2 uses
  %i.dpq = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dpr = getelementptr inbounds nuw i8, ptr %i.dpq, i64 10
  %i.dps = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dpt = getelementptr inbounds nuw i8, ptr %i.dps, i64 26
  %i.dpu = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dpu, i64 42
  %i.dpw = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dpx = getelementptr inbounds nuw i8, ptr %i.dpw, i64 58
  %i.dpy = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpy, i64 74
  %i.dqa = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 90
  %i.dqc = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dqd = getelementptr inbounds nuw i8, ptr %i.dqc, i64 106
  %i.dqe = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dqf = getelementptr inbounds nuw i8, ptr %i.dqe, i64 122
  %i.dqg = load i16, ptr %i.dpr, align 2, !tbaa !60, !alias.scope !483
  %i.dqh = load i16, ptr %i.dpt, align 2, !tbaa !60, !alias.scope !483
  %i.dqi = load i16, ptr %i.dpv, align 2, !tbaa !60, !alias.scope !483
  %i.dqj = load i16, ptr %i.dpx, align 2, !tbaa !60, !alias.scope !483
  %i.dqk = load i16, ptr %i.dpz, align 2, !tbaa !60, !alias.scope !483
  %i.dql = load i16, ptr %i.dqb, align 2, !tbaa !60, !alias.scope !483
  %i.dqm = load i16, ptr %i.dqd, align 2, !tbaa !60, !alias.scope !483
  %i.dqn = load i16, ptr %i.dqf, align 2, !tbaa !60, !alias.scope !483
  %i.dqo = insertelement <8 x i16> poison, i16 %i.dqg, i64 0
  %i.dqp = insertelement <8 x i16> %i.dqo, i16 %i.dqh, i64 1
  %i.dqq = insertelement <8 x i16> %i.dqp, i16 %i.dqi, i64 2
  %i.dqr = insertelement <8 x i16> %i.dqq, i16 %i.dqj, i64 3
  %i.dqs = insertelement <8 x i16> %i.dqr, i16 %i.dqk, i64 4
  %i.dqt = insertelement <8 x i16> %i.dqs, i16 %i.dql, i64 5
  %i.dqu = insertelement <8 x i16> %i.dqt, i16 %i.dqm, i64 6
  %i.dqv = insertelement <8 x i16> %i.dqu, i16 %i.dqn, i64 7
  %i.dqw = zext <8 x i16> %i.dqv to <8 x i32>
  %i.dqx = lshr <8 x i32> %i.dqw, %broadcast.splat3944
  %i.dqy = add nuw <8 x i32> %i.dqx, %broadcast.splat3946
  %i.dqz = lshr <8 x i32> %i.dqy, %broadcast.splat3948 ; 2 uses
  %i.dra = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dra, i64 12
  %i.drc = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drd = getelementptr inbounds nuw i8, ptr %i.drc, i64 28
  %i.dre = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dre, i64 44
  %i.drg = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drh = getelementptr inbounds nuw i8, ptr %i.drg, i64 60
  %i.dri = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dri, i64 76
  %i.drk = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drl = getelementptr inbounds nuw i8, ptr %i.drk, i64 92
  %i.drm = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drn = getelementptr inbounds nuw i8, ptr %i.drm, i64 108
  %i.dro = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.drp = getelementptr inbounds nuw i8, ptr %i.dro, i64 124
  %i.drq = load i16, ptr %i.drb, align 2, !tbaa !60, !alias.scope !483
  %i.drr = load i16, ptr %i.drd, align 2, !tbaa !60, !alias.scope !483
  %i.drs = load i16, ptr %i.drf, align 2, !tbaa !60, !alias.scope !483
  %i.drt = load i16, ptr %i.drh, align 2, !tbaa !60, !alias.scope !483
  %i.dru = load i16, ptr %i.drj, align 2, !tbaa !60, !alias.scope !483
  %i.drv = load i16, ptr %i.drl, align 2, !tbaa !60, !alias.scope !483
  %i.drw = load i16, ptr %i.drn, align 2, !tbaa !60, !alias.scope !483
  %i.drx = load i16, ptr %i.drp, align 2, !tbaa !60, !alias.scope !483
  %i.dry = insertelement <8 x i16> poison, i16 %i.drq, i64 0
  %i.drz = insertelement <8 x i16> %i.dry, i16 %i.drr, i64 1
  %i.dsa = insertelement <8 x i16> %i.drz, i16 %i.drs, i64 2
  %i.dsb = insertelement <8 x i16> %i.dsa, i16 %i.drt, i64 3
  %i.dsc = insertelement <8 x i16> %i.dsb, i16 %i.dru, i64 4
  %i.dsd = insertelement <8 x i16> %i.dsc, i16 %i.drv, i64 5
  %i.dse = insertelement <8 x i16> %i.dsd, i16 %i.drw, i64 6
  %i.dsf = insertelement <8 x i16> %i.dse, i16 %i.drx, i64 7
  %i.dsg = zext <8 x i16> %i.dsf to <8 x i32>
  %i.dsh = lshr <8 x i32> %i.dsg, %broadcast.splat3944
  %i.dsi = add nuw <8 x i32> %i.dsh, %broadcast.splat3946
  %i.dsj = lshr <8 x i32> %i.dsi, %broadcast.splat3948 ; 2 uses
  %i.dsk = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsl = getelementptr inbounds nuw i8, ptr %i.dsk, i64 14
  %i.dsm = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsm, i64 30
  %i.dso = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsp = getelementptr inbounds nuw i8, ptr %i.dso, i64 46
  %i.dsq = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsr = getelementptr inbounds nuw i8, ptr %i.dsq, i64 62
  %i.dss = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dst = getelementptr inbounds nuw i8, ptr %i.dss, i64 78
  %i.dsu = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsv = getelementptr inbounds nuw i8, ptr %i.dsu, i64 94
  %i.dsw = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsx = getelementptr inbounds nuw i8, ptr %i.dsw, i64 110
  %i.dsy = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dir
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dsy, i64 126
  %i.dta = load i16, ptr %i.dsl, align 2, !tbaa !60, !alias.scope !483
  %i.dtb = load i16, ptr %i.dsn, align 2, !tbaa !60, !alias.scope !483
  %i.dtc = load i16, ptr %i.dsp, align 2, !tbaa !60, !alias.scope !483
  %i.dtd = load i16, ptr %i.dsr, align 2, !tbaa !60, !alias.scope !483
  %i.dte = load i16, ptr %i.dst, align 2, !tbaa !60, !alias.scope !483
  %i.dtf = load i16, ptr %i.dsv, align 2, !tbaa !60, !alias.scope !483
  %i.dtg = load i16, ptr %i.dsx, align 2, !tbaa !60, !alias.scope !483
  %i.dth = load i16, ptr %i.dsz, align 2, !tbaa !60, !alias.scope !483
  %i.dti = insertelement <8 x i16> poison, i16 %i.dta, i64 0
  %i.dtj = insertelement <8 x i16> %i.dti, i16 %i.dtb, i64 1
  %i.dtk = insertelement <8 x i16> %i.dtj, i16 %i.dtc, i64 2
  %i.dtl = insertelement <8 x i16> %i.dtk, i16 %i.dtd, i64 3
  %i.dtm = insertelement <8 x i16> %i.dtl, i16 %i.dte, i64 4
  %i.dtn = insertelement <8 x i16> %i.dtm, i16 %i.dtf, i64 5
  %i.dto = insertelement <8 x i16> %i.dtn, i16 %i.dtg, i64 6
  %i.dtp = insertelement <8 x i16> %i.dto, i16 %i.dth, i64 7
  %i.dtq = zext <8 x i16> %i.dtp to <8 x i32>
  %i.dtr = lshr <8 x i32> %i.dtq, %broadcast.splat3944
  %i.dts = add nuw <8 x i32> %i.dtr, %broadcast.splat3946
  %i.dtt = lshr <8 x i32> %i.dts, %broadcast.splat3948 ; 2 uses
  %i.dtu = shufflevector <8 x i32> %i.dka, <8 x i32> %i.dll, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtv = shufflevector <8 x i32> %i.dmv, <8 x i32> %i.dof, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtw = shufflevector <16 x i32> %i.dtu, <16 x i32> %i.dtv, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dtx = shufflevector <8 x i32> %i.dka, <8 x i32> %i.dll, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dty = shufflevector <8 x i32> %i.dmv, <8 x i32> %i.dof, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dtz = shufflevector <16 x i32> %i.dtx, <16 x i32> %i.dty, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dua = lshr <32 x i32> %i.dtz, %i.dim
  %i.dub = sub <32 x i32> %i.dtw, %i.dua
  %i.duc = shl <32 x i32> %i.dub, %i.din
  %i.dud = shufflevector <8 x i32> %i.dpp, <8 x i32> %i.dqz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.due = shufflevector <8 x i32> %i.dsj, <8 x i32> %i.dtt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.duf = shufflevector <16 x i32> %i.dud, <16 x i32> %i.due, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dug = shufflevector <8 x i32> %i.dpp, <8 x i32> %i.dqz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.duh = shufflevector <8 x i32> %i.dsj, <8 x i32> %i.dtt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dui = shufflevector <16 x i32> %i.dug, <16 x i32> %i.duh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.duj = lshr <32 x i32> %i.dui, %i.dio
  %i.duk = sub <32 x i32> %i.duf, %i.duj
  %i.dul = shl <32 x i32> %i.duk, %i.dip
  %i.dum = shufflevector <32 x i32> %i.duc, <32 x i32> %i.dul, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec3955 = trunc <64 x i32> %i.dum to <64 x i16>
  store <64 x i16> %interleaved.vec3955, ptr %i.dkb, align 2, !tbaa !60, !alias.scope !484, !noalias !483
  %index.next3956 = add nuw i64 %index3954, 8     ; 2 uses
  %i.dun = icmp eq i64 %index.next3956, %n.vec3942
  br i1 %i.dun, label %middle.block3957, label %vector.body3953, !llvm.loop !348

middle.block3957:                                 ; preds = %vector.body3953
  br i1 %cmp.n3958, label %.preheader2720.loopexit, label %.lr.ph2936.preheader5061

.lr.ph2936.preheader5061:                         ; preds = %.lr.ph2936.preheader, %middle.block3957
  %indvars.iv3215.ph = phi i64 [ %i.dil, %middle.block3957 ], [ 0, %.lr.ph2936.preheader ]
  br label %.lr.ph2936

.preheader2720.loopexit:                          ; preds = %.lr.ph2936, %middle.block3957
  %indvars.iv.next3216.lcssa = phi i64 [ %i.dil, %middle.block3957 ], [ %indvars.iv.next3216, %.lr.ph2936 ]
  %i.duo = trunc nuw nsw i64 %indvars.iv.next3216.lcssa to i32
  br label %.preheader2720

.preheader2720:                                   ; preds = %.preheader2720.loopexit, %.preheader2721
  %.26.lcssa = phi i32 [ 0, %.preheader2721 ], [ %i.duo, %.preheader2720.loopexit ] ; 2 uses
  %i.dup = icmp slt i32 %.26.lcssa, %.024902630263526392642
  br i1 %i.dup, label %.lr.ph2939.preheader, label %._crit_edge2940

.lr.ph2939.preheader:                             ; preds = %.preheader2720
  %i.duq = zext i32 %.26.lcssa to i64             ; 5 uses
  %i.dur = sub nsw i64 %wide.trip.count3221, %i.duq ; 3 uses
  %min.iters.check3897 = icmp ult i64 %i.dur, 8
  br i1 %min.iters.check3897, label %.lr.ph2939.preheader5060, label %vector.memcheck3898

vector.memcheck3898:                              ; preds = %.lr.ph2939.preheader
  %i.dus = mul nsw i64 %indvar, %i.dhq
  %.reass5232 = add i64 %i.dus, %invariant.op5231
  %diff.check3899 = icmp ult i64 %.reass5232, 15
  br i1 %diff.check3899, label %.lr.ph2939.preheader5060, label %vector.ph3900

vector.ph3900:                                    ; preds = %vector.memcheck3898
  %n.vec3901 = and i64 %i.dur, -8                 ; 3 uses
  %i.dut = add nsw i64 %n.vec3901, %i.duq
  br label %vector.body3910

vector.body3910:                                  ; preds = %vector.body3910, %vector.ph3900
  %index3911 = phi i64 [ 0, %vector.ph3900 ], [ %index.next3913, %vector.body3910 ] ; 2 uses
  %i.duu = add nuw i64 %index3911, %i.duq         ; 2 uses
  %i.duv = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.duu
  %wide.load3912 = load <8 x i16>, ptr %i.duv, align 2, !tbaa !60
  %i.duw = zext <8 x i16> %wide.load3912 to <8 x i32>
  %i.dux = add nuw <8 x i32> %broadcast.splat3903, %i.duw
  %i.duy = lshr <8 x i32> %i.dux, %broadcast.splat3905 ; 2 uses
  %i.duz = lshr <8 x i32> %i.duy, %broadcast.splat3907
  %i.dva = sub <8 x i32> %i.duy, %i.duz
  %i.dvb = shl <8 x i32> %i.dva, %broadcast.splat3909
  %i.dvc = trunc <8 x i32> %i.dvb to <8 x i16>
  %i.dvd = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.duu
  store <8 x i16> %i.dvc, ptr %i.dvd, align 2, !tbaa !60
  %index.next3913 = add nuw i64 %index3911, 8     ; 2 uses
  %i.dve = icmp eq i64 %index.next3913, %n.vec3901
  br i1 %i.dve, label %middle.block3914, label %vector.body3910, !llvm.loop !349

middle.block3914:                                 ; preds = %vector.body3910
  %cmp.n3915 = icmp eq i64 %i.dur, %n.vec3901
  br i1 %cmp.n3915, label %._crit_edge2940, label %.lr.ph2939.preheader5060

.lr.ph2939.preheader5060:                         ; preds = %vector.memcheck3898, %.lr.ph2939.preheader, %middle.block3914
  %indvars.iv3218.ph = phi i64 [ %i.duq, %vector.memcheck3898 ], [ %i.duq, %.lr.ph2939.preheader ], [ %i.dut, %middle.block3914 ] ; 6 uses
  %i.dvf = sub nsw i64 %wide.trip.count3221, %indvars.iv3218.ph
  %xtraiter5150 = and i64 %i.dvf, 1
  %lcmp.mod5151.not = icmp eq i64 %xtraiter5150, 0
  br i1 %lcmp.mod5151.not, label %.lr.ph2939.prol.loopexit, label %.lr.ph2939.prol

.lr.ph2939.prol:                                  ; preds = %.lr.ph2939.preheader5060
  %i.dvg = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %indvars.iv3218.ph
  %i.dvh = load i16, ptr %i.dvg, align 2, !tbaa !60
  %i.dvi = zext i16 %i.dvh to i32
  %i.dvj = add nuw i32 %i.dhb, %i.dvi
  %i.dvk = lshr i32 %i.dvj, %i.dgz                ; 2 uses
  %i.dvl = lshr i32 %i.dvk, %i.fk
  %i.dvm = sub i32 %i.dvk, %i.dvl
  %i.dvn = shl i32 %i.dvm, %i.fo
  %i.dvo = trunc i32 %i.dvn to i16
  %i.dvp = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %indvars.iv3218.ph
  store i16 %i.dvo, ptr %i.dvp, align 2, !tbaa !60
  %indvars.iv.next3219.prol = add nuw nsw i64 %indvars.iv3218.ph, 1
  br label %.lr.ph2939.prol.loopexit

.lr.ph2939.prol.loopexit:                         ; preds = %.lr.ph2939.prol, %.lr.ph2939.preheader5060
  %indvars.iv3218.unr = phi i64 [ %indvars.iv3218.ph, %.lr.ph2939.preheader5060 ], [ %indvars.iv.next3219.prol, %.lr.ph2939.prol ]
  %i.dvq = icmp eq i64 %indvars.iv3218.ph, %i.diq
  br i1 %i.dvq, label %._crit_edge2940, label %.lr.ph2939

.lr.ph2936:                                       ; preds = %.lr.ph2936.preheader5061, %.lr.ph2936
  %indvars.iv3215 = phi i64 [ %indvars.iv.next3216, %.lr.ph2936 ], [ %indvars.iv3215.ph, %.lr.ph2936.preheader5061 ] ; 10 uses
  %i.dvr = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %indvars.iv3215
  %i.dvs = load i16, ptr %i.dvr, align 2, !tbaa !60
  %i.dvt = zext i16 %i.dvs to i32
  %i.dvu = lshr i32 %i.dvt, %i.fm
  %i.dvv = add nuw i32 %i.dvu, %i.dhb
  %i.dvw = lshr i32 %i.dvv, %i.dgz                ; 2 uses
  %i.dvx = lshr i32 %i.dvw, %i.fk
  %i.dvy = sub i32 %i.dvw, %i.dvx
  %i.dvz = shl i32 %i.dvy, %i.fo
  %i.dwa = trunc i32 %i.dvz to i16
  %i.dwb = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %indvars.iv3215
  store i16 %i.dwa, ptr %i.dwb, align 2, !tbaa !60
  %i.dwc = or disjoint i64 %indvars.iv3215, 1     ; 2 uses
  %i.dwd = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dwc
  %i.dwe = load i16, ptr %i.dwd, align 2, !tbaa !60
  %i.dwf = zext i16 %i.dwe to i32
  %i.dwg = lshr i32 %i.dwf, %i.fm
  %i.dwh = add nuw i32 %i.dwg, %i.dhb
  %i.dwi = lshr i32 %i.dwh, %i.dgz                ; 2 uses
  %i.dwj = lshr i32 %i.dwi, %i.fk
  %i.dwk = sub i32 %i.dwi, %i.dwj
  %i.dwl = shl i32 %i.dwk, %i.fo
  %i.dwm = trunc i32 %i.dwl to i16
  %i.dwn = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dwc
  store i16 %i.dwm, ptr %i.dwn, align 2, !tbaa !60
  %i.dwo = or disjoint i64 %indvars.iv3215, 2     ; 2 uses
  %i.dwp = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dwo
  %i.dwq = load i16, ptr %i.dwp, align 2, !tbaa !60
  %i.dwr = zext i16 %i.dwq to i32
  %i.dws = lshr i32 %i.dwr, %i.fm
  %i.dwt = add nuw i32 %i.dws, %i.dhb
  %i.dwu = lshr i32 %i.dwt, %i.dgz                ; 2 uses
  %i.dwv = lshr i32 %i.dwu, %i.fk
  %i.dww = sub i32 %i.dwu, %i.dwv
  %i.dwx = shl i32 %i.dww, %i.fo
  %i.dwy = trunc i32 %i.dwx to i16
  %i.dwz = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dwo
  store i16 %i.dwy, ptr %i.dwz, align 2, !tbaa !60
  %i.dxa = or disjoint i64 %indvars.iv3215, 3     ; 2 uses
  %i.dxb = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dxa
  %i.dxc = load i16, ptr %i.dxb, align 2, !tbaa !60
  %i.dxd = zext i16 %i.dxc to i32
  %i.dxe = lshr i32 %i.dxd, %i.fm
  %i.dxf = add nuw i32 %i.dxe, %i.dhb
  %i.dxg = lshr i32 %i.dxf, %i.dgz                ; 2 uses
  %i.dxh = lshr i32 %i.dxg, %i.fk
  %i.dxi = sub i32 %i.dxg, %i.dxh
  %i.dxj = shl i32 %i.dxi, %i.fo
  %i.dxk = trunc i32 %i.dxj to i16
  %i.dxl = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dxa
  store i16 %i.dxk, ptr %i.dxl, align 2, !tbaa !60
  %i.dxm = or disjoint i64 %indvars.iv3215, 4     ; 2 uses
  %i.dxn = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dxm
  %i.dxo = load i16, ptr %i.dxn, align 2, !tbaa !60
  %i.dxp = zext i16 %i.dxo to i32
  %i.dxq = lshr i32 %i.dxp, %i.fm
  %i.dxr = add nuw i32 %i.dxq, %i.dhb
  %i.dxs = lshr i32 %i.dxr, %i.dgz                ; 2 uses
  %i.dxt = lshr i32 %i.dxs, %i.fk
  %i.dxu = sub i32 %i.dxs, %i.dxt
  %i.dxv = shl i32 %i.dxu, %i.fo
  %i.dxw = trunc i32 %i.dxv to i16
  %i.dxx = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dxm
  store i16 %i.dxw, ptr %i.dxx, align 2, !tbaa !60
  %i.dxy = or disjoint i64 %indvars.iv3215, 5     ; 2 uses
  %i.dxz = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dxy
  %i.dya = load i16, ptr %i.dxz, align 2, !tbaa !60
  %i.dyb = zext i16 %i.dya to i32
  %i.dyc = lshr i32 %i.dyb, %i.fm
  %i.dyd = add nuw i32 %i.dyc, %i.dhb
  %i.dye = lshr i32 %i.dyd, %i.dgz                ; 2 uses
  %i.dyf = lshr i32 %i.dye, %i.fk
  %i.dyg = sub i32 %i.dye, %i.dyf
  %i.dyh = shl i32 %i.dyg, %i.fo
  %i.dyi = trunc i32 %i.dyh to i16
  %i.dyj = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dxy
  store i16 %i.dyi, ptr %i.dyj, align 2, !tbaa !60
  %i.dyk = or disjoint i64 %indvars.iv3215, 6     ; 2 uses
  %i.dyl = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dyk
  %i.dym = load i16, ptr %i.dyl, align 2, !tbaa !60
  %i.dyn = zext i16 %i.dym to i32
  %i.dyo = lshr i32 %i.dyn, %i.fm
  %i.dyp = add nuw i32 %i.dyo, %i.dhb
  %i.dyq = lshr i32 %i.dyp, %i.dgz                ; 2 uses
  %i.dyr = lshr i32 %i.dyq, %i.fk
  %i.dys = sub i32 %i.dyq, %i.dyr
  %i.dyt = shl i32 %i.dys, %i.fo
  %i.dyu = trunc i32 %i.dyt to i16
  %i.dyv = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dyk
  store i16 %i.dyu, ptr %i.dyv, align 2, !tbaa !60
  %i.dyw = or disjoint i64 %indvars.iv3215, 7     ; 2 uses
  %i.dyx = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %i.dyw
  %i.dyy = load i16, ptr %i.dyx, align 2, !tbaa !60
  %i.dyz = zext i16 %i.dyy to i32
  %i.dza = lshr i32 %i.dyz, %i.fm
  %i.dzb = add nuw i32 %i.dza, %i.dhb
  %i.dzc = lshr i32 %i.dzb, %i.dgz                ; 2 uses
  %i.dzd = lshr i32 %i.dzc, %i.fk
  %i.dze = sub i32 %i.dzc, %i.dzd
  %i.dzf = shl i32 %i.dze, %i.fo
  %i.dzg = trunc i32 %i.dzf to i16
  %i.dzh = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %i.dyw
  store i16 %i.dzg, ptr %i.dzh, align 2, !tbaa !60
  %indvars.iv.next3216 = add nuw nsw i64 %indvars.iv3215, 8 ; 3 uses
  %i.dzi = icmp samesign ult i64 %indvars.iv.next3216, %i.dho
  br i1 %i.dzi, label %.lr.ph2936, label %.preheader2720.loopexit, !llvm.loop !350

.lr.ph2939:                                       ; preds = %.lr.ph2939.prol.loopexit, %.lr.ph2939
  %indvars.iv3218 = phi i64 [ %indvars.iv.next3219.1, %.lr.ph2939 ], [ %indvars.iv3218.unr, %.lr.ph2939.prol.loopexit ] ; 4 uses
  %i.dzj = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %indvars.iv3218
  %i.dzk = load i16, ptr %i.dzj, align 2, !tbaa !60
  %i.dzl = zext i16 %i.dzk to i32
  %i.dzm = add nuw i32 %i.dhb, %i.dzl
  %i.dzn = lshr i32 %i.dzm, %i.dgz                ; 2 uses
  %i.dzo = lshr i32 %i.dzn, %i.fk
  %i.dzp = sub i32 %i.dzn, %i.dzo
  %i.dzq = shl i32 %i.dzp, %i.fo
  %i.dzr = trunc i32 %i.dzq to i16
  %i.dzs = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %indvars.iv3218
  store i16 %i.dzr, ptr %i.dzs, align 2, !tbaa !60
  %indvars.iv.next3219 = add nuw nsw i64 %indvars.iv3218, 1 ; 2 uses
  %i.dzt = getelementptr inbounds nuw [2 x i8], ptr %.725172941, i64 %indvars.iv.next3219
  %i.dzu = load i16, ptr %i.dzt, align 2, !tbaa !60
  %i.dzv = zext i16 %i.dzu to i32
  %i.dzw = add nuw i32 %i.dhb, %i.dzv
  %i.dzx = lshr i32 %i.dzw, %i.dgz                ; 2 uses
  %i.dzy = lshr i32 %i.dzx, %i.fk
  %i.dzz = sub i32 %i.dzx, %i.dzy
  %i.eaa = shl i32 %i.dzz, %i.fo
  %i.eab = trunc i32 %i.eaa to i16
  %i.eac = getelementptr inbounds nuw [2 x i8], ptr %.224982942, i64 %indvars.iv.next3219
  store i16 %i.eab, ptr %i.eac, align 2, !tbaa !60
  %indvars.iv.next3219.1 = add nuw nsw i64 %indvars.iv3218, 2 ; 2 uses
  %exitcond3222.not.1 = icmp eq i64 %indvars.iv.next3219.1, %wide.trip.count3221
  br i1 %exitcond3222.not.1, label %._crit_edge2940, label %.lr.ph2939, !llvm.loop !351

._crit_edge2940:                                  ; preds = %.lr.ph2939.prol.loopexit, %.lr.ph2939, %middle.block3914, %.preheader2720
  %i.ead = getelementptr inbounds [2 x i8], ptr %.224982942, i64 %i.dhj
  %i.eae = getelementptr inbounds [2 x i8], ptr %.725172941, i64 %i.dhn
  %i.eaf = add nuw nsw i32 %.82943, 1             ; 2 uses
end_hunk_1
begin_hunk_2_@planarCopyWrapper:bb.a
  %i.ejx = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ejy = getelementptr inbounds nuw i8, ptr %i.ejx, i64 40
  %i.ejz = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eka = getelementptr inbounds nuw i8, ptr %i.ejz, i64 56
  %i.ekb = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ekc = getelementptr inbounds nuw i8, ptr %i.ekb, i64 72
  %i.ekd = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eke = getelementptr inbounds nuw i8, ptr %i.ekd, i64 88
  %i.ekf = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ekg = getelementptr inbounds nuw i8, ptr %i.ekf, i64 104
  %i.ekh = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eki = getelementptr inbounds nuw i8, ptr %i.ekh, i64 120
  %i.ekj = load i16, ptr %i.eju, align 2, !tbaa !60, !alias.scope !485
  %i.ekk = load i16, ptr %i.ejw, align 2, !tbaa !60, !alias.scope !485
  %i.ekl = load i16, ptr %i.ejy, align 2, !tbaa !60, !alias.scope !485
  %i.ekm = load i16, ptr %i.eka, align 2, !tbaa !60, !alias.scope !485
  %i.ekn = load i16, ptr %i.ekc, align 2, !tbaa !60, !alias.scope !485
  %i.eko = load i16, ptr %i.eke, align 2, !tbaa !60, !alias.scope !485
  %i.ekp = load i16, ptr %i.ekg, align 2, !tbaa !60, !alias.scope !485
  %i.ekq = load i16, ptr %i.eki, align 2, !tbaa !60, !alias.scope !485
  %i.ekr = insertelement <8 x i16> poison, i16 %i.ekj, i64 0
  %i.eks = insertelement <8 x i16> %i.ekr, i16 %i.ekk, i64 1
  %i.ekt = insertelement <8 x i16> %i.eks, i16 %i.ekl, i64 2
  %i.eku = insertelement <8 x i16> %i.ekt, i16 %i.ekm, i64 3
  %i.ekv = insertelement <8 x i16> %i.eku, i16 %i.ekn, i64 4
  %i.ekw = insertelement <8 x i16> %i.ekv, i16 %i.eko, i64 5
  %i.ekx = insertelement <8 x i16> %i.ekw, i16 %i.ekp, i64 6
  %i.eky = insertelement <8 x i16> %i.ekx, i16 %i.ekq, i64 7
  %i.ekz = zext <8 x i16> %i.eky to <8 x i32>
  %i.ela = lshr <8 x i32> %i.ekz, %broadcast.splat4030
  %i.elb = add nuw nsw <8 x i32> %i.ela, %broadcast.splat4022
  %i.elc = lshr <8 x i32> %i.elb, %broadcast.splat4032 ; 2 uses
  %i.eld = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ele = getelementptr inbounds nuw i8, ptr %i.eld, i64 10
  %i.elf = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.elg = getelementptr inbounds nuw i8, ptr %i.elf, i64 26
  %i.elh = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eli = getelementptr inbounds nuw i8, ptr %i.elh, i64 42
  %i.elj = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.elk = getelementptr inbounds nuw i8, ptr %i.elj, i64 58
  %i.ell = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.elm = getelementptr inbounds nuw i8, ptr %i.ell, i64 74
  %i.eln = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.elo = getelementptr inbounds nuw i8, ptr %i.eln, i64 90
  %i.elp = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.elq = getelementptr inbounds nuw i8, ptr %i.elp, i64 106
  %i.elr = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.els = getelementptr inbounds nuw i8, ptr %i.elr, i64 122
  %i.elt = load i16, ptr %i.ele, align 2, !tbaa !60, !alias.scope !485
  %i.elu = load i16, ptr %i.elg, align 2, !tbaa !60, !alias.scope !485
  %i.elv = load i16, ptr %i.eli, align 2, !tbaa !60, !alias.scope !485
  %i.elw = load i16, ptr %i.elk, align 2, !tbaa !60, !alias.scope !485
  %i.elx = load i16, ptr %i.elm, align 2, !tbaa !60, !alias.scope !485
  %i.ely = load i16, ptr %i.elo, align 2, !tbaa !60, !alias.scope !485
  %i.elz = load i16, ptr %i.elq, align 2, !tbaa !60, !alias.scope !485
  %i.ema = load i16, ptr %i.els, align 2, !tbaa !60, !alias.scope !485
  %i.emb = insertelement <8 x i16> poison, i16 %i.elt, i64 0
  %i.emc = insertelement <8 x i16> %i.emb, i16 %i.elu, i64 1
  %i.emd = insertelement <8 x i16> %i.emc, i16 %i.elv, i64 2
  %i.eme = insertelement <8 x i16> %i.emd, i16 %i.elw, i64 3
  %i.emf = insertelement <8 x i16> %i.eme, i16 %i.elx, i64 4
  %i.emg = insertelement <8 x i16> %i.emf, i16 %i.ely, i64 5
  %i.emh = insertelement <8 x i16> %i.emg, i16 %i.elz, i64 6
  %i.emi = insertelement <8 x i16> %i.emh, i16 %i.ema, i64 7
  %i.emj = zext <8 x i16> %i.emi to <8 x i32>
  %i.emk = lshr <8 x i32> %i.emj, %broadcast.splat4030
  %i.eml = add nuw nsw <8 x i32> %i.emk, %broadcast.splat4024
  %i.emm = lshr <8 x i32> %i.eml, %broadcast.splat4032 ; 2 uses
  %i.emn = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.emo = getelementptr inbounds nuw i8, ptr %i.emn, i64 12
  %i.emp = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.emq = getelementptr inbounds nuw i8, ptr %i.emp, i64 28
  %i.emr = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ems = getelementptr inbounds nuw i8, ptr %i.emr, i64 44
  %i.emt = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.emu = getelementptr inbounds nuw i8, ptr %i.emt, i64 60
  %i.emv = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.emw = getelementptr inbounds nuw i8, ptr %i.emv, i64 76
  %i.emx = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.emy = getelementptr inbounds nuw i8, ptr %i.emx, i64 92
  %i.emz = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.ena = getelementptr inbounds nuw i8, ptr %i.emz, i64 108
  %i.enb = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.enc = getelementptr inbounds nuw i8, ptr %i.enb, i64 124
  %i.end = load i16, ptr %i.emo, align 2, !tbaa !60, !alias.scope !485
  %i.ene = load i16, ptr %i.emq, align 2, !tbaa !60, !alias.scope !485
  %i.enf = load i16, ptr %i.ems, align 2, !tbaa !60, !alias.scope !485
  %i.eng = load i16, ptr %i.emu, align 2, !tbaa !60, !alias.scope !485
  %i.enh = load i16, ptr %i.emw, align 2, !tbaa !60, !alias.scope !485
  %i.eni = load i16, ptr %i.emy, align 2, !tbaa !60, !alias.scope !485
  %i.enj = load i16, ptr %i.ena, align 2, !tbaa !60, !alias.scope !485
  %i.enk = load i16, ptr %i.enc, align 2, !tbaa !60, !alias.scope !485
  %i.enl = insertelement <8 x i16> poison, i16 %i.end, i64 0
  %i.enm = insertelement <8 x i16> %i.enl, i16 %i.ene, i64 1
  %i.enn = insertelement <8 x i16> %i.enm, i16 %i.enf, i64 2
  %i.eno = insertelement <8 x i16> %i.enn, i16 %i.eng, i64 3
  %i.enp = insertelement <8 x i16> %i.eno, i16 %i.enh, i64 4
  %i.enq = insertelement <8 x i16> %i.enp, i16 %i.eni, i64 5
  %i.enr = insertelement <8 x i16> %i.enq, i16 %i.enj, i64 6
  %i.ens = insertelement <8 x i16> %i.enr, i16 %i.enk, i64 7
  %i.ent = zext <8 x i16> %i.ens to <8 x i32>
  %i.enu = lshr <8 x i32> %i.ent, %broadcast.splat4030
  %i.env = add nuw nsw <8 x i32> %i.enu, %broadcast.splat4026
  %i.enw = lshr <8 x i32> %i.env, %broadcast.splat4032 ; 2 uses
  %i.enx = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eny = getelementptr inbounds nuw i8, ptr %i.enx, i64 14
  %i.enz = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eoa = getelementptr inbounds nuw i8, ptr %i.enz, i64 30
  %i.eob = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eoc = getelementptr inbounds nuw i8, ptr %i.eob, i64 46
  %i.eod = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eoe = getelementptr inbounds nuw i8, ptr %i.eod, i64 62
  %i.eof = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eog = getelementptr inbounds nuw i8, ptr %i.eof, i64 78
  %i.eoh = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eoi = getelementptr inbounds nuw i8, ptr %i.eoh, i64 94
  %i.eoj = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eok = getelementptr inbounds nuw i8, ptr %i.eoj, i64 110
  %i.eol = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eee
  %i.eom = getelementptr inbounds nuw i8, ptr %i.eol, i64 126
  %i.eon = load i16, ptr %i.eny, align 2, !tbaa !60, !alias.scope !485
  %i.eoo = load i16, ptr %i.eoa, align 2, !tbaa !60, !alias.scope !485
  %i.eop = load i16, ptr %i.eoc, align 2, !tbaa !60, !alias.scope !485
  %i.eoq = load i16, ptr %i.eoe, align 2, !tbaa !60, !alias.scope !485
  %i.eor = load i16, ptr %i.eog, align 2, !tbaa !60, !alias.scope !485
  %i.eos = load i16, ptr %i.eoi, align 2, !tbaa !60, !alias.scope !485
  %i.eot = load i16, ptr %i.eok, align 2, !tbaa !60, !alias.scope !485
  %i.eou = load i16, ptr %i.eom, align 2, !tbaa !60, !alias.scope !485
  %i.eov = insertelement <8 x i16> poison, i16 %i.eon, i64 0
  %i.eow = insertelement <8 x i16> %i.eov, i16 %i.eoo, i64 1
  %i.eox = insertelement <8 x i16> %i.eow, i16 %i.eop, i64 2
  %i.eoy = insertelement <8 x i16> %i.eox, i16 %i.eoq, i64 3
  %i.eoz = insertelement <8 x i16> %i.eoy, i16 %i.eor, i64 4
  %i.epa = insertelement <8 x i16> %i.eoz, i16 %i.eos, i64 5
  %i.epb = insertelement <8 x i16> %i.epa, i16 %i.eot, i64 6
  %i.epc = insertelement <8 x i16> %i.epb, i16 %i.eou, i64 7
  %i.epd = zext <8 x i16> %i.epc to <8 x i32>
  %i.epe = lshr <8 x i32> %i.epd, %broadcast.splat4030
  %i.epf = add nuw nsw <8 x i32> %i.epe, %broadcast.splat4028
  %i.epg = lshr <8 x i32> %i.epf, %broadcast.splat4032 ; 2 uses
  %i.eph = shufflevector <8 x i32> %i.efn, <8 x i32> %i.egy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epi = shufflevector <8 x i32> %i.eii, <8 x i32> %i.ejs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epj = shufflevector <16 x i32> %i.eph, <16 x i32> %i.epi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.epk = shufflevector <8 x i32> %i.efn, <8 x i32> %i.egy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epl = shufflevector <8 x i32> %i.eii, <8 x i32> %i.ejs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epm = shufflevector <16 x i32> %i.epk, <16 x i32> %i.epl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.epn = lshr <32 x i32> %i.epm, %i.ecz
  %i.epo = sub nsw <32 x i32> %i.epj, %i.epn
  %i.epp = shl <32 x i32> %i.epo, %i.eda
  %i.epq = shufflevector <8 x i32> %i.elc, <8 x i32> %i.emm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epr = shufflevector <8 x i32> %i.enw, <8 x i32> %i.epg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eps = shufflevector <16 x i32> %i.epq, <16 x i32> %i.epr, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ept = shufflevector <8 x i32> %i.elc, <8 x i32> %i.emm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epu = shufflevector <8 x i32> %i.enw, <8 x i32> %i.epg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.epv = shufflevector <16 x i32> %i.ept, <16 x i32> %i.epu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.epw = lshr <32 x i32> %i.epv, %i.edb
  %i.epx = sub nsw <32 x i32> %i.eps, %i.epw
  %i.epy = shl <32 x i32> %i.epx, %i.edc
  %i.epz = shufflevector <32 x i32> %i.epp, <32 x i32> %i.epy, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec4039 = trunc <64 x i32> %i.epz to <64 x i16>
  store <64 x i16> %interleaved.vec4039, ptr %i.efo, align 2, !tbaa !60, !alias.scope !486, !noalias !485
  %index.next4040 = add nuw i64 %index4038, 8     ; 2 uses
  %i.eqa = icmp eq i64 %index.next4040, %n.vec4012
  br i1 %i.eqa, label %middle.block4041, label %vector.body4037, !llvm.loop !356

middle.block4041:                                 ; preds = %vector.body4037
  br i1 %cmp.n4042, label %.preheader2722.loopexit, label %scalar.ph4003.preheader

scalar.ph4003.preheader:                          ; preds = %.lr.ph2926, %middle.block4041
  %indvars.iv3206.ph = phi i64 [ %i.ecy, %middle.block4041 ], [ 0, %.lr.ph2926 ]
  br label %scalar.ph4003

.preheader2722.loopexit:                          ; preds = %scalar.ph4003, %middle.block4041
  %indvars.iv.next3207.lcssa = phi i64 [ %i.ecy, %middle.block4041 ], [ %indvars.iv.next3207, %scalar.ph4003 ]
  %i.eqb = trunc nuw nsw i64 %indvars.iv.next3207.lcssa to i32
  br label %.preheader2722

.preheader2722:                                   ; preds = %.preheader2722.loopexit, %bb.by
  %.28.lcssa = phi i32 [ 0, %bb.by ], [ %i.eqb, %.preheader2722.loopexit ] ; 3 uses
  %i.eqc = icmp slt i32 %.28.lcssa, %.024902630263526392642
  br i1 %i.eqc, label %.lr.ph2929.preheader, label %._crit_edge2930

.lr.ph2929.preheader:                             ; preds = %.preheader2722
  %i.eqd = zext i32 %.28.lcssa to i64             ; 8 uses
  %i.eqe = sub nsw i64 %wide.trip.count3212, %i.eqd ; 3 uses
  %min.iters.check3968 = icmp ult i64 %i.eqe, 8
  br i1 %min.iters.check3968, label %.lr.ph2929.preheader5062, label %vector.scevcheck3960

vector.scevcheck3960:                             ; preds = %.lr.ph2929.preheader
  %i.eqf = xor i64 %i.eqd, -1
  %i.eqg = add nsw i64 %i.eqf, %wide.trip.count3212 ; 2 uses
  %i.eqh = trunc i32 %.28.lcssa to i3
  %i.eqi = trunc i64 %i.eqg to i3
  %i.eqj = xor i3 %i.eqh, -1
  %i.eqk = icmp ult i3 %i.eqj, %i.eqi
  %i.eql = icmp ugt i64 %i.eqg, 7
  %i.eqm = or i1 %i.eqk, %i.eql
  br i1 %i.eqm, label %.lr.ph2929.preheader5062, label %vector.memcheck3969

vector.memcheck3969:                              ; preds = %vector.scevcheck3960
  %i.eqn = mul nsw i64 %indvar3965, %i.ecd
  %.reass5230 = add i64 %i.eqn, %invariant.op5229
  %diff.check3970 = icmp ult i64 %.reass5230, 15
  br i1 %diff.check3970, label %.lr.ph2929.preheader5062, label %vector.ph3971

vector.ph3971:                                    ; preds = %vector.memcheck3969
  %n.vec3972 = and i64 %i.eqe, -8                 ; 3 uses
  %i.eqo = add nsw i64 %n.vec3972, %i.eqd
  %i.eqp = and i64 %i.eqd, 7
  %i.eqq = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.eqp
  %wide.load3982 = load <8 x i8>, ptr %i.eqq, align 1, !tbaa !64
  %i.eqr = zext <8 x i8> %wide.load3982 to <8 x i32>
  br label %vector.body3979

vector.body3979:                                  ; preds = %vector.body3979, %vector.ph3971
  %index3980 = phi i64 [ 0, %vector.ph3971 ], [ %index.next3983, %vector.body3979 ] ; 2 uses
  %i.eqs = add nuw i64 %index3980, %i.eqd         ; 2 uses
  %i.eqt = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eqs
  %wide.load3981 = load <8 x i16>, ptr %i.eqt, align 2, !tbaa !60
  %i.equ = zext <8 x i16> %wide.load3981 to <8 x i32>
  %i.eqv = add nuw nsw <8 x i32> %i.eqr, %i.equ
  %i.eqw = lshr <8 x i32> %i.eqv, %broadcast.splat3974 ; 2 uses
  %i.eqx = lshr <8 x i32> %i.eqw, %broadcast.splat3976
  %i.eqy = sub nsw <8 x i32> %i.eqw, %i.eqx
  %i.eqz = shl <8 x i32> %i.eqy, %broadcast.splat3978
  %i.era = trunc <8 x i32> %i.eqz to <8 x i16>
  %i.erb = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.eqs
  store <8 x i16> %i.era, ptr %i.erb, align 2, !tbaa !60
  %index.next3983 = add nuw i64 %index3980, 8     ; 2 uses
  %i.erc = icmp eq i64 %index.next3983, %n.vec3972
  br i1 %i.erc, label %middle.block3984, label %vector.body3979, !llvm.loop !357

middle.block3984:                                 ; preds = %vector.body3979
  %cmp.n3985 = icmp eq i64 %i.eqe, %n.vec3972
  br i1 %cmp.n3985, label %._crit_edge2930, label %.lr.ph2929.preheader5062

.lr.ph2929.preheader5062:                         ; preds = %vector.memcheck3969, %vector.scevcheck3960, %.lr.ph2929.preheader, %middle.block3984
  %indvars.iv3209.ph = phi i64 [ %i.eqd, %vector.memcheck3969 ], [ %i.eqd, %vector.scevcheck3960 ], [ %i.eqd, %.lr.ph2929.preheader ], [ %i.eqo, %middle.block3984 ] ; 7 uses
  %i.erd = sub nsw i64 %wide.trip.count3212, %indvars.iv3209.ph
  %xtraiter5148 = and i64 %i.erd, 1
  %lcmp.mod5149.not = icmp eq i64 %xtraiter5148, 0
  br i1 %lcmp.mod5149.not, label %.lr.ph2929.prol.loopexit, label %.lr.ph2929.prol

.lr.ph2929.prol:                                  ; preds = %.lr.ph2929.preheader5062
  %i.ere = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %indvars.iv3209.ph
  %i.erf = load i16, ptr %i.ere, align 2, !tbaa !60
  %i.erg = zext i16 %i.erf to i32
  %i.erh = and i64 %indvars.iv3209.ph, 7
  %i.eri = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.erh
  %i.erj = load i8, ptr %i.eri, align 1, !tbaa !64
  %i.erk = zext i8 %i.erj to i32
  %i.erl = add nuw nsw i32 %i.erk, %i.erg
  %i.erm = lshr i32 %i.erl, %i.dgz                ; 2 uses
  %i.ern = lshr i32 %i.erm, %i.fk
  %i.ero = sub nsw i32 %i.erm, %i.ern
  %i.erp = shl i32 %i.ero, %i.fo
  %i.erq = trunc i32 %i.erp to i16
  %i.err = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %indvars.iv3209.ph
  store i16 %i.erq, ptr %i.err, align 2, !tbaa !60
  %indvars.iv.next3210.prol = add nuw nsw i64 %indvars.iv3209.ph, 1
  br label %.lr.ph2929.prol.loopexit

.lr.ph2929.prol.loopexit:                         ; preds = %.lr.ph2929.prol, %.lr.ph2929.preheader5062
  %indvars.iv3209.unr = phi i64 [ %indvars.iv3209.ph, %.lr.ph2929.preheader5062 ], [ %indvars.iv.next3210.prol, %.lr.ph2929.prol ]
  %i.ers = icmp eq i64 %indvars.iv3209.ph, %i.edd
  br i1 %i.ers, label %._crit_edge2930, label %.lr.ph2929

scalar.ph4003:                                    ; preds = %scalar.ph4003.preheader, %scalar.ph4003
  %indvars.iv3206 = phi i64 [ %indvars.iv.next3207, %scalar.ph4003 ], [ %indvars.iv3206.ph, %scalar.ph4003.preheader ] ; 10 uses
  %i.ert = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %indvars.iv3206
  %i.eru = load i16, ptr %i.ert, align 2, !tbaa !60
  %i.erv = zext i16 %i.eru to i32
  %i.erw = lshr i32 %i.erv, %i.fm
  %i.erx = add nuw nsw i32 %i.erw, %i.edi
  %i.ery = lshr i32 %i.erx, %i.dgz                ; 2 uses
  %i.erz = lshr i32 %i.ery, %i.fk
  %i.esa = sub nsw i32 %i.ery, %i.erz
  %i.esb = shl i32 %i.esa, %i.fo
  %i.esc = trunc i32 %i.esb to i16
  %i.esd = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %indvars.iv3206
  store i16 %i.esc, ptr %i.esd, align 2, !tbaa !60
  %i.ese = or disjoint i64 %indvars.iv3206, 1     ; 2 uses
  %i.esf = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.ese
  %i.esg = load i16, ptr %i.esf, align 2, !tbaa !60
  %i.esh = zext i16 %i.esg to i32
  %i.esi = lshr i32 %i.esh, %i.fm
  %i.esj = add nuw nsw i32 %i.esi, %i.edl
  %i.esk = lshr i32 %i.esj, %i.dgz                ; 2 uses
  %i.esl = lshr i32 %i.esk, %i.fk
  %i.esm = sub nsw i32 %i.esk, %i.esl
  %i.esn = shl i32 %i.esm, %i.fo
  %i.eso = trunc i32 %i.esn to i16
  %i.esp = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.ese
  store i16 %i.eso, ptr %i.esp, align 2, !tbaa !60
  %i.esq = or disjoint i64 %indvars.iv3206, 2     ; 2 uses
  %i.esr = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.esq
  %i.ess = load i16, ptr %i.esr, align 2, !tbaa !60
  %i.est = zext i16 %i.ess to i32
  %i.esu = lshr i32 %i.est, %i.fm
  %i.esv = add nuw nsw i32 %i.esu, %i.edo
  %i.esw = lshr i32 %i.esv, %i.dgz                ; 2 uses
  %i.esx = lshr i32 %i.esw, %i.fk
  %i.esy = sub nsw i32 %i.esw, %i.esx
  %i.esz = shl i32 %i.esy, %i.fo
  %i.eta = trunc i32 %i.esz to i16
  %i.etb = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.esq
  store i16 %i.eta, ptr %i.etb, align 2, !tbaa !60
  %i.etc = or disjoint i64 %indvars.iv3206, 3     ; 2 uses
  %i.etd = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.etc
  %i.ete = load i16, ptr %i.etd, align 2, !tbaa !60
  %i.etf = zext i16 %i.ete to i32
  %i.etg = lshr i32 %i.etf, %i.fm
  %i.eth = add nuw nsw i32 %i.etg, %i.edr
  %i.eti = lshr i32 %i.eth, %i.dgz                ; 2 uses
  %i.etj = lshr i32 %i.eti, %i.fk
  %i.etk = sub nsw i32 %i.eti, %i.etj
  %i.etl = shl i32 %i.etk, %i.fo
  %i.etm = trunc i32 %i.etl to i16
  %i.etn = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.etc
  store i16 %i.etm, ptr %i.etn, align 2, !tbaa !60
  %i.eto = or disjoint i64 %indvars.iv3206, 4     ; 2 uses
  %i.etp = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eto
  %i.etq = load i16, ptr %i.etp, align 2, !tbaa !60
  %i.etr = zext i16 %i.etq to i32
  %i.ets = lshr i32 %i.etr, %i.fm
  %i.ett = add nuw nsw i32 %i.ets, %i.edu
  %i.etu = lshr i32 %i.ett, %i.dgz                ; 2 uses
  %i.etv = lshr i32 %i.etu, %i.fk
  %i.etw = sub nsw i32 %i.etu, %i.etv
  %i.etx = shl i32 %i.etw, %i.fo
  %i.ety = trunc i32 %i.etx to i16
  %i.etz = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.eto
  store i16 %i.ety, ptr %i.etz, align 2, !tbaa !60
  %i.eua = or disjoint i64 %indvars.iv3206, 5     ; 2 uses
  %i.eub = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eua
  %i.euc = load i16, ptr %i.eub, align 2, !tbaa !60
  %i.eud = zext i16 %i.euc to i32
  %i.eue = lshr i32 %i.eud, %i.fm
  %i.euf = add nuw nsw i32 %i.eue, %i.edx
  %i.eug = lshr i32 %i.euf, %i.dgz                ; 2 uses
  %i.euh = lshr i32 %i.eug, %i.fk
  %i.eui = sub nsw i32 %i.eug, %i.euh
  %i.euj = shl i32 %i.eui, %i.fo
  %i.euk = trunc i32 %i.euj to i16
  %i.eul = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.eua
  store i16 %i.euk, ptr %i.eul, align 2, !tbaa !60
  %i.eum = or disjoint i64 %indvars.iv3206, 6     ; 2 uses
  %i.eun = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.eum
  %i.euo = load i16, ptr %i.eun, align 2, !tbaa !60
  %i.eup = zext i16 %i.euo to i32
  %i.euq = lshr i32 %i.eup, %i.fm
  %i.eur = add nuw nsw i32 %i.euq, %i.eea
  %i.eus = lshr i32 %i.eur, %i.dgz                ; 2 uses
  %i.eut = lshr i32 %i.eus, %i.fk
  %i.euu = sub nsw i32 %i.eus, %i.eut
  %i.euv = shl i32 %i.euu, %i.fo
  %i.euw = trunc i32 %i.euv to i16
  %i.eux = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.eum
  store i16 %i.euw, ptr %i.eux, align 2, !tbaa !60
  %i.euy = or disjoint i64 %indvars.iv3206, 7     ; 2 uses
  %i.euz = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %i.euy
  %i.eva = load i16, ptr %i.euz, align 2, !tbaa !60
  %i.evb = zext i16 %i.eva to i32
  %i.evc = lshr i32 %i.evb, %i.fm
  %i.evd = add nuw nsw i32 %i.evc, %i.eed
  %i.eve = lshr i32 %i.evd, %i.dgz                ; 2 uses
  %i.evf = lshr i32 %i.eve, %i.fk
  %i.evg = sub nsw i32 %i.eve, %i.evf
  %i.evh = shl i32 %i.evg, %i.fo
  %i.evi = trunc i32 %i.evh to i16
  %i.evj = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %i.euy
  store i16 %i.evi, ptr %i.evj, align 2, !tbaa !60
  %indvars.iv.next3207 = add nuw nsw i64 %indvars.iv3206, 8 ; 3 uses
  %i.evk = icmp samesign ult i64 %indvars.iv.next3207, %i.ecb
  br i1 %i.evk, label %scalar.ph4003, label %.preheader2722.loopexit, !llvm.loop !358

.lr.ph2929:                                       ; preds = %.lr.ph2929.prol.loopexit, %.lr.ph2929
  %indvars.iv3209 = phi i64 [ %indvars.iv.next3210.1, %.lr.ph2929 ], [ %indvars.iv3209.unr, %.lr.ph2929.prol.loopexit ] ; 5 uses
  %i.evl = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %indvars.iv3209
  %i.evm = load i16, ptr %i.evl, align 2, !tbaa !60
  %i.evn = zext i16 %i.evm to i32
  %i.evo = and i64 %indvars.iv3209, 7
  %i.evp = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.evo
  %i.evq = load i8, ptr %i.evp, align 1, !tbaa !64
  %i.evr = zext i8 %i.evq to i32
  %i.evs = add nuw nsw i32 %i.evr, %i.evn
  %i.evt = lshr i32 %i.evs, %i.dgz                ; 2 uses
  %i.evu = lshr i32 %i.evt, %i.fk
  %i.evv = sub nsw i32 %i.evt, %i.evu
  %i.evw = shl i32 %i.evv, %i.fo
  %i.evx = trunc i32 %i.evw to i16
  %i.evy = getelementptr inbounds nuw [2 x i8], ptr %.324992932, i64 %indvars.iv3209
  store i16 %i.evx, ptr %i.evy, align 2, !tbaa !60
  %indvars.iv.next3210 = add nuw nsw i64 %indvars.iv3209, 1 ; 3 uses
  %i.evz = getelementptr inbounds nuw [2 x i8], ptr %.825182931, i64 %indvars.iv.next3210
  %i.ewa = load i16, ptr %i.evz, align 2, !tbaa !60
  %i.ewb = zext i16 %i.ewa to i32
  %i.ewc = and i64 %indvars.iv.next3210, 7
  %i.ewd = getelementptr inbounds nuw i8, ptr %i.edg, i64 %i.ewc
  %i.ewe = load i8, ptr %i.ewd, align 1, !tbaa !64
  %i.ewf = zext i8 %i.ewe to i32
end_hunk_2
begin_hunk_3_@planarCopyWrapper:bb.a
  %i.fdy = getelementptr inbounds nuw i8, ptr %i.fdx, i64 56
  %i.fdz = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fea = getelementptr inbounds nuw i8, ptr %i.fdz, i64 72
  %i.feb = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fec = getelementptr inbounds nuw i8, ptr %i.feb, i64 88
  %i.fed = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fee = getelementptr inbounds nuw i8, ptr %i.fed, i64 104
  %i.fef = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.feg = getelementptr inbounds nuw i8, ptr %i.fef, i64 120
  %i.feh = load i16, ptr %i.fds, align 2, !tbaa !60, !alias.scope !487
  %i.fei = load i16, ptr %i.fdu, align 2, !tbaa !60, !alias.scope !487
  %i.fej = load i16, ptr %i.fdw, align 2, !tbaa !60, !alias.scope !487
  %i.fek = load i16, ptr %i.fdy, align 2, !tbaa !60, !alias.scope !487
  %i.fel = load i16, ptr %i.fea, align 2, !tbaa !60, !alias.scope !487
  %i.fem = load i16, ptr %i.fec, align 2, !tbaa !60, !alias.scope !487
  %i.fen = load i16, ptr %i.fee, align 2, !tbaa !60, !alias.scope !487
  %i.feo = load i16, ptr %i.feg, align 2, !tbaa !60, !alias.scope !487
  %i.fep = insertelement <8 x i16> poison, i16 %i.feh, i64 0
  %i.feq = insertelement <8 x i16> %i.fep, i16 %i.fei, i64 1
  %i.fer = insertelement <8 x i16> %i.feq, i16 %i.fej, i64 2
  %i.fes = insertelement <8 x i16> %i.fer, i16 %i.fek, i64 3
  %i.fet = insertelement <8 x i16> %i.fes, i16 %i.fel, i64 4
  %i.feu = insertelement <8 x i16> %i.fet, i16 %i.fem, i64 5
  %i.fev = insertelement <8 x i16> %i.feu, i16 %i.fen, i64 6
  %i.few = insertelement <8 x i16> %i.fev, i16 %i.feo, i64 7
  %i.fex = zext <8 x i16> %i.few to <8 x i32>
  %i.fey = lshr <8 x i32> %i.fex, %broadcast.splat4112 ; 2 uses
  %i.fez = lshr <8 x i32> %i.fey, %broadcast.splat4114
  %i.ffa = add nuw nsw <8 x i32> %i.fey, %broadcast.splat4104
  %i.ffb = sub nsw <8 x i32> %i.ffa, %i.fez
  %i.ffc = lshr <8 x i32> %i.ffb, %broadcast.splat4116
  %i.ffd = shl <8 x i32> %i.ffc, %broadcast.splat4118
  %i.ffe = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fff = getelementptr inbounds nuw i8, ptr %i.ffe, i64 10
  %i.ffg = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffh = getelementptr inbounds nuw i8, ptr %i.ffg, i64 26
  %i.ffi = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffj = getelementptr inbounds nuw i8, ptr %i.ffi, i64 42
  %i.ffk = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffl = getelementptr inbounds nuw i8, ptr %i.ffk, i64 58
  %i.ffm = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffn = getelementptr inbounds nuw i8, ptr %i.ffm, i64 74
  %i.ffo = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffp = getelementptr inbounds nuw i8, ptr %i.ffo, i64 90
  %i.ffq = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.ffr = getelementptr inbounds nuw i8, ptr %i.ffq, i64 106
  %i.ffs = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fft = getelementptr inbounds nuw i8, ptr %i.ffs, i64 122
  %i.ffu = load i16, ptr %i.fff, align 2, !tbaa !60, !alias.scope !487
  %i.ffv = load i16, ptr %i.ffh, align 2, !tbaa !60, !alias.scope !487
  %i.ffw = load i16, ptr %i.ffj, align 2, !tbaa !60, !alias.scope !487
  %i.ffx = load i16, ptr %i.ffl, align 2, !tbaa !60, !alias.scope !487
  %i.ffy = load i16, ptr %i.ffn, align 2, !tbaa !60, !alias.scope !487
  %i.ffz = load i16, ptr %i.ffp, align 2, !tbaa !60, !alias.scope !487
  %i.fga = load i16, ptr %i.ffr, align 2, !tbaa !60, !alias.scope !487
  %i.fgb = load i16, ptr %i.fft, align 2, !tbaa !60, !alias.scope !487
  %i.fgc = insertelement <8 x i16> poison, i16 %i.ffu, i64 0
  %i.fgd = insertelement <8 x i16> %i.fgc, i16 %i.ffv, i64 1
  %i.fge = insertelement <8 x i16> %i.fgd, i16 %i.ffw, i64 2
  %i.fgf = insertelement <8 x i16> %i.fge, i16 %i.ffx, i64 3
  %i.fgg = insertelement <8 x i16> %i.fgf, i16 %i.ffy, i64 4
  %i.fgh = insertelement <8 x i16> %i.fgg, i16 %i.ffz, i64 5
  %i.fgi = insertelement <8 x i16> %i.fgh, i16 %i.fga, i64 6
  %i.fgj = insertelement <8 x i16> %i.fgi, i16 %i.fgb, i64 7
  %i.fgk = zext <8 x i16> %i.fgj to <8 x i32>
  %i.fgl = lshr <8 x i32> %i.fgk, %broadcast.splat4112 ; 2 uses
  %i.fgm = lshr <8 x i32> %i.fgl, %broadcast.splat4114
  %i.fgn = add nuw nsw <8 x i32> %i.fgl, %broadcast.splat4106
  %i.fgo = sub nsw <8 x i32> %i.fgn, %i.fgm
  %i.fgp = lshr <8 x i32> %i.fgo, %broadcast.splat4116
  %i.fgq = shl <8 x i32> %i.fgp, %broadcast.splat4118
  %i.fgr = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fgs = getelementptr inbounds nuw i8, ptr %i.fgr, i64 12
  %i.fgt = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fgu = getelementptr inbounds nuw i8, ptr %i.fgt, i64 28
  %i.fgv = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fgw = getelementptr inbounds nuw i8, ptr %i.fgv, i64 44
  %i.fgx = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fgy = getelementptr inbounds nuw i8, ptr %i.fgx, i64 60
  %i.fgz = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fha = getelementptr inbounds nuw i8, ptr %i.fgz, i64 76
  %i.fhb = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fhc = getelementptr inbounds nuw i8, ptr %i.fhb, i64 92
  %i.fhd = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fhe = getelementptr inbounds nuw i8, ptr %i.fhd, i64 108
  %i.fhf = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fhg = getelementptr inbounds nuw i8, ptr %i.fhf, i64 124
  %i.fhh = load i16, ptr %i.fgs, align 2, !tbaa !60, !alias.scope !487
  %i.fhi = load i16, ptr %i.fgu, align 2, !tbaa !60, !alias.scope !487
  %i.fhj = load i16, ptr %i.fgw, align 2, !tbaa !60, !alias.scope !487
  %i.fhk = load i16, ptr %i.fgy, align 2, !tbaa !60, !alias.scope !487
  %i.fhl = load i16, ptr %i.fha, align 2, !tbaa !60, !alias.scope !487
  %i.fhm = load i16, ptr %i.fhc, align 2, !tbaa !60, !alias.scope !487
  %i.fhn = load i16, ptr %i.fhe, align 2, !tbaa !60, !alias.scope !487
  %i.fho = load i16, ptr %i.fhg, align 2, !tbaa !60, !alias.scope !487
  %i.fhp = insertelement <8 x i16> poison, i16 %i.fhh, i64 0
  %i.fhq = insertelement <8 x i16> %i.fhp, i16 %i.fhi, i64 1
  %i.fhr = insertelement <8 x i16> %i.fhq, i16 %i.fhj, i64 2
  %i.fhs = insertelement <8 x i16> %i.fhr, i16 %i.fhk, i64 3
  %i.fht = insertelement <8 x i16> %i.fhs, i16 %i.fhl, i64 4
  %i.fhu = insertelement <8 x i16> %i.fht, i16 %i.fhm, i64 5
  %i.fhv = insertelement <8 x i16> %i.fhu, i16 %i.fhn, i64 6
  %i.fhw = insertelement <8 x i16> %i.fhv, i16 %i.fho, i64 7
  %i.fhx = zext <8 x i16> %i.fhw to <8 x i32>
  %i.fhy = lshr <8 x i32> %i.fhx, %broadcast.splat4112 ; 2 uses
  %i.fhz = lshr <8 x i32> %i.fhy, %broadcast.splat4114
  %i.fia = add nuw nsw <8 x i32> %i.fhy, %broadcast.splat4108
  %i.fib = sub nsw <8 x i32> %i.fia, %i.fhz
  %i.fic = lshr <8 x i32> %i.fib, %broadcast.splat4116
  %i.fid = shl <8 x i32> %i.fic, %broadcast.splat4118
  %i.fie = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fif = getelementptr inbounds nuw i8, ptr %i.fie, i64 14
  %i.fig = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fih = getelementptr inbounds nuw i8, ptr %i.fig, i64 30
  %i.fii = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fij = getelementptr inbounds nuw i8, ptr %i.fii, i64 46
  %i.fik = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fil = getelementptr inbounds nuw i8, ptr %i.fik, i64 62
  %i.fim = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fin = getelementptr inbounds nuw i8, ptr %i.fim, i64 78
  %i.fio = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fip = getelementptr inbounds nuw i8, ptr %i.fio, i64 94
  %i.fiq = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fir = getelementptr inbounds nuw i8, ptr %i.fiq, i64 110
  %i.fis = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.exq
  %i.fit = getelementptr inbounds nuw i8, ptr %i.fis, i64 126
  %i.fiu = load i16, ptr %i.fif, align 2, !tbaa !60, !alias.scope !487
  %i.fiv = load i16, ptr %i.fih, align 2, !tbaa !60, !alias.scope !487
  %i.fiw = load i16, ptr %i.fij, align 2, !tbaa !60, !alias.scope !487
  %i.fix = load i16, ptr %i.fil, align 2, !tbaa !60, !alias.scope !487
  %i.fiy = load i16, ptr %i.fin, align 2, !tbaa !60, !alias.scope !487
  %i.fiz = load i16, ptr %i.fip, align 2, !tbaa !60, !alias.scope !487
  %i.fja = load i16, ptr %i.fir, align 2, !tbaa !60, !alias.scope !487
  %i.fjb = load i16, ptr %i.fit, align 2, !tbaa !60, !alias.scope !487
  %i.fjc = insertelement <8 x i16> poison, i16 %i.fiu, i64 0
  %i.fjd = insertelement <8 x i16> %i.fjc, i16 %i.fiv, i64 1
  %i.fje = insertelement <8 x i16> %i.fjd, i16 %i.fiw, i64 2
  %i.fjf = insertelement <8 x i16> %i.fje, i16 %i.fix, i64 3
  %i.fjg = insertelement <8 x i16> %i.fjf, i16 %i.fiy, i64 4
  %i.fjh = insertelement <8 x i16> %i.fjg, i16 %i.fiz, i64 5
  %i.fji = insertelement <8 x i16> %i.fjh, i16 %i.fja, i64 6
  %i.fjj = insertelement <8 x i16> %i.fji, i16 %i.fjb, i64 7
  %i.fjk = zext <8 x i16> %i.fjj to <8 x i32>
  %i.fjl = lshr <8 x i32> %i.fjk, %broadcast.splat4112 ; 2 uses
  %i.fjm = lshr <8 x i32> %i.fjl, %broadcast.splat4114
  %i.fjn = add nuw nsw <8 x i32> %i.fjl, %broadcast.splat4110
  %i.fjo = sub nsw <8 x i32> %i.fjn, %i.fjm
  %i.fjp = lshr <8 x i32> %i.fjo, %broadcast.splat4116
  %i.fjq = shl <8 x i32> %i.fjp, %broadcast.splat4118
  %i.fjr = shufflevector <8 x i32> %i.ezc, <8 x i32> %i.faq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fjs = trunc <16 x i32> %i.fjr to <16 x i16>
  %i.fjt = shufflevector <8 x i32> %i.fcd, <8 x i32> %i.fdq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fju = trunc <16 x i32> %i.fjt to <16 x i16>
  %i.fjv = shufflevector <8 x i32> %i.ffd, <8 x i32> %i.fgq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fjw = trunc <16 x i32> %i.fjv to <16 x i16>
  %i.fjx = shufflevector <8 x i32> %i.fid, <8 x i32> %i.fjq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fjy = trunc <16 x i32> %i.fjx to <16 x i16>
  %i.fjz = shufflevector <16 x i16> %i.fjs, <16 x i16> %i.fju, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.fka = shufflevector <16 x i16> %i.fjw, <16 x i16> %i.fjy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec4121 = shufflevector <32 x i16> %i.fjz, <32 x i16> %i.fka, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec4121, ptr %i.ezd, align 2, !tbaa !60, !alias.scope !488, !noalias !487
  %index.next4122 = add nuw i64 %index4120, 8     ; 2 uses
  %i.fkb = icmp eq i64 %index.next4122, %n.vec4094
  br i1 %i.fkb, label %middle.block4123, label %vector.body4119, !llvm.loop !364

middle.block4123:                                 ; preds = %vector.body4119
  br i1 %cmp.n4124, label %.preheader2723.loopexit, label %scalar.ph4085.preheader

scalar.ph4085.preheader:                          ; preds = %.lr.ph2915, %middle.block4123
  %indvars.iv3197.ph = phi i64 [ %i.ebo, %middle.block4123 ], [ 0, %.lr.ph2915 ]
  br label %scalar.ph4085

.preheader2723.loopexit:                          ; preds = %scalar.ph4085, %middle.block4123
  %indvars.iv.next3198.lcssa = phi i64 [ %i.ebo, %middle.block4123 ], [ %indvars.iv.next3198, %scalar.ph4085 ]
  %i.fkc = trunc nuw nsw i64 %indvars.iv.next3198.lcssa to i32
  br label %.preheader2723

.preheader2723:                                   ; preds = %.preheader2723.loopexit, %bb.bz
  %.30.lcssa = phi i32 [ 0, %bb.bz ], [ %i.fkc, %.preheader2723.loopexit ] ; 3 uses
  %i.fkd = icmp slt i32 %.30.lcssa, %.024902630263526392642
  br i1 %i.fkd, label %.lr.ph2918.preheader, label %._crit_edge2919

.lr.ph2918.preheader:                             ; preds = %.preheader2723
  %i.fke = zext i32 %.30.lcssa to i64             ; 8 uses
  %i.fkf = sub nsw i64 %wide.trip.count3203, %i.fke ; 3 uses
  %min.iters.check4052 = icmp ult i64 %i.fkf, 8
  br i1 %min.iters.check4052, label %.lr.ph2918.preheader5063, label %vector.scevcheck4044

vector.scevcheck4044:                             ; preds = %.lr.ph2918.preheader
  %i.fkg = xor i64 %i.fke, -1
  %i.fkh = add nsw i64 %i.fkg, %wide.trip.count3203 ; 2 uses
  %i.fki = trunc i32 %.30.lcssa to i3
  %i.fkj = trunc i64 %i.fkh to i3
  %i.fkk = xor i3 %i.fki, -1
  %i.fkl = icmp ult i3 %i.fkk, %i.fkj
  %i.fkm = icmp ugt i64 %i.fkh, 7
  %i.fkn = or i1 %i.fkl, %i.fkm
  br i1 %i.fkn, label %.lr.ph2918.preheader5063, label %vector.memcheck4053

vector.memcheck4053:                              ; preds = %vector.scevcheck4044
  %i.fko = mul nsw i64 %indvar4049, %i.eat
  %.reass5228 = add i64 %i.fko, %invariant.op5227
  %diff.check4054 = icmp ult i64 %.reass5228, 15
  br i1 %diff.check4054, label %.lr.ph2918.preheader5063, label %vector.ph4055

vector.ph4055:                                    ; preds = %vector.memcheck4053
  %n.vec4056 = and i64 %i.fkf, -8                 ; 3 uses
  %i.fkp = add nsw i64 %n.vec4056, %i.fke
  %i.fkq = and i64 %i.fke, 7
  %i.fkr = getelementptr inbounds nuw i8, ptr %i.ews, i64 %i.fkq
  %wide.load4064 = load <8 x i8>, ptr %i.fkr, align 1, !tbaa !64
  %i.fks = zext <8 x i8> %wide.load4064 to <8 x i32>
  br label %vector.body4061

vector.body4061:                                  ; preds = %vector.body4061, %vector.ph4055
  %index4062 = phi i64 [ 0, %vector.ph4055 ], [ %index.next4065, %vector.body4061 ] ; 2 uses
  %i.fkt = add nuw i64 %index4062, %i.fke         ; 2 uses
  %i.fku = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fkt
  %wide.load4063 = load <8 x i16>, ptr %i.fku, align 2, !tbaa !60
  %i.fkv = zext <8 x i16> %wide.load4063 to <8 x i32> ; 2 uses
  %i.fkw = lshr <8 x i32> %i.fkv, %broadcast.splat4058
  %i.fkx = sub nsw <8 x i32> %i.fkv, %i.fkw
  %i.fky = add nsw <8 x i32> %i.fkx, %i.fks
  %i.fkz = lshr <8 x i32> %i.fky, %broadcast.splat4060
  %i.fla = trunc <8 x i32> %i.fkz to <8 x i16>
  %i.flb = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fkt
  store <8 x i16> %i.fla, ptr %i.flb, align 2, !tbaa !60
  %index.next4065 = add nuw i64 %index4062, 8     ; 2 uses
  %i.flc = icmp eq i64 %index.next4065, %n.vec4056
  br i1 %i.flc, label %middle.block4066, label %vector.body4061, !llvm.loop !365

middle.block4066:                                 ; preds = %vector.body4061
  %cmp.n4067 = icmp eq i64 %i.fkf, %n.vec4056
  br i1 %cmp.n4067, label %._crit_edge2919, label %.lr.ph2918.preheader5063

.lr.ph2918.preheader5063:                         ; preds = %vector.memcheck4053, %vector.scevcheck4044, %.lr.ph2918.preheader, %middle.block4066
  %indvars.iv3200.ph = phi i64 [ %i.fke, %vector.memcheck4053 ], [ %i.fke, %vector.scevcheck4044 ], [ %i.fke, %.lr.ph2918.preheader ], [ %i.fkp, %middle.block4066 ] ; 7 uses
  %i.fld = sub nsw i64 %wide.trip.count3203, %indvars.iv3200.ph
  %xtraiter5146 = and i64 %i.fld, 1
  %lcmp.mod5147.not = icmp eq i64 %xtraiter5146, 0
  br i1 %lcmp.mod5147.not, label %.lr.ph2918.prol.loopexit, label %.lr.ph2918.prol

.lr.ph2918.prol:                                  ; preds = %.lr.ph2918.preheader5063
  %i.fle = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %indvars.iv3200.ph
  %i.flf = load i16, ptr %i.fle, align 2, !tbaa !60
  %i.flg = zext i16 %i.flf to i32                 ; 2 uses
  %i.flh = lshr i32 %i.flg, %i.fk
  %i.fli = sub nsw i32 %i.flg, %i.flh
  %i.flj = and i64 %indvars.iv3200.ph, 7
  %i.flk = getelementptr inbounds nuw i8, ptr %i.ews, i64 %i.flj
  %i.fll = load i8, ptr %i.flk, align 1, !tbaa !64
  %i.flm = zext i8 %i.fll to i32
  %i.fln = add nsw i32 %i.fli, %i.flm
  %i.flo = lshr i32 %i.fln, %i.dgz
  %i.flp = trunc i32 %i.flo to i16
  %i.flq = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %indvars.iv3200.ph
  store i16 %i.flp, ptr %i.flq, align 2, !tbaa !60
  %indvars.iv.next3201.prol = add nuw nsw i64 %indvars.iv3200.ph, 1
  br label %.lr.ph2918.prol.loopexit

.lr.ph2918.prol.loopexit:                         ; preds = %.lr.ph2918.prol, %.lr.ph2918.preheader5063
  %indvars.iv3200.unr = phi i64 [ %indvars.iv3200.ph, %.lr.ph2918.preheader5063 ], [ %indvars.iv.next3201.prol, %.lr.ph2918.prol ]
  %i.flr = icmp eq i64 %indvars.iv3200.ph, %i.ebp
  br i1 %i.flr, label %._crit_edge2919, label %.lr.ph2918

scalar.ph4085:                                    ; preds = %scalar.ph4085.preheader, %scalar.ph4085
  %indvars.iv3197 = phi i64 [ %indvars.iv.next3198, %scalar.ph4085 ], [ %indvars.iv3197.ph, %scalar.ph4085.preheader ] ; 10 uses
  %i.fls = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %indvars.iv3197
  %i.flt = load i16, ptr %i.fls, align 2, !tbaa !60
  %i.flu = zext i16 %i.flt to i32
  %i.flv = lshr i32 %i.flu, %i.fm                 ; 2 uses
  %i.flw = lshr i32 %i.flv, %i.fk
  %i.flx = add nuw nsw i32 %i.flv, %i.ewu
  %i.fly = sub nsw i32 %i.flx, %i.flw
  %i.flz = lshr i32 %i.fly, %i.dgz
  %i.fma = shl i32 %i.flz, %i.fo
  %i.fmb = trunc i32 %i.fma to i16
  %i.fmc = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %indvars.iv3197
  store i16 %i.fmb, ptr %i.fmc, align 2, !tbaa !60
  %i.fmd = or disjoint i64 %indvars.iv3197, 1     ; 2 uses
  %i.fme = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fmd
  %i.fmf = load i16, ptr %i.fme, align 2, !tbaa !60
  %i.fmg = zext i16 %i.fmf to i32
  %i.fmh = lshr i32 %i.fmg, %i.fm                 ; 2 uses
  %i.fmi = lshr i32 %i.fmh, %i.fk
  %i.fmj = add nuw nsw i32 %i.fmh, %i.ewx
  %i.fmk = sub nsw i32 %i.fmj, %i.fmi
  %i.fml = lshr i32 %i.fmk, %i.dgz
  %i.fmm = shl i32 %i.fml, %i.fo
  %i.fmn = trunc i32 %i.fmm to i16
  %i.fmo = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fmd
  store i16 %i.fmn, ptr %i.fmo, align 2, !tbaa !60
  %i.fmp = or disjoint i64 %indvars.iv3197, 2     ; 2 uses
  %i.fmq = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fmp
  %i.fmr = load i16, ptr %i.fmq, align 2, !tbaa !60
  %i.fms = zext i16 %i.fmr to i32
  %i.fmt = lshr i32 %i.fms, %i.fm                 ; 2 uses
  %i.fmu = lshr i32 %i.fmt, %i.fk
  %i.fmv = add nuw nsw i32 %i.fmt, %i.exa
  %i.fmw = sub nsw i32 %i.fmv, %i.fmu
  %i.fmx = lshr i32 %i.fmw, %i.dgz
  %i.fmy = shl i32 %i.fmx, %i.fo
  %i.fmz = trunc i32 %i.fmy to i16
  %i.fna = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fmp
  store i16 %i.fmz, ptr %i.fna, align 2, !tbaa !60
  %i.fnb = or disjoint i64 %indvars.iv3197, 3     ; 2 uses
  %i.fnc = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fnb
  %i.fnd = load i16, ptr %i.fnc, align 2, !tbaa !60
  %i.fne = zext i16 %i.fnd to i32
  %i.fnf = lshr i32 %i.fne, %i.fm                 ; 2 uses
  %i.fng = lshr i32 %i.fnf, %i.fk
  %i.fnh = add nuw nsw i32 %i.fnf, %i.exd
  %i.fni = sub nsw i32 %i.fnh, %i.fng
  %i.fnj = lshr i32 %i.fni, %i.dgz
  %i.fnk = shl i32 %i.fnj, %i.fo
  %i.fnl = trunc i32 %i.fnk to i16
  %i.fnm = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fnb
  store i16 %i.fnl, ptr %i.fnm, align 2, !tbaa !60
  %i.fnn = or disjoint i64 %indvars.iv3197, 4     ; 2 uses
  %i.fno = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fnn
  %i.fnp = load i16, ptr %i.fno, align 2, !tbaa !60
  %i.fnq = zext i16 %i.fnp to i32
  %i.fnr = lshr i32 %i.fnq, %i.fm                 ; 2 uses
  %i.fns = lshr i32 %i.fnr, %i.fk
  %i.fnt = add nuw nsw i32 %i.fnr, %i.exg
  %i.fnu = sub nsw i32 %i.fnt, %i.fns
  %i.fnv = lshr i32 %i.fnu, %i.dgz
  %i.fnw = shl i32 %i.fnv, %i.fo
  %i.fnx = trunc i32 %i.fnw to i16
  %i.fny = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fnn
  store i16 %i.fnx, ptr %i.fny, align 2, !tbaa !60
  %i.fnz = or disjoint i64 %indvars.iv3197, 5     ; 2 uses
  %i.foa = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fnz
  %i.fob = load i16, ptr %i.foa, align 2, !tbaa !60
  %i.foc = zext i16 %i.fob to i32
  %i.fod = lshr i32 %i.foc, %i.fm                 ; 2 uses
  %i.foe = lshr i32 %i.fod, %i.fk
  %i.fof = add nuw nsw i32 %i.fod, %i.exj
  %i.fog = sub nsw i32 %i.fof, %i.foe
  %i.foh = lshr i32 %i.fog, %i.dgz
  %i.foi = shl i32 %i.foh, %i.fo
  %i.foj = trunc i32 %i.foi to i16
  %i.fok = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fnz
  store i16 %i.foj, ptr %i.fok, align 2, !tbaa !60
  %i.fol = or disjoint i64 %indvars.iv3197, 6     ; 2 uses
  %i.fom = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fol
  %i.fon = load i16, ptr %i.fom, align 2, !tbaa !60
  %i.foo = zext i16 %i.fon to i32
  %i.fop = lshr i32 %i.foo, %i.fm                 ; 2 uses
  %i.foq = lshr i32 %i.fop, %i.fk
  %i.for = add nuw nsw i32 %i.fop, %i.exm
  %i.fos = sub nsw i32 %i.for, %i.foq
  %i.fot = lshr i32 %i.fos, %i.dgz
  %i.fou = shl i32 %i.fot, %i.fo
  %i.fov = trunc i32 %i.fou to i16
  %i.fow = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fol
  store i16 %i.fov, ptr %i.fow, align 2, !tbaa !60
  %i.fox = or disjoint i64 %indvars.iv3197, 7     ; 2 uses
  %i.foy = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %i.fox
  %i.foz = load i16, ptr %i.foy, align 2, !tbaa !60
  %i.fpa = zext i16 %i.foz to i32
  %i.fpb = lshr i32 %i.fpa, %i.fm                 ; 2 uses
  %i.fpc = lshr i32 %i.fpb, %i.fk
  %i.fpd = add nuw nsw i32 %i.fpb, %i.exp
  %i.fpe = sub nsw i32 %i.fpd, %i.fpc
  %i.fpf = lshr i32 %i.fpe, %i.dgz
  %i.fpg = shl i32 %i.fpf, %i.fo
  %i.fph = trunc i32 %i.fpg to i16
  %i.fpi = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %i.fox
  store i16 %i.fph, ptr %i.fpi, align 2, !tbaa !60
  %indvars.iv.next3198 = add nuw nsw i64 %indvars.iv3197, 8 ; 3 uses
  %i.fpj = icmp samesign ult i64 %indvars.iv.next3198, %i.ear
  br i1 %i.fpj, label %scalar.ph4085, label %.preheader2723.loopexit, !llvm.loop !366

.lr.ph2918:                                       ; preds = %.lr.ph2918.prol.loopexit, %.lr.ph2918
  %indvars.iv3200 = phi i64 [ %indvars.iv.next3201.1, %.lr.ph2918 ], [ %indvars.iv3200.unr, %.lr.ph2918.prol.loopexit ] ; 5 uses
  %i.fpk = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %indvars.iv3200
  %i.fpl = load i16, ptr %i.fpk, align 2, !tbaa !60
  %i.fpm = zext i16 %i.fpl to i32                 ; 2 uses
  %i.fpn = lshr i32 %i.fpm, %i.fk
  %i.fpo = sub nsw i32 %i.fpm, %i.fpn
  %i.fpp = and i64 %indvars.iv3200, 7
  %i.fpq = getelementptr inbounds nuw i8, ptr %i.ews, i64 %i.fpp
  %i.fpr = load i8, ptr %i.fpq, align 1, !tbaa !64
  %i.fps = zext i8 %i.fpr to i32
  %i.fpt = add nsw i32 %i.fpo, %i.fps
  %i.fpu = lshr i32 %i.fpt, %i.dgz
  %i.fpv = trunc i32 %i.fpu to i16
  %i.fpw = getelementptr inbounds nuw [2 x i8], ptr %.425002921, i64 %indvars.iv3200
  store i16 %i.fpv, ptr %i.fpw, align 2, !tbaa !60
  %indvars.iv.next3201 = add nuw nsw i64 %indvars.iv3200, 1 ; 3 uses
  %i.fpx = getelementptr inbounds nuw [2 x i8], ptr %.925192920, i64 %indvars.iv.next3201
  %i.fpy = load i16, ptr %i.fpx, align 2, !tbaa !60
  %i.fpz = zext i16 %i.fpy to i32                 ; 2 uses
  %i.fqa = lshr i32 %i.fpz, %i.fk
  %i.fqb = sub nsw i32 %i.fpz, %i.fqa
  %i.fqc = and i64 %indvars.iv.next3201, 7
  %i.fqd = getelementptr inbounds nuw i8, ptr %i.ews, i64 %i.fqc
  %i.fqe = load i8, ptr %i.fqd, align 1, !tbaa !64
  %i.fqf = zext i8 %i.fqe to i32
  %i.fqg = add nsw i32 %i.fqb, %i.fqf
end_hunk_3
begin_hunk_4_@planarCopyWrapper:bb.a
  %i.fxi = insertelement <8 x i16> %i.fxh, i16 %i.fxa, i64 6
  %i.fxj = insertelement <8 x i16> %i.fxi, i16 %i.fxb, i64 7
  %i.fxk = zext <8 x i16> %i.fxj to <8 x i32>
  %i.fxl = lshr <8 x i32> %i.fxk, %broadcast.splat4180
  %i.fxm = add nuw <8 x i32> %i.fxl, %broadcast.splat4182
  %i.fxn = lshr <8 x i32> %i.fxm, %broadcast.splat4184 ; 2 uses
  %i.fxo = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxp = getelementptr inbounds nuw i8, ptr %i.fxo, i64 8
  %i.fxq = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxr = getelementptr inbounds nuw i8, ptr %i.fxq, i64 24
  %i.fxs = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxt = getelementptr inbounds nuw i8, ptr %i.fxs, i64 40
  %i.fxu = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxv = getelementptr inbounds nuw i8, ptr %i.fxu, i64 56
  %i.fxw = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxx = getelementptr inbounds nuw i8, ptr %i.fxw, i64 72
  %i.fxy = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fxz = getelementptr inbounds nuw i8, ptr %i.fxy, i64 88
  %i.fya = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fyb = getelementptr inbounds nuw i8, ptr %i.fya, i64 104
  %i.fyc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fyd = getelementptr inbounds nuw i8, ptr %i.fyc, i64 120
  %i.fye = load i16, ptr %i.fxp, align 2, !tbaa !60, !alias.scope !489
  %i.fyf = load i16, ptr %i.fxr, align 2, !tbaa !60, !alias.scope !489
  %i.fyg = load i16, ptr %i.fxt, align 2, !tbaa !60, !alias.scope !489
  %i.fyh = load i16, ptr %i.fxv, align 2, !tbaa !60, !alias.scope !489
  %i.fyi = load i16, ptr %i.fxx, align 2, !tbaa !60, !alias.scope !489
  %i.fyj = load i16, ptr %i.fxz, align 2, !tbaa !60, !alias.scope !489
  %i.fyk = load i16, ptr %i.fyb, align 2, !tbaa !60, !alias.scope !489
  %i.fyl = load i16, ptr %i.fyd, align 2, !tbaa !60, !alias.scope !489
  %i.fym = insertelement <8 x i16> poison, i16 %i.fye, i64 0
  %i.fyn = insertelement <8 x i16> %i.fym, i16 %i.fyf, i64 1
  %i.fyo = insertelement <8 x i16> %i.fyn, i16 %i.fyg, i64 2
  %i.fyp = insertelement <8 x i16> %i.fyo, i16 %i.fyh, i64 3
  %i.fyq = insertelement <8 x i16> %i.fyp, i16 %i.fyi, i64 4
  %i.fyr = insertelement <8 x i16> %i.fyq, i16 %i.fyj, i64 5
  %i.fys = insertelement <8 x i16> %i.fyr, i16 %i.fyk, i64 6
  %i.fyt = insertelement <8 x i16> %i.fys, i16 %i.fyl, i64 7
  %i.fyu = zext <8 x i16> %i.fyt to <8 x i32>
  %i.fyv = lshr <8 x i32> %i.fyu, %broadcast.splat4180
  %i.fyw = add nuw <8 x i32> %i.fyv, %broadcast.splat4182
  %i.fyx = lshr <8 x i32> %i.fyw, %broadcast.splat4184 ; 2 uses
  %i.fyy = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fyz = getelementptr inbounds nuw i8, ptr %i.fyy, i64 10
  %i.fza = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzb = getelementptr inbounds nuw i8, ptr %i.fza, i64 26
  %i.fzc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzd = getelementptr inbounds nuw i8, ptr %i.fzc, i64 42
  %i.fze = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzf = getelementptr inbounds nuw i8, ptr %i.fze, i64 58
  %i.fzg = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzh = getelementptr inbounds nuw i8, ptr %i.fzg, i64 74
  %i.fzi = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzj = getelementptr inbounds nuw i8, ptr %i.fzi, i64 90
  %i.fzk = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzl = getelementptr inbounds nuw i8, ptr %i.fzk, i64 106
  %i.fzm = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.fzn = getelementptr inbounds nuw i8, ptr %i.fzm, i64 122
  %i.fzo = load i16, ptr %i.fyz, align 2, !tbaa !60, !alias.scope !489
  %i.fzp = load i16, ptr %i.fzb, align 2, !tbaa !60, !alias.scope !489
  %i.fzq = load i16, ptr %i.fzd, align 2, !tbaa !60, !alias.scope !489
  %i.fzr = load i16, ptr %i.fzf, align 2, !tbaa !60, !alias.scope !489
  %i.fzs = load i16, ptr %i.fzh, align 2, !tbaa !60, !alias.scope !489
  %i.fzt = load i16, ptr %i.fzj, align 2, !tbaa !60, !alias.scope !489
  %i.fzu = load i16, ptr %i.fzl, align 2, !tbaa !60, !alias.scope !489
  %i.fzv = load i16, ptr %i.fzn, align 2, !tbaa !60, !alias.scope !489
  %i.fzw = insertelement <8 x i16> poison, i16 %i.fzo, i64 0
  %i.fzx = insertelement <8 x i16> %i.fzw, i16 %i.fzp, i64 1
  %i.fzy = insertelement <8 x i16> %i.fzx, i16 %i.fzq, i64 2
  %i.fzz = insertelement <8 x i16> %i.fzy, i16 %i.fzr, i64 3
  %i.gaa = insertelement <8 x i16> %i.fzz, i16 %i.fzs, i64 4
  %i.gab = insertelement <8 x i16> %i.gaa, i16 %i.fzt, i64 5
  %i.gac = insertelement <8 x i16> %i.gab, i16 %i.fzu, i64 6
  %i.gad = insertelement <8 x i16> %i.gac, i16 %i.fzv, i64 7
  %i.gae = zext <8 x i16> %i.gad to <8 x i32>
  %i.gaf = lshr <8 x i32> %i.gae, %broadcast.splat4180
  %i.gag = add nuw <8 x i32> %i.gaf, %broadcast.splat4182
  %i.gah = lshr <8 x i32> %i.gag, %broadcast.splat4184 ; 2 uses
  %i.gai = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gaj = getelementptr inbounds nuw i8, ptr %i.gai, i64 12
  %i.gak = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gal = getelementptr inbounds nuw i8, ptr %i.gak, i64 28
  %i.gam = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gan = getelementptr inbounds nuw i8, ptr %i.gam, i64 44
  %i.gao = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gap = getelementptr inbounds nuw i8, ptr %i.gao, i64 60
  %i.gaq = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gar = getelementptr inbounds nuw i8, ptr %i.gaq, i64 76
  %i.gas = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gat = getelementptr inbounds nuw i8, ptr %i.gas, i64 92
  %i.gau = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gav = getelementptr inbounds nuw i8, ptr %i.gau, i64 108
  %i.gaw = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gax = getelementptr inbounds nuw i8, ptr %i.gaw, i64 124
  %i.gay = load i16, ptr %i.gaj, align 2, !tbaa !60, !alias.scope !489
  %i.gaz = load i16, ptr %i.gal, align 2, !tbaa !60, !alias.scope !489
  %i.gba = load i16, ptr %i.gan, align 2, !tbaa !60, !alias.scope !489
  %i.gbb = load i16, ptr %i.gap, align 2, !tbaa !60, !alias.scope !489
  %i.gbc = load i16, ptr %i.gar, align 2, !tbaa !60, !alias.scope !489
  %i.gbd = load i16, ptr %i.gat, align 2, !tbaa !60, !alias.scope !489
  %i.gbe = load i16, ptr %i.gav, align 2, !tbaa !60, !alias.scope !489
  %i.gbf = load i16, ptr %i.gax, align 2, !tbaa !60, !alias.scope !489
  %i.gbg = insertelement <8 x i16> poison, i16 %i.gay, i64 0
  %i.gbh = insertelement <8 x i16> %i.gbg, i16 %i.gaz, i64 1
  %i.gbi = insertelement <8 x i16> %i.gbh, i16 %i.gba, i64 2
  %i.gbj = insertelement <8 x i16> %i.gbi, i16 %i.gbb, i64 3
  %i.gbk = insertelement <8 x i16> %i.gbj, i16 %i.gbc, i64 4
  %i.gbl = insertelement <8 x i16> %i.gbk, i16 %i.gbd, i64 5
  %i.gbm = insertelement <8 x i16> %i.gbl, i16 %i.gbe, i64 6
  %i.gbn = insertelement <8 x i16> %i.gbm, i16 %i.gbf, i64 7
  %i.gbo = zext <8 x i16> %i.gbn to <8 x i32>
  %i.gbp = lshr <8 x i32> %i.gbo, %broadcast.splat4180
  %i.gbq = add nuw <8 x i32> %i.gbp, %broadcast.splat4182
  %i.gbr = lshr <8 x i32> %i.gbq, %broadcast.splat4184 ; 2 uses
  %i.gbs = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gbt = getelementptr inbounds nuw i8, ptr %i.gbs, i64 14
  %i.gbu = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gbv = getelementptr inbounds nuw i8, ptr %i.gbu, i64 30
  %i.gbw = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gbx = getelementptr inbounds nuw i8, ptr %i.gbw, i64 46
  %i.gby = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gbz = getelementptr inbounds nuw i8, ptr %i.gby, i64 62
  %i.gca = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gcb = getelementptr inbounds nuw i8, ptr %i.gca, i64 78
  %i.gcc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gcd = getelementptr inbounds nuw i8, ptr %i.gcc, i64 94
  %i.gce = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gcf = getelementptr inbounds nuw i8, ptr %i.gce, i64 110
  %i.gcg = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.frz
  %i.gch = getelementptr inbounds nuw i8, ptr %i.gcg, i64 126
  %i.gci = load i16, ptr %i.gbt, align 2, !tbaa !60, !alias.scope !489
  %i.gcj = load i16, ptr %i.gbv, align 2, !tbaa !60, !alias.scope !489
  %i.gck = load i16, ptr %i.gbx, align 2, !tbaa !60, !alias.scope !489
  %i.gcl = load i16, ptr %i.gbz, align 2, !tbaa !60, !alias.scope !489
  %i.gcm = load i16, ptr %i.gcb, align 2, !tbaa !60, !alias.scope !489
  %i.gcn = load i16, ptr %i.gcd, align 2, !tbaa !60, !alias.scope !489
  %i.gco = load i16, ptr %i.gcf, align 2, !tbaa !60, !alias.scope !489
  %i.gcp = load i16, ptr %i.gch, align 2, !tbaa !60, !alias.scope !489
  %i.gcq = insertelement <8 x i16> poison, i16 %i.gci, i64 0
  %i.gcr = insertelement <8 x i16> %i.gcq, i16 %i.gcj, i64 1
  %i.gcs = insertelement <8 x i16> %i.gcr, i16 %i.gck, i64 2
  %i.gct = insertelement <8 x i16> %i.gcs, i16 %i.gcl, i64 3
  %i.gcu = insertelement <8 x i16> %i.gct, i16 %i.gcm, i64 4
  %i.gcv = insertelement <8 x i16> %i.gcu, i16 %i.gcn, i64 5
  %i.gcw = insertelement <8 x i16> %i.gcv, i16 %i.gco, i64 6
  %i.gcx = insertelement <8 x i16> %i.gcw, i16 %i.gcp, i64 7
  %i.gcy = zext <8 x i16> %i.gcx to <8 x i32>
  %i.gcz = lshr <8 x i32> %i.gcy, %broadcast.splat4180
  %i.gda = add nuw <8 x i32> %i.gcz, %broadcast.splat4182
  %i.gdb = lshr <8 x i32> %i.gda, %broadcast.splat4184 ; 2 uses
  %i.gdc = shufflevector <8 x i32> %i.fti, <8 x i32> %i.fut, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdd = shufflevector <8 x i32> %i.fwd, <8 x i32> %i.fxn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gde = shufflevector <16 x i32> %i.gdc, <16 x i32> %i.gdd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gdf = shufflevector <8 x i32> %i.fti, <8 x i32> %i.fut, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdg = shufflevector <8 x i32> %i.fwd, <8 x i32> %i.fxn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdh = shufflevector <16 x i32> %i.gdf, <16 x i32> %i.gdg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gdi = lshr <32 x i32> %i.gdh, %i.fru
  %i.gdj = sub <32 x i32> %i.gde, %i.gdi
  %i.gdk = shl <32 x i32> %i.gdj, %i.frv
  %i.gdl = shufflevector <8 x i32> %i.fyx, <8 x i32> %i.gah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdm = shufflevector <8 x i32> %i.gbr, <8 x i32> %i.gdb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdn = shufflevector <16 x i32> %i.gdl, <16 x i32> %i.gdm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gdo = shufflevector <8 x i32> %i.fyx, <8 x i32> %i.gah, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdp = shufflevector <8 x i32> %i.gbr, <8 x i32> %i.gdb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gdq = shufflevector <16 x i32> %i.gdo, <16 x i32> %i.gdp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gdr = lshr <32 x i32> %i.gdq, %i.frw
  %i.gds = sub <32 x i32> %i.gdn, %i.gdr
  %i.gdt = shl <32 x i32> %i.gds, %i.frx
  %i.gdu = shufflevector <32 x i32> %i.gdk, <32 x i32> %i.gdt, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.gdv = trunc <64 x i32> %i.gdu to <64 x i16>
  %interleaved.vec4191 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.gdv)
  store <64 x i16> %interleaved.vec4191, ptr %i.ftj, align 2, !tbaa !60, !alias.scope !490, !noalias !489
  %index.next4192 = add nuw i64 %index4190, 8     ; 2 uses
  %i.gdw = icmp eq i64 %index.next4192, %n.vec4178
  br i1 %i.gdw, label %middle.block4193, label %vector.body4189, !llvm.loop !372

middle.block4193:                                 ; preds = %vector.body4189
  br i1 %cmp.n4194, label %.preheader2724.loopexit, label %.lr.ph2905.preheader5065

.lr.ph2905.preheader5065:                         ; preds = %.lr.ph2905.preheader, %middle.block4193
  %indvars.iv3188.ph = phi i64 [ %i.frt, %middle.block4193 ], [ 0, %.lr.ph2905.preheader ]
  br label %.lr.ph2905

.preheader2724.loopexit:                          ; preds = %.lr.ph2905, %middle.block4193
  %indvars.iv.next3189.lcssa = phi i64 [ %i.frt, %middle.block4193 ], [ %indvars.iv.next3189, %.lr.ph2905 ]
  %i.gdx = trunc nuw nsw i64 %indvars.iv.next3189.lcssa to i32
  br label %.preheader2724

.preheader2724:                                   ; preds = %.preheader2724.loopexit, %.preheader2725
  %.32.lcssa = phi i32 [ 0, %.preheader2725 ], [ %i.gdx, %.preheader2724.loopexit ] ; 2 uses
  %i.gdy = icmp slt i32 %.32.lcssa, %.024902630263526392642
  br i1 %i.gdy, label %.lr.ph2908.preheader, label %._crit_edge2909

.lr.ph2908.preheader:                             ; preds = %.preheader2724
  %i.gdz = zext i32 %.32.lcssa to i64             ; 5 uses
  %i.gea = sub nsw i64 %wide.trip.count3194, %i.gdz ; 3 uses
  %min.iters.check4133 = icmp ult i64 %i.gea, 8
  br i1 %min.iters.check4133, label %.lr.ph2908.preheader5064, label %vector.memcheck4134

vector.memcheck4134:                              ; preds = %.lr.ph2908.preheader
  %i.geb = mul nsw i64 %indvar4130, %i.fqy
  %.reass5226 = add i64 %i.geb, %invariant.op5225
  %diff.check4135 = icmp ult i64 %.reass5226, 15
  br i1 %diff.check4135, label %.lr.ph2908.preheader5064, label %vector.ph4136

vector.ph4136:                                    ; preds = %vector.memcheck4134
  %n.vec4137 = and i64 %i.gea, -8                 ; 3 uses
  %i.gec = add nsw i64 %n.vec4137, %i.gdz
  br label %vector.body4146

vector.body4146:                                  ; preds = %vector.body4146, %vector.ph4136
  %index4147 = phi i64 [ 0, %vector.ph4136 ], [ %index.next4149, %vector.body4146 ] ; 2 uses
  %i.ged = add nuw i64 %index4147, %i.gdz         ; 2 uses
  %i.gee = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.ged
  %wide.load4148 = load <8 x i16>, ptr %i.gee, align 2, !tbaa !60
  %i.gef = zext <8 x i16> %wide.load4148 to <8 x i32>
  %i.geg = add nuw <8 x i32> %broadcast.splat4139, %i.gef
  %i.geh = lshr <8 x i32> %i.geg, %broadcast.splat4141 ; 2 uses
  %i.gei = lshr <8 x i32> %i.geh, %broadcast.splat4143
  %i.gej = sub <8 x i32> %i.geh, %i.gei
  %i.gek = shl <8 x i32> %i.gej, %broadcast.splat4145
  %i.gel = trunc <8 x i32> %i.gek to <8 x i16>
  %i.gem = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.gel)
  %i.gen = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.ged
  store <8 x i16> %i.gem, ptr %i.gen, align 2, !tbaa !60
  %index.next4149 = add nuw i64 %index4147, 8     ; 2 uses
  %i.geo = icmp eq i64 %index.next4149, %n.vec4137
  br i1 %i.geo, label %middle.block4150, label %vector.body4146, !llvm.loop !373

middle.block4150:                                 ; preds = %vector.body4146
  %cmp.n4151 = icmp eq i64 %i.gea, %n.vec4137
  br i1 %cmp.n4151, label %._crit_edge2909, label %.lr.ph2908.preheader5064

.lr.ph2908.preheader5064:                         ; preds = %vector.memcheck4134, %.lr.ph2908.preheader, %middle.block4150
  %indvars.iv3191.ph = phi i64 [ %i.gdz, %vector.memcheck4134 ], [ %i.gdz, %.lr.ph2908.preheader ], [ %i.gec, %middle.block4150 ] ; 6 uses
  %i.gep = sub nsw i64 %wide.trip.count3194, %indvars.iv3191.ph
  %xtraiter5144 = and i64 %i.gep, 1
  %lcmp.mod5145.not = icmp eq i64 %xtraiter5144, 0
  br i1 %lcmp.mod5145.not, label %.lr.ph2908.prol.loopexit, label %.lr.ph2908.prol

.lr.ph2908.prol:                                  ; preds = %.lr.ph2908.preheader5064
  %i.geq = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %indvars.iv3191.ph
  %i.ger = load i16, ptr %i.geq, align 2, !tbaa !60
  %i.ges = zext i16 %i.ger to i32
  %i.get = add nuw i32 %i.dhb, %i.ges
  %i.geu = lshr i32 %i.get, %i.dgz                ; 2 uses
  %i.gev = lshr i32 %i.geu, %i.fk
  %i.gew = sub i32 %i.geu, %i.gev
  %i.gex = shl i32 %i.gew, %i.fo
  %i.gey = trunc i32 %i.gex to i16
  %i.gez = tail call i16 @llvm.bswap.i16(i16 %i.gey)
  %i.gfa = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %indvars.iv3191.ph
  store i16 %i.gez, ptr %i.gfa, align 2, !tbaa !60
  %indvars.iv.next3192.prol = add nuw nsw i64 %indvars.iv3191.ph, 1
  br label %.lr.ph2908.prol.loopexit

.lr.ph2908.prol.loopexit:                         ; preds = %.lr.ph2908.prol, %.lr.ph2908.preheader5064
  %indvars.iv3191.unr = phi i64 [ %indvars.iv3191.ph, %.lr.ph2908.preheader5064 ], [ %indvars.iv.next3192.prol, %.lr.ph2908.prol ]
  %i.gfb = icmp eq i64 %indvars.iv3191.ph, %i.fry
  br i1 %i.gfb, label %._crit_edge2909, label %.lr.ph2908

.lr.ph2905:                                       ; preds = %.lr.ph2905.preheader5065, %.lr.ph2905
  %indvars.iv3188 = phi i64 [ %indvars.iv.next3189, %.lr.ph2905 ], [ %indvars.iv3188.ph, %.lr.ph2905.preheader5065 ] ; 10 uses
  %i.gfc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %indvars.iv3188
  %i.gfd = load i16, ptr %i.gfc, align 2, !tbaa !60
  %i.gfe = zext i16 %i.gfd to i32
  %i.gff = lshr i32 %i.gfe, %i.fm
  %i.gfg = add nuw i32 %i.gff, %i.dhb
  %i.gfh = lshr i32 %i.gfg, %i.dgz                ; 2 uses
  %i.gfi = lshr i32 %i.gfh, %i.fk
  %i.gfj = sub i32 %i.gfh, %i.gfi
  %i.gfk = shl i32 %i.gfj, %i.fo
  %i.gfl = trunc i32 %i.gfk to i16
  %i.gfm = tail call i16 @llvm.bswap.i16(i16 %i.gfl)
  %i.gfn = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %indvars.iv3188
  store i16 %i.gfm, ptr %i.gfn, align 2, !tbaa !60
  %i.gfo = or disjoint i64 %indvars.iv3188, 1     ; 2 uses
  %i.gfp = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.gfo
  %i.gfq = load i16, ptr %i.gfp, align 2, !tbaa !60
  %i.gfr = zext i16 %i.gfq to i32
  %i.gfs = lshr i32 %i.gfr, %i.fm
  %i.gft = add nuw i32 %i.gfs, %i.dhb
  %i.gfu = lshr i32 %i.gft, %i.dgz                ; 2 uses
  %i.gfv = lshr i32 %i.gfu, %i.fk
  %i.gfw = sub i32 %i.gfu, %i.gfv
  %i.gfx = shl i32 %i.gfw, %i.fo
  %i.gfy = trunc i32 %i.gfx to i16
  %i.gfz = tail call i16 @llvm.bswap.i16(i16 %i.gfy)
  %i.gga = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.gfo
  store i16 %i.gfz, ptr %i.gga, align 2, !tbaa !60
  %i.ggb = or disjoint i64 %indvars.iv3188, 2     ; 2 uses
  %i.ggc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.ggb
  %i.ggd = load i16, ptr %i.ggc, align 2, !tbaa !60
  %i.gge = zext i16 %i.ggd to i32
  %i.ggf = lshr i32 %i.gge, %i.fm
  %i.ggg = add nuw i32 %i.ggf, %i.dhb
  %i.ggh = lshr i32 %i.ggg, %i.dgz                ; 2 uses
  %i.ggi = lshr i32 %i.ggh, %i.fk
  %i.ggj = sub i32 %i.ggh, %i.ggi
  %i.ggk = shl i32 %i.ggj, %i.fo
  %i.ggl = trunc i32 %i.ggk to i16
  %i.ggm = tail call i16 @llvm.bswap.i16(i16 %i.ggl)
  %i.ggn = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.ggb
  store i16 %i.ggm, ptr %i.ggn, align 2, !tbaa !60
  %i.ggo = or disjoint i64 %indvars.iv3188, 3     ; 2 uses
  %i.ggp = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.ggo
  %i.ggq = load i16, ptr %i.ggp, align 2, !tbaa !60
  %i.ggr = zext i16 %i.ggq to i32
  %i.ggs = lshr i32 %i.ggr, %i.fm
  %i.ggt = add nuw i32 %i.ggs, %i.dhb
  %i.ggu = lshr i32 %i.ggt, %i.dgz                ; 2 uses
  %i.ggv = lshr i32 %i.ggu, %i.fk
  %i.ggw = sub i32 %i.ggu, %i.ggv
  %i.ggx = shl i32 %i.ggw, %i.fo
  %i.ggy = trunc i32 %i.ggx to i16
  %i.ggz = tail call i16 @llvm.bswap.i16(i16 %i.ggy)
  %i.gha = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.ggo
  store i16 %i.ggz, ptr %i.gha, align 2, !tbaa !60
  %i.ghb = or disjoint i64 %indvars.iv3188, 4     ; 2 uses
  %i.ghc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.ghb
  %i.ghd = load i16, ptr %i.ghc, align 2, !tbaa !60
  %i.ghe = zext i16 %i.ghd to i32
  %i.ghf = lshr i32 %i.ghe, %i.fm
  %i.ghg = add nuw i32 %i.ghf, %i.dhb
  %i.ghh = lshr i32 %i.ghg, %i.dgz                ; 2 uses
  %i.ghi = lshr i32 %i.ghh, %i.fk
  %i.ghj = sub i32 %i.ghh, %i.ghi
  %i.ghk = shl i32 %i.ghj, %i.fo
  %i.ghl = trunc i32 %i.ghk to i16
  %i.ghm = tail call i16 @llvm.bswap.i16(i16 %i.ghl)
  %i.ghn = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.ghb
  store i16 %i.ghm, ptr %i.ghn, align 2, !tbaa !60
  %i.gho = or disjoint i64 %indvars.iv3188, 5     ; 2 uses
  %i.ghp = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.gho
  %i.ghq = load i16, ptr %i.ghp, align 2, !tbaa !60
  %i.ghr = zext i16 %i.ghq to i32
  %i.ghs = lshr i32 %i.ghr, %i.fm
  %i.ght = add nuw i32 %i.ghs, %i.dhb
  %i.ghu = lshr i32 %i.ght, %i.dgz                ; 2 uses
  %i.ghv = lshr i32 %i.ghu, %i.fk
  %i.ghw = sub i32 %i.ghu, %i.ghv
  %i.ghx = shl i32 %i.ghw, %i.fo
  %i.ghy = trunc i32 %i.ghx to i16
  %i.ghz = tail call i16 @llvm.bswap.i16(i16 %i.ghy)
  %i.gia = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.gho
  store i16 %i.ghz, ptr %i.gia, align 2, !tbaa !60
  %i.gib = or disjoint i64 %indvars.iv3188, 6     ; 2 uses
  %i.gic = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.gib
  %i.gid = load i16, ptr %i.gic, align 2, !tbaa !60
  %i.gie = zext i16 %i.gid to i32
  %i.gif = lshr i32 %i.gie, %i.fm
  %i.gig = add nuw i32 %i.gif, %i.dhb
  %i.gih = lshr i32 %i.gig, %i.dgz                ; 2 uses
  %i.gii = lshr i32 %i.gih, %i.fk
  %i.gij = sub i32 %i.gih, %i.gii
  %i.gik = shl i32 %i.gij, %i.fo
  %i.gil = trunc i32 %i.gik to i16
  %i.gim = tail call i16 @llvm.bswap.i16(i16 %i.gil)
  %i.gin = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.gib
  store i16 %i.gim, ptr %i.gin, align 2, !tbaa !60
  %i.gio = or disjoint i64 %indvars.iv3188, 7     ; 2 uses
  %i.gip = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %i.gio
  %i.giq = load i16, ptr %i.gip, align 2, !tbaa !60
  %i.gir = zext i16 %i.giq to i32
  %i.gis = lshr i32 %i.gir, %i.fm
  %i.git = add nuw i32 %i.gis, %i.dhb
  %i.giu = lshr i32 %i.git, %i.dgz                ; 2 uses
  %i.giv = lshr i32 %i.giu, %i.fk
  %i.giw = sub i32 %i.giu, %i.giv
  %i.gix = shl i32 %i.giw, %i.fo
  %i.giy = trunc i32 %i.gix to i16
  %i.giz = tail call i16 @llvm.bswap.i16(i16 %i.giy)
  %i.gja = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %i.gio
  store i16 %i.giz, ptr %i.gja, align 2, !tbaa !60
  %indvars.iv.next3189 = add nuw nsw i64 %indvars.iv3188, 8 ; 3 uses
  %i.gjb = icmp samesign ult i64 %indvars.iv.next3189, %i.fqw
  br i1 %i.gjb, label %.lr.ph2905, label %.preheader2724.loopexit, !llvm.loop !374

.lr.ph2908:                                       ; preds = %.lr.ph2908.prol.loopexit, %.lr.ph2908
  %indvars.iv3191 = phi i64 [ %indvars.iv.next3192.1, %.lr.ph2908 ], [ %indvars.iv3191.unr, %.lr.ph2908.prol.loopexit ] ; 4 uses
  %i.gjc = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %indvars.iv3191
  %i.gjd = load i16, ptr %i.gjc, align 2, !tbaa !60
  %i.gje = zext i16 %i.gjd to i32
  %i.gjf = add nuw i32 %i.dhb, %i.gje
  %i.gjg = lshr i32 %i.gjf, %i.dgz                ; 2 uses
  %i.gjh = lshr i32 %i.gjg, %i.fk
  %i.gji = sub i32 %i.gjg, %i.gjh
  %i.gjj = shl i32 %i.gji, %i.fo
  %i.gjk = trunc i32 %i.gjj to i16
  %i.gjl = tail call i16 @llvm.bswap.i16(i16 %i.gjk)
  %i.gjm = getelementptr inbounds nuw [2 x i8], ptr %.525012911, i64 %indvars.iv3191
  store i16 %i.gjl, ptr %i.gjm, align 2, !tbaa !60
  %indvars.iv.next3192 = add nuw nsw i64 %indvars.iv3191, 1 ; 2 uses
  %i.gjn = getelementptr inbounds nuw [2 x i8], ptr %.1025202910, i64 %indvars.iv.next3192
  %i.gjo = load i16, ptr %i.gjn, align 2, !tbaa !60
  %i.gjp = zext i16 %i.gjo to i32
  %i.gjq = add nuw i32 %i.dhb, %i.gjp
  %i.gjr = lshr i32 %i.gjq, %i.dgz                ; 2 uses
  %i.gjs = lshr i32 %i.gjr, %i.fk
  %i.gjt = sub i32 %i.gjr, %i.gjs
  %i.gju = shl i32 %i.gjt, %i.fo
end_hunk_4
begin_hunk_5_@planarCopyWrapper:bb.a
  %i.gtt = getelementptr inbounds nuw i8, ptr %i.gts, i64 40
  %i.gtu = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gtv = getelementptr inbounds nuw i8, ptr %i.gtu, i64 56
  %i.gtw = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gtx = getelementptr inbounds nuw i8, ptr %i.gtw, i64 72
  %i.gty = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gtz = getelementptr inbounds nuw i8, ptr %i.gty, i64 88
  %i.gua = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gub = getelementptr inbounds nuw i8, ptr %i.gua, i64 104
  %i.guc = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gud = getelementptr inbounds nuw i8, ptr %i.guc, i64 120
  %i.gue = load i16, ptr %i.gtp, align 2, !tbaa !60, !alias.scope !491
  %i.guf = load i16, ptr %i.gtr, align 2, !tbaa !60, !alias.scope !491
  %i.gug = load i16, ptr %i.gtt, align 2, !tbaa !60, !alias.scope !491
  %i.guh = load i16, ptr %i.gtv, align 2, !tbaa !60, !alias.scope !491
  %i.gui = load i16, ptr %i.gtx, align 2, !tbaa !60, !alias.scope !491
  %i.guj = load i16, ptr %i.gtz, align 2, !tbaa !60, !alias.scope !491
  %i.guk = load i16, ptr %i.gub, align 2, !tbaa !60, !alias.scope !491
  %i.gul = load i16, ptr %i.gud, align 2, !tbaa !60, !alias.scope !491
  %i.gum = insertelement <8 x i16> poison, i16 %i.gue, i64 0
  %i.gun = insertelement <8 x i16> %i.gum, i16 %i.guf, i64 1
  %i.guo = insertelement <8 x i16> %i.gun, i16 %i.gug, i64 2
  %i.gup = insertelement <8 x i16> %i.guo, i16 %i.guh, i64 3
  %i.guq = insertelement <8 x i16> %i.gup, i16 %i.gui, i64 4
  %i.gur = insertelement <8 x i16> %i.guq, i16 %i.guj, i64 5
  %i.gus = insertelement <8 x i16> %i.gur, i16 %i.guk, i64 6
  %i.gut = insertelement <8 x i16> %i.gus, i16 %i.gul, i64 7
  %i.guu = zext <8 x i16> %i.gut to <8 x i32>
  %i.guv = lshr <8 x i32> %i.guu, %broadcast.splat4266
  %i.guw = add nuw nsw <8 x i32> %i.guv, %broadcast.splat4258
  %i.gux = lshr <8 x i32> %i.guw, %broadcast.splat4268 ; 2 uses
  %i.guy = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.guz = getelementptr inbounds nuw i8, ptr %i.guy, i64 10
  %i.gva = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvb = getelementptr inbounds nuw i8, ptr %i.gva, i64 26
  %i.gvc = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvd = getelementptr inbounds nuw i8, ptr %i.gvc, i64 42
  %i.gve = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvf = getelementptr inbounds nuw i8, ptr %i.gve, i64 58
  %i.gvg = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvh = getelementptr inbounds nuw i8, ptr %i.gvg, i64 74
  %i.gvi = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvj = getelementptr inbounds nuw i8, ptr %i.gvi, i64 90
  %i.gvk = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvl = getelementptr inbounds nuw i8, ptr %i.gvk, i64 106
  %i.gvm = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gvn = getelementptr inbounds nuw i8, ptr %i.gvm, i64 122
  %i.gvo = load i16, ptr %i.guz, align 2, !tbaa !60, !alias.scope !491
  %i.gvp = load i16, ptr %i.gvb, align 2, !tbaa !60, !alias.scope !491
  %i.gvq = load i16, ptr %i.gvd, align 2, !tbaa !60, !alias.scope !491
  %i.gvr = load i16, ptr %i.gvf, align 2, !tbaa !60, !alias.scope !491
  %i.gvs = load i16, ptr %i.gvh, align 2, !tbaa !60, !alias.scope !491
  %i.gvt = load i16, ptr %i.gvj, align 2, !tbaa !60, !alias.scope !491
  %i.gvu = load i16, ptr %i.gvl, align 2, !tbaa !60, !alias.scope !491
  %i.gvv = load i16, ptr %i.gvn, align 2, !tbaa !60, !alias.scope !491
  %i.gvw = insertelement <8 x i16> poison, i16 %i.gvo, i64 0
  %i.gvx = insertelement <8 x i16> %i.gvw, i16 %i.gvp, i64 1
  %i.gvy = insertelement <8 x i16> %i.gvx, i16 %i.gvq, i64 2
  %i.gvz = insertelement <8 x i16> %i.gvy, i16 %i.gvr, i64 3
  %i.gwa = insertelement <8 x i16> %i.gvz, i16 %i.gvs, i64 4
  %i.gwb = insertelement <8 x i16> %i.gwa, i16 %i.gvt, i64 5
  %i.gwc = insertelement <8 x i16> %i.gwb, i16 %i.gvu, i64 6
  %i.gwd = insertelement <8 x i16> %i.gwc, i16 %i.gvv, i64 7
  %i.gwe = zext <8 x i16> %i.gwd to <8 x i32>
  %i.gwf = lshr <8 x i32> %i.gwe, %broadcast.splat4266
  %i.gwg = add nuw nsw <8 x i32> %i.gwf, %broadcast.splat4260
  %i.gwh = lshr <8 x i32> %i.gwg, %broadcast.splat4268 ; 2 uses
  %i.gwi = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwj = getelementptr inbounds nuw i8, ptr %i.gwi, i64 12
  %i.gwk = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwl = getelementptr inbounds nuw i8, ptr %i.gwk, i64 28
  %i.gwm = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwn = getelementptr inbounds nuw i8, ptr %i.gwm, i64 44
  %i.gwo = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwp = getelementptr inbounds nuw i8, ptr %i.gwo, i64 60
  %i.gwq = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwr = getelementptr inbounds nuw i8, ptr %i.gwq, i64 76
  %i.gws = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwt = getelementptr inbounds nuw i8, ptr %i.gws, i64 92
  %i.gwu = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwv = getelementptr inbounds nuw i8, ptr %i.gwu, i64 108
  %i.gww = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gwx = getelementptr inbounds nuw i8, ptr %i.gww, i64 124
  %i.gwy = load i16, ptr %i.gwj, align 2, !tbaa !60, !alias.scope !491
  %i.gwz = load i16, ptr %i.gwl, align 2, !tbaa !60, !alias.scope !491
  %i.gxa = load i16, ptr %i.gwn, align 2, !tbaa !60, !alias.scope !491
  %i.gxb = load i16, ptr %i.gwp, align 2, !tbaa !60, !alias.scope !491
  %i.gxc = load i16, ptr %i.gwr, align 2, !tbaa !60, !alias.scope !491
  %i.gxd = load i16, ptr %i.gwt, align 2, !tbaa !60, !alias.scope !491
  %i.gxe = load i16, ptr %i.gwv, align 2, !tbaa !60, !alias.scope !491
  %i.gxf = load i16, ptr %i.gwx, align 2, !tbaa !60, !alias.scope !491
  %i.gxg = insertelement <8 x i16> poison, i16 %i.gwy, i64 0
  %i.gxh = insertelement <8 x i16> %i.gxg, i16 %i.gwz, i64 1
  %i.gxi = insertelement <8 x i16> %i.gxh, i16 %i.gxa, i64 2
  %i.gxj = insertelement <8 x i16> %i.gxi, i16 %i.gxb, i64 3
  %i.gxk = insertelement <8 x i16> %i.gxj, i16 %i.gxc, i64 4
  %i.gxl = insertelement <8 x i16> %i.gxk, i16 %i.gxd, i64 5
  %i.gxm = insertelement <8 x i16> %i.gxl, i16 %i.gxe, i64 6
  %i.gxn = insertelement <8 x i16> %i.gxm, i16 %i.gxf, i64 7
  %i.gxo = zext <8 x i16> %i.gxn to <8 x i32>
  %i.gxp = lshr <8 x i32> %i.gxo, %broadcast.splat4266
  %i.gxq = add nuw nsw <8 x i32> %i.gxp, %broadcast.splat4262
  %i.gxr = lshr <8 x i32> %i.gxq, %broadcast.splat4268 ; 2 uses
  %i.gxs = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gxt = getelementptr inbounds nuw i8, ptr %i.gxs, i64 14
  %i.gxu = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gxv = getelementptr inbounds nuw i8, ptr %i.gxu, i64 30
  %i.gxw = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gxx = getelementptr inbounds nuw i8, ptr %i.gxw, i64 46
  %i.gxy = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gxz = getelementptr inbounds nuw i8, ptr %i.gxy, i64 62
  %i.gya = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gyb = getelementptr inbounds nuw i8, ptr %i.gya, i64 78
  %i.gyc = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gyd = getelementptr inbounds nuw i8, ptr %i.gyc, i64 94
  %i.gye = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gyf = getelementptr inbounds nuw i8, ptr %i.gye, i64 110
  %i.gyg = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.gnz
  %i.gyh = getelementptr inbounds nuw i8, ptr %i.gyg, i64 126
  %i.gyi = load i16, ptr %i.gxt, align 2, !tbaa !60, !alias.scope !491
  %i.gyj = load i16, ptr %i.gxv, align 2, !tbaa !60, !alias.scope !491
  %i.gyk = load i16, ptr %i.gxx, align 2, !tbaa !60, !alias.scope !491
  %i.gyl = load i16, ptr %i.gxz, align 2, !tbaa !60, !alias.scope !491
  %i.gym = load i16, ptr %i.gyb, align 2, !tbaa !60, !alias.scope !491
  %i.gyn = load i16, ptr %i.gyd, align 2, !tbaa !60, !alias.scope !491
  %i.gyo = load i16, ptr %i.gyf, align 2, !tbaa !60, !alias.scope !491
  %i.gyp = load i16, ptr %i.gyh, align 2, !tbaa !60, !alias.scope !491
  %i.gyq = insertelement <8 x i16> poison, i16 %i.gyi, i64 0
  %i.gyr = insertelement <8 x i16> %i.gyq, i16 %i.gyj, i64 1
  %i.gys = insertelement <8 x i16> %i.gyr, i16 %i.gyk, i64 2
  %i.gyt = insertelement <8 x i16> %i.gys, i16 %i.gyl, i64 3
  %i.gyu = insertelement <8 x i16> %i.gyt, i16 %i.gym, i64 4
  %i.gyv = insertelement <8 x i16> %i.gyu, i16 %i.gyn, i64 5
  %i.gyw = insertelement <8 x i16> %i.gyv, i16 %i.gyo, i64 6
  %i.gyx = insertelement <8 x i16> %i.gyw, i16 %i.gyp, i64 7
  %i.gyy = zext <8 x i16> %i.gyx to <8 x i32>
  %i.gyz = lshr <8 x i32> %i.gyy, %broadcast.splat4266
  %i.gza = add nuw nsw <8 x i32> %i.gyz, %broadcast.splat4264
  %i.gzb = lshr <8 x i32> %i.gza, %broadcast.splat4268 ; 2 uses
  %i.gzc = shufflevector <8 x i32> %i.gpi, <8 x i32> %i.gqt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzd = shufflevector <8 x i32> %i.gsd, <8 x i32> %i.gtn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gze = shufflevector <16 x i32> %i.gzc, <16 x i32> %i.gzd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gzf = shufflevector <8 x i32> %i.gpi, <8 x i32> %i.gqt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzg = shufflevector <8 x i32> %i.gsd, <8 x i32> %i.gtn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzh = shufflevector <16 x i32> %i.gzf, <16 x i32> %i.gzg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gzi = lshr <32 x i32> %i.gzh, %i.gmu
  %i.gzj = sub nsw <32 x i32> %i.gze, %i.gzi
  %i.gzk = shl <32 x i32> %i.gzj, %i.gmv
  %i.gzl = shufflevector <8 x i32> %i.gux, <8 x i32> %i.gwh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzm = shufflevector <8 x i32> %i.gxr, <8 x i32> %i.gzb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzn = shufflevector <16 x i32> %i.gzl, <16 x i32> %i.gzm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gzo = shufflevector <8 x i32> %i.gux, <8 x i32> %i.gwh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzp = shufflevector <8 x i32> %i.gxr, <8 x i32> %i.gzb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gzq = shufflevector <16 x i32> %i.gzo, <16 x i32> %i.gzp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gzr = lshr <32 x i32> %i.gzq, %i.gmw
  %i.gzs = sub nsw <32 x i32> %i.gzn, %i.gzr
  %i.gzt = shl <32 x i32> %i.gzs, %i.gmx
  %i.gzu = shufflevector <32 x i32> %i.gzk, <32 x i32> %i.gzt, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.gzv = trunc <64 x i32> %i.gzu to <64 x i16>
  %interleaved.vec4275 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.gzv)
  store <64 x i16> %interleaved.vec4275, ptr %i.gpj, align 2, !tbaa !60, !alias.scope !492, !noalias !491
  %index.next4276 = add nuw i64 %index4274, 8     ; 2 uses
  %i.gzw = icmp eq i64 %index.next4276, %n.vec4248
  br i1 %i.gzw, label %middle.block4277, label %vector.body4273, !llvm.loop !380

middle.block4277:                                 ; preds = %vector.body4273
  br i1 %cmp.n4278, label %.preheader2726.loopexit, label %scalar.ph4239.preheader

scalar.ph4239.preheader:                          ; preds = %.lr.ph2895, %middle.block4277
  %indvars.iv3179.ph = phi i64 [ %i.gmt, %middle.block4277 ], [ 0, %.lr.ph2895 ]
  br label %scalar.ph4239

.preheader2726.loopexit:                          ; preds = %scalar.ph4239, %middle.block4277
  %indvars.iv.next3180.lcssa = phi i64 [ %i.gmt, %middle.block4277 ], [ %indvars.iv.next3180, %scalar.ph4239 ]
  %i.gzx = trunc nuw nsw i64 %indvars.iv.next3180.lcssa to i32
  br label %.preheader2726

.preheader2726:                                   ; preds = %.preheader2726.loopexit, %bb.cc
  %.34.lcssa = phi i32 [ 0, %bb.cc ], [ %i.gzx, %.preheader2726.loopexit ] ; 3 uses
  %i.gzy = icmp slt i32 %.34.lcssa, %.024902630263526392642
  br i1 %i.gzy, label %.lr.ph2898.preheader, label %._crit_edge2899

.lr.ph2898.preheader:                             ; preds = %.preheader2726
  %i.gzz = zext i32 %.34.lcssa to i64             ; 8 uses
  %i.haa = sub nsw i64 %wide.trip.count3185, %i.gzz ; 3 uses
  %min.iters.check4204 = icmp ult i64 %i.haa, 8
  br i1 %min.iters.check4204, label %.lr.ph2898.preheader5066, label %vector.scevcheck4196

vector.scevcheck4196:                             ; preds = %.lr.ph2898.preheader
  %i.hab = xor i64 %i.gzz, -1
  %i.hac = add nsw i64 %i.hab, %wide.trip.count3185 ; 2 uses
  %i.had = trunc i32 %.34.lcssa to i3
  %i.hae = trunc i64 %i.hac to i3
  %i.haf = xor i3 %i.had, -1
  %i.hag = icmp ult i3 %i.haf, %i.hae
  %i.hah = icmp ugt i64 %i.hac, 7
  %i.hai = or i1 %i.hag, %i.hah
  br i1 %i.hai, label %.lr.ph2898.preheader5066, label %vector.memcheck4205

vector.memcheck4205:                              ; preds = %vector.scevcheck4196
  %i.haj = mul nsw i64 %indvar4201, %i.gly
  %.reass5224 = add i64 %i.haj, %invariant.op5223
  %diff.check4206 = icmp ult i64 %.reass5224, 15
  br i1 %diff.check4206, label %.lr.ph2898.preheader5066, label %vector.ph4207

vector.ph4207:                                    ; preds = %vector.memcheck4205
  %n.vec4208 = and i64 %i.haa, -8                 ; 3 uses
  %i.hak = add nsw i64 %n.vec4208, %i.gzz
  %i.hal = and i64 %i.gzz, 7
  %i.ham = getelementptr inbounds nuw i8, ptr %i.gnb, i64 %i.hal
  %wide.load4218 = load <8 x i8>, ptr %i.ham, align 1, !tbaa !64
  %i.han = zext <8 x i8> %wide.load4218 to <8 x i32>
  br label %vector.body4215

vector.body4215:                                  ; preds = %vector.body4215, %vector.ph4207
  %index4216 = phi i64 [ 0, %vector.ph4207 ], [ %index.next4219, %vector.body4215 ] ; 2 uses
  %i.hao = add nuw i64 %index4216, %i.gzz         ; 2 uses
  %i.hap = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hao
  %wide.load4217 = load <8 x i16>, ptr %i.hap, align 2, !tbaa !60
  %i.haq = zext <8 x i16> %wide.load4217 to <8 x i32>
  %i.har = add nuw nsw <8 x i32> %i.han, %i.haq
  %i.has = lshr <8 x i32> %i.har, %broadcast.splat4210 ; 2 uses
  %i.hat = lshr <8 x i32> %i.has, %broadcast.splat4212
  %i.hau = sub nsw <8 x i32> %i.has, %i.hat
  %i.hav = shl <8 x i32> %i.hau, %broadcast.splat4214
  %i.haw = trunc <8 x i32> %i.hav to <8 x i16>
  %i.hax = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.haw)
  %i.hay = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hao
  store <8 x i16> %i.hax, ptr %i.hay, align 2, !tbaa !60
  %index.next4219 = add nuw i64 %index4216, 8     ; 2 uses
  %i.haz = icmp eq i64 %index.next4219, %n.vec4208
  br i1 %i.haz, label %middle.block4220, label %vector.body4215, !llvm.loop !381

middle.block4220:                                 ; preds = %vector.body4215
  %cmp.n4221 = icmp eq i64 %i.haa, %n.vec4208
  br i1 %cmp.n4221, label %._crit_edge2899, label %.lr.ph2898.preheader5066

.lr.ph2898.preheader5066:                         ; preds = %vector.memcheck4205, %vector.scevcheck4196, %.lr.ph2898.preheader, %middle.block4220
  %indvars.iv3182.ph = phi i64 [ %i.gzz, %vector.memcheck4205 ], [ %i.gzz, %vector.scevcheck4196 ], [ %i.gzz, %.lr.ph2898.preheader ], [ %i.hak, %middle.block4220 ] ; 7 uses
  %i.hba = sub nsw i64 %wide.trip.count3185, %indvars.iv3182.ph
  %xtraiter5142 = and i64 %i.hba, 1
  %lcmp.mod5143.not = icmp eq i64 %xtraiter5142, 0
  br i1 %lcmp.mod5143.not, label %.lr.ph2898.prol.loopexit, label %.lr.ph2898.prol

.lr.ph2898.prol:                                  ; preds = %.lr.ph2898.preheader5066
  %i.hbb = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %indvars.iv3182.ph
  %i.hbc = load i16, ptr %i.hbb, align 2, !tbaa !60
  %i.hbd = zext i16 %i.hbc to i32
  %i.hbe = and i64 %indvars.iv3182.ph, 7
  %i.hbf = getelementptr inbounds nuw i8, ptr %i.gnb, i64 %i.hbe
  %i.hbg = load i8, ptr %i.hbf, align 1, !tbaa !64
  %i.hbh = zext i8 %i.hbg to i32
  %i.hbi = add nuw nsw i32 %i.hbh, %i.hbd
  %i.hbj = lshr i32 %i.hbi, %i.dgz                ; 2 uses
  %i.hbk = lshr i32 %i.hbj, %i.fk
  %i.hbl = sub nsw i32 %i.hbj, %i.hbk
  %i.hbm = shl i32 %i.hbl, %i.fo
  %i.hbn = trunc i32 %i.hbm to i16
  %i.hbo = tail call i16 @llvm.bswap.i16(i16 %i.hbn)
  %i.hbp = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %indvars.iv3182.ph
  store i16 %i.hbo, ptr %i.hbp, align 2, !tbaa !60
  %indvars.iv.next3183.prol = add nuw nsw i64 %indvars.iv3182.ph, 1
  br label %.lr.ph2898.prol.loopexit

.lr.ph2898.prol.loopexit:                         ; preds = %.lr.ph2898.prol, %.lr.ph2898.preheader5066
  %indvars.iv3182.unr = phi i64 [ %indvars.iv3182.ph, %.lr.ph2898.preheader5066 ], [ %indvars.iv.next3183.prol, %.lr.ph2898.prol ]
  %i.hbq = icmp eq i64 %indvars.iv3182.ph, %i.gmy
  br i1 %i.hbq, label %._crit_edge2899, label %.lr.ph2898

scalar.ph4239:                                    ; preds = %scalar.ph4239.preheader, %scalar.ph4239
  %indvars.iv3179 = phi i64 [ %indvars.iv.next3180, %scalar.ph4239 ], [ %indvars.iv3179.ph, %scalar.ph4239.preheader ] ; 10 uses
  %i.hbr = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %indvars.iv3179
  %i.hbs = load i16, ptr %i.hbr, align 2, !tbaa !60
  %i.hbt = zext i16 %i.hbs to i32
  %i.hbu = lshr i32 %i.hbt, %i.fm
  %i.hbv = add nuw nsw i32 %i.hbu, %i.gnd
  %i.hbw = lshr i32 %i.hbv, %i.dgz                ; 2 uses
  %i.hbx = lshr i32 %i.hbw, %i.fk
  %i.hby = sub nsw i32 %i.hbw, %i.hbx
  %i.hbz = shl i32 %i.hby, %i.fo
  %i.hca = trunc i32 %i.hbz to i16
  %i.hcb = tail call i16 @llvm.bswap.i16(i16 %i.hca)
  %i.hcc = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %indvars.iv3179
  store i16 %i.hcb, ptr %i.hcc, align 2, !tbaa !60
  %i.hcd = or disjoint i64 %indvars.iv3179, 1     ; 2 uses
  %i.hce = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hcd
  %i.hcf = load i16, ptr %i.hce, align 2, !tbaa !60
  %i.hcg = zext i16 %i.hcf to i32
  %i.hch = lshr i32 %i.hcg, %i.fm
  %i.hci = add nuw nsw i32 %i.hch, %i.gng
  %i.hcj = lshr i32 %i.hci, %i.dgz                ; 2 uses
  %i.hck = lshr i32 %i.hcj, %i.fk
  %i.hcl = sub nsw i32 %i.hcj, %i.hck
  %i.hcm = shl i32 %i.hcl, %i.fo
  %i.hcn = trunc i32 %i.hcm to i16
  %i.hco = tail call i16 @llvm.bswap.i16(i16 %i.hcn)
  %i.hcp = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hcd
  store i16 %i.hco, ptr %i.hcp, align 2, !tbaa !60
  %i.hcq = or disjoint i64 %indvars.iv3179, 2     ; 2 uses
  %i.hcr = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hcq
  %i.hcs = load i16, ptr %i.hcr, align 2, !tbaa !60
  %i.hct = zext i16 %i.hcs to i32
  %i.hcu = lshr i32 %i.hct, %i.fm
  %i.hcv = add nuw nsw i32 %i.hcu, %i.gnj
  %i.hcw = lshr i32 %i.hcv, %i.dgz                ; 2 uses
  %i.hcx = lshr i32 %i.hcw, %i.fk
  %i.hcy = sub nsw i32 %i.hcw, %i.hcx
  %i.hcz = shl i32 %i.hcy, %i.fo
  %i.hda = trunc i32 %i.hcz to i16
  %i.hdb = tail call i16 @llvm.bswap.i16(i16 %i.hda)
  %i.hdc = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hcq
  store i16 %i.hdb, ptr %i.hdc, align 2, !tbaa !60
  %i.hdd = or disjoint i64 %indvars.iv3179, 3     ; 2 uses
  %i.hde = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hdd
  %i.hdf = load i16, ptr %i.hde, align 2, !tbaa !60
  %i.hdg = zext i16 %i.hdf to i32
  %i.hdh = lshr i32 %i.hdg, %i.fm
  %i.hdi = add nuw nsw i32 %i.hdh, %i.gnm
  %i.hdj = lshr i32 %i.hdi, %i.dgz                ; 2 uses
  %i.hdk = lshr i32 %i.hdj, %i.fk
  %i.hdl = sub nsw i32 %i.hdj, %i.hdk
  %i.hdm = shl i32 %i.hdl, %i.fo
  %i.hdn = trunc i32 %i.hdm to i16
  %i.hdo = tail call i16 @llvm.bswap.i16(i16 %i.hdn)
  %i.hdp = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hdd
  store i16 %i.hdo, ptr %i.hdp, align 2, !tbaa !60
  %i.hdq = or disjoint i64 %indvars.iv3179, 4     ; 2 uses
  %i.hdr = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hdq
  %i.hds = load i16, ptr %i.hdr, align 2, !tbaa !60
  %i.hdt = zext i16 %i.hds to i32
  %i.hdu = lshr i32 %i.hdt, %i.fm
  %i.hdv = add nuw nsw i32 %i.hdu, %i.gnp
  %i.hdw = lshr i32 %i.hdv, %i.dgz                ; 2 uses
  %i.hdx = lshr i32 %i.hdw, %i.fk
  %i.hdy = sub nsw i32 %i.hdw, %i.hdx
  %i.hdz = shl i32 %i.hdy, %i.fo
  %i.hea = trunc i32 %i.hdz to i16
  %i.heb = tail call i16 @llvm.bswap.i16(i16 %i.hea)
  %i.hec = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hdq
  store i16 %i.heb, ptr %i.hec, align 2, !tbaa !60
  %i.hed = or disjoint i64 %indvars.iv3179, 5     ; 2 uses
  %i.hee = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hed
  %i.hef = load i16, ptr %i.hee, align 2, !tbaa !60
  %i.heg = zext i16 %i.hef to i32
  %i.heh = lshr i32 %i.heg, %i.fm
  %i.hei = add nuw nsw i32 %i.heh, %i.gns
  %i.hej = lshr i32 %i.hei, %i.dgz                ; 2 uses
  %i.hek = lshr i32 %i.hej, %i.fk
  %i.hel = sub nsw i32 %i.hej, %i.hek
  %i.hem = shl i32 %i.hel, %i.fo
  %i.hen = trunc i32 %i.hem to i16
  %i.heo = tail call i16 @llvm.bswap.i16(i16 %i.hen)
  %i.hep = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hed
  store i16 %i.heo, ptr %i.hep, align 2, !tbaa !60
  %i.heq = or disjoint i64 %indvars.iv3179, 6     ; 2 uses
  %i.her = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.heq
  %i.hes = load i16, ptr %i.her, align 2, !tbaa !60
  %i.het = zext i16 %i.hes to i32
  %i.heu = lshr i32 %i.het, %i.fm
  %i.hev = add nuw nsw i32 %i.heu, %i.gnv
  %i.hew = lshr i32 %i.hev, %i.dgz                ; 2 uses
  %i.hex = lshr i32 %i.hew, %i.fk
  %i.hey = sub nsw i32 %i.hew, %i.hex
  %i.hez = shl i32 %i.hey, %i.fo
  %i.hfa = trunc i32 %i.hez to i16
  %i.hfb = tail call i16 @llvm.bswap.i16(i16 %i.hfa)
  %i.hfc = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.heq
  store i16 %i.hfb, ptr %i.hfc, align 2, !tbaa !60
  %i.hfd = or disjoint i64 %indvars.iv3179, 7     ; 2 uses
  %i.hfe = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %i.hfd
  %i.hff = load i16, ptr %i.hfe, align 2, !tbaa !60
  %i.hfg = zext i16 %i.hff to i32
  %i.hfh = lshr i32 %i.hfg, %i.fm
  %i.hfi = add nuw nsw i32 %i.hfh, %i.gny
  %i.hfj = lshr i32 %i.hfi, %i.dgz                ; 2 uses
  %i.hfk = lshr i32 %i.hfj, %i.fk
  %i.hfl = sub nsw i32 %i.hfj, %i.hfk
  %i.hfm = shl i32 %i.hfl, %i.fo
  %i.hfn = trunc i32 %i.hfm to i16
  %i.hfo = tail call i16 @llvm.bswap.i16(i16 %i.hfn)
  %i.hfp = getelementptr inbounds nuw [2 x i8], ptr %.625022901, i64 %i.hfd
  store i16 %i.hfo, ptr %i.hfp, align 2, !tbaa !60
  %indvars.iv.next3180 = add nuw nsw i64 %indvars.iv3179, 8 ; 3 uses
  %i.hfq = icmp samesign ult i64 %indvars.iv.next3180, %i.glw
  br i1 %i.hfq, label %scalar.ph4239, label %.preheader2726.loopexit, !llvm.loop !382

.lr.ph2898:                                       ; preds = %.lr.ph2898.prol.loopexit, %.lr.ph2898
  %indvars.iv3182 = phi i64 [ %indvars.iv.next3183.1, %.lr.ph2898 ], [ %indvars.iv3182.unr, %.lr.ph2898.prol.loopexit ] ; 5 uses
  %i.hfr = getelementptr inbounds nuw [2 x i8], ptr %.1125212900, i64 %indvars.iv3182
  %i.hfs = load i16, ptr %i.hfr, align 2, !tbaa !60
  %i.hft = zext i16 %i.hfs to i32
  %i.hfu = and i64 %indvars.iv3182, 7
  %i.hfv = getelementptr inbounds nuw i8, ptr %i.gnb, i64 %i.hfu
  %i.hfw = load i8, ptr %i.hfv, align 1, !tbaa !64
  %i.hfx = zext i8 %i.hfw to i32
  %i.hfy = add nuw nsw i32 %i.hfx, %i.hft
  %i.hfz = lshr i32 %i.hfy, %i.dgz                ; 2 uses
  %i.hga = lshr i32 %i.hfz, %i.fk
  %i.hgb = sub nsw i32 %i.hfz, %i.hga
  %i.hgc = shl i32 %i.hgb, %i.fo
  %i.hgd = trunc i32 %i.hgc to i16
end_hunk_5
begin_hunk_6_@planarCopyWrapper:bb.a
  %i.hoh = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hoi = getelementptr inbounds nuw i8, ptr %i.hoh, i64 72
  %i.hoj = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hok = getelementptr inbounds nuw i8, ptr %i.hoj, i64 88
  %i.hol = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hom = getelementptr inbounds nuw i8, ptr %i.hol, i64 104
  %i.hon = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hoo = getelementptr inbounds nuw i8, ptr %i.hon, i64 120
  %i.hop = load i16, ptr %i.hoa, align 2, !tbaa !60, !alias.scope !493
  %i.hoq = load i16, ptr %i.hoc, align 2, !tbaa !60, !alias.scope !493
  %i.hor = load i16, ptr %i.hoe, align 2, !tbaa !60, !alias.scope !493
  %i.hos = load i16, ptr %i.hog, align 2, !tbaa !60, !alias.scope !493
  %i.hot = load i16, ptr %i.hoi, align 2, !tbaa !60, !alias.scope !493
  %i.hou = load i16, ptr %i.hok, align 2, !tbaa !60, !alias.scope !493
  %i.hov = load i16, ptr %i.hom, align 2, !tbaa !60, !alias.scope !493
  %i.how = load i16, ptr %i.hoo, align 2, !tbaa !60, !alias.scope !493
  %i.hox = insertelement <8 x i16> poison, i16 %i.hop, i64 0
  %i.hoy = insertelement <8 x i16> %i.hox, i16 %i.hoq, i64 1
  %i.hoz = insertelement <8 x i16> %i.hoy, i16 %i.hor, i64 2
  %i.hpa = insertelement <8 x i16> %i.hoz, i16 %i.hos, i64 3
  %i.hpb = insertelement <8 x i16> %i.hpa, i16 %i.hot, i64 4
  %i.hpc = insertelement <8 x i16> %i.hpb, i16 %i.hou, i64 5
  %i.hpd = insertelement <8 x i16> %i.hpc, i16 %i.hov, i64 6
  %i.hpe = insertelement <8 x i16> %i.hpd, i16 %i.how, i64 7
  %i.hpf = zext <8 x i16> %i.hpe to <8 x i32>
  %i.hpg = lshr <8 x i32> %i.hpf, %broadcast.splat4348 ; 2 uses
  %i.hph = lshr <8 x i32> %i.hpg, %broadcast.splat4350
  %i.hpi = add nuw nsw <8 x i32> %i.hpg, %broadcast.splat4340
  %i.hpj = sub nsw <8 x i32> %i.hpi, %i.hph
  %i.hpk = lshr <8 x i32> %i.hpj, %broadcast.splat4352
  %i.hpl = shl <8 x i32> %i.hpk, %broadcast.splat4354
  %i.hpm = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpn = getelementptr inbounds nuw i8, ptr %i.hpm, i64 10
  %i.hpo = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpp = getelementptr inbounds nuw i8, ptr %i.hpo, i64 26
  %i.hpq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpr = getelementptr inbounds nuw i8, ptr %i.hpq, i64 42
  %i.hps = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpt = getelementptr inbounds nuw i8, ptr %i.hps, i64 58
  %i.hpu = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpv = getelementptr inbounds nuw i8, ptr %i.hpu, i64 74
  %i.hpw = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpx = getelementptr inbounds nuw i8, ptr %i.hpw, i64 90
  %i.hpy = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hpz = getelementptr inbounds nuw i8, ptr %i.hpy, i64 106
  %i.hqa = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hqb = getelementptr inbounds nuw i8, ptr %i.hqa, i64 122
  %i.hqc = load i16, ptr %i.hpn, align 2, !tbaa !60, !alias.scope !493
  %i.hqd = load i16, ptr %i.hpp, align 2, !tbaa !60, !alias.scope !493
  %i.hqe = load i16, ptr %i.hpr, align 2, !tbaa !60, !alias.scope !493
  %i.hqf = load i16, ptr %i.hpt, align 2, !tbaa !60, !alias.scope !493
  %i.hqg = load i16, ptr %i.hpv, align 2, !tbaa !60, !alias.scope !493
  %i.hqh = load i16, ptr %i.hpx, align 2, !tbaa !60, !alias.scope !493
  %i.hqi = load i16, ptr %i.hpz, align 2, !tbaa !60, !alias.scope !493
  %i.hqj = load i16, ptr %i.hqb, align 2, !tbaa !60, !alias.scope !493
  %i.hqk = insertelement <8 x i16> poison, i16 %i.hqc, i64 0
  %i.hql = insertelement <8 x i16> %i.hqk, i16 %i.hqd, i64 1
  %i.hqm = insertelement <8 x i16> %i.hql, i16 %i.hqe, i64 2
  %i.hqn = insertelement <8 x i16> %i.hqm, i16 %i.hqf, i64 3
  %i.hqo = insertelement <8 x i16> %i.hqn, i16 %i.hqg, i64 4
  %i.hqp = insertelement <8 x i16> %i.hqo, i16 %i.hqh, i64 5
  %i.hqq = insertelement <8 x i16> %i.hqp, i16 %i.hqi, i64 6
  %i.hqr = insertelement <8 x i16> %i.hqq, i16 %i.hqj, i64 7
  %i.hqs = zext <8 x i16> %i.hqr to <8 x i32>
  %i.hqt = lshr <8 x i32> %i.hqs, %broadcast.splat4348 ; 2 uses
  %i.hqu = lshr <8 x i32> %i.hqt, %broadcast.splat4350
  %i.hqv = add nuw nsw <8 x i32> %i.hqt, %broadcast.splat4342
  %i.hqw = sub nsw <8 x i32> %i.hqv, %i.hqu
  %i.hqx = lshr <8 x i32> %i.hqw, %broadcast.splat4352
  %i.hqy = shl <8 x i32> %i.hqx, %broadcast.splat4354
  %i.hqz = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hra = getelementptr inbounds nuw i8, ptr %i.hqz, i64 12
  %i.hrb = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hrc = getelementptr inbounds nuw i8, ptr %i.hrb, i64 28
  %i.hrd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hre = getelementptr inbounds nuw i8, ptr %i.hrd, i64 44
  %i.hrf = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hrg = getelementptr inbounds nuw i8, ptr %i.hrf, i64 60
  %i.hrh = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hri = getelementptr inbounds nuw i8, ptr %i.hrh, i64 76
  %i.hrj = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hrk = getelementptr inbounds nuw i8, ptr %i.hrj, i64 92
  %i.hrl = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hrm = getelementptr inbounds nuw i8, ptr %i.hrl, i64 108
  %i.hrn = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hro = getelementptr inbounds nuw i8, ptr %i.hrn, i64 124
  %i.hrp = load i16, ptr %i.hra, align 2, !tbaa !60, !alias.scope !493
  %i.hrq = load i16, ptr %i.hrc, align 2, !tbaa !60, !alias.scope !493
  %i.hrr = load i16, ptr %i.hre, align 2, !tbaa !60, !alias.scope !493
  %i.hrs = load i16, ptr %i.hrg, align 2, !tbaa !60, !alias.scope !493
  %i.hrt = load i16, ptr %i.hri, align 2, !tbaa !60, !alias.scope !493
  %i.hru = load i16, ptr %i.hrk, align 2, !tbaa !60, !alias.scope !493
  %i.hrv = load i16, ptr %i.hrm, align 2, !tbaa !60, !alias.scope !493
  %i.hrw = load i16, ptr %i.hro, align 2, !tbaa !60, !alias.scope !493
  %i.hrx = insertelement <8 x i16> poison, i16 %i.hrp, i64 0
  %i.hry = insertelement <8 x i16> %i.hrx, i16 %i.hrq, i64 1
  %i.hrz = insertelement <8 x i16> %i.hry, i16 %i.hrr, i64 2
  %i.hsa = insertelement <8 x i16> %i.hrz, i16 %i.hrs, i64 3
  %i.hsb = insertelement <8 x i16> %i.hsa, i16 %i.hrt, i64 4
  %i.hsc = insertelement <8 x i16> %i.hsb, i16 %i.hru, i64 5
  %i.hsd = insertelement <8 x i16> %i.hsc, i16 %i.hrv, i64 6
  %i.hse = insertelement <8 x i16> %i.hsd, i16 %i.hrw, i64 7
  %i.hsf = zext <8 x i16> %i.hse to <8 x i32>
  %i.hsg = lshr <8 x i32> %i.hsf, %broadcast.splat4348 ; 2 uses
  %i.hsh = lshr <8 x i32> %i.hsg, %broadcast.splat4350
  %i.hsi = add nuw nsw <8 x i32> %i.hsg, %broadcast.splat4344
  %i.hsj = sub nsw <8 x i32> %i.hsi, %i.hsh
  %i.hsk = lshr <8 x i32> %i.hsj, %broadcast.splat4352
  %i.hsl = shl <8 x i32> %i.hsk, %broadcast.splat4354
  %i.hsm = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsn = getelementptr inbounds nuw i8, ptr %i.hsm, i64 14
  %i.hso = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsp = getelementptr inbounds nuw i8, ptr %i.hso, i64 30
  %i.hsq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsr = getelementptr inbounds nuw i8, ptr %i.hsq, i64 46
  %i.hss = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hst = getelementptr inbounds nuw i8, ptr %i.hss, i64 62
  %i.hsu = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsv = getelementptr inbounds nuw i8, ptr %i.hsu, i64 78
  %i.hsw = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsx = getelementptr inbounds nuw i8, ptr %i.hsw, i64 94
  %i.hsy = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.hsz = getelementptr inbounds nuw i8, ptr %i.hsy, i64 110
  %i.hta = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hhy
  %i.htb = getelementptr inbounds nuw i8, ptr %i.hta, i64 126
  %i.htc = load i16, ptr %i.hsn, align 2, !tbaa !60, !alias.scope !493
  %i.htd = load i16, ptr %i.hsp, align 2, !tbaa !60, !alias.scope !493
  %i.hte = load i16, ptr %i.hsr, align 2, !tbaa !60, !alias.scope !493
  %i.htf = load i16, ptr %i.hst, align 2, !tbaa !60, !alias.scope !493
  %i.htg = load i16, ptr %i.hsv, align 2, !tbaa !60, !alias.scope !493
  %i.hth = load i16, ptr %i.hsx, align 2, !tbaa !60, !alias.scope !493
  %i.hti = load i16, ptr %i.hsz, align 2, !tbaa !60, !alias.scope !493
  %i.htj = load i16, ptr %i.htb, align 2, !tbaa !60, !alias.scope !493
  %i.htk = insertelement <8 x i16> poison, i16 %i.htc, i64 0
  %i.htl = insertelement <8 x i16> %i.htk, i16 %i.htd, i64 1
  %i.htm = insertelement <8 x i16> %i.htl, i16 %i.hte, i64 2
  %i.htn = insertelement <8 x i16> %i.htm, i16 %i.htf, i64 3
  %i.hto = insertelement <8 x i16> %i.htn, i16 %i.htg, i64 4
  %i.htp = insertelement <8 x i16> %i.hto, i16 %i.hth, i64 5
  %i.htq = insertelement <8 x i16> %i.htp, i16 %i.hti, i64 6
  %i.htr = insertelement <8 x i16> %i.htq, i16 %i.htj, i64 7
  %i.hts = zext <8 x i16> %i.htr to <8 x i32>
  %i.htt = lshr <8 x i32> %i.hts, %broadcast.splat4348 ; 2 uses
  %i.htu = lshr <8 x i32> %i.htt, %broadcast.splat4350
  %i.htv = add nuw nsw <8 x i32> %i.htt, %broadcast.splat4346
  %i.htw = sub nsw <8 x i32> %i.htv, %i.htu
  %i.htx = lshr <8 x i32> %i.htw, %broadcast.splat4352
  %i.hty = shl <8 x i32> %i.htx, %broadcast.splat4354
  %i.htz = shufflevector <8 x i32> %i.hjk, <8 x i32> %i.hky, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hua = trunc <16 x i32> %i.htz to <16 x i16>
  %i.hub = shufflevector <8 x i32> %i.hml, <8 x i32> %i.hny, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.huc = trunc <16 x i32> %i.hub to <16 x i16>
  %i.hud = shufflevector <8 x i32> %i.hpl, <8 x i32> %i.hqy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hue = trunc <16 x i32> %i.hud to <16 x i16>
  %i.huf = shufflevector <8 x i32> %i.hsl, <8 x i32> %i.hty, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hug = trunc <16 x i32> %i.huf to <16 x i16>
  %i.huh = shufflevector <16 x i16> %i.hua, <16 x i16> %i.huc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hui = shufflevector <16 x i16> %i.hue, <16 x i16> %i.hug, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.huj = shufflevector <32 x i16> %i.huh, <32 x i16> %i.hui, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec4357 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.huj)
  store <64 x i16> %interleaved.vec4357, ptr %i.hjl, align 2, !tbaa !60, !alias.scope !494, !noalias !493
  %index.next4358 = add nuw i64 %index4356, 8     ; 2 uses
  %i.huk = icmp eq i64 %index.next4358, %n.vec4330
  br i1 %i.huk, label %middle.block4359, label %vector.body4355, !llvm.loop !388

middle.block4359:                                 ; preds = %vector.body4355
  br i1 %cmp.n4360, label %.preheader2727.loopexit, label %scalar.ph4321.preheader

scalar.ph4321.preheader:                          ; preds = %.lr.ph2884, %middle.block4359
  %indvars.iv3170.ph = phi i64 [ %i.glj, %middle.block4359 ], [ 0, %.lr.ph2884 ]
  br label %scalar.ph4321

.preheader2727.loopexit:                          ; preds = %scalar.ph4321, %middle.block4359
  %indvars.iv.next3171.lcssa = phi i64 [ %i.glj, %middle.block4359 ], [ %indvars.iv.next3171, %scalar.ph4321 ]
  %i.hul = trunc nuw nsw i64 %indvars.iv.next3171.lcssa to i32
  br label %.preheader2727

.preheader2727:                                   ; preds = %.preheader2727.loopexit, %bb.cd
  %.36.lcssa = phi i32 [ 0, %bb.cd ], [ %i.hul, %.preheader2727.loopexit ] ; 3 uses
  %i.hum = icmp slt i32 %.36.lcssa, %.024902630263526392642
  br i1 %i.hum, label %.lr.ph2887.preheader, label %._crit_edge2888

.lr.ph2887.preheader:                             ; preds = %.preheader2727
  %i.hun = zext i32 %.36.lcssa to i64             ; 8 uses
  %i.huo = sub nsw i64 %wide.trip.count3176, %i.hun ; 3 uses
  %min.iters.check4288 = icmp ult i64 %i.huo, 8
  br i1 %min.iters.check4288, label %.lr.ph2887.preheader5067, label %vector.scevcheck4280

vector.scevcheck4280:                             ; preds = %.lr.ph2887.preheader
  %i.hup = xor i64 %i.hun, -1
  %i.huq = add nsw i64 %i.hup, %wide.trip.count3176 ; 2 uses
  %i.hur = trunc i32 %.36.lcssa to i3
  %i.hus = trunc i64 %i.huq to i3
  %i.hut = xor i3 %i.hur, -1
  %i.huu = icmp ult i3 %i.hut, %i.hus
  %i.huv = icmp ugt i64 %i.huq, 7
  %i.huw = or i1 %i.huu, %i.huv
  br i1 %i.huw, label %.lr.ph2887.preheader5067, label %vector.memcheck4289

vector.memcheck4289:                              ; preds = %vector.scevcheck4280
  %i.hux = mul nsw i64 %indvar4285, %i.gko
  %.reass5222 = add i64 %i.hux, %invariant.op5221
  %diff.check4290 = icmp ult i64 %.reass5222, 15
  br i1 %diff.check4290, label %.lr.ph2887.preheader5067, label %vector.ph4291

vector.ph4291:                                    ; preds = %vector.memcheck4289
  %n.vec4292 = and i64 %i.huo, -8                 ; 3 uses
  %i.huy = add nsw i64 %n.vec4292, %i.hun
  %i.huz = and i64 %i.hun, 7
  %i.hva = getelementptr inbounds nuw i8, ptr %i.hha, i64 %i.huz
  %wide.load4300 = load <8 x i8>, ptr %i.hva, align 1, !tbaa !64
  %i.hvb = zext <8 x i8> %wide.load4300 to <8 x i32>
  br label %vector.body4297

vector.body4297:                                  ; preds = %vector.body4297, %vector.ph4291
  %index4298 = phi i64 [ 0, %vector.ph4291 ], [ %index.next4301, %vector.body4297 ] ; 2 uses
  %i.hvc = add nuw i64 %index4298, %i.hun         ; 2 uses
  %i.hvd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hvc
  %wide.load4299 = load <8 x i16>, ptr %i.hvd, align 2, !tbaa !60
  %i.hve = zext <8 x i16> %wide.load4299 to <8 x i32> ; 2 uses
  %i.hvf = lshr <8 x i32> %i.hve, %broadcast.splat4294
  %i.hvg = sub nsw <8 x i32> %i.hve, %i.hvf
  %i.hvh = add nsw <8 x i32> %i.hvg, %i.hvb
  %i.hvi = lshr <8 x i32> %i.hvh, %broadcast.splat4296
  %i.hvj = trunc <8 x i32> %i.hvi to <8 x i16>
  %i.hvk = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.hvj)
  %i.hvl = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hvc
  store <8 x i16> %i.hvk, ptr %i.hvl, align 2, !tbaa !60
  %index.next4301 = add nuw i64 %index4298, 8     ; 2 uses
  %i.hvm = icmp eq i64 %index.next4301, %n.vec4292
  br i1 %i.hvm, label %middle.block4302, label %vector.body4297, !llvm.loop !389

middle.block4302:                                 ; preds = %vector.body4297
  %cmp.n4303 = icmp eq i64 %i.huo, %n.vec4292
  br i1 %cmp.n4303, label %._crit_edge2888, label %.lr.ph2887.preheader5067

.lr.ph2887.preheader5067:                         ; preds = %vector.memcheck4289, %vector.scevcheck4280, %.lr.ph2887.preheader, %middle.block4302
  %indvars.iv3173.ph = phi i64 [ %i.hun, %vector.memcheck4289 ], [ %i.hun, %vector.scevcheck4280 ], [ %i.hun, %.lr.ph2887.preheader ], [ %i.huy, %middle.block4302 ] ; 7 uses
  %i.hvn = sub nsw i64 %wide.trip.count3176, %indvars.iv3173.ph
  %xtraiter5140 = and i64 %i.hvn, 1
  %lcmp.mod5141.not = icmp eq i64 %xtraiter5140, 0
  br i1 %lcmp.mod5141.not, label %.lr.ph2887.prol.loopexit, label %.lr.ph2887.prol

.lr.ph2887.prol:                                  ; preds = %.lr.ph2887.preheader5067
  %i.hvo = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %indvars.iv3173.ph
  %i.hvp = load i16, ptr %i.hvo, align 2, !tbaa !60
  %i.hvq = zext i16 %i.hvp to i32                 ; 2 uses
  %i.hvr = lshr i32 %i.hvq, %i.fk
  %i.hvs = sub nsw i32 %i.hvq, %i.hvr
  %i.hvt = and i64 %indvars.iv3173.ph, 7
  %i.hvu = getelementptr inbounds nuw i8, ptr %i.hha, i64 %i.hvt
  %i.hvv = load i8, ptr %i.hvu, align 1, !tbaa !64
  %i.hvw = zext i8 %i.hvv to i32
  %i.hvx = add nsw i32 %i.hvs, %i.hvw
  %i.hvy = lshr i32 %i.hvx, %i.dgz
  %i.hvz = trunc i32 %i.hvy to i16
  %i.hwa = tail call i16 @llvm.bswap.i16(i16 %i.hvz)
  %i.hwb = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %indvars.iv3173.ph
  store i16 %i.hwa, ptr %i.hwb, align 2, !tbaa !60
  %indvars.iv.next3174.prol = add nuw nsw i64 %indvars.iv3173.ph, 1
  br label %.lr.ph2887.prol.loopexit

.lr.ph2887.prol.loopexit:                         ; preds = %.lr.ph2887.prol, %.lr.ph2887.preheader5067
  %indvars.iv3173.unr = phi i64 [ %indvars.iv3173.ph, %.lr.ph2887.preheader5067 ], [ %indvars.iv.next3174.prol, %.lr.ph2887.prol ]
  %i.hwc = icmp eq i64 %indvars.iv3173.ph, %i.glk
  br i1 %i.hwc, label %._crit_edge2888, label %.lr.ph2887

scalar.ph4321:                                    ; preds = %scalar.ph4321.preheader, %scalar.ph4321
  %indvars.iv3170 = phi i64 [ %indvars.iv.next3171, %scalar.ph4321 ], [ %indvars.iv3170.ph, %scalar.ph4321.preheader ] ; 10 uses
  %i.hwd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %indvars.iv3170
  %i.hwe = load i16, ptr %i.hwd, align 2, !tbaa !60
  %i.hwf = zext i16 %i.hwe to i32
  %i.hwg = lshr i32 %i.hwf, %i.fm                 ; 2 uses
  %i.hwh = lshr i32 %i.hwg, %i.fk
  %i.hwi = add nuw nsw i32 %i.hwg, %i.hhc
  %i.hwj = sub nsw i32 %i.hwi, %i.hwh
  %i.hwk = lshr i32 %i.hwj, %i.dgz
  %i.hwl = shl i32 %i.hwk, %i.fo
  %i.hwm = trunc i32 %i.hwl to i16
  %i.hwn = tail call i16 @llvm.bswap.i16(i16 %i.hwm)
  %i.hwo = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %indvars.iv3170
  store i16 %i.hwn, ptr %i.hwo, align 2, !tbaa !60
  %i.hwp = or disjoint i64 %indvars.iv3170, 1     ; 2 uses
  %i.hwq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hwp
  %i.hwr = load i16, ptr %i.hwq, align 2, !tbaa !60
  %i.hws = zext i16 %i.hwr to i32
  %i.hwt = lshr i32 %i.hws, %i.fm                 ; 2 uses
  %i.hwu = lshr i32 %i.hwt, %i.fk
  %i.hwv = add nuw nsw i32 %i.hwt, %i.hhf
  %i.hww = sub nsw i32 %i.hwv, %i.hwu
  %i.hwx = lshr i32 %i.hww, %i.dgz
  %i.hwy = shl i32 %i.hwx, %i.fo
  %i.hwz = trunc i32 %i.hwy to i16
  %i.hxa = tail call i16 @llvm.bswap.i16(i16 %i.hwz)
  %i.hxb = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hwp
  store i16 %i.hxa, ptr %i.hxb, align 2, !tbaa !60
  %i.hxc = or disjoint i64 %indvars.iv3170, 2     ; 2 uses
  %i.hxd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hxc
  %i.hxe = load i16, ptr %i.hxd, align 2, !tbaa !60
  %i.hxf = zext i16 %i.hxe to i32
  %i.hxg = lshr i32 %i.hxf, %i.fm                 ; 2 uses
  %i.hxh = lshr i32 %i.hxg, %i.fk
  %i.hxi = add nuw nsw i32 %i.hxg, %i.hhi
  %i.hxj = sub nsw i32 %i.hxi, %i.hxh
  %i.hxk = lshr i32 %i.hxj, %i.dgz
  %i.hxl = shl i32 %i.hxk, %i.fo
  %i.hxm = trunc i32 %i.hxl to i16
  %i.hxn = tail call i16 @llvm.bswap.i16(i16 %i.hxm)
  %i.hxo = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hxc
  store i16 %i.hxn, ptr %i.hxo, align 2, !tbaa !60
  %i.hxp = or disjoint i64 %indvars.iv3170, 3     ; 2 uses
  %i.hxq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hxp
  %i.hxr = load i16, ptr %i.hxq, align 2, !tbaa !60
  %i.hxs = zext i16 %i.hxr to i32
  %i.hxt = lshr i32 %i.hxs, %i.fm                 ; 2 uses
  %i.hxu = lshr i32 %i.hxt, %i.fk
  %i.hxv = add nuw nsw i32 %i.hxt, %i.hhl
  %i.hxw = sub nsw i32 %i.hxv, %i.hxu
  %i.hxx = lshr i32 %i.hxw, %i.dgz
  %i.hxy = shl i32 %i.hxx, %i.fo
  %i.hxz = trunc i32 %i.hxy to i16
  %i.hya = tail call i16 @llvm.bswap.i16(i16 %i.hxz)
  %i.hyb = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hxp
  store i16 %i.hya, ptr %i.hyb, align 2, !tbaa !60
  %i.hyc = or disjoint i64 %indvars.iv3170, 4     ; 2 uses
  %i.hyd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hyc
  %i.hye = load i16, ptr %i.hyd, align 2, !tbaa !60
  %i.hyf = zext i16 %i.hye to i32
  %i.hyg = lshr i32 %i.hyf, %i.fm                 ; 2 uses
  %i.hyh = lshr i32 %i.hyg, %i.fk
  %i.hyi = add nuw nsw i32 %i.hyg, %i.hho
  %i.hyj = sub nsw i32 %i.hyi, %i.hyh
  %i.hyk = lshr i32 %i.hyj, %i.dgz
  %i.hyl = shl i32 %i.hyk, %i.fo
  %i.hym = trunc i32 %i.hyl to i16
  %i.hyn = tail call i16 @llvm.bswap.i16(i16 %i.hym)
  %i.hyo = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hyc
  store i16 %i.hyn, ptr %i.hyo, align 2, !tbaa !60
  %i.hyp = or disjoint i64 %indvars.iv3170, 5     ; 2 uses
  %i.hyq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hyp
  %i.hyr = load i16, ptr %i.hyq, align 2, !tbaa !60
  %i.hys = zext i16 %i.hyr to i32
  %i.hyt = lshr i32 %i.hys, %i.fm                 ; 2 uses
  %i.hyu = lshr i32 %i.hyt, %i.fk
  %i.hyv = add nuw nsw i32 %i.hyt, %i.hhr
  %i.hyw = sub nsw i32 %i.hyv, %i.hyu
  %i.hyx = lshr i32 %i.hyw, %i.dgz
  %i.hyy = shl i32 %i.hyx, %i.fo
  %i.hyz = trunc i32 %i.hyy to i16
  %i.hza = tail call i16 @llvm.bswap.i16(i16 %i.hyz)
  %i.hzb = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hyp
  store i16 %i.hza, ptr %i.hzb, align 2, !tbaa !60
  %i.hzc = or disjoint i64 %indvars.iv3170, 6     ; 2 uses
  %i.hzd = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hzc
  %i.hze = load i16, ptr %i.hzd, align 2, !tbaa !60
  %i.hzf = zext i16 %i.hze to i32
  %i.hzg = lshr i32 %i.hzf, %i.fm                 ; 2 uses
  %i.hzh = lshr i32 %i.hzg, %i.fk
  %i.hzi = add nuw nsw i32 %i.hzg, %i.hhu
  %i.hzj = sub nsw i32 %i.hzi, %i.hzh
  %i.hzk = lshr i32 %i.hzj, %i.dgz
  %i.hzl = shl i32 %i.hzk, %i.fo
  %i.hzm = trunc i32 %i.hzl to i16
  %i.hzn = tail call i16 @llvm.bswap.i16(i16 %i.hzm)
  %i.hzo = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hzc
  store i16 %i.hzn, ptr %i.hzo, align 2, !tbaa !60
  %i.hzp = or disjoint i64 %indvars.iv3170, 7     ; 2 uses
  %i.hzq = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %i.hzp
  %i.hzr = load i16, ptr %i.hzq, align 2, !tbaa !60
  %i.hzs = zext i16 %i.hzr to i32
  %i.hzt = lshr i32 %i.hzs, %i.fm                 ; 2 uses
  %i.hzu = lshr i32 %i.hzt, %i.fk
  %i.hzv = add nuw nsw i32 %i.hzt, %i.hhx
  %i.hzw = sub nsw i32 %i.hzv, %i.hzu
  %i.hzx = lshr i32 %i.hzw, %i.dgz
  %i.hzy = shl i32 %i.hzx, %i.fo
  %i.hzz = trunc i32 %i.hzy to i16
  %i.iaa = tail call i16 @llvm.bswap.i16(i16 %i.hzz)
  %i.iab = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %i.hzp
  store i16 %i.iaa, ptr %i.iab, align 2, !tbaa !60
  %indvars.iv.next3171 = add nuw nsw i64 %indvars.iv3170, 8 ; 3 uses
  %i.iac = icmp samesign ult i64 %indvars.iv.next3171, %i.gkm
  br i1 %i.iac, label %scalar.ph4321, label %.preheader2727.loopexit, !llvm.loop !390

.lr.ph2887:                                       ; preds = %.lr.ph2887.prol.loopexit, %.lr.ph2887
  %indvars.iv3173 = phi i64 [ %indvars.iv.next3174.1, %.lr.ph2887 ], [ %indvars.iv3173.unr, %.lr.ph2887.prol.loopexit ] ; 5 uses
  %i.iad = getelementptr inbounds nuw [2 x i8], ptr %.1225222889, i64 %indvars.iv3173
  %i.iae = load i16, ptr %i.iad, align 2, !tbaa !60
  %i.iaf = zext i16 %i.iae to i32                 ; 2 uses
  %i.iag = lshr i32 %i.iaf, %i.fk
  %i.iah = sub nsw i32 %i.iaf, %i.iag
  %i.iai = and i64 %indvars.iv3173, 7
  %i.iaj = getelementptr inbounds nuw i8, ptr %i.hha, i64 %i.iai
  %i.iak = load i8, ptr %i.iaj, align 1, !tbaa !64
  %i.ial = zext i8 %i.iak to i32
  %i.iam = add nsw i32 %i.iah, %i.ial
  %i.ian = lshr i32 %i.iam, %i.dgz
  %i.iao = trunc i32 %i.ian to i16
  %i.iap = tail call i16 @llvm.bswap.i16(i16 %i.iao)
  %i.iaq = getelementptr inbounds nuw [2 x i8], ptr %.725032890, i64 %indvars.iv3173
  store i16 %i.iap, ptr %i.iaq, align 2, !tbaa !60
end_hunk_6
begin_hunk_7_@planarCopyWrapper:bb.a
  %i.iiu = lshr <8 x i32> %i.iit, %broadcast.splat4416
  %i.iiv = add nuw <8 x i32> %i.iiu, %broadcast.splat4418
  %i.iiw = lshr <8 x i32> %i.iiv, %broadcast.splat4420 ; 2 uses
  %i.iix = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.iiy = getelementptr inbounds nuw i8, ptr %i.iix, i64 8
  %i.iiz = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ija = getelementptr inbounds nuw i8, ptr %i.iiz, i64 24
  %i.ijb = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ijc = getelementptr inbounds nuw i8, ptr %i.ijb, i64 40
  %i.ijd = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ije = getelementptr inbounds nuw i8, ptr %i.ijd, i64 56
  %i.ijf = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ijg = getelementptr inbounds nuw i8, ptr %i.ijf, i64 72
  %i.ijh = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.iji = getelementptr inbounds nuw i8, ptr %i.ijh, i64 88
  %i.ijj = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ijk = getelementptr inbounds nuw i8, ptr %i.ijj, i64 104
  %i.ijl = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ijm = getelementptr inbounds nuw i8, ptr %i.ijl, i64 120
  %i.ijn = load i16, ptr %i.iiy, align 2, !tbaa !60, !alias.scope !495
  %i.ijo = load i16, ptr %i.ija, align 2, !tbaa !60, !alias.scope !495
  %i.ijp = load i16, ptr %i.ijc, align 2, !tbaa !60, !alias.scope !495
  %i.ijq = load i16, ptr %i.ije, align 2, !tbaa !60, !alias.scope !495
  %i.ijr = load i16, ptr %i.ijg, align 2, !tbaa !60, !alias.scope !495
  %i.ijs = load i16, ptr %i.iji, align 2, !tbaa !60, !alias.scope !495
  %i.ijt = load i16, ptr %i.ijk, align 2, !tbaa !60, !alias.scope !495
  %i.iju = load i16, ptr %i.ijm, align 2, !tbaa !60, !alias.scope !495
  %i.ijv = insertelement <8 x i16> poison, i16 %i.ijn, i64 0
  %i.ijw = insertelement <8 x i16> %i.ijv, i16 %i.ijo, i64 1
  %i.ijx = insertelement <8 x i16> %i.ijw, i16 %i.ijp, i64 2
  %i.ijy = insertelement <8 x i16> %i.ijx, i16 %i.ijq, i64 3
  %i.ijz = insertelement <8 x i16> %i.ijy, i16 %i.ijr, i64 4
  %i.ika = insertelement <8 x i16> %i.ijz, i16 %i.ijs, i64 5
  %i.ikb = insertelement <8 x i16> %i.ika, i16 %i.ijt, i64 6
  %i.ikc = insertelement <8 x i16> %i.ikb, i16 %i.iju, i64 7
  %i.ikd = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ikc)
  %i.ike = zext <8 x i16> %i.ikd to <8 x i32>
  %i.ikf = lshr <8 x i32> %i.ike, %broadcast.splat4416
  %i.ikg = add nuw <8 x i32> %i.ikf, %broadcast.splat4418
  %i.ikh = lshr <8 x i32> %i.ikg, %broadcast.splat4420 ; 2 uses
  %i.iki = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikj = getelementptr inbounds nuw i8, ptr %i.iki, i64 10
  %i.ikk = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikl = getelementptr inbounds nuw i8, ptr %i.ikk, i64 26
  %i.ikm = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikn = getelementptr inbounds nuw i8, ptr %i.ikm, i64 42
  %i.iko = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikp = getelementptr inbounds nuw i8, ptr %i.iko, i64 58
  %i.ikq = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikr = getelementptr inbounds nuw i8, ptr %i.ikq, i64 74
  %i.iks = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikt = getelementptr inbounds nuw i8, ptr %i.iks, i64 90
  %i.iku = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikv = getelementptr inbounds nuw i8, ptr %i.iku, i64 106
  %i.ikw = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ikx = getelementptr inbounds nuw i8, ptr %i.ikw, i64 122
  %i.iky = load i16, ptr %i.ikj, align 2, !tbaa !60, !alias.scope !495
  %i.ikz = load i16, ptr %i.ikl, align 2, !tbaa !60, !alias.scope !495
  %i.ila = load i16, ptr %i.ikn, align 2, !tbaa !60, !alias.scope !495
  %i.ilb = load i16, ptr %i.ikp, align 2, !tbaa !60, !alias.scope !495
  %i.ilc = load i16, ptr %i.ikr, align 2, !tbaa !60, !alias.scope !495
  %i.ild = load i16, ptr %i.ikt, align 2, !tbaa !60, !alias.scope !495
  %i.ile = load i16, ptr %i.ikv, align 2, !tbaa !60, !alias.scope !495
  %i.ilf = load i16, ptr %i.ikx, align 2, !tbaa !60, !alias.scope !495
  %i.ilg = insertelement <8 x i16> poison, i16 %i.iky, i64 0
  %i.ilh = insertelement <8 x i16> %i.ilg, i16 %i.ikz, i64 1
  %i.ili = insertelement <8 x i16> %i.ilh, i16 %i.ila, i64 2
  %i.ilj = insertelement <8 x i16> %i.ili, i16 %i.ilb, i64 3
  %i.ilk = insertelement <8 x i16> %i.ilj, i16 %i.ilc, i64 4
  %i.ill = insertelement <8 x i16> %i.ilk, i16 %i.ild, i64 5
  %i.ilm = insertelement <8 x i16> %i.ill, i16 %i.ile, i64 6
  %i.iln = insertelement <8 x i16> %i.ilm, i16 %i.ilf, i64 7
  %i.ilo = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.iln)
  %i.ilp = zext <8 x i16> %i.ilo to <8 x i32>
  %i.ilq = lshr <8 x i32> %i.ilp, %broadcast.splat4416
  %i.ilr = add nuw <8 x i32> %i.ilq, %broadcast.splat4418
  %i.ils = lshr <8 x i32> %i.ilr, %broadcast.splat4420 ; 2 uses
  %i.ilt = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ilu = getelementptr inbounds nuw i8, ptr %i.ilt, i64 12
  %i.ilv = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ilw = getelementptr inbounds nuw i8, ptr %i.ilv, i64 28
  %i.ilx = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ily = getelementptr inbounds nuw i8, ptr %i.ilx, i64 44
  %i.ilz = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ima = getelementptr inbounds nuw i8, ptr %i.ilz, i64 60
  %i.imb = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.imc = getelementptr inbounds nuw i8, ptr %i.imb, i64 76
  %i.imd = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.ime = getelementptr inbounds nuw i8, ptr %i.imd, i64 92
  %i.imf = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.img = getelementptr inbounds nuw i8, ptr %i.imf, i64 108
  %i.imh = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.imi = getelementptr inbounds nuw i8, ptr %i.imh, i64 124
  %i.imj = load i16, ptr %i.ilu, align 2, !tbaa !60, !alias.scope !495
  %i.imk = load i16, ptr %i.ilw, align 2, !tbaa !60, !alias.scope !495
  %i.iml = load i16, ptr %i.ily, align 2, !tbaa !60, !alias.scope !495
  %i.imm = load i16, ptr %i.ima, align 2, !tbaa !60, !alias.scope !495
  %i.imn = load i16, ptr %i.imc, align 2, !tbaa !60, !alias.scope !495
  %i.imo = load i16, ptr %i.ime, align 2, !tbaa !60, !alias.scope !495
  %i.imp = load i16, ptr %i.img, align 2, !tbaa !60, !alias.scope !495
  %i.imq = load i16, ptr %i.imi, align 2, !tbaa !60, !alias.scope !495
  %i.imr = insertelement <8 x i16> poison, i16 %i.imj, i64 0
  %i.ims = insertelement <8 x i16> %i.imr, i16 %i.imk, i64 1
  %i.imt = insertelement <8 x i16> %i.ims, i16 %i.iml, i64 2
  %i.imu = insertelement <8 x i16> %i.imt, i16 %i.imm, i64 3
  %i.imv = insertelement <8 x i16> %i.imu, i16 %i.imn, i64 4
  %i.imw = insertelement <8 x i16> %i.imv, i16 %i.imo, i64 5
  %i.imx = insertelement <8 x i16> %i.imw, i16 %i.imp, i64 6
  %i.imy = insertelement <8 x i16> %i.imx, i16 %i.imq, i64 7
  %i.imz = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.imy)
  %i.ina = zext <8 x i16> %i.imz to <8 x i32>
  %i.inb = lshr <8 x i32> %i.ina, %broadcast.splat4416
  %i.inc = add nuw <8 x i32> %i.inb, %broadcast.splat4418
  %i.ind = lshr <8 x i32> %i.inc, %broadcast.splat4420 ; 2 uses
  %i.ine = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inf = getelementptr inbounds nuw i8, ptr %i.ine, i64 14
  %i.ing = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inh = getelementptr inbounds nuw i8, ptr %i.ing, i64 30
  %i.ini = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inj = getelementptr inbounds nuw i8, ptr %i.ini, i64 46
  %i.ink = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inl = getelementptr inbounds nuw i8, ptr %i.ink, i64 62
  %i.inm = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inn = getelementptr inbounds nuw i8, ptr %i.inm, i64 78
  %i.ino = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inp = getelementptr inbounds nuw i8, ptr %i.ino, i64 94
  %i.inq = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.inr = getelementptr inbounds nuw i8, ptr %i.inq, i64 110
  %i.ins = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ide
  %i.int = getelementptr inbounds nuw i8, ptr %i.ins, i64 126
  %i.inu = load i16, ptr %i.inf, align 2, !tbaa !60, !alias.scope !495
  %i.inv = load i16, ptr %i.inh, align 2, !tbaa !60, !alias.scope !495
  %i.inw = load i16, ptr %i.inj, align 2, !tbaa !60, !alias.scope !495
  %i.inx = load i16, ptr %i.inl, align 2, !tbaa !60, !alias.scope !495
  %i.iny = load i16, ptr %i.inn, align 2, !tbaa !60, !alias.scope !495
  %i.inz = load i16, ptr %i.inp, align 2, !tbaa !60, !alias.scope !495
  %i.ioa = load i16, ptr %i.inr, align 2, !tbaa !60, !alias.scope !495
  %i.iob = load i16, ptr %i.int, align 2, !tbaa !60, !alias.scope !495
  %i.ioc = insertelement <8 x i16> poison, i16 %i.inu, i64 0
  %i.iod = insertelement <8 x i16> %i.ioc, i16 %i.inv, i64 1
  %i.ioe = insertelement <8 x i16> %i.iod, i16 %i.inw, i64 2
  %i.iof = insertelement <8 x i16> %i.ioe, i16 %i.inx, i64 3
  %i.iog = insertelement <8 x i16> %i.iof, i16 %i.iny, i64 4
  %i.ioh = insertelement <8 x i16> %i.iog, i16 %i.inz, i64 5
  %i.ioi = insertelement <8 x i16> %i.ioh, i16 %i.ioa, i64 6
  %i.ioj = insertelement <8 x i16> %i.ioi, i16 %i.iob, i64 7
  %i.iok = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ioj)
  %i.iol = zext <8 x i16> %i.iok to <8 x i32>
  %i.iom = lshr <8 x i32> %i.iol, %broadcast.splat4416
  %i.ion = add nuw <8 x i32> %i.iom, %broadcast.splat4418
  %i.ioo = lshr <8 x i32> %i.ion, %broadcast.splat4420 ; 2 uses
  %i.iop = shufflevector <8 x i32> %i.ieo, <8 x i32> %i.iga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ioq = shufflevector <8 x i32> %i.ihl, <8 x i32> %i.iiw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ior = shufflevector <16 x i32> %i.iop, <16 x i32> %i.ioq, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ios = shufflevector <8 x i32> %i.ieo, <8 x i32> %i.iga, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iot = shufflevector <8 x i32> %i.ihl, <8 x i32> %i.iiw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.iou = shufflevector <16 x i32> %i.ios, <16 x i32> %i.iot, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.iov = lshr <32 x i32> %i.iou, %i.icz
  %i.iow = sub <32 x i32> %i.ior, %i.iov
  %i.iox = shl <32 x i32> %i.iow, %i.ida
  %i.ioy = shufflevector <8 x i32> %i.ikh, <8 x i32> %i.ils, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ioz = shufflevector <8 x i32> %i.ind, <8 x i32> %i.ioo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ipa = shufflevector <16 x i32> %i.ioy, <16 x i32> %i.ioz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ipb = shufflevector <8 x i32> %i.ikh, <8 x i32> %i.ils, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ipc = shufflevector <8 x i32> %i.ind, <8 x i32> %i.ioo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ipd = shufflevector <16 x i32> %i.ipb, <16 x i32> %i.ipc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ipe = lshr <32 x i32> %i.ipd, %i.idb
  %i.ipf = sub <32 x i32> %i.ipa, %i.ipe
  %i.ipg = shl <32 x i32> %i.ipf, %i.idc
  %i.iph = shufflevector <32 x i32> %i.iox, <32 x i32> %i.ipg, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec4427 = trunc <64 x i32> %i.iph to <64 x i16>
  store <64 x i16> %interleaved.vec4427, ptr %i.iep, align 2, !tbaa !60, !alias.scope !496, !noalias !495
  %index.next4428 = add nuw i64 %index4426, 8     ; 2 uses
  %i.ipi = icmp eq i64 %index.next4428, %n.vec4414
  br i1 %i.ipi, label %middle.block4429, label %vector.body4425, !llvm.loop !396

middle.block4429:                                 ; preds = %vector.body4425
  br i1 %cmp.n4430, label %.preheader2728.loopexit, label %.lr.ph2874.preheader5069

.lr.ph2874.preheader5069:                         ; preds = %.lr.ph2874.preheader, %middle.block4429
  %indvars.iv3161.ph = phi i64 [ %i.icy, %middle.block4429 ], [ 0, %.lr.ph2874.preheader ]
  br label %.lr.ph2874

.preheader2728.loopexit:                          ; preds = %.lr.ph2874, %middle.block4429
  %indvars.iv.next3162.lcssa = phi i64 [ %i.icy, %middle.block4429 ], [ %indvars.iv.next3162, %.lr.ph2874 ]
  %i.ipj = trunc nuw nsw i64 %indvars.iv.next3162.lcssa to i32
  br label %.preheader2728

.preheader2728:                                   ; preds = %.preheader2728.loopexit, %.preheader2729
  %.38.lcssa = phi i32 [ 0, %.preheader2729 ], [ %i.ipj, %.preheader2728.loopexit ] ; 2 uses
  %i.ipk = icmp slt i32 %.38.lcssa, %.024902630263526392642
  br i1 %i.ipk, label %.lr.ph2877.preheader, label %._crit_edge2878

.lr.ph2877.preheader:                             ; preds = %.preheader2728
  %i.ipl = zext i32 %.38.lcssa to i64             ; 5 uses
  %i.ipm = sub nsw i64 %wide.trip.count3167, %i.ipl ; 3 uses
  %min.iters.check4369 = icmp ult i64 %i.ipm, 8
  br i1 %min.iters.check4369, label %.lr.ph2877.preheader5068, label %vector.memcheck4370

vector.memcheck4370:                              ; preds = %.lr.ph2877.preheader
  %i.ipn = mul nsw i64 %indvar4366, %i.icd
  %.reass5220 = add i64 %i.ipn, %invariant.op5219
  %diff.check4371 = icmp ult i64 %.reass5220, 15
  br i1 %diff.check4371, label %.lr.ph2877.preheader5068, label %vector.ph4372

vector.ph4372:                                    ; preds = %vector.memcheck4370
  %n.vec4373 = and i64 %i.ipm, -8                 ; 3 uses
  %i.ipo = add nsw i64 %n.vec4373, %i.ipl
  br label %vector.body4382

vector.body4382:                                  ; preds = %vector.body4382, %vector.ph4372
  %index4383 = phi i64 [ 0, %vector.ph4372 ], [ %index.next4385, %vector.body4382 ] ; 2 uses
  %i.ipp = add nuw i64 %index4383, %i.ipl         ; 2 uses
  %i.ipq = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ipp
  %wide.load4384 = load <8 x i16>, ptr %i.ipq, align 2, !tbaa !60
  %i.ipr = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4384)
  %i.ips = zext <8 x i16> %i.ipr to <8 x i32>
  %i.ipt = add nuw <8 x i32> %broadcast.splat4375, %i.ips
  %i.ipu = lshr <8 x i32> %i.ipt, %broadcast.splat4377 ; 2 uses
  %i.ipv = lshr <8 x i32> %i.ipu, %broadcast.splat4379
  %i.ipw = sub <8 x i32> %i.ipu, %i.ipv
  %i.ipx = shl <8 x i32> %i.ipw, %broadcast.splat4381
  %i.ipy = trunc <8 x i32> %i.ipx to <8 x i16>
  %i.ipz = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.ipp
  store <8 x i16> %i.ipy, ptr %i.ipz, align 2, !tbaa !60
  %index.next4385 = add nuw i64 %index4383, 8     ; 2 uses
  %i.iqa = icmp eq i64 %index.next4385, %n.vec4373
  br i1 %i.iqa, label %middle.block4386, label %vector.body4382, !llvm.loop !397

middle.block4386:                                 ; preds = %vector.body4382
  %cmp.n4387 = icmp eq i64 %i.ipm, %n.vec4373
  br i1 %cmp.n4387, label %._crit_edge2878, label %.lr.ph2877.preheader5068

.lr.ph2877.preheader5068:                         ; preds = %vector.memcheck4370, %.lr.ph2877.preheader, %middle.block4386
  %indvars.iv3164.ph = phi i64 [ %i.ipl, %vector.memcheck4370 ], [ %i.ipl, %.lr.ph2877.preheader ], [ %i.ipo, %middle.block4386 ] ; 6 uses
  %i.iqb = sub nsw i64 %wide.trip.count3167, %indvars.iv3164.ph
  %xtraiter5138 = and i64 %i.iqb, 1
  %lcmp.mod5139.not = icmp eq i64 %xtraiter5138, 0
  br i1 %lcmp.mod5139.not, label %.lr.ph2877.prol.loopexit, label %.lr.ph2877.prol

.lr.ph2877.prol:                                  ; preds = %.lr.ph2877.preheader5068
  %i.iqc = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %indvars.iv3164.ph
  %i.iqd = load i16, ptr %i.iqc, align 2, !tbaa !60
  %i.iqe = tail call i16 @llvm.bswap.i16(i16 %i.iqd)
  %i.iqf = zext i16 %i.iqe to i32
  %i.iqg = add nuw i32 %i.ibo, %i.iqf
  %i.iqh = lshr i32 %i.iqg, %i.ibm                ; 2 uses
  %i.iqi = lshr i32 %i.iqh, %i.fk
  %i.iqj = sub i32 %i.iqh, %i.iqi
  %i.iqk = shl i32 %i.iqj, %i.fo
  %i.iql = trunc i32 %i.iqk to i16
  %i.iqm = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %indvars.iv3164.ph
  store i16 %i.iql, ptr %i.iqm, align 2, !tbaa !60
  %indvars.iv.next3165.prol = add nuw nsw i64 %indvars.iv3164.ph, 1
  br label %.lr.ph2877.prol.loopexit

.lr.ph2877.prol.loopexit:                         ; preds = %.lr.ph2877.prol, %.lr.ph2877.preheader5068
  %indvars.iv3164.unr = phi i64 [ %indvars.iv3164.ph, %.lr.ph2877.preheader5068 ], [ %indvars.iv.next3165.prol, %.lr.ph2877.prol ]
  %i.iqn = icmp eq i64 %indvars.iv3164.ph, %i.idd
  br i1 %i.iqn, label %._crit_edge2878, label %.lr.ph2877

.lr.ph2874:                                       ; preds = %.lr.ph2874.preheader5069, %.lr.ph2874
  %indvars.iv3161 = phi i64 [ %indvars.iv.next3162, %.lr.ph2874 ], [ %indvars.iv3161.ph, %.lr.ph2874.preheader5069 ] ; 10 uses
  %i.iqo = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %indvars.iv3161
  %i.iqp = load i16, ptr %i.iqo, align 2, !tbaa !60
  %i.iqq = tail call i16 @llvm.bswap.i16(i16 %i.iqp)
  %i.iqr = zext i16 %i.iqq to i32
  %i.iqs = lshr i32 %i.iqr, %i.fm
  %i.iqt = add nuw i32 %i.iqs, %i.ibo
  %i.iqu = lshr i32 %i.iqt, %i.ibm                ; 2 uses
  %i.iqv = lshr i32 %i.iqu, %i.fk
  %i.iqw = sub i32 %i.iqu, %i.iqv
  %i.iqx = shl i32 %i.iqw, %i.fo
  %i.iqy = trunc i32 %i.iqx to i16
  %i.iqz = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %indvars.iv3161
  store i16 %i.iqy, ptr %i.iqz, align 2, !tbaa !60
  %i.ira = or disjoint i64 %indvars.iv3161, 1     ; 2 uses
  %i.irb = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ira
  %i.irc = load i16, ptr %i.irb, align 2, !tbaa !60
  %i.ird = tail call i16 @llvm.bswap.i16(i16 %i.irc)
  %i.ire = zext i16 %i.ird to i32
  %i.irf = lshr i32 %i.ire, %i.fm
  %i.irg = add nuw i32 %i.irf, %i.ibo
  %i.irh = lshr i32 %i.irg, %i.ibm                ; 2 uses
  %i.iri = lshr i32 %i.irh, %i.fk
  %i.irj = sub i32 %i.irh, %i.iri
  %i.irk = shl i32 %i.irj, %i.fo
  %i.irl = trunc i32 %i.irk to i16
  %i.irm = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.ira
  store i16 %i.irl, ptr %i.irm, align 2, !tbaa !60
  %i.irn = or disjoint i64 %indvars.iv3161, 2     ; 2 uses
  %i.iro = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.irn
  %i.irp = load i16, ptr %i.iro, align 2, !tbaa !60
  %i.irq = tail call i16 @llvm.bswap.i16(i16 %i.irp)
  %i.irr = zext i16 %i.irq to i32
  %i.irs = lshr i32 %i.irr, %i.fm
  %i.irt = add nuw i32 %i.irs, %i.ibo
  %i.iru = lshr i32 %i.irt, %i.ibm                ; 2 uses
  %i.irv = lshr i32 %i.iru, %i.fk
  %i.irw = sub i32 %i.iru, %i.irv
  %i.irx = shl i32 %i.irw, %i.fo
  %i.iry = trunc i32 %i.irx to i16
  %i.irz = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.irn
  store i16 %i.iry, ptr %i.irz, align 2, !tbaa !60
  %i.isa = or disjoint i64 %indvars.iv3161, 3     ; 2 uses
  %i.isb = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.isa
  %i.isc = load i16, ptr %i.isb, align 2, !tbaa !60
  %i.isd = tail call i16 @llvm.bswap.i16(i16 %i.isc)
  %i.ise = zext i16 %i.isd to i32
  %i.isf = lshr i32 %i.ise, %i.fm
  %i.isg = add nuw i32 %i.isf, %i.ibo
  %i.ish = lshr i32 %i.isg, %i.ibm                ; 2 uses
  %i.isi = lshr i32 %i.ish, %i.fk
  %i.isj = sub i32 %i.ish, %i.isi
  %i.isk = shl i32 %i.isj, %i.fo
  %i.isl = trunc i32 %i.isk to i16
  %i.ism = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.isa
  store i16 %i.isl, ptr %i.ism, align 2, !tbaa !60
  %i.isn = or disjoint i64 %indvars.iv3161, 4     ; 2 uses
  %i.iso = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.isn
  %i.isp = load i16, ptr %i.iso, align 2, !tbaa !60
  %i.isq = tail call i16 @llvm.bswap.i16(i16 %i.isp)
  %i.isr = zext i16 %i.isq to i32
  %i.iss = lshr i32 %i.isr, %i.fm
  %i.ist = add nuw i32 %i.iss, %i.ibo
  %i.isu = lshr i32 %i.ist, %i.ibm                ; 2 uses
  %i.isv = lshr i32 %i.isu, %i.fk
  %i.isw = sub i32 %i.isu, %i.isv
  %i.isx = shl i32 %i.isw, %i.fo
  %i.isy = trunc i32 %i.isx to i16
  %i.isz = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.isn
  store i16 %i.isy, ptr %i.isz, align 2, !tbaa !60
  %i.ita = or disjoint i64 %indvars.iv3161, 5     ; 2 uses
  %i.itb = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.ita
  %i.itc = load i16, ptr %i.itb, align 2, !tbaa !60
  %i.itd = tail call i16 @llvm.bswap.i16(i16 %i.itc)
  %i.ite = zext i16 %i.itd to i32
  %i.itf = lshr i32 %i.ite, %i.fm
  %i.itg = add nuw i32 %i.itf, %i.ibo
  %i.ith = lshr i32 %i.itg, %i.ibm                ; 2 uses
  %i.iti = lshr i32 %i.ith, %i.fk
  %i.itj = sub i32 %i.ith, %i.iti
  %i.itk = shl i32 %i.itj, %i.fo
  %i.itl = trunc i32 %i.itk to i16
  %i.itm = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.ita
  store i16 %i.itl, ptr %i.itm, align 2, !tbaa !60
  %i.itn = or disjoint i64 %indvars.iv3161, 6     ; 2 uses
  %i.ito = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.itn
  %i.itp = load i16, ptr %i.ito, align 2, !tbaa !60
  %i.itq = tail call i16 @llvm.bswap.i16(i16 %i.itp)
  %i.itr = zext i16 %i.itq to i32
  %i.its = lshr i32 %i.itr, %i.fm
  %i.itt = add nuw i32 %i.its, %i.ibo
  %i.itu = lshr i32 %i.itt, %i.ibm                ; 2 uses
  %i.itv = lshr i32 %i.itu, %i.fk
  %i.itw = sub i32 %i.itu, %i.itv
  %i.itx = shl i32 %i.itw, %i.fo
  %i.ity = trunc i32 %i.itx to i16
  %i.itz = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.itn
  store i16 %i.ity, ptr %i.itz, align 2, !tbaa !60
  %i.iua = or disjoint i64 %indvars.iv3161, 7     ; 2 uses
  %i.iub = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %i.iua
  %i.iuc = load i16, ptr %i.iub, align 2, !tbaa !60
  %i.iud = tail call i16 @llvm.bswap.i16(i16 %i.iuc)
  %i.iue = zext i16 %i.iud to i32
  %i.iuf = lshr i32 %i.iue, %i.fm
  %i.iug = add nuw i32 %i.iuf, %i.ibo
  %i.iuh = lshr i32 %i.iug, %i.ibm                ; 2 uses
  %i.iui = lshr i32 %i.iuh, %i.fk
  %i.iuj = sub i32 %i.iuh, %i.iui
  %i.iuk = shl i32 %i.iuj, %i.fo
  %i.iul = trunc i32 %i.iuk to i16
  %i.ium = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %i.iua
  store i16 %i.iul, ptr %i.ium, align 2, !tbaa !60
  %indvars.iv.next3162 = add nuw nsw i64 %indvars.iv3161, 8 ; 3 uses
  %i.iun = icmp samesign ult i64 %indvars.iv.next3162, %i.icb
  br i1 %i.iun, label %.lr.ph2874, label %.preheader2728.loopexit, !llvm.loop !398

.lr.ph2877:                                       ; preds = %.lr.ph2877.prol.loopexit, %.lr.ph2877
  %indvars.iv3164 = phi i64 [ %indvars.iv.next3165.1, %.lr.ph2877 ], [ %indvars.iv3164.unr, %.lr.ph2877.prol.loopexit ] ; 4 uses
  %i.iuo = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %indvars.iv3164
  %i.iup = load i16, ptr %i.iuo, align 2, !tbaa !60
  %i.iuq = tail call i16 @llvm.bswap.i16(i16 %i.iup)
  %i.iur = zext i16 %i.iuq to i32
  %i.ius = add nuw i32 %i.ibo, %i.iur
  %i.iut = lshr i32 %i.ius, %i.ibm                ; 2 uses
  %i.iuu = lshr i32 %i.iut, %i.fk
  %i.iuv = sub i32 %i.iut, %i.iuu
  %i.iuw = shl i32 %i.iuv, %i.fo
  %i.iux = trunc i32 %i.iuw to i16
  %i.iuy = getelementptr inbounds nuw [2 x i8], ptr %.825042880, i64 %indvars.iv3164
  store i16 %i.iux, ptr %i.iuy, align 2, !tbaa !60
  %indvars.iv.next3165 = add nuw nsw i64 %indvars.iv3164, 1 ; 2 uses
  %i.iuz = getelementptr inbounds nuw [2 x i8], ptr %.1325232879, i64 %indvars.iv.next3165
  %i.iva = load i16, ptr %i.iuz, align 2, !tbaa !60
  %i.ivb = tail call i16 @llvm.bswap.i16(i16 %i.iva)
  %i.ivc = zext i16 %i.ivb to i32
  %i.ivd = add nuw i32 %i.ibo, %i.ivc
  %i.ive = lshr i32 %i.ivd, %i.ibm                ; 2 uses
  %i.ivf = lshr i32 %i.ive, %i.fk
  %i.ivg = sub i32 %i.ive, %i.ivf
end_hunk_7
begin_hunk_8_@planarCopyWrapper:bb.a
  %i.jfm = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jfn = getelementptr inbounds nuw i8, ptr %i.jfm, i64 72
  %i.jfo = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jfp = getelementptr inbounds nuw i8, ptr %i.jfo, i64 88
  %i.jfq = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jfr = getelementptr inbounds nuw i8, ptr %i.jfq, i64 104
  %i.jfs = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jft = getelementptr inbounds nuw i8, ptr %i.jfs, i64 120
  %i.jfu = load i16, ptr %i.jff, align 2, !tbaa !60, !alias.scope !497
  %i.jfv = load i16, ptr %i.jfh, align 2, !tbaa !60, !alias.scope !497
  %i.jfw = load i16, ptr %i.jfj, align 2, !tbaa !60, !alias.scope !497
  %i.jfx = load i16, ptr %i.jfl, align 2, !tbaa !60, !alias.scope !497
  %i.jfy = load i16, ptr %i.jfn, align 2, !tbaa !60, !alias.scope !497
  %i.jfz = load i16, ptr %i.jfp, align 2, !tbaa !60, !alias.scope !497
  %i.jga = load i16, ptr %i.jfr, align 2, !tbaa !60, !alias.scope !497
  %i.jgb = load i16, ptr %i.jft, align 2, !tbaa !60, !alias.scope !497
  %i.jgc = insertelement <8 x i16> poison, i16 %i.jfu, i64 0
  %i.jgd = insertelement <8 x i16> %i.jgc, i16 %i.jfv, i64 1
  %i.jge = insertelement <8 x i16> %i.jgd, i16 %i.jfw, i64 2
  %i.jgf = insertelement <8 x i16> %i.jge, i16 %i.jfx, i64 3
  %i.jgg = insertelement <8 x i16> %i.jgf, i16 %i.jfy, i64 4
  %i.jgh = insertelement <8 x i16> %i.jgg, i16 %i.jfz, i64 5
  %i.jgi = insertelement <8 x i16> %i.jgh, i16 %i.jga, i64 6
  %i.jgj = insertelement <8 x i16> %i.jgi, i16 %i.jgb, i64 7
  %i.jgk = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.jgj)
  %i.jgl = zext <8 x i16> %i.jgk to <8 x i32>
  %i.jgm = lshr <8 x i32> %i.jgl, %broadcast.splat4502
  %i.jgn = add nuw nsw <8 x i32> %i.jgm, %broadcast.splat4494
  %i.jgo = lshr <8 x i32> %i.jgn, %broadcast.splat4504 ; 2 uses
  %i.jgp = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jgq = getelementptr inbounds nuw i8, ptr %i.jgp, i64 10
  %i.jgr = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jgs = getelementptr inbounds nuw i8, ptr %i.jgr, i64 26
  %i.jgt = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jgu = getelementptr inbounds nuw i8, ptr %i.jgt, i64 42
  %i.jgv = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jgw = getelementptr inbounds nuw i8, ptr %i.jgv, i64 58
  %i.jgx = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jgy = getelementptr inbounds nuw i8, ptr %i.jgx, i64 74
  %i.jgz = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jha = getelementptr inbounds nuw i8, ptr %i.jgz, i64 90
  %i.jhb = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jhc = getelementptr inbounds nuw i8, ptr %i.jhb, i64 106
  %i.jhd = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jhe = getelementptr inbounds nuw i8, ptr %i.jhd, i64 122
  %i.jhf = load i16, ptr %i.jgq, align 2, !tbaa !60, !alias.scope !497
  %i.jhg = load i16, ptr %i.jgs, align 2, !tbaa !60, !alias.scope !497
  %i.jhh = load i16, ptr %i.jgu, align 2, !tbaa !60, !alias.scope !497
  %i.jhi = load i16, ptr %i.jgw, align 2, !tbaa !60, !alias.scope !497
  %i.jhj = load i16, ptr %i.jgy, align 2, !tbaa !60, !alias.scope !497
  %i.jhk = load i16, ptr %i.jha, align 2, !tbaa !60, !alias.scope !497
  %i.jhl = load i16, ptr %i.jhc, align 2, !tbaa !60, !alias.scope !497
  %i.jhm = load i16, ptr %i.jhe, align 2, !tbaa !60, !alias.scope !497
  %i.jhn = insertelement <8 x i16> poison, i16 %i.jhf, i64 0
  %i.jho = insertelement <8 x i16> %i.jhn, i16 %i.jhg, i64 1
  %i.jhp = insertelement <8 x i16> %i.jho, i16 %i.jhh, i64 2
  %i.jhq = insertelement <8 x i16> %i.jhp, i16 %i.jhi, i64 3
  %i.jhr = insertelement <8 x i16> %i.jhq, i16 %i.jhj, i64 4
  %i.jhs = insertelement <8 x i16> %i.jhr, i16 %i.jhk, i64 5
  %i.jht = insertelement <8 x i16> %i.jhs, i16 %i.jhl, i64 6
  %i.jhu = insertelement <8 x i16> %i.jht, i16 %i.jhm, i64 7
  %i.jhv = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.jhu)
  %i.jhw = zext <8 x i16> %i.jhv to <8 x i32>
  %i.jhx = lshr <8 x i32> %i.jhw, %broadcast.splat4502
  %i.jhy = add nuw nsw <8 x i32> %i.jhx, %broadcast.splat4496
  %i.jhz = lshr <8 x i32> %i.jhy, %broadcast.splat4504 ; 2 uses
  %i.jia = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jib = getelementptr inbounds nuw i8, ptr %i.jia, i64 12
  %i.jic = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jid = getelementptr inbounds nuw i8, ptr %i.jic, i64 28
  %i.jie = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jif = getelementptr inbounds nuw i8, ptr %i.jie, i64 44
  %i.jig = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jih = getelementptr inbounds nuw i8, ptr %i.jig, i64 60
  %i.jii = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jij = getelementptr inbounds nuw i8, ptr %i.jii, i64 76
  %i.jik = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jil = getelementptr inbounds nuw i8, ptr %i.jik, i64 92
  %i.jim = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jin = getelementptr inbounds nuw i8, ptr %i.jim, i64 108
  %i.jio = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jip = getelementptr inbounds nuw i8, ptr %i.jio, i64 124
  %i.jiq = load i16, ptr %i.jib, align 2, !tbaa !60, !alias.scope !497
  %i.jir = load i16, ptr %i.jid, align 2, !tbaa !60, !alias.scope !497
  %i.jis = load i16, ptr %i.jif, align 2, !tbaa !60, !alias.scope !497
  %i.jit = load i16, ptr %i.jih, align 2, !tbaa !60, !alias.scope !497
  %i.jiu = load i16, ptr %i.jij, align 2, !tbaa !60, !alias.scope !497
  %i.jiv = load i16, ptr %i.jil, align 2, !tbaa !60, !alias.scope !497
  %i.jiw = load i16, ptr %i.jin, align 2, !tbaa !60, !alias.scope !497
  %i.jix = load i16, ptr %i.jip, align 2, !tbaa !60, !alias.scope !497
  %i.jiy = insertelement <8 x i16> poison, i16 %i.jiq, i64 0
  %i.jiz = insertelement <8 x i16> %i.jiy, i16 %i.jir, i64 1
  %i.jja = insertelement <8 x i16> %i.jiz, i16 %i.jis, i64 2
  %i.jjb = insertelement <8 x i16> %i.jja, i16 %i.jit, i64 3
  %i.jjc = insertelement <8 x i16> %i.jjb, i16 %i.jiu, i64 4
  %i.jjd = insertelement <8 x i16> %i.jjc, i16 %i.jiv, i64 5
  %i.jje = insertelement <8 x i16> %i.jjd, i16 %i.jiw, i64 6
  %i.jjf = insertelement <8 x i16> %i.jje, i16 %i.jix, i64 7
  %i.jjg = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.jjf)
  %i.jjh = zext <8 x i16> %i.jjg to <8 x i32>
  %i.jji = lshr <8 x i32> %i.jjh, %broadcast.splat4502
  %i.jjj = add nuw nsw <8 x i32> %i.jji, %broadcast.splat4498
  %i.jjk = lshr <8 x i32> %i.jjj, %broadcast.splat4504 ; 2 uses
  %i.jjl = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjm = getelementptr inbounds nuw i8, ptr %i.jjl, i64 14
  %i.jjn = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjo = getelementptr inbounds nuw i8, ptr %i.jjn, i64 30
  %i.jjp = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjq = getelementptr inbounds nuw i8, ptr %i.jjp, i64 46
  %i.jjr = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjs = getelementptr inbounds nuw i8, ptr %i.jjr, i64 62
  %i.jjt = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jju = getelementptr inbounds nuw i8, ptr %i.jjt, i64 78
  %i.jjv = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjw = getelementptr inbounds nuw i8, ptr %i.jjv, i64 94
  %i.jjx = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jjy = getelementptr inbounds nuw i8, ptr %i.jjx, i64 110
  %i.jjz = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.izl
  %i.jka = getelementptr inbounds nuw i8, ptr %i.jjz, i64 126
  %i.jkb = load i16, ptr %i.jjm, align 2, !tbaa !60, !alias.scope !497
  %i.jkc = load i16, ptr %i.jjo, align 2, !tbaa !60, !alias.scope !497
  %i.jkd = load i16, ptr %i.jjq, align 2, !tbaa !60, !alias.scope !497
  %i.jke = load i16, ptr %i.jjs, align 2, !tbaa !60, !alias.scope !497
  %i.jkf = load i16, ptr %i.jju, align 2, !tbaa !60, !alias.scope !497
  %i.jkg = load i16, ptr %i.jjw, align 2, !tbaa !60, !alias.scope !497
  %i.jkh = load i16, ptr %i.jjy, align 2, !tbaa !60, !alias.scope !497
  %i.jki = load i16, ptr %i.jka, align 2, !tbaa !60, !alias.scope !497
  %i.jkj = insertelement <8 x i16> poison, i16 %i.jkb, i64 0
  %i.jkk = insertelement <8 x i16> %i.jkj, i16 %i.jkc, i64 1
  %i.jkl = insertelement <8 x i16> %i.jkk, i16 %i.jkd, i64 2
  %i.jkm = insertelement <8 x i16> %i.jkl, i16 %i.jke, i64 3
  %i.jkn = insertelement <8 x i16> %i.jkm, i16 %i.jkf, i64 4
  %i.jko = insertelement <8 x i16> %i.jkn, i16 %i.jkg, i64 5
  %i.jkp = insertelement <8 x i16> %i.jko, i16 %i.jkh, i64 6
  %i.jkq = insertelement <8 x i16> %i.jkp, i16 %i.jki, i64 7
  %i.jkr = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.jkq)
  %i.jks = zext <8 x i16> %i.jkr to <8 x i32>
  %i.jkt = lshr <8 x i32> %i.jks, %broadcast.splat4502
  %i.jku = add nuw nsw <8 x i32> %i.jkt, %broadcast.splat4500
  %i.jkv = lshr <8 x i32> %i.jku, %broadcast.splat4504 ; 2 uses
  %i.jkw = shufflevector <8 x i32> %i.jav, <8 x i32> %i.jch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jkx = shufflevector <8 x i32> %i.jds, <8 x i32> %i.jfd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jky = shufflevector <16 x i32> %i.jkw, <16 x i32> %i.jkx, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jkz = shufflevector <8 x i32> %i.jav, <8 x i32> %i.jch, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jla = shufflevector <8 x i32> %i.jds, <8 x i32> %i.jfd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jlb = shufflevector <16 x i32> %i.jkz, <16 x i32> %i.jla, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jlc = lshr <32 x i32> %i.jlb, %i.iyg
  %i.jld = sub nsw <32 x i32> %i.jky, %i.jlc
  %i.jle = shl <32 x i32> %i.jld, %i.iyh
  %i.jlf = shufflevector <8 x i32> %i.jgo, <8 x i32> %i.jhz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jlg = shufflevector <8 x i32> %i.jjk, <8 x i32> %i.jkv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jlh = shufflevector <16 x i32> %i.jlf, <16 x i32> %i.jlg, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jli = shufflevector <8 x i32> %i.jgo, <8 x i32> %i.jhz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jlj = shufflevector <8 x i32> %i.jjk, <8 x i32> %i.jkv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jlk = shufflevector <16 x i32> %i.jli, <16 x i32> %i.jlj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.jll = lshr <32 x i32> %i.jlk, %i.iyi
  %i.jlm = sub nsw <32 x i32> %i.jlh, %i.jll
  %i.jln = shl <32 x i32> %i.jlm, %i.iyj
  %i.jlo = shufflevector <32 x i32> %i.jle, <32 x i32> %i.jln, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec4511 = trunc <64 x i32> %i.jlo to <64 x i16>
  store <64 x i16> %interleaved.vec4511, ptr %i.jaw, align 2, !tbaa !60, !alias.scope !498, !noalias !497
  %index.next4512 = add nuw i64 %index4510, 8     ; 2 uses
  %i.jlp = icmp eq i64 %index.next4512, %n.vec4484
  br i1 %i.jlp, label %middle.block4513, label %vector.body4509, !llvm.loop !404

middle.block4513:                                 ; preds = %vector.body4509
  br i1 %cmp.n4514, label %.preheader2730.loopexit, label %scalar.ph4475.preheader

scalar.ph4475.preheader:                          ; preds = %.lr.ph2864, %middle.block4513
  %indvars.iv3152.ph = phi i64 [ %i.iyf, %middle.block4513 ], [ 0, %.lr.ph2864 ]
  br label %scalar.ph4475

.preheader2730.loopexit:                          ; preds = %scalar.ph4475, %middle.block4513
  %indvars.iv.next3153.lcssa = phi i64 [ %i.iyf, %middle.block4513 ], [ %indvars.iv.next3153, %scalar.ph4475 ]
  %i.jlq = trunc nuw nsw i64 %indvars.iv.next3153.lcssa to i32
  br label %.preheader2730

.preheader2730:                                   ; preds = %.preheader2730.loopexit, %bb.ci
  %.40.lcssa = phi i32 [ 0, %bb.ci ], [ %i.jlq, %.preheader2730.loopexit ] ; 3 uses
  %i.jlr = icmp slt i32 %.40.lcssa, %.024902630263526392642
  br i1 %i.jlr, label %.lr.ph2867.preheader, label %._crit_edge2868

.lr.ph2867.preheader:                             ; preds = %.preheader2730
  %i.jls = zext i32 %.40.lcssa to i64             ; 8 uses
  %i.jlt = sub nsw i64 %wide.trip.count3158, %i.jls ; 3 uses
  %min.iters.check4440 = icmp ult i64 %i.jlt, 8
  br i1 %min.iters.check4440, label %.lr.ph2867.preheader5070, label %vector.scevcheck4432

vector.scevcheck4432:                             ; preds = %.lr.ph2867.preheader
  %i.jlu = xor i64 %i.jls, -1
  %i.jlv = add nsw i64 %i.jlu, %wide.trip.count3158 ; 2 uses
  %i.jlw = trunc i32 %.40.lcssa to i3
  %i.jlx = trunc i64 %i.jlv to i3
  %i.jly = xor i3 %i.jlw, -1
  %i.jlz = icmp ult i3 %i.jly, %i.jlx
  %i.jma = icmp ugt i64 %i.jlv, 7
  %i.jmb = or i1 %i.jlz, %i.jma
  br i1 %i.jmb, label %.lr.ph2867.preheader5070, label %vector.memcheck4441

vector.memcheck4441:                              ; preds = %vector.scevcheck4432
  %i.jmc = mul nsw i64 %indvar4437, %i.ixk
  %.reass5218 = add i64 %i.jmc, %invariant.op5217
  %diff.check4442 = icmp ult i64 %.reass5218, 15
  br i1 %diff.check4442, label %.lr.ph2867.preheader5070, label %vector.ph4443

vector.ph4443:                                    ; preds = %vector.memcheck4441
  %n.vec4444 = and i64 %i.jlt, -8                 ; 3 uses
  %i.jmd = add nsw i64 %n.vec4444, %i.jls
  %i.jme = and i64 %i.jls, 7
  %i.jmf = getelementptr inbounds nuw i8, ptr %i.iyn, i64 %i.jme
  %wide.load4454 = load <8 x i8>, ptr %i.jmf, align 1, !tbaa !64
  %i.jmg = zext <8 x i8> %wide.load4454 to <8 x i32>
  br label %vector.body4451

vector.body4451:                                  ; preds = %vector.body4451, %vector.ph4443
  %index4452 = phi i64 [ 0, %vector.ph4443 ], [ %index.next4455, %vector.body4451 ] ; 2 uses
  %i.jmh = add nuw i64 %index4452, %i.jls         ; 2 uses
  %i.jmi = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jmh
  %wide.load4453 = load <8 x i16>, ptr %i.jmi, align 2, !tbaa !60
  %i.jmj = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4453)
  %i.jmk = zext <8 x i16> %i.jmj to <8 x i32>
  %i.jml = add nuw nsw <8 x i32> %i.jmk, %i.jmg
  %i.jmm = lshr <8 x i32> %i.jml, %broadcast.splat4446 ; 2 uses
  %i.jmn = lshr <8 x i32> %i.jmm, %broadcast.splat4448
  %i.jmo = sub nsw <8 x i32> %i.jmm, %i.jmn
  %i.jmp = shl <8 x i32> %i.jmo, %broadcast.splat4450
  %i.jmq = trunc <8 x i32> %i.jmp to <8 x i16>
  %i.jmr = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jmh
  store <8 x i16> %i.jmq, ptr %i.jmr, align 2, !tbaa !60
  %index.next4455 = add nuw i64 %index4452, 8     ; 2 uses
  %i.jms = icmp eq i64 %index.next4455, %n.vec4444
  br i1 %i.jms, label %middle.block4456, label %vector.body4451, !llvm.loop !405

middle.block4456:                                 ; preds = %vector.body4451
  %cmp.n4457 = icmp eq i64 %i.jlt, %n.vec4444
  br i1 %cmp.n4457, label %._crit_edge2868, label %.lr.ph2867.preheader5070

.lr.ph2867.preheader5070:                         ; preds = %vector.memcheck4441, %vector.scevcheck4432, %.lr.ph2867.preheader, %middle.block4456
  %indvars.iv3155.ph = phi i64 [ %i.jls, %vector.memcheck4441 ], [ %i.jls, %vector.scevcheck4432 ], [ %i.jls, %.lr.ph2867.preheader ], [ %i.jmd, %middle.block4456 ] ; 7 uses
  %i.jmt = sub nsw i64 %wide.trip.count3158, %indvars.iv3155.ph
  %xtraiter5136 = and i64 %i.jmt, 1
  %lcmp.mod5137.not = icmp eq i64 %xtraiter5136, 0
  br i1 %lcmp.mod5137.not, label %.lr.ph2867.prol.loopexit, label %.lr.ph2867.prol

.lr.ph2867.prol:                                  ; preds = %.lr.ph2867.preheader5070
  %i.jmu = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %indvars.iv3155.ph
  %i.jmv = load i16, ptr %i.jmu, align 2, !tbaa !60
  %i.jmw = tail call i16 @llvm.bswap.i16(i16 %i.jmv)
  %i.jmx = zext i16 %i.jmw to i32
  %i.jmy = and i64 %indvars.iv3155.ph, 7
  %i.jmz = getelementptr inbounds nuw i8, ptr %i.iyn, i64 %i.jmy
  %i.jna = load i8, ptr %i.jmz, align 1, !tbaa !64
  %i.jnb = zext i8 %i.jna to i32
  %i.jnc = add nuw nsw i32 %i.jmx, %i.jnb
  %i.jnd = lshr i32 %i.jnc, %i.ibm                ; 2 uses
  %i.jne = lshr i32 %i.jnd, %i.fk
  %i.jnf = sub nsw i32 %i.jnd, %i.jne
  %i.jng = shl i32 %i.jnf, %i.fo
  %i.jnh = trunc i32 %i.jng to i16
  %i.jni = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %indvars.iv3155.ph
  store i16 %i.jnh, ptr %i.jni, align 2, !tbaa !60
  %indvars.iv.next3156.prol = add nuw nsw i64 %indvars.iv3155.ph, 1
  br label %.lr.ph2867.prol.loopexit

.lr.ph2867.prol.loopexit:                         ; preds = %.lr.ph2867.prol, %.lr.ph2867.preheader5070
  %indvars.iv3155.unr = phi i64 [ %indvars.iv3155.ph, %.lr.ph2867.preheader5070 ], [ %indvars.iv.next3156.prol, %.lr.ph2867.prol ]
  %i.jnj = icmp eq i64 %indvars.iv3155.ph, %i.iyk
  br i1 %i.jnj, label %._crit_edge2868, label %.lr.ph2867

scalar.ph4475:                                    ; preds = %scalar.ph4475.preheader, %scalar.ph4475
  %indvars.iv3152 = phi i64 [ %indvars.iv.next3153, %scalar.ph4475 ], [ %indvars.iv3152.ph, %scalar.ph4475.preheader ] ; 10 uses
  %i.jnk = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %indvars.iv3152
  %i.jnl = load i16, ptr %i.jnk, align 2, !tbaa !60
  %i.jnm = tail call i16 @llvm.bswap.i16(i16 %i.jnl)
  %i.jnn = zext i16 %i.jnm to i32
  %i.jno = lshr i32 %i.jnn, %i.fm
  %i.jnp = add nuw nsw i32 %i.jno, %i.iyp
  %i.jnq = lshr i32 %i.jnp, %i.ibm                ; 2 uses
  %i.jnr = lshr i32 %i.jnq, %i.fk
  %i.jns = sub nsw i32 %i.jnq, %i.jnr
  %i.jnt = shl i32 %i.jns, %i.fo
  %i.jnu = trunc i32 %i.jnt to i16
  %i.jnv = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %indvars.iv3152
  store i16 %i.jnu, ptr %i.jnv, align 2, !tbaa !60
  %i.jnw = or disjoint i64 %indvars.iv3152, 1     ; 2 uses
  %i.jnx = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jnw
  %i.jny = load i16, ptr %i.jnx, align 2, !tbaa !60
  %i.jnz = tail call i16 @llvm.bswap.i16(i16 %i.jny)
  %i.joa = zext i16 %i.jnz to i32
  %i.job = lshr i32 %i.joa, %i.fm
  %i.joc = add nuw nsw i32 %i.job, %i.iys
  %i.jod = lshr i32 %i.joc, %i.ibm                ; 2 uses
  %i.joe = lshr i32 %i.jod, %i.fk
  %i.jof = sub nsw i32 %i.jod, %i.joe
  %i.jog = shl i32 %i.jof, %i.fo
  %i.joh = trunc i32 %i.jog to i16
  %i.joi = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jnw
  store i16 %i.joh, ptr %i.joi, align 2, !tbaa !60
  %i.joj = or disjoint i64 %indvars.iv3152, 2     ; 2 uses
  %i.jok = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.joj
  %i.jol = load i16, ptr %i.jok, align 2, !tbaa !60
  %i.jom = tail call i16 @llvm.bswap.i16(i16 %i.jol)
  %i.jon = zext i16 %i.jom to i32
  %i.joo = lshr i32 %i.jon, %i.fm
  %i.jop = add nuw nsw i32 %i.joo, %i.iyv
  %i.joq = lshr i32 %i.jop, %i.ibm                ; 2 uses
  %i.jor = lshr i32 %i.joq, %i.fk
  %i.jos = sub nsw i32 %i.joq, %i.jor
  %i.jot = shl i32 %i.jos, %i.fo
  %i.jou = trunc i32 %i.jot to i16
  %i.jov = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.joj
  store i16 %i.jou, ptr %i.jov, align 2, !tbaa !60
  %i.jow = or disjoint i64 %indvars.iv3152, 3     ; 2 uses
  %i.jox = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jow
  %i.joy = load i16, ptr %i.jox, align 2, !tbaa !60
  %i.joz = tail call i16 @llvm.bswap.i16(i16 %i.joy)
  %i.jpa = zext i16 %i.joz to i32
  %i.jpb = lshr i32 %i.jpa, %i.fm
  %i.jpc = add nuw nsw i32 %i.jpb, %i.iyy
  %i.jpd = lshr i32 %i.jpc, %i.ibm                ; 2 uses
  %i.jpe = lshr i32 %i.jpd, %i.fk
  %i.jpf = sub nsw i32 %i.jpd, %i.jpe
  %i.jpg = shl i32 %i.jpf, %i.fo
  %i.jph = trunc i32 %i.jpg to i16
  %i.jpi = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jow
  store i16 %i.jph, ptr %i.jpi, align 2, !tbaa !60
  %i.jpj = or disjoint i64 %indvars.iv3152, 4     ; 2 uses
  %i.jpk = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jpj
  %i.jpl = load i16, ptr %i.jpk, align 2, !tbaa !60
  %i.jpm = tail call i16 @llvm.bswap.i16(i16 %i.jpl)
  %i.jpn = zext i16 %i.jpm to i32
  %i.jpo = lshr i32 %i.jpn, %i.fm
  %i.jpp = add nuw nsw i32 %i.jpo, %i.izb
  %i.jpq = lshr i32 %i.jpp, %i.ibm                ; 2 uses
  %i.jpr = lshr i32 %i.jpq, %i.fk
  %i.jps = sub nsw i32 %i.jpq, %i.jpr
  %i.jpt = shl i32 %i.jps, %i.fo
  %i.jpu = trunc i32 %i.jpt to i16
  %i.jpv = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jpj
  store i16 %i.jpu, ptr %i.jpv, align 2, !tbaa !60
  %i.jpw = or disjoint i64 %indvars.iv3152, 5     ; 2 uses
  %i.jpx = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jpw
  %i.jpy = load i16, ptr %i.jpx, align 2, !tbaa !60
  %i.jpz = tail call i16 @llvm.bswap.i16(i16 %i.jpy)
  %i.jqa = zext i16 %i.jpz to i32
  %i.jqb = lshr i32 %i.jqa, %i.fm
  %i.jqc = add nuw nsw i32 %i.jqb, %i.ize
  %i.jqd = lshr i32 %i.jqc, %i.ibm                ; 2 uses
  %i.jqe = lshr i32 %i.jqd, %i.fk
  %i.jqf = sub nsw i32 %i.jqd, %i.jqe
  %i.jqg = shl i32 %i.jqf, %i.fo
  %i.jqh = trunc i32 %i.jqg to i16
  %i.jqi = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jpw
  store i16 %i.jqh, ptr %i.jqi, align 2, !tbaa !60
  %i.jqj = or disjoint i64 %indvars.iv3152, 6     ; 2 uses
  %i.jqk = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jqj
  %i.jql = load i16, ptr %i.jqk, align 2, !tbaa !60
  %i.jqm = tail call i16 @llvm.bswap.i16(i16 %i.jql)
  %i.jqn = zext i16 %i.jqm to i32
  %i.jqo = lshr i32 %i.jqn, %i.fm
  %i.jqp = add nuw nsw i32 %i.jqo, %i.izh
  %i.jqq = lshr i32 %i.jqp, %i.ibm                ; 2 uses
  %i.jqr = lshr i32 %i.jqq, %i.fk
  %i.jqs = sub nsw i32 %i.jqq, %i.jqr
  %i.jqt = shl i32 %i.jqs, %i.fo
  %i.jqu = trunc i32 %i.jqt to i16
  %i.jqv = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jqj
  store i16 %i.jqu, ptr %i.jqv, align 2, !tbaa !60
  %i.jqw = or disjoint i64 %indvars.iv3152, 7     ; 2 uses
  %i.jqx = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %i.jqw
  %i.jqy = load i16, ptr %i.jqx, align 2, !tbaa !60
  %i.jqz = tail call i16 @llvm.bswap.i16(i16 %i.jqy)
  %i.jra = zext i16 %i.jqz to i32
  %i.jrb = lshr i32 %i.jra, %i.fm
  %i.jrc = add nuw nsw i32 %i.jrb, %i.izk
  %i.jrd = lshr i32 %i.jrc, %i.ibm                ; 2 uses
  %i.jre = lshr i32 %i.jrd, %i.fk
  %i.jrf = sub nsw i32 %i.jrd, %i.jre
  %i.jrg = shl i32 %i.jrf, %i.fo
  %i.jrh = trunc i32 %i.jrg to i16
  %i.jri = getelementptr inbounds nuw [2 x i8], ptr %.925052870, i64 %i.jqw
  store i16 %i.jrh, ptr %i.jri, align 2, !tbaa !60
  %indvars.iv.next3153 = add nuw nsw i64 %indvars.iv3152, 8 ; 3 uses
  %i.jrj = icmp samesign ult i64 %indvars.iv.next3153, %i.ixi
  br i1 %i.jrj, label %scalar.ph4475, label %.preheader2730.loopexit, !llvm.loop !406

.lr.ph2867:                                       ; preds = %.lr.ph2867.prol.loopexit, %.lr.ph2867
  %indvars.iv3155 = phi i64 [ %indvars.iv.next3156.1, %.lr.ph2867 ], [ %indvars.iv3155.unr, %.lr.ph2867.prol.loopexit ] ; 5 uses
  %i.jrk = getelementptr inbounds nuw [2 x i8], ptr %.1425242869, i64 %indvars.iv3155
  %i.jrl = load i16, ptr %i.jrk, align 2, !tbaa !60
  %i.jrm = tail call i16 @llvm.bswap.i16(i16 %i.jrl)
  %i.jrn = zext i16 %i.jrm to i32
  %i.jro = and i64 %indvars.iv3155, 7
  %i.jrp = getelementptr inbounds nuw i8, ptr %i.iyn, i64 %i.jro
  %i.jrq = load i8, ptr %i.jrp, align 1, !tbaa !64
  %i.jrr = zext i8 %i.jrq to i32
  %i.jrs = add nuw nsw i32 %i.jrn, %i.jrr
  %i.jrt = lshr i32 %i.jrs, %i.ibm                ; 2 uses
  %i.jru = lshr i32 %i.jrt, %i.fk
  %i.jrv = sub nsw i32 %i.jrt, %i.jru
  %i.jrw = shl i32 %i.jrv, %i.fo
end_hunk_8
begin_hunk_9_@planarCopyWrapper:bb.a
  %i.kah = getelementptr inbounds nuw i8, ptr %i.kag, i64 88
  %i.kai = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kaj = getelementptr inbounds nuw i8, ptr %i.kai, i64 104
  %i.kak = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kal = getelementptr inbounds nuw i8, ptr %i.kak, i64 120
  %i.kam = load i16, ptr %i.jzx, align 2, !tbaa !60, !alias.scope !499
  %i.kan = load i16, ptr %i.jzz, align 2, !tbaa !60, !alias.scope !499
  %i.kao = load i16, ptr %i.kab, align 2, !tbaa !60, !alias.scope !499
  %i.kap = load i16, ptr %i.kad, align 2, !tbaa !60, !alias.scope !499
  %i.kaq = load i16, ptr %i.kaf, align 2, !tbaa !60, !alias.scope !499
  %i.kar = load i16, ptr %i.kah, align 2, !tbaa !60, !alias.scope !499
  %i.kas = load i16, ptr %i.kaj, align 2, !tbaa !60, !alias.scope !499
  %i.kat = load i16, ptr %i.kal, align 2, !tbaa !60, !alias.scope !499
  %i.kau = insertelement <8 x i16> poison, i16 %i.kam, i64 0
  %i.kav = insertelement <8 x i16> %i.kau, i16 %i.kan, i64 1
  %i.kaw = insertelement <8 x i16> %i.kav, i16 %i.kao, i64 2
  %i.kax = insertelement <8 x i16> %i.kaw, i16 %i.kap, i64 3
  %i.kay = insertelement <8 x i16> %i.kax, i16 %i.kaq, i64 4
  %i.kaz = insertelement <8 x i16> %i.kay, i16 %i.kar, i64 5
  %i.kba = insertelement <8 x i16> %i.kaz, i16 %i.kas, i64 6
  %i.kbb = insertelement <8 x i16> %i.kba, i16 %i.kat, i64 7
  %i.kbc = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kbb)
  %i.kbd = zext <8 x i16> %i.kbc to <8 x i32>
  %i.kbe = lshr <8 x i32> %i.kbd, %broadcast.splat4584 ; 2 uses
  %i.kbf = lshr <8 x i32> %i.kbe, %broadcast.splat4586
  %i.kbg = add nuw nsw <8 x i32> %i.kbe, %broadcast.splat4576
  %i.kbh = sub nsw <8 x i32> %i.kbg, %i.kbf
  %i.kbi = lshr <8 x i32> %i.kbh, %broadcast.splat4588
  %i.kbj = shl <8 x i32> %i.kbi, %broadcast.splat4590
  %i.kbk = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbl = getelementptr inbounds nuw i8, ptr %i.kbk, i64 10
  %i.kbm = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbn = getelementptr inbounds nuw i8, ptr %i.kbm, i64 26
  %i.kbo = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbp = getelementptr inbounds nuw i8, ptr %i.kbo, i64 42
  %i.kbq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbr = getelementptr inbounds nuw i8, ptr %i.kbq, i64 58
  %i.kbs = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbt = getelementptr inbounds nuw i8, ptr %i.kbs, i64 74
  %i.kbu = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbv = getelementptr inbounds nuw i8, ptr %i.kbu, i64 90
  %i.kbw = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbx = getelementptr inbounds nuw i8, ptr %i.kbw, i64 106
  %i.kby = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kbz = getelementptr inbounds nuw i8, ptr %i.kby, i64 122
  %i.kca = load i16, ptr %i.kbl, align 2, !tbaa !60, !alias.scope !499
  %i.kcb = load i16, ptr %i.kbn, align 2, !tbaa !60, !alias.scope !499
  %i.kcc = load i16, ptr %i.kbp, align 2, !tbaa !60, !alias.scope !499
  %i.kcd = load i16, ptr %i.kbr, align 2, !tbaa !60, !alias.scope !499
  %i.kce = load i16, ptr %i.kbt, align 2, !tbaa !60, !alias.scope !499
  %i.kcf = load i16, ptr %i.kbv, align 2, !tbaa !60, !alias.scope !499
  %i.kcg = load i16, ptr %i.kbx, align 2, !tbaa !60, !alias.scope !499
  %i.kch = load i16, ptr %i.kbz, align 2, !tbaa !60, !alias.scope !499
  %i.kci = insertelement <8 x i16> poison, i16 %i.kca, i64 0
  %i.kcj = insertelement <8 x i16> %i.kci, i16 %i.kcb, i64 1
  %i.kck = insertelement <8 x i16> %i.kcj, i16 %i.kcc, i64 2
  %i.kcl = insertelement <8 x i16> %i.kck, i16 %i.kcd, i64 3
  %i.kcm = insertelement <8 x i16> %i.kcl, i16 %i.kce, i64 4
  %i.kcn = insertelement <8 x i16> %i.kcm, i16 %i.kcf, i64 5
  %i.kco = insertelement <8 x i16> %i.kcn, i16 %i.kcg, i64 6
  %i.kcp = insertelement <8 x i16> %i.kco, i16 %i.kch, i64 7
  %i.kcq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kcp)
  %i.kcr = zext <8 x i16> %i.kcq to <8 x i32>
  %i.kcs = lshr <8 x i32> %i.kcr, %broadcast.splat4584 ; 2 uses
  %i.kct = lshr <8 x i32> %i.kcs, %broadcast.splat4586
  %i.kcu = add nuw nsw <8 x i32> %i.kcs, %broadcast.splat4578
  %i.kcv = sub nsw <8 x i32> %i.kcu, %i.kct
  %i.kcw = lshr <8 x i32> %i.kcv, %broadcast.splat4588
  %i.kcx = shl <8 x i32> %i.kcw, %broadcast.splat4590
  %i.kcy = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kcz = getelementptr inbounds nuw i8, ptr %i.kcy, i64 12
  %i.kda = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdb = getelementptr inbounds nuw i8, ptr %i.kda, i64 28
  %i.kdc = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdd = getelementptr inbounds nuw i8, ptr %i.kdc, i64 44
  %i.kde = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdf = getelementptr inbounds nuw i8, ptr %i.kde, i64 60
  %i.kdg = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdh = getelementptr inbounds nuw i8, ptr %i.kdg, i64 76
  %i.kdi = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdj = getelementptr inbounds nuw i8, ptr %i.kdi, i64 92
  %i.kdk = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdl = getelementptr inbounds nuw i8, ptr %i.kdk, i64 108
  %i.kdm = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kdn = getelementptr inbounds nuw i8, ptr %i.kdm, i64 124
  %i.kdo = load i16, ptr %i.kcz, align 2, !tbaa !60, !alias.scope !499
  %i.kdp = load i16, ptr %i.kdb, align 2, !tbaa !60, !alias.scope !499
  %i.kdq = load i16, ptr %i.kdd, align 2, !tbaa !60, !alias.scope !499
  %i.kdr = load i16, ptr %i.kdf, align 2, !tbaa !60, !alias.scope !499
  %i.kds = load i16, ptr %i.kdh, align 2, !tbaa !60, !alias.scope !499
  %i.kdt = load i16, ptr %i.kdj, align 2, !tbaa !60, !alias.scope !499
  %i.kdu = load i16, ptr %i.kdl, align 2, !tbaa !60, !alias.scope !499
  %i.kdv = load i16, ptr %i.kdn, align 2, !tbaa !60, !alias.scope !499
  %i.kdw = insertelement <8 x i16> poison, i16 %i.kdo, i64 0
  %i.kdx = insertelement <8 x i16> %i.kdw, i16 %i.kdp, i64 1
  %i.kdy = insertelement <8 x i16> %i.kdx, i16 %i.kdq, i64 2
  %i.kdz = insertelement <8 x i16> %i.kdy, i16 %i.kdr, i64 3
  %i.kea = insertelement <8 x i16> %i.kdz, i16 %i.kds, i64 4
  %i.keb = insertelement <8 x i16> %i.kea, i16 %i.kdt, i64 5
  %i.kec = insertelement <8 x i16> %i.keb, i16 %i.kdu, i64 6
  %i.ked = insertelement <8 x i16> %i.kec, i16 %i.kdv, i64 7
  %i.kee = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ked)
  %i.kef = zext <8 x i16> %i.kee to <8 x i32>
  %i.keg = lshr <8 x i32> %i.kef, %broadcast.splat4584 ; 2 uses
  %i.keh = lshr <8 x i32> %i.keg, %broadcast.splat4586
  %i.kei = add nuw nsw <8 x i32> %i.keg, %broadcast.splat4580
  %i.kej = sub nsw <8 x i32> %i.kei, %i.keh
  %i.kek = lshr <8 x i32> %i.kej, %broadcast.splat4588
  %i.kel = shl <8 x i32> %i.kek, %broadcast.splat4590
  %i.kem = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.ken = getelementptr inbounds nuw i8, ptr %i.kem, i64 14
  %i.keo = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kep = getelementptr inbounds nuw i8, ptr %i.keo, i64 30
  %i.keq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.ker = getelementptr inbounds nuw i8, ptr %i.keq, i64 46
  %i.kes = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.ket = getelementptr inbounds nuw i8, ptr %i.kes, i64 62
  %i.keu = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kev = getelementptr inbounds nuw i8, ptr %i.keu, i64 78
  %i.kew = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kex = getelementptr inbounds nuw i8, ptr %i.kew, i64 94
  %i.key = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kez = getelementptr inbounds nuw i8, ptr %i.key, i64 110
  %i.kfa = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.jtr
  %i.kfb = getelementptr inbounds nuw i8, ptr %i.kfa, i64 126
  %i.kfc = load i16, ptr %i.ken, align 2, !tbaa !60, !alias.scope !499
  %i.kfd = load i16, ptr %i.kep, align 2, !tbaa !60, !alias.scope !499
  %i.kfe = load i16, ptr %i.ker, align 2, !tbaa !60, !alias.scope !499
  %i.kff = load i16, ptr %i.ket, align 2, !tbaa !60, !alias.scope !499
  %i.kfg = load i16, ptr %i.kev, align 2, !tbaa !60, !alias.scope !499
  %i.kfh = load i16, ptr %i.kex, align 2, !tbaa !60, !alias.scope !499
  %i.kfi = load i16, ptr %i.kez, align 2, !tbaa !60, !alias.scope !499
  %i.kfj = load i16, ptr %i.kfb, align 2, !tbaa !60, !alias.scope !499
  %i.kfk = insertelement <8 x i16> poison, i16 %i.kfc, i64 0
  %i.kfl = insertelement <8 x i16> %i.kfk, i16 %i.kfd, i64 1
  %i.kfm = insertelement <8 x i16> %i.kfl, i16 %i.kfe, i64 2
  %i.kfn = insertelement <8 x i16> %i.kfm, i16 %i.kff, i64 3
  %i.kfo = insertelement <8 x i16> %i.kfn, i16 %i.kfg, i64 4
  %i.kfp = insertelement <8 x i16> %i.kfo, i16 %i.kfh, i64 5
  %i.kfq = insertelement <8 x i16> %i.kfp, i16 %i.kfi, i64 6
  %i.kfr = insertelement <8 x i16> %i.kfq, i16 %i.kfj, i64 7
  %i.kfs = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kfr)
  %i.kft = zext <8 x i16> %i.kfs to <8 x i32>
  %i.kfu = lshr <8 x i32> %i.kft, %broadcast.splat4584 ; 2 uses
  %i.kfv = lshr <8 x i32> %i.kfu, %broadcast.splat4586
  %i.kfw = add nuw nsw <8 x i32> %i.kfu, %broadcast.splat4582
  %i.kfx = sub nsw <8 x i32> %i.kfw, %i.kfv
  %i.kfy = lshr <8 x i32> %i.kfx, %broadcast.splat4588
  %i.kfz = shl <8 x i32> %i.kfy, %broadcast.splat4590
  %i.kga = shufflevector <8 x i32> %i.jve, <8 x i32> %i.jwt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kgb = trunc <16 x i32> %i.kga to <16 x i16>
  %i.kgc = shufflevector <8 x i32> %i.jyh, <8 x i32> %i.jzv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kgd = trunc <16 x i32> %i.kgc to <16 x i16>
  %i.kge = shufflevector <8 x i32> %i.kbj, <8 x i32> %i.kcx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kgf = trunc <16 x i32> %i.kge to <16 x i16>
  %i.kgg = shufflevector <8 x i32> %i.kel, <8 x i32> %i.kfz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.kgh = trunc <16 x i32> %i.kgg to <16 x i16>
  %i.kgi = shufflevector <16 x i16> %i.kgb, <16 x i16> %i.kgd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.kgj = shufflevector <16 x i16> %i.kgf, <16 x i16> %i.kgh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec4593 = shufflevector <32 x i16> %i.kgi, <32 x i16> %i.kgj, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x i16> %interleaved.vec4593, ptr %i.jvf, align 2, !tbaa !60, !alias.scope !500, !noalias !499
  %index.next4594 = add nuw i64 %index4592, 8     ; 2 uses
  %i.kgk = icmp eq i64 %index.next4594, %n.vec4566
  br i1 %i.kgk, label %middle.block4595, label %vector.body4591, !llvm.loop !412

middle.block4595:                                 ; preds = %vector.body4591
  br i1 %cmp.n4596, label %.preheader2731.loopexit, label %scalar.ph4557.preheader

scalar.ph4557.preheader:                          ; preds = %.lr.ph2853, %middle.block4595
  %indvars.iv3143.ph = phi i64 [ %i.iwv, %middle.block4595 ], [ 0, %.lr.ph2853 ]
  br label %scalar.ph4557

.preheader2731.loopexit:                          ; preds = %scalar.ph4557, %middle.block4595
  %indvars.iv.next3144.lcssa = phi i64 [ %i.iwv, %middle.block4595 ], [ %indvars.iv.next3144, %scalar.ph4557 ]
  %i.kgl = trunc nuw nsw i64 %indvars.iv.next3144.lcssa to i32
  br label %.preheader2731

.preheader2731:                                   ; preds = %.preheader2731.loopexit, %bb.cj
  %.42.lcssa = phi i32 [ 0, %bb.cj ], [ %i.kgl, %.preheader2731.loopexit ] ; 3 uses
  %i.kgm = icmp slt i32 %.42.lcssa, %.024902630263526392642
  br i1 %i.kgm, label %.lr.ph2856.preheader, label %._crit_edge2857

.lr.ph2856.preheader:                             ; preds = %.preheader2731
  %i.kgn = zext i32 %.42.lcssa to i64             ; 8 uses
  %i.kgo = sub nsw i64 %wide.trip.count3149, %i.kgn ; 3 uses
  %min.iters.check4524 = icmp ult i64 %i.kgo, 8
  br i1 %min.iters.check4524, label %.lr.ph2856.preheader5071, label %vector.scevcheck4516

vector.scevcheck4516:                             ; preds = %.lr.ph2856.preheader
  %i.kgp = xor i64 %i.kgn, -1
  %i.kgq = add nsw i64 %i.kgp, %wide.trip.count3149 ; 2 uses
  %i.kgr = trunc i32 %.42.lcssa to i3
  %i.kgs = trunc i64 %i.kgq to i3
  %i.kgt = xor i3 %i.kgr, -1
  %i.kgu = icmp ult i3 %i.kgt, %i.kgs
  %i.kgv = icmp ugt i64 %i.kgq, 7
  %i.kgw = or i1 %i.kgu, %i.kgv
  br i1 %i.kgw, label %.lr.ph2856.preheader5071, label %vector.memcheck4525

vector.memcheck4525:                              ; preds = %vector.scevcheck4516
  %i.kgx = mul nsw i64 %indvar4521, %i.iwa
  %.reass5216 = add i64 %i.kgx, %invariant.op5215
  %diff.check4526 = icmp ult i64 %.reass5216, 15
  br i1 %diff.check4526, label %.lr.ph2856.preheader5071, label %vector.ph4527

vector.ph4527:                                    ; preds = %vector.memcheck4525
  %n.vec4528 = and i64 %i.kgo, -8                 ; 3 uses
  %i.kgy = add nsw i64 %n.vec4528, %i.kgn
  %i.kgz = and i64 %i.kgn, 7
  %i.kha = getelementptr inbounds nuw i8, ptr %i.jst, i64 %i.kgz
  %wide.load4536 = load <8 x i8>, ptr %i.kha, align 1, !tbaa !64
  %i.khb = zext <8 x i8> %wide.load4536 to <8 x i32>
  br label %vector.body4533

vector.body4533:                                  ; preds = %vector.body4533, %vector.ph4527
  %index4534 = phi i64 [ 0, %vector.ph4527 ], [ %index.next4537, %vector.body4533 ] ; 2 uses
  %i.khc = add nuw i64 %index4534, %i.kgn         ; 2 uses
  %i.khd = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.khc
  %wide.load4535 = load <8 x i16>, ptr %i.khd, align 2, !tbaa !60
  %i.khe = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4535)
  %i.khf = zext <8 x i16> %i.khe to <8 x i32>     ; 2 uses
  %i.khg = lshr <8 x i32> %i.khf, %broadcast.splat4530
  %i.khh = add nuw nsw <8 x i32> %i.khb, %i.khf
  %i.khi = sub nsw <8 x i32> %i.khh, %i.khg
  %i.khj = lshr <8 x i32> %i.khi, %broadcast.splat4532
  %i.khk = trunc <8 x i32> %i.khj to <8 x i16>
  %i.khl = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.khc
  store <8 x i16> %i.khk, ptr %i.khl, align 2, !tbaa !60
  %index.next4537 = add nuw i64 %index4534, 8     ; 2 uses
  %i.khm = icmp eq i64 %index.next4537, %n.vec4528
  br i1 %i.khm, label %middle.block4538, label %vector.body4533, !llvm.loop !413

middle.block4538:                                 ; preds = %vector.body4533
  %cmp.n4539 = icmp eq i64 %i.kgo, %n.vec4528
  br i1 %cmp.n4539, label %._crit_edge2857, label %.lr.ph2856.preheader5071

.lr.ph2856.preheader5071:                         ; preds = %vector.memcheck4525, %vector.scevcheck4516, %.lr.ph2856.preheader, %middle.block4538
  %indvars.iv3146.ph = phi i64 [ %i.kgn, %vector.memcheck4525 ], [ %i.kgn, %vector.scevcheck4516 ], [ %i.kgn, %.lr.ph2856.preheader ], [ %i.kgy, %middle.block4538 ] ; 7 uses
  %i.khn = sub nsw i64 %wide.trip.count3149, %indvars.iv3146.ph
  %xtraiter5134 = and i64 %i.khn, 1
  %lcmp.mod5135.not = icmp eq i64 %xtraiter5134, 0
  br i1 %lcmp.mod5135.not, label %.lr.ph2856.prol.loopexit, label %.lr.ph2856.prol

.lr.ph2856.prol:                                  ; preds = %.lr.ph2856.preheader5071
  %i.kho = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %indvars.iv3146.ph
  %i.khp = load i16, ptr %i.kho, align 2, !tbaa !60
  %i.khq = tail call i16 @llvm.bswap.i16(i16 %i.khp)
  %i.khr = zext i16 %i.khq to i32                 ; 2 uses
  %i.khs = lshr i32 %i.khr, %i.fk
  %i.kht = and i64 %indvars.iv3146.ph, 7
  %i.khu = getelementptr inbounds nuw i8, ptr %i.jst, i64 %i.kht
  %i.khv = load i8, ptr %i.khu, align 1, !tbaa !64
  %i.khw = zext i8 %i.khv to i32
  %i.khx = add nuw nsw i32 %i.khw, %i.khr
  %i.khy = sub nsw i32 %i.khx, %i.khs
  %i.khz = lshr i32 %i.khy, %i.ibm
  %i.kia = trunc i32 %i.khz to i16
  %i.kib = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %indvars.iv3146.ph
  store i16 %i.kia, ptr %i.kib, align 2, !tbaa !60
  %indvars.iv.next3147.prol = add nuw nsw i64 %indvars.iv3146.ph, 1
  br label %.lr.ph2856.prol.loopexit

.lr.ph2856.prol.loopexit:                         ; preds = %.lr.ph2856.prol, %.lr.ph2856.preheader5071
  %indvars.iv3146.unr = phi i64 [ %indvars.iv3146.ph, %.lr.ph2856.preheader5071 ], [ %indvars.iv.next3147.prol, %.lr.ph2856.prol ]
  %i.kic = icmp eq i64 %indvars.iv3146.ph, %i.iww
  br i1 %i.kic, label %._crit_edge2857, label %.lr.ph2856

scalar.ph4557:                                    ; preds = %scalar.ph4557.preheader, %scalar.ph4557
  %indvars.iv3143 = phi i64 [ %indvars.iv.next3144, %scalar.ph4557 ], [ %indvars.iv3143.ph, %scalar.ph4557.preheader ] ; 10 uses
  %i.kid = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %indvars.iv3143
  %i.kie = load i16, ptr %i.kid, align 2, !tbaa !60
  %i.kif = tail call i16 @llvm.bswap.i16(i16 %i.kie)
  %i.kig = zext i16 %i.kif to i32
  %i.kih = lshr i32 %i.kig, %i.fm                 ; 2 uses
  %i.kii = lshr i32 %i.kih, %i.fk
  %i.kij = add nuw nsw i32 %i.kih, %i.jsv
  %i.kik = sub nsw i32 %i.kij, %i.kii
  %i.kil = lshr i32 %i.kik, %i.ibm
  %i.kim = shl i32 %i.kil, %i.fo
  %i.kin = trunc i32 %i.kim to i16
  %i.kio = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %indvars.iv3143
  store i16 %i.kin, ptr %i.kio, align 2, !tbaa !60
  %i.kip = or disjoint i64 %indvars.iv3143, 1     ; 2 uses
  %i.kiq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.kip
  %i.kir = load i16, ptr %i.kiq, align 2, !tbaa !60
  %i.kis = tail call i16 @llvm.bswap.i16(i16 %i.kir)
  %i.kit = zext i16 %i.kis to i32
  %i.kiu = lshr i32 %i.kit, %i.fm                 ; 2 uses
  %i.kiv = lshr i32 %i.kiu, %i.fk
  %i.kiw = add nuw nsw i32 %i.kiu, %i.jsy
  %i.kix = sub nsw i32 %i.kiw, %i.kiv
  %i.kiy = lshr i32 %i.kix, %i.ibm
  %i.kiz = shl i32 %i.kiy, %i.fo
  %i.kja = trunc i32 %i.kiz to i16
  %i.kjb = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.kip
  store i16 %i.kja, ptr %i.kjb, align 2, !tbaa !60
  %i.kjc = or disjoint i64 %indvars.iv3143, 2     ; 2 uses
  %i.kjd = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.kjc
  %i.kje = load i16, ptr %i.kjd, align 2, !tbaa !60
  %i.kjf = tail call i16 @llvm.bswap.i16(i16 %i.kje)
  %i.kjg = zext i16 %i.kjf to i32
  %i.kjh = lshr i32 %i.kjg, %i.fm                 ; 2 uses
  %i.kji = lshr i32 %i.kjh, %i.fk
  %i.kjj = add nuw nsw i32 %i.kjh, %i.jtb
  %i.kjk = sub nsw i32 %i.kjj, %i.kji
  %i.kjl = lshr i32 %i.kjk, %i.ibm
  %i.kjm = shl i32 %i.kjl, %i.fo
  %i.kjn = trunc i32 %i.kjm to i16
  %i.kjo = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.kjc
  store i16 %i.kjn, ptr %i.kjo, align 2, !tbaa !60
  %i.kjp = or disjoint i64 %indvars.iv3143, 3     ; 2 uses
  %i.kjq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.kjp
  %i.kjr = load i16, ptr %i.kjq, align 2, !tbaa !60
  %i.kjs = tail call i16 @llvm.bswap.i16(i16 %i.kjr)
  %i.kjt = zext i16 %i.kjs to i32
  %i.kju = lshr i32 %i.kjt, %i.fm                 ; 2 uses
  %i.kjv = lshr i32 %i.kju, %i.fk
  %i.kjw = add nuw nsw i32 %i.kju, %i.jte
  %i.kjx = sub nsw i32 %i.kjw, %i.kjv
  %i.kjy = lshr i32 %i.kjx, %i.ibm
  %i.kjz = shl i32 %i.kjy, %i.fo
  %i.kka = trunc i32 %i.kjz to i16
  %i.kkb = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.kjp
  store i16 %i.kka, ptr %i.kkb, align 2, !tbaa !60
  %i.kkc = or disjoint i64 %indvars.iv3143, 4     ; 2 uses
  %i.kkd = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.kkc
  %i.kke = load i16, ptr %i.kkd, align 2, !tbaa !60
  %i.kkf = tail call i16 @llvm.bswap.i16(i16 %i.kke)
  %i.kkg = zext i16 %i.kkf to i32
  %i.kkh = lshr i32 %i.kkg, %i.fm                 ; 2 uses
  %i.kki = lshr i32 %i.kkh, %i.fk
  %i.kkj = add nuw nsw i32 %i.kkh, %i.jth
  %i.kkk = sub nsw i32 %i.kkj, %i.kki
  %i.kkl = lshr i32 %i.kkk, %i.ibm
  %i.kkm = shl i32 %i.kkl, %i.fo
  %i.kkn = trunc i32 %i.kkm to i16
  %i.kko = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.kkc
  store i16 %i.kkn, ptr %i.kko, align 2, !tbaa !60
  %i.kkp = or disjoint i64 %indvars.iv3143, 5     ; 2 uses
  %i.kkq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.kkp
  %i.kkr = load i16, ptr %i.kkq, align 2, !tbaa !60
  %i.kks = tail call i16 @llvm.bswap.i16(i16 %i.kkr)
  %i.kkt = zext i16 %i.kks to i32
  %i.kku = lshr i32 %i.kkt, %i.fm                 ; 2 uses
  %i.kkv = lshr i32 %i.kku, %i.fk
  %i.kkw = add nuw nsw i32 %i.kku, %i.jtk
  %i.kkx = sub nsw i32 %i.kkw, %i.kkv
  %i.kky = lshr i32 %i.kkx, %i.ibm
  %i.kkz = shl i32 %i.kky, %i.fo
  %i.kla = trunc i32 %i.kkz to i16
  %i.klb = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.kkp
  store i16 %i.kla, ptr %i.klb, align 2, !tbaa !60
  %i.klc = or disjoint i64 %indvars.iv3143, 6     ; 2 uses
  %i.kld = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.klc
  %i.kle = load i16, ptr %i.kld, align 2, !tbaa !60
  %i.klf = tail call i16 @llvm.bswap.i16(i16 %i.kle)
  %i.klg = zext i16 %i.klf to i32
  %i.klh = lshr i32 %i.klg, %i.fm                 ; 2 uses
  %i.kli = lshr i32 %i.klh, %i.fk
  %i.klj = add nuw nsw i32 %i.klh, %i.jtn
  %i.klk = sub nsw i32 %i.klj, %i.kli
  %i.kll = lshr i32 %i.klk, %i.ibm
  %i.klm = shl i32 %i.kll, %i.fo
  %i.kln = trunc i32 %i.klm to i16
  %i.klo = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.klc
  store i16 %i.kln, ptr %i.klo, align 2, !tbaa !60
  %i.klp = or disjoint i64 %indvars.iv3143, 7     ; 2 uses
  %i.klq = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %i.klp
  %i.klr = load i16, ptr %i.klq, align 2, !tbaa !60
  %i.kls = tail call i16 @llvm.bswap.i16(i16 %i.klr)
  %i.klt = zext i16 %i.kls to i32
  %i.klu = lshr i32 %i.klt, %i.fm                 ; 2 uses
  %i.klv = lshr i32 %i.klu, %i.fk
  %i.klw = add nuw nsw i32 %i.klu, %i.jtq
  %i.klx = sub nsw i32 %i.klw, %i.klv
  %i.kly = lshr i32 %i.klx, %i.ibm
  %i.klz = shl i32 %i.kly, %i.fo
  %i.kma = trunc i32 %i.klz to i16
  %i.kmb = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %i.klp
  store i16 %i.kma, ptr %i.kmb, align 2, !tbaa !60
  %indvars.iv.next3144 = add nuw nsw i64 %indvars.iv3143, 8 ; 3 uses
  %i.kmc = icmp samesign ult i64 %indvars.iv.next3144, %i.ivy
  br i1 %i.kmc, label %scalar.ph4557, label %.preheader2731.loopexit, !llvm.loop !414

.lr.ph2856:                                       ; preds = %.lr.ph2856.prol.loopexit, %.lr.ph2856
  %indvars.iv3146 = phi i64 [ %indvars.iv.next3147.1, %.lr.ph2856 ], [ %indvars.iv3146.unr, %.lr.ph2856.prol.loopexit ] ; 5 uses
  %i.kmd = getelementptr inbounds nuw [2 x i8], ptr %.1525252858, i64 %indvars.iv3146
  %i.kme = load i16, ptr %i.kmd, align 2, !tbaa !60
  %i.kmf = tail call i16 @llvm.bswap.i16(i16 %i.kme)
  %i.kmg = zext i16 %i.kmf to i32                 ; 2 uses
  %i.kmh = lshr i32 %i.kmg, %i.fk
  %i.kmi = and i64 %indvars.iv3146, 7
  %i.kmj = getelementptr inbounds nuw i8, ptr %i.jst, i64 %i.kmi
  %i.kmk = load i8, ptr %i.kmj, align 1, !tbaa !64
  %i.kml = zext i8 %i.kmk to i32
  %i.kmm = add nuw nsw i32 %i.kml, %i.kmg
  %i.kmn = sub nsw i32 %i.kmm, %i.kmh
  %i.kmo = lshr i32 %i.kmn, %i.ibm
  %i.kmp = trunc i32 %i.kmo to i16
  %i.kmq = getelementptr inbounds nuw [2 x i8], ptr %.1025062859, i64 %indvars.iv3146
  store i16 %i.kmp, ptr %i.kmq, align 2, !tbaa !60
end_hunk_9
begin_hunk_10_@planarCopyWrapper:bb.a
  %i.kul = add nuw <8 x i32> %i.kuk, %broadcast.splat4654
  %i.kum = lshr <8 x i32> %i.kul, %broadcast.splat4656 ; 2 uses
  %i.kun = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kuo = getelementptr inbounds nuw i8, ptr %i.kun, i64 8
  %i.kup = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kuq = getelementptr inbounds nuw i8, ptr %i.kup, i64 24
  %i.kur = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kus = getelementptr inbounds nuw i8, ptr %i.kur, i64 40
  %i.kut = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kuu = getelementptr inbounds nuw i8, ptr %i.kut, i64 56
  %i.kuv = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kuw = getelementptr inbounds nuw i8, ptr %i.kuv, i64 72
  %i.kux = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kuy = getelementptr inbounds nuw i8, ptr %i.kux, i64 88
  %i.kuz = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kva = getelementptr inbounds nuw i8, ptr %i.kuz, i64 104
  %i.kvb = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kvc = getelementptr inbounds nuw i8, ptr %i.kvb, i64 120
  %i.kvd = load i16, ptr %i.kuo, align 2, !tbaa !60, !alias.scope !501
  %i.kve = load i16, ptr %i.kuq, align 2, !tbaa !60, !alias.scope !501
  %i.kvf = load i16, ptr %i.kus, align 2, !tbaa !60, !alias.scope !501
  %i.kvg = load i16, ptr %i.kuu, align 2, !tbaa !60, !alias.scope !501
  %i.kvh = load i16, ptr %i.kuw, align 2, !tbaa !60, !alias.scope !501
  %i.kvi = load i16, ptr %i.kuy, align 2, !tbaa !60, !alias.scope !501
  %i.kvj = load i16, ptr %i.kva, align 2, !tbaa !60, !alias.scope !501
  %i.kvk = load i16, ptr %i.kvc, align 2, !tbaa !60, !alias.scope !501
  %i.kvl = insertelement <8 x i16> poison, i16 %i.kvd, i64 0
  %i.kvm = insertelement <8 x i16> %i.kvl, i16 %i.kve, i64 1
  %i.kvn = insertelement <8 x i16> %i.kvm, i16 %i.kvf, i64 2
  %i.kvo = insertelement <8 x i16> %i.kvn, i16 %i.kvg, i64 3
  %i.kvp = insertelement <8 x i16> %i.kvo, i16 %i.kvh, i64 4
  %i.kvq = insertelement <8 x i16> %i.kvp, i16 %i.kvi, i64 5
  %i.kvr = insertelement <8 x i16> %i.kvq, i16 %i.kvj, i64 6
  %i.kvs = insertelement <8 x i16> %i.kvr, i16 %i.kvk, i64 7
  %i.kvt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kvs)
  %i.kvu = zext <8 x i16> %i.kvt to <8 x i32>
  %i.kvv = lshr <8 x i32> %i.kvu, %broadcast.splat4652
  %i.kvw = add nuw <8 x i32> %i.kvv, %broadcast.splat4654
  %i.kvx = lshr <8 x i32> %i.kvw, %broadcast.splat4656 ; 2 uses
  %i.kvy = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kvz = getelementptr inbounds nuw i8, ptr %i.kvy, i64 10
  %i.kwa = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwb = getelementptr inbounds nuw i8, ptr %i.kwa, i64 26
  %i.kwc = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwd = getelementptr inbounds nuw i8, ptr %i.kwc, i64 42
  %i.kwe = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwf = getelementptr inbounds nuw i8, ptr %i.kwe, i64 58
  %i.kwg = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwh = getelementptr inbounds nuw i8, ptr %i.kwg, i64 74
  %i.kwi = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwj = getelementptr inbounds nuw i8, ptr %i.kwi, i64 90
  %i.kwk = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwl = getelementptr inbounds nuw i8, ptr %i.kwk, i64 106
  %i.kwm = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kwn = getelementptr inbounds nuw i8, ptr %i.kwm, i64 122
  %i.kwo = load i16, ptr %i.kvz, align 2, !tbaa !60, !alias.scope !501
  %i.kwp = load i16, ptr %i.kwb, align 2, !tbaa !60, !alias.scope !501
  %i.kwq = load i16, ptr %i.kwd, align 2, !tbaa !60, !alias.scope !501
  %i.kwr = load i16, ptr %i.kwf, align 2, !tbaa !60, !alias.scope !501
  %i.kws = load i16, ptr %i.kwh, align 2, !tbaa !60, !alias.scope !501
  %i.kwt = load i16, ptr %i.kwj, align 2, !tbaa !60, !alias.scope !501
  %i.kwu = load i16, ptr %i.kwl, align 2, !tbaa !60, !alias.scope !501
  %i.kwv = load i16, ptr %i.kwn, align 2, !tbaa !60, !alias.scope !501
  %i.kww = insertelement <8 x i16> poison, i16 %i.kwo, i64 0
  %i.kwx = insertelement <8 x i16> %i.kww, i16 %i.kwp, i64 1
  %i.kwy = insertelement <8 x i16> %i.kwx, i16 %i.kwq, i64 2
  %i.kwz = insertelement <8 x i16> %i.kwy, i16 %i.kwr, i64 3
  %i.kxa = insertelement <8 x i16> %i.kwz, i16 %i.kws, i64 4
  %i.kxb = insertelement <8 x i16> %i.kxa, i16 %i.kwt, i64 5
  %i.kxc = insertelement <8 x i16> %i.kxb, i16 %i.kwu, i64 6
  %i.kxd = insertelement <8 x i16> %i.kxc, i16 %i.kwv, i64 7
  %i.kxe = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kxd)
  %i.kxf = zext <8 x i16> %i.kxe to <8 x i32>
  %i.kxg = lshr <8 x i32> %i.kxf, %broadcast.splat4652
  %i.kxh = add nuw <8 x i32> %i.kxg, %broadcast.splat4654
  %i.kxi = lshr <8 x i32> %i.kxh, %broadcast.splat4656 ; 2 uses
  %i.kxj = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxk = getelementptr inbounds nuw i8, ptr %i.kxj, i64 12
  %i.kxl = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxm = getelementptr inbounds nuw i8, ptr %i.kxl, i64 28
  %i.kxn = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxo = getelementptr inbounds nuw i8, ptr %i.kxn, i64 44
  %i.kxp = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxq = getelementptr inbounds nuw i8, ptr %i.kxp, i64 60
  %i.kxr = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxs = getelementptr inbounds nuw i8, ptr %i.kxr, i64 76
  %i.kxt = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxu = getelementptr inbounds nuw i8, ptr %i.kxt, i64 92
  %i.kxv = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxw = getelementptr inbounds nuw i8, ptr %i.kxv, i64 108
  %i.kxx = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kxy = getelementptr inbounds nuw i8, ptr %i.kxx, i64 124
  %i.kxz = load i16, ptr %i.kxk, align 2, !tbaa !60, !alias.scope !501
  %i.kya = load i16, ptr %i.kxm, align 2, !tbaa !60, !alias.scope !501
  %i.kyb = load i16, ptr %i.kxo, align 2, !tbaa !60, !alias.scope !501
  %i.kyc = load i16, ptr %i.kxq, align 2, !tbaa !60, !alias.scope !501
  %i.kyd = load i16, ptr %i.kxs, align 2, !tbaa !60, !alias.scope !501
  %i.kye = load i16, ptr %i.kxu, align 2, !tbaa !60, !alias.scope !501
  %i.kyf = load i16, ptr %i.kxw, align 2, !tbaa !60, !alias.scope !501
  %i.kyg = load i16, ptr %i.kxy, align 2, !tbaa !60, !alias.scope !501
  %i.kyh = insertelement <8 x i16> poison, i16 %i.kxz, i64 0
  %i.kyi = insertelement <8 x i16> %i.kyh, i16 %i.kya, i64 1
  %i.kyj = insertelement <8 x i16> %i.kyi, i16 %i.kyb, i64 2
  %i.kyk = insertelement <8 x i16> %i.kyj, i16 %i.kyc, i64 3
  %i.kyl = insertelement <8 x i16> %i.kyk, i16 %i.kyd, i64 4
  %i.kym = insertelement <8 x i16> %i.kyl, i16 %i.kye, i64 5
  %i.kyn = insertelement <8 x i16> %i.kym, i16 %i.kyf, i64 6
  %i.kyo = insertelement <8 x i16> %i.kyn, i16 %i.kyg, i64 7
  %i.kyp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kyo)
  %i.kyq = zext <8 x i16> %i.kyp to <8 x i32>
  %i.kyr = lshr <8 x i32> %i.kyq, %broadcast.splat4652
  %i.kys = add nuw <8 x i32> %i.kyr, %broadcast.splat4654
  %i.kyt = lshr <8 x i32> %i.kys, %broadcast.splat4656 ; 2 uses
  %i.kyu = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kyv = getelementptr inbounds nuw i8, ptr %i.kyu, i64 14
  %i.kyw = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kyx = getelementptr inbounds nuw i8, ptr %i.kyw, i64 30
  %i.kyy = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kyz = getelementptr inbounds nuw i8, ptr %i.kyy, i64 46
  %i.kza = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kzb = getelementptr inbounds nuw i8, ptr %i.kza, i64 62
  %i.kzc = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kzd = getelementptr inbounds nuw i8, ptr %i.kzc, i64 78
  %i.kze = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kzf = getelementptr inbounds nuw i8, ptr %i.kze, i64 94
  %i.kzg = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kzh = getelementptr inbounds nuw i8, ptr %i.kzg, i64 110
  %i.kzi = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.kou
  %i.kzj = getelementptr inbounds nuw i8, ptr %i.kzi, i64 126
  %i.kzk = load i16, ptr %i.kyv, align 2, !tbaa !60, !alias.scope !501
  %i.kzl = load i16, ptr %i.kyx, align 2, !tbaa !60, !alias.scope !501
  %i.kzm = load i16, ptr %i.kyz, align 2, !tbaa !60, !alias.scope !501
  %i.kzn = load i16, ptr %i.kzb, align 2, !tbaa !60, !alias.scope !501
  %i.kzo = load i16, ptr %i.kzd, align 2, !tbaa !60, !alias.scope !501
  %i.kzp = load i16, ptr %i.kzf, align 2, !tbaa !60, !alias.scope !501
  %i.kzq = load i16, ptr %i.kzh, align 2, !tbaa !60, !alias.scope !501
  %i.kzr = load i16, ptr %i.kzj, align 2, !tbaa !60, !alias.scope !501
  %i.kzs = insertelement <8 x i16> poison, i16 %i.kzk, i64 0
  %i.kzt = insertelement <8 x i16> %i.kzs, i16 %i.kzl, i64 1
  %i.kzu = insertelement <8 x i16> %i.kzt, i16 %i.kzm, i64 2
  %i.kzv = insertelement <8 x i16> %i.kzu, i16 %i.kzn, i64 3
  %i.kzw = insertelement <8 x i16> %i.kzv, i16 %i.kzo, i64 4
  %i.kzx = insertelement <8 x i16> %i.kzw, i16 %i.kzp, i64 5
  %i.kzy = insertelement <8 x i16> %i.kzx, i16 %i.kzq, i64 6
  %i.kzz = insertelement <8 x i16> %i.kzy, i16 %i.kzr, i64 7
  %i.laa = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.kzz)
  %i.lab = zext <8 x i16> %i.laa to <8 x i32>
  %i.lac = lshr <8 x i32> %i.lab, %broadcast.splat4652
  %i.lad = add nuw <8 x i32> %i.lac, %broadcast.splat4654
  %i.lae = lshr <8 x i32> %i.lad, %broadcast.splat4656 ; 2 uses
  %i.laf = shufflevector <8 x i32> %i.kqe, <8 x i32> %i.krq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lag = shufflevector <8 x i32> %i.ktb, <8 x i32> %i.kum, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lah = shufflevector <16 x i32> %i.laf, <16 x i32> %i.lag, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lai = shufflevector <8 x i32> %i.kqe, <8 x i32> %i.krq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.laj = shufflevector <8 x i32> %i.ktb, <8 x i32> %i.kum, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lak = shufflevector <16 x i32> %i.lai, <16 x i32> %i.laj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lal = lshr <32 x i32> %i.lak, %i.kop
  %i.lam = sub <32 x i32> %i.lah, %i.lal
  %i.lan = shl <32 x i32> %i.lam, %i.koq
  %i.lao = shufflevector <8 x i32> %i.kvx, <8 x i32> %i.kxi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lap = shufflevector <8 x i32> %i.kyt, <8 x i32> %i.lae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.laq = shufflevector <16 x i32> %i.lao, <16 x i32> %i.lap, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lar = shufflevector <8 x i32> %i.kvx, <8 x i32> %i.kxi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.las = shufflevector <8 x i32> %i.kyt, <8 x i32> %i.lae, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lat = shufflevector <16 x i32> %i.lar, <16 x i32> %i.las, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lau = lshr <32 x i32> %i.lat, %i.kor
  %i.lav = sub <32 x i32> %i.laq, %i.lau
  %i.law = shl <32 x i32> %i.lav, %i.kos
  %i.lax = shufflevector <32 x i32> %i.lan, <32 x i32> %i.law, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.lay = trunc <64 x i32> %i.lax to <64 x i16>
  %interleaved.vec4663 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.lay)
  store <64 x i16> %interleaved.vec4663, ptr %i.kqf, align 2, !tbaa !60, !alias.scope !502, !noalias !501
  %index.next4664 = add nuw i64 %index4662, 8     ; 2 uses
  %i.laz = icmp eq i64 %index.next4664, %n.vec4650
  br i1 %i.laz, label %middle.block4665, label %vector.body4661, !llvm.loop !420

middle.block4665:                                 ; preds = %vector.body4661
  br i1 %cmp.n4666, label %.preheader2732.loopexit, label %.lr.ph2843.preheader5073

.lr.ph2843.preheader5073:                         ; preds = %.lr.ph2843.preheader, %middle.block4665
  %indvars.iv3134.ph = phi i64 [ %i.koo, %middle.block4665 ], [ 0, %.lr.ph2843.preheader ]
  br label %.lr.ph2843

.preheader2732.loopexit:                          ; preds = %.lr.ph2843, %middle.block4665
  %indvars.iv.next3135.lcssa = phi i64 [ %i.koo, %middle.block4665 ], [ %indvars.iv.next3135, %.lr.ph2843 ]
  %i.lba = trunc nuw nsw i64 %indvars.iv.next3135.lcssa to i32
  br label %.preheader2732

.preheader2732:                                   ; preds = %.preheader2732.loopexit, %.preheader2733
  %.44.lcssa = phi i32 [ 0, %.preheader2733 ], [ %i.lba, %.preheader2732.loopexit ] ; 2 uses
  %i.lbb = icmp slt i32 %.44.lcssa, %.024902630263526392642
  br i1 %i.lbb, label %.lr.ph2846.preheader, label %._crit_edge2847

.lr.ph2846.preheader:                             ; preds = %.preheader2732
  %i.lbc = zext i32 %.44.lcssa to i64             ; 5 uses
  %i.lbd = sub nsw i64 %wide.trip.count3140, %i.lbc ; 3 uses
  %min.iters.check4605 = icmp ult i64 %i.lbd, 8
  br i1 %min.iters.check4605, label %.lr.ph2846.preheader5072, label %vector.memcheck4606

vector.memcheck4606:                              ; preds = %.lr.ph2846.preheader
  %i.lbe = mul nsw i64 %indvar4602, %i.knt
  %.reass5214 = add i64 %i.lbe, %invariant.op5213
  %diff.check4607 = icmp ult i64 %.reass5214, 15
  br i1 %diff.check4607, label %.lr.ph2846.preheader5072, label %vector.ph4608

vector.ph4608:                                    ; preds = %vector.memcheck4606
  %n.vec4609 = and i64 %i.lbd, -8                 ; 3 uses
  %i.lbf = add nsw i64 %n.vec4609, %i.lbc
  br label %vector.body4618

vector.body4618:                                  ; preds = %vector.body4618, %vector.ph4608
  %index4619 = phi i64 [ 0, %vector.ph4608 ], [ %index.next4621, %vector.body4618 ] ; 2 uses
  %i.lbg = add nuw i64 %index4619, %i.lbc         ; 2 uses
  %i.lbh = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.lbg
  %wide.load4620 = load <8 x i16>, ptr %i.lbh, align 2, !tbaa !60
  %i.lbi = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4620)
  %i.lbj = zext <8 x i16> %i.lbi to <8 x i32>
  %i.lbk = add nuw <8 x i32> %broadcast.splat4611, %i.lbj
  %i.lbl = lshr <8 x i32> %i.lbk, %broadcast.splat4613 ; 2 uses
  %i.lbm = lshr <8 x i32> %i.lbl, %broadcast.splat4615
  %i.lbn = sub <8 x i32> %i.lbl, %i.lbm
  %i.lbo = shl <8 x i32> %i.lbn, %broadcast.splat4617
  %i.lbp = trunc <8 x i32> %i.lbo to <8 x i16>
  %i.lbq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lbp)
  %i.lbr = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.lbg
  store <8 x i16> %i.lbq, ptr %i.lbr, align 2, !tbaa !60
  %index.next4621 = add nuw i64 %index4619, 8     ; 2 uses
  %i.lbs = icmp eq i64 %index.next4621, %n.vec4609
  br i1 %i.lbs, label %middle.block4622, label %vector.body4618, !llvm.loop !421

middle.block4622:                                 ; preds = %vector.body4618
  %cmp.n4623 = icmp eq i64 %i.lbd, %n.vec4609
  br i1 %cmp.n4623, label %._crit_edge2847, label %.lr.ph2846.preheader5072

.lr.ph2846.preheader5072:                         ; preds = %vector.memcheck4606, %.lr.ph2846.preheader, %middle.block4622
  %indvars.iv3137.ph = phi i64 [ %i.lbc, %vector.memcheck4606 ], [ %i.lbc, %.lr.ph2846.preheader ], [ %i.lbf, %middle.block4622 ] ; 6 uses
  %i.lbt = sub nsw i64 %wide.trip.count3140, %indvars.iv3137.ph
  %xtraiter5132 = and i64 %i.lbt, 1
  %lcmp.mod5133.not = icmp eq i64 %xtraiter5132, 0
  br i1 %lcmp.mod5133.not, label %.lr.ph2846.prol.loopexit, label %.lr.ph2846.prol

.lr.ph2846.prol:                                  ; preds = %.lr.ph2846.preheader5072
  %i.lbu = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %indvars.iv3137.ph
  %i.lbv = load i16, ptr %i.lbu, align 2, !tbaa !60
  %i.lbw = tail call i16 @llvm.bswap.i16(i16 %i.lbv)
  %i.lbx = zext i16 %i.lbw to i32
  %i.lby = add nuw i32 %i.ibo, %i.lbx
  %i.lbz = lshr i32 %i.lby, %i.ibm                ; 2 uses
  %i.lca = lshr i32 %i.lbz, %i.fk
  %i.lcb = sub i32 %i.lbz, %i.lca
  %i.lcc = shl i32 %i.lcb, %i.fo
  %i.lcd = trunc i32 %i.lcc to i16
  %i.lce = tail call i16 @llvm.bswap.i16(i16 %i.lcd)
  %i.lcf = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %indvars.iv3137.ph
  store i16 %i.lce, ptr %i.lcf, align 2, !tbaa !60
  %indvars.iv.next3138.prol = add nuw nsw i64 %indvars.iv3137.ph, 1
  br label %.lr.ph2846.prol.loopexit

.lr.ph2846.prol.loopexit:                         ; preds = %.lr.ph2846.prol, %.lr.ph2846.preheader5072
  %indvars.iv3137.unr = phi i64 [ %indvars.iv3137.ph, %.lr.ph2846.preheader5072 ], [ %indvars.iv.next3138.prol, %.lr.ph2846.prol ]
  %i.lcg = icmp eq i64 %indvars.iv3137.ph, %i.kot
  br i1 %i.lcg, label %._crit_edge2847, label %.lr.ph2846

.lr.ph2843:                                       ; preds = %.lr.ph2843.preheader5073, %.lr.ph2843
  %indvars.iv3134 = phi i64 [ %indvars.iv.next3135, %.lr.ph2843 ], [ %indvars.iv3134.ph, %.lr.ph2843.preheader5073 ] ; 10 uses
  %i.lch = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %indvars.iv3134
  %i.lci = load i16, ptr %i.lch, align 2, !tbaa !60
  %i.lcj = tail call i16 @llvm.bswap.i16(i16 %i.lci)
  %i.lck = zext i16 %i.lcj to i32
  %i.lcl = lshr i32 %i.lck, %i.fm
  %i.lcm = add nuw i32 %i.lcl, %i.ibo
  %i.lcn = lshr i32 %i.lcm, %i.ibm                ; 2 uses
  %i.lco = lshr i32 %i.lcn, %i.fk
  %i.lcp = sub i32 %i.lcn, %i.lco
  %i.lcq = shl i32 %i.lcp, %i.fo
  %i.lcr = trunc i32 %i.lcq to i16
  %i.lcs = tail call i16 @llvm.bswap.i16(i16 %i.lcr)
  %i.lct = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %indvars.iv3134
  store i16 %i.lcs, ptr %i.lct, align 2, !tbaa !60
  %i.lcu = or disjoint i64 %indvars.iv3134, 1     ; 2 uses
  %i.lcv = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.lcu
  %i.lcw = load i16, ptr %i.lcv, align 2, !tbaa !60
  %i.lcx = tail call i16 @llvm.bswap.i16(i16 %i.lcw)
  %i.lcy = zext i16 %i.lcx to i32
  %i.lcz = lshr i32 %i.lcy, %i.fm
  %i.lda = add nuw i32 %i.lcz, %i.ibo
  %i.ldb = lshr i32 %i.lda, %i.ibm                ; 2 uses
  %i.ldc = lshr i32 %i.ldb, %i.fk
  %i.ldd = sub i32 %i.ldb, %i.ldc
  %i.lde = shl i32 %i.ldd, %i.fo
  %i.ldf = trunc i32 %i.lde to i16
  %i.ldg = tail call i16 @llvm.bswap.i16(i16 %i.ldf)
  %i.ldh = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.lcu
  store i16 %i.ldg, ptr %i.ldh, align 2, !tbaa !60
  %i.ldi = or disjoint i64 %indvars.iv3134, 2     ; 2 uses
  %i.ldj = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.ldi
  %i.ldk = load i16, ptr %i.ldj, align 2, !tbaa !60
  %i.ldl = tail call i16 @llvm.bswap.i16(i16 %i.ldk)
  %i.ldm = zext i16 %i.ldl to i32
  %i.ldn = lshr i32 %i.ldm, %i.fm
  %i.ldo = add nuw i32 %i.ldn, %i.ibo
  %i.ldp = lshr i32 %i.ldo, %i.ibm                ; 2 uses
  %i.ldq = lshr i32 %i.ldp, %i.fk
  %i.ldr = sub i32 %i.ldp, %i.ldq
  %i.lds = shl i32 %i.ldr, %i.fo
  %i.ldt = trunc i32 %i.lds to i16
  %i.ldu = tail call i16 @llvm.bswap.i16(i16 %i.ldt)
  %i.ldv = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.ldi
  store i16 %i.ldu, ptr %i.ldv, align 2, !tbaa !60
  %i.ldw = or disjoint i64 %indvars.iv3134, 3     ; 2 uses
  %i.ldx = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.ldw
  %i.ldy = load i16, ptr %i.ldx, align 2, !tbaa !60
  %i.ldz = tail call i16 @llvm.bswap.i16(i16 %i.ldy)
  %i.lea = zext i16 %i.ldz to i32
  %i.leb = lshr i32 %i.lea, %i.fm
  %i.lec = add nuw i32 %i.leb, %i.ibo
  %i.led = lshr i32 %i.lec, %i.ibm                ; 2 uses
  %i.lee = lshr i32 %i.led, %i.fk
  %i.lef = sub i32 %i.led, %i.lee
  %i.leg = shl i32 %i.lef, %i.fo
  %i.leh = trunc i32 %i.leg to i16
  %i.lei = tail call i16 @llvm.bswap.i16(i16 %i.leh)
  %i.lej = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.ldw
  store i16 %i.lei, ptr %i.lej, align 2, !tbaa !60
  %i.lek = or disjoint i64 %indvars.iv3134, 4     ; 2 uses
  %i.lel = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.lek
  %i.lem = load i16, ptr %i.lel, align 2, !tbaa !60
  %i.len = tail call i16 @llvm.bswap.i16(i16 %i.lem)
  %i.leo = zext i16 %i.len to i32
  %i.lep = lshr i32 %i.leo, %i.fm
  %i.leq = add nuw i32 %i.lep, %i.ibo
  %i.ler = lshr i32 %i.leq, %i.ibm                ; 2 uses
  %i.les = lshr i32 %i.ler, %i.fk
  %i.let = sub i32 %i.ler, %i.les
  %i.leu = shl i32 %i.let, %i.fo
  %i.lev = trunc i32 %i.leu to i16
  %i.lew = tail call i16 @llvm.bswap.i16(i16 %i.lev)
  %i.lex = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.lek
  store i16 %i.lew, ptr %i.lex, align 2, !tbaa !60
  %i.ley = or disjoint i64 %indvars.iv3134, 5     ; 2 uses
  %i.lez = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.ley
  %i.lfa = load i16, ptr %i.lez, align 2, !tbaa !60
  %i.lfb = tail call i16 @llvm.bswap.i16(i16 %i.lfa)
  %i.lfc = zext i16 %i.lfb to i32
  %i.lfd = lshr i32 %i.lfc, %i.fm
  %i.lfe = add nuw i32 %i.lfd, %i.ibo
  %i.lff = lshr i32 %i.lfe, %i.ibm                ; 2 uses
  %i.lfg = lshr i32 %i.lff, %i.fk
  %i.lfh = sub i32 %i.lff, %i.lfg
  %i.lfi = shl i32 %i.lfh, %i.fo
  %i.lfj = trunc i32 %i.lfi to i16
  %i.lfk = tail call i16 @llvm.bswap.i16(i16 %i.lfj)
  %i.lfl = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.ley
  store i16 %i.lfk, ptr %i.lfl, align 2, !tbaa !60
  %i.lfm = or disjoint i64 %indvars.iv3134, 6     ; 2 uses
  %i.lfn = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.lfm
  %i.lfo = load i16, ptr %i.lfn, align 2, !tbaa !60
  %i.lfp = tail call i16 @llvm.bswap.i16(i16 %i.lfo)
  %i.lfq = zext i16 %i.lfp to i32
  %i.lfr = lshr i32 %i.lfq, %i.fm
  %i.lfs = add nuw i32 %i.lfr, %i.ibo
  %i.lft = lshr i32 %i.lfs, %i.ibm                ; 2 uses
  %i.lfu = lshr i32 %i.lft, %i.fk
  %i.lfv = sub i32 %i.lft, %i.lfu
  %i.lfw = shl i32 %i.lfv, %i.fo
  %i.lfx = trunc i32 %i.lfw to i16
  %i.lfy = tail call i16 @llvm.bswap.i16(i16 %i.lfx)
  %i.lfz = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.lfm
  store i16 %i.lfy, ptr %i.lfz, align 2, !tbaa !60
  %i.lga = or disjoint i64 %indvars.iv3134, 7     ; 2 uses
  %i.lgb = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %i.lga
  %i.lgc = load i16, ptr %i.lgb, align 2, !tbaa !60
  %i.lgd = tail call i16 @llvm.bswap.i16(i16 %i.lgc)
  %i.lge = zext i16 %i.lgd to i32
  %i.lgf = lshr i32 %i.lge, %i.fm
  %i.lgg = add nuw i32 %i.lgf, %i.ibo
  %i.lgh = lshr i32 %i.lgg, %i.ibm                ; 2 uses
  %i.lgi = lshr i32 %i.lgh, %i.fk
  %i.lgj = sub i32 %i.lgh, %i.lgi
  %i.lgk = shl i32 %i.lgj, %i.fo
  %i.lgl = trunc i32 %i.lgk to i16
  %i.lgm = tail call i16 @llvm.bswap.i16(i16 %i.lgl)
  %i.lgn = getelementptr inbounds nuw [2 x i8], ptr %.1125072849, i64 %i.lga
  store i16 %i.lgm, ptr %i.lgn, align 2, !tbaa !60
  %indvars.iv.next3135 = add nuw nsw i64 %indvars.iv3134, 8 ; 3 uses
  %i.lgo = icmp samesign ult i64 %indvars.iv.next3135, %i.knr
  br i1 %i.lgo, label %.lr.ph2843, label %.preheader2732.loopexit, !llvm.loop !422

.lr.ph2846:                                       ; preds = %.lr.ph2846.prol.loopexit, %.lr.ph2846
  %indvars.iv3137 = phi i64 [ %indvars.iv.next3138.1, %.lr.ph2846 ], [ %indvars.iv3137.unr, %.lr.ph2846.prol.loopexit ] ; 4 uses
  %i.lgp = getelementptr inbounds nuw [2 x i8], ptr %.1625262848, i64 %indvars.iv3137
  %i.lgq = load i16, ptr %i.lgp, align 2, !tbaa !60
  %i.lgr = tail call i16 @llvm.bswap.i16(i16 %i.lgq)
  %i.lgs = zext i16 %i.lgr to i32
  %i.lgt = add nuw i32 %i.ibo, %i.lgs
  %i.lgu = lshr i32 %i.lgt, %i.ibm                ; 2 uses
  %i.lgv = lshr i32 %i.lgu, %i.fk
  %i.lgw = sub i32 %i.lgu, %i.lgv
  %i.lgx = shl i32 %i.lgw, %i.fo
  %i.lgy = trunc i32 %i.lgx to i16
  %i.lgz = tail call i16 @llvm.bswap.i16(i16 %i.lgy)
end_hunk_10
begin_hunk_11_@planarCopyWrapper:bb.a
  %i.lrp = getelementptr inbounds nuw i8, ptr %i.lro, i64 72
  %i.lrq = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lrr = getelementptr inbounds nuw i8, ptr %i.lrq, i64 88
  %i.lrs = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lrt = getelementptr inbounds nuw i8, ptr %i.lrs, i64 104
  %i.lru = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lrv = getelementptr inbounds nuw i8, ptr %i.lru, i64 120
  %i.lrw = load i16, ptr %i.lrh, align 2, !tbaa !60, !alias.scope !503
  %i.lrx = load i16, ptr %i.lrj, align 2, !tbaa !60, !alias.scope !503
  %i.lry = load i16, ptr %i.lrl, align 2, !tbaa !60, !alias.scope !503
  %i.lrz = load i16, ptr %i.lrn, align 2, !tbaa !60, !alias.scope !503
  %i.lsa = load i16, ptr %i.lrp, align 2, !tbaa !60, !alias.scope !503
  %i.lsb = load i16, ptr %i.lrr, align 2, !tbaa !60, !alias.scope !503
  %i.lsc = load i16, ptr %i.lrt, align 2, !tbaa !60, !alias.scope !503
  %i.lsd = load i16, ptr %i.lrv, align 2, !tbaa !60, !alias.scope !503
  %i.lse = insertelement <8 x i16> poison, i16 %i.lrw, i64 0
  %i.lsf = insertelement <8 x i16> %i.lse, i16 %i.lrx, i64 1
  %i.lsg = insertelement <8 x i16> %i.lsf, i16 %i.lry, i64 2
  %i.lsh = insertelement <8 x i16> %i.lsg, i16 %i.lrz, i64 3
  %i.lsi = insertelement <8 x i16> %i.lsh, i16 %i.lsa, i64 4
  %i.lsj = insertelement <8 x i16> %i.lsi, i16 %i.lsb, i64 5
  %i.lsk = insertelement <8 x i16> %i.lsj, i16 %i.lsc, i64 6
  %i.lsl = insertelement <8 x i16> %i.lsk, i16 %i.lsd, i64 7
  %i.lsm = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lsl)
  %i.lsn = zext <8 x i16> %i.lsm to <8 x i32>
  %i.lso = lshr <8 x i32> %i.lsn, %broadcast.splat4738
  %i.lsp = add nuw nsw <8 x i32> %i.lso, %broadcast.splat4730
  %i.lsq = lshr <8 x i32> %i.lsp, %broadcast.splat4740 ; 2 uses
  %i.lsr = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lss = getelementptr inbounds nuw i8, ptr %i.lsr, i64 10
  %i.lst = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lsu = getelementptr inbounds nuw i8, ptr %i.lst, i64 26
  %i.lsv = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lsw = getelementptr inbounds nuw i8, ptr %i.lsv, i64 42
  %i.lsx = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lsy = getelementptr inbounds nuw i8, ptr %i.lsx, i64 58
  %i.lsz = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lta = getelementptr inbounds nuw i8, ptr %i.lsz, i64 74
  %i.ltb = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.ltc = getelementptr inbounds nuw i8, ptr %i.ltb, i64 90
  %i.ltd = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lte = getelementptr inbounds nuw i8, ptr %i.ltd, i64 106
  %i.ltf = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.ltg = getelementptr inbounds nuw i8, ptr %i.ltf, i64 122
  %i.lth = load i16, ptr %i.lss, align 2, !tbaa !60, !alias.scope !503
  %i.lti = load i16, ptr %i.lsu, align 2, !tbaa !60, !alias.scope !503
  %i.ltj = load i16, ptr %i.lsw, align 2, !tbaa !60, !alias.scope !503
  %i.ltk = load i16, ptr %i.lsy, align 2, !tbaa !60, !alias.scope !503
  %i.ltl = load i16, ptr %i.lta, align 2, !tbaa !60, !alias.scope !503
  %i.ltm = load i16, ptr %i.ltc, align 2, !tbaa !60, !alias.scope !503
  %i.ltn = load i16, ptr %i.lte, align 2, !tbaa !60, !alias.scope !503
  %i.lto = load i16, ptr %i.ltg, align 2, !tbaa !60, !alias.scope !503
  %i.ltp = insertelement <8 x i16> poison, i16 %i.lth, i64 0
  %i.ltq = insertelement <8 x i16> %i.ltp, i16 %i.lti, i64 1
  %i.ltr = insertelement <8 x i16> %i.ltq, i16 %i.ltj, i64 2
  %i.lts = insertelement <8 x i16> %i.ltr, i16 %i.ltk, i64 3
  %i.ltt = insertelement <8 x i16> %i.lts, i16 %i.ltl, i64 4
  %i.ltu = insertelement <8 x i16> %i.ltt, i16 %i.ltm, i64 5
  %i.ltv = insertelement <8 x i16> %i.ltu, i16 %i.ltn, i64 6
  %i.ltw = insertelement <8 x i16> %i.ltv, i16 %i.lto, i64 7
  %i.ltx = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.ltw)
  %i.lty = zext <8 x i16> %i.ltx to <8 x i32>
  %i.ltz = lshr <8 x i32> %i.lty, %broadcast.splat4738
  %i.lua = add nuw nsw <8 x i32> %i.ltz, %broadcast.splat4732
  %i.lub = lshr <8 x i32> %i.lua, %broadcast.splat4740 ; 2 uses
  %i.luc = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lud = getelementptr inbounds nuw i8, ptr %i.luc, i64 12
  %i.lue = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.luf = getelementptr inbounds nuw i8, ptr %i.lue, i64 28
  %i.lug = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.luh = getelementptr inbounds nuw i8, ptr %i.lug, i64 44
  %i.lui = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.luj = getelementptr inbounds nuw i8, ptr %i.lui, i64 60
  %i.luk = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lul = getelementptr inbounds nuw i8, ptr %i.luk, i64 76
  %i.lum = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lun = getelementptr inbounds nuw i8, ptr %i.lum, i64 92
  %i.luo = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lup = getelementptr inbounds nuw i8, ptr %i.luo, i64 108
  %i.luq = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lur = getelementptr inbounds nuw i8, ptr %i.luq, i64 124
  %i.lus = load i16, ptr %i.lud, align 2, !tbaa !60, !alias.scope !503
  %i.lut = load i16, ptr %i.luf, align 2, !tbaa !60, !alias.scope !503
  %i.luu = load i16, ptr %i.luh, align 2, !tbaa !60, !alias.scope !503
  %i.luv = load i16, ptr %i.luj, align 2, !tbaa !60, !alias.scope !503
  %i.luw = load i16, ptr %i.lul, align 2, !tbaa !60, !alias.scope !503
  %i.lux = load i16, ptr %i.lun, align 2, !tbaa !60, !alias.scope !503
  %i.luy = load i16, ptr %i.lup, align 2, !tbaa !60, !alias.scope !503
  %i.luz = load i16, ptr %i.lur, align 2, !tbaa !60, !alias.scope !503
  %i.lva = insertelement <8 x i16> poison, i16 %i.lus, i64 0
  %i.lvb = insertelement <8 x i16> %i.lva, i16 %i.lut, i64 1
  %i.lvc = insertelement <8 x i16> %i.lvb, i16 %i.luu, i64 2
  %i.lvd = insertelement <8 x i16> %i.lvc, i16 %i.luv, i64 3
  %i.lve = insertelement <8 x i16> %i.lvd, i16 %i.luw, i64 4
  %i.lvf = insertelement <8 x i16> %i.lve, i16 %i.lux, i64 5
  %i.lvg = insertelement <8 x i16> %i.lvf, i16 %i.luy, i64 6
  %i.lvh = insertelement <8 x i16> %i.lvg, i16 %i.luz, i64 7
  %i.lvi = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lvh)
  %i.lvj = zext <8 x i16> %i.lvi to <8 x i32>
  %i.lvk = lshr <8 x i32> %i.lvj, %broadcast.splat4738
  %i.lvl = add nuw nsw <8 x i32> %i.lvk, %broadcast.splat4734
  %i.lvm = lshr <8 x i32> %i.lvl, %broadcast.splat4740 ; 2 uses
  %i.lvn = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvo = getelementptr inbounds nuw i8, ptr %i.lvn, i64 14
  %i.lvp = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvq = getelementptr inbounds nuw i8, ptr %i.lvp, i64 30
  %i.lvr = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvs = getelementptr inbounds nuw i8, ptr %i.lvr, i64 46
  %i.lvt = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvu = getelementptr inbounds nuw i8, ptr %i.lvt, i64 62
  %i.lvv = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvw = getelementptr inbounds nuw i8, ptr %i.lvv, i64 78
  %i.lvx = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lvy = getelementptr inbounds nuw i8, ptr %i.lvx, i64 94
  %i.lvz = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lwa = getelementptr inbounds nuw i8, ptr %i.lvz, i64 110
  %i.lwb = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lln
  %i.lwc = getelementptr inbounds nuw i8, ptr %i.lwb, i64 126
  %i.lwd = load i16, ptr %i.lvo, align 2, !tbaa !60, !alias.scope !503
  %i.lwe = load i16, ptr %i.lvq, align 2, !tbaa !60, !alias.scope !503
  %i.lwf = load i16, ptr %i.lvs, align 2, !tbaa !60, !alias.scope !503
  %i.lwg = load i16, ptr %i.lvu, align 2, !tbaa !60, !alias.scope !503
  %i.lwh = load i16, ptr %i.lvw, align 2, !tbaa !60, !alias.scope !503
  %i.lwi = load i16, ptr %i.lvy, align 2, !tbaa !60, !alias.scope !503
  %i.lwj = load i16, ptr %i.lwa, align 2, !tbaa !60, !alias.scope !503
  %i.lwk = load i16, ptr %i.lwc, align 2, !tbaa !60, !alias.scope !503
  %i.lwl = insertelement <8 x i16> poison, i16 %i.lwd, i64 0
  %i.lwm = insertelement <8 x i16> %i.lwl, i16 %i.lwe, i64 1
  %i.lwn = insertelement <8 x i16> %i.lwm, i16 %i.lwf, i64 2
  %i.lwo = insertelement <8 x i16> %i.lwn, i16 %i.lwg, i64 3
  %i.lwp = insertelement <8 x i16> %i.lwo, i16 %i.lwh, i64 4
  %i.lwq = insertelement <8 x i16> %i.lwp, i16 %i.lwi, i64 5
  %i.lwr = insertelement <8 x i16> %i.lwq, i16 %i.lwj, i64 6
  %i.lws = insertelement <8 x i16> %i.lwr, i16 %i.lwk, i64 7
  %i.lwt = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lws)
  %i.lwu = zext <8 x i16> %i.lwt to <8 x i32>
  %i.lwv = lshr <8 x i32> %i.lwu, %broadcast.splat4738
  %i.lww = add nuw nsw <8 x i32> %i.lwv, %broadcast.splat4736
  %i.lwx = lshr <8 x i32> %i.lww, %broadcast.splat4740 ; 2 uses
  %i.lwy = shufflevector <8 x i32> %i.lmx, <8 x i32> %i.loj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lwz = shufflevector <8 x i32> %i.lpu, <8 x i32> %i.lrf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxa = shufflevector <16 x i32> %i.lwy, <16 x i32> %i.lwz, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lxb = shufflevector <8 x i32> %i.lmx, <8 x i32> %i.loj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxc = shufflevector <8 x i32> %i.lpu, <8 x i32> %i.lrf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxd = shufflevector <16 x i32> %i.lxb, <16 x i32> %i.lxc, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lxe = lshr <32 x i32> %i.lxd, %i.lkj
  %i.lxf = sub nsw <32 x i32> %i.lxa, %i.lxe
  %i.lxg = shl <32 x i32> %i.lxf, %i.lkk
  %i.lxh = shufflevector <8 x i32> %i.lsq, <8 x i32> %i.lub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxi = shufflevector <8 x i32> %i.lvm, <8 x i32> %i.lwx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxj = shufflevector <16 x i32> %i.lxh, <16 x i32> %i.lxi, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lxk = shufflevector <8 x i32> %i.lsq, <8 x i32> %i.lub, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxl = shufflevector <8 x i32> %i.lvm, <8 x i32> %i.lwx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lxm = shufflevector <16 x i32> %i.lxk, <16 x i32> %i.lxl, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.lxn = lshr <32 x i32> %i.lxm, %i.lkl
  %i.lxo = sub nsw <32 x i32> %i.lxj, %i.lxn
  %i.lxp = shl <32 x i32> %i.lxo, %i.lkm
  %i.lxq = shufflevector <32 x i32> %i.lxg, <32 x i32> %i.lxp, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %i.lxr = trunc <64 x i32> %i.lxq to <64 x i16>
  %interleaved.vec4747 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.lxr)
  store <64 x i16> %interleaved.vec4747, ptr %i.lmy, align 2, !tbaa !60, !alias.scope !504, !noalias !503
  %index.next4748 = add nuw i64 %index4746, 8     ; 2 uses
  %i.lxs = icmp eq i64 %index.next4748, %n.vec4720
  br i1 %i.lxs, label %middle.block4749, label %vector.body4745, !llvm.loop !428

middle.block4749:                                 ; preds = %vector.body4745
  br i1 %cmp.n4750, label %.preheader2734.loopexit, label %scalar.ph4711.preheader

scalar.ph4711.preheader:                          ; preds = %.lr.ph2833, %middle.block4749
  %indvars.iv3125.ph = phi i64 [ %i.lki, %middle.block4749 ], [ 0, %.lr.ph2833 ]
  br label %scalar.ph4711

.preheader2734.loopexit:                          ; preds = %scalar.ph4711, %middle.block4749
  %indvars.iv.next3126.lcssa = phi i64 [ %i.lki, %middle.block4749 ], [ %indvars.iv.next3126, %scalar.ph4711 ]
  %i.lxt = trunc nuw nsw i64 %indvars.iv.next3126.lcssa to i32
  br label %.preheader2734

.preheader2734:                                   ; preds = %.preheader2734.loopexit, %bb.cm
  %.46.lcssa = phi i32 [ 0, %bb.cm ], [ %i.lxt, %.preheader2734.loopexit ] ; 3 uses
  %i.lxu = icmp slt i32 %.46.lcssa, %.024902630263526392642
  br i1 %i.lxu, label %.lr.ph2836.preheader, label %._crit_edge2837

.lr.ph2836.preheader:                             ; preds = %.preheader2734
  %i.lxv = zext i32 %.46.lcssa to i64             ; 8 uses
  %i.lxw = sub nsw i64 %wide.trip.count3131, %i.lxv ; 3 uses
  %min.iters.check4676 = icmp ult i64 %i.lxw, 8
  br i1 %min.iters.check4676, label %.lr.ph2836.preheader5074, label %vector.scevcheck4668

vector.scevcheck4668:                             ; preds = %.lr.ph2836.preheader
  %i.lxx = xor i64 %i.lxv, -1
  %i.lxy = add nsw i64 %i.lxx, %wide.trip.count3131 ; 2 uses
  %i.lxz = trunc i32 %.46.lcssa to i3
  %i.lya = trunc i64 %i.lxy to i3
  %i.lyb = xor i3 %i.lxz, -1
  %i.lyc = icmp ult i3 %i.lyb, %i.lya
  %i.lyd = icmp ugt i64 %i.lxy, 7
  %i.lye = or i1 %i.lyc, %i.lyd
  br i1 %i.lye, label %.lr.ph2836.preheader5074, label %vector.memcheck4677

vector.memcheck4677:                              ; preds = %vector.scevcheck4668
  %i.lyf = mul nsw i64 %indvar4673, %i.ljn
  %.reass5212 = add i64 %i.lyf, %invariant.op5211
  %diff.check4678 = icmp ult i64 %.reass5212, 15
  br i1 %diff.check4678, label %.lr.ph2836.preheader5074, label %vector.ph4679

vector.ph4679:                                    ; preds = %vector.memcheck4677
  %n.vec4680 = and i64 %i.lxw, -8                 ; 3 uses
  %i.lyg = add nsw i64 %n.vec4680, %i.lxv
  %i.lyh = and i64 %i.lxv, 7
  %i.lyi = getelementptr inbounds nuw i8, ptr %i.lkp, i64 %i.lyh
  %wide.load4690 = load <8 x i8>, ptr %i.lyi, align 1, !tbaa !64
  %i.lyj = zext <8 x i8> %wide.load4690 to <8 x i32>
  br label %vector.body4687

vector.body4687:                                  ; preds = %vector.body4687, %vector.ph4679
  %index4688 = phi i64 [ 0, %vector.ph4679 ], [ %index.next4691, %vector.body4687 ] ; 2 uses
  %i.lyk = add nuw i64 %index4688, %i.lxv         ; 2 uses
  %i.lyl = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lyk
  %wide.load4689 = load <8 x i16>, ptr %i.lyl, align 2, !tbaa !60
  %i.lym = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4689)
  %i.lyn = zext <8 x i16> %i.lym to <8 x i32>
  %i.lyo = add nuw nsw <8 x i32> %i.lyn, %i.lyj
  %i.lyp = lshr <8 x i32> %i.lyo, %broadcast.splat4682 ; 2 uses
  %i.lyq = lshr <8 x i32> %i.lyp, %broadcast.splat4684
  %i.lyr = sub nsw <8 x i32> %i.lyp, %i.lyq
  %i.lys = shl <8 x i32> %i.lyr, %broadcast.splat4686
  %i.lyt = trunc <8 x i32> %i.lys to <8 x i16>
  %i.lyu = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.lyt)
  %i.lyv = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.lyk
  store <8 x i16> %i.lyu, ptr %i.lyv, align 2, !tbaa !60
  %index.next4691 = add nuw i64 %index4688, 8     ; 2 uses
  %i.lyw = icmp eq i64 %index.next4691, %n.vec4680
  br i1 %i.lyw, label %middle.block4692, label %vector.body4687, !llvm.loop !429

middle.block4692:                                 ; preds = %vector.body4687
  %cmp.n4693 = icmp eq i64 %i.lxw, %n.vec4680
  br i1 %cmp.n4693, label %._crit_edge2837, label %.lr.ph2836.preheader5074

.lr.ph2836.preheader5074:                         ; preds = %vector.memcheck4677, %vector.scevcheck4668, %.lr.ph2836.preheader, %middle.block4692
  %indvars.iv3128.ph = phi i64 [ %i.lxv, %vector.memcheck4677 ], [ %i.lxv, %vector.scevcheck4668 ], [ %i.lxv, %.lr.ph2836.preheader ], [ %i.lyg, %middle.block4692 ]
  br label %.lr.ph2836

scalar.ph4711:                                    ; preds = %scalar.ph4711.preheader, %scalar.ph4711
  %indvars.iv3125 = phi i64 [ %indvars.iv.next3126, %scalar.ph4711 ], [ %indvars.iv3125.ph, %scalar.ph4711.preheader ] ; 10 uses
  %i.lyx = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %indvars.iv3125
  %i.lyy = load i16, ptr %i.lyx, align 2, !tbaa !60
  %i.lyz = tail call i16 @llvm.bswap.i16(i16 %i.lyy)
  %i.lza = zext i16 %i.lyz to i32
  %i.lzb = lshr i32 %i.lza, %i.fm
  %i.lzc = add nuw nsw i32 %i.lzb, %i.lkr
  %i.lzd = lshr i32 %i.lzc, %i.ibm                ; 2 uses
  %i.lze = lshr i32 %i.lzd, %i.fk
  %i.lzf = sub nsw i32 %i.lzd, %i.lze
  %i.lzg = shl i32 %i.lzf, %i.fo
  %i.lzh = trunc i32 %i.lzg to i16
  %i.lzi = tail call i16 @llvm.bswap.i16(i16 %i.lzh)
  %i.lzj = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %indvars.iv3125
  store i16 %i.lzi, ptr %i.lzj, align 2, !tbaa !60
  %i.lzk = or disjoint i64 %indvars.iv3125, 1     ; 2 uses
  %i.lzl = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lzk
  %i.lzm = load i16, ptr %i.lzl, align 2, !tbaa !60
  %i.lzn = tail call i16 @llvm.bswap.i16(i16 %i.lzm)
  %i.lzo = zext i16 %i.lzn to i32
  %i.lzp = lshr i32 %i.lzo, %i.fm
  %i.lzq = add nuw nsw i32 %i.lzp, %i.lku
  %i.lzr = lshr i32 %i.lzq, %i.ibm                ; 2 uses
  %i.lzs = lshr i32 %i.lzr, %i.fk
  %i.lzt = sub nsw i32 %i.lzr, %i.lzs
  %i.lzu = shl i32 %i.lzt, %i.fo
  %i.lzv = trunc i32 %i.lzu to i16
  %i.lzw = tail call i16 @llvm.bswap.i16(i16 %i.lzv)
  %i.lzx = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.lzk
  store i16 %i.lzw, ptr %i.lzx, align 2, !tbaa !60
  %i.lzy = or disjoint i64 %indvars.iv3125, 2     ; 2 uses
  %i.lzz = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.lzy
  %i.maa = load i16, ptr %i.lzz, align 2, !tbaa !60
  %i.mab = tail call i16 @llvm.bswap.i16(i16 %i.maa)
  %i.mac = zext i16 %i.mab to i32
  %i.mad = lshr i32 %i.mac, %i.fm
  %i.mae = add nuw nsw i32 %i.mad, %i.lkx
  %i.maf = lshr i32 %i.mae, %i.ibm                ; 2 uses
  %i.mag = lshr i32 %i.maf, %i.fk
  %i.mah = sub nsw i32 %i.maf, %i.mag
  %i.mai = shl i32 %i.mah, %i.fo
  %i.maj = trunc i32 %i.mai to i16
  %i.mak = tail call i16 @llvm.bswap.i16(i16 %i.maj)
  %i.mal = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.lzy
  store i16 %i.mak, ptr %i.mal, align 2, !tbaa !60
  %i.mam = or disjoint i64 %indvars.iv3125, 3     ; 2 uses
  %i.man = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.mam
  %i.mao = load i16, ptr %i.man, align 2, !tbaa !60
  %i.map = tail call i16 @llvm.bswap.i16(i16 %i.mao)
  %i.maq = zext i16 %i.map to i32
  %i.mar = lshr i32 %i.maq, %i.fm
  %i.mas = add nuw nsw i32 %i.mar, %i.lla
  %i.mat = lshr i32 %i.mas, %i.ibm                ; 2 uses
  %i.mau = lshr i32 %i.mat, %i.fk
  %i.mav = sub nsw i32 %i.mat, %i.mau
  %i.maw = shl i32 %i.mav, %i.fo
  %i.max = trunc i32 %i.maw to i16
  %i.may = tail call i16 @llvm.bswap.i16(i16 %i.max)
  %i.maz = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.mam
  store i16 %i.may, ptr %i.maz, align 2, !tbaa !60
  %i.mba = or disjoint i64 %indvars.iv3125, 4     ; 2 uses
  %i.mbb = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.mba
  %i.mbc = load i16, ptr %i.mbb, align 2, !tbaa !60
  %i.mbd = tail call i16 @llvm.bswap.i16(i16 %i.mbc)
  %i.mbe = zext i16 %i.mbd to i32
  %i.mbf = lshr i32 %i.mbe, %i.fm
  %i.mbg = add nuw nsw i32 %i.mbf, %i.lld
  %i.mbh = lshr i32 %i.mbg, %i.ibm                ; 2 uses
  %i.mbi = lshr i32 %i.mbh, %i.fk
  %i.mbj = sub nsw i32 %i.mbh, %i.mbi
  %i.mbk = shl i32 %i.mbj, %i.fo
  %i.mbl = trunc i32 %i.mbk to i16
  %i.mbm = tail call i16 @llvm.bswap.i16(i16 %i.mbl)
  %i.mbn = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.mba
  store i16 %i.mbm, ptr %i.mbn, align 2, !tbaa !60
  %i.mbo = or disjoint i64 %indvars.iv3125, 5     ; 2 uses
  %i.mbp = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.mbo
  %i.mbq = load i16, ptr %i.mbp, align 2, !tbaa !60
  %i.mbr = tail call i16 @llvm.bswap.i16(i16 %i.mbq)
  %i.mbs = zext i16 %i.mbr to i32
  %i.mbt = lshr i32 %i.mbs, %i.fm
  %i.mbu = add nuw nsw i32 %i.mbt, %i.llg
  %i.mbv = lshr i32 %i.mbu, %i.ibm                ; 2 uses
  %i.mbw = lshr i32 %i.mbv, %i.fk
  %i.mbx = sub nsw i32 %i.mbv, %i.mbw
  %i.mby = shl i32 %i.mbx, %i.fo
  %i.mbz = trunc i32 %i.mby to i16
  %i.mca = tail call i16 @llvm.bswap.i16(i16 %i.mbz)
  %i.mcb = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.mbo
  store i16 %i.mca, ptr %i.mcb, align 2, !tbaa !60
  %i.mcc = or disjoint i64 %indvars.iv3125, 6     ; 2 uses
  %i.mcd = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.mcc
  %i.mce = load i16, ptr %i.mcd, align 2, !tbaa !60
  %i.mcf = tail call i16 @llvm.bswap.i16(i16 %i.mce)
  %i.mcg = zext i16 %i.mcf to i32
  %i.mch = lshr i32 %i.mcg, %i.fm
  %i.mci = add nuw nsw i32 %i.mch, %i.llj
  %i.mcj = lshr i32 %i.mci, %i.ibm                ; 2 uses
  %i.mck = lshr i32 %i.mcj, %i.fk
  %i.mcl = sub nsw i32 %i.mcj, %i.mck
  %i.mcm = shl i32 %i.mcl, %i.fo
  %i.mcn = trunc i32 %i.mcm to i16
  %i.mco = tail call i16 @llvm.bswap.i16(i16 %i.mcn)
  %i.mcp = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.mcc
  store i16 %i.mco, ptr %i.mcp, align 2, !tbaa !60
  %i.mcq = or disjoint i64 %indvars.iv3125, 7     ; 2 uses
  %i.mcr = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %i.mcq
  %i.mcs = load i16, ptr %i.mcr, align 2, !tbaa !60
  %i.mct = tail call i16 @llvm.bswap.i16(i16 %i.mcs)
  %i.mcu = zext i16 %i.mct to i32
  %i.mcv = lshr i32 %i.mcu, %i.fm
  %i.mcw = add nuw nsw i32 %i.mcv, %i.llm
  %i.mcx = lshr i32 %i.mcw, %i.ibm                ; 2 uses
  %i.mcy = lshr i32 %i.mcx, %i.fk
  %i.mcz = sub nsw i32 %i.mcx, %i.mcy
  %i.mda = shl i32 %i.mcz, %i.fo
  %i.mdb = trunc i32 %i.mda to i16
  %i.mdc = tail call i16 @llvm.bswap.i16(i16 %i.mdb)
  %i.mdd = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %i.mcq
  store i16 %i.mdc, ptr %i.mdd, align 2, !tbaa !60
  %indvars.iv.next3126 = add nuw nsw i64 %indvars.iv3125, 8 ; 3 uses
  %i.mde = icmp samesign ult i64 %indvars.iv.next3126, %i.ljl
  br i1 %i.mde, label %scalar.ph4711, label %.preheader2734.loopexit, !llvm.loop !430

.lr.ph2836:                                       ; preds = %.lr.ph2836.preheader5074, %.lr.ph2836
  %indvars.iv3128 = phi i64 [ %indvars.iv.next3129, %.lr.ph2836 ], [ %indvars.iv3128.ph, %.lr.ph2836.preheader5074 ] ; 4 uses
  %i.mdf = getelementptr inbounds nuw [2 x i8], ptr %.1725272838, i64 %indvars.iv3128
  %i.mdg = load i16, ptr %i.mdf, align 2, !tbaa !60
  %i.mdh = tail call i16 @llvm.bswap.i16(i16 %i.mdg)
  %i.mdi = zext i16 %i.mdh to i32
  %i.mdj = and i64 %indvars.iv3128, 7
  %i.mdk = getelementptr inbounds nuw i8, ptr %i.lkp, i64 %i.mdj
  %i.mdl = load i8, ptr %i.mdk, align 1, !tbaa !64
  %i.mdm = zext i8 %i.mdl to i32
  %i.mdn = add nuw nsw i32 %i.mdi, %i.mdm
  %i.mdo = lshr i32 %i.mdn, %i.ibm                ; 2 uses
  %i.mdp = lshr i32 %i.mdo, %i.fk
  %i.mdq = sub nsw i32 %i.mdo, %i.mdp
  %i.mdr = shl i32 %i.mdq, %i.fo
  %i.mds = trunc i32 %i.mdr to i16
  %i.mdt = tail call i16 @llvm.bswap.i16(i16 %i.mds)
  %i.mdu = getelementptr inbounds nuw [2 x i8], ptr %.1225082839, i64 %indvars.iv3128
  store i16 %i.mdt, ptr %i.mdu, align 2, !tbaa !60
  %indvars.iv.next3129 = add nuw nsw i64 %indvars.iv3128, 1 ; 2 uses
  %exitcond3132.not = icmp eq i64 %indvars.iv.next3129, %wide.trip.count3131
  br i1 %exitcond3132.not, label %._crit_edge2837, label %.lr.ph2836, !llvm.loop !431

._crit_edge2837:                                  ; preds = %.lr.ph2836, %middle.block4692, %.preheader2734
  %i.mdv = getelementptr inbounds [2 x i8], ptr %.1225082839, i64 %i.ljg
  %i.mdw = getelementptr inbounds [2 x i8], ptr %.1725272838, i64 %i.ljk
  %i.mdx = add nuw nsw i32 %.182840, 1            ; 2 uses
  %exitcond3133.not = icmp eq i32 %i.mdx, %i.aj
  %indvar.next4674 = add i64 %indvar4673, 1
  br i1 %exitcond3133.not, label %fillPlane16.exit, label %bb.cm, !llvm.loop !432

bb.cn:                                            ; preds = %.lr.ph2830, %._crit_edge
  %indvar4757 = phi i64 [ 0, %.lr.ph2830 ], [ %indvar.next4758, %._crit_edge ] ; 2 uses
  %.192829 = phi i32 [ 0, %.lr.ph2830 ], [ %i.mzb, %._crit_edge ] ; 2 uses
end_hunk_11
begin_hunk_12_@planarCopyWrapper:bb.a
  %i.mlp = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mlq = getelementptr inbounds nuw i8, ptr %i.mlp, i64 104
  %i.mlr = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mls = getelementptr inbounds nuw i8, ptr %i.mlr, i64 120
  %i.mlt = load i16, ptr %i.mle, align 2, !tbaa !60, !alias.scope !505
  %i.mlu = load i16, ptr %i.mlg, align 2, !tbaa !60, !alias.scope !505
  %i.mlv = load i16, ptr %i.mli, align 2, !tbaa !60, !alias.scope !505
  %i.mlw = load i16, ptr %i.mlk, align 2, !tbaa !60, !alias.scope !505
  %i.mlx = load i16, ptr %i.mlm, align 2, !tbaa !60, !alias.scope !505
  %i.mly = load i16, ptr %i.mlo, align 2, !tbaa !60, !alias.scope !505
  %i.mlz = load i16, ptr %i.mlq, align 2, !tbaa !60, !alias.scope !505
  %i.mma = load i16, ptr %i.mls, align 2, !tbaa !60, !alias.scope !505
  %i.mmb = insertelement <8 x i16> poison, i16 %i.mlt, i64 0
  %i.mmc = insertelement <8 x i16> %i.mmb, i16 %i.mlu, i64 1
  %i.mmd = insertelement <8 x i16> %i.mmc, i16 %i.mlv, i64 2
  %i.mme = insertelement <8 x i16> %i.mmd, i16 %i.mlw, i64 3
  %i.mmf = insertelement <8 x i16> %i.mme, i16 %i.mlx, i64 4
  %i.mmg = insertelement <8 x i16> %i.mmf, i16 %i.mly, i64 5
  %i.mmh = insertelement <8 x i16> %i.mmg, i16 %i.mlz, i64 6
  %i.mmi = insertelement <8 x i16> %i.mmh, i16 %i.mma, i64 7
  %i.mmj = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mmi)
  %i.mmk = zext <8 x i16> %i.mmj to <8 x i32>
  %i.mml = lshr <8 x i32> %i.mmk, %broadcast.splat4820 ; 2 uses
  %i.mmm = lshr <8 x i32> %i.mml, %broadcast.splat4822
  %i.mmn = add nuw nsw <8 x i32> %i.mml, %broadcast.splat4812
  %i.mmo = sub nsw <8 x i32> %i.mmn, %i.mmm
  %i.mmp = lshr <8 x i32> %i.mmo, %broadcast.splat4824
  %i.mmq = shl <8 x i32> %i.mmp, %broadcast.splat4826
  %i.mmr = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mms = getelementptr inbounds nuw i8, ptr %i.mmr, i64 10
  %i.mmt = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mmu = getelementptr inbounds nuw i8, ptr %i.mmt, i64 26
  %i.mmv = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mmw = getelementptr inbounds nuw i8, ptr %i.mmv, i64 42
  %i.mmx = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mmy = getelementptr inbounds nuw i8, ptr %i.mmx, i64 58
  %i.mmz = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mna = getelementptr inbounds nuw i8, ptr %i.mmz, i64 74
  %i.mnb = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mnc = getelementptr inbounds nuw i8, ptr %i.mnb, i64 90
  %i.mnd = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mne = getelementptr inbounds nuw i8, ptr %i.mnd, i64 106
  %i.mnf = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mng = getelementptr inbounds nuw i8, ptr %i.mnf, i64 122
  %i.mnh = load i16, ptr %i.mms, align 2, !tbaa !60, !alias.scope !505
  %i.mni = load i16, ptr %i.mmu, align 2, !tbaa !60, !alias.scope !505
  %i.mnj = load i16, ptr %i.mmw, align 2, !tbaa !60, !alias.scope !505
  %i.mnk = load i16, ptr %i.mmy, align 2, !tbaa !60, !alias.scope !505
  %i.mnl = load i16, ptr %i.mna, align 2, !tbaa !60, !alias.scope !505
  %i.mnm = load i16, ptr %i.mnc, align 2, !tbaa !60, !alias.scope !505
  %i.mnn = load i16, ptr %i.mne, align 2, !tbaa !60, !alias.scope !505
  %i.mno = load i16, ptr %i.mng, align 2, !tbaa !60, !alias.scope !505
  %i.mnp = insertelement <8 x i16> poison, i16 %i.mnh, i64 0
  %i.mnq = insertelement <8 x i16> %i.mnp, i16 %i.mni, i64 1
  %i.mnr = insertelement <8 x i16> %i.mnq, i16 %i.mnj, i64 2
  %i.mns = insertelement <8 x i16> %i.mnr, i16 %i.mnk, i64 3
  %i.mnt = insertelement <8 x i16> %i.mns, i16 %i.mnl, i64 4
  %i.mnu = insertelement <8 x i16> %i.mnt, i16 %i.mnm, i64 5
  %i.mnv = insertelement <8 x i16> %i.mnu, i16 %i.mnn, i64 6
  %i.mnw = insertelement <8 x i16> %i.mnv, i16 %i.mno, i64 7
  %i.mnx = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mnw)
  %i.mny = zext <8 x i16> %i.mnx to <8 x i32>
  %i.mnz = lshr <8 x i32> %i.mny, %broadcast.splat4820 ; 2 uses
  %i.moa = lshr <8 x i32> %i.mnz, %broadcast.splat4822
  %i.mob = add nuw nsw <8 x i32> %i.mnz, %broadcast.splat4814
  %i.moc = sub nsw <8 x i32> %i.mob, %i.moa
  %i.mod = lshr <8 x i32> %i.moc, %broadcast.splat4824
  %i.moe = shl <8 x i32> %i.mod, %broadcast.splat4826
  %i.mof = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mog = getelementptr inbounds nuw i8, ptr %i.mof, i64 12
  %i.moh = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.moi = getelementptr inbounds nuw i8, ptr %i.moh, i64 28
  %i.moj = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mok = getelementptr inbounds nuw i8, ptr %i.moj, i64 44
  %i.mol = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mom = getelementptr inbounds nuw i8, ptr %i.mol, i64 60
  %i.mon = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.moo = getelementptr inbounds nuw i8, ptr %i.mon, i64 76
  %i.mop = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.moq = getelementptr inbounds nuw i8, ptr %i.mop, i64 92
  %i.mor = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mos = getelementptr inbounds nuw i8, ptr %i.mor, i64 108
  %i.mot = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mou = getelementptr inbounds nuw i8, ptr %i.mot, i64 124
  %i.mov = load i16, ptr %i.mog, align 2, !tbaa !60, !alias.scope !505
  %i.mow = load i16, ptr %i.moi, align 2, !tbaa !60, !alias.scope !505
  %i.mox = load i16, ptr %i.mok, align 2, !tbaa !60, !alias.scope !505
  %i.moy = load i16, ptr %i.mom, align 2, !tbaa !60, !alias.scope !505
  %i.moz = load i16, ptr %i.moo, align 2, !tbaa !60, !alias.scope !505
  %i.mpa = load i16, ptr %i.moq, align 2, !tbaa !60, !alias.scope !505
  %i.mpb = load i16, ptr %i.mos, align 2, !tbaa !60, !alias.scope !505
  %i.mpc = load i16, ptr %i.mou, align 2, !tbaa !60, !alias.scope !505
  %i.mpd = insertelement <8 x i16> poison, i16 %i.mov, i64 0
  %i.mpe = insertelement <8 x i16> %i.mpd, i16 %i.mow, i64 1
  %i.mpf = insertelement <8 x i16> %i.mpe, i16 %i.mox, i64 2
  %i.mpg = insertelement <8 x i16> %i.mpf, i16 %i.moy, i64 3
  %i.mph = insertelement <8 x i16> %i.mpg, i16 %i.moz, i64 4
  %i.mpi = insertelement <8 x i16> %i.mph, i16 %i.mpa, i64 5
  %i.mpj = insertelement <8 x i16> %i.mpi, i16 %i.mpb, i64 6
  %i.mpk = insertelement <8 x i16> %i.mpj, i16 %i.mpc, i64 7
  %i.mpl = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mpk)
  %i.mpm = zext <8 x i16> %i.mpl to <8 x i32>
  %i.mpn = lshr <8 x i32> %i.mpm, %broadcast.splat4820 ; 2 uses
  %i.mpo = lshr <8 x i32> %i.mpn, %broadcast.splat4822
  %i.mpp = add nuw nsw <8 x i32> %i.mpn, %broadcast.splat4816
  %i.mpq = sub nsw <8 x i32> %i.mpp, %i.mpo
  %i.mpr = lshr <8 x i32> %i.mpq, %broadcast.splat4824
  %i.mps = shl <8 x i32> %i.mpr, %broadcast.splat4826
  %i.mpt = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mpu = getelementptr inbounds nuw i8, ptr %i.mpt, i64 14
  %i.mpv = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mpw = getelementptr inbounds nuw i8, ptr %i.mpv, i64 30
  %i.mpx = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mpy = getelementptr inbounds nuw i8, ptr %i.mpx, i64 46
  %i.mpz = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mqa = getelementptr inbounds nuw i8, ptr %i.mpz, i64 62
  %i.mqb = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mqc = getelementptr inbounds nuw i8, ptr %i.mqb, i64 78
  %i.mqd = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mqe = getelementptr inbounds nuw i8, ptr %i.mqd, i64 94
  %i.mqf = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mqg = getelementptr inbounds nuw i8, ptr %i.mqf, i64 110
  %i.mqh = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mey
  %i.mqi = getelementptr inbounds nuw i8, ptr %i.mqh, i64 126
  %i.mqj = load i16, ptr %i.mpu, align 2, !tbaa !60, !alias.scope !505
  %i.mqk = load i16, ptr %i.mpw, align 2, !tbaa !60, !alias.scope !505
  %i.mql = load i16, ptr %i.mpy, align 2, !tbaa !60, !alias.scope !505
  %i.mqm = load i16, ptr %i.mqa, align 2, !tbaa !60, !alias.scope !505
  %i.mqn = load i16, ptr %i.mqc, align 2, !tbaa !60, !alias.scope !505
  %i.mqo = load i16, ptr %i.mqe, align 2, !tbaa !60, !alias.scope !505
  %i.mqp = load i16, ptr %i.mqg, align 2, !tbaa !60, !alias.scope !505
  %i.mqq = load i16, ptr %i.mqi, align 2, !tbaa !60, !alias.scope !505
  %i.mqr = insertelement <8 x i16> poison, i16 %i.mqj, i64 0
  %i.mqs = insertelement <8 x i16> %i.mqr, i16 %i.mqk, i64 1
  %i.mqt = insertelement <8 x i16> %i.mqs, i16 %i.mql, i64 2
  %i.mqu = insertelement <8 x i16> %i.mqt, i16 %i.mqm, i64 3
  %i.mqv = insertelement <8 x i16> %i.mqu, i16 %i.mqn, i64 4
  %i.mqw = insertelement <8 x i16> %i.mqv, i16 %i.mqo, i64 5
  %i.mqx = insertelement <8 x i16> %i.mqw, i16 %i.mqp, i64 6
  %i.mqy = insertelement <8 x i16> %i.mqx, i16 %i.mqq, i64 7
  %i.mqz = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mqy)
  %i.mra = zext <8 x i16> %i.mqz to <8 x i32>
  %i.mrb = lshr <8 x i32> %i.mra, %broadcast.splat4820 ; 2 uses
  %i.mrc = lshr <8 x i32> %i.mrb, %broadcast.splat4822
  %i.mrd = add nuw nsw <8 x i32> %i.mrb, %broadcast.splat4818
  %i.mre = sub nsw <8 x i32> %i.mrd, %i.mrc
  %i.mrf = lshr <8 x i32> %i.mre, %broadcast.splat4824
  %i.mrg = shl <8 x i32> %i.mrf, %broadcast.splat4826
  %i.mrh = shufflevector <8 x i32> %i.mgl, <8 x i32> %i.mia, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mri = trunc <16 x i32> %i.mrh to <16 x i16>
  %i.mrj = shufflevector <8 x i32> %i.mjo, <8 x i32> %i.mlc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mrk = trunc <16 x i32> %i.mrj to <16 x i16>
  %i.mrl = shufflevector <8 x i32> %i.mmq, <8 x i32> %i.moe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mrm = trunc <16 x i32> %i.mrl to <16 x i16>
  %i.mrn = shufflevector <8 x i32> %i.mps, <8 x i32> %i.mrg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mro = trunc <16 x i32> %i.mrn to <16 x i16>
  %i.mrp = shufflevector <16 x i16> %i.mri, <16 x i16> %i.mrk, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mrq = shufflevector <16 x i16> %i.mrm, <16 x i16> %i.mro, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.mrr = shufflevector <32 x i16> %i.mrp, <32 x i16> %i.mrq, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  %interleaved.vec4829 = tail call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %i.mrr)
  store <64 x i16> %interleaved.vec4829, ptr %i.mgm, align 2, !tbaa !60, !alias.scope !506, !noalias !505
  %index.next4830 = add nuw i64 %index4828, 8     ; 2 uses
  %i.mrs = icmp eq i64 %index.next4830, %n.vec4802
  br i1 %i.mrs, label %middle.block4831, label %vector.body4827, !llvm.loop !436

middle.block4831:                                 ; preds = %vector.body4827
  br i1 %cmp.n4832, label %.preheader2735.loopexit, label %scalar.ph4793.preheader

scalar.ph4793.preheader:                          ; preds = %.lr.ph2823, %middle.block4831
  %indvars.iv3117.ph = phi i64 [ %i.liy, %middle.block4831 ], [ 0, %.lr.ph2823 ]
  br label %scalar.ph4793

.preheader2735.loopexit:                          ; preds = %scalar.ph4793, %middle.block4831
  %indvars.iv.next3118.lcssa = phi i64 [ %i.liy, %middle.block4831 ], [ %indvars.iv.next3118, %scalar.ph4793 ]
  %i.mrt = trunc nuw nsw i64 %indvars.iv.next3118.lcssa to i32
  br label %.preheader2735

.preheader2735:                                   ; preds = %.preheader2735.loopexit, %bb.cn
  %.48.lcssa = phi i32 [ 0, %bb.cn ], [ %i.mrt, %.preheader2735.loopexit ] ; 3 uses
  %i.mru = icmp slt i32 %.48.lcssa, %.024902630263526392642
  br i1 %i.mru, label %.lr.ph2826.preheader, label %._crit_edge

.lr.ph2826.preheader:                             ; preds = %.preheader2735
  %i.mrv = zext i32 %.48.lcssa to i64             ; 8 uses
  %i.mrw = sub nsw i64 %wide.trip.count, %i.mrv   ; 3 uses
  %min.iters.check4760 = icmp ult i64 %i.mrw, 8
  br i1 %min.iters.check4760, label %.lr.ph2826.preheader5075, label %vector.scevcheck4752

vector.scevcheck4752:                             ; preds = %.lr.ph2826.preheader
  %i.mrx = xor i64 %i.mrv, -1
  %i.mry = add nsw i64 %i.mrx, %wide.trip.count   ; 2 uses
  %i.mrz = trunc i32 %.48.lcssa to i3
  %i.msa = trunc i64 %i.mry to i3
  %i.msb = xor i3 %i.mrz, -1
  %i.msc = icmp ult i3 %i.msb, %i.msa
  %i.msd = icmp ugt i64 %i.mry, 7
  %i.mse = or i1 %i.msc, %i.msd
  br i1 %i.mse, label %.lr.ph2826.preheader5075, label %vector.memcheck4761

vector.memcheck4761:                              ; preds = %vector.scevcheck4752
  %i.msf = mul nsw i64 %indvar4757, %i.lid
  %.reass = add i64 %i.msf, %invariant.op
  %diff.check4762 = icmp ult i64 %.reass, 15
  br i1 %diff.check4762, label %.lr.ph2826.preheader5075, label %vector.ph4763

vector.ph4763:                                    ; preds = %vector.memcheck4761
  %n.vec4764 = and i64 %i.mrw, -8                 ; 3 uses
  %i.msg = add nsw i64 %n.vec4764, %i.mrv
  %i.msh = and i64 %i.mrv, 7
  %i.msi = getelementptr inbounds nuw i8, ptr %i.mea, i64 %i.msh
  %wide.load4772 = load <8 x i8>, ptr %i.msi, align 1, !tbaa !64
  %i.msj = zext <8 x i8> %wide.load4772 to <8 x i32>
  br label %vector.body4769

vector.body4769:                                  ; preds = %vector.body4769, %vector.ph4763
  %index4770 = phi i64 [ 0, %vector.ph4763 ], [ %index.next4773, %vector.body4769 ] ; 2 uses
  %i.msk = add nuw i64 %index4770, %i.mrv         ; 2 uses
  %i.msl = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.msk
  %wide.load4771 = load <8 x i16>, ptr %i.msl, align 2, !tbaa !60
  %i.msm = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load4771)
  %i.msn = zext <8 x i16> %i.msm to <8 x i32>     ; 2 uses
  %i.mso = lshr <8 x i32> %i.msn, %broadcast.splat4766
  %i.msp = add nuw nsw <8 x i32> %i.msj, %i.msn
  %i.msq = sub nsw <8 x i32> %i.msp, %i.mso
  %i.msr = lshr <8 x i32> %i.msq, %broadcast.splat4768
  %i.mss = trunc <8 x i32> %i.msr to <8 x i16>
  %i.mst = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %i.mss)
  %i.msu = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.msk
  store <8 x i16> %i.mst, ptr %i.msu, align 2, !tbaa !60
  %index.next4773 = add nuw i64 %index4770, 8     ; 2 uses
  %i.msv = icmp eq i64 %index.next4773, %n.vec4764
  br i1 %i.msv, label %middle.block4774, label %vector.body4769, !llvm.loop !437

middle.block4774:                                 ; preds = %vector.body4769
  %cmp.n4775 = icmp eq i64 %i.mrw, %n.vec4764
  br i1 %cmp.n4775, label %._crit_edge, label %.lr.ph2826.preheader5075

.lr.ph2826.preheader5075:                         ; preds = %vector.memcheck4761, %vector.scevcheck4752, %.lr.ph2826.preheader, %middle.block4774
  %indvars.iv3120.ph = phi i64 [ %i.mrv, %vector.memcheck4761 ], [ %i.mrv, %vector.scevcheck4752 ], [ %i.mrv, %.lr.ph2826.preheader ], [ %i.msg, %middle.block4774 ] ; 7 uses
  %i.msw = sub nsw i64 %wide.trip.count, %indvars.iv3120.ph
  %xtraiter = and i64 %i.msw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph2826.prol.loopexit, label %.lr.ph2826.prol

.lr.ph2826.prol:                                  ; preds = %.lr.ph2826.preheader5075
  %i.msx = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %indvars.iv3120.ph
  %i.msy = load i16, ptr %i.msx, align 2, !tbaa !60
  %i.msz = tail call i16 @llvm.bswap.i16(i16 %i.msy)
  %i.mta = zext i16 %i.msz to i32                 ; 2 uses
  %i.mtb = lshr i32 %i.mta, %i.fk
  %i.mtc = and i64 %indvars.iv3120.ph, 7
  %i.mtd = getelementptr inbounds nuw i8, ptr %i.mea, i64 %i.mtc
  %i.mte = load i8, ptr %i.mtd, align 1, !tbaa !64
  %i.mtf = zext i8 %i.mte to i32
  %i.mtg = add nuw nsw i32 %i.mtf, %i.mta
  %i.mth = sub nsw i32 %i.mtg, %i.mtb
  %i.mti = lshr i32 %i.mth, %i.ibm
  %i.mtj = trunc i32 %i.mti to i16
  %i.mtk = tail call i16 @llvm.bswap.i16(i16 %i.mtj)
  %i.mtl = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %indvars.iv3120.ph
  store i16 %i.mtk, ptr %i.mtl, align 2, !tbaa !60
  %indvars.iv.next3121.prol = add nuw nsw i64 %indvars.iv3120.ph, 1
  br label %.lr.ph2826.prol.loopexit

.lr.ph2826.prol.loopexit:                         ; preds = %.lr.ph2826.prol, %.lr.ph2826.preheader5075
  %indvars.iv3120.unr = phi i64 [ %indvars.iv3120.ph, %.lr.ph2826.preheader5075 ], [ %indvars.iv.next3121.prol, %.lr.ph2826.prol ]
  %i.mtm = icmp eq i64 %indvars.iv3120.ph, %i.liz
  br i1 %i.mtm, label %._crit_edge, label %.lr.ph2826

scalar.ph4793:                                    ; preds = %scalar.ph4793.preheader, %scalar.ph4793
  %indvars.iv3117 = phi i64 [ %indvars.iv.next3118, %scalar.ph4793 ], [ %indvars.iv3117.ph, %scalar.ph4793.preheader ] ; 10 uses
  %i.mtn = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %indvars.iv3117
  %i.mto = load i16, ptr %i.mtn, align 2, !tbaa !60
  %i.mtp = tail call i16 @llvm.bswap.i16(i16 %i.mto)
  %i.mtq = zext i16 %i.mtp to i32
  %i.mtr = lshr i32 %i.mtq, %i.fm                 ; 2 uses
  %i.mts = lshr i32 %i.mtr, %i.fk
  %i.mtt = add nuw nsw i32 %i.mtr, %i.mec
  %i.mtu = sub nsw i32 %i.mtt, %i.mts
  %i.mtv = lshr i32 %i.mtu, %i.ibm
  %i.mtw = shl i32 %i.mtv, %i.fo
  %i.mtx = trunc i32 %i.mtw to i16
  %i.mty = tail call i16 @llvm.bswap.i16(i16 %i.mtx)
  %i.mtz = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %indvars.iv3117
  store i16 %i.mty, ptr %i.mtz, align 2, !tbaa !60
  %i.mua = or disjoint i64 %indvars.iv3117, 1     ; 2 uses
  %i.mub = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mua
  %i.muc = load i16, ptr %i.mub, align 2, !tbaa !60
  %i.mud = tail call i16 @llvm.bswap.i16(i16 %i.muc)
  %i.mue = zext i16 %i.mud to i32
  %i.muf = lshr i32 %i.mue, %i.fm                 ; 2 uses
  %i.mug = lshr i32 %i.muf, %i.fk
  %i.muh = add nuw nsw i32 %i.muf, %i.mef
  %i.mui = sub nsw i32 %i.muh, %i.mug
  %i.muj = lshr i32 %i.mui, %i.ibm
  %i.muk = shl i32 %i.muj, %i.fo
  %i.mul = trunc i32 %i.muk to i16
  %i.mum = tail call i16 @llvm.bswap.i16(i16 %i.mul)
  %i.mun = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mua
  store i16 %i.mum, ptr %i.mun, align 2, !tbaa !60
  %i.muo = or disjoint i64 %indvars.iv3117, 2     ; 2 uses
  %i.mup = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.muo
  %i.muq = load i16, ptr %i.mup, align 2, !tbaa !60
  %i.mur = tail call i16 @llvm.bswap.i16(i16 %i.muq)
  %i.mus = zext i16 %i.mur to i32
  %i.mut = lshr i32 %i.mus, %i.fm                 ; 2 uses
  %i.muu = lshr i32 %i.mut, %i.fk
  %i.muv = add nuw nsw i32 %i.mut, %i.mei
  %i.muw = sub nsw i32 %i.muv, %i.muu
  %i.mux = lshr i32 %i.muw, %i.ibm
  %i.muy = shl i32 %i.mux, %i.fo
  %i.muz = trunc i32 %i.muy to i16
  %i.mva = tail call i16 @llvm.bswap.i16(i16 %i.muz)
  %i.mvb = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.muo
  store i16 %i.mva, ptr %i.mvb, align 2, !tbaa !60
  %i.mvc = or disjoint i64 %indvars.iv3117, 3     ; 2 uses
  %i.mvd = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mvc
  %i.mve = load i16, ptr %i.mvd, align 2, !tbaa !60
  %i.mvf = tail call i16 @llvm.bswap.i16(i16 %i.mve)
  %i.mvg = zext i16 %i.mvf to i32
  %i.mvh = lshr i32 %i.mvg, %i.fm                 ; 2 uses
  %i.mvi = lshr i32 %i.mvh, %i.fk
  %i.mvj = add nuw nsw i32 %i.mvh, %i.mel
  %i.mvk = sub nsw i32 %i.mvj, %i.mvi
  %i.mvl = lshr i32 %i.mvk, %i.ibm
  %i.mvm = shl i32 %i.mvl, %i.fo
  %i.mvn = trunc i32 %i.mvm to i16
  %i.mvo = tail call i16 @llvm.bswap.i16(i16 %i.mvn)
  %i.mvp = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mvc
  store i16 %i.mvo, ptr %i.mvp, align 2, !tbaa !60
  %i.mvq = or disjoint i64 %indvars.iv3117, 4     ; 2 uses
  %i.mvr = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mvq
  %i.mvs = load i16, ptr %i.mvr, align 2, !tbaa !60
  %i.mvt = tail call i16 @llvm.bswap.i16(i16 %i.mvs)
  %i.mvu = zext i16 %i.mvt to i32
  %i.mvv = lshr i32 %i.mvu, %i.fm                 ; 2 uses
  %i.mvw = lshr i32 %i.mvv, %i.fk
  %i.mvx = add nuw nsw i32 %i.mvv, %i.meo
  %i.mvy = sub nsw i32 %i.mvx, %i.mvw
  %i.mvz = lshr i32 %i.mvy, %i.ibm
  %i.mwa = shl i32 %i.mvz, %i.fo
  %i.mwb = trunc i32 %i.mwa to i16
  %i.mwc = tail call i16 @llvm.bswap.i16(i16 %i.mwb)
  %i.mwd = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mvq
  store i16 %i.mwc, ptr %i.mwd, align 2, !tbaa !60
  %i.mwe = or disjoint i64 %indvars.iv3117, 5     ; 2 uses
  %i.mwf = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mwe
  %i.mwg = load i16, ptr %i.mwf, align 2, !tbaa !60
  %i.mwh = tail call i16 @llvm.bswap.i16(i16 %i.mwg)
  %i.mwi = zext i16 %i.mwh to i32
  %i.mwj = lshr i32 %i.mwi, %i.fm                 ; 2 uses
  %i.mwk = lshr i32 %i.mwj, %i.fk
  %i.mwl = add nuw nsw i32 %i.mwj, %i.mer
  %i.mwm = sub nsw i32 %i.mwl, %i.mwk
  %i.mwn = lshr i32 %i.mwm, %i.ibm
  %i.mwo = shl i32 %i.mwn, %i.fo
  %i.mwp = trunc i32 %i.mwo to i16
  %i.mwq = tail call i16 @llvm.bswap.i16(i16 %i.mwp)
  %i.mwr = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mwe
  store i16 %i.mwq, ptr %i.mwr, align 2, !tbaa !60
  %i.mws = or disjoint i64 %indvars.iv3117, 6     ; 2 uses
  %i.mwt = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mws
  %i.mwu = load i16, ptr %i.mwt, align 2, !tbaa !60
  %i.mwv = tail call i16 @llvm.bswap.i16(i16 %i.mwu)
  %i.mww = zext i16 %i.mwv to i32
  %i.mwx = lshr i32 %i.mww, %i.fm                 ; 2 uses
  %i.mwy = lshr i32 %i.mwx, %i.fk
  %i.mwz = add nuw nsw i32 %i.mwx, %i.meu
  %i.mxa = sub nsw i32 %i.mwz, %i.mwy
  %i.mxb = lshr i32 %i.mxa, %i.ibm
  %i.mxc = shl i32 %i.mxb, %i.fo
  %i.mxd = trunc i32 %i.mxc to i16
  %i.mxe = tail call i16 @llvm.bswap.i16(i16 %i.mxd)
  %i.mxf = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mws
  store i16 %i.mxe, ptr %i.mxf, align 2, !tbaa !60
  %i.mxg = or disjoint i64 %indvars.iv3117, 7     ; 2 uses
  %i.mxh = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %i.mxg
  %i.mxi = load i16, ptr %i.mxh, align 2, !tbaa !60
  %i.mxj = tail call i16 @llvm.bswap.i16(i16 %i.mxi)
  %i.mxk = zext i16 %i.mxj to i32
  %i.mxl = lshr i32 %i.mxk, %i.fm                 ; 2 uses
  %i.mxm = lshr i32 %i.mxl, %i.fk
  %i.mxn = add nuw nsw i32 %i.mxl, %i.mex
  %i.mxo = sub nsw i32 %i.mxn, %i.mxm
  %i.mxp = lshr i32 %i.mxo, %i.ibm
  %i.mxq = shl i32 %i.mxp, %i.fo
  %i.mxr = trunc i32 %i.mxq to i16
  %i.mxs = tail call i16 @llvm.bswap.i16(i16 %i.mxr)
  %i.mxt = getelementptr inbounds nuw [2 x i8], ptr %.1325092828, i64 %i.mxg
  store i16 %i.mxs, ptr %i.mxt, align 2, !tbaa !60
  %indvars.iv.next3118 = add nuw nsw i64 %indvars.iv3117, 8 ; 3 uses
  %i.mxu = icmp samesign ult i64 %indvars.iv.next3118, %i.lib
  br i1 %i.mxu, label %scalar.ph4793, label %.preheader2735.loopexit, !llvm.loop !438

.lr.ph2826:                                       ; preds = %.lr.ph2826.prol.loopexit, %.lr.ph2826
  %indvars.iv3120 = phi i64 [ %indvars.iv.next3121.1, %.lr.ph2826 ], [ %indvars.iv3120.unr, %.lr.ph2826.prol.loopexit ] ; 5 uses
  %i.mxv = getelementptr inbounds nuw [2 x i8], ptr %.1825282827, i64 %indvars.iv3120
  %i.mxw = load i16, ptr %i.mxv, align 2, !tbaa !60
  %i.mxx = tail call i16 @llvm.bswap.i16(i16 %i.mxw)
  %i.mxy = zext i16 %i.mxx to i32                 ; 2 uses
  %i.mxz = lshr i32 %i.mxy, %i.fk
end_hunk_12
begin_hunk_13_@gray8aToPlanar8:bb.a

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %wide.trip.count26 = zext nneg i32 %5 to i64    ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 5 uses
  %indvars.iv23.tr = trunc nuw i64 %indvars.iv23 to i32
  %i.b = shl nuw i32 %indvars.iv23.tr, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 %i.g ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv23
  store i8 %i.i, ptr %i.j, align 1, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv23
  store i8 %i.l, ptr %i.m, align 1, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv23
  store i8 %i.o, ptr %i.p, align 1, !tbaa !64
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count26
  br i1 %exitcond27.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !997

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 %i.v ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.x, ptr %i.y, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !64
  %i.af = getelementptr i8, ptr %i.s, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count26
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !997
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @pal8ToPlanar8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %5, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %4, null
  %wide.trip.count25 = zext nneg i32 %5 to i64    ; 3 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count25, 1
  %i.b = icmp eq i32 %5, 1
  br i1 %i.b, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count25, 2147483646
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv22 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next23.1, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.1, %.lr.ph.split.us ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv22
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 %i.f ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv22
  store i8 %i.h, ptr %i.i, align 1, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv22
  store i8 %i.k, ptr %i.l, align 1, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22
  store i8 %i.n, ptr %i.o, align 1, !tbaa !64
  %indvars.iv.next23 = or disjoint i64 %indvars.iv22, 1 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next23
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 %i.s ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next23
  store i8 %i.u, ptr %i.v, align 1, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next23
  store i8 %i.x, ptr %i.y, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next23
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !64
  %indvars.iv.next23.1 = add nuw nsw i64 %indvars.iv22, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !998

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv22.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next23.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod31 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv22.epil.init
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !64
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv22.epil.init
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv22.epil.init
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv22.epil.init
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !64
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 %i.as ; 4 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1, !tbaa !64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !64
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !64
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count25
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !998
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %4 = shl nuw i64 %indvars.iv, 1
  %5 = and i64 %4, 4294967292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %5 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw i32 %i.j, 24
  %i.l = or i32 %i.k, %i.g
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.l, ptr %i.m, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %6 = shl nuw i64 %indvars.iv.next, 1
  %7 = and i64 %6, 4294967294
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %7 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !64
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = getelementptr i8, ptr %i.n, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !64
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw i32 %i.u, 24
  %i.w = or i32 %i.v, %i.r
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.w, ptr %i.x, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !999

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.y = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !64
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16
  %i.af = getelementptr i8, ptr %i.aa, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw i32 %i.ah, 24
  %i.aj = or i32 %i.ai, %i.ae
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked32_1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %4 = shl nuw i64 %indvars.iv, 1
  %5 = and i64 %4, 4294967292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %5 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !64
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !16
  %i.h = getelementptr i8, ptr %i.c, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  %i.j = zext i8 %i.i to i32
  %i.k = or i32 %i.g, %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.k, ptr %i.l, align 4, !tbaa !16
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %6 = shl nuw i64 %indvars.iv.next, 1
  %7 = and i64 %6, 4294967294
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %7 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !64
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !16
  %i.r = getelementptr i8, ptr %i.m, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !64
  %i.t = zext i8 %i.s to i32
  %i.u = or i32 %i.q, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.u, ptr %i.v, align 4, !tbaa !16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1000

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %indvars.iv.tr.epil = trunc nuw i64 %indvars.iv.epil.init to i32
  %i.w = shl nuw i32 %indvars.iv.tr.epil, 1
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %0, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !64
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.ad = getelementptr i8, ptr %i.y, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !64
  %i.af = zext i8 %i.ae to i32
  %i.ag = or i32 %i.ac, %i.af
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @gray8aToPacked24(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.01516 = phi ptr [ %1, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 4 uses
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.b = shl nuw i32 %indvars.iv.tr, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !64
  store i8 %i.i, ptr %.01516, align 1, !tbaa !64
  %i.j = load i8, ptr %i.d, align 1, !tbaa !64
  %i.k = zext i8 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %.01516, i64 1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !64
  %i.q = load i8, ptr %i.d, align 1, !tbaa !64
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %.01516, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %.01516, i64 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1001

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i16> @llvm.bswap.v16i16(<16 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i16> @llvm.bswap.v32i16(<32 x i16>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <64 x i16> @llvm.bswap.v64i16(<64 x i16>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = distinct !{!2, !14}
!3 = distinct !{!3, !14}
!4 = distinct !{!4, !14}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 1, !"override-stack-alignment", i32 16}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!11, !11, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 _ZTS7AVClass", !17, i64 0}
!19 = !{!"SwsContext", !18, i64 0, !17, i64 8, !11, i64 16, !10, i64 24, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116}
!20 = !{!"p1 _ZTS10SwsContext", !17, i64 0}
!21 = !{!"p1 _ZTS13AVSliceThread", !17, i64 0}
!22 = !{!"any p2 pointer", !17, i64 0}
!23 = !{!"p2 _ZTS10SwsContext", !22, i64 0}
!24 = !{!"p1 int", !17, i64 0}
!25 = !{!"p1 _ZTS7AVFrame", !17, i64 0}
!26 = !{!"p1 _ZTS5Range", !17, i64 0}
!27 = !{!"RangeList", !26, i64 0, !11, i64 8, !11, i64 12}
!28 = !{!"double", !10, i64 0}
!29 = !{!"p1 short", !17, i64 0}
!30 = !{!"p1 _ZTS8SwsSlice", !17, i64 0}
!31 = !{!"p1 _ZTS19SwsFilterDescriptor", !17, i64 0}
!32 = !{!"p1 omnipotent char", !17, i64 0}
!33 = !{!"long", !10, i64 0}
!34 = !{!"SwsLuts", !29, i64 0, !29, i64 8}
!35 = !{!"SwsColorXform", !34, i64 0, !10, i64 16}
!36 = !{!"p1 _ZTS16Half2FloatTables", !17, i64 0}
!37 = !{!"FFFramePool", !11, i64 0, !10, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !10, i64 32, !10, i64 48}
!38 = !{!"SwsInternal", !19, i64 0, !20, i64 120, !21, i64 128, !23, i64 136, !24, i64 144, !11, i64 152, !10, i64 160, !11, i64 176, !11, i64 180, !17, i64 184, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232, !11, i64 236, !11, i64 240, !11, i64 244, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !25, i64 264, !25, i64 272, !27, i64 280, !10, i64 296, !10, i64 320, !10, i64 352, !11, i64 416, !28, i64 424, !11, i64 432, !29, i64 440, !29, i64 448, !11, i64 456, !10, i64 460, !11, i64 468, !30, i64 472, !31, i64 480, !10, i64 488, !10, i64 1512, !10, i64 2536, !11, i64 3560, !11, i64 3564, !32, i64 3568, !11, i64 3576, !29, i64 3584, !29, i64 3592, !29, i64 3600, !29, i64 3608, !24, i64 3616, !24, i64 3624, !24, i64 3632, !24, i64 3640, !11, i64 3648, !11, i64 3652, !11, i64 3656, !11, i64 3660, !11, i64 3664, !11, i64 3668, !32, i64 3672, !32, i64 3680, !11, i64 3688, !11, i64 3692, !11, i64 3696, !17, i64 3704, !10, i64 3712, !10, i64 8832, !10, i64 19072, !10, i64 29312, !10, i64 39552, !10, i64 40256, !11, i64 40288, !11, i64 40292, !11, i64 40296, !10, i64 40300, !10, i64 40316, !11, i64 40332, !11, i64 40336, !11, i64 40340, !11, i64 40344, !11, i64 40348, !11, i64 40352, !11, i64 40356, !11, i64 40360, !11, i64 40364, !11, i64 40368, !33, i64 40376, !33, i64 40384, !33, i64 40392, !33, i64 40400, !33, i64 40408, !33, i64 40416, !33, i64 40424, !33, i64 40432, !33, i64 40440, !33, i64 40448, !33, i64 40456, !10, i64 40464, !10, i64 44560, !11, i64 48656, !33, i64 48664, !33, i64 48672, !33, i64 48680, !33, i64 48688, !33, i64 48696, !10, i64 48704, !33, i64 52800, !33, i64 52808, !10, i64 52816, !10, i64 52832, !32, i64 52864, !32, i64 52872, !11, i64 52880, !17, i64 52888, !17, i64 52896, !35, i64 52904, !35, i64 52944, !17, i64 52984, !17, i64 52992, !17, i64 53000, !17, i64 53008, !17, i64 53016, !17, i64 53024, !17, i64 53032, !17, i64 53040, !17, i64 53048, !17, i64 53056, !17, i64 53064, !17, i64 53072, !17, i64 53080, !17, i64 53088, !17, i64 53096, !17, i64 53104, !17, i64 53112, !17, i64 53120, !17, i64 53128, !17, i64 53136, !11, i64 53144, !11, i64 53148, !33, i64 53152, !33, i64 53160, !11, i64 53168, !32, i64 53176, !11, i64 53184, !32, i64 53192, !11, i64 53200, !11, i64 53204, !10, i64 53208, !10, i64 53212, !11, i64 53216, !36, i64 53224, !17, i64 53232, !11, i64 53240, !37, i64 53248}
!39 = !{!38, !11, i64 16}
!40 = !{!"AVPixFmtDescriptor", !32, i64 0, !10, i64 8, !10, i64 9, !10, i64 10, !33, i64 16, !10, i64 24, !32, i64 104}
!41 = !{!40, !33, i64 16}
!42 = !{!38, !11, i64 224}
!43 = !{!38, !11, i64 228}
!44 = !{!38, !11, i64 44}
!45 = !{!40, !10, i64 8}
!46 = !{!"AVComponentDescriptor", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16}
!47 = !{!46, !11, i64 16}
end_hunk_13
