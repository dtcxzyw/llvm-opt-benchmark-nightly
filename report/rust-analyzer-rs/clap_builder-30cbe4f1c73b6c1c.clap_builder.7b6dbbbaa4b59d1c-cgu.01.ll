Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/clap_builder-30cbe4f1c73b6c1c.clap_builder.7b6dbbbaa4b59d1c-cgu.01?download=true
inline.NumInlined: 450
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.fp = alloca [24 x i8], align 8               ; 4 uses
  %i.fq = alloca [24 x i8], align 8               ; 5 uses
  %i.fr = alloca [24 x i8], align 8               ; 4 uses
  %i.fs = alloca [72 x i8], align 8               ; 13 uses
  %i.ft = alloca [72 x i8], align 8               ; 17 uses
  %i.fu = alloca [40 x i8], align 8               ; 12 uses
  %i.fv = alloca [24 x i8], align 8               ; 4 uses
  %i.fw = alloca [16 x i8], align 8               ; 20 uses
  %i.fx = alloca [8 x i8], align 8                ; 12 uses
  %i.fy = alloca [24 x i8], align 8               ; 14 uses
  %i.fz = alloca [24 x i8], align 8               ; 39 uses
  %i.ga = alloca [8 x i8], align 8                ; 13 uses
  %i.gb = alloca [32 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  store i64 %3, ptr %i.ga, align 8, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz), !noalias !426
  store i64 -1, ptr %i.fz, align 8, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy), !noalias !426
  store i64 0, ptr %i.fy, align 8, !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !426
  store i64 1, ptr %i.fx, align 8, !noalias !426
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 17 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !423, !nonnull !4, !align !16, !noundef !4 ; 4 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 160
  %.val.i = load ptr, ptr %i.ge, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.gd, i64 168
  %.val230.i = load i64, ptr %i.gf, align 8, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val230.i
  %i.gh = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaB0tVqiIPBo_12clap_builder7mkeymap3KeyENCNvMs4_B1p_NtB1p_7MKeyMap4keys0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldRNtB1p_7KeyTypejjNCINvNvXs1_NtB8_6filterINtB40_6FilterppEB2D_5count8to_usizeB3y_NCNvMs_NtNtB1r_6parser6parserNtB4X_6Parser5parse0E0NCINvXsK_NtB2H_5accumjNtB5O_3Sum3sumIBO_BN_B3P_EE0E0EB1r_(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.gg, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.critedge223.i:                                   ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.invoke1770, %.invoke, %bb.xd, %bb.xa, %bb.uv, %bb.uw, %bb.pn, %bb.pz, %bb.qw, %.critedge.i46, %bb.rr, %bb.sj, %.thread.i, %bb.sm, %bb.sz, %bb.td, %bb.to, %bb.or, %bb.ny, %bb.lx, %.body.i155, %bb.bh, %bb.ca, %bb.xm, %.body23, %.thread442, %.critedge228.i, %bb.lh, %bb.lg, %bb.lf, %bb.le, %.thread379, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %.body180, %.body274
  %.pn218.i = phi { ptr, i32 } [ %.pn181.i, %bb.gi ], [ %.pn212.i, %.critedge228.i ], [ %.pn208.i, %.thread442 ], [ %.pn192.i.ph, %bb.xm ], [ %i.ayj, %bb.xd ], [ %eh.lpad-body24, %.body23 ], [ %eh.lpad-body275, %.body274 ], [ %.pn57.i, %bb.pz ], [ %i.auv, %bb.uw ], [ %.pn181.i, %.body180 ], [ %.pn68.pn5.i, %.thread.i ], [ %.pn181.i, %bb.gh ], [ %i.anv, %bb.pn ], [ %i.rg, %bb.ca ], [ %.pn75.i, %bb.sm ], [ %.pn181.i, %bb.gj ], [ %.pn181.i, %.invoke1770 ], [ %.pn181.i, %bb.gk ], [ %.pn170.pn.i, %bb.le ], [ %.pn79.i, %bb.td ], [ %.pn170.pn.i, %bb.lf ], [ %.pn170.pn.i, %.thread379 ], [ %i.arp, %bb.sj ], [ %.pn170.pn.i, %bb.lg ], [ %.pn170.pn.i, %.invoke ], [ %.pn170.pn.i, %bb.lh ], [ %.pn.pn.i, %bb.bh ], [ %i.ayh, %bb.xa ], [ %i.auv, %bb.uv ], [ %i.ast, %bb.to ], [ %i.alj, %bb.or ], [ %i.akd, %bb.ny ], [ %i.afb, %bb.lx ], [ %.pn.i156, %.body.i155 ], [ %.pn64.i, %.critedge.i46 ], [ %i.asg, %bb.sz ], [ %i.aqw, %bb.rr ], [ %i.aqd, %bb.qw ], [ %lpad.loopexit.split-lp2231, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fz) #17
          to label %common.resume unwind label %bb.dz, !inline_history !188

bb.b:                                             ; preds = %bb.a
  %i.gi = icmp samesign ule i64 %i.gh, %.val230.i
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr i8, ptr %i.gd, i64 136
  %.val231.i = load ptr, ptr %i.gj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gd, i64 144
  %.val232.i = load i64, ptr %i.gk, align 8, !noundef !4 ; 2 uses
  %.idx2160 = mul nuw nsw i64 %.val232.i, 600
  %i.gl = getelementptr inbounds nuw i8, ptr %.val231.i, i64 %.idx2160
  %.not2.not.not.i.not.not.not2150.not = icmp eq i64 %.val232.i, 0
  br i1 %.not2.not.not.i.not.not.not2150.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph2153

.lr.ph2153:                                       ; preds = %.lr.ph2153, %bb.b
  %i.gm = phi ptr [ %i.gp, %.lr.ph2153 ], [ %.val231.i, %bb.b ] ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 592
  %.val.i286 = load i32, ptr %i.gn, align 8, !noalias !427, !noundef !4
  %i.go = and i32 %.val.i286, 256
  %.not.i287 = icmp ne i32 %i.go, 0               ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 600 ; 2 uses
  %.not2.not.not.i.not.not.not.not = icmp eq ptr %i.gp, %i.gl
  %or.cond2779 = select i1 %.not.i287, i1 true, i1 %.not2.not.not.i.not.not.not.not
  br i1 %or.cond2779, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph2153

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit: ; preds = %.lr.ph2153, %bb.b
  %.not2.not.not.i.not.not.not.lcssa = phi i1 [ false, %bb.b ], [ %.not.i287, %.lr.ph2153 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val234.i957 = load i64, ptr %i.gr, align 8, !alias.scope !425, !noundef !4
  %i.gs = icmp ult i64 %3, %.val234.i957
  br i1 %i.gs, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 14 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %.sroa.018.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.419.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.hl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.428.sroa.5.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 9 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.hz = getelementptr inbounds nuw i8, ptr %i.fd, i64 40 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.fd, i64 48 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.ie = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.if = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.419.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 5 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.is = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %.sroa.4127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %.sroa.4140.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.5141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  br label %bb.c

.thread:                                          ; preds = %.backedge, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %.sroa.0.0317.lcssa = phi i8 [ 0, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %.sroa.0.0317.be, %.backedge ]
  %.lcssa805 = phi i64 [ %3, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %i.afk, %.backedge ]
  %i.jb = call i64 @llvm.uadd.sat.i64(i64 %.lcssa805, i64 1)
  store i64 %i.jb, ptr %i.ga, align 8, !alias.scope !428
  br label %bb.kf

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.jc = phi i64 [ %3, %.lr.ph ], [ %i.afk, %.backedge ] ; 2 uses
  %i.jd = phi i64 [ 1, %.lr.ph ], [ %.be590, %.backedge ] ; 13 uses
  %.sroa.013.0.i960 = phi i8 [ 0, %.lr.ph ], [ %.sroa.013.0.i.be, %.backedge ] ; 2 uses
  %i.je = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 6 uses
  %.sroa.0.0317958 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.0317.be, %.backedge ] ; 12 uses
  %.val233.i961 = load ptr, ptr %i.gq, align 8, !alias.scope !425, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.jf = getelementptr inbounds nuw [24 x i8], ptr %.val233.i961, i64 %i.jc ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !428, !nonnull !4, !noundef !4 ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !noalias !428, !noundef !4 ; 16 uses
  %i.jk = add nuw i64 %i.jc, 1
  store i64 %i.jk, ptr %i.ga, align 8, !alias.scope !428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !426
  store ptr %i.jh, ptr %i.fw, align 8, !noalias !426
  store i64 %i.jj, ptr %i.gt, align 8, !noalias !426
  %i.jl = trunc nuw i8 %.sroa.013.0.i960 to i1    ; 5 uses
  br i1 %i.jl, label %.thread350, label %bb.d

.thread350:                                       ; preds = %bb.ln, %bb.ed, %bb.c
  %.sroa.0.2 = phi i8 [ %.sroa.0.0317958, %bb.c ], [ %.sroa.0.1, %bb.ed ], [ %.sroa.0.0317958, %bb.ln ] ; 2 uses
  %i.jm = add i64 %i.jd, 1                        ; 2 uses
  %i.jn = icmp eq i64 %i.jm, %i.gh                ; 2 uses
  %.pre1337 = load ptr, ptr %i.gc, align 8, !alias.scope !423 ; 13 uses
  br i1 %i.jn, label %bb.mk, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.jo = load ptr, ptr %i.gc, align 8, !alias.scope !423, !nonnull !4, !align !16, !noundef !4 ; 22 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 676    ; 4 uses
  %i.jq = getelementptr i8, ptr %i.jo, i64 680    ; 2 uses
  %i.jr = load <2 x i32>, ptr %i.jp, align 4
  %.fr2165 = freeze <2 x i32> %i.jr
  %4 = and <2 x i32> %.fr2165, splat (i32 16384)
  %.scalar = bitcast <2 x i32> %4 to i64
  %.sroa.0.0.i281 = icmp ne i64 %.scalar, 0
  %i.js = icmp eq i64 %i.je, 0
  %or.cond220.i = select i1 %.sroa.0.0.i281, i1 true, i1 %i.js
  br i1 %or.cond220.i, label %bb.g, label %bb.f

default.unreachable:                              ; preds = %bb.go, %bb.ae, %bb.ac
  unreachable

bb.e:                                             ; preds = %bb.jr, %bb.cw
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.jt = icmp eq i64 %i.jj, 2
  br i1 %i.jt, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !426
  invoke void @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fw)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.h:                                             ; preds = %bb.g
  %i.ju = trunc nuw i8 %.sroa.0.0317958 to i1
  %i.jv = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.fv, i1 noundef zeroext %i.ju)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.jw = extractvalue { ptr, i64 } %i.jv, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !426
  %.not164.i = icmp eq ptr %i.jw, null
  br i1 %.not164.i, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jx = extractvalue { ptr, i64 } %i.jv, 1      ; 7 uses
  %i.jy = icmp eq i64 %i.jx, 4
  br i1 %i.jy, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.jz = load i32, ptr %i.jw, align 1
  %i.ka = icmp ne i32 %i.jz, 1886152040
  %i.kb = zext i1 %i.ka to i32
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !426
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dl, i64 noundef %i.jx, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.m:                                             ; preds = %bb.k
  %i.kd = load <2 x i32>, ptr %i.jp, align 4
  %.fr2166 = freeze <2 x i32> %i.kd
  %5 = and <2 x i32> %.fr2166, splat (i32 1048576)
  %.scalar2167 = bitcast <2 x i32> %5 to i64
  %.sroa.0.0.i279.not = icmp eq i64 %.scalar2167, 0
  br i1 %.sroa.0.0.i279.not, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ke = invoke { ptr, ptr } @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ga)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.kf = extractvalue { ptr, ptr } %i.ke, 0
  %i.kg = extractvalue { ptr, ptr } %i.ke, 1
  %i.kh = invoke fastcc noundef nonnull align 8 ptr @_RINvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENCNvMCs74Z8AuVjqbo_8clap_lexNtB3r_7RawArgs9remaining0EEB9_(ptr nonnull %i.jo, ptr noundef nonnull %i.kf, ptr noundef %i.kg)
          to label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser15match_arg_error.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.p:                                             ; preds = %bb.l
  %i.ki = load i64, ptr %i.dl, align 8, !range !7, !noalias !426, !noundef !4
  %i.kj = trunc nuw i64 %i.ki to i1
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !range !10, !noalias !426, !noundef !4 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  br i1 %i.kj, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.kn = load i64, ptr %i.km, align 8, !noalias !426
  br label %.invoke1771

