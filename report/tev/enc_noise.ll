Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_noise?download=true
inline.NumInlined: 551
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN3jxl17GetNoiseParameterERKNS_6Image3IfEEPNS_11NoiseParamsEf:bb.a
  %i.ip = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.if, <2 x i64> %i.io)
  %rdx.minmax242 = select <2 x i1> %i.im, <2 x i64> %i.ip, <2 x i64> %i.io
  %i.iq = call i64 @llvm.vector.reduce.umin.v2i64(<2 x i64> %rdx.minmax242)
  %i.ir = trunc nuw i64 %i.iq to i32
  %i.is = select i1 %i.il, i32 0, i32 %i.ir
  %i.it = sitofp i32 %i.is to float
  %i.iu = fmul nnan float %i.it, 3.906250e-03     ; 3 uses
  %i.iv = fcmp ogt float %i.iu, 1.500000e-01
  %i.iw = fcmp ole float %i.iu, 0.000000e+00
  %or.cond = or i1 %i.iv, %i.iw
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3jxl12_GLOBAL__N_115GetSADThresholdERKNS0_14NoiseHistogramEi.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, i8 0, i64 32, i1 false), !tbaa !11
  br label %bb.ao

bb.d:                                             ; preds = %_ZN3jxl12_GLOBAL__N_115GetSADThresholdERKNS0_14NoiseHistogramEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !67
  %.not197.i = icmp ult i32 %i.ia, 8
  br i1 %.not197.i, label %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread, label %.preheader174.lr.ph.i

_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

.preheader174.lr.ph.i:                            ; preds = %bb.d
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.pre.i11 = load i32, ptr %0, align 8, !tbaa !61, !noalias !67 ; 2 uses
  br label %.preheader174.i

.loopexit175.loopexit.i:                          ; preds = %bb.k
  %.pre214.i = load i32, ptr %i.a, align 4, !tbaa !59, !noalias !67
  br label %.loopexit175.i

.loopexit175.i:                                   ; preds = %.preheader174.i, %.loopexit175.loopexit.i
  %i.jd = phi ptr [ %i.jk, %.preheader174.i ], [ %i.aat, %.loopexit175.loopexit.i ] ; 2 uses
  %i.je = phi ptr [ %i.jl, %.preheader174.i ], [ %i.aau, %.loopexit175.loopexit.i ] ; 6 uses
  %i.jf = phi i32 [ %i.jm, %.preheader174.i ], [ %.pre214.i, %.loopexit175.loopexit.i ] ; 2 uses
  %i.jg = phi i32 [ %i.jn, %.preheader174.i ], [ %i.aav, %.loopexit175.loopexit.i ]
  %i.jh = phi i32 [ %i.jo, %.preheader174.i ], [ %i.aav, %.loopexit175.loopexit.i ]
  %.1152.lcssa.i = phi i64 [ %.0151198.i, %.preheader174.i ], [ %i.aaw, %.loopexit175.loopexit.i ]
  %i.ji = add nuw nsw i64 %i.jp, 8                ; 2 uses
  %i.jj = zext i32 %i.jf to i64
  %.not.i16 = icmp samesign ugt i64 %i.ji, %i.jj
  br i1 %.not.i16, label %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, label %.preheader174.i, !llvm.loop !34

