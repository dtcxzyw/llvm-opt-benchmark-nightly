inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 207
begin_hunk_0_@vorbis_lsp_to_curve:bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #55

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 1) i32 @vorbis_lpc_to_lsp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #13 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = ashr i32 %i.a, 1                         ; 14 uses
  %i.c = add nsw i32 %i.b, 1                      ; 4 uses
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = alloca i8, i64 %i.e, align 16            ; 16 uses
  %i.g = alloca i8, i64 %i.e, align 16            ; 19 uses
  %i.h = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.i = alloca i8, i64 %i.e, align 16            ; 6 uses
  %i.j = ashr i32 %2, 1                           ; 19 uses
  %i.k = sext i32 %i.b to i64                     ; 10 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  store float 1.000000e+00, ptr %i.l, align 4
  %.not123 = icmp slt i32 %i.b, 1                 ; 2 uses
  br i1 %.not123, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.m = sext i32 %2 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %i.n = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, -8                       ; 3 uses
  %i.o = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = or disjoint i64 %index, 1                ; 3 uses
  %i.q = getelementptr [4 x i8], ptr %0, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 -4
  %i.s = getelementptr i8, ptr %i.q, i64 12
  %wide.load = load <4 x float>, ptr %i.r, align 4
  %wide.load180 = load <4 x float>, ptr %i.s, align 4
  %i.t = sub nsw i64 %i.m, %i.p
  %i.u = getelementptr inbounds [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -12
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -28
  %wide.load181 = load <4 x float>, ptr %i.v, align 4
  %wide.load182 = load <4 x float>, ptr %i.w, align 4
  %i.x = sub nsw i64 %i.k, %i.p
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -12
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -28
  %i.ab = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse184 = fadd <4 x float> %i.ab, %wide.load181
  %i.ac = shufflevector <4 x float> %wide.load180, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse185 = fadd <4 x float> %i.ac, %wide.load182
  store <4 x float> %reverse184, ptr %i.z, align 4
  store <4 x float> %reverse185, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader273

.lr.ph.preheader273:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader273, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader273 ] ; 4 uses
  %i.ae = getelementptr [4 x i8], ptr %0, i64 %indvars.iv
  %i.af = getelementptr i8, ptr %i.ae, i64 -4
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = sub nsw i64 %i.m, %indvars.iv
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fadd float %i.ag, %i.aj
  %i.al = sub nsw i64 %i.k, %indvars.iv
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.al
  store float %i.ak, ptr %i.am, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !663

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.an = sext i32 %i.j to i64                    ; 13 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.an
  store float 1.000000e+00, ptr %i.ao, align 4
  %.not101125 = icmp slt i32 %i.j, 1              ; 2 uses
  br i1 %.not101125, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %._crit_edge
  %i.ap = zext nneg i32 %2 to i64                 ; 2 uses
  %i.aq = add nuw nsw i32 %i.j, 1
  %wide.trip.count149 = zext nneg i32 %i.aq to i64
  %i.ar = zext nneg i32 %i.j to i64               ; 2 uses
  %min.iters.check187 = icmp ult i32 %i.j, 8
  br i1 %min.iters.check187, label %.lr.ph128.preheader272, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph128.preheader
  %n.vec190 = and i64 %i.ar, 2147483640           ; 3 uses
  %i.as = or disjoint i64 %n.vec190, 1
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph188
  %index192 = phi i64 [ 0, %vector.ph188 ], [ %index.next201, %vector.body191 ] ; 2 uses
  %i.at = or disjoint i64 %index192, 1            ; 3 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = getelementptr i8, ptr %i.au, i64 12
  %wide.load193 = load <4 x float>, ptr %i.av, align 4
  %wide.load194 = load <4 x float>, ptr %i.aw, align 4
  %i.ax = sub nsw i64 %i.ap, %i.at
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -28
  %wide.load195 = load <4 x float>, ptr %i.az, align 4
  %wide.load196 = load <4 x float>, ptr %i.ba, align 4
  %i.bb = sub nsw i64 %i.an, %i.at
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -12
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -28
  %i.bf = shufflevector <4 x float> %wide.load193, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse199 = fsub <4 x float> %i.bf, %wide.load195
  %i.bg = shufflevector <4 x float> %wide.load194, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse200 = fsub <4 x float> %i.bg, %wide.load196
  store <4 x float> %reverse199, ptr %i.bd, align 4
  store <4 x float> %reverse200, ptr %i.be, align 4
  %index.next201 = add nuw i64 %index192, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next201, %n.vec190
  br i1 %i.bh, label %middle.block202, label %vector.body191, !llvm.loop !664