.invoke1771:                                      ; preds = %bb.cp, %bb.cl, %bb.cg, %bb.vu, %bb.on, %bb.lt, %bb.q
  %i.ko = phi i64 [ %i.kl, %bb.q ], [ %i.aet, %bb.lt ], [ %i.alb, %bb.on ], [ %i.awu, %bb.vu ], [ %i.rl, %bb.cg ], [ %i.rv, %bb.cl ], [ %i.sb, %bb.cp ]
  %i.kp = phi i64 [ %i.kn, %bb.q ], [ %i.aeu, %bb.lt ], [ %i.alc, %bb.on ], [ %i.aww, %bb.vu ], [ %i.rn, %bb.cg ], [ %i.rw, %bb.cl ], [ %i.sc, %bb.cp ]
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ko, i64 %i.kp) #20
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

.cont:                                            ; preds = %.invoke1771
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.kq = load ptr, ptr %i.km, align 8, !noalias !426, !nonnull !4, !noundef !4 ; 3 uses
  %i.kr = icmp ule i64 %i.jx, %i.kl
  call void @llvm.assume(i1 %i.kr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !426
  %.not187.i = icmp eq i64 %i.jx, 0
  br i1 %.not187.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.w, %bb.r
  %i.ks = load i64, ptr %i.fz, align 8, !range !6, !alias.scope !429, !noundef !4
  %i.kt = icmp eq i64 %i.ks, -1
  br i1 %i.kt, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i273 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %.body274 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i273: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277 unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kq, ptr nonnull align 1 %i.jw, i64 %i.jx, i1 false)
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i273
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body274

