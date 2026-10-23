Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 333
loop-unroll.NumRuntimeUnrolled: 163
loop-unroll.NumUnrolled: 552
begin_hunk_0_@BN_enhanced_miller_rabin_primality_test:bb.a
  %i.cs = and i64 %i.cq, %i.cr
  %.not119 = icmp eq i64 %i.cs, 0
  br i1 %.not119, label %BN_is_bit_set.exit.thread, label %bb.s

BN_is_bit_set.exit.thread:                        ; preds = %bb.r, %BN_is_bit_set.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next235 = add nuw i32 %indvars.iv234, 1
  br label %bb.r, !llvm.loop !1524

bb.s:                                             ; preds = %BN_is_bit_set.exit
  %i.ct = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.thread215, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = trunc nuw nsw i64 %indvars.iv to i32
  %i.cw = tail call i32 @BN_rshift(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cf, i32 noundef %i.cv)
  %.not120 = icmp eq i32 %i.cw, 0
  br i1 %.not120, label %.thread215, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 4 uses
  %i.cy = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.cz = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 14 uses
  %i.da = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 9 uses
  %i.db = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 4 uses
  %i.dc = insertelement <4 x ptr> poison, ptr %i.cx, i64 0
  %i.dd = insertelement <4 x ptr> %i.dc, ptr %i.cy, i64 1
  %i.de = insertelement <4 x ptr> %i.dd, ptr %i.cz, i64 2
  %i.df = insertelement <4 x ptr> %i.de, ptr %i.da, i64 3
  %.fr281 = freeze <4 x ptr> %i.df
  %i.dg = icmp eq <4 x ptr> %.fr281, splat (ptr null)
  %i.dh = icmp eq ptr %i.db, null
  %i.di = bitcast <4 x i1> %i.dg to i4
  %i.dj = icmp ne i4 %i.di, 0
  %op.rdx = select i1 %i.dj, i1 true, i1 %i.dh
  br i1 %op.rdx, label %.thread215, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = tail call ptr @BN_MONT_CTX_new_for_modulus(ptr noundef nonnull %1, ptr noundef nonnull %3) ; 19 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.thread215, label %.preheader218

.preheader218:                                    ; preds = %bb.v
  %.not121225 = icmp slt i32 %.0103, 1
  br i1 %.not121225, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %.preheader218
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 3 uses
  %i.dq = icmp samesign ugt i64 %indvars.iv, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %.not.i162 = icmp eq ptr %4, null
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph227, %BN_GENCB_call.exit.thread
  %.0100226 = phi i32 [ 1, %.lr.ph227 ], [ %i.gv, %BN_GENCB_call.exit.thread ] ; 3 uses
  %i.dt = tail call i32 @BN_rand_range_ex(ptr noundef %i.cx, i64 noundef 2, ptr noundef nonnull %i.cf)
  %.not122 = icmp eq i32 %i.dt, 0
  br i1 %.not122, label %.thread215, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  %i.du = call fastcc i32 @bn_gcd_consttime(ptr noundef %i.cy, ptr noundef %i.b, ptr noundef readonly %i.cx, ptr noundef nonnull readonly %1, ptr noundef nonnull %3)
  %.not.i142 = icmp eq i32 %i.du, 0
  br i1 %.not.i142, label %BN_gcd.exit.thread, label %BN_gcd.exit

BN_gcd.exit.thread:                               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  br label %.thread215

