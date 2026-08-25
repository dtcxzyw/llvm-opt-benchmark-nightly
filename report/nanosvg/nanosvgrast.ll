Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__initPaint:bb.a

..preheader_crit_edge:                            ; preds = %.loopexit94
  %i.ez = and i32 %i.gb, 16777215
  %i.fa = and i32 %i.ge, -16777216
  %i.fb = or disjoint i32 %i.fa, %i.ez
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader95
  %.074.lcssa = phi i32 [ %i.fb, %..preheader_crit_edge ], [ 0, %.preheader95 ] ; 2 uses
  %.0.lcssa = phi i32 [ %.0.i91, %..preheader_crit_edge ], [ %i.ej, %.preheader95 ] ; 5 uses
  %i.fc = icmp slt i32 %.0.lcssa, 256
  br i1 %i.fc, label %.lr.ph110, label %.loopexit

.lr.ph110:                                        ; preds = %.preheader
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.fe = sext i32 %.0.lcssa to i64               ; 4 uses
  %i.ff = add i32 %.0.lcssa, 1
  %i.fg = zext i32 %i.ff to i64
  %i.fh = sub nsw i64 257, %i.fg                  ; 3 uses
  %min.iters.check155 = icmp ult i64 %i.fh, 16
  br i1 %min.iters.check155, label %scalar.ph154.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph110
  %i.fi = add i32 %.0.lcssa, 1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = sub nsw i64 256, %i.fj                  ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = sub i32 -2, %.0.lcssa
  %i.fn = icmp ult i32 %i.fm, %i.fl
  %i.fo = icmp ugt i64 %i.fk, 4294967295
  %i.fp = or i1 %i.fn, %i.fo
  br i1 %i.fp, label %scalar.ph154.preheader, label %vector.ph156

vector.ph156:                                     ; preds = %vector.scevcheck
  %n.vec157 = and i64 %i.fh, -8                   ; 3 uses
  %i.fq = add nsw i64 %n.vec157, %i.fe
  %broadcast.splatinsert158 = insertelement <4 x i32> poison, i32 %.074.lcssa, i64 0
  %broadcast.splat159 = shufflevector <4 x i32> %broadcast.splatinsert158, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep169 = getelementptr [4 x i8], ptr %i.fd, i64 %i.fe
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph156
  %index161 = phi i64 [ 0, %vector.ph156 ], [ %index.next162, %vector.body160 ] ; 2 uses
  %gep170 = getelementptr [4 x i8], ptr %invariant.gep169, i64 %index161 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %gep170, i64 16
  store <4 x i32> %broadcast.splat159, ptr %gep170, align 4, !tbaa !195
  store <4 x i32> %broadcast.splat159, ptr %i.fr, align 4, !tbaa !195
  %index.next162 = add nuw i64 %index161, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next162, %n.vec157
  br i1 %i.fs, label %middle.block163, label %vector.body160, !llvm.loop !205

middle.block163:                                  ; preds = %vector.body160
  %cmp.n164 = icmp eq i64 %i.fh, %n.vec157
  br i1 %cmp.n164, label %.loopexit, label %scalar.ph154.preheader

scalar.ph154.preheader:                           ; preds = %vector.scevcheck, %.lr.ph110, %middle.block163
  %indvars.iv130.ph = phi i64 [ %i.fe, %vector.scevcheck ], [ %i.fe, %.lr.ph110 ], [ %i.fq, %middle.block163 ]
  br label %scalar.ph154

nsvg__applyOpacity.exit86:                        ; preds = %.lr.ph105, %.loopexit94
  %i.ft = phi i32 [ %i.ep, %.lr.ph105 ], [ %i.ip, %.loopexit94 ]
  %i.fu = phi float [ %i.dr, %.lr.ph105 ], [ %i.gn, %.loopexit94 ] ; 4 uses
  %indvars.iv127 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next128, %.loopexit94 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv127
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !200 ; 3 uses
  %i.fx = lshr i32 %i.fw, 8                       ; 2 uses
  %i.fy = and i32 %i.fx, 16711680
  %i.fz = mul i32 %.0.i.i85, %i.fy
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next128 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !200 ; 4 uses
  %i.gc = lshr i32 %i.gb, 8                       ; 2 uses
  %i.gd = and i32 %i.gc, 16711680
  %i.ge = mul i32 %.0.i.i85, %i.gd                ; 2 uses
  %i.gf = fcmp uno float %i.fu, 0.000000e+00
  br i1 %i.gf, label %nsvg__clampf.exit90, label %bb.k

bb.k:                                             ; preds = %nsvg__applyOpacity.exit86
  %i.gg = fcmp olt float %i.fu, 0.000000e+00
  %i.gh = fcmp ogt float %i.fu, 1.000000e+00
  %i.gi = select i1 %i.gh, float 1.000000e+00, float %i.fu
  %i.gj = fmul nnan float %i.gi, 2.550000e+02
  %i.gk = select i1 %i.gg, float 0.000000e+00, float %i.gj
  %i.gl = fptosi float %i.gk to i32
  br label %nsvg__clampf.exit90

