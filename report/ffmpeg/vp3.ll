Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp3?download=true
inline.NumInlined: 159
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 41
begin_hunk_0_@unpack_vlcs:bb.a

bb.m:                                             ; preds = %get_vlc2.exit
  %i.dk = icmp sgt i32 %.167.i, -1
  br i1 %i.dk, label %bb.n, label %bb.y

bb.n:                                             ; preds = %bb.m
  %i.dl = zext nneg i32 %.167.i to i64            ; 5 uses
  %.not.i135 = icmp samesign ult i32 %.167.i, 13
  br i1 %.not.i135, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = getelementptr inbounds nuw i8, ptr @coeff_get_bits, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !49
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.cg, 3
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 1, !tbaa !49
  %i.dt = tail call i32 @llvm.bswap.i32(i32 %i.ds)
  %i.du = and i32 %i.cg, 7
  %i.dv = shl i32 %i.dt, %i.du
  %i.dw = sub nsw i32 32, %i.do
  %i.dx = lshr i32 %i.dv, %i.dw
  %i.dy = add i32 %i.cg, %i.do
  %i.dz = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.dy) ; 2 uses
  store i32 %i.dz, ptr %i.t, align 8, !tbaa !48
  %i.ea = sext i32 %i.dx to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eb = phi i32 [ %i.dz, %bb.o ], [ %i.cg, %bb.n ] ; 3 uses
  %.012.i = phi i64 [ %i.ea, %bb.o ], [ 0, %bb.n ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @coeff_tables, i64 %i.dl
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !85
  %i.ee = getelementptr inbounds [2 x i8], ptr %i.ed, i64 %.012.i
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !56 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr @zero_run_base, i64 %i.dl
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !49
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  %i.ej = shl nuw i64 1, %i.dl
  %i.ek = and i64 %i.ej, 1342176895
  %.not15.not.i = icmp eq i64 %i.ek, 0
  br i1 %.not15.not.i, label %bb.q, label %get_coeff.exit

bb.q:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr @zero_run_get_bits, i64 %i.dl
  %i.em = load i8, ptr %i.el, align 1, !tbaa !49
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = lshr i32 %i.eb, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 1, !tbaa !49
  %i.es = tail call i32 @llvm.bswap.i32(i32 %i.er)
  %i.et = and i32 %i.eb, 7
  %i.eu = shl i32 %i.es, %i.et
  %i.ev = sub nsw i32 32, %i.en
  %i.ew = lshr i32 %i.eu, %i.ev
  %i.ex = add i32 %i.eb, %i.en
  %i.ey = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ex)
  store i32 %i.ey, ptr %i.t, align 8, !tbaa !48
  %i.ez = add i32 %i.ew, %i.ei
  br label %get_coeff.exit

get_coeff.exit:                                   ; preds = %bb.p, %bb.q
  %.0.i136 = phi i32 [ %i.ez, %bb.q ], [ %i.ei, %bb.p ] ; 5 uses
  %.not130 = icmp eq i32 %.0.i136, 0
  br i1 %.not130, label %bb.s, label %bb.r

bb.r:                                             ; preds = %get_coeff.exit
  %i.fa = sext i16 %i.ef to i32
  %i.fb = shl nsw i32 %i.fa, 9
  %i.fc = shl i32 %.0.i136, 2
  %i.fd = add nsw i32 %i.fc, %i.fb
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = or disjoint i16 %i.fe, 1
  br label %bb.v