.body274:                                         ; preds = %bb.u, %bb.x
  %eh.lpad-body275 = phi { ptr, i32 } [ %i.kw, %bb.x ], [ %i.ku, %bb.u ]
  store i64 %i.kl, ptr %i.fz, align 8, !noalias !426
  %.sroa.5117.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.kq, ptr %.sroa.5117.0..sroa_idx.i, align 8, !noalias !426
  %.sroa.6120.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.jx, ptr %.sroa.6120.0..sroa_idx.i, align 8, !noalias !426
  br label %.critedge223.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277: ; preds = %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i273
  store i64 %i.kl, ptr %i.fz, align 8, !noalias !426
  %.sroa.5117.0..sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.kq, ptr %.sroa.5117.0..sroa_idx118.i, align 8, !noalias !426
  %.sroa.6120.0..sroa_idx121.i = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.jx, ptr %.sroa.6120.0..sroa_idx121.i, align 8, !noalias !426
  br label %bb.y

bb.y:                                             ; preds = %bb.ke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit224, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277
  %.sroa.0.4 = phi i8 [ %.sroa.0.8372, %bb.ke ], [ %.sroa.0.9328, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit224 ], [ %.sroa.0.0317958, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277 ]
  %.sroa.039.0.i = phi i1 [ %i.aci, %bb.ke ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit224 ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsaB0tVqiIPBo_12clap_builder.exit277 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !426
  br label %bb.kf

bb.z:                                             ; preds = %.loopexit529, %bb.uj, %bb.tw, %bb.np, %bb.jt, %bb.di, %bb.dd
  unreachable

bb.aa:                                            ; preds = %bb.f
  %i.kx = load i16, ptr %i.jh, align 1
  %i.ky = icmp ne i16 %i.kx, 11565
  %i.kz = zext i1 %i.ky to i32
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !426
  invoke void @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg7to_long(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.fu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fw)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.ac:                                            ; preds = %bb.aa
  switch i64 %i.je, label %default.unreachable [
    i64 1, label %bb.lk
    i64 2, label %bb.ll
    i64 0, label %bb.md
  ]

bb.ad:                                            ; preds = %bb.ab
  %i.lb = load i64, ptr %i.fu, align 8, !range !15, !noalias !426, !noundef !4 ; 2 uses
  %.not165.i = icmp eq i64 %i.lb, 2
  br i1 %.not165.i, label %bb.ct, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !426 ; 15 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !426 ; 19 uses
  %i.lc = load ptr, ptr %i.gu, align 8, !noalias !426, !noundef !4 ; 4 uses
  %i.ld = load i64, ptr %i.gv, align 8, !noalias !426 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.jd, ptr %i.q, align 8, !noalias !432
  switch i64 %i.je, label %default.unreachable [
    i64 1, label %bb.af
    i64 2, label %bb.ag
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.le = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7CommandINtNtNtCshzWfHUSfYae_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %.noexc244 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc244:                                        ; preds = %bb.af
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 592
  %i.lg = load i32, ptr %i.lf, align 8, !noalias !433, !noundef !4
  %i.lh = and i32 %i.lg, 32
  %.not71.i = icmp eq i32 %i.lh, 0
  br i1 %.not71.i, label %bb.ah, label %.thread326

bb.ag:                                            ; preds = %bb.ae
  %i.li = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7CommandINtNtNtCshzWfHUSfYae_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.jo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7)
          to label %.noexc245 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc245:                                        ; preds = %bb.ag
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 592
  %i.lk = load i32, ptr %i.lj, align 8, !noalias !433, !noundef !4
  %i.ll = and i32 %i.lk, 32
  %.not.i243 = icmp eq i32 %i.ll, 0
  br i1 %.not.i243, label %bb.ah, label %.thread326

bb.ah:                                            ; preds = %.noexc245, %.noexc244, %bb.ae
  %i.lm = trunc nuw i64 %i.lb to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br i1 %i.lm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !432
  invoke void @_RNvMNtCsbSS6DM8SDEO_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.ai
  %i.ln = load i64, ptr %i.p, align 8, !range !6, !noalias !432, !noundef !4 ; 2 uses
  %.not88.i = icmp eq i64 %i.ln, -1
  %i.lo = load ptr, ptr %i.hp, align 8, !noalias !432 ; 2 uses
  %i.lp = load i64, ptr %i.hq, align 8, !noalias !432 ; 6 uses
  br i1 %.not88.i, label %bb.co, label %bb.cs

bb.aj:                                            ; preds = %bb.ah
  %i.lq = getelementptr inbounds nuw i8, ptr %i.jo, i64 128 ; 2 uses
  %i.lr = invoke noundef align 8 ptr @_RINvMs4_NtCsaB0tVqiIPBo_12clap_builder7mkeymapNtB6_7MKeyMap3geteEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc247:                                        ; preds = %bb.aj
  %.not72.i225 = icmp eq ptr %i.lr, null
  br i1 %.not72.i225, label %bb.ak, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTReRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i

bb.ak:                                            ; preds = %.noexc247
  %i.ls = load i32, ptr %i.jp, align 4, !noalias !433, !noundef !4
  %i.lt = and i32 %i.ls, 128
  %.not73.i = icmp eq i32 %i.lt, 0
  br i1 %.not73.i, label %bb.al, label %bb.am

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTReRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i: ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, %.loopexit.i, %.noexc247
  %.sroa.9.0.i = phi ptr [ %i.lr, %.noexc247 ], [ %i.me, %.loopexit.i ], [ %i.me, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.9.0.i, i64 16
  %.sroa.048.0.copyload.i = load i64, ptr %i.lu, align 8, !noalias !433
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %.sroa.013.0.i.be = phi i8 [ %spec.select229.i, %bb.oj ], [ 0, %bb.mc ], [ 1, %bb.mj ], [ 0, %bb.kj ], [ 0, %bb.dk ]
  %.be590 = phi i64 [ %i.akw, %bb.oj ], [ %i.jd, %bb.mc ], [ %i.afx, %bb.mj ], [ %i.jd, %bb.kj ], [ %i.jd, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !426
  %.val234.i = load i64, ptr %i.gr, align 8, !alias.scope !425, !noundef !4
  %i.afk = load i64, ptr %i.ga, align 8, !alias.scope !501, !noundef !4 ; 3 uses
  %i.afl = icmp ult i64 %i.afk, %.val234.i
  br i1 %i.afl, label %bb.c, label %.thread

bb.md:                                            ; preds = %bb.ac, %bb.lm, %bb.ln
  %i.afm = getelementptr inbounds nuw i8, ptr %i.jo, i64 128
  %i.afn = invoke noundef align 8 ptr @_RINvMs4_NtCsaB0tVqiIPBo_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.afm, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fx)
          to label %bb.me unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 3 uses

bb.me:                                            ; preds = %bb.md
  %.not183.i = icmp eq ptr %i.afn, null
  br i1 %.not183.i, label %bb.mj, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.afo = getelementptr i8, ptr %i.afn, i64 568
  %.val263.i = load ptr, ptr %i.afo, align 8, !noundef !4 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afn, i64 576
  %.val264.i = load i64, ptr %i.afp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !502)
  %.not.i.i125 = icmp ne ptr %.val263.i, null
  %i.afq = icmp eq i64 %.val264.i, 2
  %or.cond.i.i126 = select i1 %.not.i.i125, i1 %i.afq, i1 false
  br i1 %or.cond.i.i126, label %bb.mg, label %.thread406

bb.mg:                                            ; preds = %bb.mf
  %i.afr = load i16, ptr %i.jh, align 1
  %i.afs = load i16, ptr %.val263.i, align 1
  %i.aft = icmp ne i16 %i.afr, %i.afs
  %i.afu = zext i1 %i.aft to i32
  %i.afv = icmp eq i32 %i.afu, 0
  br i1 %i.afv, label %bb.mh, label %.thread406

bb.mh:                                            ; preds = %bb.mg
  store i64 -9223372036854775806, ptr %i.bg, align 8, !alias.scope !502
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bg)
          to label %bb.mi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread406:                                       ; preds = %bb.mf, %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.afw = add i64 %i.jd, 1                       ; 2 uses
  store i64 %i.afw, ptr %i.fx, align 8, !noalias !426
  br label %bb.mj