nsvg__clampf.exit90:                              ; preds = %nsvg__applyOpacity.exit86, %bb.k
  %.0.i89 = phi i32 [ %i.gl, %bb.k ], [ 0, %nsvg__applyOpacity.exit86 ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !202 ; 5 uses
  %i.go = fcmp uno float %i.gn, 0.000000e+00
  br i1 %i.go, label %nsvg__clampf.exit92, label %bb.l

bb.l:                                             ; preds = %nsvg__clampf.exit90
  %i.gp = fcmp olt float %i.gn, 0.000000e+00
  %i.gq = fcmp ogt float %i.gn, 1.000000e+00
  %i.gr = select i1 %i.gq, float 1.000000e+00, float %i.gn
  %i.gs = fmul nnan float %i.gr, 2.550000e+02
  %i.gt = select i1 %i.gp, float 0.000000e+00, float %i.gs
  %i.gu = fptosi float %i.gt to i32
  br label %nsvg__clampf.exit92

nsvg__clampf.exit92:                              ; preds = %nsvg__clampf.exit90, %bb.l
  %.0.i91 = phi i32 [ %i.gu, %bb.l ], [ 0, %nsvg__clampf.exit90 ] ; 2 uses
  %i.gv = sub nsw i32 %.0.i91, %.0.i89            ; 3 uses
  %i.gw = icmp slt i32 %i.gv, 1
  br i1 %i.gw, label %.loopexit94, label %bb.m

bb.m:                                             ; preds = %nsvg__clampf.exit92
  %i.gx = uitofp nneg i32 %i.gv to float
  %i.gy = fdiv float 1.000000e+00, %i.gx
  %i.gz = and i32 %i.fw, 255
  %i.ha = and i32 %i.gb, 255
  %i.hb = and i32 %i.fx, 255
  %i.hc = and i32 %i.gc, 255
  %i.hd = lshr i32 %i.fw, 16
  %i.he = and i32 %i.hd, 255
  %i.hf = lshr i32 %i.gb, 16
  %i.hg = and i32 %i.hf, 255
  %i.hh = lshr i32 %i.fz, 24
  %i.hi = lshr i32 %i.ge, 24
  %i.hj = sext i32 %.0.i89 to i64
  %wide.trip.count125 = zext nneg i32 %i.gv to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ex, i64 %i.hj
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %nsvg__lerpRGBA.exit
  %indvars.iv122 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next123, %nsvg__lerpRGBA.exit ] ; 2 uses
  %.073103 = phi float [ 0.000000e+00, %bb.m ], [ %i.io, %nsvg__lerpRGBA.exit ] ; 5 uses
  %i.hk = fcmp uno float %.073103, 0.000000e+00
  br i1 %i.hk, label %nsvg__lerpRGBA.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hl = fcmp olt float %.073103, 0.000000e+00
  %i.hm = fcmp ogt float %.073103, 1.000000e+00
  %i.hn = select i1 %i.hm, float 1.000000e+00, float %.073103
  %i.ho = fmul nnan float %i.hn, 2.560000e+02
  %i.hp = select i1 %i.hl, float 0.000000e+00, float %i.ho
  %i.hq = fptosi float %i.hp to i32
  br label %nsvg__lerpRGBA.exit

nsvg__lerpRGBA.exit:                              ; preds = %bb.n, %bb.o
  %.0.i.i93 = phi i32 [ %i.hq, %bb.o ], [ 0, %bb.n ] ; 5 uses
  %i.hr = sub nsw i32 256, %.0.i.i93              ; 4 uses
  %i.hs = mul i32 %i.hr, %i.gz
  %i.ht = mul i32 %.0.i.i93, %i.ha
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = lshr i32 %i.hu, 8
  %i.hw = mul i32 %i.hr, %i.hb
  %i.hx = mul i32 %.0.i.i93, %i.hc
  %i.hy = add i32 %i.hw, %i.hx
  %i.hz = mul i32 %i.hr, %i.he
  %i.ia = mul i32 %.0.i.i93, %i.hg
  %i.ib = add i32 %i.hz, %i.ia
  %i.ic = mul i32 %i.hr, %i.hh
  %i.id = mul i32 %.0.i.i93, %i.hi
  %i.ie = add i32 %i.ic, %i.id
  %i.if = and i32 %i.hv, 255
  %i.ig = and i32 %i.hy, 65280
  %i.ih = or disjoint i32 %i.if, %i.ig
  %i.ii = shl i32 %i.ib, 8
  %i.ij = and i32 %i.ii, 16711680
  %i.ik = or disjoint i32 %i.ih, %i.ij
  %i.il = shl i32 %i.ie, 16
  %i.im = and i32 %i.il, -16777216
  %i.in = or disjoint i32 %i.ik, %i.im
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv122
  store i32 %i.in, ptr %gep, align 4, !tbaa !195
  %i.io = fadd float %i.gy, %.073103
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit94.loopexit, label %bb.n, !llvm.loop !206

.loopexit94.loopexit:                             ; preds = %nsvg__lerpRGBA.exit
  %.pre135 = load i32, ptr %i.x, align 4, !tbaa !199
  br label %.loopexit94

.loopexit94:                                      ; preds = %.loopexit94.loopexit, %nsvg__clampf.exit92
  %i.ip = phi i32 [ %.pre135, %.loopexit94.loopexit ], [ %i.ft, %nsvg__clampf.exit92 ] ; 2 uses
  %i.iq = add nsw i32 %i.ip, -1
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp slt i64 %indvars.iv.next128, %i.ir
  br i1 %i.is, label %nsvg__applyOpacity.exit86, label %..preheader_crit_edge, !llvm.loop !207

scalar.ph154:                                     ; preds = %scalar.ph154.preheader, %scalar.ph154
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph154 ], [ %indvars.iv130.ph, %scalar.ph154.preheader ] ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %indvars.iv130
  store i32 %.074.lcssa, ptr %i.it, align 4, !tbaa !195
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.iu = and i64 %indvars.iv.next131, 4294967295
  %exitcond133.not = icmp eq i64 %i.iu, 256
  br i1 %exitcond133.not, label %.loopexit, label %scalar.ph154, !llvm.loop !208

.loopexit:                                        ; preds = %scalar.ph154, %nsvg__applyOpacity.exit80, %middle.block163, %.preheader96, %.preheader, %nsvg__applyOpacity.exit
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @nsvg__rasterizeSortedEdges(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly captures(none) %4, i8 noundef signext %5) unnamed_addr #14 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !132
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph166, label %._crit_edge