.preheader174.i:                                  ; preds = %.loopexit175.i, %.preheader174.lr.ph.i
  %i.jk = phi ptr [ null, %.preheader174.lr.ph.i ], [ %i.jd, %.loopexit175.i ] ; 2 uses
  %i.jl = phi ptr [ null, %.preheader174.lr.ph.i ], [ %i.je, %.loopexit175.i ] ; 2 uses
  %i.jm = phi i32 [ %i.ia, %.preheader174.lr.ph.i ], [ %i.jf, %.loopexit175.i ]
  %i.jn = phi i32 [ %.pre.i11, %.preheader174.lr.ph.i ], [ %i.jg, %.loopexit175.i ] ; 2 uses
  %i.jo = phi i32 [ %.pre.i11, %.preheader174.lr.ph.i ], [ %i.jh, %.loopexit175.i ] ; 2 uses
  %i.jp = phi i64 [ 8, %.preheader174.lr.ph.i ], [ %i.ji, %.loopexit175.i ] ; 2 uses
  %.0150199.i = phi i64 [ 0, %.preheader174.lr.ph.i ], [ %i.jp, %.loopexit175.i ] ; 9 uses
  %.0151198.i = phi i64 [ 0, %.preheader174.lr.ph.i ], [ %.1152.lcssa.i, %.loopexit175.i ] ; 2 uses
  %.not160194.i = icmp ult i32 %i.jo, 8
  br i1 %.not160194.i, label %.loopexit175.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader174.i
  %i.jq = or disjoint i64 %.0150199.i, 1
  %i.jr = or disjoint i64 %.0150199.i, 2
  %i.js = or disjoint i64 %.0150199.i, 3
  %i.jt = or disjoint i64 %.0150199.i, 4
  %i.ju = or disjoint i64 %.0150199.i, 5
  %i.jv = or disjoint i64 %.0150199.i, 6
  %i.jw = or disjoint i64 %.0150199.i, 7
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.k, %.lr.ph.preheader.i
  %i.jx = phi ptr [ %i.aat, %bb.k ], [ %i.jk, %.lr.ph.preheader.i ]
  %i.jy = phi ptr [ %i.aau, %bb.k ], [ %i.jl, %.lr.ph.preheader.i ]
  %i.jz = phi i32 [ %i.aav, %bb.k ], [ %i.jn, %.lr.ph.preheader.i ]
  %i.ka = phi i64 [ %i.aax, %bb.k ], [ 8, %.lr.ph.preheader.i ] ; 2 uses
  %.0149196.i = phi i64 [ %i.ka, %bb.k ], [ 0, %.lr.ph.preheader.i ] ; 20 uses
  %.1152195.i = phi i64 [ %i.aaw, %bb.k ], [ %.0151198.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.1152195.i
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !11, !noalias !67
  %i.kd = fcmp ugt float %i.kc, %i.iu
  br i1 %i.kd, label %bb.k, label %.preheader173.i

.preheader173.i:                                  ; preds = %.lr.ph.i12
  %i.ke = load i64, ptr %i.iy, align 8, !tbaa !63, !noalias !67 ; 15 uses
  %i.kf = load ptr, ptr %i.iz, align 8, !tbaa !64, !noalias !67 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kf, i64 64) ]
  %i.kg = load ptr, ptr %i.ja, align 8, !tbaa !64, !noalias !67 ; 19 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kg, i64 64) ]
  %i.kh = mul i64 %i.ke, %.0150199.i              ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.kh ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ki, i64 64) ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kh ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kj, i64 64) ]
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %.0149196.i
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.0149196.i
  %i.km = load <4 x float>, ptr %i.kk, align 32, !tbaa !11, !noalias !67
  %i.kn = load <4 x float>, ptr %i.kl, align 32, !tbaa !11, !noalias !67
  %i.ko = or disjoint i64 %.0149196.i, 4          ; 16 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.ko
  %i.kr = or disjoint i64 %.0149196.i, 7          ; 2 uses
  %i.ks = load <4 x float>, ptr %i.kp, align 16, !tbaa !11, !noalias !67
  %i.kt = load <4 x float>, ptr %i.kq, align 16, !tbaa !11, !noalias !67
  %i.ku = mul i64 %i.ke, %i.jq                    ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ku ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kv, i64 64) ]
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ku ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kw, i64 64) ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %.0149196.i
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.0149196.i
  %i.kz = load <4 x float>, ptr %i.kx, align 32, !tbaa !11, !noalias !67
  %i.la = load <4 x float>, ptr %i.ky, align 32, !tbaa !11, !noalias !67
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kv, i64 %i.ko
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ko
  %i.ld = load <4 x float>, ptr %i.lb, align 16, !tbaa !11, !noalias !67
  %i.le = load <4 x float>, ptr %i.lc, align 16, !tbaa !11, !noalias !67
  %i.lf = mul i64 %i.ke, %i.jr                    ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.lf ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lg, i64 64) ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.lf ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lh, i64 64) ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %.0149196.i
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.0149196.i
  %i.lk = load <4 x float>, ptr %i.li, align 32, !tbaa !11, !noalias !67
  %i.ll = load <4 x float>, ptr %i.lj, align 32, !tbaa !11, !noalias !67
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.lg, i64 %i.ko
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.ko
  %i.lo = load <4 x float>, ptr %i.lm, align 16, !tbaa !11, !noalias !67
  %i.lp = load <4 x float>, ptr %i.ln, align 16, !tbaa !11, !noalias !67
  %i.lq = mul i64 %i.ke, %i.js                    ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.lq ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.lr, i64 64) ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.lq ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ls, i64 64) ]
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %.0149196.i
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.0149196.i
  %i.lv = load <4 x float>, ptr %i.lt, align 32, !tbaa !11, !noalias !67
  %i.lw = load <4 x float>, ptr %i.lu, align 32, !tbaa !11, !noalias !67
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ko
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.ko
  %i.lz = load <4 x float>, ptr %i.lx, align 16, !tbaa !11, !noalias !67
  %i.ma = load <4 x float>, ptr %i.ly, align 16, !tbaa !11, !noalias !67
  %i.mb = mul i64 %i.ke, %i.jt                    ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.mb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mc, i64 64) ]
  %i.md = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.mb ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.md, i64 64) ]
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %.0149196.i
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.0149196.i
  %i.mg = load <4 x float>, ptr %i.me, align 32, !tbaa !11, !noalias !67
  %i.mh = load <4 x float>, ptr %i.mf, align 32, !tbaa !11, !noalias !67
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.ko
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.ko
  %i.mk = load <4 x float>, ptr %i.mi, align 16, !tbaa !11, !noalias !67
  %i.ml = load <4 x float>, ptr %i.mj, align 16, !tbaa !11, !noalias !67
  %i.mm = mul i64 %i.ke, %i.ju                    ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.mm ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mn, i64 64) ]
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.mm ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mo, i64 64) ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %.0149196.i
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %.0149196.i
  %i.mr = load <4 x float>, ptr %i.mp, align 32, !tbaa !11, !noalias !67
  %i.ms = load <4 x float>, ptr %i.mq, align 32, !tbaa !11, !noalias !67
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mn, i64 %i.ko
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mo, i64 %i.ko
  %i.mv = load <4 x float>, ptr %i.mt, align 16, !tbaa !11, !noalias !67
  %i.mw = load <4 x float>, ptr %i.mu, align 16, !tbaa !11, !noalias !67
  %i.mx = mul i64 %i.ke, %i.jv                    ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.mx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.my, i64 64) ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.mx ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.mz, i64 64) ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %.0149196.i
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %.0149196.i
  %i.nc = load <4 x float>, ptr %i.na, align 32, !tbaa !11, !noalias !67
  %i.nd = load <4 x float>, ptr %i.nb, align 32, !tbaa !11, !noalias !67
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.ko
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ko
  %i.ng = load <4 x float>, ptr %i.ne, align 16, !tbaa !11, !noalias !67
  %i.nh = load <4 x float>, ptr %i.nf, align 16, !tbaa !11, !noalias !67
  %i.ni = mul i64 %i.ke, %i.jw                    ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ni ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nj, i64 64) ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ni ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.nk, i64 64) ]
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %.0149196.i
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.0149196.i
  %i.nn = load <4 x float>, ptr %i.nl, align 32, !tbaa !11, !noalias !67
  %i.no = load <4 x float>, ptr %i.nm, align 32, !tbaa !11, !noalias !67
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ko
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %i.ko
  %i.nr = load <4 x float>, ptr %i.np, align 16, !tbaa !11, !noalias !67
  %i.ns = load <4 x float>, ptr %i.nq, align 16, !tbaa !11, !noalias !67
  %..i.peel = or disjoint i64 %.0149196.i, 6      ; 10 uses
  br label %.preheader171.i