middle.block202:                                  ; preds = %vector.body191
  %cmp.n203 = icmp eq i64 %n.vec190, %i.ar
  br i1 %cmp.n203, label %._crit_edge129, label %.lr.ph128.preheader272

.lr.ph128.preheader272:                           ; preds = %.lr.ph128.preheader, %middle.block202
  %indvars.iv146.ph = phi i64 [ 1, %.lr.ph128.preheader ], [ %i.as, %middle.block202 ]
  br label %.lr.ph128

.lr.ph128:                                        ; preds = %.lr.ph128.preheader272, %.lr.ph128
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %.lr.ph128 ], [ %indvars.iv146.ph, %.lr.ph128.preheader272 ] ; 4 uses
  %i.bi = getelementptr [4 x i8], ptr %0, i64 %indvars.iv146
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = sub nsw i64 %i.ap, %indvars.iv146
  %i.bm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = fsub float %i.bk, %i.bn
  %i.bp = sub nsw i64 %i.an, %indvars.iv146
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %._crit_edge129, label %.lr.ph128, !llvm.loop !665

._crit_edge129:                                   ; preds = %.lr.ph128, %middle.block202, %._crit_edge
  %i.br = icmp sgt i32 %i.b, %i.j
  br i1 %i.br, label %.preheader118, label %.preheader122

.preheader122:                                    ; preds = %._crit_edge129
  br i1 %.not123, label %.preheader120, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader122
  %i.bs = shl nuw nsw i64 %i.k, 2
  %scevgep264.a = getelementptr i8, ptr %i.f, i64 %i.bs
  %load_initial265.a = load float, ptr %scevgep264.a, align 4 ; 2 uses
  %i.bt = zext nneg i32 %i.b to i64               ; 2 uses
  %xtraiter = and i64 %i.bt, 3                    ; 3 uses
  %i.bu = icmp ult i32 %i.b, 4
  br i1 %i.bu, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.bt, 2147483644
  %invariant.gep = getelementptr [4 x i8], ptr %i.f, i64 %i.k
  br label %.lr.ph132

.preheader118:                                    ; preds = %._crit_edge129
  %.not104136 = icmp slt i32 %i.j, 2
  br i1 %.not104136, label %.loopexit119, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %.preheader118
  %i.bv = add nuw nsw i32 %i.j, 1
  %wide.trip.count164 = zext nneg i32 %i.bv to i64 ; 2 uses
  %i.bw = add nsw i64 %wide.trip.count164, -2     ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.bw, 2
  br i1 %min.iters.check206, label %.lr.ph138.preheader270, label %vector.ph207

vector.ph207:                                     ; preds = %.lr.ph138.preheader
  %n.vec209 = and i64 %i.bw, -2                   ; 3 uses
  %i.bx = add nsw i64 %n.vec209, 2
  %i.by = shl nuw nsw i64 %i.an, 2
  %i.bz = getelementptr i8, ptr %i.g, i64 %i.by
  %scevgep267 = getelementptr i8, ptr %i.bz, i64 -4
  %load_initial268 = load <2 x float>, ptr %scevgep267, align 4
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph207
  %store_forwarded269 = phi <2 x float> [ %load_initial268, %vector.ph207 ], [ %i.ce, %vector.body210 ]
  %index211 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body210 ] ; 2 uses
  %i.ca = add i64 %index211, 2
  %i.cb = sub nsw i64 %i.an, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %wide.load214 = load <2 x float>, ptr %i.cd, align 4
  %i.ce = fadd <2 x float> %store_forwarded269, %wide.load214 ; 2 uses
  store <2 x float> %i.ce, ptr %i.cd, align 4
  %index.next217 = add nuw i64 %index211, 2       ; 2 uses
  %i.cf = icmp eq i64 %index.next217, %n.vec209
  br i1 %i.cf, label %middle.block218, label %vector.body210, !llvm.loop !666