BN_gcd.exit:                                      ; preds = %bb.x
  %i.dv = load i32, ptr %i.b, align 4, !tbaa !73
  %i.dw = tail call i32 @BN_lshift(ptr noundef %i.cy, ptr noundef %i.cy, i32 noundef %i.dv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  %.not123 = icmp eq i32 %i.dw, 0
  br i1 %.not123, label %.thread215, label %bb.y

bb.y:                                             ; preds = %BN_gcd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8, !tbaa !80
  %i.dx = load i32, ptr %i.dm, align 8, !tbaa !91
  %.not.i.i143 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i143, label %BN_cmp_word.exit145, label %BN_cmp_word.exit145.thread

BN_cmp_word.exit145.thread:                       ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

BN_cmp_word.exit145:                              ; preds = %bb.y
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !92
  %i.dz = load i32, ptr %i.dn, align 8, !tbaa !93
  %i.ea = sext i32 %i.dz to i64
  %i.eb = call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.dy, i64 noundef %i.ea, ptr noundef nonnull %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %BN_cmp_word.exit145
  store i32 1, ptr %0, align 4, !tbaa !73
  br label %.thread215

bb.aa:                                            ; preds = %BN_cmp_word.exit145.thread, %BN_cmp_word.exit145
  %i.ed = tail call i32 @BN_mod_exp_mont(ptr noundef nonnull %i.cz, ptr noundef %i.cx, ptr noundef nonnull %i.ct, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %i.dk)
  %.not124 = icmp eq i32 %i.ed, 0
  br i1 %.not124, label %.thread215, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i32, ptr %i.do, align 8, !tbaa !91
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ac, label %BN_is_one.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eg = load i32, ptr %i.dp, align 8, !tbaa !93 ; 4 uses
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %BN_is_one.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = load ptr, ptr %i.cz, align 8, !tbaa !92 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !80
  %i.ek = xor i64 %i.ej, 1                        ; 3 uses
  %i.el = icmp sgt i32 %i.eg, 1
  br i1 %i.el, label %.lr.ph.preheader.i.i, label %BN_is_one.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.ad
  %wide.trip.count.i.i = zext nneg i32 %i.eg to i64 ; 2 uses
  %i.em = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %min.iters.check266 = icmp ult i32 %i.eg, 5
  br i1 %min.iters.check266, label %.lr.ph.i.i146.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec268 = and i64 %i.em, -4                   ; 3 uses
  %i.en = or disjoint i64 %n.vec268, 1
  %i.eo = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ek, i64 0
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %vec.phi271.a = phi <2 x i64> [ %i.eo, %vector.ph267 ], [ %i.es, %vector.body269 ]
  %vec.phi272 = phi <2 x i64> [ zeroinitializer, %vector.ph267 ], [ %i.et, %vector.body269 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index270 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %wide.load273.a = load <2 x i64>, ptr %i.eq, align 8, !tbaa !80
  %wide.load274 = load <2 x i64>, ptr %i.er, align 8, !tbaa !80
  %i.es = or <2 x i64> %wide.load273.a, %vec.phi271.a ; 2 uses
  %i.et = or <2 x i64> %wide.load274, %vec.phi272 ; 2 uses
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.eu, label %middle.block276, label %vector.body269, !llvm.loop !1525

middle.block276:                                  ; preds = %vector.body269
  %bin.rdx277 = or <2 x i64> %i.et, %i.es
  %i.ev = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx277) ; 2 uses
  %cmp.n278 = icmp eq i64 %i.em, %n.vec268
  br i1 %cmp.n278, label %BN_is_one.exit, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block276
  %indvars.iv.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.en, %middle.block276 ]
  %.01113.i.i.ph = phi i64 [ %i.ek, %.lr.ph.preheader.i.i ], [ %i.ev, %middle.block276 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader, %.lr.ph.i.i146
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i146 ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %.01113.i.i = phi i64 [ %i.ey, %.lr.ph.i.i146 ], [ %.01113.i.i.ph, %.lr.ph.i.i146.preheader ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !80
  %i.ey = or i64 %i.ex, %.01113.i.i               ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %BN_is_one.exit, label %.lr.ph.i.i146, !llvm.loop !1526

BN_is_one.exit:                                   ; preds = %.lr.ph.i.i146, %middle.block276, %bb.ad
  %.012.in.in.i.i = phi i64 [ %i.ek, %bb.ad ], [ %i.ev, %middle.block276 ], [ %i.ey, %.lr.ph.i.i146 ]
  %.012.in.i.i.not = icmp eq i64 %.012.in.in.i.i, 0
  br i1 %.012.in.i.i.not, label %.loopexit, label %BN_is_one.exit.thread

BN_is_one.exit.thread:                            ; preds = %bb.ac, %bb.ab, %BN_is_one.exit
  %i.ez = tail call i32 @BN_cmp(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cf)
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %BN_is_one.exit.thread
  br i1 %i.dq, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader, %BN_is_one.exit161.thread
  %.0224 = phi i32 [ %i.gh, %BN_is_one.exit161.thread ], [ 1, %.preheader ]
  %i.fb = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not126 = icmp eq ptr %i.fb, null
  br i1 %.not126, label %.thread215, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.fc = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.cz, ptr noundef %i.da, ptr noundef %i.da, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not127 = icmp eq i32 %i.fc, 0
  br i1 %.not127, label %.thread215, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fd = load i32, ptr %i.do, align 8, !tbaa !91 ; 3 uses
  %i.fe = load i32, ptr %i.dr, align 8, !tbaa !91
  %.not.i147 = icmp eq i32 %i.fd, %i.fe
  br i1 %.not.i147, label %BN_cmp.exit, label %BN_cmp.exit.thread

BN_cmp.exit:                                      ; preds = %bb.af
  %i.ff = load ptr, ptr %i.cz, align 8, !tbaa !92
  %i.fg = load i32, ptr %i.dp, align 8, !tbaa !93
  %i.fh = sext i32 %i.fg to i64
  %i.fi = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.fj = load i32, ptr %i.cj, align 8, !tbaa !93
  %i.fk = sext i32 %i.fj to i64
  %i.fl = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.ff, i64 noundef %i.fh, ptr noundef %i.fi, i64 noundef %i.fk) ; 2 uses
  %.not16.i = icmp eq i32 %i.fd, 0
  %5 = sub nsw i32 0, %i.fl
  %6 = select i1 %.not16.i, i32 %i.fl, i32 %5
  %i.fm = icmp eq i32 %6, 0
  br i1 %i.fm, label %.loopexit, label %BN_cmp.exit.thread

BN_cmp.exit.thread:                               ; preds = %BN_cmp.exit, %bb.af
  %i.fn = icmp eq i32 %i.fd, 0
  br i1 %i.fn, label %bb.ag, label %BN_is_one.exit161.thread

bb.ag:                                            ; preds = %BN_cmp.exit.thread
  %i.fo = load i32, ptr %i.dp, align 8, !tbaa !93 ; 4 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %BN_is_one.exit161.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fq = load ptr, ptr %i.cz, align 8, !tbaa !92 ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !80
  %i.fs = xor i64 %i.fr, 1                        ; 3 uses
  %i.ft = icmp sgt i32 %i.fo, 1
  br i1 %i.ft, label %.lr.ph.preheader.i.i154, label %BN_is_one.exit161

.lr.ph.preheader.i.i154:                          ; preds = %bb.ah
  %wide.trip.count.i.i155 = zext nneg i32 %i.fo to i64 ; 2 uses
  %i.fu = add nsw i64 %wide.trip.count.i.i155, -1 ; 2 uses
  %min.iters.check = icmp ult i32 %i.fo, 5
  br i1 %min.iters.check, label %.lr.ph.i.i156.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i154
  %n.vec = and i64 %i.fu, -4                      ; 3 uses
  %i.fv = or disjoint i64 %n.vec, 1
  %i.fw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.fs, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.fw, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi263 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %wide.load = load <2 x i64>, ptr %i.fy, align 8, !tbaa !80
  %wide.load264 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !80
  %i.ga = or <2 x i64> %wide.load, %vec.phi       ; 2 uses
  %i.gb = or <2 x i64> %wide.load264, %vec.phi263 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !1527

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.gb, %i.ga
  %i.gd = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.fu, %n.vec
  br i1 %cmp.n, label %BN_is_one.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %.lr.ph.preheader.i.i154, %middle.block
  %indvars.iv.i.i157.ph = phi i64 [ 1, %.lr.ph.preheader.i.i154 ], [ %i.fv, %middle.block ]
  %.01113.i.i158.ph = phi i64 [ %i.fs, %.lr.ph.preheader.i.i154 ], [ %i.gd, %middle.block ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader, %.lr.ph.i.i156
  %indvars.iv.i.i157 = phi i64 [ %indvars.iv.next.i.i159, %.lr.ph.i.i156 ], [ %indvars.iv.i.i157.ph, %.lr.ph.i.i156.preheader ] ; 2 uses
  %.01113.i.i158 = phi i64 [ %i.gg, %.lr.ph.i.i156 ], [ %.01113.i.i158.ph, %.lr.ph.i.i156.preheader ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i.i157
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !80
  %i.gg = or i64 %i.gf, %.01113.i.i158            ; 2 uses
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i157, 1 ; 2 uses
  %exitcond.not.i.i160 = icmp eq i64 %indvars.iv.next.i.i159, %wide.trip.count.i.i155
  br i1 %exitcond.not.i.i160, label %BN_is_one.exit161, label %.lr.ph.i.i156, !llvm.loop !1528

BN_is_one.exit161:                                ; preds = %.lr.ph.i.i156, %middle.block, %bb.ah
  %.012.in.in.i.i151 = phi i64 [ %i.fs, %bb.ah ], [ %i.gd, %middle.block ], [ %i.gg, %.lr.ph.i.i156 ]
  %.012.in.i.i152.not = icmp eq i64 %.012.in.in.i.i151, 0
  br i1 %.012.in.i.i152.not, label %.thread207, label %BN_is_one.exit161.thread

BN_is_one.exit161.thread:                         ; preds = %bb.ag, %BN_cmp.exit.thread, %BN_is_one.exit161
  %i.gh = add nuw nsw i32 %.0224, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, %indvars.iv234
  br i1 %exitcond.not, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !1529

.preheader._crit_edge:                            ; preds = %.preheader, %BN_is_one.exit161.thread
  %i.gi = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not129 = icmp eq ptr %i.gi, null
  br i1 %.not129, label %.thread215, label %bb.ai

bb.ai:                                            ; preds = %.preheader._crit_edge
  %i.gj = tail call i32 @BN_mod_mul(ptr noundef nonnull %i.cz, ptr noundef %i.da, ptr noundef %i.da, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not130 = icmp eq i32 %i.gj, 0
  br i1 %.not130, label %.thread215, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gk = tail call i32 @BN_is_one(ptr noundef nonnull %i.cz)
  %.not131 = icmp eq i32 %i.gk, 0
  br i1 %.not131, label %bb.ak, label %.thread207

bb.ak:                                            ; preds = %bb.aj
  %i.gl = tail call ptr @BN_copy(ptr noundef %i.da, ptr noundef nonnull %i.cz)
  %.not132 = icmp eq ptr %i.gl, null
  br i1 %.not132, label %.thread215, label %.thread207

.thread207:                                       ; preds = %BN_is_one.exit161, %bb.aj, %bb.ak
  %i.gm = tail call ptr @BN_copy(ptr noundef %i.db, ptr noundef %i.da)
  %.not133 = icmp eq ptr %i.gm, null
  br i1 %.not133, label %.thread215, label %bb.al

bb.al:                                            ; preds = %.thread207
  %i.gn = tail call i32 @BN_sub_word(ptr noundef %i.db, i64 noundef 1)
  %.not134 = icmp eq i32 %i.gn, 0
  br i1 %.not134, label %.thread215, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = tail call i32 @BN_gcd(ptr noundef %i.cy, ptr noundef %i.db, ptr noundef nonnull %1, ptr noundef nonnull %3)
  %.not135 = icmp eq i32 %i.go, 0
  br i1 %.not135, label %.thread215, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = tail call i32 @BN_cmp_word(ptr noundef %i.cy, i64 noundef 1)
  %.inv = icmp slt i32 %i.gp, 1
  %. = select i1 %.inv, i32 2, i32 1
  store i32 %., ptr %0, align 4, !tbaa !73
  br label %.thread215

.loopexit:                                        ; preds = %BN_cmp.exit, %BN_is_one.exit, %BN_is_one.exit.thread
  %i.gq = add nsw i32 %.0100226, -1               ; 2 uses
  br i1 %.not.i162, label %BN_GENCB_call.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.gr = load i8, ptr %4, align 8, !tbaa !128
  switch i8 %i.gr, label %.thread215 [
    i8 1, label %BN_GENCB_call.exit
    i8 2, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gs = load ptr, ptr %i.ds, align 8, !tbaa !76
  tail call void %i.gs(i32 noundef 1, i32 noundef %i.gq, ptr noundef nonnull %4) #46, !inline_history !132
  br label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit:                               ; preds = %bb.ao
  %i.gt = load ptr, ptr %i.ds, align 8, !tbaa !76
  %i.gu = tail call i32 %i.gt(i32 noundef 1, i32 noundef %i.gq, ptr noundef nonnull %4) #46, !inline_history !132
  %.not136 = icmp eq i32 %i.gu, 0
  br i1 %.not136, label %.thread215, label %BN_GENCB_call.exit.thread

BN_GENCB_call.exit.thread:                        ; preds = %.loopexit, %bb.ap, %BN_GENCB_call.exit
  %i.gv = add nuw i32 %.0100226, 1
  %exitcond236.not = icmp eq i32 %.0100226, %.0103
  br i1 %exitcond236.not, label %._crit_edge228, label %bb.w, !llvm.loop !1530

._crit_edge228:                                   ; preds = %BN_GENCB_call.exit.thread, %.preheader218
  store i32 0, ptr %0, align 4, !tbaa !73
  br label %.thread215

.thread215:                                       ; preds = %bb.ao, %BN_GENCB_call.exit, %bb.w, %BN_gcd.exit, %bb.aa, %bb.ae, %.lr.ph, %BN_gcd.exit.thread, %bb.al, %bb.am, %bb.ai, %.preheader._crit_edge, %bb.ak, %bb.an, %.thread207, %bb.z, %bb.v, %bb.u, %bb.s, %bb.t, %BN_CTX_start.exit, %bb.p, %bb.q, %._crit_edge228
  %.0106 = phi ptr [ null, %BN_CTX_start.exit ], [ null, %bb.s ], [ null, %bb.u ], [ null, %bb.v ], [ %i.dk, %._crit_edge228 ], [ null, %bb.p ], [ null, %bb.t ], [ null, %bb.q ], [ %i.dk, %bb.z ], [ %i.dk, %.thread207 ], [ %i.dk, %bb.an ], [ %i.dk, %bb.ak ], [ %i.dk, %.preheader._crit_edge ], [ %i.dk, %bb.al ], [ %i.dk, %bb.ae ], [ %i.dk, %BN_gcd.exit.thread ], [ %i.dk, %bb.ai ], [ %i.dk, %bb.am ], [ %i.dk, %.lr.ph ], [ %i.dk, %bb.aa ], [ %i.dk, %BN_gcd.exit ], [ %i.dk, %bb.w ], [ %i.dk, %BN_GENCB_call.exit ], [ %i.dk, %bb.ao ]
  %.1105 = phi i32 [ 0, %BN_CTX_start.exit ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %._crit_edge228 ], [ 0, %bb.p ], [ 0, %bb.t ], [ 0, %bb.q ], [ 1, %bb.z ], [ 0, %.thread207 ], [ 1, %bb.an ], [ 0, %bb.ak ], [ 0, %.preheader._crit_edge ], [ 0, %bb.al ], [ 0, %bb.ae ], [ 0, %BN_gcd.exit.thread ], [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %.lr.ph ], [ 0, %bb.aa ], [ 0, %BN_gcd.exit ], [ 0, %bb.w ], [ 0, %BN_GENCB_call.exit ], [ 0, %bb.ao ] ; 2 uses
  tail call void @BN_MONT_CTX_free(ptr noundef %.0106)
  %i.gw = load i8, ptr %i.bg, align 8, !tbaa !110
  %.not.i164 = icmp eq i8 %i.gw, 0
  br i1 %.not.i164, label %bb.aq, label %BN_CTX_end.exit

bb.aq:                                            ; preds = %.thread215
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !112
  %i.ha = add i64 %i.gz, -1                       ; 2 uses
  store i64 %i.ha, ptr %i.gy, align 8, !tbaa !112
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !109
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !80
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !111
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.aq, %.thread215, %BN_is_odd.exit.thread
  %.1102 = phi i32 [ 0, %BN_is_odd.exit.thread ], [ %.1105, %.thread215 ], [ %.1105, %bb.aq ]
  ret i32 %.1102
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_rand(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bn_wexpand.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, -1
  %i.b = add i32 %2, -2
  %or.cond3 = icmp ult i32 %i.b, -3
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.11, i32 noundef 25) #46
  br label %bn_wexpand.exit.thread

bb.d:                                             ; preds = %bb.b
  %or.cond5 = icmp ugt i32 %3, 1
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.11, i32 noundef 30) #46
  br label %bn_wexpand.exit.thread

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@EVP_shake128_init:bb.a
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 8), align 8, !tbaa !208
  store ptr @shake128_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 16), align 8, !tbaa !247
  store ptr @shake128_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 24), align 8, !tbaa !232
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 32), align 8, !tbaa !225
  store ptr @shake128_squeeze, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 56), align 8, !tbaa !230
  store ptr @shake128_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 48), align 8, !tbaa !223
  store i32 168, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 40), align 8, !tbaa !227
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake128_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @EVP_shake256() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_shake256_once, ptr noundef nonnull @EVP_shake256_init) #46
  ret ptr @EVP_shake256_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @EVP_shake256_init() #16 {