.preheader171.i:                                  ; preds = %.peel.begin, %.preheader173.i
  %.0140193.i = phi i64 [ 0, %.preheader173.i ], [ %i.yh, %.peel.begin ] ; 4 uses
  %.0143191.i = phi float [ 0.000000e+00, %.preheader173.i ], [ %i.aas, %.peel.begin ]
  %i.nt = add nuw nsw i64 %.0140193.i, %.0150199.i ; 7 uses
  %i.nu = add nsw i64 %.0140193.i, -1
  %i.nv = icmp ult i64 %i.nu, 8                   ; 4 uses
  %i.nw = add nuw nsw i64 %i.nt, 1
  %i.nx = mul i64 %i.nw, %i.ke                    ; 3 uses
  %i.ny = add nsw i64 %i.nt, -1
  %i.nz = mul i64 %i.ny, %i.ke                    ; 3 uses
  %i.oa = mul i64 %i.nt, %i.ke                    ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.oa ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ob, i64 64) ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.oa ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.oc, i64 64) ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.oa ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.od, i64 64) ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.oa ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.oe, i64 64) ]
  %i.of = icmp samesign ult i64 %.0140193.i, 7    ; 4 uses
  %i.og = add nsw i64 %i.nt, -1
  %i.oh = mul i64 %i.og, %i.ke                    ; 3 uses
  %i.oi = add nuw nsw i64 %i.nt, 1
  %i.oj = mul i64 %i.oi, %i.ke                    ; 3 uses
  %..v = select i1 %i.nv, i64 %i.nz, i64 %i.nx
  %. = getelementptr inbounds nuw i8, ptr %i.kf, i64 %..v ; 3 uses
  %.222.v = select i1 %i.nv, i64 %i.nz, i64 %i.nx
  %.222.a = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.222.v ; 3 uses
  %.223 = select i1 %i.nv, i64 %i.nz, i64 %i.nx   ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %., i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.222.a, i64 64) ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.223 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ok, i64 64) ]
  %i.ol = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.223 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ol, i64 64) ]
  %.sink221.v = select i1 %i.of, i64 %i.oj, i64 %i.oh
  %.sink221 = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.sink221.v ; 3 uses
  %.sink219.v = select i1 %i.of, i64 %i.oj, i64 %i.oh
  %.sink219 = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.sink219.v ; 3 uses
  %.pre-phi84 = select i1 %i.of, i64 %i.oj, i64 %i.oh ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink221, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %.sink219, i64 64) ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.pre-phi84 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.om, i64 64) ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.kg, i64 %.pre-phi84 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.on, i64 64) ]
  br label %.preheader170.i