.lr.ph166:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = fdiv float 1.000000e+00, %3              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 3 uses
  %i.v = insertelement <2 x float> poison, float %3, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = insertelement <2 x float> %i.x, float %1, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph166, %nsvg__scanlineSolid.exit
  %.0.174 = phi ptr [ null, %.lr.ph166 ], [ %.0..0..0..0.94, %nsvg__scanlineSolid.exit ]
  %.082165 = phi i32 [ 0, %.lr.ph166 ], [ %i.sf, %nsvg__scanlineSolid.exit ] ; 5 uses
  %.088164 = phi i32 [ 0, %.lr.ph166 ], [ %.290.lcssa, %nsvg__scanlineSolid.exit ]
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !131
  %i.ab = sext i32 %i.aa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.f, align 8, !tbaa !131
  %i.ad = mul nuw nsw i32 %.082165, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %nsvg__fillActiveEdges.exit
  %.0. = phi ptr [ %.0.174, %bb.b ], [ %.0..0..0..0.94, %nsvg__fillActiveEdges.exit ] ; 2 uses
  %.083163 = phi i32 [ 0, %bb.b ], [ %i.io, %nsvg__fillActiveEdges.exit ] ; 2 uses
  %.189162 = phi i32 [ %.088164, %bb.b ], [ %.290.lcssa, %nsvg__fillActiveEdges.exit ] ; 3 uses
  %.0121161 = phi i32 [ 0, %bb.b ], [ %.1122, %nsvg__fillActiveEdges.exit ] ; 4 uses
  %.0124160 = phi i32 [ %i.ac, %bb.b ], [ %.1125, %nsvg__fillActiveEdges.exit ] ; 4 uses
  %i.ae = add nuw nsw i32 %.083163, %i.ad
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fadd float %i.af, 5.000000e-01          ; 4 uses
  %.not106142 = icmp eq ptr %.0., null
  br i1 %.not106142, label %.preheader137, label %.lr.ph

.preheader138:                                    ; preds = %bb.f
  %.0..0.173.pre = load ptr, ptr %i.a, align 8, !tbaa !209 ; 2 uses
  %i.ah = icmp eq ptr %.0..0.173.pre, null
  br i1 %i.ah, label %.preheader137, label %.lr.ph147

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.ai = phi ptr [ %i.au, %bb.f ], [ %.0., %bb.c ] ; 7 uses
  %.086143 = phi ptr [ %.187, %bb.f ], [ %i.a, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !210
  %i.al = fcmp ugt float %i.ak, %i.ag
  br i1 %i.al, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  store ptr %i.an, ptr %.086143, align 8, !tbaa !209
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !144
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !212
  store ptr %i.ai, ptr %i.i, align 8, !tbaa !144
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !213
  %i.ar = load i32, ptr %i.ai, align 8, !tbaa !214
  %i.as = add nsw i32 %i.ar, %i.aq
  store i32 %i.as, ptr %i.ai, align 8, !tbaa !214
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.187 = phi ptr [ %.086143, %bb.d ], [ %i.at, %bb.e ] ; 2 uses
  %i.au = load ptr, ptr %.187, align 8, !tbaa !209 ; 2 uses
  %.not106 = icmp eq ptr %i.au, null
  br i1 %.not106, label %.preheader138, label %.lr.ph, !llvm.loop !215

.lr.ph147:                                        ; preds = %.preheader138, %.lr.ph147.backedge
  %i.av = phi ptr [ %.be, %.lr.ph147.backedge ], [ %.0..0.173.pre, %.preheader138 ] ; 4 uses
  %.084146 = phi i32 [ %.084146.be, %.lr.ph147.backedge ], [ 0, %.preheader138 ] ; 2 uses
  %.2145 = phi ptr [ %.2145.be, %.lr.ph147.backedge ], [ %i.a, %.preheader138 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !212 ; 6 uses
  %.not108 = icmp eq ptr %i.ax, null
  br i1 %.not108, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph147
  %i.ay = load i32, ptr %i.av, align 8, !tbaa !214
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !214
  %i.ba = icmp sgt i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !212
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !212
  store ptr %i.av, ptr %i.bb, align 8, !tbaa !212
  store ptr %i.ax, ptr %.2145, align 8, !tbaa !209
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !209
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bd = phi ptr [ %.pre, %bb.h ], [ %i.ax, %bb.g ] ; 2 uses
  %i.be = phi ptr [ %i.ax, %bb.h ], [ %i.av, %bb.g ]
  %.185 = phi i32 [ 1, %bb.h ], [ %.084146, %bb.g ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.not107 = icmp eq ptr %i.bd, null
  br i1 %.not107, label %.critedge, label %.lr.ph147.backedge

.lr.ph147.backedge:                               ; preds = %bb.i, %.critedge
  %.be = phi ptr [ %i.bd, %bb.i ], [ %.0..0.172.pr, %.critedge ]
  %.084146.be = phi i32 [ %.185, %bb.i ], [ 0, %.critedge ]
  %.2145.be = phi ptr [ %i.bf, %bb.i ], [ %i.a, %.critedge ]
  br label %.lr.ph147, !llvm.loop !216

.critedge:                                        ; preds = %.lr.ph147, %bb.i
  %.084.lcssa.ph = phi i32 [ %.084146, %.lr.ph147 ], [ %.185, %bb.i ]
  %i.bg = icmp eq i32 %.084.lcssa.ph, 0
  %.0..0.172.pr = load ptr, ptr %i.a, align 8     ; 2 uses
  %.not107144 = icmp eq ptr %.0..0.172.pr, null
  %or.cond = select i1 %i.bg, i1 true, i1 %.not107144
  br i1 %or.cond, label %.preheader137, label %.lr.ph147.backedge

.preheader137:                                    ; preds = %.critedge, %bb.c, %.preheader138
  %i.bh = load i32, ptr %i.h, align 8, !tbaa !145 ; 3 uses
  %i.bi = icmp slt i32 %.189162, %i.bh
  br i1 %i.bi, label %.lr.ph154, label %.critedge2

.lr.ph154:                                        ; preds = %.preheader137
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !126
  %i.bk = sext i32 %.189162 to i64
  %i.bl = sext i32 %i.bh to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph154, %bb.aa
  %indvars.iv = phi i64 [ %i.bk, %.lr.ph154 ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %indvars.iv ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !192 ; 3 uses
  %i.bp = fcmp ugt float %i.bo, %i.ag
  br i1 %i.bp, label %.critedge2.loopexit.split.loop.exit212, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.br = load float, ptr %i.bq, align 4, !tbaa !218 ; 3 uses
  %i.bs = fcmp ogt float %i.br, %i.ag
  br i1 %i.bs, label %bb.l, label %bb.aa

bb.l:                                             ; preds = %bb.k
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !144 ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !212
  store ptr %i.bv, ptr %i.i, align 8, !tbaa !144
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %i.j, align 8, !tbaa !143 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !141 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 1000
  br i1 %i.ca, label %bb.p, label %nsvg__alloc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 1032 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !123 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not15.i.i.i, label %.thread14.i.i, label %nsvg__nextPage.exit.i.i

.thread.i.i:                                      ; preds = %bb.n
  %calloc.i.i.i = tail call dereferenceable_or_null(1040) ptr @calloc(i64 1, i64 1040) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %calloc.i.i.i) ]
  store ptr %calloc.i.i.i, ptr %i.k, align 8, !tbaa !117
  br label %nsvg__nextPage.exit.i.i

.thread14.i.i:                                    ; preds = %bb.p
  %calloc.i15.i.i = tail call dereferenceable_or_null(1040) ptr @calloc(i64 1, i64 1040) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %calloc.i15.i.i) ]
  store ptr %calloc.i15.i.i, ptr %i.cb, align 8, !tbaa !123
  br label %nsvg__nextPage.exit.i.i