bb.mj:                                            ; preds = %.thread406, %bb.mi, %bb.me
  %i.afx = phi i64 [ %i.afw, %bb.mi ], [ %i.jd, %bb.me ], [ %i.jd, %.thread406 ]
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14start_trailing(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.mk:                                            ; preds = %.thread350
  %i.afy = getelementptr i8, ptr %.pre1337, i64 136
  %.val269.i = load ptr, ptr %i.afy, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.afz = getelementptr i8, ptr %.pre1337, i64 144
  %.val270.i = load i64, ptr %i.afz, align 8, !noundef !4 ; 6 uses
  %.idx = mul nuw nsw i64 %.val270.i, 600
  %i.aga = getelementptr inbounds nuw i8, ptr %.val269.i, i64 %.idx
  %.not14.i = icmp eq i64 %.val270.i, 0
  br i1 %.not14.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i120

.lr.ph.i120:                                      ; preds = %bb.mk, %.backedge.i
  %i.agb = phi ptr [ %i.agc, %.backedge.i ], [ %.val269.i, %bb.mk ] ; 9 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 600 ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agb, i64 552
  %i.age = load ptr, ptr %i.agd, align 8, !alias.scope !503, !noalias !504, !noundef !4
  %.not.i.i.i121 = icmp eq ptr %i.age, null
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 584
  %i.agg = load i32, ptr %i.agf, align 8, !range !5, !alias.scope !503, !noalias !504
  %.not1.i.i.i122 = icmp eq i32 %i.agg, -1
  %or.cond.i.i123 = select i1 %.not.i.i.i121, i1 %.not1.i.i.i122, i1 false
  br i1 %or.cond.i.i123, label %bb.ml, label %.backedge.i

bb.ml:                                            ; preds = %.lr.ph.i120
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 16
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.agh, align 8, !alias.scope !505, !noalias !504
  %i.agi = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i to i1
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 32
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !505, !noalias !504
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.agb, i64 24
  %.sroa.45.0.copyload.i.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !505, !noalias !504 ; 2 uses
  %i.agj = icmp ne i64 %.sroa.45.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i
  %i.agk = icmp ugt i64 %.sroa.45.0.copyload.i.i.i.i, 1
  %i.agl = or i1 %i.agj, %i.agk
  %brmerge.i.i.i.i = select i1 %i.agi, i1 %i.agl, i1 false
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agb, i64 596
  %i.agn = load i8, ptr %i.agm, align 4, !range !22, !alias.scope !505, !noalias !504
  %i.ago = icmp eq i8 %i.agn, 1
  %or.cond.i.i.i.i = select i1 %brmerge.i.i.i.i, i1 true, i1 %i.ago
  br i1 %or.cond.i.i.i.i, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.ml
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agb, i64 40
  %i.agq = load i64, ptr %i.agp, align 8, !range !7, !alias.scope !505, !noalias !504, !noundef !4
  %i.agr = trunc nuw i64 %i.agq to i1
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agb, i64 48
  %i.agt = load i64, ptr %i.ags, align 8, !alias.scope !505, !noalias !504
  %.sroa.01.0.i.i.i.i = select i1 %i.agr, i64 %i.agt, i64 0
  %.not.i124 = icmp eq i64 %i.gh, %.sroa.01.0.i.i.i.i
  br i1 %.not.i124, label %.backedge.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.split.i
  %xtraiter = and i64 %.val270.i, 1
  %i.agu = icmp eq i64 %.val270.i, 1
  br i1 %i.agu, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.val270.i, -2
  br label %.preheader

.backedge.i:                                      ; preds = %.split.i, %bb.ml, %.lr.ph.i120
  %.not15.i = icmp eq ptr %i.agc, %i.aga
  br i1 %.not15.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i120

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ahg, %.preheader ] ; 3 uses
  %.sroa.02.0.i113 = phi ptr [ null, %.preheader.preheader.new ], [ %spec.select.i.i.1, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.agv = getelementptr inbounds nuw [600 x i8], ptr %.val269.i, i64 %.sroa.04.0.i ; 3 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agv, i64 552
  %i.agx = load ptr, ptr %i.agw, align 8, !alias.scope !506, !noundef !4
  %.not.i.i.i114 = icmp eq ptr %i.agx, null
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 584
  %i.agz = load i32, ptr %i.agy, align 8, !range !5, !alias.scope !506
  %.not1.i.i.i115 = icmp eq i32 %i.agz, -1
  %or.cond.i.i116 = select i1 %.not.i.i.i114, i1 %.not1.i.i.i115, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i116, ptr %i.agv, ptr %.sroa.02.0.i113
  %i.aha = getelementptr inbounds nuw [600 x i8], ptr %.val269.i, i64 %.sroa.04.0.i ; 3 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 600
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 1152
  %i.ahd = load ptr, ptr %i.ahc, align 8, !alias.scope !506, !noundef !4
  %.not.i.i.i114.1 = icmp eq ptr %i.ahd, null
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.aha, i64 1184
  %i.ahf = load i32, ptr %i.ahe, align 8, !range !5, !alias.scope !506
  %.not1.i.i.i115.1 = icmp eq i32 %i.ahf, -1
  %or.cond.i.i116.1 = select i1 %.not.i.i.i114.1, i1 %.not1.i.i.i115.1, i1 false
  %spec.select.i.i.1 = select i1 %or.cond.i.i116.1, ptr %i.ahb, ptr %spec.select.i.i ; 3 uses
  %i.ahg = add nuw i64 %.sroa.04.0.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ahg, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %.sroa.02.0.i113.epil.init = phi ptr [ null, %.preheader.preheader ], [ %spec.select.i.i.1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %lcmp.mod2505 = trunc i64 %.val270.i to i1
  call void @llvm.assume(i1 %lcmp.mod2505)
  %i.ahh = getelementptr inbounds nuw [600 x i8], ptr %.val269.i, i64 %.sroa.04.0.i.epil.init ; 3 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 552
  %i.ahj = load ptr, ptr %i.ahi, align 8, !alias.scope !506, !noundef !4
  %.not.i.i.i114.epil = icmp eq ptr %i.ahj, null
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahh, i64 584
  %i.ahl = load i32, ptr %i.ahk, align 8, !range !5, !alias.scope !506
  %.not1.i.i.i115.epil = icmp eq i32 %i.ahl, -1
  %or.cond.i.i116.epil = select i1 %.not.i.i.i114.epil, i1 %.not1.i.i.i115.epil, i1 false
  %spec.select.i.i.epil = select i1 %or.cond.i.i116.epil, ptr %i.ahh, ptr %.sroa.02.0.i113.epil.init
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.epil.preheader
  %spec.select.i.i.lcssa = phi ptr [ %spec.select.i.i.1, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ], [ %spec.select.i.i.epil, %.preheader.epil.preheader ] ; 2 uses
  %.not194.i = icmp eq ptr %spec.select.i.i.lcssa, null
  br i1 %.not194.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %bb.mm

bb.mm:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit
  %i.ahm = getelementptr i8, ptr %spec.select.i.i.lcssa, i64 592
  %.val271.i = load i32, ptr %i.ahm, align 8, !noundef !4
  %i.ahn = and i32 %.val271.i, 256
  %.not.i112 = icmp ne i32 %i.ahn, 0
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread: ; preds = %.backedge.i, %.thread350, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, %bb.mm, %bb.mk
  %.sroa.048.0.i = phi i1 [ true, %.thread350 ], [ %.not.i112, %bb.mm ], [ true, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit ], [ true, %bb.mk ], [ true, %.backedge.i ] ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.pre1337, i64 128 ; 2 uses
  %i.ahp = invoke noundef align 8 ptr @_RINvMs4_NtCsaB0tVqiIPBo_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aho, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fx)
          to label %bb.mn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 2 uses

bb.mn:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread
  %.not195.i = icmp eq ptr %i.ahp, null
  br i1 %.not195.i, label %bb.mp, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 568
  %.val272.i = load ptr, ptr %i.ahq, align 8, !noundef !4
  %.not.i111 = icmp ne ptr %.val272.i, null
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mn, %bb.mo
  %.sroa.053.0.i = phi i1 [ false, %bb.mn ], [ %.not.i111, %bb.mo ] ; 2 uses
  %i.ahr = getelementptr i8, ptr %.pre1337, i64 676
  %i.ahs = load <2 x i32>, ptr %i.ahr, align 4
  %.fr2168 = freeze <2 x i32> %i.ahs
  %6 = and <2 x i32> %.fr2168, splat (i32 16)
  %.scalar2169 = bitcast <2 x i32> %6 to i64
  %.sroa.0.0.i110 = icmp ne i64 %.scalar2169, 0   ; 2 uses
  %brmerge.not.i = and i1 %i.jn, %.sroa.0.0.i110
  br i1 %brmerge.not.i, label %bb.mr, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %brmerge226.i = or i1 %.sroa.048.0.i, %.sroa.053.0.i
  br i1 %brmerge226.i, label %bb.ms, label %bb.mt

bb.mr:                                            ; preds = %bb.mp
  %or.cond.not.i = and i1 %.sroa.048.0.i, %i.jl
  %brmerge.i = or i1 %or.cond.not.i, %.sroa.053.0.i
  br i1 %brmerge.i, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  br i1 %i.jl, label %bb.ne, label %bb.nf

bb.mt:                                            ; preds = %bb.mr, %bb.mq
  %i.aht = invoke { ptr, i64 } @_RNvMCs74Z8AuVjqbo_8clap_lexNtB2_7RawArgs4peek(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ga)
          to label %bb.mu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 2 uses

bb.mu:                                            ; preds = %bb.mt
  %i.ahu = extractvalue { ptr, i64 } %i.aht, 0    ; 2 uses
  %.not.i = icmp eq ptr %i.ahu, null
  br i1 %.not.i, label %bb.nd, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.ahv = extractvalue { ptr, i64 } %i.aht, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !426
  store ptr %i.ahu, ptr %i.eo, align 8, !noalias !426
  store i64 %i.ahv, ptr %i.iw, align 8, !noalias !426
  %i.ahw = getelementptr i8, ptr %.pre1337, i64 136
  %.val265.i = load ptr, ptr %i.ahw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahx = getelementptr i8, ptr %.pre1337, i64 144
  %.val266.i = load i64, ptr %i.ahx, align 8, !noundef !4 ; 2 uses
  %.idx511 = mul nuw nsw i64 %.val266.i, 600
  %i.ahy = getelementptr inbounds nuw i8, ptr %.val265.i, i64 %.idx511
  %i.ahz = icmp eq i64 %.val266.i, 0
  br i1 %i.ahz, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.mv, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i
  %i.aia = phi ptr [ %i.aib, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i ], [ %.val265.i, %bb.mv ] ; 6 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 600 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aia, i64 552
  %i.aid = load ptr, ptr %i.aic, align 8, !alias.scope !507, !noalias !508, !noundef !4
  %.not.i.i.i107 = icmp eq ptr %i.aid, null
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aia, i64 584
  %i.aif = load i32, ptr %i.aie, align 8, !range !5, !alias.scope !507, !noalias !508
  %.not1.i.i.i = icmp eq i32 %i.aif, -1
  %or.cond.i.i = select i1 %.not.i.i.i107, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.mw, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

bb.mw:                                            ; preds = %.lr.ph.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aia, i64 40
  %i.aih = load i64, ptr %i.aig, align 8, !range !7, !alias.scope !509, !noalias !508, !noundef !4
  %i.aii = trunc nuw i64 %i.aih to i1
  br i1 %i.aii, label %_RNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i: ; preds = %bb.mw
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aia, i64 48
  %i.aik = load i64, ptr %i.aij, align 8, !alias.scope !509, !noalias !508
  %.fr.i.i.i = freeze i64 %i.aik
  %i.ail = icmp eq i64 %.fr.i.i.i, %i.jd
  br i1 %i.ail, label %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i: ; preds = %_RNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, %bb.mw, %.lr.ph.i
  %i.aim = icmp eq ptr %i.aib, %i.ahy
  br i1 %i.aim, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415, label %.lr.ph.i

_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit: ; preds = %_RNCNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aia, i64 536 ; 2 uses
  %i.aio = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7CommandINtNtNtCshzWfHUSfYae_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.pre1337, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ain, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aio, i64 592
  %i.aiq = load i32, ptr %i.aip, align 8, !noalias !510, !noundef !4
  %i.air = and i32 %i.aiq, 32
  %.not.i100 = icmp eq i32 %i.air, 0
  br i1 %.not.i100, label %bb.mx, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

bb.mx:                                            ; preds = %.noexc102
  %i.ais = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7CommandINtNtNtCshzWfHUSfYae_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %.pre1337, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ain, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %bb.mx
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 592
  %i.aiu = load i32, ptr %i.ait, align 8, !noalias !510, !noundef !4
  %i.aiv = and i32 %i.aiu, 64
  %.not1.i = icmp eq i32 %i.aiv, 0
  br i1 %.not1.i, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %.noexc103
  %i.aiw = invoke noundef zeroext i1 @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %bb.my
  br i1 %i.aiw, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread, label %bb.mz

bb.mz:                                            ; preds = %.noexc104, %.noexc103
  %i.aix = invoke noundef zeroext i1 @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %bb.mz
  br i1 %i.aix, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415, label %bb.na

bb.na:                                            ; preds = %.noexc105
  %i.aiy = invoke noundef zeroext i1 @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i, %.noexc105, %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit, %bb.mv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !426
  br label %bb.nd

_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit: ; preds = %bb.na
  br i1 %i.aiy, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread: ; preds = %.noexc102, %.noexc104, %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !426
  invoke void @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eo)
          to label %bb.nb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.nb:                                            ; preds = %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread
  %i.aiz = trunc nuw i8 %.sroa.0.2 to i1
  %i.aja = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.en, i1 noundef zeroext %i.aiz)
          to label %bb.nc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.nc:                                            ; preds = %bb.nb
  %i.ajb = extractvalue { ptr, i64 } %i.aja, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !426
  %.not198.i = icmp eq ptr %i.ajb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !426
  br i1 %.not198.i, label %bb.nf, label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread415, %bb.mu
  br label %bb.nf

