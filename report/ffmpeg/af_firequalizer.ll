Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_firequalizer?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@fast_convolute:bb.a
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !67
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.1 ; 3 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !67
  %i.bx = fmul nsz float %i.bu, %i.bw
  store float %i.bx, ptr %i.bv, align 4, !tbaa !67
  %i.by = load float, ptr %i.bt, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !67
  %i.cb = fmul nsz float %i.by, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !67
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge107, label %.lr.ph106, !llvm.loop !134

._crit_edge107:                                   ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106, %middle.block, %tailrecurse._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !135
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !136
  tail call void %i.cd(ptr noundef %i.cf, ptr noundef %i.k, ptr noundef %i.t, i64 noundef 8) #14
  %i.cg = load i32, ptr %i.g, align 4, !tbaa !47
  %i.ch = load i32, ptr %i.o, align 4, !tbaa !92
  %i.ci = sub nsw i32 %i.cg, %i.ch                ; 3 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %._crit_edge107
  %wide.trip.count119 = zext nneg i32 %i.ci to i64 ; 7 uses
  %min.iters.check143 = icmp ult i32 %i.ci, 16
  br i1 %min.iters.check143, label %.lr.ph110.preheader156, label %vector.memcheck136

vector.memcheck136:                               ; preds = %.lr.ph110.preheader
  %i.ck = add nsw i64 %i.j, %wide.trip.count119
  %i.cl = shl nsw i64 %i.ck, 2
  %scevgep137 = getelementptr i8, ptr %2, i64 %i.cl
  %i.cm = add nsw i64 %i.q, %i.m
  %i.cn = add nsw i64 %i.cm, %wide.trip.count119
  %i.co = shl nsw i64 %i.cn, 2
  %scevgep138 = getelementptr i8, ptr %2, i64 %i.co
  %bound0139 = icmp ult ptr %i.k, %scevgep138
  %bound1140 = icmp ult ptr %i.r, %scevgep137
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %.lr.ph110.preheader156, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck136
  %n.vec145 = and i64 %wide.trip.count119, 2147483640 ; 3 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index147 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load148 = load <4 x float>, ptr %i.cp, align 4, !tbaa !67, !alias.scope !137
  %wide.load149 = load <4 x float>, ptr %i.cq, align 4, !tbaa !67, !alias.scope !137
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index147 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.load150 = load <4 x float>, ptr %i.cr, align 4, !tbaa !67, !alias.scope !140, !noalias !137
  %wide.load151 = load <4 x float>, ptr %i.cs, align 4, !tbaa !67, !alias.scope !140, !noalias !137
  %i.ct = fadd nsz <4 x float> %wide.load148, %wide.load150
  %i.cu = fadd nsz <4 x float> %wide.load149, %wide.load151
  store <4 x float> %i.ct, ptr %i.cr, align 4, !tbaa !67, !alias.scope !140, !noalias !137
  store <4 x float> %i.cu, ptr %i.cs, align 4, !tbaa !67, !alias.scope !140, !noalias !137
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.cv, label %middle.block153, label %vector.body146, !llvm.loop !142

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %n.vec145, %wide.trip.count119
  br i1 %cmp.n154, label %._crit_edge111, label %.lr.ph110.preheader156