bb.a:
  store i32 980, ptr @EVP_shake256_storage, align 8, !tbaa !226
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 4), align 4, !tbaa !207
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 8), align 8, !tbaa !208
  store ptr @shake256_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 16), align 8, !tbaa !247
  store ptr @shake256_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 24), align 8, !tbaa !232
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 32), align 8, !tbaa !225
  store ptr @shake256_squeeze, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 56), align 8, !tbaa !230
  store ptr @shake256_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 48), align 8, !tbaa !223
  store i32 136, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 40), align 8, !tbaa !227
  store i32 400, ptr getelementptr inbounds nuw (i8, ptr @EVP_shake256_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define noundef nonnull ptr @EVP_md5_sha1() local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @EVP_md5_sha1_once, ptr noundef nonnull @EVP_md5_sha1_init) #46
  ret ptr @EVP_md5_sha1_storage
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @EVP_md5_sha1_init() #16 {
bb.a:
  store i32 114, ptr @EVP_md5_sha1_storage, align 8, !tbaa !226
  store i32 36, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 4), align 4, !tbaa !207
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 8), align 8, !tbaa !208
  store ptr @md5_sha1_init, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 16), align 8, !tbaa !247
  store ptr @md5_sha1_update, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 24), align 8, !tbaa !232
  store ptr @md5_sha1_final, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 32), align 8, !tbaa !225
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 48), i8 0, i64 16, i1 false)
  store i32 64, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 40), align 8, !tbaa !227
  store i32 188, ptr getelementptr inbounds nuw (i8, ptr @EVP_md5_sha1_storage, i64 44), align 4, !tbaa !224
  ret void
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @ECDH_compute_shared_secret(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.EC_JACOBIAN, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.21, i32 noundef 32) #46
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %3, align 8, !tbaa !264    ; 7 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !268
  %i.g = tail call i32 @EC_GROUP_cmp(ptr noundef %i.e, ptr noundef %i.f, ptr poison)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.21, i32 noundef 38) #46
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @EC_KEY_new_method(ptr noundef null) ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !264  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %EC_KEY_set_group.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.j, ptr noundef %i.e, ptr poison)
  %.not8.i = icmp eq i32 %i.k, 0
  br i1 %.not8.i, label %EC_KEY_set_group.exit.thread35, label %EC_KEY_set_group.exit.thread