middle.block218:                                  ; preds = %vector.body210
  %cmp.n219 = icmp eq i64 %i.bw, %n.vec209
  br i1 %cmp.n219, label %.loopexit119, label %.lr.ph138.preheader270

.lr.ph138.preheader270:                           ; preds = %.lr.ph138.preheader, %middle.block218
  %indvars.iv161.ph = phi i64 [ 2, %.lr.ph138.preheader ], [ %i.bx, %middle.block218 ]
  br label %.lr.ph138

.lr.ph138:                                        ; preds = %.lr.ph138.preheader270, %.lr.ph138
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %.lr.ph138 ], [ %indvars.iv161.ph, %.lr.ph138.preheader270 ] ; 2 uses
  %i.cg = sub nsw i64 %i.an, %indvars.iv161
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load float, ptr %i.ci, align 4
  %i.ck = load float, ptr %i.ch, align 4
  %i.cl = fadd float %i.cj, %i.ck
  store float %i.cl, ptr %i.ch, align 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %.loopexit119, label %.lr.ph138, !llvm.loop !667

.preheader120.loopexit.unr-lcssa:                 ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader120, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.preheader
  %store_forwarded266.epil.init = phi float [ %load_initial265.a, %.lr.ph132.preheader ], [ %i.dg, %.preheader120.loopexit.unr-lcssa ]
  %indvars.iv151.epil.init = phi i64 [ 1, %.lr.ph132.preheader ], [ %indvars.iv.next152.3, %.preheader120.loopexit.unr-lcssa ]
  %lcmp.mod274 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod274)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %store_forwarded266.epil = phi float [ %store_forwarded266.epil.init, %.lr.ph132.epil.preheader ], [ %i.cp, %.lr.ph132.epil ]
  %indvars.iv151.epil = phi i64 [ %indvars.iv151.epil.init, %.lr.ph132.epil.preheader ], [ %indvars.iv.next152.epil, %.lr.ph132.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph132.epil.preheader ], [ %epil.iter.next, %.lr.ph132.epil ]
  %i.cm = sub nsw i64 %i.k, %indvars.iv151.epil
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fsub float %i.co, %store_forwarded266.epil ; 2 uses
  store float %i.cp, ptr %i.cn, align 4
  %indvars.iv.next152.epil = add nuw nsw i64 %indvars.iv151.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader120, label %.lr.ph132.epil, !llvm.loop !668