.lr.ph110.preheader156:                           ; preds = %vector.memcheck136, %.lr.ph110.preheader, %middle.block153
  %indvars.iv116.ph = phi i64 [ 0, %vector.memcheck136 ], [ 0, %.lr.ph110.preheader ], [ %n.vec145, %middle.block153 ] ; 3 uses
  %xtraiter161 = and i64 %wide.trip.count119, 3   ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader156, %.lr.ph110.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %.lr.ph110.prol ], [ %indvars.iv116.ph, %.lr.ph110.preheader156 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader156 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv116.prol
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv116.prol ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !67
  %i.da = fadd nsz float %i.cx, %i.cz
  store float %i.da, ptr %i.cy, align 4, !tbaa !67
  %indvars.iv.next117.prol = add nuw nsw i64 %indvars.iv116.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter161
  br i1 %prol.iter.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !143

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader156
  %indvars.iv116.unr = phi i64 [ %indvars.iv116.ph, %.lr.ph110.preheader156 ], [ %indvars.iv.next117.prol, %.lr.ph110.prol ]
  %i.db = sub nsw i64 %indvars.iv116.ph, %wide.trip.count119
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.3, %.lr.ph110 ], [ %indvars.iv116.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv116
  %i.de = load float, ptr %i.dd, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv116 ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !67
  %i.dh = fadd nsz float %i.de, %i.dg
  store float %i.dh, ptr %i.df, align 4, !tbaa !67
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117
  %i.dj = load float, ptr %i.di, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117 ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !67
  %i.dm = fadd nsz float %i.dj, %i.dl
  store float %i.dm, ptr %i.dk, align 4, !tbaa !67
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117.1
  %i.do = load float, ptr %i.dn, align 4, !tbaa !67
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117.1 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !67
  %i.dr = fadd nsz float %i.do, %i.dq
  store float %i.dr, ptr %i.dp, align 4, !tbaa !67
  %indvars.iv.next117.2 = add nuw nsw i64 %indvars.iv116, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117.2
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117.2 ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !67
  %i.dw = fadd nsz float %i.dt, %i.dv
  store float %i.dw, ptr %i.du, align 4, !tbaa !67
  %indvars.iv.next117.3 = add nuw nsw i64 %indvars.iv116, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next117.3, %wide.trip.count119
  br i1 %exitcond120.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !144

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block153, %._crit_edge107
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.tr92.lcssa, ptr align 4 %i.k, i64 %i.ab, i1 false)
  %i.dx = load i32, ptr %3, align 4, !tbaa !90
  %.not88 = icmp eq i32 %i.dx, 0
  %i.dy = zext i1 %.not88 to i32
  store i32 %i.dy, ptr %3, align 4, !tbaa !90
  store i32 %.tr93.lcssa, ptr %i.o, align 4, !tbaa !92
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.dz = phi i32 [ %i.ea, %.lr.ph ], [ %i.c, %.preheader ]
  %.08296 = phi i32 [ %i.ed, %.lr.ph ], [ %.tr93100, %.preheader ]
  %.08395 = phi ptr [ %i.ec, %.lr.ph ], [ %.tr9299, %.preheader ] ; 2 uses
  tail call fastcc void @fast_convolute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.08395, i32 noundef %i.dz)
  %i.ea = load i32, ptr %i.a, align 4, !tbaa !71  ; 4 uses
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %.08395, i64 %i.eb ; 2 uses
  %i.ed = sub nsw i32 %.08296, %i.ea              ; 3 uses
  %i.ee = shl nsw i32 %i.ea, 1
  %i.ef = icmp sgt i32 %i.ed, %i.ee
  br i1 %i.ef, label %.lr.ph, label %tailrecurse, !llvm.loop !145