EC_KEY_set_group.exit.thread:                     ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 130, ptr noundef nonnull @.str.28, i32 noundef 157) #46
  br label %bb.i

EC_KEY_set_group.exit:                            ; preds = %bb.f
  %i.l = tail call ptr @EC_GROUP_dup(ptr noundef %i.e) ; 2 uses
  store ptr %i.l, ptr %i.h, align 8, !tbaa !264
  %.not42 = icmp eq ptr %i.l, null
  br i1 %.not42, label %bb.i, label %EC_KEY_set_group.exit.thread35

EC_KEY_set_group.exit.thread35:                   ; preds = %bb.g, %EC_KEY_set_group.exit
  %i.m = tail call i32 @EC_KEY_set_public_key(ptr noundef nonnull %i.h, ptr noundef nonnull %2)
  %.not26 = icmp eq i32 %i.m, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %EC_KEY_set_group.exit.thread35
  %i.n = tail call i32 @EC_KEY_check_fips(ptr noundef nonnull %i.h)
  %.not27 = icmp eq i32 %i.n, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %EC_KEY_set_group.exit.thread, %bb.h, %EC_KEY_set_group.exit.thread35, %EC_KEY_set_group.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @.str.21, i32 noundef 59) #46
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !271
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !273
  call void %i.r(ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d) #46, !inline_history !274
  %i.s = call i32 @ec_GFp_simple_is_on_curve(ptr noundef nonnull %i.e, ptr noundef nonnull %4)
  %.not.i31 = icmp eq i32 %i.s, 0
  br i1 %.not.i31, label %ec_point_mul_scalar.exit.thread, label %ec_point_mul_scalar.exit