nsvg__nextPage.exit.i.i:                          ; preds = %.thread14.i.i, %.thread.i.i, %bb.p
  %.0.i.i.i = phi ptr [ %calloc.i15.i.i, %.thread14.i.i ], [ %i.cc, %bb.p ], [ %calloc.i.i.i, %.thread.i.i ] ; 3 uses
  store ptr %.0.i.i.i, ptr %i.j, align 8, !tbaa !143
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1024
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !141
  br label %nsvg__alloc.exit.i

nsvg__alloc.exit.i:                               ; preds = %nsvg__nextPage.exit.i.i, %bb.o
  %i.cd = phi i32 [ %.pre.i.i, %nsvg__nextPage.exit.i.i ], [ %i.bz, %bb.o ] ; 2 uses
  %i.ce = phi ptr [ %.0.i.i.i, %nsvg__nextPage.exit.i.i ], [ %i.bw, %bb.o ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1024
  %i.cg = add nsw i32 %i.cd, 24
  store i32 %i.cg, ptr %i.cf, align 8, !tbaa !141
  %i.ch = sext i32 %i.cd to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  br label %bb.q

bb.q:                                             ; preds = %nsvg__alloc.exit.i, %bb.m
  %.0.i = phi ptr [ %i.bt, %bb.m ], [ %i.ci, %nsvg__alloc.exit.i ] ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !219
  %i.cl = load float, ptr %i.bm, align 8, !tbaa !220 ; 2 uses
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = fsub float %i.br, %i.bo
  %i.co = fdiv float %i.cm, %i.cn                 ; 3 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = fmul float %i.co, 1.024000e+03          ; 4 uses
  br i1 %i.cp, label %nsvg__roundf.exit.i, label %bb.r

nsvg__roundf.exit.i:                              ; preds = %bb.q
  %i.cr = fsub float 5.000000e-01, %i.cq
  %i.cs = tail call float @llvm.floor.f32(float %i.cr)
  %i.ct = fneg float %i.cs
  br label %nsvg__roundf.exit31.i

bb.r:                                             ; preds = %bb.q
  %i.cu = fcmp ult float %i.cq, 0.000000e+00
  br i1 %i.cu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = fadd float %i.cq, 5.000000e-01
  %i.cw = tail call float @llvm.floor.f32(float %i.cv)
  br label %nsvg__roundf.exit31.i

bb.t:                                             ; preds = %bb.r
  %i.cx = fadd float %i.cq, -5.000000e-01
  %i.cy = tail call float @llvm.ceil.f32(float %i.cx)
  br label %nsvg__roundf.exit31.i

nsvg__roundf.exit31.i:                            ; preds = %bb.t, %bb.s, %nsvg__roundf.exit.i
  %.sink43.i = phi float [ %i.ct, %nsvg__roundf.exit.i ], [ %i.cw, %bb.s ], [ %i.cy, %bb.t ]
  %i.cz = fptosi float %.sink43.i to i32
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !213
  %i.db = fsub float %i.ag, %i.bo
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.co, float %i.db, float %i.cl)
  %i.dd = fmul float %i.dc, 1.024000e+03          ; 3 uses
  %i.de = fcmp ult float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.v, label %bb.u

bb.u:                                             ; preds = %nsvg__roundf.exit31.i
  %i.df = fadd float %i.dd, 5.000000e-01
  %i.dg = tail call float @llvm.floor.f32(float %i.df)
  br label %bb.w

bb.v:                                             ; preds = %nsvg__roundf.exit31.i
  %i.dh = fadd float %i.dd, -5.000000e-01
  %i.di = tail call float @llvm.ceil.f32(float %i.dh)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dj = phi float [ %i.dg, %bb.u ], [ %i.di, %bb.v ]
  %i.dk = fptosi float %i.dj to i32               ; 3 uses
  store i32 %i.dk, ptr %.0.i, align 8, !tbaa !214
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store float %i.br, ptr %i.dl, align 8, !tbaa !210
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 3 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !212
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !155
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !221
  %.0..0..0..0. = load ptr, ptr %i.a, align 8, !tbaa !209 ; 4 uses
  %i.dq = icmp eq ptr %.0..0..0..0., null
  br i1 %i.dq, label %6, label %bb.x

6:                                                ; preds = %bb.w
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !209
  br label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.dr = load i32, ptr %.0..0..0..0., align 8, !tbaa !214
  %i.ds = icmp sgt i32 %i.dr, %i.dk
  br i1 %i.ds, label %bb.y, label %.preheader

bb.y:                                             ; preds = %bb.x
  store ptr %.0..0..0..0., ptr %i.dm, align 8, !tbaa !212
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !209
  br label %bb.aa