tailrecurse:                                      ; preds = %.lr.ph, %.preheader
  %.083.lcssa = phi ptr [ %.tr9299, %.preheader ], [ %i.ec, %.lr.ph ] ; 2 uses
  %.082.lcssa = phi i32 [ %.tr93100, %.preheader ], [ %i.ed, %.lr.ph ] ; 2 uses
  %i.eg = sdiv i32 %.082.lcssa, 2                 ; 3 uses
  tail call fastcc void @fast_convolute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.083.lcssa, i32 noundef %i.eg)
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %.083.lcssa, i64 %i.eh ; 2 uses
  %i.ej = sub nsw i32 %.082.lcssa, %i.eg          ; 3 uses
  %i.ek = load i32, ptr %i.a, align 4, !tbaa !71  ; 2 uses
  %.not = icmp sgt i32 %i.ej, %i.ek
  br i1 %.not, label %.preheader, label %tailrecurse._crit_edge
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fast_convolute_nonlinear(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71   ; 2 uses
  %.not104 = icmp sgt i32 %5, %i.b
  br i1 %.not104, label %.preheader, label %tailrecurse._crit_edge

.preheader:                                       ; preds = %bb.a, %tailrecurse
  %i.c = phi i32 [ %i.ds, %tailrecurse ], [ %i.b, %bb.a ] ; 2 uses
  %.tr100106 = phi i32 [ %i.dr, %tailrecurse ], [ %5, %bb.a ] ; 3 uses
  %.tr99105 = phi ptr [ %i.dq, %tailrecurse ], [ %4, %bb.a ] ; 2 uses
  %i.d = shl nsw i32 %i.c, 1
  %i.e = icmp sgt i32 %.tr100106, %i.d
  br i1 %i.e, label %.lr.ph, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr99.lcssa = phi ptr [ %4, %bb.a ], [ %i.dq, %tailrecurse ] ; 2 uses
  %.tr100.lcssa = phi i32 [ %5, %bb.a ], [ %i.dr, %tailrecurse ] ; 3 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !90     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47   ; 3 uses
  %i.i = mul nsw i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 12 uses
  %.not94 = icmp eq i32 %i.f, 0
  %i.l = select i1 %.not94, i32 %i.h, i32 0
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %2, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !92
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !85   ; 6 uses
  %i.u = sext i32 %.tr100.lcssa to i64            ; 2 uses
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %.tr99.lcssa, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.u
  %i.x = sub nsw i32 %i.h, %.tr100.lcssa
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.z, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !126
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  tail call void %i.ab(ptr noundef %i.ad, ptr noundef %i.t, ptr noundef %i.k, i64 noundef 4) #14
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !47  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, -2
  br i1 %i.af, label %.lr.ph111.preheader, label %._crit_edge112

.lr.ph111.preheader:                              ; preds = %tailrecurse._crit_edge
  %i.ag = sext i32 %i.ae to i64                   ; 3 uses
  %i.ah = add nsw i64 %i.ag, 1                    ; 2 uses
  %i.ai = lshr i64 %i.ah, 1
  %i.aj = add nuw i64 %i.ai, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check, label %.lr.ph111.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph111.preheader
  %i.ak = shl nsw i64 %i.ag, 2
  %i.al = add nsw i64 %i.ak, 4
  %i.am = and i64 %i.al, -8
  %i.an = add nsw i64 %i.am, 8                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.an
  %scevgep137 = getelementptr i8, ptr %1, i64 %i.an
  %bound0 = icmp ult ptr %i.t, %scevgep137
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph111.preheader162, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aj, -4                      ; 3 uses
  %i.ao = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl nuw i64 %index, 1                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ap ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.aq, align 4, !tbaa !67, !alias.scope !146, !noalias !149 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec138 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %wide.vec139 = load <8 x float>, ptr %i.ar, align 4, !tbaa !67, !alias.scope !149 ; 2 uses
  %strided.vec140 = shufflevector <8 x float> %wide.vec139, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec141 = shufflevector <8 x float> %wide.vec139, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.as = fneg nsz <4 x float> %strided.vec141
  %i.at = fmul nsz <4 x float> %strided.vec138, %i.as
  %i.au = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec140, <4 x float> %i.at)
  %i.av = fmul nsz <4 x float> %strided.vec140, %strided.vec138
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec141, <4 x float> %i.av)
  %interleaved.vec = shufflevector <4 x float> %i.au, <4 x float> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aq, align 4, !tbaa !67, !alias.scope !146, !noalias !149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge112, label %.lr.ph111.preheader162

.lr.ph111.preheader162:                           ; preds = %vector.memcheck, %.lr.ph111.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph111.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.preheader162, %.lr.ph111
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph111 ], [ %indvars.iv.ph, %.lr.ph111.preheader162 ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %7 = load <2 x float>, ptr %i.ay, align 4, !tbaa !67 ; 2 uses
  %i.bb = load float, ptr %6, align 4, !tbaa !67
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !67 ; 2 uses
  %i.bd = fneg nsz float %i.bb
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bf = insertelement <2 x float> %i.be, float %i.bd, i64 0
  %i.bg = fmul nsz <2 x float> %8, %i.bf
  %i.bh = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bc, <2 x float> %i.bg)
  store <2 x float> %i.bi, ptr %i.ay, align 4, !tbaa !67
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.bj = icmp slt i64 %indvars.iv, %i.ag
  br i1 %i.bj, label %.lr.ph111, label %._crit_edge112, !llvm.loop !152