bb.ne:                                            ; preds = %bb.ms
  %brmerge8.i = or i1 %.not2.not.not.i.not.not.not.lcssa, %.sroa.0.0.i110
  %spec.select.i = select i1 %brmerge8.i, i64 %i.gh, i64 %i.jd
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ms, %bb.nc, %bb.nd, %bb.ne
  %.sroa.047.0.i = phi i64 [ %i.jd, %bb.ms ], [ %i.jd, %bb.nc ], [ %i.jm, %bb.nd ], [ %spec.select.i, %bb.ne ] ; 4 uses
  store i64 %.sroa.047.0.i, ptr %i.fx, align 8, !noalias !426
  %i.ajc = invoke noundef align 8 ptr @_RINvMs4_NtCsaB0tVqiIPBo_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aho, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fx)
          to label %bb.ng unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 14 uses

bb.ng:                                            ; preds = %bb.nf
  %.not199.i = icmp eq ptr %i.ajc, null
  br i1 %.not199.i, label %bb.nh, label %bb.nj

bb.nh:                                            ; preds = %bb.ng
  %i.ajd = getelementptr i8, ptr %.pre1337, i64 676
  %i.aje = load i32, ptr %i.ajd, align 4, !alias.scope !511, !noundef !4
  %i.ajf = and i32 %i.aje, 1024
  %.not.i95 = icmp eq i32 %i.ajf, 0
  br i1 %.not.i95, label %bb.ni, label %bb.ox