bb.e:                                             ; preds = %.peel.begin
  %i.oo = fadd <4 x float> %i.km, %i.kn           ; 4 uses
  %i.op = extractelement <4 x float> %i.oo, i64 0
  %i.oq = call float @llvm.fmuladd.f32(float %i.op, float 5.000000e-01, float 0.000000e+00)
  %i.or = extractelement <4 x float> %i.oo, i64 1
  %i.os = call float @llvm.fmuladd.f32(float %i.or, float 5.000000e-01, float %i.oq)
  %i.ot = extractelement <4 x float> %i.oo, i64 2
  %i.ou = call float @llvm.fmuladd.f32(float %i.ot, float 5.000000e-01, float %i.os)
  %i.ov = extractelement <4 x float> %i.oo, i64 3
  %i.ow = call float @llvm.fmuladd.f32(float %i.ov, float 5.000000e-01, float %i.ou)
  %i.ox = fadd <4 x float> %i.ks, %i.kt           ; 4 uses
  %i.oy = extractelement <4 x float> %i.ox, i64 0
  %i.oz = call float @llvm.fmuladd.f32(float %i.oy, float 5.000000e-01, float %i.ow)
  %i.pa = extractelement <4 x float> %i.ox, i64 1
  %i.pb = call float @llvm.fmuladd.f32(float %i.pa, float 5.000000e-01, float %i.oz)
  %i.pc = extractelement <4 x float> %i.ox, i64 2
  %i.pd = call float @llvm.fmuladd.f32(float %i.pc, float 5.000000e-01, float %i.pb)
  %i.pe = extractelement <4 x float> %i.ox, i64 3
  %i.pf = call float @llvm.fmuladd.f32(float %i.pe, float 5.000000e-01, float %i.pd)
  %i.pg = fadd <4 x float> %i.kz, %i.la           ; 4 uses
  %i.ph = extractelement <4 x float> %i.pg, i64 0
  %i.pi = call float @llvm.fmuladd.f32(float %i.ph, float 5.000000e-01, float %i.pf)
  %i.pj = extractelement <4 x float> %i.pg, i64 1
  %i.pk = call float @llvm.fmuladd.f32(float %i.pj, float 5.000000e-01, float %i.pi)
  %i.pl = extractelement <4 x float> %i.pg, i64 2
  %i.pm = call float @llvm.fmuladd.f32(float %i.pl, float 5.000000e-01, float %i.pk)
  %i.pn = extractelement <4 x float> %i.pg, i64 3
  %i.po = call float @llvm.fmuladd.f32(float %i.pn, float 5.000000e-01, float %i.pm)
  %i.pp = fadd <4 x float> %i.ld, %i.le           ; 4 uses
  %i.pq = extractelement <4 x float> %i.pp, i64 0
  %i.pr = call float @llvm.fmuladd.f32(float %i.pq, float 5.000000e-01, float %i.po)
  %i.ps = extractelement <4 x float> %i.pp, i64 1
  %i.pt = call float @llvm.fmuladd.f32(float %i.ps, float 5.000000e-01, float %i.pr)
  %i.pu = extractelement <4 x float> %i.pp, i64 2
  %i.pv = call float @llvm.fmuladd.f32(float %i.pu, float 5.000000e-01, float %i.pt)
  %i.pw = extractelement <4 x float> %i.pp, i64 3
  %i.px = call float @llvm.fmuladd.f32(float %i.pw, float 5.000000e-01, float %i.pv)
  %i.py = fadd <4 x float> %i.lk, %i.ll           ; 4 uses
  %i.pz = extractelement <4 x float> %i.py, i64 0
  %i.qa = call float @llvm.fmuladd.f32(float %i.pz, float 5.000000e-01, float %i.px)
  %i.qb = extractelement <4 x float> %i.py, i64 1
  %i.qc = call float @llvm.fmuladd.f32(float %i.qb, float 5.000000e-01, float %i.qa)
  %i.qd = extractelement <4 x float> %i.py, i64 2
  %i.qe = call float @llvm.fmuladd.f32(float %i.qd, float 5.000000e-01, float %i.qc)
  %i.qf = extractelement <4 x float> %i.py, i64 3
  %i.qg = call float @llvm.fmuladd.f32(float %i.qf, float 5.000000e-01, float %i.qe)
  %i.qh = fadd <4 x float> %i.lo, %i.lp           ; 4 uses
  %i.qi = extractelement <4 x float> %i.qh, i64 0
  %i.qj = call float @llvm.fmuladd.f32(float %i.qi, float 5.000000e-01, float %i.qg)
  %i.qk = extractelement <4 x float> %i.qh, i64 1
  %i.ql = call float @llvm.fmuladd.f32(float %i.qk, float 5.000000e-01, float %i.qj)
  %i.qm = extractelement <4 x float> %i.qh, i64 2
  %i.qn = call float @llvm.fmuladd.f32(float %i.qm, float 5.000000e-01, float %i.ql)
  %i.qo = extractelement <4 x float> %i.qh, i64 3
  %i.qp = call float @llvm.fmuladd.f32(float %i.qo, float 5.000000e-01, float %i.qn)
  %i.qq = fadd <4 x float> %i.lv, %i.lw           ; 4 uses
  %i.qr = extractelement <4 x float> %i.qq, i64 0
  %i.qs = call float @llvm.fmuladd.f32(float %i.qr, float 5.000000e-01, float %i.qp)
  %i.qt = extractelement <4 x float> %i.qq, i64 1
  %i.qu = call float @llvm.fmuladd.f32(float %i.qt, float 5.000000e-01, float %i.qs)
  %i.qv = extractelement <4 x float> %i.qq, i64 2
  %i.qw = call float @llvm.fmuladd.f32(float %i.qv, float 5.000000e-01, float %i.qu)
  %i.qx = extractelement <4 x float> %i.qq, i64 3
  %i.qy = call float @llvm.fmuladd.f32(float %i.qx, float 5.000000e-01, float %i.qw)
  %i.qz = fadd <4 x float> %i.lz, %i.ma           ; 4 uses
  %i.ra = extractelement <4 x float> %i.qz, i64 0
  %i.rb = call float @llvm.fmuladd.f32(float %i.ra, float 5.000000e-01, float %i.qy)
  %i.rc = extractelement <4 x float> %i.qz, i64 1
  %i.rd = call float @llvm.fmuladd.f32(float %i.rc, float 5.000000e-01, float %i.rb)
  %i.re = extractelement <4 x float> %i.qz, i64 2
  %i.rf = call float @llvm.fmuladd.f32(float %i.re, float 5.000000e-01, float %i.rd)
  %i.rg = extractelement <4 x float> %i.qz, i64 3
  %i.rh = call float @llvm.fmuladd.f32(float %i.rg, float 5.000000e-01, float %i.rf)
  %i.ri = fadd <4 x float> %i.mg, %i.mh           ; 4 uses
  %i.rj = extractelement <4 x float> %i.ri, i64 0
  %i.rk = call float @llvm.fmuladd.f32(float %i.rj, float 5.000000e-01, float %i.rh)
  %i.rl = extractelement <4 x float> %i.ri, i64 1
  %i.rm = call float @llvm.fmuladd.f32(float %i.rl, float 5.000000e-01, float %i.rk)
  %i.rn = extractelement <4 x float> %i.ri, i64 2
  %i.ro = call float @llvm.fmuladd.f32(float %i.rn, float 5.000000e-01, float %i.rm)
  %i.rp = extractelement <4 x float> %i.ri, i64 3
  %i.rq = call float @llvm.fmuladd.f32(float %i.rp, float 5.000000e-01, float %i.ro)
  %i.rr = fadd <4 x float> %i.mk, %i.ml           ; 4 uses
  %i.rs = extractelement <4 x float> %i.rr, i64 0
  %i.rt = call float @llvm.fmuladd.f32(float %i.rs, float 5.000000e-01, float %i.rq)
  %i.ru = extractelement <4 x float> %i.rr, i64 1
  %i.rv = call float @llvm.fmuladd.f32(float %i.ru, float 5.000000e-01, float %i.rt)
  %i.rw = extractelement <4 x float> %i.rr, i64 2
  %i.rx = call float @llvm.fmuladd.f32(float %i.rw, float 5.000000e-01, float %i.rv)
  %i.ry = extractelement <4 x float> %i.rr, i64 3
  %i.rz = call float @llvm.fmuladd.f32(float %i.ry, float 5.000000e-01, float %i.rx)
  %i.sa = fadd <4 x float> %i.mr, %i.ms           ; 4 uses
  %i.sb = extractelement <4 x float> %i.sa, i64 0
  %i.sc = call float @llvm.fmuladd.f32(float %i.sb, float 5.000000e-01, float %i.rz)
  %i.sd = extractelement <4 x float> %i.sa, i64 1
  %i.se = call float @llvm.fmuladd.f32(float %i.sd, float 5.000000e-01, float %i.sc)
  %i.sf = extractelement <4 x float> %i.sa, i64 2
  %i.sg = call float @llvm.fmuladd.f32(float %i.sf, float 5.000000e-01, float %i.se)
  %i.sh = extractelement <4 x float> %i.sa, i64 3
  %i.si = call float @llvm.fmuladd.f32(float %i.sh, float 5.000000e-01, float %i.sg)
  %i.sj = fadd <4 x float> %i.mv, %i.mw           ; 4 uses
  %i.sk = extractelement <4 x float> %i.sj, i64 0
  %i.sl = call float @llvm.fmuladd.f32(float %i.sk, float 5.000000e-01, float %i.si)
  %i.sm = extractelement <4 x float> %i.sj, i64 1
  %i.sn = call float @llvm.fmuladd.f32(float %i.sm, float 5.000000e-01, float %i.sl)
  %i.so = extractelement <4 x float> %i.sj, i64 2
  %i.sp = call float @llvm.fmuladd.f32(float %i.so, float 5.000000e-01, float %i.sn)
  %i.sq = extractelement <4 x float> %i.sj, i64 3
  %i.sr = call float @llvm.fmuladd.f32(float %i.sq, float 5.000000e-01, float %i.sp)
  %i.ss = fadd <4 x float> %i.nc, %i.nd           ; 4 uses
  %i.st = extractelement <4 x float> %i.ss, i64 0
  %i.su = call float @llvm.fmuladd.f32(float %i.st, float 5.000000e-01, float %i.sr)
  %i.sv = extractelement <4 x float> %i.ss, i64 1
  %i.sw = call float @llvm.fmuladd.f32(float %i.sv, float 5.000000e-01, float %i.su)
  %i.sx = extractelement <4 x float> %i.ss, i64 2
  %i.sy = call float @llvm.fmuladd.f32(float %i.sx, float 5.000000e-01, float %i.sw)
  %i.sz = extractelement <4 x float> %i.ss, i64 3
  %i.ta = call float @llvm.fmuladd.f32(float %i.sz, float 5.000000e-01, float %i.sy)
  %i.tb = fadd <4 x float> %i.ng, %i.nh           ; 4 uses
  %i.tc = extractelement <4 x float> %i.tb, i64 0
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float 5.000000e-01, float %i.ta)
  %i.te = extractelement <4 x float> %i.tb, i64 1
  %i.tf = call float @llvm.fmuladd.f32(float %i.te, float 5.000000e-01, float %i.td)
  %i.tg = extractelement <4 x float> %i.tb, i64 2
  %i.th = call float @llvm.fmuladd.f32(float %i.tg, float 5.000000e-01, float %i.tf)
  %i.ti = extractelement <4 x float> %i.tb, i64 3
  %i.tj = call float @llvm.fmuladd.f32(float %i.ti, float 5.000000e-01, float %i.th)
  %i.tk = fadd <4 x float> %i.nn, %i.no           ; 4 uses
  %i.tl = extractelement <4 x float> %i.tk, i64 0
  %i.tm = call float @llvm.fmuladd.f32(float %i.tl, float 5.000000e-01, float %i.tj)
  %i.tn = extractelement <4 x float> %i.tk, i64 1
  %i.to = call float @llvm.fmuladd.f32(float %i.tn, float 5.000000e-01, float %i.tm)
  %i.tp = extractelement <4 x float> %i.tk, i64 2
  %i.tq = call float @llvm.fmuladd.f32(float %i.tp, float 5.000000e-01, float %i.to)
  %i.tr = extractelement <4 x float> %i.tk, i64 3
  %i.ts = call float @llvm.fmuladd.f32(float %i.tr, float 5.000000e-01, float %i.tq)
  %i.tt = fadd <4 x float> %i.nr, %i.ns           ; 4 uses
  %i.tu = extractelement <4 x float> %i.tt, i64 0
  %i.tv = call float @llvm.fmuladd.f32(float %i.tu, float 5.000000e-01, float %i.ts)
  %i.tw = extractelement <4 x float> %i.tt, i64 1
  %i.tx = call float @llvm.fmuladd.f32(float %i.tw, float 5.000000e-01, float %i.tv)
  %i.ty = extractelement <4 x float> %i.tt, i64 2
  %i.tz = call float @llvm.fmuladd.f32(float %i.ty, float 5.000000e-01, float %i.tx)
  %i.ua = extractelement <4 x float> %i.tt, i64 3
  %i.ub = call float @llvm.fmuladd.f32(float %i.ua, float 5.000000e-01, float %i.tz)
  %i.uc = fmul float %i.ub, 1.562500e-02          ; 2 uses
  %i.ud = fmul float %i.aas, 1.562500e-02         ; 2 uses
  %i.ue = load ptr, ptr %i.jb, align 8, !tbaa !72, !alias.scope !67 ; 7 uses
  %i.uf = load ptr, ptr %i.jc, align 8, !tbaa !73, !alias.scope !67 ; 3 uses
  %i.ug = icmp ult ptr %i.ue, %i.uf
  br i1 %i.ug, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.ud, ptr %i.ue, align 4, !tbaa !11, !noalias !67
  %.sroa_idx165.i = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  store float %i.uc, ptr %.sroa_idx165.i, align 4, !tbaa !11, !noalias !67
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ui = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !67 ; 5 uses
  %i.uj = ptrtoint ptr %i.ue to i64
  %i.uk = ptrtoint ptr %i.ui to i64               ; 2 uses
  %i.ul = sub i64 %i.uj, %i.uk                    ; 2 uses
  %i.um = ashr exact i64 %i.ul, 3
  %i.un = add nsw i64 %i.um, 1                    ; 2 uses
  %i.uo = icmp ugt i64 %i.un, 2305843009213693951
  br i1 %i.uo, label %bb.h, label %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  unreachable