ec_point_mul_scalar.exit.thread:                  ; preds = %bb.j
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str.23, i32 noundef 914) #46
  br label %bb.k

ec_point_mul_scalar.exit:                         ; preds = %bb.j
  %i.t = load i64, ptr %1, align 8, !tbaa !80
  %i.u = call i32 @ec_get_x_coordinate_as_bytes(ptr noundef nonnull %i.e, ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.t, ptr noundef nonnull %4)
  %.not29 = icmp eq i32 %i.u, 0
  br i1 %.not29, label %bb.k, label %bb.m

bb.k:                                             ; preds = %ec_point_mul_scalar.exit.thread, %ec_point_mul_scalar.exit
  call void @ERR_put_error(i32 noundef 27, i32 noundef 0, i32 noundef 102, ptr noundef nonnull @.str.21, i32 noundef 67) #46
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 216) #46
  br label %bb.n

bb.m:                                             ; preds = %ec_point_mul_scalar.exit, %bb.k, %bb.i
  %.0.ph = phi i32 [ 1, %ec_point_mul_scalar.exit ], [ 0, %bb.k ], [ 0, %bb.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %4, i64 noundef 216) #46
  call void @EC_KEY_free(ptr noundef nonnull %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.d, %bb.m, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.0.ph, %bb.m ], [ 0, %bb.l ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @EC_KEY_get0_group(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_GROUP_cmp(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %BN_cmp.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.c = load i32, ptr %i.b, align 8, !tbaa !275  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.e = load i32, ptr %i.d, align 8, !tbaa !275
  %.not = icmp eq i32 %i.c, %i.e
  br i1 %.not, label %bb.c, label %BN_cmp.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not27 = icmp eq i32 %i.c, 0
  br i1 %.not27, label %bb.d, label %BN_cmp.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !271
  %i.g = load ptr, ptr %1, align 8, !tbaa !271
  %.not28 = icmp eq ptr %i.f, %i.g
  br i1 %.not28, label %bb.e, label %BN_cmp.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 532 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !276
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 532 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !276
  %.not29 = icmp eq i32 %i.i, %i.k
  br i1 %.not29, label %bb.f, label %BN_cmp.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %.not.i = icmp eq i32 %i.m, %i.o
  br i1 %.not.i, label %BN_cmp.exit, label %BN_cmp.exit.thread

BN_cmp.exit:                                      ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !93
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.x = load i32, ptr %i.w, align 8, !tbaa !93
  %i.y = sext i32 %i.x to i64
  %i.z = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.r, i64 noundef %i.u, ptr noundef %i.v, i64 noundef %i.y) ; 2 uses
  %.not16.i = icmp eq i32 %i.m, 0
  %3 = sub nsw i32 0, %i.z
  %4 = select i1 %.not16.i, i32 %i.z, i32 %3
  %.not30 = icmp eq i32 %4, 0
  br i1 %.not30, label %bb.g, label %BN_cmp.exit.thread

bb.g:                                             ; preds = %BN_cmp.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ac = shl nsw i64 %i.u, 3
  %i.ad = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) #46
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.h, label %BN_cmp.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ag = load i32, ptr %i.s, align 8, !tbaa !277
  %i.ah = sext i32 %i.ag to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, i64 noundef %i.ai) #46
  %.not40 = icmp eq i32 %i.aj, 0
  br i1 %.not40, label %bb.i, label %BN_cmp.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.h, align 4, !tbaa !276
  %.not33 = icmp eq i32 %i.ak, 0
  br i1 %.not33, label %BN_cmp.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.j, align 4, !tbaa !276
  %.not34 = icmp eq i32 %i.al, 0
  br i1 %.not34, label %BN_cmp.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ao = tail call i32 @BN_cmp(ptr noundef nonnull %i.am, ptr noundef nonnull %i.an)
  %.not35 = icmp eq i32 %i.ao, 0
  br i1 %.not35, label %bb.l, label %BN_cmp.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = tail call i32 @ec_GFp_simple_points_equal(ptr noundef nonnull %0, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq)
  %i.as = xor i32 %i.ar, 1
  br label %BN_cmp.exit.thread