.preheader:                                       ; preds = %bb.x, %bb.z
  %.0 = phi ptr [ %i.du, %bb.z ], [ %.0..0..0..0., %bb.x ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !212 ; 4 uses
  %.not110 = icmp eq ptr %i.du, null
  br i1 %.not110, label %.critedge4, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !214
  %i.dw = icmp slt i32 %i.dv, %i.dk
  br i1 %i.dw, label %.preheader, label %.critedge4, !llvm.loop !222

.critedge4:                                       ; preds = %.preheader, %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %.0, i64 16
  store ptr %i.du, ptr %i.dm, align 8, !tbaa !212
  store ptr %.0.i, ptr %i.dx, align 8, !tbaa !212
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %.critedge4, %6, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bl
  br i1 %exitcond.not, label %.critedge2, label %bb.j, !llvm.loop !223

.critedge2.loopexit.split.loop.exit212:           ; preds = %bb.j
  %i.dy = trunc nsw i64 %indvars.iv to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.aa, %.critedge2.loopexit.split.loop.exit212, %.preheader137
  %.290.lcssa = phi i32 [ %.189162, %.preheader137 ], [ %i.dy, %.critedge2.loopexit.split.loop.exit212 ], [ %i.bh, %bb.aa ] ; 2 uses
  %.0..0..0..0.94 = load ptr, ptr %i.a, align 8, !tbaa !209 ; 5 uses
  %.not111 = icmp eq ptr %.0..0..0..0.94, null
  br i1 %.not111, label %nsvg__fillActiveEdges.exit, label %bb.ab

bb.ab:                                            ; preds = %.critedge2
  %i.dz = load ptr, ptr %i.e, align 8, !tbaa !129 ; 12 uses
  %i.ea = load i32, ptr %i.f, align 8, !tbaa !131 ; 6 uses
  switch i8 %5, label %nsvg__fillActiveEdges.exit [
    i8 0, label %.preheader.i
    i8 1, label %.preheader48.i
  ]

.preheader.i:                                     ; preds = %bb.ab, %nsvg__fillScanline.exit.i
  %.6130 = phi i32 [ %.7131, %nsvg__fillScanline.exit.i ], [ %.0124160, %bb.ab ] ; 3 uses
  %.6 = phi i32 [ %.7, %nsvg__fillScanline.exit.i ], [ %.0121161, %bb.ab ] ; 3 uses
  %.052.i = phi ptr [ %i.gk, %nsvg__fillScanline.exit.i ], [ %.0..0..0..0.94, %bb.ab ] ; 5 uses
  %.03151.i = phi i32 [ %.132.i, %nsvg__fillScanline.exit.i ], [ 0, %bb.ab ] ; 2 uses
  %.03350.i = phi i32 [ %.134.i, %nsvg__fillScanline.exit.i ], [ 0, %bb.ab ] ; 10 uses
  %i.eb = icmp eq i32 %.03151.i, 0
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i
  %i.ec = load i32, ptr %.052.i, align 8, !tbaa !214
  %i.ed = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !221
  br label %nsvg__fillScanline.exit.i

bb.ad:                                            ; preds = %.preheader.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.052.i, i64 12
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !221
  %i.eh = add nsw i32 %i.eg, %.03151.i            ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.ae, label %nsvg__fillScanline.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ej = load i32, ptr %.052.i, align 8, !tbaa !214 ; 3 uses
  %i.ek = ashr i32 %.03350.i, 10                  ; 7 uses
  %i.el = ashr i32 %i.ej, 10                      ; 6 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ek, i32 %.6130) ; 6 uses
  %.8 = tail call i32 @llvm.smax.i32(i32 %i.el, i32 %.6) ; 6 uses
  %i.em = icmp slt i32 %i.ek, %i.ea
  %i.en = icmp sgt i32 %i.el, -1
  %or.cond.i.i = and i1 %i.em, %i.en
  br i1 %or.cond.i.i, label %bb.af, label %nsvg__fillScanline.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.eo = icmp eq i32 %i.ek, %i.el
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ep = zext nneg i32 %i.ek to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ep ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !8
  %i.es = sub nsw i32 %i.ej, %.03350.i
  %i.et = mul nsw i32 %i.es, 51
  %i.eu = lshr i32 %i.et, 10
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = add i8 %i.er, %i.ev
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !8
  br label %nsvg__fillScanline.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ex = icmp sgt i32 %i.ek, -1
  br i1 %i.ex, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ey = zext nneg i32 %i.ek to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ey ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !8
  %i.fb = and i32 %.03350.i, 1023
  %i.fc = sub nuw nsw i32 1024, %i.fb
  %i.fd = mul nuw nsw i32 %i.fc, 51
  %i.fe = lshr i32 %i.fd, 10
  %i.ff = trunc nuw nsw i32 %i.fe to i8
  %i.fg = add i8 %i.fa, %i.ff
  store i8 %i.fg, ptr %i.ez, align 1, !tbaa !8
  %i.fh = add nuw nsw i32 %i.ek, 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.047.i.i = phi i32 [ %i.fh, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  %i.fi = icmp slt i32 %i.el, %i.ea
  br i1 %i.fi, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fj = zext nneg i32 %i.el to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.fj ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = and i32 %i.ej, 1023
  %i.fn = mul nuw nsw i32 %i.fm, 51
  %i.fo = lshr i32 %i.fn, 10
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  %i.fq = add i8 %i.fl, %i.fp
  store i8 %i.fq, ptr %i.fk, align 1, !tbaa !8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i = phi i32 [ %i.el, %bb.ak ], [ %i.ea, %bb.aj ] ; 2 uses
  %i.fr = icmp slt i32 %.047.i.i, %.0.i.i
  br i1 %i.fr, label %iter.check, label %nsvg__fillScanline.exit.i

iter.check:                                       ; preds = %bb.al
  %i.fs = zext i32 %.047.i.i to i64               ; 7 uses
  %i.ft = zext nneg i32 %.0.i.i to i64            ; 2 uses
  %i.fu = add nuw nsw i64 %i.fs, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fu, i64 %i.ft)
  %i.fv = sub nsw i64 %umax, %i.fs                ; 7 uses
  %min.iters.check = icmp ult i64 %i.fv, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check221 = icmp ult i64 %i.fv, 32
  br i1 %min.iters.check221, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fw = and i64 %i.fv, 24
  %n.vec = and i64 %i.fv, -32                     ; 4 uses
  %i.fx = add nsw i64 %n.vec, %i.fs
  %invariant.gep265 = getelementptr i8, ptr %i.dz, i64 %i.fs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep266 = getelementptr i8, ptr %invariant.gep265, i64 %index ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %gep266, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep266, align 1, !tbaa !8
  %wide.load222 = load <16 x i8>, ptr %i.fy, align 1, !tbaa !8
  %i.fz = add <16 x i8> %wide.load, splat (i8 51)
  %i.ga = add <16 x i8> %wide.load222, splat (i8 51)
  store <16 x i8> %i.fz, ptr %gep266, align 1, !tbaa !8
  store <16 x i8> %i.ga, ptr %i.fy, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fv, %n.vec
  br i1 %cmp.n, label %nsvg__fillScanline.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !225

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec223 = and i64 %i.fv, -8                   ; 3 uses
  %i.gc = add nsw i64 %n.vec223, %i.fs
  %invariant.gep267 = getelementptr i8, ptr %i.dz, i64 %i.fs
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index224 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next226, %vec.epilog.vector.body ] ; 2 uses
  %gep268 = getelementptr i8, ptr %invariant.gep267, i64 %index224 ; 2 uses
  %wide.load225 = load <8 x i8>, ptr %gep268, align 1, !tbaa !8
  %i.gd = add <8 x i8> %wide.load225, splat (i8 51)
  store <8 x i8> %i.gd, ptr %gep268, align 1, !tbaa !8
  %index.next226 = add nuw i64 %index224, 8       ; 2 uses
  %i.ge = icmp eq i64 %index.next226, %n.vec223
  br i1 %i.ge, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !226

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n227 = icmp eq i64 %i.fv, %n.vec223
  br i1 %cmp.n227, label %nsvg__fillScanline.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ %i.fs, %iter.check ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8
  %i.gh = add i8 %i.gg, 51
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gi = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ft
  br i1 %i.gi, label %.lr.ph.i.i, label %nsvg__fillScanline.exit.i, !llvm.loop !227