_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i: ; preds = %bb.g
  %i.up = ptrtoint ptr %i.uf to i64
  %i.uq = sub i64 %i.up, %i.uk                    ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.uq, 9223372036854775800
  %i.ur = ashr exact i64 %i.uq, 2
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ur, i64 %i.un)
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 2305843009213693951 ; 4 uses
  %i.us = icmp ne i64 %.0.i.i.i.i, 0
  call void @llvm.assume(i1 %i.us)
  %i.ut = icmp ugt i64 %.0.i.i.i.i, 2305843009213693951
  br i1 %i.ut, label %bb.i, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23, !noalias !67
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.uu = shl nuw i64 %.0.i.i.i.i, 3
  %i.uv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #20, !noalias !67 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.ul ; 5 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %.0.i.i.i.i ; 3 uses
  store float %i.ud, ptr %i.uw, align 4, !tbaa !11, !noalias !67
  %.sroa_idx163.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  store float %i.uc, ptr %.sroa_idx163.i, align 4, !tbaa !11, !noalias !67
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ue, %i.ui
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.uz = phi ptr [ %i.vb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.uw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.va, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ue, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %i.va = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.vb = getelementptr inbounds i8, ptr %i.uz, i64 -8 ; 3 uses
  %i.vc = load i64, ptr %i.va, align 4, !tbaa !11, !noalias !75
  store i64 %i.vc, ptr %i.vb, align 4, !tbaa !11, !noalias !75
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.va, %i.ui
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !43

_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.uw, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl10NoiseLevelEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ], [ %i.vb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %12, align 8, !tbaa !73, !alias.scope !67
  store ptr %i.ux, ptr %i.jc, align 8, !tbaa !73, !alias.scope !67
  %.not.i4.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i4.i.i.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ui, i64 noundef %i.uq) #22, !noalias !67
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i: ; preds = %bb.j, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, %bb.f
  %i.vd = phi ptr [ %i.uf, %bb.f ], [ %i.ux, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.ux, %bb.j ]
  %.0.i.i = phi ptr [ %i.uh, %bb.f ], [ %i.uy, %_ZNSt3__114__split_bufferIN3jxl10NoiseLevelERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.uy, %bb.j ] ; 2 uses
  store ptr %.0.i.i, ptr %i.jb, align 8, !tbaa !72, !alias.scope !67
  %.pre213.i = load i32, ptr %0, align 8, !tbaa !61, !noalias !67
  br label %bb.k