BN_cmp.exit.thread:                               ; preds = %bb.f, %bb.d, %bb.e, %BN_cmp.exit, %bb.g, %bb.h, %bb.k, %bb.l, %bb.j, %bb.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %BN_cmp.exit ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.j ], [ 0, %bb.i ], [ 1, %bb.k ], [ %i.as, %bb.l ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @EC_KEY_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EC_KEY_new_method(ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_set_group(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.a, ptr noundef %1, ptr poison)
  %.not8 = icmp eq i32 %i.b, 0
  br i1 %.not8, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 130, ptr noundef nonnull @.str.28, i32 noundef 157) #46
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @EC_GROUP_dup(ptr noundef %1) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !264
  %i.d = icmp ne ptr %i.c, null
  %i.e = zext i1 %i.d to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.e, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @EC_KEY_set_public_key(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !264    ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str.28, i32 noundef 205) #46
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !268
  %i.d = tail call i32 @EC_GROUP_cmp(ptr noundef nonnull %i.a, ptr noundef %i.c, ptr poison)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.e, label %EC_POINT_is_at_infinity.exit.thread

EC_POINT_is_at_infinity.exit.thread:              ; preds = %bb.d
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.23, i32 noundef 602) #46
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.g = load i32, ptr %i.f, align 8, !tbaa !277  ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i.i.i, label %EC_POINT_is_at_infinity.exit.thread22

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %wide.trip.count.i.i.i = zext nneg i32 %i.g to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi30 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %wide.load = load <2 x i64>, ptr %i.i, align 8, !tbaa !80
  %wide.load31 = load <2 x i64>, ptr %i.j, align 8, !tbaa !80
  %i.k = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.l = or <2 x i64> %wide.load31, %vec.phi30    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !1660

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.l, %i.k
  %i.n = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %EC_POINT_is_at_infinity.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.067.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %.067.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !80
  %i.q = or i64 %i.p, %.067.i.i.i                 ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %EC_POINT_is_at_infinity.exit, label %.lr.ph.i.i.i, !llvm.loop !1661