._crit_edge112:                                   ; preds = %.lr.ph111, %middle.block, %tailrecurse._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !135
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !136
  tail call void %i.bl(ptr noundef %i.bn, ptr noundef %i.k, ptr noundef %i.t, i64 noundef 8) #14
  %i.bo = load i32, ptr %i.g, align 4, !tbaa !47
  %i.bp = load i32, ptr %i.o, align 4, !tbaa !92
  %i.bq = sub nsw i32 %i.bo, %i.bp                ; 3 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph115.preheader, label %._crit_edge116

.lr.ph115.preheader:                              ; preds = %._crit_edge112
  %wide.trip.count = zext nneg i32 %i.bq to i64   ; 7 uses
  %min.iters.check149 = icmp ult i32 %i.bq, 16
  br i1 %min.iters.check149, label %.lr.ph115.preheader161, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph115.preheader
  %i.bs = add nsw i64 %i.j, %wide.trip.count
  %i.bt = shl nsw i64 %i.bs, 2
  %scevgep143 = getelementptr i8, ptr %2, i64 %i.bt
  %i.bu = add nsw i64 %i.q, %i.m
  %i.bv = add nsw i64 %i.bu, %wide.trip.count
  %i.bw = shl nsw i64 %i.bv, 2
  %scevgep144 = getelementptr i8, ptr %2, i64 %i.bw
  %bound0145 = icmp ult ptr %i.k, %scevgep144
  %bound1146 = icmp ult ptr %i.r, %scevgep143
  %found.conflict147 = and i1 %bound0145, %bound1146
  br i1 %found.conflict147, label %.lr.ph115.preheader161, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck142
  %n.vec151 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next157, %vector.body152 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index153 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load = load <4 x float>, ptr %i.bx, align 4, !tbaa !67, !alias.scope !153
  %wide.load154 = load <4 x float>, ptr %i.by, align 4, !tbaa !67, !alias.scope !153
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index153 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load155 = load <4 x float>, ptr %i.bz, align 4, !tbaa !67, !alias.scope !156, !noalias !153
  %wide.load156 = load <4 x float>, ptr %i.ca, align 4, !tbaa !67, !alias.scope !156, !noalias !153
  %i.cb = fadd nsz <4 x float> %wide.load, %wide.load155
  %i.cc = fadd nsz <4 x float> %wide.load154, %wide.load156
  store <4 x float> %i.cb, ptr %i.bz, align 4, !tbaa !67, !alias.scope !156, !noalias !153
  store <4 x float> %i.cc, ptr %i.ca, align 4, !tbaa !67, !alias.scope !156, !noalias !153
  %index.next157 = add nuw i64 %index153, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next157, %n.vec151
  br i1 %i.cd, label %middle.block158, label %vector.body152, !llvm.loop !158

middle.block158:                                  ; preds = %vector.body152
  %cmp.n159 = icmp eq i64 %n.vec151, %wide.trip.count
  br i1 %cmp.n159, label %._crit_edge116, label %.lr.ph115.preheader161