nsvg__fillScanline.exit.i:                        ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.al, %bb.ag, %bb.ae, %bb.ad, %bb.ac
  %.7131 = phi i32 [ %.6130, %bb.ac ], [ %spec.select, %bb.ag ], [ %.6130, %bb.ad ], [ %spec.select, %bb.al ], [ %spec.select, %bb.ae ], [ %spec.select, %middle.block ], [ %spec.select, %vec.epilog.middle.block ], [ %spec.select, %.lr.ph.i.i ] ; 2 uses
  %.7 = phi i32 [ %.6, %bb.ac ], [ %.8, %bb.ag ], [ %.6, %bb.ad ], [ %.8, %bb.al ], [ %.8, %bb.ae ], [ %.8, %middle.block ], [ %.8, %vec.epilog.middle.block ], [ %.8, %.lr.ph.i.i ] ; 2 uses
  %.134.i = phi i32 [ %i.ec, %bb.ac ], [ %.03350.i, %bb.ag ], [ %.03350.i, %bb.ad ], [ %.03350.i, %bb.al ], [ %.03350.i, %bb.ae ], [ %.03350.i, %middle.block ], [ %.03350.i, %vec.epilog.middle.block ], [ %.03350.i, %.lr.ph.i.i ]
  %.132.i = phi i32 [ %i.ee, %bb.ac ], [ 0, %bb.ag ], [ %i.eh, %bb.ad ], [ 0, %bb.al ], [ 0, %bb.ae ], [ 0, %middle.block ], [ 0, %vec.epilog.middle.block ], [ 0, %.lr.ph.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.052.i, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !212 ; 2 uses
  %.not.i112 = icmp eq ptr %i.gk, null
  br i1 %.not.i112, label %nsvg__fillActiveEdges.exit, label %.preheader.i, !llvm.loop !228

.preheader48.i:                                   ; preds = %bb.ab, %nsvg__fillScanline.exit47.i
  %.3127 = phi i32 [ %.5129, %nsvg__fillScanline.exit47.i ], [ %.0124160, %bb.ab ] ; 2 uses
  %.3 = phi i32 [ %.5, %nsvg__fillScanline.exit47.i ], [ %.0121161, %bb.ab ] ; 2 uses
  %.235.i = phi i32 [ %.336.i, %nsvg__fillScanline.exit47.i ], [ 0, %bb.ab ] ; 9 uses
  %.2.i = phi i32 [ %.3.i, %nsvg__fillScanline.exit47.i ], [ 0, %bb.ab ]
  %.1.i = phi ptr [ %i.in, %nsvg__fillScanline.exit47.i ], [ %.0..0..0..0.94, %bb.ab ] ; 2 uses
  %i.gl = icmp eq i32 %.2.i, 0
  %i.gm = load i32, ptr %.1.i, align 8, !tbaa !214 ; 4 uses
  br i1 %i.gl, label %nsvg__fillScanline.exit47.i, label %bb.am

bb.am:                                            ; preds = %.preheader48.i
  %i.gn = ashr i32 %.235.i, 10                    ; 7 uses
  %i.go = ashr i32 %i.gm, 10                      ; 6 uses
  %spec.select134 = tail call i32 @llvm.smin.i32(i32 %i.gn, i32 %.3127) ; 6 uses
  %.4 = tail call i32 @llvm.smax.i32(i32 %i.go, i32 %.3) ; 6 uses
  %i.gp = icmp slt i32 %i.gn, %i.ea
  %i.gq = icmp sgt i32 %i.go, -1
  %or.cond.i40.i = and i1 %i.gp, %i.gq
  br i1 %or.cond.i40.i, label %bb.an, label %nsvg__fillScanline.exit47.i

bb.an:                                            ; preds = %bb.am
  %i.gr = icmp eq i32 %i.gn, %i.go
  br i1 %i.gr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.gs = zext nneg i32 %i.gn to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.gs ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !8
  %i.gv = sub nsw i32 %i.gm, %.235.i
  %i.gw = mul nsw i32 %i.gv, 51
  %i.gx = lshr i32 %i.gw, 10
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = add i8 %i.gu, %i.gy
  store i8 %i.gz, ptr %i.gt, align 1, !tbaa !8
  br label %nsvg__fillScanline.exit47.i

bb.ap:                                            ; preds = %bb.an
  %i.ha = icmp sgt i32 %i.gn, -1
  br i1 %i.ha, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hb = zext nneg i32 %i.gn to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.hb ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !8
  %i.he = and i32 %.235.i, 1023
  %i.hf = sub nuw nsw i32 1024, %i.he
  %i.hg = mul nuw nsw i32 %i.hf, 51
  %i.hh = lshr i32 %i.hg, 10
  %i.hi = trunc nuw nsw i32 %i.hh to i8
  %i.hj = add i8 %i.hd, %i.hi
  store i8 %i.hj, ptr %i.hc, align 1, !tbaa !8
  %i.hk = add nuw nsw i32 %i.gn, 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.047.i41.i = phi i32 [ %i.hk, %bb.aq ], [ 0, %bb.ap ] ; 2 uses
  %i.hl = icmp slt i32 %i.go, %i.ea
  br i1 %i.hl, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hm = zext nneg i32 %i.go to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.hm ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8
  %i.hp = and i32 %i.gm, 1023
  %i.hq = mul nuw nsw i32 %i.hp, 51
  %i.hr = lshr i32 %i.hq, 10
  %i.hs = trunc nuw nsw i32 %i.hr to i8
  %i.ht = add i8 %i.ho, %i.hs
  store i8 %i.ht, ptr %i.hn, align 1, !tbaa !8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i42.i = phi i32 [ %i.go, %bb.as ], [ %i.ea, %bb.ar ] ; 2 uses
  %i.hu = icmp slt i32 %.047.i41.i, %.0.i42.i
  br i1 %i.hu, label %iter.check243, label %nsvg__fillScanline.exit47.i

iter.check243:                                    ; preds = %bb.at
  %i.hv = zext i32 %.047.i41.i to i64             ; 7 uses
  %i.hw = zext nneg i32 %.0.i42.i to i64          ; 2 uses
  %i.hx = add nuw nsw i64 %i.hv, 1
  %umax229 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 %i.hw)
  %i.hy = sub nsw i64 %umax229, %i.hv             ; 7 uses
  %min.iters.check230 = icmp ult i64 %i.hy, 8
  br i1 %min.iters.check230, label %.lr.ph.i44.i.preheader, label %vector.main.loop.iter.check231