EC_POINT_is_at_infinity.exit:                     ; preds = %.lr.ph.i.i.i, %middle.block
  %.lcssa = phi i64 [ %i.n, %middle.block ], [ %i.q, %.lr.ph.i.i.i ]
  %.not.i.i.not = icmp eq i64 %.lcssa, 0
  br i1 %.not.i.i.not, label %EC_POINT_is_at_infinity.exit.thread22, label %bb.g

EC_POINT_is_at_infinity.exit.thread22:            ; preds = %bb.e, %EC_POINT_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.28, i32 noundef 210) #46
  br label %bb.j

.split:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !278  ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.s, null
  br i1 %.not.i.i17, label %EC_POINT_free.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !268
  tail call void @EC_GROUP_free(ptr noundef %i.t)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.s) #46
  br label %EC_POINT_free.exit

bb.g:                                             ; preds = %EC_POINT_is_at_infinity.exit, %EC_POINT_is_at_infinity.exit.thread
  %i.u = load ptr, ptr %0, align 8, !tbaa !264
  %i.v = load ptr, ptr %1, align 8, !tbaa !268
  %i.w = tail call i32 @EC_GROUP_cmp(ptr noundef %i.u, ptr noundef %i.v, ptr poison)
  %.not16 = icmp eq i32 %i.w, 0
  br i1 %.not16, label %.split12, label %bb.i

.split12:                                         ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !278  ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.y, null
  br i1 %.not.i.i18, label %EC_POINT_free.exit19, label %bb.h

bb.h:                                             ; preds = %.split12
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !268
  tail call void @EC_GROUP_free(ptr noundef %i.z)
  tail call void @OPENSSL_free(ptr noundef nonnull %i.y) #46
  br label %EC_POINT_free.exit19

end_hunk_1