.preheader170.i:                                  ; preds = %.preheader170.i, %.preheader171.i
  %.0139190.i = phi i64 [ 0, %.preheader171.i ], [ %i.yg, %.preheader170.i ] ; 3 uses
  %.1144188.i = phi float [ %.0143191.i, %.preheader171.i ], [ %i.yf, %.preheader170.i ]
  %i.ve = or disjoint i64 %.0139190.i, %.0149196.i ; 8 uses
  %i.vf = add nsw i64 %.0139190.i, -1
  %i.vg = icmp ult i64 %i.vf, 8
  %..v.i = select i1 %i.vg, i64 -1, i64 1
  %..i = add nsw i64 %..v.i, %i.ve                ; 6 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %., i64 %..i
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !11, !noalias !67
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.222.a, i64 %..i
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !11, !noalias !67
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %., i64 %i.ve
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !11, !noalias !67
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.222.a, i64 %i.ve
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !11, !noalias !67
  %.sink258.i = add nuw nsw i64 %i.ve, 1          ; 6 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.ve
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !11, !noalias !67
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %i.ve
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !11, !noalias !67
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.sink258.i
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !11, !noalias !67
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.sink258.i
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !11, !noalias !67
  %i.vx = insertelement <4 x float> poison, float %i.vi, i64 0
  %i.vy = insertelement <4 x float> %i.vx, float %i.vm, i64 1
  %i.vz = insertelement <4 x float> %i.vy, float %i.vq, i64 2
  %i.wa = insertelement <4 x float> %i.vz, float %i.vu, i64 3
  %i.wb = insertelement <4 x float> poison, float %i.vk, i64 0
  %i.wc = insertelement <4 x float> %i.wb, float %i.vo, i64 1
  %i.wd = insertelement <4 x float> %i.wc, float %i.vs, i64 2
  %i.we = insertelement <4 x float> %i.wd, float %i.vw, i64 3
  %i.wf = fadd <4 x float> %i.wa, %i.we
  %i.wg = fmul <4 x float> %i.wf, splat (float 5.000000e-01) ; 4 uses
  %i.wh = extractelement <4 x float> %i.wg, i64 0
  %i.wi = call float @llvm.fmuladd.f32(float %i.wh, float -2.500000e-01, float 0.000000e+00)
  %i.wj = extractelement <4 x float> %i.wg, i64 1
  %i.wk = fsub float %i.wi, %i.wj
  %i.wl = extractelement <4 x float> %i.wg, i64 3
  %i.wm = call float @llvm.fmuladd.f32(float %i.wl, float -2.500000e-01, float %i.wk)
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %..i
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !11, !noalias !67
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %..i
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !11, !noalias !67
  %i.wr = extractelement <4 x float> %i.wg, i64 2
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %.sink258.i
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !11, !noalias !67
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %.sink258.i
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !11, !noalias !67
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.sink221, i64 %..i
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !11, !noalias !67
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %.sink219, i64 %..i
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !11, !noalias !67
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.sink221, i64 %i.ve
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !11, !noalias !67
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.sink219, i64 %i.ve
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !11, !noalias !67
  %i.xe = insertelement <4 x float> poison, float %i.wo, i64 0
  %i.xf = insertelement <4 x float> %i.xe, float %i.wt, i64 1
  %i.xg = insertelement <4 x float> %i.xf, float %i.wx, i64 2
  %i.xh = insertelement <4 x float> %i.xg, float %i.xb, i64 3
  %i.xi = insertelement <4 x float> poison, float %i.wq, i64 0
  %i.xj = insertelement <4 x float> %i.xi, float %i.wv, i64 1
  %i.xk = insertelement <4 x float> %i.xj, float %i.wz, i64 2
  %i.xl = insertelement <4 x float> %i.xk, float %i.xd, i64 3
  %i.xm = fadd <4 x float> %i.xh, %i.xl
  %i.xn = fmul <4 x float> %i.xm, splat (float 5.000000e-01) ; 4 uses
  %i.xo = extractelement <4 x float> %i.xn, i64 0
  %i.xp = fsub float %i.wm, %i.xo
  %i.xq = call float @llvm.fmuladd.f32(float %i.wr, float 5.000000e+00, float %i.xp)
  %i.xr = extractelement <4 x float> %i.xn, i64 1
  %i.xs = fsub float %i.xq, %i.xr
  %i.xt = extractelement <4 x float> %i.xn, i64 2
  %i.xu = call float @llvm.fmuladd.f32(float %i.xt, float -2.500000e-01, float %i.xs)
  %i.xv = extractelement <4 x float> %i.xn, i64 3
  %i.xw = fsub float %i.xu, %i.xv
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.sink258.i
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !11, !noalias !67
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sink258.i
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !11, !noalias !67
  %i.yb = fadd float %i.xy, %i.ya
  %i.yc = fmul float %i.yb, 5.000000e-01
  %i.yd = call float @llvm.fmuladd.f32(float %i.yc, float -2.500000e-01, float %i.xw)
  %i.ye = call noundef float @llvm.fabs.f32(float %i.yd)
  %i.yf = fadd float %.1144188.i, %i.ye           ; 2 uses
  %i.yg = add nuw nsw i64 %.0139190.i, 1          ; 2 uses
  %exitcond208.not.i = icmp eq i64 %i.yg, 7
  br i1 %exitcond208.not.i, label %.peel.begin, label %.preheader170.i, !llvm.loop !44