bb.ni:                                            ; preds = %bb.nh
  %i.ajg = getelementptr i8, ptr %.pre1337, i64 680
  %i.ajh = load i32, ptr %i.ajg, align 8, !alias.scope !511, !noundef !4
  %i.aji = and i32 %i.ajh, 1024
  %.not3.i97 = icmp eq i32 %i.aji, 0
  br i1 %.not3.i97, label %bb.oy, label %bb.ox

bb.nj:                                            ; preds = %bb.ng
  %i.ajj = getelementptr i8, ptr %i.ajc, i64 592
  %.val277.i = load i32, ptr %i.ajj, align 8, !noundef !4 ; 2 uses
  %i.ajk = and i32 %.val277.i, 256
  %.not512 = icmp eq i32 %i.ajk, 0
  %or.cond5.i = or i1 %.not512, %i.jl
  br i1 %or.cond5.i, label %bb.oc, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ajl = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %bb.nl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188 ; 2 uses

bb.nl:                                            ; preds = %bb.nk
  %i.ajm = icmp eq ptr %i.ajl, null
  br i1 %i.ajm, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit94, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEBF_(ptr nonnull %i.ajl)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit94: ; preds = %bb.nl, %bb.nm
  %i.ajn = load ptr, ptr %i.gc, align 8, !alias.scope !423, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !426
  invoke void @_RNvMs1_Cs74Z8AuVjqbo_8clap_lexNtB5_9ParsedArg7display(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.el, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fw)
          to label %bb.nn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.nn:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit94
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ajp = load ptr, ptr %i.ajo, align 8, !noalias !426, !nonnull !4
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ajr = load i64, ptr %i.ajq, align 8, !noalias !426 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !426
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dj, i64 noundef %i.ajr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.no unwind label %bb.nt, !inline_history !188

end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !532)
  %i.auj = load ptr, ptr %i.dx, align 8, !alias.scope !533, !nonnull !4, !noundef !4
  %i.auk = atomicrmw add ptr %i.auj, i64 -1 release, align 8, !noalias !533
  %i.aul = icmp eq i64 %i.auk, 1
  br i1 %i.aul, label %bb.uo, label %.thread438

bb.uo:                                            ; preds = %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCshzWfHUSfYae_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dx) #19
          to label %.thread438 unwind label %bb.dz

bb.up:                                            ; preds = %bb.ug
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !426
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %bb.uq unwind label %bb.ub, !inline_history !188

bb.uq:                                            ; preds = %bb.vf, %bb.uz, %bb.up
  %.sroa.0.5.i = phi ptr [ %i.avf, %bb.vf ], [ null, %bb.uz ], [ %i.aub, %bb.up ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.aum = load i64, ptr %i.ef, align 8, !range !18, !alias.scope !536, !noundef !4
  %switch.i.i = icmp samesign ult i64 %i.aum, 4
  br i1 %switch.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.aun = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.val.i.i33 = load ptr, ptr %i.aun, align 8, !alias.scope !536 ; 5 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %.val1.i.i34 = load ptr, ptr %i.auo, align 8, !alias.scope !536, !nonnull !4, !align !16, !noundef !4 ; 5 uses
  %i.aup = load ptr, ptr %.val1.i.i34, align 8, !invariant.load !4, !noalias !536 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aup, null
  br i1 %.not.i.i.i, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i33) ]
  invoke void %i.aup(ptr noundef nonnull %.val.i.i33)
          to label %bb.ut unwind label %bb.uv, !noalias !536

bb.ut:                                            ; preds = %bb.us, %bb.ur
  %i.auq = getelementptr inbounds nuw i8, ptr %.val1.i.i34, i64 8
  %i.aur = load i64, ptr %i.auq, align 8, !range !12, !invariant.load !4, !noalias !536 ; 2 uses
  %i.aus = icmp eq i64 %i.aur, 0
  br i1 %i.aus, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.aut = getelementptr inbounds nuw i8, ptr %.val1.i.i34, i64 16
  %i.auu = load i64, ptr %i.aut, align 8, !range !13, !invariant.load !4, !noalias !536
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i33) ]
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i33, i64 noundef range(i64 1, -9223372036854775808) %i.aur, i64 noundef range(i64 1, 536870913) %i.auu) #21, !noalias !536
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder12value_parser11ValueParserEBH_.exit

bb.uv:                                            ; preds = %bb.us
  %i.auv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.val1.i.i34, i64 8
  %i.aux = load i64, ptr %i.auw, align 8, !range !12, !invariant.load !4, !noalias !536 ; 2 uses
  %i.auy = icmp eq i64 %i.aux, 0
  br i1 %i.auy, label %.critedge223.i, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.auz = getelementptr inbounds nuw i8, ptr %.val1.i.i34, i64 16
  %i.ava = load i64, ptr %i.auz, align 8, !range !13, !invariant.load !4, !noalias !536
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i33, i64 noundef range(i64 1, -9223372036854775808) %i.aux, i64 noundef range(i64 1, 536870913) %i.ava) #21, !noalias !536
  br label %.critedge223.i

bb.ux:                                            ; preds = %._crit_edge
  %i.avb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.du) #17
          to label %.thread442 unwind label %bb.dz, !inline_history !188