bb.s:                                             ; preds = %get_coeff.exit
  br i1 %.not131, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fg = sext i32 %.1148 to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !29
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.fj
  store i16 %i.ef, ptr %i.fk, align 2, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fl = shl i16 %i.ef, 2
  %i.fm = or disjoint i16 %i.fl, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.sink = phi i16 [ %i.fm, %bb.u ], [ %i.ff, %bb.r ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv160
  store i16 %.sink, ptr %i.fn, align 2, !tbaa !56
  %i.fo = add nsw i32 %.0.i136, %3                ; 2 uses
  %i.fp = icmp sgt i32 %i.fo, 64
  br i1 %i.fp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fq = load ptr, ptr %0, align 16, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fq, i32 noundef 48, ptr noundef nonnull @.str.44, i32 noundef %.0.i136, i32 noundef %i.w) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pre-phi = phi i32 [ 64, %bb.w ], [ %i.fo, %bb.v ]
  %.0112 = phi i32 [ %i.w, %bb.w ], [ %.0.i136, %bb.v ]
  %.not132.not142 = icmp sgt i32 %.0112, 0
  br i1 %.not132.not142, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.fr = sext i32 %.pre-phi to i64               ; 2 uses
  %i.fs = tail call i64 @llvm.smax.i64(i64 %i.fr, i64 %i.y)
  %i.ft = sub i64 %i.fs, %i.d                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ft, 8
  br i1 %min.iters.check, label %.lr.ph.preheader199, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ft, -8                      ; 3 uses
  %i.fu = add i64 %n.vec, %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fv = getelementptr i8, ptr %gep, i64 4       ; 2 uses
  %i.fw = getelementptr i8, ptr %gep, i64 20      ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fv, align 4, !tbaa !29
  %wide.load185 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !29
  %i.fx = add nsw <4 x i32> %wide.load, splat (i32 -1)
  %i.fy = add nsw <4 x i32> %wide.load185, splat (i32 -1)
  store <4 x i32> %i.fx, ptr %i.fv, align 4, !tbaa !29
  store <4 x i32> %i.fy, ptr %i.fw, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader199

.lr.ph.preheader199:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.fu, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.x
  %i.ga = add nsw i32 %.1148, 1
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader199, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader199 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !29
  %i.gd = add nsw i32 %i.gc, -1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !29
  %.not132.not = icmp slt i64 %indvars.iv.next, %i.fr
  br i1 %.not132.not, label %.lr.ph, label %._crit_edge, !llvm.loop !226

bb.y:                                             ; preds = %bb.m
  %i.ge = load ptr, ptr %0, align 16, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ge, i32 noundef 16, ptr noundef nonnull @.str.45, i32 noundef %.167.i) #11
  br label %bb.af

bb.z:                                             ; preds = %bb.l, %._crit_edge
  %.2118 = phi i32 [ %.1117144, %._crit_edge ], [ 0, %bb.l ] ; 2 uses
  %.2111 = phi i32 [ %.1110147, %._crit_edge ], [ %i.di, %bb.l ] ; 2 uses
  %.2 = phi i32 [ %i.ga, %._crit_edge ], [ %i.dj, %bb.l ] ; 2 uses
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.gf = icmp slt i32 %.2, %i.f
  br i1 %i.gf, label %bb.f, label %.critedge.loopexit, !llvm.loop !227