.peel.begin:                                      ; preds = %.preheader170.i
  %i.yh = add nuw nsw i64 %.0140193.i, 1          ; 2 uses
  %.224 = select i1 %i.nv, i64 -1, i64 1
  %i.yi = add nsw i64 %i.nt, %.224
  %i.yj = mul i64 %i.yi, %i.ke                    ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.yj ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.yj ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yk, i64 %..i.peel
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.yl, i64 %..i.peel
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yk, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.yl, i64 64) ]
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %i.kr
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !11, !noalias !67
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %i.kr
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !11, !noalias !67
  %gep = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.yj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %gep, i64 64) ]
  %13 = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %..i.peel
  %i.ys = load float, ptr %13, align 8, !tbaa !11, !noalias !67
  %gep143 = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.yj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %gep143, i64 64) ]
  %14 = getelementptr inbounds nuw [4 x i8], ptr %gep143, i64 %..i.peel
  %i.yt = load float, ptr %14, align 8, !tbaa !11, !noalias !67
  %i.yu = load <2 x float>, ptr %i.ym, align 8, !tbaa !11, !noalias !67
  %i.yv = load <2 x float>, ptr %i.yn, align 8, !tbaa !11, !noalias !67
  %i.yw = shufflevector <2 x float> %i.yu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yx = insertelement <4 x float> %i.yw, float %i.yp, i64 2
  %i.yy = insertelement <4 x float> %i.yx, float %i.ys, i64 3
  %i.yz = shufflevector <2 x float> %i.yv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.za = insertelement <4 x float> %i.yz, float %i.yr, i64 2
  %i.zb = insertelement <4 x float> %i.za, float %i.yt, i64 3
  %i.zc = fadd <4 x float> %i.yy, %i.zb
  %i.zd = fmul <4 x float> %i.zc, splat (float 5.000000e-01) ; 4 uses
  %i.ze = extractelement <4 x float> %i.zd, i64 0
  %i.zf = call float @llvm.fmuladd.f32(float %i.ze, float -2.500000e-01, float 0.000000e+00)
  %i.zg = extractelement <4 x float> %i.zd, i64 1
  %i.zh = fsub float %i.zf, %i.zg
  %i.zi = extractelement <4 x float> %i.zd, i64 3
  %i.zj = call float @llvm.fmuladd.f32(float %i.zi, float -2.500000e-01, float %i.zh)
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %..i.peel
  %i.zl = load float, ptr %i.zk, align 8, !tbaa !11, !noalias !67
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %..i.peel
  %i.zn = load float, ptr %i.zm, align 8, !tbaa !11, !noalias !67
  %i.zo = fadd float %i.zl, %i.zn
  %i.zp = fmul float %i.zo, 5.000000e-01          ; 2 uses
  %i.zq = fsub float %i.zj, %i.zp
  %i.zr = extractelement <4 x float> %i.zd, i64 2
  %i.zs = call float @llvm.fmuladd.f32(float %i.zr, float 5.000000e+00, float %i.zq)
  %i.zt = fsub float %i.zs, %i.zp
  %.sink183 = select i1 %i.of, i64 1, i64 -1
  %i.zu = add nsw i64 %i.nt, %.sink183
  %i.zv = mul i64 %i.zu, %i.ke                    ; 4 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.zv ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.zv ; 2 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %..i.peel
  %i.zz = load float, ptr %i.zy, align 8, !tbaa !11, !noalias !67
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %..i.peel
  %i.aab = load float, ptr %i.aaa, align 8, !tbaa !11, !noalias !67
  %i.aac = fadd float %i.zz, %i.aab
  %i.aad = fmul float %i.aac, 5.000000e-01
  %i.aae = call float @llvm.fmuladd.f32(float %i.aad, float -2.500000e-01, float %i.zt)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zw, i64 64) ]
  call void @llvm.assume(i1 true) [ "align"(ptr %i.zx, i64 64) ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.zv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aaf, i64 64) ]
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %..i.peel
  %i.aah = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.zv ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aah, i64 64) ]
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.aah, i64 %..i.peel
  %i.aaj = load <2 x float>, ptr %i.aag, align 8, !tbaa !11, !noalias !67
  %i.aak = load <2 x float>, ptr %i.aai, align 8, !tbaa !11, !noalias !67
  %i.aal = fadd <2 x float> %i.aaj, %i.aak
  %i.aam = fmul <2 x float> %i.aal, splat (float 5.000000e-01) ; 2 uses
  %i.aan = extractelement <2 x float> %i.aam, i64 1
  %i.aao = fsub float %i.aae, %i.aan
  %i.aap = extractelement <2 x float> %i.aam, i64 0
  %i.aaq = call float @llvm.fmuladd.f32(float %i.aap, float -2.500000e-01, float %i.aao)
  %i.aar = call noundef float @llvm.fabs.f32(float %i.aaq)
  %i.aas = fadd float %i.yf, %i.aar               ; 2 uses
  %exitcond209.not.i = icmp eq i64 %i.yh, 8
  br i1 %exitcond209.not.i, label %bb.e, label %.preheader171.i, !llvm.loop !45

bb.k:                                             ; preds = %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, %.lr.ph.i12
  %i.aat = phi ptr [ %i.vd, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jx, %.lr.ph.i12 ] ; 2 uses
  %i.aau = phi ptr [ %.0.i.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jy, %.lr.ph.i12 ] ; 2 uses
  %i.aav = phi i32 [ %.pre213.i, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i ], [ %i.jz, %.lr.ph.i12 ] ; 4 uses
  %i.aaw = add i64 %.1152195.i, 1                 ; 2 uses
  %i.aax = add nuw nsw i64 %i.ka, 8               ; 2 uses
  %i.aay = zext i32 %i.aav to i64
  %.not160.i = icmp samesign ugt i64 %i.aax, %i.aay
  br i1 %.not160.i, label %.loopexit175.loopexit.i, label %.lr.ph.i12, !llvm.loop !46

_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit: ; preds = %.loopexit175.i
  %.pre81 = load ptr, ptr %12, align 8, !tbaa !74 ; 6 uses
  %i.aaz = ptrtoint ptr %i.jd to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.aba = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.not34.i = icmp eq ptr %.pre81, %i.je
  br i1 %.not34.i, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i, label %.lr.ph.i18

