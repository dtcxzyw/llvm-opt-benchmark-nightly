Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_firequalizer?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@fast_convolute2:bb.a
  %strided.vec314 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec315 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.tr159.lcssa, i64 %index309 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <4 x float> %strided.vec312, ptr %i.fm, align 4, !tbaa !65, !alias.scope !138, !noalias !139
  store <4 x float> %strided.vec315, ptr %i.fn, align 4, !tbaa !65, !alias.scope !138, !noalias !139
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.tr160.lcssa, i64 %index309 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <4 x float> %strided.vec311, ptr %i.fo, align 4, !tbaa !65, !alias.scope !140, !noalias !137
  store <4 x float> %strided.vec314, ptr %i.fp, align 4, !tbaa !65, !alias.scope !140, !noalias !137
  %index.next316 = add nuw i64 %index309, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next316, %n.vec307
  br i1 %i.fq, label %middle.block317, label %vector.body308, !llvm.loop !125

middle.block317:                                  ; preds = %vector.body308
  %cmp.n318 = icmp eq i64 %n.vec307, %wide.trip.count211
  br i1 %cmp.n318, label %._crit_edge190, label %.lr.ph189.preheader320

.lr.ph189.preheader320:                           ; preds = %vector.memcheck294, %.lr.ph189.preheader, %middle.block317
  %indvars.iv208.ph = phi i64 [ 0, %vector.memcheck294 ], [ 0, %.lr.ph189.preheader ], [ %n.vec307, %middle.block317 ] ; 6 uses
  %xtraiter331 = and i64 %wide.trip.count211, 1
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph189.prol.loopexit, label %.lr.ph189.prol

.lr.ph189.prol:                                   ; preds = %.lr.ph189.preheader320
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv208.ph ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !135
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.tr159.lcssa, i64 %indvars.iv208.ph
  store float %i.ft, ptr %i.fu, align 4, !tbaa !65
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !134
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.tr160.lcssa, i64 %indvars.iv208.ph
  store float %i.fv, ptr %i.fw, align 4, !tbaa !65
  %indvars.iv.next209.prol = or disjoint i64 %indvars.iv208.ph, 1
  br label %.lr.ph189.prol.loopexit

.lr.ph189.prol.loopexit:                          ; preds = %.lr.ph189.prol, %.lr.ph189.preheader320
  %indvars.iv208.unr = phi i64 [ %indvars.iv208.ph, %.lr.ph189.preheader320 ], [ %indvars.iv.next209.prol, %.lr.ph189.prol ]
  %i.fx = add nsw i64 %wide.trip.count211, -1
  %i.fy = icmp eq i64 %indvars.iv208.ph, %i.fx
  br i1 %i.fy, label %._crit_edge190, label %.lr.ph189