.critedge.loopexit:                               ; preds = %bb.z, %bb.f, %.thread
  %.1117.lcssa.ph = phi i32 [ %i.dg, %.thread ], [ %.2118, %bb.z ], [ %.1117144, %bb.f ]
  %.1114.lcssa.ph.in = phi i64 [ %indvars.iv.next161173, %.thread ], [ %indvars.iv.next161, %bb.z ], [ %indvars.iv160, %bb.f ]
  %.1110.lcssa.ph = phi i32 [ %i.df, %.thread ], [ %.2111, %bb.z ], [ %.1110147, %bb.f ]
  %.1114.lcssa.ph = trunc i64 %.1114.lcssa.ph.in to i32
  %.pre = load i32, ptr %i.e, align 4, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.e
  %i.gg = phi i32 [ %i.f, %bb.e ], [ %.pre, %.critedge.loopexit ]
  %.1117.lcssa = phi i32 [ %.0116, %bb.e ], [ %.1117.lcssa.ph, %.critedge.loopexit ] ; 3 uses
  %.1114.lcssa = phi i32 [ %.0113, %bb.e ], [ %.1114.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.1110.lcssa = phi i32 [ %.0108, %bb.e ], [ %.1110.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %i.gh = icmp sgt i32 %.1110.lcssa, %i.gg
  br i1 %i.gh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge
  %i.gi = load ptr, ptr %0, align 16, !tbaa !51
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gi, i32 noundef 16, ptr noundef nonnull @.str.46) #11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge
  %.not129 = icmp ne i32 %.1110.lcssa, 0
  %i.gj = icmp slt i32 %3, 63                     ; 2 uses
  %or.cond = and i1 %.not129, %i.gj
  br i1 %or.cond, label %.lr.ph158.preheader, label %.loopexit.a

.lr.ph158.preheader:                              ; preds = %bb.ab
  %i.gk = sub nsw i64 63, %i.d                    ; 3 uses
  %min.iters.check187 = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check187, label %.lr.ph158.preheader198, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph158.preheader
  %n.vec189 = and i64 %i.gk, -8                   ; 3 uses
  %i.gl = add nsw i64 %n.vec189, %i.d
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.1110.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep212 = getelementptr [4 x i8], ptr %i.c, i64 %i.d
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph188
  %index191 = phi i64 [ 0, %vector.ph188 ], [ %index.next194, %vector.body190 ] ; 2 uses
  %gep213 = getelementptr [4 x i8], ptr %invariant.gep212, i64 %index191 ; 2 uses
  %i.gm = getelementptr i8, ptr %gep213, i64 4    ; 2 uses
  %i.gn = getelementptr i8, ptr %gep213, i64 20   ; 2 uses
  %wide.load192 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !29
  %wide.load193 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !29
  %i.go = sub nsw <4 x i32> %wide.load192, %broadcast.splat
  %i.gp = sub nsw <4 x i32> %wide.load193, %broadcast.splat
  store <4 x i32> %i.go, ptr %i.gm, align 4, !tbaa !29
  store <4 x i32> %i.gp, ptr %i.gn, align 4, !tbaa !29
  %index.next194 = add nuw i64 %index191, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next194, %n.vec189
  br i1 %i.gq, label %middle.block195, label %vector.body190, !llvm.loop !228

middle.block195:                                  ; preds = %vector.body190
  %cmp.n196 = icmp eq i64 %i.gk, %n.vec189
  br i1 %cmp.n196, label %.loopexit.a, label %.lr.ph158.preheader198

.lr.ph158.preheader198:                           ; preds = %.lr.ph158.preheader, %middle.block195
  %indvars.iv163.ph = phi i64 [ %i.d, %.lr.ph158.preheader ], [ %i.gl, %middle.block195 ]
  br label %.lr.ph158

.lr.ph158:                                        ; preds = %.lr.ph158.preheader198, %.lr.ph158
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph158 ], [ %indvars.iv163.ph, %.lr.ph158.preheader198 ]
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 3 uses
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next164 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !29
  %i.gt = sub nsw i32 %i.gs, %.1110.lcssa
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !29
  %exitcond.not = icmp eq i64 %indvars.iv.next164, 63
  br i1 %exitcond.not, label %.loopexit.a, label %.lr.ph158, !llvm.loop !229

.loopexit.a:                                      ; preds = %.lr.ph158, %middle.block195, %bb.ab
  %i.gu = icmp samesign ult i32 %4, 2
  br i1 %i.gu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit.a
  %i.gv = zext nneg i32 %.1114.lcssa to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.d
  store ptr %i.gw, ptr %i.gy, align 8, !tbaa !85
  br label %bb.af