.lr.ph115.preheader161:                           ; preds = %vector.memcheck142, %.lr.ph115.preheader, %middle.block158
  %indvars.iv121.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph115.preheader ], [ %n.vec151, %middle.block158 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol

.lr.ph115.prol:                                   ; preds = %.lr.ph115.preheader161, %.lr.ph115.prol
  %indvars.iv121.prol = phi i64 [ %indvars.iv.next122.prol, %.lr.ph115.prol ], [ %indvars.iv121.ph, %.lr.ph115.preheader161 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph115.prol ], [ 0, %.lr.ph115.preheader161 ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv121.prol
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !67
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv121.prol ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !67
  %i.ci = fadd nsz float %i.cf, %i.ch
  store float %i.ci, ptr %i.cg, align 4, !tbaa !67
  %indvars.iv.next122.prol = add nuw nsw i64 %indvars.iv121.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph115.prol.loopexit, label %.lr.ph115.prol, !llvm.loop !159

.lr.ph115.prol.loopexit:                          ; preds = %.lr.ph115.prol, %.lr.ph115.preheader161
  %indvars.iv121.unr = phi i64 [ %indvars.iv121.ph, %.lr.ph115.preheader161 ], [ %indvars.iv.next122.prol, %.lr.ph115.prol ]
  %i.cj = sub nsw i64 %indvars.iv121.ph, %wide.trip.count
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.3, %.lr.ph115 ], [ %indvars.iv121.unr, %.lr.ph115.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv121
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !67
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv121 ; 2 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !67
  %i.cp = fadd nsz float %i.cm, %i.co
  store float %i.cp, ptr %i.cn, align 4, !tbaa !67
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next122
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !67
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next122 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !67
  %i.cu = fadd nsz float %i.cr, %i.ct
  store float %i.cu, ptr %i.cs, align 4, !tbaa !67
  %indvars.iv.next122.1 = add nuw nsw i64 %indvars.iv121, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next122.1
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !67
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next122.1 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !67
  %i.cz = fadd nsz float %i.cw, %i.cy
  store float %i.cz, ptr %i.cx, align 4, !tbaa !67
  %indvars.iv.next122.2 = add nuw nsw i64 %indvars.iv121, 3 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next122.2
  %i.db = load float, ptr %i.da, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next122.2 ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !67
  %i.de = fadd nsz float %i.db, %i.dd
  store float %i.de, ptr %i.dc, align 4, !tbaa !67
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next122.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge116, label %.lr.ph115, !llvm.loop !160

._crit_edge116:                                   ; preds = %.lr.ph115.prol.loopexit, %.lr.ph115, %middle.block158, %._crit_edge112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.tr99.lcssa, ptr align 4 %i.k, i64 %i.v, i1 false)
  %i.df = load i32, ptr %3, align 4, !tbaa !90
  %.not95 = icmp eq i32 %i.df, 0
  %i.dg = zext i1 %.not95 to i32
  store i32 %i.dg, ptr %3, align 4, !tbaa !90
  store i32 %.tr100.lcssa, ptr %i.o, align 4, !tbaa !92
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.dh = phi i32 [ %i.di, %.lr.ph ], [ %i.c, %.preheader ]
  %.0102 = phi ptr [ %i.dk, %.lr.ph ], [ %.tr99105, %.preheader ] ; 2 uses
  %.090101 = phi i32 [ %i.dl, %.lr.ph ], [ %.tr100106, %.preheader ]
  tail call fastcc void @fast_convolute_nonlinear(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.0102, i32 noundef %i.dh)
  %i.di = load i32, ptr %i.a, align 4, !tbaa !71  ; 4 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.0102, i64 %i.dj ; 2 uses
  %i.dl = sub nsw i32 %.090101, %i.di             ; 3 uses
  %i.dm = shl nsw i32 %i.di, 1
  %i.dn = icmp sgt i32 %i.dl, %i.dm
  br i1 %i.dn, label %.lr.ph, label %tailrecurse, !llvm.loop !161

tailrecurse:                                      ; preds = %.lr.ph, %.preheader
  %.090.lcssa = phi i32 [ %.tr100106, %.preheader ], [ %i.dl, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %.tr99105, %.preheader ], [ %i.dk, %.lr.ph ] ; 2 uses
  %i.do = sdiv i32 %.090.lcssa, 2                 ; 3 uses
  tail call fastcc void @fast_convolute_nonlinear(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.0.lcssa, i32 noundef %i.do)
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.dp ; 2 uses
  %i.dr = sub nsw i32 %.090.lcssa, %i.do          ; 3 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !71  ; 2 uses
  %.not = icmp sgt i32 %i.dr, %i.ds
  br i1 %.not, label %.preheader, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @common_uninit(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.d) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.f) #14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @av_tx_uninit(ptr noundef nonnull %i.g) #14
  store ptr null, ptr %i.d, align 8, !tbaa !136
  store ptr null, ptr %i.c, align 8, !tbaa !127
  store ptr null, ptr %i.b, align 8, !tbaa !162
  store ptr null, ptr %i.a, align 8, !tbaa !163
  store ptr null, ptr %i.e, align 8, !tbaa !42
  store ptr null, ptr %i.f, align 8, !tbaa !164
  store ptr null, ptr %i.g, align 8, !tbaa !165
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.h) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @av_freep(ptr noundef nonnull %i.i) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @av_freep(ptr noundef nonnull %i.j) #14
end_hunk_0