vector.main.loop.iter.check231:                   ; preds = %iter.check243
  %min.iters.check232 = icmp ult i64 %i.hy, 32
  br i1 %min.iters.check232, label %vec.epilog.ph247, label %vector.ph233

vector.ph233:                                     ; preds = %vector.main.loop.iter.check231
  %i.hz = and i64 %i.hy, 24
  %n.vec234 = and i64 %i.hy, -32                  ; 4 uses
  %i.ia = add nsw i64 %n.vec234, %i.hv
  %invariant.gep = getelementptr i8, ptr %i.dz, i64 %i.hv
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next239, %vector.body235 ] ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index236 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load237 = load <16 x i8>, ptr %gep, align 1, !tbaa !8
  %wide.load238 = load <16 x i8>, ptr %i.ib, align 1, !tbaa !8
  %i.ic = add <16 x i8> %wide.load237, splat (i8 51)
  %i.id = add <16 x i8> %wide.load238, splat (i8 51)
  store <16 x i8> %i.ic, ptr %gep, align 1, !tbaa !8
  store <16 x i8> %i.id, ptr %i.ib, align 1, !tbaa !8
  %index.next239 = add nuw i64 %index236, 32      ; 2 uses
  %i.ie = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.ie, label %middle.block240, label %vector.body235, !llvm.loop !229

middle.block240:                                  ; preds = %vector.body235
  %cmp.n241 = icmp eq i64 %i.hy, %n.vec234
  br i1 %cmp.n241, label %nsvg__fillScanline.exit47.i, label %vec.epilog.iter.check245

vec.epilog.iter.check245:                         ; preds = %middle.block240
  %min.epilog.iters.check246 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check246, label %.lr.ph.i44.i.preheader, label %vec.epilog.ph247, !prof !225

vec.epilog.ph247:                                 ; preds = %vector.main.loop.iter.check231, %vec.epilog.iter.check245
  %vec.epilog.resume.val242 = phi i64 [ %n.vec234, %vec.epilog.iter.check245 ], [ 0, %vector.main.loop.iter.check231 ]
  %n.vec248 = and i64 %i.hy, -8                   ; 3 uses
  %i.if = add nsw i64 %n.vec248, %i.hv
  %invariant.gep263 = getelementptr i8, ptr %i.dz, i64 %i.hv
  br label %vec.epilog.vector.body249

vec.epilog.vector.body249:                        ; preds = %vec.epilog.vector.body249, %vec.epilog.ph247
  %index250 = phi i64 [ %vec.epilog.resume.val242, %vec.epilog.ph247 ], [ %index.next252, %vec.epilog.vector.body249 ] ; 2 uses
  %gep264 = getelementptr i8, ptr %invariant.gep263, i64 %index250 ; 2 uses
  %wide.load251 = load <8 x i8>, ptr %gep264, align 1, !tbaa !8
  %i.ig = add <8 x i8> %wide.load251, splat (i8 51)
  store <8 x i8> %i.ig, ptr %gep264, align 1, !tbaa !8
  %index.next252 = add nuw i64 %index250, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next252, %n.vec248
  br i1 %i.ih, label %vec.epilog.middle.block253, label %vec.epilog.vector.body249, !llvm.loop !230