.preheader120:                                    ; preds = %.preheader120.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader122
  br i1 %.not101125, label %.loopexit119, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %.preheader120
  %i.cq = shl nuw nsw i64 %i.an, 2
  %scevgep261 = getelementptr i8, ptr %i.g, i64 %i.cq
  %load_initial262 = load float, ptr %scevgep261, align 4 ; 2 uses
  %i.cr = zext nneg i32 %i.j to i64               ; 2 uses
  %xtraiter275 = and i64 %i.cr, 3                 ; 3 uses
  %i.cs = icmp ult i32 %i.j, 4
  br i1 %i.cs, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter279 = and i64 %i.cr, 2147483644
  %invariant.gep294 = getelementptr [4 x i8], ptr %i.g, i64 %i.an
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %store_forwarded266 = phi float [ %load_initial265.a, %.lr.ph132.preheader.new ], [ %i.dg, %.lr.ph132 ]
  %indvars.iv151 = phi i64 [ 1, %.lr.ph132.preheader.new ], [ %indvars.iv.next152.3, %.lr.ph132 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.ct = sub nsw i64 %i.k, %indvars.iv151
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ct ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4
  %i.cw = fsub float %i.cv, %store_forwarded266   ; 2 uses
  store float %i.cw, ptr %i.cu, align 4
  %indvars.iv.next152.neg = xor i64 %indvars.iv151, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next152.neg ; 2 uses
  %i.cx = load float, ptr %gep, align 4
  %i.cy = fsub float %i.cx, %i.cw                 ; 2 uses
  store float %i.cy, ptr %gep, align 4
  %indvars.iv.next152.1 = add nuw nsw i64 %indvars.iv151, 2
  %i.cz = sub nsw i64 %i.k, %indvars.iv.next152.1
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4
  %i.dc = fsub float %i.db, %i.cy                 ; 2 uses
  store float %i.dc, ptr %i.da, align 4
  %indvars.iv.next152.2 = add nuw nsw i64 %indvars.iv151, 3
  %i.dd = sub nsw i64 %i.k, %indvars.iv.next152.2
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dd ; 2 uses
  %i.df = load float, ptr %i.de, align 4
  %i.dg = fsub float %i.df, %i.dc                 ; 3 uses
  store float %i.dg, ptr %i.de, align 4
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader120.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !669

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %store_forwarded263 = phi float [ %load_initial262, %.lr.ph135.preheader.new ], [ %i.du, %.lr.ph135 ]
  %indvars.iv156 = phi i64 [ 1, %.lr.ph135.preheader.new ], [ %indvars.iv.next157.3, %.lr.ph135 ] ; 5 uses
  %niter280 = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter280.next.3, %.lr.ph135 ]
  %i.dh = sub nsw i64 %i.an, %indvars.iv156
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dh ; 2 uses
  %i.dj = load float, ptr %i.di, align 4
  %i.dk = fadd float %store_forwarded263, %i.dj   ; 2 uses
  store float %i.dk, ptr %i.di, align 4
  %indvars.iv.next157.neg = xor i64 %indvars.iv156, -1
  %gep295 = getelementptr [4 x i8], ptr %invariant.gep294, i64 %indvars.iv.next157.neg ; 2 uses
  %i.dl = load float, ptr %gep295, align 4
  %i.dm = fadd float %i.dk, %i.dl                 ; 2 uses
  store float %i.dm, ptr %gep295, align 4
  %indvars.iv.next157.1 = add nuw nsw i64 %indvars.iv156, 2
  %i.dn = sub nsw i64 %i.an, %indvars.iv.next157.1
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn ; 2 uses
  %i.dp = load float, ptr %i.do, align 4
  %i.dq = fadd float %i.dm, %i.dp                 ; 2 uses
  store float %i.dq, ptr %i.do, align 4
  %indvars.iv.next157.2 = add nuw nsw i64 %indvars.iv156, 3
  %i.dr = sub nsw i64 %i.an, %indvars.iv.next157.2
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = fadd float %i.dq, %i.dt                 ; 3 uses
  store float %i.du, ptr %i.ds, align 4
  %indvars.iv.next157.3 = add nuw nsw i64 %indvars.iv156, 4 ; 2 uses
  %niter280.next.3 = add nuw i64 %niter280, 4     ; 2 uses
  %niter280.ncmp.3 = icmp eq i64 %niter280.next.3, %unroll_iter279
  br i1 %niter280.ncmp.3, label %.loopexit119.loopexit271.unr-lcssa, label %.lr.ph135, !llvm.loop !670

.loopexit119.loopexit271.unr-lcssa:               ; preds = %.lr.ph135
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  br i1 %lcmp.mod277.not, label %.loopexit119, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %.loopexit119.loopexit271.unr-lcssa, %.lr.ph135.preheader
  %store_forwarded263.epil.init = phi float [ %load_initial262, %.lr.ph135.preheader ], [ %i.du, %.loopexit119.loopexit271.unr-lcssa ]
  %indvars.iv156.epil.init = phi i64 [ 1, %.lr.ph135.preheader ], [ %indvars.iv.next157.3, %.loopexit119.loopexit271.unr-lcssa ]
  %lcmp.mod278 = icmp ne i64 %xtraiter275, 0
  tail call void @llvm.assume(i1 %lcmp.mod278)
  br label %.lr.ph135.epil