bb.ad:                                            ; preds = %.loopexit.a
  br i1 %i.gj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gz = zext nneg i32 %.1114.lcssa to i64
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.gz
  %i.hb = getelementptr [8 x i8], ptr %i.g, i64 %i.d
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  store ptr %i.ha, ptr %i.hc, align 8, !tbaa !85
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad, %bb.y, %bb.b
  %.0119 = phi i32 [ -1094995529, %bb.b ], [ -1, %bb.y ], [ %.1117.lcssa, %bb.ad ], [ %.1117.lcssa, %bb.ae ], [ %.1117.lcssa, %bb.ac ]
  ret i32 %.0119
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @reverse_dc_prediction(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.b, align 2, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.c, align 2, !tbaa !56
  store i16 0, ptr %i.a, align 2, !tbaa !56
  %i.d = icmp sgt i32 %3, 0
  %i.e = icmp sgt i32 %2, 0
  %or.cond176 = and i1 %i.d, %i.e
  br i1 %or.cond176, label %.preheader.lr.ph.split, label %._crit_edge152.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53   ; 4 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  %i.i = sext i32 %1 to i64
  %.not165 = icmp eq i32 %2, 1
  %exitcond.peel.not = icmp eq i32 %2, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.088151 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %i.bg, %._crit_edge ] ; 2 uses
  %.090150 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.393.lcssa, %._crit_edge ] ; 3 uses
  %.094149 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.397.lcssa, %._crit_edge ] ; 2 uses
  %.098148 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.4.lcssa, %._crit_edge ] ; 3 uses
  %.0102147 = phi i32 [ 0, %.preheader.lr.ph.split ], [ %.3105.lcssa, %._crit_edge ] ; 3 uses
  %.0107146 = phi i64 [ %i.i, %.preheader.lr.ph.split ], [ %.lcssa.wide, %._crit_edge ] ; 3 uses
  %.not117 = icmp eq i32 %.088151, 0              ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0107146 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !68    ; 2 uses
  %.not.peel = icmp eq i8 %i.l, 8
  br i1 %.not.peel, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !49    ; 4 uses
  br i1 %.not117, label %.thread166, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nsw i64 %.0107146, %i.h
  %i.q = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.p ; 4 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !86
  %i.s = sext i16 %i.r to i32                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.u = load i8, ptr %i.t, align 2, !tbaa !68
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !49
  %.not177 = icmp eq i8 %i.x, %i.o                ; 2 uses
  br i1 %.not165, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr i8, ptr %i.q, i64 4
  %i.z = load i16, ptr %i.y, align 2, !tbaa !86
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %i.ab = getelementptr i8, ptr %i.q, i64 6
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !68
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49
  %i.ag = icmp eq i8 %i.af, %i.o
  %i.ah = select i1 %.not177, i64 6, i64 2
  br i1 %i.ag, label %.thread.peel, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.292.peel = phi i32 [ %.090150, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  br i1 %.not177, label %.thread.peel, label %.thread166

.thread.peel:                                     ; preds = %bb.e, %bb.d
  %.3132.peel = phi i64 [ 4, %bb.e ], [ %i.ah, %bb.d ]
  %.292131.peel = phi i32 [ %.292.peel, %bb.e ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @reverse_dc_prediction.predictor_transform, i64 %.3132.peel ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 16, !tbaa !29
  %i.ak = mul nsw i32 %i.aj, %.098148
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = mul nsw i32 %i.am, %i.s
  %i.ao = add nsw i32 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29
  %i.ar = mul nsw i32 %i.aq, %.292131.peel
  %i.as = add nsw i32 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = mul nsw i32 %i.au, %.0102147
  %i.aw = add nsw i32 %i.as, %i.av
  %i.ax = sdiv i32 %i.aw, 128
  %i.ay = trunc i32 %i.ax to i16
  br label %bb.f

.thread166:                                       ; preds = %bb.b, %bb.e
  %.292.peel171 = phi i32 [ %.292.peel, %bb.e ], [ %.090150, %bb.b ]
  %.296.peel170 = phi i32 [ %i.s, %bb.e ], [ %.094149, %bb.b ]
  %i.az = zext i8 %i.o to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %.thread.peel, %.thread166
  %.292130.peel = phi i32 [ %.292.peel171, %.thread166 ], [ %.292131.peel, %.thread.peel ]
  %.296128.peel = phi i32 [ %.296.peel170, %.thread166 ], [ %i.s, %.thread.peel ]
  %.0106.peel = phi i16 [ %i.bb, %.thread166 ], [ %i.ay, %.thread.peel ]
  %i.bc = load i16, ptr %i.j, align 2, !tbaa !86
  %i.bd = add i16 %i.bc, %.0106.peel              ; 2 uses
  store i16 %i.bd, ptr %i.j, align 2, !tbaa !86
  %i.be = zext i8 %i.o to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.be
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader
  %.397.peel = phi i32 [ %.296128.peel, %bb.f ], [ %.094149, %.preheader ] ; 2 uses
  %.393.peel = phi i32 [ %.292130.peel, %bb.f ], [ %.090150, %.preheader ] ; 2 uses
  %indvars.iv.next.peel = add nsw i64 %.0107146, 1 ; 2 uses
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge152.split:                             ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

._crit_edge:                                      ; preds = %bb.q, %bb.g
  %.3105.lcssa = phi i32 [ %.0102147, %bb.g ], [ %.3105, %bb.q ]
  %.4.lcssa = phi i32 [ %.098148, %bb.g ], [ %.4, %bb.q ]
  %.397.lcssa = phi i32 [ %.397.peel, %bb.g ], [ %.397, %bb.q ]
  %.393.lcssa = phi i32 [ %.393.peel, %bb.g ], [ %.393, %bb.q ]
  %.lcssa.wide = phi i64 [ %indvars.iv.next.peel, %bb.g ], [ %indvars.iv.next, %bb.q ]
  %i.bg = add nuw nsw i32 %.088151, 1             ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bg, %3
  br i1 %exitcond157.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !232

.peel.next:                                       ; preds = %bb.g, %bb.q
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ %indvars.iv.next.peel, %bb.g ] ; 3 uses
  %.0138 = phi i32 [ %i.el, %bb.q ], [ 1, %bb.g ] ; 2 uses
  %.191137 = phi i32 [ %.393, %bb.q ], [ %.393.peel, %bb.g ] ; 3 uses
  %.195136 = phi i32 [ %.397, %bb.q ], [ %.397.peel, %bb.g ] ; 2 uses
  %.199135 = phi i32 [ %.4, %bb.q ], [ %.098148, %bb.g ] ; 2 uses
  %.1103134 = phi i32 [ %.3105, %bb.q ], [ %.0102147, %bb.g ]
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !68  ; 2 uses
  %.not = icmp eq i8 %i.bj, 8
  br i1 %.not, label %bb.q, label %bb.h

bb.h:                                             ; preds = %.peel.next
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !49  ; 6 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 -4
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !86
  %i.bp = sext i16 %i.bo to i32                   ; 4 uses
  %i.bq = getelementptr i8, ptr %i.bh, i64 -2
  %i.br = load i8, ptr %i.bq, align 2, !tbaa !68
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !49
  %i.bv = icmp eq i8 %i.bu, %i.bm
  %spec.select = zext i1 %i.bv to i32             ; 3 uses
  br i1 %.not117, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sub nsw i64 %indvars.iv, %i.h
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bw ; 6 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !86
  %i.bz = sext i16 %i.by to i32                   ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !68
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !49
  %i.cf = icmp eq i8 %i.ce, %i.bm
  %i.cg = or disjoint i32 %spec.select, 4
  %spec.select118 = select i1 %i.cf, i32 %i.cg, i32 %spec.select ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bx, i64 -4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !86
  %i.cj = sext i16 %i.ci to i32                   ; 3 uses
  %i.ck = getelementptr i8, ptr %i.bx, i64 -2
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !68
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @reverse_dc_prediction.compatible_frame, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !49
  %i.cp = icmp eq i8 %i.co, %i.bm
  %i.cq = or disjoint i32 %spec.select118, 8
end_hunk_0