bb.uy:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.du, i64 24, i1 false), !noalias !426
  %i.avc = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.avc, ptr noundef nonnull align 8 dereferenceable(56) %i.dt, i64 56, i1 false), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !426
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher10subcommand(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.dv)
          to label %bb.uz unwind label %bb.ub, !inline_history !188

bb.uz:                                            ; preds = %bb.uy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !426
  br label %bb.uq

.thread438:                                       ; preds = %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.uo
  %.pn205.i441 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.uo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp523.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp2170, %.loopexit.split-lp518.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder6parser11arg_matcher10ArgMatcherEBH_(ptr noalias nofree noundef align 8 dereferenceable(120) %i.ea) #17
          to label %bb.va unwind label %bb.dz, !inline_history !188

bb.va:                                            ; preds = %.thread438, %bb.tz
  %.pn205.pn.i.ph = phi { ptr, i32 } [ %i.atk, %bb.tz ], [ %.pn205.i441, %.thread438 ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ee) #17
          to label %.thread442 unwind label %bb.dz, !inline_history !188

bb.vb:                                            ; preds = %bb.tt
  %i.avd = icmp eq ptr %i.asx, null
  br i1 %i.avd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit, label %bb.vc

bb.vc:                                            ; preds = %bb.vb
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEBF_(ptr nonnull %i.asx)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit unwind label %bb.ub

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit: ; preds = %bb.vb, %bb.vc
  %i.ave = load ptr, ptr %i.gc, align 8, !alias.scope !423, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !426
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !426
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.ave)
          to label %bb.vd unwind label %bb.ub, !inline_history !188

bb.vd:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorEEB12_.exit
  invoke void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.ve unwind label %bb.ub, !inline_history !188

bb.ve:                                            ; preds = %bb.vd
  %i.avf = invoke noundef nonnull align 8 ptr @_RNvMNtCsaB0tVqiIPBo_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.ave, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ec)
          to label %bb.vf unwind label %bb.ub, !inline_history !188

bb.vf:                                            ; preds = %bb.ve
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !426
  br label %bb.uq

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder12value_parser11ValueParserEBH_.exit: ; preds = %bb.uu, %bb.ut, %bb.uq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !426
  br label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser15match_arg_error.exit

bb.vg:                                            ; preds = %bb.xk, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit15, %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser15match_arg_error.exit
  %.sroa.0.6.i = phi ptr [ %.sroa.0.3.i, %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser15match_arg_error.exit ], [ %i.ayr, %bb.xk ], [ %i.axf, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit15 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !426
  %i.avg = load i64, ptr %i.fz, align 8, !range !6, !alias.scope !537, !noundef !4
  %i.avh = icmp eq i64 %i.avg, -1
  br i1 %i.avh, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5parse.exit, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i30 unwind label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.avi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %common.resume unwind label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.avj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

common.resume:                                    ; preds = %bb.xv, %bb.xx, %bb.xr, %.critedge223.i, %bb.vm, %bb.vi
  %common.resume.op = phi { ptr, i32 } [ %i.azi, %bb.xx ], [ %i.avi, %bb.vi ], [ %i.avl, %bb.vm ], [ %.pn218.i, %.critedge223.i ], [ %i.azb, %bb.xr ], [ %i.azh, %bb.xv ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i30: ; preds = %bb.vh
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
  br label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5parse.exit

bb.vk:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsaB0tVqiIPBo_12clap_builder.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !426
  %.pr466 = load i64, ptr %i.fz, align 8, !alias.scope !538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !426
  %i.avk = icmp eq i64 %.pr466, -1
  br i1 %i.avk, label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i unwind label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.avl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %common.resume unwind label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  %i.avm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i: ; preds = %bb.vl
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fz)
  br label %_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread

_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser5parse.exit.thread: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsaB0tVqiIPBo_12clap_builder.exit.i, %bb.vk, %.thread467
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz), !noalias !426
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultuNtNtCsaB0tVqiIPBo_12clap_builder5error5ErrorE11inspect_errNCNvMs_NtNtBN_6parser6parserNtB1M_6Parser16get_matches_with0EBN_.exit

bb.vo:                                            ; preds = %bb.kf
  %i.avn = load ptr, ptr %i.gc, align 8, !alias.scope !423, !nonnull !4, !align !16, !noundef !4 ; 8 uses
  %i.avo = getelementptr i8, ptr %i.avn, i64 676  ; 2 uses
  %i.avp = getelementptr i8, ptr %i.avn, i64 680
  %i.avq = load <2 x i32>, ptr %i.avo, align 4
  %.fr2170 = freeze <2 x i32> %i.avq
  %7 = and <2 x i32> %.fr2170, splat (i32 8192)
  %.scalar2171 = bitcast <2 x i32> %7 to i64
  %.sroa.0.0.i28 = icmp ne i64 %.scalar2171, 0
  %i.avr = trunc nuw i8 %.sroa.0.5 to i1
  %or.cond7.i = select i1 %.sroa.0.0.i28, i1 %i.avr, i1 false
  br i1 %or.cond7.i, label %bb.vs, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !426
  %i.avs = getelementptr i8, ptr %i.avn, i64 184
  %.val287.i = load ptr, ptr %i.avs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.avt = getelementptr i8, ptr %i.avn, i64 192
  %.val288.i = load i64, ptr %i.avt, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.avu = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %.val.i.i = load ptr, ptr %i.avu, align 8, !alias.scope !539, !nonnull !4, !noundef !4 ; 2 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %.val1.i.i = load i64, ptr %i.avv, align 8, !alias.scope !539, !noundef !4 ; 4 uses
  %.idx.i = mul nuw nsw i64 %.val288.i, 688
  %i.avw = getelementptr inbounds nuw i8, ptr %.val287.i, i64 %.idx.i
  %i.avx = icmp eq i64 %.val288.i, 0
  br i1 %i.avx, label %.loopexit529, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.vp, %_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i
  %i.avy = phi ptr [ %i.avz, %_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i ], [ %.val287.i, %bb.vp ] ; 6 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 688 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.awa = getelementptr i8, ptr %i.avy, i64 544
  %i.awb = load i64, ptr %i.awa, align 8, !alias.scope !540, !noalias !541, !noundef !4 ; 7 uses
  %i.awc = icmp eq i64 %.val1.i.i, %i.awb
  br i1 %i.awc, label %bb.vq, label %bb.vr

bb.vq:                                            ; preds = %.lr.ph.i.i
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avy, i64 536
  %i.awe = load ptr, ptr %i.awd, align 8, !alias.scope !540, !noalias !541, !nonnull !4, !noundef !4 ; 2 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull %i.awe, i64 %.val1.i.i), !noalias !542
  %i.awf = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.awf, label %.loopexit527, label %bb.vr