.lr.ph187:                                        ; preds = %.lr.ph187.prol.loopexit, %.lr.ph187
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.3, %.lr.ph187 ], [ %indvars.iv203.unr, %.lr.ph187.prol.loopexit ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv203
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv203 ; 2 uses
  %i.gb = load <2 x float>, ptr %i.fz, align 4, !tbaa !65
  %i.gc = load <2 x float>, ptr %i.ga, align 4, !tbaa !65
  %i.gd = fadd nsz <2 x float> %i.gb, %i.gc
  store <2 x float> %i.gd, ptr %i.ga, align 4, !tbaa !65
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next204
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next204 ; 2 uses
  %i.gg = load <2 x float>, ptr %i.ge, align 4, !tbaa !65
  %i.gh = load <2 x float>, ptr %i.gf, align 4, !tbaa !65
  %i.gi = fadd nsz <2 x float> %i.gg, %i.gh
  store <2 x float> %i.gi, ptr %i.gf, align 4, !tbaa !65
  %indvars.iv.next204.1 = add nuw nsw i64 %indvars.iv203, 2 ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next204.1
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next204.1 ; 2 uses
  %i.gl = load <2 x float>, ptr %i.gj, align 4, !tbaa !65
  %i.gm = load <2 x float>, ptr %i.gk, align 4, !tbaa !65
  %i.gn = fadd nsz <2 x float> %i.gl, %i.gm
  store <2 x float> %i.gn, ptr %i.gk, align 4, !tbaa !65
  %indvars.iv.next204.2 = add nuw nsw i64 %indvars.iv203, 3 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next204.2
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next204.2 ; 2 uses
  %i.gq = load <2 x float>, ptr %i.go, align 4, !tbaa !65
  %i.gr = load <2 x float>, ptr %i.gp, align 4, !tbaa !65
  %i.gs = fadd nsz <2 x float> %i.gq, %i.gr
  store <2 x float> %i.gs, ptr %i.gp, align 4, !tbaa !65
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %exitcond207.not.3 = icmp eq i64 %indvars.iv.next204.3, %wide.trip.count206
  br i1 %exitcond207.not.3, label %.preheader, label %.lr.ph187, !llvm.loop !126

.lr.ph189:                                        ; preds = %.lr.ph189.prol.loopexit, %.lr.ph189
  %indvars.iv208 = phi i64 [ %indvars.iv.next209.1, %.lr.ph189 ], [ %indvars.iv208.unr, %.lr.ph189.prol.loopexit ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv208 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !135
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.tr159.lcssa, i64 %indvars.iv208
  store float %i.gv, ptr %i.gw, align 4, !tbaa !65
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !134
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.tr160.lcssa, i64 %indvars.iv208
  store float %i.gx, ptr %i.gy, align 4, !tbaa !65
  %indvars.iv.next209 = add nuw nsw i64 %indvars.iv208, 1 ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next209 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !135
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.tr159.lcssa, i64 %indvars.iv.next209
  store float %i.hb, ptr %i.hc, align 4, !tbaa !65
  %i.hd = load float, ptr %i.gz, align 4, !tbaa !134
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.tr160.lcssa, i64 %indvars.iv.next209
  store float %i.hd, ptr %i.he, align 4, !tbaa !65
  %indvars.iv.next209.1 = add nuw nsw i64 %indvars.iv208, 2 ; 2 uses
  %exitcond212.not.1 = icmp eq i64 %indvars.iv.next209.1, %wide.trip.count211
  br i1 %exitcond212.not.1, label %._crit_edge190, label %.lr.ph189, !llvm.loop !127

._crit_edge190:                                   ; preds = %.lr.ph189.prol.loopexit, %.lr.ph189, %middle.block317, %.preheader
  %i.hf = load i32, ptr %3, align 4, !tbaa !79
  %.not155 = icmp eq i32 %i.hf, 0
  %i.hg = zext i1 %.not155 to i32
  store i32 %i.hg, ptr %3, align 4, !tbaa !79
  store i32 %.tr161.lcssa, ptr %i.o, align 4, !tbaa !80
  ret void

.lr.ph:                                           ; preds = %.preheader163, %.lr.ph
  %i.hh = phi i32 [ %i.hi, %.lr.ph ], [ %i.c, %.preheader163 ]
  %.0166 = phi ptr [ %i.hk, %.lr.ph ], [ %.tr159170, %.preheader163 ] ; 2 uses
  %.0150165 = phi i32 [ %i.hm, %.lr.ph ], [ %.tr161172, %.preheader163 ]
  %.0151164 = phi ptr [ %i.hl, %.lr.ph ], [ %.tr160171, %.preheader163 ] ; 2 uses
  tail call fastcc void @fast_convolute2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.0166, ptr noundef %.0151164, i32 noundef %i.hh)
  %i.hi = load i32, ptr %i.a, align 4, !tbaa !67  ; 4 uses
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %.0166, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0151164, i64 %i.hj ; 2 uses
  %i.hm = sub nsw i32 %.0150165, %i.hi            ; 3 uses
  %i.hn = shl nsw i32 %i.hi, 1
  %i.ho = icmp sgt i32 %i.hm, %i.hn
  br i1 %i.ho, label %.lr.ph, label %tailrecurse, !llvm.loop !128

tailrecurse:                                      ; preds = %.lr.ph, %.preheader163
  %.0151.lcssa = phi ptr [ %.tr160171, %.preheader163 ], [ %i.hl, %.lr.ph ] ; 2 uses
  %.0150.lcssa = phi i32 [ %.tr161172, %.preheader163 ], [ %i.hm, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %.tr159170, %.preheader163 ], [ %i.hk, %.lr.ph ] ; 2 uses
  %i.hp = sdiv i32 %.0150.lcssa, 2                ; 3 uses
  tail call fastcc void @fast_convolute2(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.0.lcssa, ptr noundef %.0151.lcssa, i32 noundef %i.hp)
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.0151.lcssa, i64 %i.hq ; 2 uses
  %i.ht = sub nsw i32 %.0150.lcssa, %i.hp         ; 3 uses
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not = icmp sgt i32 %i.ht, %i.hu
  br i1 %.not, label %.preheader163, label %tailrecurse._crit_edge
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fast_convolute(ptr noalias noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not98 = icmp sgt i32 %5, %i.b
  br i1 %.not98, label %.preheader, label %tailrecurse._crit_edge

.preheader:                                       ; preds = %bb.a, %tailrecurse
  %i.c = phi i32 [ %i.en, %tailrecurse ], [ %i.b, %bb.a ] ; 2 uses
  %.tr93100 = phi i32 [ %i.em, %tailrecurse ], [ %5, %bb.a ] ; 3 uses
  %.tr9299 = phi ptr [ %i.el, %tailrecurse ], [ %4, %bb.a ] ; 2 uses
  %i.d = shl nsw i32 %i.c, 1
  %i.e = icmp sgt i32 %.tr93100, %i.d
  br i1 %i.e, label %.lr.ph, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr92.lcssa = phi ptr [ %4, %bb.a ], [ %i.el, %tailrecurse ] ; 2 uses
  %.tr93.lcssa = phi i32 [ %5, %bb.a ], [ %i.em, %tailrecurse ] ; 3 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !79     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47   ; 3 uses
  %i.i = mul i32 %i.h, %i.f
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 12 uses
  %.not86 = icmp eq i32 %i.f, 0
  %i.l = select i1 %.not86, i32 %i.h, i32 0
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %2, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !80
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.n, i64 %i.q ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !77   ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load i32, ptr %i.u, align 8, !tbaa !60
  %i.w = sdiv i32 %i.v, 2                         ; 2 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = shl nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %i.y, i1 false)
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.x ; 2 uses
  %i.aa = sext i32 %.tr93.lcssa to i64            ; 2 uses
  %i.ab = shl nsw i64 %i.aa, 2                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.z, ptr align 4 %.tr92.lcssa, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ad = add i32 %.tr93.lcssa, %i.w
  %i.ae = sub i32 %i.h, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ac, i8 0, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !85
  tail call void %i.ai(ptr noundef %i.ak, ptr noundef %i.t, ptr noundef %i.k, i64 noundef 4) #14
  %i.al = load i32, ptr %i.g, align 4, !tbaa !47  ; 2 uses
  %.not87103 = icmp slt i32 %i.al, -1
  br i1 %.not87103, label %._crit_edge107, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %tailrecurse._crit_edge
  %i.am = sdiv i32 %i.al, 2                       ; 4 uses
  %i.an = add nuw nsw i32 %i.am, 1
  %wide.trip.count = zext i32 %i.an to i64        ; 4 uses
  %min.iters.check = icmp ult i32 %i.am, 5
  br i1 %min.iters.check, label %.lr.ph106.preheader159, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph106.preheader
  %i.ao = zext i32 %i.am to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = getelementptr i8, ptr %i.t, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = shl nuw nsw i64 %i.ao, 2
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4
  %bound0 = icmp ult ptr %i.t, %i.au
  %bound1 = icmp ult ptr %1, %i.ar
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph106.preheader159, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <2 x float>, ptr %i.av, align 4, !tbaa !65, !alias.scope !153
  %i.aw = shl nuw nsw i64 %index, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aw ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ax, align 4, !tbaa !65, !alias.scope !154, !noalias !153
  %6 = shufflevector <2 x float> %wide.load, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ay = fmul nsz <4 x float> %6, %wide.vec
  store <4 x float> %i.ay, ptr %i.ax, align 4, !tbaa !65, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge107, label %.lr.ph106.preheader159

.lr.ph106.preheader159:                           ; preds = %vector.memcheck, %.lr.ph106.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph106.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %i.ba = zext i32 %i.am to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph106.prol.loopexit, label %.lr.ph106.prol

.lr.ph106.prol:                                   ; preds = %.lr.ph106.preheader159
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !65
  %.idx.prol = shl nuw nsw i64 %indvars.iv.ph, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.prol ; 3 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !65
  %i.bf = fmul nsz float %i.bc, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !65
  %i.bg = load float, ptr %i.bb, align 4, !tbaa !65
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !65
  %i.bj = fmul nsz float %i.bg, %i.bi
  store float %i.bj, ptr %i.bh, align 4, !tbaa !65
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph106.prol.loopexit

.lr.ph106.prol.loopexit:                          ; preds = %.lr.ph106.prol, %.lr.ph106.preheader159
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph106.preheader159 ], [ %indvars.iv.next.prol, %.lr.ph106.prol ]
  %i.bk = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.bk, label %._crit_edge107, label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph106 ], [ %indvars.iv.unr, %.lr.ph106.prol.loopexit ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !65
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 3 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !65
  %i.bp = fmul nsz float %i.bm, %i.bo
  store float %i.bp, ptr %i.bn, align 4, !tbaa !65
  %i.bq = load float, ptr %i.bl, align 4, !tbaa !65
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !65
  %i.bt = fmul nsz float %i.bq, %i.bs
  store float %i.bt, ptr %i.br, align 4, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !65
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.1 ; 3 uses
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !65
  %i.by = fmul nsz float %i.bv, %i.bx
  store float %i.by, ptr %i.bw, align 4, !tbaa !65
  %i.bz = load float, ptr %i.bu, align 4, !tbaa !65
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !65
  %i.cc = fmul nsz float %i.bz, %i.cb
  store float %i.cc, ptr %i.ca, align 4, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge107, label %.lr.ph106, !llvm.loop !145

._crit_edge107:                                   ; preds = %.lr.ph106.prol.loopexit, %.lr.ph106, %middle.block, %tailrecurse._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !86
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !87
  tail call void %i.ce(ptr noundef %i.cg, ptr noundef %i.k, ptr noundef %i.t, i64 noundef 8) #14
  %i.ch = load i32, ptr %i.g, align 4, !tbaa !47
  %i.ci = load i32, ptr %i.o, align 4, !tbaa !80
  %i.cj = sub nsw i32 %i.ch, %i.ci                ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %._crit_edge107
  %wide.trip.count119 = zext nneg i32 %i.cj to i64 ; 7 uses
  %min.iters.check141 = icmp ult i32 %i.cj, 16
  br i1 %min.iters.check141, label %.lr.ph110.preheader158, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph110.preheader
  %i.cl = add nsw i64 %i.j, %wide.trip.count119
  %i.cm = shl nsw i64 %i.cl, 2
  %i.cn = getelementptr i8, ptr %2, i64 %i.cm
  %i.co = add nsw i64 %i.m, %i.q
  %i.cp = add nsw i64 %i.co, %wide.trip.count119
  %i.cq = shl nsw i64 %i.cp, 2
  %i.cr = getelementptr i8, ptr %2, i64 %i.cq
  %bound0143 = icmp ult ptr %i.k, %i.cr
  %bound1144 = icmp ult ptr %i.r, %i.cn
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %.lr.ph110.preheader158, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck142
  %n.vec147 = and i64 %wide.trip.count119, 2147483640 ; 3 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index149 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load150 = load <4 x float>, ptr %i.cs, align 4, !tbaa !65, !alias.scope !155
  %wide.load151 = load <4 x float>, ptr %i.ct, align 4, !tbaa !65, !alias.scope !155
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index149 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load152 = load <4 x float>, ptr %i.cu, align 4, !tbaa !65, !alias.scope !156, !noalias !155
  %wide.load153 = load <4 x float>, ptr %i.cv, align 4, !tbaa !65, !alias.scope !156, !noalias !155
  %i.cw = fadd nsz <4 x float> %wide.load150, %wide.load152
  %i.cx = fadd nsz <4 x float> %wide.load151, %wide.load153
  store <4 x float> %i.cw, ptr %i.cu, align 4, !tbaa !65, !alias.scope !156, !noalias !155
  store <4 x float> %i.cx, ptr %i.cv, align 4, !tbaa !65, !alias.scope !156, !noalias !155
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.cy, label %middle.block155, label %vector.body148, !llvm.loop !149

middle.block155:                                  ; preds = %vector.body148
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count119
  br i1 %cmp.n156, label %._crit_edge111, label %.lr.ph110.preheader158

.lr.ph110.preheader158:                           ; preds = %vector.memcheck142, %.lr.ph110.preheader, %middle.block155
  %indvars.iv116.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph110.preheader ], [ %n.vec147, %middle.block155 ] ; 3 uses
  %xtraiter163 = and i64 %wide.trip.count119, 3   ; 2 uses
  %lcmp.mod164.not = icmp eq i64 %xtraiter163, 0
  br i1 %lcmp.mod164.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader158, %.lr.ph110.prol
  %indvars.iv116.prol = phi i64 [ %indvars.iv.next117.prol, %.lr.ph110.prol ], [ %indvars.iv116.ph, %.lr.ph110.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader158 ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv116.prol
  %i.da = load float, ptr %i.cz, align 4, !tbaa !65
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv116.prol ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !65
  %i.dd = fadd nsz float %i.da, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !65
  %indvars.iv.next117.prol = add nuw nsw i64 %indvars.iv116.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter163
  br i1 %prol.iter.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !150

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader158
  %indvars.iv116.unr = phi i64 [ %indvars.iv116.ph, %.lr.ph110.preheader158 ], [ %indvars.iv.next117.prol, %.lr.ph110.prol ]
  %i.de = sub nsw i64 %indvars.iv116.ph, %wide.trip.count119
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %indvars.iv116 = phi i64 [ %indvars.iv.next117.3, %.lr.ph110 ], [ %indvars.iv116.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv116
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !65
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv116 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !65
  %i.dk = fadd nsz float %i.dh, %i.dj
  store float %i.dk, ptr %i.di, align 4, !tbaa !65
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !65
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117 ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !65
  %i.dp = fadd nsz float %i.dm, %i.do
  store float %i.dp, ptr %i.dn, align 4, !tbaa !65
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117.1
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !65
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117.1 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !65
  %i.du = fadd nsz float %i.dr, %i.dt
  store float %i.du, ptr %i.ds, align 4, !tbaa !65
  %indvars.iv.next117.2 = add nuw nsw i64 %indvars.iv116, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next117.2
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !65
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.next117.2 ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !65
  %i.dz = fadd nsz float %i.dw, %i.dy
  store float %i.dz, ptr %i.dx, align 4, !tbaa !65
  %indvars.iv.next117.3 = add nuw nsw i64 %indvars.iv116, 4 ; 2 uses
  %exitcond120.not.3 = icmp eq i64 %indvars.iv.next117.3, %wide.trip.count119
  br i1 %exitcond120.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !151

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block155, %._crit_edge107
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.tr92.lcssa, ptr align 4 %i.k, i64 %i.ab, i1 false)
  %i.ea = load i32, ptr %3, align 4, !tbaa !79
  %.not88 = icmp eq i32 %i.ea, 0
  %i.eb = zext i1 %.not88 to i32
  store i32 %i.eb, ptr %3, align 4, !tbaa !79
  store i32 %.tr93.lcssa, ptr %i.o, align 4, !tbaa !80
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.ec = phi i32 [ %i.ed, %.lr.ph ], [ %i.c, %.preheader ]
  %.08296 = phi i32 [ %i.eg, %.lr.ph ], [ %.tr93100, %.preheader ]
  %.08395 = phi ptr [ %i.ef, %.lr.ph ], [ %.tr9299, %.preheader ] ; 2 uses
  tail call fastcc void @fast_convolute(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %.08395, i32 noundef %i.ec)
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !67  ; 4 uses
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.08395, i64 %i.ee ; 2 uses
  %i.eg = sub nsw i32 %.08296, %i.ed              ; 3 uses
  %i.eh = shl nsw i32 %i.ed, 1
end_hunk_0