vec.epilog.middle.block253:                       ; preds = %vec.epilog.vector.body249
  %cmp.n254 = icmp eq i64 %i.hy, %n.vec248
  br i1 %cmp.n254, label %nsvg__fillScanline.exit47.i, label %.lr.ph.i44.i.preheader

.lr.ph.i44.i.preheader:                           ; preds = %iter.check243, %vec.epilog.iter.check245, %vec.epilog.middle.block253
  %indvars.iv.i45.i.ph = phi i64 [ %i.hv, %iter.check243 ], [ %i.ia, %vec.epilog.iter.check245 ], [ %i.if, %vec.epilog.middle.block253 ]
  br label %.lr.ph.i44.i

.lr.ph.i44.i:                                     ; preds = %.lr.ph.i44.i.preheader, %.lr.ph.i44.i
  %indvars.iv.i45.i = phi i64 [ %indvars.iv.next.i46.i, %.lr.ph.i44.i ], [ %indvars.iv.i45.i.ph, %.lr.ph.i44.i.preheader ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dz, i64 %indvars.iv.i45.i ; 2 uses
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !8
  %i.ik = add i8 %i.ij, 51
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !8
  %indvars.iv.next.i46.i = add nuw nsw i64 %indvars.iv.i45.i, 1 ; 2 uses
  %i.il = icmp samesign ult i64 %indvars.iv.next.i46.i, %i.hw
  br i1 %i.il, label %.lr.ph.i44.i, label %nsvg__fillScanline.exit47.i, !llvm.loop !231

nsvg__fillScanline.exit47.i:                      ; preds = %.lr.ph.i44.i, %middle.block240, %vec.epilog.middle.block253, %bb.at, %bb.ao, %bb.am, %.preheader48.i
  %.5129 = phi i32 [ %.3127, %.preheader48.i ], [ %spec.select134, %bb.ao ], [ %spec.select134, %bb.am ], [ %spec.select134, %bb.at ], [ %spec.select134, %middle.block240 ], [ %spec.select134, %vec.epilog.middle.block253 ], [ %spec.select134, %.lr.ph.i44.i ] ; 2 uses
  %.5 = phi i32 [ %.3, %.preheader48.i ], [ %.4, %bb.ao ], [ %.4, %bb.am ], [ %.4, %bb.at ], [ %.4, %middle.block240 ], [ %.4, %vec.epilog.middle.block253 ], [ %.4, %.lr.ph.i44.i ] ; 2 uses
  %.336.i = phi i32 [ %i.gm, %.preheader48.i ], [ %.235.i, %bb.ao ], [ %.235.i, %bb.am ], [ %.235.i, %bb.at ], [ %.235.i, %middle.block240 ], [ %.235.i, %vec.epilog.middle.block253 ], [ %.235.i, %.lr.ph.i44.i ]
  %.3.i = phi i32 [ 1, %.preheader48.i ], [ 0, %bb.ao ], [ 0, %bb.am ], [ 0, %bb.at ], [ 0, %middle.block240 ], [ 0, %vec.epilog.middle.block253 ], [ 0, %.lr.ph.i44.i ]
  %i.im = getelementptr inbounds nuw i8, ptr %.1.i, i64 16
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !212 ; 2 uses
  %.old1.not.i = icmp eq ptr %i.in, null
  br i1 %.old1.not.i, label %nsvg__fillActiveEdges.exit, label %.preheader48.i

nsvg__fillActiveEdges.exit:                       ; preds = %nsvg__fillScanline.exit47.i, %nsvg__fillScanline.exit.i, %bb.ab, %.critedge2
  %.1125 = phi i32 [ %.0124160, %.critedge2 ], [ %.0124160, %bb.ab ], [ %.7131, %nsvg__fillScanline.exit.i ], [ %.5129, %nsvg__fillScanline.exit47.i ] ; 2 uses
  %.1122 = phi i32 [ %.0121161, %.critedge2 ], [ %.0121161, %bb.ab ], [ %.7, %nsvg__fillScanline.exit.i ], [ %.5, %nsvg__fillScanline.exit47.i ] ; 2 uses
  %i.io = add nuw nsw i32 %.083163, 1             ; 2 uses
  %exitcond171.not = icmp eq i32 %i.io, 5
  br i1 %exitcond171.not, label %bb.au, label %bb.c, !llvm.loop !232

bb.au:                                            ; preds = %nsvg__fillActiveEdges.exit
  %spec.select135 = tail call i32 @llvm.smax.i32(i32 %.1125, i32 0) ; 6 uses
  %i.ip = load i32, ptr %i.f, align 8, !tbaa !131
  %i.iq = add nsw i32 %i.ip, -1
  %.2123 = tail call i32 @llvm.smin.i32(i32 %.1122, i32 %i.iq) ; 2 uses
  %.not105 = icmp sgt i32 %spec.select135, %.2123
  br i1 %.not105, label %nsvg__scanlineSolid.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !130
  %i.is = load i32, ptr %i.m, align 8, !tbaa !133
  %i.it = mul nsw i32 %i.is, %.082165
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %i.ir, i64 %i.iu
  %i.iw = shl nuw nsw i32 %spec.select135, 2
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ix ; 3 uses
  %i.iz = sub nsw i32 %.2123, %spec.select135     ; 3 uses
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !129
  %i.jb = zext nneg i32 %spec.select135 to i64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb ; 3 uses
  %i.jd = load i8, ptr %4, align 4, !tbaa !193
  switch i8 %i.jd, label %nsvg__scanlineSolid.exit [
    i8 1, label %.lr.ph184.i
    i8 2, label %.lr.ph180.i
    i8 3, label %.lr.ph.i
  ]

.lr.ph184.i:                                      ; preds = %bb.av
  %i.je = load i32, ptr %i.u, align 4, !tbaa !195 ; 4 uses
  %i.jf = lshr i32 %i.je, 24
  %i.jg = lshr i32 %i.je, 16
  %i.jh = and i32 %i.jg, 255
  %i.ji = lshr i32 %i.je, 8
  %i.jj = and i32 %i.ji, 255
  %i.jk = and i32 %i.je, 255
end_hunk_0