bb.vr:                                            ; preds = %bb.vq, %.lr.ph.i.i
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avy, i64 64
  %i.awh = load ptr, ptr %i.awg, align 8, !alias.scope !540, !noalias !541, !nonnull !4, !noundef !4 ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.avy, i64 72
  %i.awj = load i64, ptr %i.awi, align 8, !alias.scope !540, !noalias !541, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.awj, 24
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awh, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.awj, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.vr, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i
  %i.awl = phi ptr [ %i.awm, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i ], [ %i.awh, %bb.vr ] ; 3 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %i.awl, i64 24 ; 2 uses
  %i.awn = getelementptr i8, ptr %i.awl, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.awn, align 8, !noalias !543, !noundef !4
  %i.awo = icmp eq i64 %.val1.i.i, %.val6.i.i.i.i.i
  br i1 %i.awo, label %.split.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %.val5.i.i.i.i.i = load ptr, ptr %i.awl, align 8, !noalias !543, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val5.i.i.i.i.i, i64 %.val1.i.i), !noalias !544
  %i.awp = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.awp, label %.loopexit527.loopexit, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not15.i.i.i.i.i = icmp eq ptr %i.awm, %i.awk
  br i1 %.not15.i.i.i.i.i, label %_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRTNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCscAsMj0W7j8b_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i, %bb.vr
  %i.awq = icmp eq ptr %i.avz, %i.avw
  br i1 %i.awq, label %.loopexit529, label %.lr.ph.i.i

bb.vs:                                            ; preds = %bb.vo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !426
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz)
          to label %bb.xg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

.loopexit529:                                     ; preds = %_RNCINvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCsbSS6DM8SDEO_5alloc6string6StringE0Bc_.exit.i.i, %bb.vp
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

.loopexit527.loopexit:                            ; preds = %.split.i.i.i.i.i
  %.phi.trans.insert = getelementptr i8, ptr %i.avy, i64 536
  %.val289.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.loopexit527

.loopexit527:                                     ; preds = %bb.vq, %.loopexit527.loopexit
  %.val289.i = phi ptr [ %.val289.i.pre, %.loopexit527.loopexit ], [ %i.awe, %bb.vq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !426
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.de, i64 noundef %i.awb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.vt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !188

bb.vt:                                            ; preds = %.loopexit527
  %i.awr = load i64, ptr %i.de, align 8, !range !7, !noalias !426, !noundef !4
  %i.aws = trunc nuw i64 %i.awr to i1
  %i.awt = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.awu = load i64, ptr %i.awt, align 8, !range !10, !noalias !426, !noundef !4 ; 3 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  br i1 %i.aws, label %bb.vu, label %bb.vv, !prof !11

bb.vu:                                            ; preds = %bb.vt
  %i.aww = load i64, ptr %i.awv, align 8, !noalias !426
  br label %.invoke1771

bb.vv:                                            ; preds = %bb.vt
  %i.awx = load ptr, ptr %i.awv, align 8, !noalias !426, !nonnull !4, !noundef !4 ; 3 uses
  %i.awy = icmp ule i64 %i.awb, %i.awu
  call void @llvm.assume(i1 %i.awy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !426
  %.not190.i = icmp eq i64 %i.awb, 0
  br i1 %.not190.i, label %bb.vw, label %bb.wx

bb.vw:                                            ; preds = %bb.wx, %bb.vv
  store i64 %i.awu, ptr %i.dm, align 8, !noalias !426
  %.sroa.4153.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.awx, ptr %.sroa.4153.0..sroa_idx.i, align 8, !noalias !426
  %.sroa.6154.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store i64 %i.awb, ptr %.sroa.6154.0..sroa_idx.i, align 8, !noalias !426
  %i.awz = load i64, ptr %i.ga, align 8, !noalias !426, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %.val14.i = load i32, ptr %i.avo, align 4, !noalias !546, !noundef !4
  %.val15.i = load i32, ptr %i.avp, align 8, !noalias !546
  %.not.i.i16 = trunc i32 %.val14.i to i1
  %i.axa = trunc i32 %.val15.i to i1
  %.sroa.0.0.i.i = select i1 %.not.i.i16, i1 true, i1 %i.axa
  %i.axb = invoke noundef align 8 ptr @_RNvMs3_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command17__build_subcommand(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.avn, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.awx, i64 noundef %i.awb)
          to label %.noexc unwind label %bb.wy, !inline_history !409 ; 4 uses

.noexc:                                           ; preds = %bb.vw
  %.not.i17 = icmp eq ptr %i.axb, null
  br i1 %.not.i17, label %bb.xc, label %bb.vx

bb.vx:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !546
  %i.axc = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 2 uses
  store i64 0, ptr %i.axc, align 8, !alias.scope !547, !noalias !546
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !547, !noalias !546
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !547, !noalias !546
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !547, !noalias !546
  %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !547, !noalias !546
  store i64 2, ptr %i.dd, align 8, !alias.scope !547, !noalias !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !546
  %i.axd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.axb, ptr %i.axd, align 16, !alias.scope !548, !noalias !546
  %i.axe = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  store i64 0, ptr %i.dc, align 16, !alias.scope !548, !noalias !546
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.axe, i8 0, i64 16, i1 false), !alias.scope !548, !noalias !546
  br i1 %.sroa.039.1.i, label %bb.vz, label %bb.vy

bb.vy:                                            ; preds = %bb.vz, %bb.vx
  %i.axf = invoke noundef align 8 ptr @_RNvMs_NtNtCsaB0tVqiIPBo_12clap_builder6parser6parserNtB4_6Parser16get_matches_with(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dc, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.dd, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.awz)
          to label %bb.wa unwind label %bb.ww, !noalias !549, !inline_history !409 ; 4 uses

bb.vz:                                            ; preds = %bb.vx
  %i.axg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axh = load <2 x i64>, ptr %0, align 8, !alias.scope !545
  store <2 x i64> %i.axh, ptr %i.dc, align 16, !noalias !546
  %i.axi = load <2 x i64>, ptr %i.axg, align 8, !alias.scope !545
  store <2 x i64> %i.axi, ptr %i.axe, align 8, !noalias !546
  br label %bb.vy

bb.wa:                                            ; preds = %bb.vy
  %.not8.i = icmp eq ptr %i.axf, null
  br i1 %.not8.i, label %bb.wl, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  br i1 %.sroa.0.0.i.i, label %bb.wj, label %bb.wc

bb.wc:                                            ; preds = %bb.wj, %bb.wb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !546
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsaB0tVqiIPBo_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.axc)
          to label %bb.we unwind label %bb.wd, !noalias !549, !inline_history !409

bb.wd:                                            ; preds = %bb.wc
  %i.axj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaB0tVqiIPBo_12clap_builder6parser6parser10PendingArgEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %i.dd) #17
          to label %.body23 unwind label %bb.wi, !noalias !549, !inline_history !409

bb.we:                                            ; preds = %bb.wc
  %i.axk = load i64, ptr %i.dd, align 8, !range !15, !alias.scope !550, !noalias !546, !noundef !4
  %i.axl = icmp eq i64 %i.axk, 2
  br i1 %i.axl, label %bb.wz, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.axm = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.axm)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder6parser6parser10PendingArgEBH_.exit.i.i.i unwind label %bb.wg, !noalias !549, !inline_history !409

bb.wg:                                            ; preds = %bb.wf
  %i.axn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCscAsMj0W7j8b_3std3ffi6os_str8OsStringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsaB0tVqiIPBo_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.axm)
          to label %.body23 unwind label %bb.wh, !noalias !549, !inline_history !409

bb.wh:                                            ; preds = %bb.wg
  %i.axo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #18, !noalias !549, !inline_history !409
  unreachable
end_hunk_2