.lr.ph135.epil:                                   ; preds = %.lr.ph135.epil, %.lr.ph135.epil.preheader
  %store_forwarded263.epil = phi float [ %store_forwarded263.epil.init, %.lr.ph135.epil.preheader ], [ %i.dy, %.lr.ph135.epil ]
  %indvars.iv156.epil = phi i64 [ %indvars.iv156.epil.init, %.lr.ph135.epil.preheader ], [ %indvars.iv.next157.epil, %.lr.ph135.epil ] ; 2 uses
  %epil.iter276 = phi i64 [ 0, %.lr.ph135.epil.preheader ], [ %epil.iter276.next, %.lr.ph135.epil ]
  %i.dv = sub nsw i64 %i.an, %indvars.iv156.epil
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4
  %i.dy = fadd float %store_forwarded263.epil, %i.dx ; 2 uses
  store float %i.dy, ptr %i.dw, align 4
  %indvars.iv.next157.epil = add nuw nsw i64 %indvars.iv156.epil, 1
  %epil.iter276.next = add i64 %epil.iter276, 1   ; 2 uses
  %epil.iter276.cmp.not = icmp eq i64 %epil.iter276.next, %xtraiter275
  br i1 %epil.iter276.cmp.not, label %.loopexit119, label %.lr.ph135.epil, !llvm.loop !671

.loopexit119:                                     ; preds = %.loopexit119.loopexit271.unr-lcssa, %.lr.ph135.epil, %.lr.ph138, %middle.block218, %.preheader120, %.preheader118
  %i.dz = load float, ptr %i.f, align 16
  %i.ea = fmul float %i.dz, 5.000000e-01
  store float %i.ea, ptr %i.f, align 16
  %.not19.i = icmp slt i32 %i.b, 2
  br i1 %.not19.i, label %cheby.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.loopexit119
  %i.eb = zext nneg i32 %i.b to i64               ; 6 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  %i.ec = add nuw nsw i64 %i.eb, 1
  %i.ed = shl nuw nsw i64 %i.eb, 2
  %i.ee = getelementptr i8, ptr %i.f, i64 %i.ed
  %scevgep258 = getelementptr i8, ptr %i.ee, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit257, %.preheader.preheader.i
  %indvars.iv22.i = phi i64 [ 2, %.preheader.preheader.i ], [ %indvars.iv.next23.i, %.loopexit257 ] ; 3 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %indvars.iv22.i, i64 %i.eb)
  %i.ef = sub nsw i64 %i.ec, %smin                ; 3 uses
  %min.iters.check222 = icmp ult i64 %i.ef, 2
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.ph223

vector.ph223:                                     ; preds = %.preheader.i
  %n.vec225 = and i64 %i.ef, -2                   ; 3 uses
  %i.eg = sub nsw i64 %i.eb, %n.vec225
  %load_initial259 = load <2 x float>, ptr %scevgep258, align 4
  %i.eh = shufflevector <2 x float> %load_initial259, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph223
  %store_forwarded260 = phi <2 x float> [ %i.eh, %vector.ph223 ], [ %i.em, %vector.body226 ] ; 3 uses
  %index227 = phi i64 [ 0, %vector.ph223 ], [ %index.next234, %vector.body226 ] ; 2 uses
  %i.ei = sub i64 %i.eb, %index227
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ei ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.el = getelementptr i8, ptr %i.ej, i64 -12    ; 2 uses
  %wide.load230 = load <2 x float>, ptr %i.el, align 4
  %reverse231 = shufflevector <2 x float> %wide.load230, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.em = fsub <2 x float> %reverse231, %store_forwarded260 ; 2 uses
  %reverse232 = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse232, ptr %i.el, align 4
  %i.en = fadd <2 x float> %store_forwarded260, %store_forwarded260
  %reverse233 = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %reverse233, ptr %i.ek, align 4
  %index.next234 = add nuw i64 %index227, 2       ; 2 uses
end_hunk_0