bb.l:                                             ; preds = %.lr.ph.i18
  %i.abb = ptrtoint ptr %i.je to i64
  %i.abc = ptrtoint ptr %.pre81 to i64
  %i.abd = sub i64 %i.abb, %i.abc                 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.abe = icmp slt i64 %i.abd, 0
  br i1 %i.abe, label %bb.m, label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZNKSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #23
  unreachable

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i: ; preds = %bb.l
  %i.abf = lshr exact i64 %i.abd, 3
  %i.abg = uitofp nneg i64 %i.abf to float
  %i.abh = fdiv float %i.aco, %i.abg
  %i.abi = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abd) #20 ; 3 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.abi, ptr align 4 %.pre81, i64 %i.abd, i1 false)
  %i.abk = fpext float %i.abh to double
  br label %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i: ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i
  %i.abl = phi ptr [ %i.aba, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ %i.ix, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.aba, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abm = phi ptr [ %.pre81, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %.pre81, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 4 uses
  %i.abn = phi ptr [ %i.je, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.je, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abo = phi i64 [ %i.aaz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ 0, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ %i.aaz, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abp = phi double [ %i.abk, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ +qnan, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %i.abq = phi ptr [ %i.abj, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 6 uses
  %i.abr = phi ptr [ %i.abi, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEE11__vallocateB8nn180100Em.exit.i.i.i ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit.thread ], [ null, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 8 uses
  %i.abs = fmul float %2, 1.400000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.abt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.abu = insertelement <4 x double> poison, double %i.abp, i64 0
  %i.abv = shufflevector <4 x double> %i.abu, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x double> %i.abv, ptr %8, align 16, !tbaa !13
  %i.abw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <4 x double> %i.abv, ptr %i.abw, align 16, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !77
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !77
  %i.aby = call fastcc noundef double @_ZNK3jxl12_GLOBAL__N_112LossFunction7ComputeERKNS_8optimize5ArrayIdLm8EEEPS4_b(ptr %i.abr, ptr %i.abq, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %4, i1 noundef zeroext false) #24
  %i.abz = load <4 x double>, ptr %4, align 8, !tbaa !13, !noalias !77 ; 7 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.acb = load <4 x double>, ptr %i.aca, align 8, !tbaa !13, !noalias !77 ; 7 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.acd = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ace = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.acf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ach = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.796.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.998.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aci = shufflevector <4 x double> %i.acb, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.acj = shufflevector <4 x double> %i.acb, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.ack = shufflevector <4 x double> %i.abz, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.acl = shufflevector <4 x double> %i.abz, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.acm = shufflevector <4 x double> %i.abz, <4 x double> %i.acb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %bb.n

.lr.ph.i18:                                       ; preds = %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit, %.lr.ph.i18
  %.02636.i = phi float [ %i.aco, %.lr.ph.i18 ], [ 0.000000e+00, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ]
  %.sroa.031.035.i = phi ptr [ %i.acp, %.lr.ph.i18 ], [ %.pre81, %_ZN3jxl12_GLOBAL__N_113GetNoiseLevelERKNS_6Image3IfEERKNSt3__16vectorIfNS5_9allocatorIfEEEEfm.exit ] ; 2 uses
  %i.acn = load float, ptr %.sroa.031.035.i, align 4, !tbaa !79
  %i.aco = fadd float %.02636.i, %i.acn           ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.sroa.031.035.i, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.acp, %i.je
  br i1 %.not.i19, label %bb.l, label %.lr.ph.i18

bb.n:                                             ; preds = %bb.z, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i
  %i.acq = phi i64 [ 1, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alz, %bb.z ]
  %.044255.i.i = phi i64 [ 0, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.1231.i.i, %bb.z ] ; 2 uses
  %.045254.i.i = phi i1 [ true, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ahx, %bb.z ]
  %.047253.i.i = phi double [ 1.000000e+00, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.3.i.i, %bb.z ] ; 4 uses
  %.049252.i.i = phi double [ %i.aby, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.150.i.i, %bb.z ] ; 2 uses
  %.051251.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.152.i.i, %bb.z ]
  %.053250.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.255.i.i, %bb.z ]
  %.057249.i.i = phi double [ undef, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %.158.i.i, %bb.z ]
  %i.acr = phi <4 x double> [ %i.abv, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aiz, %bb.z ] ; 4 uses
  %i.acs = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alp, %bb.z ] ; 8 uses
  %i.act = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajb, %bb.z ]
  %i.acu = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alq, %bb.z ] ; 8 uses
  %i.acv = phi <4 x double> [ %i.abv, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajd, %bb.z ] ; 4 uses
  %i.acw = phi <4 x double> [ %i.acb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alr, %bb.z ] ; 8 uses
  %i.acx = phi <4 x double> [ %i.acb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajf, %bb.z ]
  %i.acy = phi <4 x double> [ %i.acb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.als, %bb.z ] ; 8 uses
  %i.acz = phi <2 x double> [ %i.aci, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alt, %bb.z ] ; 2 uses
  %i.ada = phi <2 x double> [ %i.acj, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alu, %bb.z ] ; 2 uses
  %i.adb = phi <2 x double> [ %i.ack, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alv, %bb.z ] ; 2 uses
  %i.adc = phi <2 x double> [ %i.acl, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alw, %bb.z ] ; 2 uses
  %i.add = phi <4 x double> [ %i.acb, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.alx, %bb.z ] ; 5 uses
  %i.ade = phi <4 x double> [ %i.abz, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.aly, %bb.z ] ; 5 uses
  %i.adf = phi <8 x double> [ %i.acm, %_ZNSt3__16vectorIN3jxl10NoiseLevelENS_9allocatorIS2_EEED2B8nn180100Ev.exit.i ], [ %i.ajn, %bb.z ]
  %i.adg = extractelement <4 x double> %i.acy, i64 3 ; 4 uses
  %i.adh = extractelement <4 x double> %i.acy, i64 2 ; 4 uses
  %i.adi = extractelement <4 x double> %i.acy, i64 1 ; 4 uses
  %i.adj = extractelement <4 x double> %i.acy, i64 0 ; 4 uses
  %i.adk = extractelement <4 x double> %i.acw, i64 3 ; 4 uses
  %i.adl = extractelement <4 x double> %i.acw, i64 2 ; 4 uses
  %i.adm = extractelement <4 x double> %i.acw, i64 1 ; 4 uses
  %i.adn = extractelement <4 x double> %i.acw, i64 0 ; 4 uses
  %i.ado = extractelement <4 x double> %i.acu, i64 3 ; 4 uses
  %i.adp = extractelement <4 x double> %i.acu, i64 2 ; 4 uses
  %i.adq = extractelement <4 x double> %i.acu, i64 1 ; 4 uses
  %i.adr = extractelement <4 x double> %i.acu, i64 0 ; 4 uses
  %i.ads = extractelement <4 x double> %i.acs, i64 3 ; 4 uses
  %i.adt = extractelement <4 x double> %i.acs, i64 2 ; 4 uses
  %i.adu = extractelement <4 x double> %i.acs, i64 1 ; 4 uses
  %i.adv = extractelement <4 x double> %i.acs, i64 0 ; 4 uses
  br i1 %.045254.i.i, label %bb.o, label %._crit_edge.i.i

bb.o:                                             ; preds = %bb.n
  %i.adw = call double @llvm.fmuladd.f64(double %i.adv, double %i.adr, double 0.000000e+00)
  %i.adx = call double @llvm.fmuladd.f64(double %i.adu, double %i.adq, double %i.adw)
  %i.ady = call double @llvm.fmuladd.f64(double %i.adt, double %i.adp, double %i.adx)
  %i.adz = call double @llvm.fmuladd.f64(double %i.ads, double %i.ado, double %i.ady)
  %i.aea = call double @llvm.fmuladd.f64(double %i.adn, double %i.adj, double %i.adz)
  %i.aeb = call double @llvm.fmuladd.f64(double %i.adm, double %i.adi, double %i.aea)
  %i.aec = call double @llvm.fmuladd.f64(double %i.adl, double %i.adh, double %i.aeb)
  %i.aed = call noundef double @llvm.fmuladd.f64(double %i.adk, double %i.adg, double %i.aec) ; 2 uses
  %i.aee = fcmp ugt double %i.aed, 0.000000e+00
end_hunk_0
