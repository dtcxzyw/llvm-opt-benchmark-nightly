Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512bf16?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 98
begin_hunk_0_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.11507515.i = phi <16 x float> [ %i.gy, %.lr.ph519.i ], [ %.01506.i, %bb.e ]
  %.11510514.i = phi <16 x float> [ %i.ha, %.lr.ph519.i ], [ %.01509.i, %bb.e ]
  %.11513513.i = phi <16 x float> [ %i.hc, %.lr.ph519.i ], [ %.01512.i, %bb.e ]
  %.11516512.i = phi <16 x float> [ %i.hd, %.lr.ph519.i ], [ %.01515.i, %bb.e ]
  %.11523511.i = phi <16 x float> [ %i.hf, %.lr.ph519.i ], [ %.01522.i, %bb.e ]
  %.11526510.i = phi <16 x float> [ %i.hh, %.lr.ph519.i ], [ %.01525.i, %bb.e ]
  %.11563509.i = phi <16 x float> [ %i.hi, %.lr.ph519.i ], [ %.01562.i, %bb.e ]
  %.11566508.i = phi <16 x float> [ %i.hj, %.lr.ph519.i ], [ %.01565.i, %bb.e ]
  %.01568507.i = phi i32 [ %i.hm, %.lr.ph519.i ], [ 0, %bb.e ]
  %i.gm = load <8 x i64>, ptr %.01504516.i, align 1, !tbaa !17 ; 2 uses
  %i.gn = load <4 x i64>, ptr %.41404517.i, align 1, !tbaa !17
  %i.go = shufflevector <4 x i64> %i.gn, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.gp = bitcast <8 x i64> %i.go to <16 x i32>
  %i.gq = bitcast <8 x i64> %i.gm to <16 x i32>
  %i.gr = shufflevector <16 x i32> %i.gq, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.gs = shufflevector <16 x i32> %i.gp, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.gt = shufflevector <8 x i64> %i.go, <8 x i64> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.gu = bitcast <8 x i64> %i.gt to <16 x i32>
  %i.gv = shufflevector <16 x i32> %i.gu, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.gw = bitcast <8 x i64> %i.gm to <32 x bfloat> ; 4 uses
  %i.gx = bitcast <8 x i64> %i.go to <32 x bfloat> ; 2 uses
  %i.gy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11507515.i, <32 x bfloat> nofpclass(nan inf) %i.gw, <32 x bfloat> nofpclass(nan inf) %i.gx) ; 2 uses
  %i.gz = bitcast <16 x i32> %i.gs to <32 x bfloat> ; 2 uses
  %i.ha = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11510514.i, <32 x bfloat> nofpclass(nan inf) %i.gw, <32 x bfloat> nofpclass(nan inf) %i.gz) ; 2 uses
  %i.hb = bitcast <16 x i32> %i.gr to <32 x bfloat> ; 4 uses
  %i.hc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11513513.i, <32 x bfloat> nofpclass(nan inf) %i.hb, <32 x bfloat> nofpclass(nan inf) %i.gx) ; 2 uses
  %i.hd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11516512.i, <32 x bfloat> nofpclass(nan inf) %i.hb, <32 x bfloat> nofpclass(nan inf) %i.gz) ; 2 uses
  %i.he = bitcast <8 x i64> %i.gt to <32 x bfloat> ; 2 uses
  %i.hf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11523511.i, <32 x bfloat> nofpclass(nan inf) %i.gw, <32 x bfloat> nofpclass(nan inf) %i.he) ; 2 uses
  %i.hg = bitcast <16 x i32> %i.gv to <32 x bfloat> ; 2 uses
  %i.hh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11526510.i, <32 x bfloat> nofpclass(nan inf) %i.gw, <32 x bfloat> nofpclass(nan inf) %i.hg) ; 2 uses
  %i.hi = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11563509.i, <32 x bfloat> nofpclass(nan inf) %i.hb, <32 x bfloat> nofpclass(nan inf) %i.he) ; 2 uses
  %i.hj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11566508.i, <32 x bfloat> nofpclass(nan inf) %i.hb, <32 x bfloat> nofpclass(nan inf) %i.hg) ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.01504516.i, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %.41404517.i, i64 32
  %i.hm = add nuw nsw i32 %.01568507.i, 2         ; 2 uses
  %i.hn = or disjoint i32 %i.hm, 1
  %i.ho = icmp slt i32 %i.hn, %8
  br i1 %i.ho, label %.lr.ph519.i, label %.preheader419.loopexit.i, !llvm.loop !341

.lr.ph542.i:                                      ; preds = %.preheader419.i, %.lr.ph542.i
  %.51405541.i = phi ptr [ %i.ih, %.lr.ph542.i ], [ %.41404.lcssa.i, %.preheader419.i ] ; 2 uses
  %.11505540.i = phi ptr [ %i.ig, %.lr.ph542.i ], [ %.01504.lcssa.i, %.preheader419.i ] ; 2 uses
  %.21508539.i = phi <16 x float> [ %i.hy, %.lr.ph542.i ], [ %.11507.lcssa.i, %.preheader419.i ]
  %.21511538.i = phi <16 x float> [ %i.hz, %.lr.ph542.i ], [ %.11510.lcssa.i, %.preheader419.i ]
  %.21514537.i = phi <16 x float> [ %i.ia, %.lr.ph542.i ], [ %.11513.lcssa.i, %.preheader419.i ]
  %.21517536.i = phi <16 x float> [ %i.ib, %.lr.ph542.i ], [ %.11516.lcssa.i, %.preheader419.i ]
  %.21524535.i = phi <16 x float> [ %i.ic, %.lr.ph542.i ], [ %.11523.lcssa.i, %.preheader419.i ]
  %.21527534.i = phi <16 x float> [ %i.id, %.lr.ph542.i ], [ %.11526.lcssa.i, %.preheader419.i ]
  %.21564533.i = phi <16 x float> [ %i.ie, %.lr.ph542.i ], [ %.11563.lcssa.i, %.preheader419.i ]
  %.21567532.i = phi <16 x float> [ %i.if, %.lr.ph542.i ], [ %.11566.lcssa.i, %.preheader419.i ]
  %.11569531.i = phi i32 [ %i.ii, %.lr.ph542.i ], [ %.01568.lcssa.i, %.preheader419.i ]
  %i.hp = load <16 x bfloat>, ptr %.11505540.i, align 1, !tbaa !17
  %i.hq = fpext fast <16 x bfloat> %i.hp to <16 x float> ; 5 uses
  %i.hr = load <8 x bfloat>, ptr %.51405541.i, align 1, !tbaa !17
  %i.hs = fpext fast <8 x bfloat> %i.hr to <8 x float>
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 5 uses
  %i.hu = shufflevector <16 x float> %i.hq, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 4 uses
  %i.hv = shufflevector <16 x float> %i.ht, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.hw = shufflevector <16 x float> %i.ht, <16 x float> poison, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.hx = shufflevector <16 x float> %i.ht, <16 x float> poison, <16 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0, i32 13, i32 14, i32 15, i32 12, i32 9, i32 10, i32 11, i32 8> ; 2 uses
  %i.hy = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hq, <16 x float> nofpclass(nan inf) %i.ht, <16 x float> nofpclass(nan inf) %.21508539.i) ; 2 uses
  %i.hz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hq, <16 x float> nofpclass(nan inf) %i.hv, <16 x float> nofpclass(nan inf) %.21511538.i) ; 2 uses
  %i.ia = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hu, <16 x float> nofpclass(nan inf) %i.ht, <16 x float> nofpclass(nan inf) %.21514537.i) ; 2 uses
  %i.ib = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hu, <16 x float> nofpclass(nan inf) %i.hv, <16 x float> nofpclass(nan inf) %.21517536.i) ; 2 uses
  %i.ic = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hq, <16 x float> nofpclass(nan inf) %i.hw, <16 x float> nofpclass(nan inf) %.21524535.i) ; 2 uses
  %i.id = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hq, <16 x float> nofpclass(nan inf) %i.hx, <16 x float> nofpclass(nan inf) %.21527534.i) ; 2 uses
  %i.ie = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hu, <16 x float> nofpclass(nan inf) %i.hw, <16 x float> nofpclass(nan inf) %.21564533.i) ; 2 uses
  %i.if = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.hu, <16 x float> nofpclass(nan inf) %i.hx, <16 x float> nofpclass(nan inf) %.21567532.i) ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.11505540.i, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %.51405541.i, i64 16 ; 2 uses
  %i.ii = add nuw nsw i32 %.11569531.i, 1         ; 2 uses
  %exitcond1753.not.i = icmp eq i32 %i.ii, %8
  br i1 %exitcond1753.not.i, label %._crit_edge543.i, label %.lr.ph542.i, !llvm.loop !342

._crit_edge543.i:                                 ; preds = %.lr.ph542.i, %.preheader419.i
  %.21567.lcssa.i = phi <16 x float> [ %.11566.lcssa.i, %.preheader419.i ], [ %i.if, %.lr.ph542.i ]
  %.21564.lcssa.i = phi <16 x float> [ %.11563.lcssa.i, %.preheader419.i ], [ %i.ie, %.lr.ph542.i ]
  %.21527.lcssa.i = phi <16 x float> [ %.11526.lcssa.i, %.preheader419.i ], [ %i.id, %.lr.ph542.i ]
  %.21524.lcssa.i = phi <16 x float> [ %.11523.lcssa.i, %.preheader419.i ], [ %i.ic, %.lr.ph542.i ]
  %.21517.lcssa.i = phi <16 x float> [ %.11516.lcssa.i, %.preheader419.i ], [ %i.ib, %.lr.ph542.i ]
  %.21514.lcssa.i = phi <16 x float> [ %.11513.lcssa.i, %.preheader419.i ], [ %i.ia, %.lr.ph542.i ]
  %.21511.lcssa.i = phi <16 x float> [ %.11510.lcssa.i, %.preheader419.i ], [ %i.hz, %.lr.ph542.i ]
  %.21508.lcssa.i = phi <16 x float> [ %.11507.lcssa.i, %.preheader419.i ], [ %i.hy, %.lr.ph542.i ]
  %.51405.lcssa.i = phi ptr [ %.41404.lcssa.i, %.preheader419.i ], [ %i.ih, %.lr.ph542.i ] ; 2 uses
  store <16 x float> %.21508.lcssa.i, ptr %.21383555.i, align 64, !tbaa !17
  %i.ij = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 64
  store <16 x float> %.21511.lcssa.i, ptr %i.ij, align 64, !tbaa !17
  %i.ik = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 128
  store <16 x float> %.21514.lcssa.i, ptr %i.ik, align 64, !tbaa !17
  %i.il = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 192
  store <16 x float> %.21517.lcssa.i, ptr %i.il, align 64, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 256
  store <16 x float> %.21524.lcssa.i, ptr %i.im, align 64, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 320
  store <16 x float> %.21527.lcssa.i, ptr %i.in, align 64, !tbaa !17
  %i.io = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 384
  store <16 x float> %.21564.lcssa.i, ptr %i.io, align 64, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 448
  store <16 x float> %.21567.lcssa.i, ptr %i.ip, align 64, !tbaa !17
  %i.iq = getelementptr inbounds nuw i8, ptr %.21383555.i, i64 512 ; 2 uses
  %i.ir = add nuw nsw i32 %.11416553.i, 8         ; 3 uses
  %i.is = or disjoint i32 %i.ir, 7
  %i.it = icmp slt i32 %i.is, %6
  br i1 %i.it, label %.lr.ph556.i, label %.preheader423.i, !llvm.loop !343

.preheader422.i:                                  ; preds = %._crit_edge584.i, %.preheader423.i
  %.21417.lcssa.i = phi i32 [ %.11416.lcssa.i, %.preheader423.i ], [ %i.na, %._crit_edge584.i ] ; 3 uses
  %.61406.lcssa.i = phi ptr [ %.31403.lcssa.i, %.preheader423.i ], [ %.81408.lcssa.i, %._crit_edge584.i ] ; 2 uses
  %.31384.lcssa.i = phi ptr [ %.21383.lcssa.i, %.preheader423.i ], [ %i.mz, %._crit_edge584.i ] ; 2 uses
  %i.iu = or disjoint i32 %.21417.lcssa.i, 1
  %i.iv = icmp slt i32 %i.iu, %6
  br i1 %i.iv, label %.lr.ph622.i, label %.preheader421.i

.lr.ph593.i:                                      ; preds = %.preheader423.i, %._crit_edge584.i
  %.31384592.i = phi ptr [ %i.mz, %._crit_edge584.i ], [ %.21383.lcssa.i, %.preheader423.i ] ; 9 uses
  %.61406591.i = phi ptr [ %.81408.lcssa.i, %._crit_edge584.i ], [ %.31403.lcssa.i, %.preheader423.i ] ; 4 uses
  %.21417590.i = phi i32 [ %i.na, %._crit_edge584.i ], [ %.11416.lcssa.i, %.preheader423.i ]
  br i1 %.not1811.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph593.i
  %i.iw = load <16 x float>, ptr %.31384592.i, align 64, !tbaa !17
  %i.ix = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 64
  %i.iy = load <16 x float>, ptr %i.ix, align 64, !tbaa !17
  %i.iz = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 128
  %i.ja = load <16 x float>, ptr %i.iz, align 64, !tbaa !17
  %i.jb = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 192
  %i.jc = load <16 x float>, ptr %i.jb, align 64, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph593.i
  %.01591.i = phi nsz <16 x float> [ %i.jc, %bb.f ], [ zeroinitializer, %.lr.ph593.i ] ; 3 uses
  %.01588.i = phi nsz <16 x float> [ %i.ja, %bb.f ], [ zeroinitializer, %.lr.ph593.i ] ; 3 uses
  %.01575.i = phi nsz <16 x float> [ %i.iy, %bb.f ], [ zeroinitializer, %.lr.ph593.i ] ; 3 uses
  %.01572.i = phi nsz <16 x float> [ %i.iw, %bb.f ], [ zeroinitializer, %.lr.ph593.i ] ; 3 uses
  br i1 %i.c, label %.lr.ph568.i.preheader, label %.preheader418.i

.lr.ph568.i.preheader:                            ; preds = %bb.g
  br i1 %i.v, label %.lr.ph568.i.epil.preheader, label %.lr.ph568.i

.preheader418.loopexit.i.unr-lcssa:               ; preds = %.lr.ph568.i
  br i1 %lcmp.mod.not.not, label %.lr.ph568.i.epil.preheader, label %.preheader418.loopexit.i

.lr.ph568.i.epil.preheader:                       ; preds = %.preheader418.loopexit.i.unr-lcssa, %.lr.ph568.i.preheader
  %.71407566.i.epil.init = phi ptr [ %.61406591.i, %.lr.ph568.i.preheader ], [ %i.lq, %.preheader418.loopexit.i.unr-lcssa ]
  %.01570565.i.epil.init = phi ptr [ %.01380652.i, %.lr.ph568.i.preheader ], [ %i.lp, %.preheader418.loopexit.i.unr-lcssa ]
  %.11573564.i.epil.init = phi <16 x float> [ %.01572.i, %.lr.ph568.i.preheader ], [ %i.li, %.preheader418.loopexit.i.unr-lcssa ]
  %.11576563.i.epil.init = phi <16 x float> [ %.01575.i, %.lr.ph568.i.preheader ], [ %i.ll, %.preheader418.loopexit.i.unr-lcssa ]
  %.11589562.i.epil.init = phi <16 x float> [ %.01588.i, %.lr.ph568.i.preheader ], [ %i.ln, %.preheader418.loopexit.i.unr-lcssa ]
  %.11592561.i.epil.init = phi <16 x float> [ %.01591.i, %.lr.ph568.i.preheader ], [ %i.lo, %.preheader418.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2067)
  %i.jd = load <8 x i64>, ptr %.01570565.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.je = load <4 x i32>, ptr %.71407566.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.jf = bitcast <8 x i64> %i.jd to <16 x i32>
  %i.jg = shufflevector <16 x i32> %i.jf, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.jh = bitcast <8 x i64> %i.jd to <32 x bfloat> ; 2 uses
  %i.ji = bitcast <4 x i32> %i.je to <8 x bfloat>
  %i.jj = shufflevector <8 x bfloat> %i.ji, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.jk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11573564.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.jh, <32 x bfloat> nofpclass(nan inf) %i.jj)
  %i.jl = bitcast <4 x i32> %i.je to <8 x bfloat>
  %i.jm = shufflevector <8 x bfloat> %i.jl, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.jn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11576563.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.jh, <32 x bfloat> nofpclass(nan inf) %i.jm)
  %i.jo = bitcast <16 x i32> %i.jg to <32 x bfloat> ; 2 uses
  %i.jp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11589562.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.jo, <32 x bfloat> nofpclass(nan inf) %i.jj)
  %i.jq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11592561.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.jo, <32 x bfloat> nofpclass(nan inf) %i.jm)
  br label %.preheader418.loopexit.i

.preheader418.loopexit.i:                         ; preds = %.preheader418.loopexit.i.unr-lcssa, %.lr.ph568.i.epil.preheader
  %.lcssa2043 = phi <16 x float> [ %i.li, %.preheader418.loopexit.i.unr-lcssa ], [ %i.jk, %.lr.ph568.i.epil.preheader ]
  %.lcssa2042 = phi <16 x float> [ %i.ll, %.preheader418.loopexit.i.unr-lcssa ], [ %i.jn, %.lr.ph568.i.epil.preheader ]
  %.lcssa2041 = phi <16 x float> [ %i.ln, %.preheader418.loopexit.i.unr-lcssa ], [ %i.jp, %.lr.ph568.i.epil.preheader ]
  %.lcssa2040 = phi <16 x float> [ %i.lo, %.preheader418.loopexit.i.unr-lcssa ], [ %i.jq, %.lr.ph568.i.epil.preheader ]
  %i.jr = getelementptr i8, ptr %.61406591.i, i64 %i.m
  %scevgep1754.i = getelementptr i8, ptr %i.jr, i64 16
  br label %.preheader418.i

.preheader418.i:                                  ; preds = %.preheader418.loopexit.i, %bb.g
  %.01594.lcssa.i = phi i32 [ 0, %bb.g ], [ %i.h, %.preheader418.loopexit.i ] ; 5 uses
  %.11592.lcssa.i = phi <16 x float> [ %.01591.i, %bb.g ], [ %.lcssa2040, %.preheader418.loopexit.i ] ; 3 uses
  %.11589.lcssa.i = phi <16 x float> [ %.01588.i, %bb.g ], [ %.lcssa2041, %.preheader418.loopexit.i ] ; 3 uses
  %.11576.lcssa.i = phi <16 x float> [ %.01575.i, %bb.g ], [ %.lcssa2042, %.preheader418.loopexit.i ] ; 3 uses
  %.11573.lcssa.i = phi <16 x float> [ %.01572.i, %bb.g ], [ %.lcssa2043, %.preheader418.loopexit.i ] ; 3 uses
  %.01570.lcssa.i = phi ptr [ %.01380652.i, %bb.g ], [ %indvars.iv, %.preheader418.loopexit.i ] ; 3 uses
  %.71407.lcssa.i = phi ptr [ %.61406591.i, %bb.g ], [ %scevgep1754.i, %.preheader418.loopexit.i ] ; 4 uses
  %i.js = icmp slt i32 %.01594.lcssa.i, %8
  br i1 %i.js, label %.lr.ph583.i.preheader, label %._crit_edge584.i

.lr.ph583.i.preheader:                            ; preds = %.preheader418.i
  %i.jt = sub i32 %8, %.01594.lcssa.i
  %.neg = add i32 %.01594.lcssa.i, 1
  %xtraiter2068 = and i32 %i.jt, 1
  %lcmp.mod2069.not = icmp eq i32 %xtraiter2068, 0
  br i1 %lcmp.mod2069.not, label %.lr.ph583.i.prol.loopexit, label %.lr.ph583.i.prol

.lr.ph583.i.prol:                                 ; preds = %.lr.ph583.i.preheader
  %i.ju = load <16 x bfloat>, ptr %.01570.lcssa.i, align 1, !tbaa !17
  %i.jv = fpext fast <16 x bfloat> %i.ju to <16 x float> ; 3 uses
  %i.jw = load i64, ptr %.71407.lcssa.i, align 1, !tbaa !17
  %i.jx = insertelement <2 x i64> poison, i64 %i.jw, i64 0
  %i.jy = bitcast <2 x i64> %i.jx to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.jy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.jz = bitcast <8 x i16> %9 to <4 x float>     ; 2 uses
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.kb = shufflevector <16 x float> %i.jv, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.kc = shufflevector <4 x float> %i.jz, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.kd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.jv, <16 x float> nofpclass(nan inf) %i.ka, <16 x float> nofpclass(nan inf) %.11573.lcssa.i) ; 2 uses
  %i.ke = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.jv, <16 x float> nofpclass(nan inf) %i.kc, <16 x float> nofpclass(nan inf) %.11576.lcssa.i) ; 2 uses
  %i.kf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.kb, <16 x float> nofpclass(nan inf) %i.ka, <16 x float> nofpclass(nan inf) %.11589.lcssa.i) ; 2 uses
  %i.kg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.kb, <16 x float> nofpclass(nan inf) %i.kc, <16 x float> nofpclass(nan inf) %.11592.lcssa.i) ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.01570.lcssa.i, i64 32
  %i.ki = getelementptr inbounds nuw i8, ptr %.71407.lcssa.i, i64 8 ; 2 uses
  %i.kj = add nuw nsw i32 %.01594.lcssa.i, 1
  br label %.lr.ph583.i.prol.loopexit

.lr.ph583.i.prol.loopexit:                        ; preds = %.lr.ph583.i.prol, %.lr.ph583.i.preheader
  %.lcssa2048.unr = phi <16 x float> [ poison, %.lr.ph583.i.preheader ], [ %i.kd, %.lr.ph583.i.prol ]
  %.lcssa2047.unr = phi <16 x float> [ poison, %.lr.ph583.i.preheader ], [ %i.ke, %.lr.ph583.i.prol ]
  %.lcssa2046.unr = phi <16 x float> [ poison, %.lr.ph583.i.preheader ], [ %i.kf, %.lr.ph583.i.prol ]
  %.lcssa2045.unr = phi <16 x float> [ poison, %.lr.ph583.i.preheader ], [ %i.kg, %.lr.ph583.i.prol ]
  %.lcssa2044.unr = phi ptr [ poison, %.lr.ph583.i.preheader ], [ %i.ki, %.lr.ph583.i.prol ]
  %.81408582.i.unr = phi ptr [ %.71407.lcssa.i, %.lr.ph583.i.preheader ], [ %i.ki, %.lr.ph583.i.prol ]
  %.11571581.i.unr = phi ptr [ %.01570.lcssa.i, %.lr.ph583.i.preheader ], [ %i.kh, %.lr.ph583.i.prol ]
  %.21574580.i.unr = phi <16 x float> [ %.11573.lcssa.i, %.lr.ph583.i.preheader ], [ %i.kd, %.lr.ph583.i.prol ]
  %.21577579.i.unr = phi <16 x float> [ %.11576.lcssa.i, %.lr.ph583.i.preheader ], [ %i.ke, %.lr.ph583.i.prol ]
  %.21590578.i.unr = phi <16 x float> [ %.11589.lcssa.i, %.lr.ph583.i.preheader ], [ %i.kf, %.lr.ph583.i.prol ]
  %.21593577.i.unr = phi <16 x float> [ %.11592.lcssa.i, %.lr.ph583.i.preheader ], [ %i.kg, %.lr.ph583.i.prol ]
  %.11595576.i.unr = phi i32 [ %.01594.lcssa.i, %.lr.ph583.i.preheader ], [ %i.kj, %.lr.ph583.i.prol ]
  %i.kk = icmp eq i32 %8, %.neg
  br i1 %i.kk, label %._crit_edge584.i, label %.lr.ph583.i

.lr.ph568.i:                                      ; preds = %.lr.ph568.i.preheader, %.lr.ph568.i
  %.71407566.i = phi ptr [ %i.lq, %.lr.ph568.i ], [ %.61406591.i, %.lr.ph568.i.preheader ] ; 3 uses
  %.01570565.i = phi ptr [ %i.lp, %.lr.ph568.i ], [ %.01380652.i, %.lr.ph568.i.preheader ] ; 3 uses
  %.11573564.i = phi <16 x float> [ %i.li, %.lr.ph568.i ], [ %.01572.i, %.lr.ph568.i.preheader ]
  %.11576563.i = phi <16 x float> [ %i.ll, %.lr.ph568.i ], [ %.01575.i, %.lr.ph568.i.preheader ]
  %.11589562.i = phi <16 x float> [ %i.ln, %.lr.ph568.i ], [ %.01588.i, %.lr.ph568.i.preheader ]
  %.11592561.i = phi <16 x float> [ %i.lo, %.lr.ph568.i ], [ %.01591.i, %.lr.ph568.i.preheader ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph568.i ], [ 0, %.lr.ph568.i.preheader ]
  %i.kl = load <8 x i64>, ptr %.01570565.i, align 1, !tbaa !17 ; 2 uses
  %i.km = load <4 x i32>, ptr %.71407566.i, align 1, !tbaa !17 ; 2 uses
  %i.kn = bitcast <8 x i64> %i.kl to <16 x i32>
  %i.ko = shufflevector <16 x i32> %i.kn, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.kp = bitcast <8 x i64> %i.kl to <32 x bfloat> ; 2 uses
  %i.kq = bitcast <4 x i32> %i.km to <8 x bfloat>
  %i.kr = shufflevector <8 x bfloat> %i.kq, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.ks = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11573564.i, <32 x bfloat> nofpclass(nan inf) %i.kp, <32 x bfloat> nofpclass(nan inf) %i.kr)
  %i.kt = bitcast <4 x i32> %i.km to <8 x bfloat>
  %i.ku = shufflevector <8 x bfloat> %i.kt, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.kv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11576563.i, <32 x bfloat> nofpclass(nan inf) %i.kp, <32 x bfloat> nofpclass(nan inf) %i.ku)
  %i.kw = bitcast <16 x i32> %i.ko to <32 x bfloat> ; 2 uses
  %i.kx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11589562.i, <32 x bfloat> nofpclass(nan inf) %i.kw, <32 x bfloat> nofpclass(nan inf) %i.kr)
  %i.ky = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11592561.i, <32 x bfloat> nofpclass(nan inf) %i.kw, <32 x bfloat> nofpclass(nan inf) %i.ku)
  %i.kz = getelementptr inbounds nuw i8, ptr %.01570565.i, i64 64
  %i.la = getelementptr inbounds nuw i8, ptr %.71407566.i, i64 16
  %i.lb = load <8 x i64>, ptr %i.kz, align 1, !tbaa !17 ; 2 uses
  %i.lc = load <4 x i32>, ptr %i.la, align 1, !tbaa !17 ; 2 uses
  %i.ld = bitcast <8 x i64> %i.lb to <16 x i32>
  %i.le = shufflevector <16 x i32> %i.ld, <16 x i32> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13>
  %i.lf = bitcast <8 x i64> %i.lb to <32 x bfloat> ; 2 uses
  %i.lg = bitcast <4 x i32> %i.lc to <8 x bfloat>
  %i.lh = shufflevector <8 x bfloat> %i.lg, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.li = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.ks, <32 x bfloat> nofpclass(nan inf) %i.lf, <32 x bfloat> nofpclass(nan inf) %i.lh) ; 3 uses
  %i.lj = bitcast <4 x i32> %i.lc to <8 x bfloat>
  %i.lk = shufflevector <8 x bfloat> %i.lj, <8 x bfloat> poison, <32 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.ll = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.kv, <32 x bfloat> nofpclass(nan inf) %i.lf, <32 x bfloat> nofpclass(nan inf) %i.lk) ; 3 uses
  %i.lm = bitcast <16 x i32> %i.le to <32 x bfloat> ; 2 uses
  %i.ln = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.kx, <32 x bfloat> nofpclass(nan inf) %i.lm, <32 x bfloat> nofpclass(nan inf) %i.lh) ; 3 uses
  %i.lo = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.ky, <32 x bfloat> nofpclass(nan inf) %i.lm, <32 x bfloat> nofpclass(nan inf) %i.lk) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.01570565.i, i64 128 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.71407566.i, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader418.loopexit.i.unr-lcssa, label %.lr.ph568.i, !llvm.loop !344

.lr.ph583.i:                                      ; preds = %.lr.ph583.i.prol.loopexit, %.lr.ph583.i
  %.81408582.i = phi ptr [ %i.mu, %.lr.ph583.i ], [ %.81408582.i.unr, %.lr.ph583.i.prol.loopexit ] ; 3 uses
  %.11571581.i = phi ptr [ %i.mt, %.lr.ph583.i ], [ %.11571581.i.unr, %.lr.ph583.i.prol.loopexit ] ; 3 uses
  %.21574580.i = phi <16 x float> [ %i.mp, %.lr.ph583.i ], [ %.21574580.i.unr, %.lr.ph583.i.prol.loopexit ]
  %.21577579.i = phi <16 x float> [ %i.mq, %.lr.ph583.i ], [ %.21577579.i.unr, %.lr.ph583.i.prol.loopexit ]
  %.21590578.i = phi <16 x float> [ %i.mr, %.lr.ph583.i ], [ %.21590578.i.unr, %.lr.ph583.i.prol.loopexit ]
  %.21593577.i = phi <16 x float> [ %i.ms, %.lr.ph583.i ], [ %.21593577.i.unr, %.lr.ph583.i.prol.loopexit ]
  %.11595576.i = phi i32 [ %i.mv, %.lr.ph583.i ], [ %.11595576.i.unr, %.lr.ph583.i.prol.loopexit ]
  %i.lr = load <16 x bfloat>, ptr %.11571581.i, align 1, !tbaa !17
  %i.ls = fpext fast <16 x bfloat> %i.lr to <16 x float> ; 3 uses
  %i.lt = load i64, ptr %.81408582.i, align 1, !tbaa !17
  %i.lu = insertelement <2 x i64> poison, i64 %i.lt, i64 0
  %i.lv = bitcast <2 x i64> %i.lu to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lw = bitcast <8 x i16> %10 to <4 x float>    ; 2 uses
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ly = shufflevector <16 x float> %i.ls, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.lz = shufflevector <4 x float> %i.lw, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.ma = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ls, <16 x float> nofpclass(nan inf) %i.lx, <16 x float> nofpclass(nan inf) %.21574580.i)
  %i.mb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ls, <16 x float> nofpclass(nan inf) %i.lz, <16 x float> nofpclass(nan inf) %.21577579.i)
  %i.mc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ly, <16 x float> nofpclass(nan inf) %i.lx, <16 x float> nofpclass(nan inf) %.21590578.i)
  %i.md = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ly, <16 x float> nofpclass(nan inf) %i.lz, <16 x float> nofpclass(nan inf) %.21593577.i)
  %i.me = getelementptr inbounds nuw i8, ptr %.11571581.i, i64 32
  %i.mf = getelementptr inbounds nuw i8, ptr %.81408582.i, i64 8
  %i.mg = load <16 x bfloat>, ptr %i.me, align 1, !tbaa !17
  %i.mh = fpext fast <16 x bfloat> %i.mg to <16 x float> ; 3 uses
  %i.mi = load i64, ptr %i.mf, align 1, !tbaa !17
  %i.mj = insertelement <2 x i64> poison, i64 %i.mi, i64 0
  %i.mk = bitcast <2 x i64> %i.mj to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ml = bitcast <8 x i16> %11 to <4 x float>    ; 2 uses
  %i.mm = shufflevector <4 x float> %i.ml, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.mn = shufflevector <16 x float> %i.mh, <16 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5, i32 10, i32 11, i32 8, i32 9, i32 14, i32 15, i32 12, i32 13> ; 2 uses
  %i.mo = shufflevector <4 x float> %i.ml, <4 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.mp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mh, <16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.ma) ; 2 uses
  %i.mq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mh, <16 x float> nofpclass(nan inf) %i.mo, <16 x float> nofpclass(nan inf) %i.mb) ; 2 uses
  %i.mr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mn, <16 x float> nofpclass(nan inf) %i.mm, <16 x float> nofpclass(nan inf) %i.mc) ; 2 uses
  %i.ms = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.mn, <16 x float> nofpclass(nan inf) %i.mo, <16 x float> nofpclass(nan inf) %i.md) ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.11571581.i, i64 64
  %i.mu = getelementptr inbounds nuw i8, ptr %.81408582.i, i64 16 ; 2 uses
  %i.mv = add nuw nsw i32 %.11595576.i, 2         ; 2 uses
  %exitcond1755.not.i.1 = icmp eq i32 %i.mv, %8
  br i1 %exitcond1755.not.i.1, label %._crit_edge584.i, label %.lr.ph583.i, !llvm.loop !345

._crit_edge584.i:                                 ; preds = %.lr.ph583.i.prol.loopexit, %.lr.ph583.i, %.preheader418.i
  %.21593.lcssa.i = phi <16 x float> [ %.11592.lcssa.i, %.preheader418.i ], [ %.lcssa2045.unr, %.lr.ph583.i.prol.loopexit ], [ %i.ms, %.lr.ph583.i ]
  %.21590.lcssa.i = phi <16 x float> [ %.11589.lcssa.i, %.preheader418.i ], [ %.lcssa2046.unr, %.lr.ph583.i.prol.loopexit ], [ %i.mr, %.lr.ph583.i ]
  %.21577.lcssa.i = phi <16 x float> [ %.11576.lcssa.i, %.preheader418.i ], [ %.lcssa2047.unr, %.lr.ph583.i.prol.loopexit ], [ %i.mq, %.lr.ph583.i ]
  %.21574.lcssa.i = phi <16 x float> [ %.11573.lcssa.i, %.preheader418.i ], [ %.lcssa2048.unr, %.lr.ph583.i.prol.loopexit ], [ %i.mp, %.lr.ph583.i ]
  %.81408.lcssa.i = phi ptr [ %.71407.lcssa.i, %.preheader418.i ], [ %.lcssa2044.unr, %.lr.ph583.i.prol.loopexit ], [ %i.mu, %.lr.ph583.i ] ; 2 uses
  store <16 x float> %.21574.lcssa.i, ptr %.31384592.i, align 64, !tbaa !17
  %i.mw = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 64
  store <16 x float> %.21577.lcssa.i, ptr %i.mw, align 64, !tbaa !17
  %i.mx = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 128
  store <16 x float> %.21590.lcssa.i, ptr %i.mx, align 64, !tbaa !17
  %i.my = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 192
  store <16 x float> %.21593.lcssa.i, ptr %i.my, align 64, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %.31384592.i, i64 256 ; 2 uses
  %i.na = add nuw nsw i32 %.21417590.i, 4         ; 3 uses
  %i.nb = or disjoint i32 %i.na, 3
  %i.nc = icmp slt i32 %i.nb, %6
  br i1 %i.nc, label %.lr.ph593.i, label %.preheader422.i, !llvm.loop !346

.preheader421.i:                                  ; preds = %._crit_edge615.i, %.preheader422.i
  %.31418.lcssa.i = phi i32 [ %.21417.lcssa.i, %.preheader422.i ], [ %i.qk, %._crit_edge615.i ] ; 2 uses
  %.91409.lcssa.i = phi ptr [ %.61406.lcssa.i, %.preheader422.i ], [ %.111411.lcssa.i, %._crit_edge615.i ]
  %.41385.lcssa.i = phi ptr [ %.31384.lcssa.i, %.preheader422.i ], [ %i.qj, %._crit_edge615.i ] ; 2 uses
  %i.nd = icmp slt i32 %.31418.lcssa.i, %6
  br i1 %i.nd, label %.lr.ph647.i, label %._crit_edge648.i

.lr.ph622.i:                                      ; preds = %.preheader422.i, %._crit_edge615.i
  %.41385621.i = phi ptr [ %i.qj, %._crit_edge615.i ], [ %.31384.lcssa.i, %.preheader422.i ] ; 5 uses
  %.91409620.i = phi ptr [ %.111411.lcssa.i, %._crit_edge615.i ], [ %.61406.lcssa.i, %.preheader422.i ] ; 4 uses
  %.31418619.i = phi i32 [ %i.qk, %._crit_edge615.i ], [ %.21417.lcssa.i, %.preheader422.i ]
  br i1 %.not1811.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph622.i
  %i.ne = load <16 x float>, ptr %.41385621.i, align 64, !tbaa !17
  %i.nf = getelementptr inbounds nuw i8, ptr %.41385621.i, i64 64
  %i.ng = load <16 x float>, ptr %i.nf, align 64, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph622.i
  %.01601.i = phi nsz <16 x float> [ %i.ng, %bb.h ], [ zeroinitializer, %.lr.ph622.i ] ; 3 uses
  %.01598.i = phi nsz <16 x float> [ %i.ne, %bb.h ], [ zeroinitializer, %.lr.ph622.i ] ; 3 uses
  br i1 %i.c, label %.lr.ph603.i.preheader, label %.preheader417.i

.lr.ph603.i.preheader:                            ; preds = %bb.i
  br i1 %i.x, label %.lr.ph603.i.epil.preheader, label %.lr.ph603.i

.preheader417.loopexit.i.unr-lcssa:               ; preds = %.lr.ph603.i
  br i1 %lcmp.mod2071.not.not, label %.lr.ph603.i.epil.preheader, label %.preheader417.loopexit.i

.lr.ph603.i.epil.preheader:                       ; preds = %.preheader417.loopexit.i.unr-lcssa, %.lr.ph603.i.preheader
  %.101410601.i.epil.init = phi ptr [ %.91409620.i, %.lr.ph603.i.preheader ], [ %i.pi, %.preheader417.loopexit.i.unr-lcssa ]
  %.01596600.i.epil.init = phi ptr [ %.01380652.i, %.lr.ph603.i.preheader ], [ %i.ph, %.preheader417.loopexit.i.unr-lcssa ]
  %.11599599.i.epil.init = phi <16 x float> [ %.01598.i, %.lr.ph603.i.preheader ], [ %i.pe, %.preheader417.loopexit.i.unr-lcssa ]
  %.11602598.i.epil.init = phi <16 x float> [ %.01601.i, %.lr.ph603.i.preheader ], [ %i.pg, %.preheader417.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2074)
  %i.nh = load <32 x bfloat>, ptr %.01596600.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.ni = load double, ptr %.101410601.i.epil.init, align 8, !tbaa !441
  %i.nj = insertelement <8 x double> poison, double %i.ni, i64 0
  %i.nk = bitcast <8 x double> %i.nj to <8 x i64>
  %i.nl = shufflevector <8 x i64> %i.nk, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.nm = bitcast <8 x i64> %i.nl to <16 x i32>
  %i.nn = shufflevector <16 x i32> %i.nm, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.no = bitcast <8 x i64> %i.nl to <32 x bfloat>
  %i.np = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11599599.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.nh, <32 x bfloat> nofpclass(nan inf) %i.no)
  %i.nq = bitcast <16 x i32> %i.nn to <32 x bfloat>
  %i.nr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11602598.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.nh, <32 x bfloat> nofpclass(nan inf) %i.nq)
  br label %.preheader417.loopexit.i

.preheader417.loopexit.i:                         ; preds = %.preheader417.loopexit.i.unr-lcssa, %.lr.ph603.i.epil.preheader
  %.lcssa2052 = phi <16 x float> [ %i.pe, %.preheader417.loopexit.i.unr-lcssa ], [ %i.np, %.lr.ph603.i.epil.preheader ]
  %.lcssa2051 = phi <16 x float> [ %i.pg, %.preheader417.loopexit.i.unr-lcssa ], [ %i.nr, %.lr.ph603.i.epil.preheader ]
  %i.ns = getelementptr i8, ptr %.91409620.i, i64 %i.n
  %scevgep1756.i = getelementptr i8, ptr %i.ns, i64 8
  br label %.preheader417.i

.preheader417.i:                                  ; preds = %.preheader417.loopexit.i, %bb.i
  %.01604.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.h, %.preheader417.loopexit.i ] ; 5 uses
  %.11602.lcssa.i = phi <16 x float> [ %.01601.i, %bb.i ], [ %.lcssa2051, %.preheader417.loopexit.i ] ; 3 uses
  %.11599.lcssa.i = phi <16 x float> [ %.01598.i, %bb.i ], [ %.lcssa2052, %.preheader417.loopexit.i ] ; 3 uses
  %.01596.lcssa.i = phi ptr [ %.01380652.i, %bb.i ], [ %indvars.iv, %.preheader417.loopexit.i ] ; 3 uses
  %.101410.lcssa.i = phi ptr [ %.91409620.i, %bb.i ], [ %scevgep1756.i, %.preheader417.loopexit.i ] ; 4 uses
  %i.nt = icmp slt i32 %.01604.lcssa.i, %8
  br i1 %i.nt, label %.lr.ph614.i.preheader, label %._crit_edge615.i

.lr.ph614.i.preheader:                            ; preds = %.preheader417.i
  %i.nu = sub i32 %8, %.01604.lcssa.i
  %.neg2238 = add i32 %.01604.lcssa.i, 1
  %xtraiter2077 = and i32 %i.nu, 1
  %lcmp.mod2078.not = icmp eq i32 %xtraiter2077, 0
  br i1 %lcmp.mod2078.not, label %.lr.ph614.i.prol.loopexit, label %.lr.ph614.i.prol

.lr.ph614.i.prol:                                 ; preds = %.lr.ph614.i.preheader
  %i.nv = load <16 x bfloat>, ptr %.01596.lcssa.i, align 1, !tbaa !17
  %i.nw = fpext fast <16 x bfloat> %i.nv to <16 x float> ; 2 uses
  %i.nx = load i32, ptr %.101410.lcssa.i, align 4, !tbaa !442
  %i.ny = insertelement <8 x i32> poison, i32 %i.nx, i64 0
  %i.nz = shufflevector <8 x i32> %i.ny, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.oa = bitcast <8 x i32> %i.nz to <16 x bfloat>
  %i.ob = fpext fast <16 x bfloat> %i.oa to <16 x float> ; 2 uses
  %i.oc = shufflevector <16 x float> %i.ob, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.od = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nw, <16 x float> nofpclass(nan inf) %i.ob, <16 x float> nofpclass(nan inf) %.11599.lcssa.i) ; 2 uses
  %i.oe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.nw, <16 x float> nofpclass(nan inf) %i.oc, <16 x float> nofpclass(nan inf) %.11602.lcssa.i) ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.01596.lcssa.i, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %.101410.lcssa.i, i64 4 ; 2 uses
  %i.oh = add nuw nsw i32 %.01604.lcssa.i, 1
  br label %.lr.ph614.i.prol.loopexit

.lr.ph614.i.prol.loopexit:                        ; preds = %.lr.ph614.i.prol, %.lr.ph614.i.preheader
  %.lcssa2055.unr = phi <16 x float> [ poison, %.lr.ph614.i.preheader ], [ %i.od, %.lr.ph614.i.prol ]
  %.lcssa2054.unr = phi <16 x float> [ poison, %.lr.ph614.i.preheader ], [ %i.oe, %.lr.ph614.i.prol ]
  %.lcssa2053.unr = phi ptr [ poison, %.lr.ph614.i.preheader ], [ %i.og, %.lr.ph614.i.prol ]
  %.111411613.i.unr = phi ptr [ %.101410.lcssa.i, %.lr.ph614.i.preheader ], [ %i.og, %.lr.ph614.i.prol ]
  %.11597612.i.unr = phi ptr [ %.01596.lcssa.i, %.lr.ph614.i.preheader ], [ %i.of, %.lr.ph614.i.prol ]
  %.21600611.i.unr = phi <16 x float> [ %.11599.lcssa.i, %.lr.ph614.i.preheader ], [ %i.od, %.lr.ph614.i.prol ]
  %.21603610.i.unr = phi <16 x float> [ %.11602.lcssa.i, %.lr.ph614.i.preheader ], [ %i.oe, %.lr.ph614.i.prol ]
  %.11605609.i.unr = phi i32 [ %.01604.lcssa.i, %.lr.ph614.i.preheader ], [ %i.oh, %.lr.ph614.i.prol ]
  %i.oi = icmp eq i32 %8, %.neg2238
  br i1 %i.oi, label %._crit_edge615.i, label %.lr.ph614.i

.lr.ph603.i:                                      ; preds = %.lr.ph603.i.preheader, %.lr.ph603.i
  %.101410601.i = phi ptr [ %i.pi, %.lr.ph603.i ], [ %.91409620.i, %.lr.ph603.i.preheader ] ; 3 uses
  %.01596600.i = phi ptr [ %i.ph, %.lr.ph603.i ], [ %.01380652.i, %.lr.ph603.i.preheader ] ; 3 uses
  %.11599599.i = phi <16 x float> [ %i.pe, %.lr.ph603.i ], [ %.01598.i, %.lr.ph603.i.preheader ]
  %.11602598.i = phi <16 x float> [ %i.pg, %.lr.ph603.i ], [ %.01601.i, %.lr.ph603.i.preheader ]
  %niter2076 = phi i32 [ %niter2076.next.1, %.lr.ph603.i ], [ 0, %.lr.ph603.i.preheader ]
  %i.oj = load <32 x bfloat>, ptr %.01596600.i, align 1, !tbaa !17 ; 2 uses
  %i.ok = load double, ptr %.101410601.i, align 8, !tbaa !441
  %i.ol = insertelement <8 x double> poison, double %i.ok, i64 0
  %i.om = bitcast <8 x double> %i.ol to <8 x i64>
  %i.on = shufflevector <8 x i64> %i.om, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.oo = bitcast <8 x i64> %i.on to <16 x i32>
  %i.op = shufflevector <16 x i32> %i.oo, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.oq = bitcast <8 x i64> %i.on to <32 x bfloat>
  %i.or = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11599599.i, <32 x bfloat> nofpclass(nan inf) %i.oj, <32 x bfloat> nofpclass(nan inf) %i.oq)
  %i.os = bitcast <16 x i32> %i.op to <32 x bfloat>
  %i.ot = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11602598.i, <32 x bfloat> nofpclass(nan inf) %i.oj, <32 x bfloat> nofpclass(nan inf) %i.os)
  %i.ou = getelementptr inbounds nuw i8, ptr %.01596600.i, i64 64
  %i.ov = getelementptr inbounds nuw i8, ptr %.101410601.i, i64 8
  %i.ow = load <32 x bfloat>, ptr %i.ou, align 1, !tbaa !17 ; 2 uses
  %i.ox = load double, ptr %i.ov, align 8, !tbaa !441
  %i.oy = insertelement <8 x double> poison, double %i.ox, i64 0
  %i.oz = bitcast <8 x double> %i.oy to <8 x i64>
  %i.pa = shufflevector <8 x i64> %i.oz, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.pb = bitcast <8 x i64> %i.pa to <16 x i32>
  %i.pc = shufflevector <16 x i32> %i.pb, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.pd = bitcast <8 x i64> %i.pa to <32 x bfloat>
  %i.pe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.or, <32 x bfloat> nofpclass(nan inf) %i.ow, <32 x bfloat> nofpclass(nan inf) %i.pd) ; 3 uses
  %i.pf = bitcast <16 x i32> %i.pc to <32 x bfloat>
  %i.pg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.ot, <32 x bfloat> nofpclass(nan inf) %i.ow, <32 x bfloat> nofpclass(nan inf) %i.pf) ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %.01596600.i, i64 128 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.101410601.i, i64 16 ; 2 uses
  %niter2076.next.1 = add nuw nsw i32 %niter2076, 2 ; 2 uses
  %niter2076.ncmp.1.not = icmp eq i32 %niter2076.next.1, %unroll_iter2075
  br i1 %niter2076.ncmp.1.not, label %.preheader417.loopexit.i.unr-lcssa, label %.lr.ph603.i, !llvm.loop !347

.lr.ph614.i:                                      ; preds = %.lr.ph614.i.prol.loopexit, %.lr.ph614.i
  %.111411613.i = phi ptr [ %i.qg, %.lr.ph614.i ], [ %.111411613.i.unr, %.lr.ph614.i.prol.loopexit ] ; 3 uses
  %.11597612.i = phi ptr [ %i.qf, %.lr.ph614.i ], [ %.11597612.i.unr, %.lr.ph614.i.prol.loopexit ] ; 3 uses
  %.21600611.i = phi <16 x float> [ %i.qd, %.lr.ph614.i ], [ %.21600611.i.unr, %.lr.ph614.i.prol.loopexit ]
  %.21603610.i = phi <16 x float> [ %i.qe, %.lr.ph614.i ], [ %.21603610.i.unr, %.lr.ph614.i.prol.loopexit ]
  %.11605609.i = phi i32 [ %i.qh, %.lr.ph614.i ], [ %.11605609.i.unr, %.lr.ph614.i.prol.loopexit ]
  %i.pj = load <16 x bfloat>, ptr %.11597612.i, align 1, !tbaa !17
  %i.pk = fpext fast <16 x bfloat> %i.pj to <16 x float> ; 2 uses
  %i.pl = load i32, ptr %.111411613.i, align 4, !tbaa !442
  %i.pm = insertelement <8 x i32> poison, i32 %i.pl, i64 0
  %i.pn = shufflevector <8 x i32> %i.pm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.po = bitcast <8 x i32> %i.pn to <16 x bfloat>
  %i.pp = fpext fast <16 x bfloat> %i.po to <16 x float> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.pp, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.pr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pk, <16 x float> nofpclass(nan inf) %i.pp, <16 x float> nofpclass(nan inf) %.21600611.i)
  %i.ps = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pk, <16 x float> nofpclass(nan inf) %i.pq, <16 x float> nofpclass(nan inf) %.21603610.i)
  %i.pt = getelementptr inbounds nuw i8, ptr %.11597612.i, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %.111411613.i, i64 4
  %i.pv = load <16 x bfloat>, ptr %i.pt, align 1, !tbaa !17
  %i.pw = fpext fast <16 x bfloat> %i.pv to <16 x float> ; 2 uses
  %i.px = load i32, ptr %i.pu, align 4, !tbaa !442
  %i.py = insertelement <8 x i32> poison, i32 %i.px, i64 0
  %i.pz = shufflevector <8 x i32> %i.py, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.qa = bitcast <8 x i32> %i.pz to <16 x bfloat>
  %i.qb = fpext fast <16 x bfloat> %i.qa to <16 x float> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.qb, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.qd = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pw, <16 x float> nofpclass(nan inf) %i.qb, <16 x float> nofpclass(nan inf) %i.pr) ; 2 uses
  %i.qe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.pw, <16 x float> nofpclass(nan inf) %i.qc, <16 x float> nofpclass(nan inf) %i.ps) ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.11597612.i, i64 64
  %i.qg = getelementptr inbounds nuw i8, ptr %.111411613.i, i64 8 ; 2 uses
  %i.qh = add nuw nsw i32 %.11605609.i, 2         ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %.01685718.i = phi ptr [ %i.zs, %.lr.ph721.i ], [ %.1854.i, %bb.o ] ; 2 uses
  %.01687717.i = phi i32 [ %i.zu, %.lr.ph721.i ], [ 0, %bb.o ]
  %.1270716.i = phi <8 x float> [ %i.zg, %.lr.ph721.i ], [ %.0269.i, %bb.o ]
  %.1273715.i = phi <8 x float> [ %i.zi, %.lr.ph721.i ], [ %.0272.i, %bb.o ]
  %.1276714.i = phi <8 x float> [ %i.zk, %.lr.ph721.i ], [ %.0275.i, %bb.o ]
  %.1279713.i = phi <8 x float> [ %i.zl, %.lr.ph721.i ], [ %.0278.i, %bb.o ]
  %.1282712.i = phi <8 x float> [ %i.zn, %.lr.ph721.i ], [ %.0281.i, %bb.o ]
  %.1285711.i = phi <8 x float> [ %i.zp, %.lr.ph721.i ], [ %.0284.i, %bb.o ]
  %.1288710.i = phi <8 x float> [ %i.zq, %.lr.ph721.i ], [ %.0287.i, %bb.o ]
  %.1291709.i = phi <8 x float> [ %i.zr, %.lr.ph721.i ], [ %.0290.i, %bb.o ]
  %i.yv = load <4 x i64>, ptr %.01685718.i, align 1, !tbaa !17 ; 2 uses
  %i.yw = load <4 x i64>, ptr %.41617719.i, align 1, !tbaa !17 ; 3 uses
  %i.yx = bitcast <4 x i64> %i.yv to <8 x i32>
  %i.yy = shufflevector <8 x i32> %i.yx, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.yz = bitcast <4 x i64> %i.yw to <8 x i32>
  %i.za = shufflevector <8 x i32> %i.yz, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.zb = shufflevector <4 x i64> %i.yw, <4 x i64> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.zc = bitcast <4 x i64> %i.zb to <8 x i32>
  %i.zd = shufflevector <8 x i32> %i.zc, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ze = bitcast <4 x i64> %i.yv to <16 x bfloat> ; 4 uses
  %i.zf = bitcast <4 x i64> %i.yw to <16 x bfloat> ; 2 uses
  %i.zg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1270716.i, <16 x bfloat> nofpclass(nan inf) %i.ze, <16 x bfloat> nofpclass(nan inf) %i.zf) ; 2 uses
  %i.zh = bitcast <8 x i32> %i.za to <16 x bfloat> ; 2 uses
  %i.zi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1273715.i, <16 x bfloat> nofpclass(nan inf) %i.ze, <16 x bfloat> nofpclass(nan inf) %i.zh) ; 2 uses
  %i.zj = bitcast <8 x i32> %i.yy to <16 x bfloat> ; 4 uses
  %i.zk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1276714.i, <16 x bfloat> nofpclass(nan inf) %i.zj, <16 x bfloat> nofpclass(nan inf) %i.zf) ; 2 uses
  %i.zl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1279713.i, <16 x bfloat> nofpclass(nan inf) %i.zj, <16 x bfloat> nofpclass(nan inf) %i.zh) ; 2 uses
  %i.zm = bitcast <4 x i64> %i.zb to <16 x bfloat> ; 2 uses
  %i.zn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1282712.i, <16 x bfloat> nofpclass(nan inf) %i.ze, <16 x bfloat> nofpclass(nan inf) %i.zm) ; 2 uses
  %i.zo = bitcast <8 x i32> %i.zd to <16 x bfloat> ; 2 uses
  %i.zp = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1285711.i, <16 x bfloat> nofpclass(nan inf) %i.ze, <16 x bfloat> nofpclass(nan inf) %i.zo) ; 2 uses
  %i.zq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1288710.i, <16 x bfloat> nofpclass(nan inf) %i.zj, <16 x bfloat> nofpclass(nan inf) %i.zm) ; 2 uses
  %i.zr = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1291709.i, <16 x bfloat> nofpclass(nan inf) %i.zj, <16 x bfloat> nofpclass(nan inf) %i.zo) ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %.01685718.i, i64 32
  %i.zt = getelementptr inbounds nuw i8, ptr %.41617719.i, i64 32
  %i.zu = add nuw nsw i32 %.01687717.i, 2         ; 2 uses
  %i.zv = or disjoint i32 %i.zu, 1
  %i.zw = icmp slt i32 %i.zv, %8
  br i1 %i.zw, label %.lr.ph721.i, label %.preheader408.loopexit.i, !llvm.loop !358

.lr.ph744.i:                                      ; preds = %.preheader408.i, %.lr.ph744.i
  %.51618743.i = phi ptr [ %i.aao, %.lr.ph744.i ], [ %.41617.lcssa.i, %.preheader408.i ] ; 2 uses
  %.11686742.i = phi ptr [ %i.aan, %.lr.ph744.i ], [ %.01685.lcssa.i, %.preheader408.i ] ; 2 uses
  %.11688741.i = phi i32 [ %i.aap, %.lr.ph744.i ], [ %.01687.lcssa.i, %.preheader408.i ]
  %.2271740.i = phi <8 x float> [ %i.aaf, %.lr.ph744.i ], [ %.1270.lcssa.i, %.preheader408.i ]
  %.2274739.i = phi <8 x float> [ %i.aag, %.lr.ph744.i ], [ %.1273.lcssa.i, %.preheader408.i ]
  %.2277738.i = phi <8 x float> [ %i.aah, %.lr.ph744.i ], [ %.1276.lcssa.i, %.preheader408.i ]
  %.2280737.i = phi <8 x float> [ %i.aai, %.lr.ph744.i ], [ %.1279.lcssa.i, %.preheader408.i ]
  %.2283736.i = phi <8 x float> [ %i.aaj, %.lr.ph744.i ], [ %.1282.lcssa.i, %.preheader408.i ]
  %.2286735.i = phi <8 x float> [ %i.aak, %.lr.ph744.i ], [ %.1285.lcssa.i, %.preheader408.i ]
  %.2289734.i = phi <8 x float> [ %i.aal, %.lr.ph744.i ], [ %.1288.lcssa.i, %.preheader408.i ]
  %.2292733.i = phi <8 x float> [ %i.aam, %.lr.ph744.i ], [ %.1291.lcssa.i, %.preheader408.i ]
  %i.zx = load <8 x bfloat>, ptr %.11686742.i, align 1, !tbaa !17
  %i.zy = fpext fast <8 x bfloat> %i.zx to <8 x float> ; 5 uses
  %i.zz = load <8 x bfloat>, ptr %.51618743.i, align 1, !tbaa !17
  %i.aaa = fpext fast <8 x bfloat> %i.zz to <8 x float> ; 5 uses
  %i.aab = shufflevector <8 x float> %i.zy, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 4 uses
  %i.aac = shufflevector <8 x float> %i.aaa, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.aad = shufflevector <8 x float> %i.aaa, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aae = shufflevector <8 x float> %i.aaa, <8 x float> poison, <8 x i32> <i32 5, i32 6, i32 7, i32 4, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aaf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zy, <8 x float> nofpclass(nan inf) %i.aaa, <8 x float> nofpclass(nan inf) %.2271740.i) ; 2 uses
  %i.aag = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zy, <8 x float> nofpclass(nan inf) %i.aac, <8 x float> nofpclass(nan inf) %.2274739.i) ; 2 uses
  %i.aah = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aab, <8 x float> nofpclass(nan inf) %i.aaa, <8 x float> nofpclass(nan inf) %.2277738.i) ; 2 uses
  %i.aai = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aab, <8 x float> nofpclass(nan inf) %i.aac, <8 x float> nofpclass(nan inf) %.2280737.i) ; 2 uses
  %i.aaj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zy, <8 x float> nofpclass(nan inf) %i.aad, <8 x float> nofpclass(nan inf) %.2283736.i) ; 2 uses
  %i.aak = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.zy, <8 x float> nofpclass(nan inf) %i.aae, <8 x float> nofpclass(nan inf) %.2286735.i) ; 2 uses
  %i.aal = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aab, <8 x float> nofpclass(nan inf) %i.aad, <8 x float> nofpclass(nan inf) %.2289734.i) ; 2 uses
  %i.aam = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aab, <8 x float> nofpclass(nan inf) %i.aae, <8 x float> nofpclass(nan inf) %.2292733.i) ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %.11686742.i, i64 16
  %i.aao = getelementptr inbounds nuw i8, ptr %.51618743.i, i64 16 ; 2 uses
  %i.aap = add nuw nsw i32 %.11688741.i, 1        ; 2 uses
  %exitcond1763.not.i = icmp eq i32 %i.aap, %8
  br i1 %exitcond1763.not.i, label %._crit_edge745.i, label %.lr.ph744.i, !llvm.loop !359

._crit_edge745.i:                                 ; preds = %.lr.ph744.i, %.preheader408.i
  %.2292.lcssa.i = phi <8 x float> [ %.1291.lcssa.i, %.preheader408.i ], [ %i.aam, %.lr.ph744.i ]
  %.2289.lcssa.i = phi <8 x float> [ %.1288.lcssa.i, %.preheader408.i ], [ %i.aal, %.lr.ph744.i ]
  %.2286.lcssa.i = phi <8 x float> [ %.1285.lcssa.i, %.preheader408.i ], [ %i.aak, %.lr.ph744.i ]
  %.2283.lcssa.i = phi <8 x float> [ %.1282.lcssa.i, %.preheader408.i ], [ %i.aaj, %.lr.ph744.i ]
  %.2280.lcssa.i = phi <8 x float> [ %.1279.lcssa.i, %.preheader408.i ], [ %i.aai, %.lr.ph744.i ]
  %.2277.lcssa.i = phi <8 x float> [ %.1276.lcssa.i, %.preheader408.i ], [ %i.aah, %.lr.ph744.i ]
  %.2274.lcssa.i = phi <8 x float> [ %.1273.lcssa.i, %.preheader408.i ], [ %i.aag, %.lr.ph744.i ]
  %.2271.lcssa.i = phi <8 x float> [ %.1270.lcssa.i, %.preheader408.i ], [ %i.aaf, %.lr.ph744.i ]
  %.51618.lcssa.i = phi ptr [ %.41617.lcssa.i, %.preheader408.i ], [ %i.aao, %.lr.ph744.i ] ; 2 uses
  store <8 x float> %.2271.lcssa.i, ptr %.8757.i, align 32, !tbaa !17
  %i.aaq = getelementptr inbounds nuw i8, ptr %.8757.i, i64 32
  store <8 x float> %.2274.lcssa.i, ptr %i.aaq, align 32, !tbaa !17
  %i.aar = getelementptr inbounds nuw i8, ptr %.8757.i, i64 64
  store <8 x float> %.2277.lcssa.i, ptr %i.aar, align 32, !tbaa !17
  %i.aas = getelementptr inbounds nuw i8, ptr %.8757.i, i64 96
  store <8 x float> %.2280.lcssa.i, ptr %i.aas, align 32, !tbaa !17
  %i.aat = getelementptr inbounds nuw i8, ptr %.8757.i, i64 128
  store <8 x float> %.2283.lcssa.i, ptr %i.aat, align 32, !tbaa !17
  %i.aau = getelementptr inbounds nuw i8, ptr %.8757.i, i64 160
  store <8 x float> %.2286.lcssa.i, ptr %i.aau, align 32, !tbaa !17
  %i.aav = getelementptr inbounds nuw i8, ptr %.8757.i, i64 192
  store <8 x float> %.2289.lcssa.i, ptr %i.aav, align 32, !tbaa !17
  %i.aaw = getelementptr inbounds nuw i8, ptr %.8757.i, i64 224
  store <8 x float> %.2292.lcssa.i, ptr %i.aaw, align 32, !tbaa !17
  %i.aax = getelementptr inbounds nuw i8, ptr %.8757.i, i64 256 ; 2 uses
  %i.aay = add nuw nsw i32 %.11629755.i, 8        ; 3 uses
  %i.aaz = or disjoint i32 %i.aay, 7
  %i.aba = icmp slt i32 %i.aaz, %6
  br i1 %i.aba, label %.lr.ph758.i, label %.preheader412.i, !llvm.loop !360

.preheader411.i:                                  ; preds = %._crit_edge786.i, %.preheader412.i
  %.21630.lcssa.i = phi i32 [ %.11629.lcssa.i, %.preheader412.i ], [ %i.afk, %._crit_edge786.i ] ; 3 uses
  %.61619.lcssa.i = phi ptr [ %.31616.lcssa.i, %.preheader412.i ], [ %.81621.lcssa.i, %._crit_edge786.i ] ; 2 uses
  %.9.lcssa.i = phi ptr [ %.8.lcssa.i, %.preheader412.i ], [ %i.afj, %._crit_edge786.i ] ; 2 uses
  %i.abb = or disjoint i32 %.21630.lcssa.i, 1
  %i.abc = icmp slt i32 %i.abb, %6
  br i1 %i.abc, label %.lr.ph824.i, label %.preheader410.i

.lr.ph795.i:                                      ; preds = %.preheader412.i, %._crit_edge786.i
  %.9794.i = phi ptr [ %i.afj, %._crit_edge786.i ], [ %.8.lcssa.i, %.preheader412.i ] ; 9 uses
  %.61619793.i = phi ptr [ %.81621.lcssa.i, %._crit_edge786.i ], [ %.31616.lcssa.i, %.preheader412.i ] ; 4 uses
  %.21630792.i = phi i32 [ %i.afk, %._crit_edge786.i ], [ %.11629.lcssa.i, %.preheader412.i ]
  br i1 %.not1806.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph795.i
  %i.abd = load <8 x float>, ptr %.9794.i, align 32, !tbaa !17
  %i.abe = getelementptr inbounds nuw i8, ptr %.9794.i, i64 32
  %i.abf = load <8 x float>, ptr %i.abe, align 32, !tbaa !17
  %i.abg = getelementptr inbounds nuw i8, ptr %.9794.i, i64 64
  %i.abh = load <8 x float>, ptr %i.abg, align 32, !tbaa !17
  %i.abi = getelementptr inbounds nuw i8, ptr %.9794.i, i64 96
  %i.abj = load <8 x float>, ptr %i.abi, align 32, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph795.i
  %.0302.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph795.i ], [ %i.abj, %bb.p ] ; 3 uses
  %.0299.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph795.i ], [ %i.abh, %bb.p ] ; 3 uses
  %.0296.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph795.i ], [ %i.abf, %bb.p ] ; 3 uses
  %.0293.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph795.i ], [ %i.abd, %bb.p ] ; 3 uses
  br i1 %i.ae, label %.lr.ph770.i.preheader, label %.preheader407.i

.lr.ph770.i.preheader:                            ; preds = %bb.q
  br i1 %i.ax, label %.lr.ph770.i.epil.preheader, label %.lr.ph770.i

.preheader407.loopexit.i.unr-lcssa:               ; preds = %.lr.ph770.i
  br i1 %lcmp.mod2089.not.not, label %.lr.ph770.i.epil.preheader, label %.preheader407.loopexit.i

.lr.ph770.i.epil.preheader:                       ; preds = %.preheader407.loopexit.i.unr-lcssa, %.lr.ph770.i.preheader
  %.71620768.i.epil.init = phi ptr [ %.61619793.i, %.lr.ph770.i.preheader ], [ %i.aea, %.preheader407.loopexit.i.unr-lcssa ]
  %.01719767.i.epil.init = phi ptr [ %.1854.i, %.lr.ph770.i.preheader ], [ %i.adz, %.preheader407.loopexit.i.unr-lcssa ]
  %.1294765.i.epil.init = phi <8 x float> [ %.0293.i, %.lr.ph770.i.preheader ], [ %i.adt, %.preheader407.loopexit.i.unr-lcssa ]
  %.1297764.i.epil.init = phi <8 x float> [ %.0296.i, %.lr.ph770.i.preheader ], [ %i.adv, %.preheader407.loopexit.i.unr-lcssa ]
  %.1300763.i.epil.init = phi <8 x float> [ %.0299.i, %.lr.ph770.i.preheader ], [ %i.adx, %.preheader407.loopexit.i.unr-lcssa ]
  %.1303762.i.epil.init = phi <8 x float> [ %.0302.i, %.lr.ph770.i.preheader ], [ %i.ady, %.preheader407.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2094)
  %i.abk = load <4 x i64>, ptr %.01719767.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.abl = load <2 x i64>, ptr %.71620768.i.epil.init, align 1, !tbaa !17
  %i.abm = shufflevector <2 x i64> %i.abl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.abn = bitcast <4 x i64> %i.abk to <8 x i32>
  %i.abo = shufflevector <8 x i32> %i.abn, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.abp = bitcast <4 x i64> %i.abm to <8 x i32>
  %i.abq = shufflevector <8 x i32> %i.abp, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.abr = bitcast <4 x i64> %i.abk to <16 x bfloat> ; 2 uses
  %i.abs = bitcast <4 x i64> %i.abm to <16 x bfloat> ; 2 uses
  %i.abt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1294765.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.abr, <16 x bfloat> nofpclass(nan inf) %i.abs)
  %i.abu = bitcast <8 x i32> %i.abq to <16 x bfloat> ; 2 uses
  %i.abv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1297764.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.abr, <16 x bfloat> nofpclass(nan inf) %i.abu)
  %i.abw = bitcast <8 x i32> %i.abo to <16 x bfloat> ; 2 uses
  %i.abx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1300763.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.abw, <16 x bfloat> nofpclass(nan inf) %i.abs)
  %i.aby = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1303762.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.abw, <16 x bfloat> nofpclass(nan inf) %i.abu)
  br label %.preheader407.loopexit.i

.preheader407.loopexit.i:                         ; preds = %.preheader407.loopexit.i.unr-lcssa, %.lr.ph770.i.epil.preheader
  %.lcssa1965 = phi <8 x float> [ %i.adt, %.preheader407.loopexit.i.unr-lcssa ], [ %i.abt, %.lr.ph770.i.epil.preheader ]
  %.lcssa1964 = phi <8 x float> [ %i.adv, %.preheader407.loopexit.i.unr-lcssa ], [ %i.abv, %.lr.ph770.i.epil.preheader ]
  %.lcssa1963 = phi <8 x float> [ %i.adx, %.preheader407.loopexit.i.unr-lcssa ], [ %i.abx, %.lr.ph770.i.epil.preheader ]
  %.lcssa1962 = phi <8 x float> [ %i.ady, %.preheader407.loopexit.i.unr-lcssa ], [ %i.aby, %.lr.ph770.i.epil.preheader ]
  %i.abz = getelementptr i8, ptr %.61619793.i, i64 %i.aq
  %scevgep1766.i = getelementptr i8, ptr %i.abz, i64 16
  br label %.preheader407.i

.preheader407.i:                                  ; preds = %.preheader407.loopexit.i, %bb.q
  %.1303.lcssa.i = phi <8 x float> [ %.0302.i, %bb.q ], [ %.lcssa1962, %.preheader407.loopexit.i ] ; 3 uses
  %.1300.lcssa.i = phi <8 x float> [ %.0299.i, %bb.q ], [ %.lcssa1963, %.preheader407.loopexit.i ] ; 3 uses
  %.1297.lcssa.i = phi <8 x float> [ %.0296.i, %bb.q ], [ %.lcssa1964, %.preheader407.loopexit.i ] ; 3 uses
  %.1294.lcssa.i = phi <8 x float> [ %.0293.i, %bb.q ], [ %.lcssa1965, %.preheader407.loopexit.i ] ; 3 uses
  %.01725.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.aj, %.preheader407.loopexit.i ] ; 5 uses
  %.01719.lcssa.i = phi ptr [ %.1854.i, %bb.q ], [ %indvars.iv.i, %.preheader407.loopexit.i ] ; 3 uses
  %.71620.lcssa.i = phi ptr [ %.61619793.i, %bb.q ], [ %scevgep1766.i, %.preheader407.loopexit.i ] ; 4 uses
  %i.aca = icmp slt i32 %.01725.lcssa.i, %8
  br i1 %i.aca, label %.lr.ph785.i.preheader, label %._crit_edge786.i

.lr.ph785.i.preheader:                            ; preds = %.preheader407.i
  %i.acb = sub i32 %8, %.01725.lcssa.i
  %.neg2240 = add i32 %.01725.lcssa.i, 1
  %xtraiter2097 = and i32 %i.acb, 1
  %lcmp.mod2098.not = icmp eq i32 %xtraiter2097, 0
  br i1 %lcmp.mod2098.not, label %.lr.ph785.i.prol.loopexit, label %.lr.ph785.i.prol

.lr.ph785.i.prol:                                 ; preds = %.lr.ph785.i.preheader
  %i.acc = load <8 x bfloat>, ptr %.01719.lcssa.i, align 1, !tbaa !17
  %i.acd = fpext fast <8 x bfloat> %i.acc to <8 x float> ; 3 uses
  %i.ace = load i64, ptr %.71620.lcssa.i, align 1, !tbaa !17
  %i.acf = insertelement <2 x i64> poison, i64 %i.ace, i64 0
  %i.acg = bitcast <2 x i64> %i.acf to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ach = bitcast <8 x i16> %12 to <4 x float>   ; 2 uses
  %i.aci = shufflevector <4 x float> %i.ach, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.acj = shufflevector <8 x float> %i.acd, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.ack = shufflevector <4 x float> %i.ach, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.acl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %.1294.lcssa.i) ; 2 uses
  %i.acm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acd, <8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) %.1297.lcssa.i) ; 2 uses
  %i.acn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acj, <8 x float> nofpclass(nan inf) %i.aci, <8 x float> nofpclass(nan inf) %.1300.lcssa.i) ; 2 uses
  %i.aco = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acj, <8 x float> nofpclass(nan inf) %i.ack, <8 x float> nofpclass(nan inf) %.1303.lcssa.i) ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.01719.lcssa.i, i64 16
  %i.acq = getelementptr inbounds nuw i8, ptr %.71620.lcssa.i, i64 8 ; 2 uses
  %i.acr = add nuw nsw i32 %.01725.lcssa.i, 1
  br label %.lr.ph785.i.prol.loopexit

.lr.ph785.i.prol.loopexit:                        ; preds = %.lr.ph785.i.prol, %.lr.ph785.i.preheader
  %.lcssa1970.unr = phi <8 x float> [ poison, %.lr.ph785.i.preheader ], [ %i.acl, %.lr.ph785.i.prol ]
  %.lcssa1969.unr = phi <8 x float> [ poison, %.lr.ph785.i.preheader ], [ %i.acm, %.lr.ph785.i.prol ]
  %.lcssa1968.unr = phi <8 x float> [ poison, %.lr.ph785.i.preheader ], [ %i.acn, %.lr.ph785.i.prol ]
  %.lcssa1967.unr = phi <8 x float> [ poison, %.lr.ph785.i.preheader ], [ %i.aco, %.lr.ph785.i.prol ]
  %.lcssa1966.unr = phi ptr [ poison, %.lr.ph785.i.preheader ], [ %i.acq, %.lr.ph785.i.prol ]
  %.81621784.i.unr = phi ptr [ %.71620.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acq, %.lr.ph785.i.prol ]
  %.11720783.i.unr = phi ptr [ %.01719.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acp, %.lr.ph785.i.prol ]
  %.11726782.i.unr = phi i32 [ %.01725.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acr, %.lr.ph785.i.prol ]
  %.2295781.i.unr = phi <8 x float> [ %.1294.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acl, %.lr.ph785.i.prol ]
  %.2298780.i.unr = phi <8 x float> [ %.1297.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acm, %.lr.ph785.i.prol ]
  %.2301779.i.unr = phi <8 x float> [ %.1300.lcssa.i, %.lr.ph785.i.preheader ], [ %i.acn, %.lr.ph785.i.prol ]
  %.2304778.i.unr = phi <8 x float> [ %.1303.lcssa.i, %.lr.ph785.i.preheader ], [ %i.aco, %.lr.ph785.i.prol ]
  %i.acs = icmp eq i32 %8, %.neg2240
  br i1 %i.acs, label %._crit_edge786.i, label %.lr.ph785.i

.lr.ph770.i:                                      ; preds = %.lr.ph770.i.preheader, %.lr.ph770.i
  %.71620768.i = phi ptr [ %i.aea, %.lr.ph770.i ], [ %.61619793.i, %.lr.ph770.i.preheader ] ; 3 uses
  %.01719767.i = phi ptr [ %i.adz, %.lr.ph770.i ], [ %.1854.i, %.lr.ph770.i.preheader ] ; 3 uses
  %.1294765.i = phi <8 x float> [ %i.adt, %.lr.ph770.i ], [ %.0293.i, %.lr.ph770.i.preheader ]
  %.1297764.i = phi <8 x float> [ %i.adv, %.lr.ph770.i ], [ %.0296.i, %.lr.ph770.i.preheader ]
  %.1300763.i = phi <8 x float> [ %i.adx, %.lr.ph770.i ], [ %.0299.i, %.lr.ph770.i.preheader ]
  %.1303762.i = phi <8 x float> [ %i.ady, %.lr.ph770.i ], [ %.0302.i, %.lr.ph770.i.preheader ]
  %niter2096 = phi i32 [ %niter2096.next.1, %.lr.ph770.i ], [ 0, %.lr.ph770.i.preheader ]
  %i.act = load <4 x i64>, ptr %.01719767.i, align 1, !tbaa !17 ; 2 uses
  %i.acu = load <2 x i64>, ptr %.71620768.i, align 1, !tbaa !17
  %i.acv = shufflevector <2 x i64> %i.acu, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.acw = bitcast <4 x i64> %i.act to <8 x i32>
  %i.acx = shufflevector <8 x i32> %i.acw, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.acy = bitcast <4 x i64> %i.acv to <8 x i32>
  %i.acz = shufflevector <8 x i32> %i.acy, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ada = bitcast <4 x i64> %i.act to <16 x bfloat> ; 2 uses
  %i.adb = bitcast <4 x i64> %i.acv to <16 x bfloat> ; 2 uses
  %i.adc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1294765.i, <16 x bfloat> nofpclass(nan inf) %i.ada, <16 x bfloat> nofpclass(nan inf) %i.adb)
  %i.add = bitcast <8 x i32> %i.acz to <16 x bfloat> ; 2 uses
  %i.ade = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1297764.i, <16 x bfloat> nofpclass(nan inf) %i.ada, <16 x bfloat> nofpclass(nan inf) %i.add)
  %i.adf = bitcast <8 x i32> %i.acx to <16 x bfloat> ; 2 uses
  %i.adg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1300763.i, <16 x bfloat> nofpclass(nan inf) %i.adf, <16 x bfloat> nofpclass(nan inf) %i.adb)
  %i.adh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1303762.i, <16 x bfloat> nofpclass(nan inf) %i.adf, <16 x bfloat> nofpclass(nan inf) %i.add)
  %i.adi = getelementptr inbounds nuw i8, ptr %.01719767.i, i64 32
  %i.adj = getelementptr inbounds nuw i8, ptr %.71620768.i, i64 16
  %i.adk = load <4 x i64>, ptr %i.adi, align 1, !tbaa !17 ; 2 uses
  %i.adl = load <2 x i64>, ptr %i.adj, align 1, !tbaa !17
  %i.adm = shufflevector <2 x i64> %i.adl, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.adn = bitcast <4 x i64> %i.adk to <8 x i32>
  %i.ado = shufflevector <8 x i32> %i.adn, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.adp = bitcast <4 x i64> %i.adm to <8 x i32>
  %i.adq = shufflevector <8 x i32> %i.adp, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.adr = bitcast <4 x i64> %i.adk to <16 x bfloat> ; 2 uses
  %i.ads = bitcast <4 x i64> %i.adm to <16 x bfloat> ; 2 uses
  %i.adt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.adc, <16 x bfloat> nofpclass(nan inf) %i.adr, <16 x bfloat> nofpclass(nan inf) %i.ads) ; 3 uses
  %i.adu = bitcast <8 x i32> %i.adq to <16 x bfloat> ; 2 uses
  %i.adv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.ade, <16 x bfloat> nofpclass(nan inf) %i.adr, <16 x bfloat> nofpclass(nan inf) %i.adu) ; 3 uses
  %i.adw = bitcast <8 x i32> %i.ado to <16 x bfloat> ; 2 uses
  %i.adx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.adg, <16 x bfloat> nofpclass(nan inf) %i.adw, <16 x bfloat> nofpclass(nan inf) %i.ads) ; 3 uses
  %i.ady = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.adh, <16 x bfloat> nofpclass(nan inf) %i.adw, <16 x bfloat> nofpclass(nan inf) %i.adu) ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %.01719767.i, i64 64 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %.71620768.i, i64 32 ; 2 uses
  %niter2096.next.1 = add nuw nsw i32 %niter2096, 2 ; 2 uses
  %niter2096.ncmp.1.not = icmp eq i32 %niter2096.next.1, %unroll_iter2095
  br i1 %niter2096.ncmp.1.not, label %.preheader407.loopexit.i.unr-lcssa, label %.lr.ph770.i, !llvm.loop !361

.lr.ph785.i:                                      ; preds = %.lr.ph785.i.prol.loopexit, %.lr.ph785.i
  %.81621784.i = phi ptr [ %i.afe, %.lr.ph785.i ], [ %.81621784.i.unr, %.lr.ph785.i.prol.loopexit ] ; 3 uses
  %.11720783.i = phi ptr [ %i.afd, %.lr.ph785.i ], [ %.11720783.i.unr, %.lr.ph785.i.prol.loopexit ] ; 3 uses
  %.11726782.i = phi i32 [ %i.aff, %.lr.ph785.i ], [ %.11726782.i.unr, %.lr.ph785.i.prol.loopexit ]
  %.2295781.i = phi <8 x float> [ %i.aez, %.lr.ph785.i ], [ %.2295781.i.unr, %.lr.ph785.i.prol.loopexit ]
  %.2298780.i = phi <8 x float> [ %i.afa, %.lr.ph785.i ], [ %.2298780.i.unr, %.lr.ph785.i.prol.loopexit ]
  %.2301779.i = phi <8 x float> [ %i.afb, %.lr.ph785.i ], [ %.2301779.i.unr, %.lr.ph785.i.prol.loopexit ]
  %.2304778.i = phi <8 x float> [ %i.afc, %.lr.ph785.i ], [ %.2304778.i.unr, %.lr.ph785.i.prol.loopexit ]
  %i.aeb = load <8 x bfloat>, ptr %.11720783.i, align 1, !tbaa !17
  %i.aec = fpext fast <8 x bfloat> %i.aeb to <8 x float> ; 3 uses
  %i.aed = load i64, ptr %.81621784.i, align 1, !tbaa !17
  %i.aee = insertelement <2 x i64> poison, i64 %i.aed, i64 0
  %i.aef = bitcast <2 x i64> %i.aee to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aef, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aeg = bitcast <8 x i16> %13 to <4 x float>   ; 2 uses
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aei = shufflevector <8 x float> %i.aec, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.aej = shufflevector <4 x float> %i.aeg, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aek = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aec, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> nofpclass(nan inf) %.2295781.i)
  %i.ael = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aec, <8 x float> nofpclass(nan inf) %i.aej, <8 x float> nofpclass(nan inf) %.2298780.i)
  %i.aem = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aei, <8 x float> nofpclass(nan inf) %i.aeh, <8 x float> nofpclass(nan inf) %.2301779.i)
  %i.aen = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aei, <8 x float> nofpclass(nan inf) %i.aej, <8 x float> nofpclass(nan inf) %.2304778.i)
  %i.aeo = getelementptr inbounds nuw i8, ptr %.11720783.i, i64 16
  %i.aep = getelementptr inbounds nuw i8, ptr %.81621784.i, i64 8
  %i.aeq = load <8 x bfloat>, ptr %i.aeo, align 1, !tbaa !17
  %i.aer = fpext fast <8 x bfloat> %i.aeq to <8 x float> ; 3 uses
  %i.aes = load i64, ptr %i.aep, align 1, !tbaa !17
  %i.aet = insertelement <2 x i64> poison, i64 %i.aes, i64 0
  %i.aeu = bitcast <2 x i64> %i.aet to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aeu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aev = bitcast <8 x i16> %14 to <4 x float>   ; 2 uses
  %i.aew = shufflevector <4 x float> %i.aev, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aex = shufflevector <8 x float> %i.aer, <8 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5> ; 2 uses
  %i.aey = shufflevector <4 x float> %i.aev, <4 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aez = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.aew, <8 x float> nofpclass(nan inf) %i.aek) ; 2 uses
  %i.afa = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aer, <8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %i.ael) ; 2 uses
  %i.afb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.aew, <8 x float> nofpclass(nan inf) %i.aem) ; 2 uses
  %i.afc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.aey, <8 x float> nofpclass(nan inf) %i.aen) ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.11720783.i, i64 32
  %i.afe = getelementptr inbounds nuw i8, ptr %.81621784.i, i64 16 ; 2 uses
  %i.aff = add nuw nsw i32 %.11726782.i, 2        ; 2 uses
  %exitcond1767.not.i.1 = icmp eq i32 %i.aff, %8
  br i1 %exitcond1767.not.i.1, label %._crit_edge786.i, label %.lr.ph785.i, !llvm.loop !362

._crit_edge786.i:                                 ; preds = %.lr.ph785.i.prol.loopexit, %.lr.ph785.i, %.preheader407.i
  %.2304.lcssa.i = phi <8 x float> [ %.1303.lcssa.i, %.preheader407.i ], [ %.lcssa1967.unr, %.lr.ph785.i.prol.loopexit ], [ %i.afc, %.lr.ph785.i ]
  %.2301.lcssa.i = phi <8 x float> [ %.1300.lcssa.i, %.preheader407.i ], [ %.lcssa1968.unr, %.lr.ph785.i.prol.loopexit ], [ %i.afb, %.lr.ph785.i ]
  %.2298.lcssa.i = phi <8 x float> [ %.1297.lcssa.i, %.preheader407.i ], [ %.lcssa1969.unr, %.lr.ph785.i.prol.loopexit ], [ %i.afa, %.lr.ph785.i ]
  %.2295.lcssa.i = phi <8 x float> [ %.1294.lcssa.i, %.preheader407.i ], [ %.lcssa1970.unr, %.lr.ph785.i.prol.loopexit ], [ %i.aez, %.lr.ph785.i ]
  %.81621.lcssa.i = phi ptr [ %.71620.lcssa.i, %.preheader407.i ], [ %.lcssa1966.unr, %.lr.ph785.i.prol.loopexit ], [ %i.afe, %.lr.ph785.i ] ; 2 uses
  store <8 x float> %.2295.lcssa.i, ptr %.9794.i, align 32, !tbaa !17
  %i.afg = getelementptr inbounds nuw i8, ptr %.9794.i, i64 32
  store <8 x float> %.2298.lcssa.i, ptr %i.afg, align 32, !tbaa !17
  %i.afh = getelementptr inbounds nuw i8, ptr %.9794.i, i64 64
  store <8 x float> %.2301.lcssa.i, ptr %i.afh, align 32, !tbaa !17
  %i.afi = getelementptr inbounds nuw i8, ptr %.9794.i, i64 96
  store <8 x float> %.2304.lcssa.i, ptr %i.afi, align 32, !tbaa !17
  %i.afj = getelementptr inbounds nuw i8, ptr %.9794.i, i64 128 ; 2 uses
  %i.afk = add nuw nsw i32 %.21630792.i, 4        ; 3 uses
  %i.afl = or disjoint i32 %i.afk, 3
  %i.afm = icmp slt i32 %i.afl, %6
  br i1 %i.afm, label %.lr.ph795.i, label %.preheader411.i, !llvm.loop !363

.preheader410.i:                                  ; preds = %._crit_edge817.i, %.preheader411.i
  %.31631.lcssa.i = phi i32 [ %.21630.lcssa.i, %.preheader411.i ], [ %i.aiu, %._crit_edge817.i ] ; 2 uses
  %.91622.lcssa.i = phi ptr [ %.61619.lcssa.i, %.preheader411.i ], [ %.111624.lcssa.i, %._crit_edge817.i ]
  %.10.lcssa.i = phi ptr [ %.9.lcssa.i, %.preheader411.i ], [ %i.ait, %._crit_edge817.i ] ; 2 uses
  %i.afn = icmp slt i32 %.31631.lcssa.i, %6
  br i1 %i.afn, label %.lr.ph849.i, label %._crit_edge850.i

.lr.ph824.i:                                      ; preds = %.preheader411.i, %._crit_edge817.i
  %.10823.i = phi ptr [ %i.ait, %._crit_edge817.i ], [ %.9.lcssa.i, %.preheader411.i ] ; 5 uses
  %.91622822.i = phi ptr [ %.111624.lcssa.i, %._crit_edge817.i ], [ %.61619.lcssa.i, %.preheader411.i ] ; 4 uses
  %.31631821.i = phi i32 [ %i.aiu, %._crit_edge817.i ], [ %.21630.lcssa.i, %.preheader411.i ]
  br i1 %.not1806.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph824.i
  %i.afo = load <8 x float>, ptr %.10823.i, align 32, !tbaa !17
  %i.afp = getelementptr inbounds nuw i8, ptr %.10823.i, i64 32
  %i.afq = load <8 x float>, ptr %i.afp, align 32, !tbaa !17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph824.i
  %.0308.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph824.i ], [ %i.afq, %bb.r ] ; 3 uses
  %.0305.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph824.i ], [ %i.afo, %bb.r ] ; 3 uses
  br i1 %i.ae, label %.lr.ph805.i.preheader, label %.preheader406.i

.lr.ph805.i.preheader:                            ; preds = %bb.s
  br i1 %i.az, label %.lr.ph805.i.epil.preheader, label %.lr.ph805.i

.preheader406.loopexit.i.unr-lcssa:               ; preds = %.lr.ph805.i
  br i1 %lcmp.mod2101.not.not, label %.lr.ph805.i.epil.preheader, label %.preheader406.loopexit.i

.lr.ph805.i.epil.preheader:                       ; preds = %.preheader406.loopexit.i.unr-lcssa, %.lr.ph805.i.preheader
  %.101623803.i.epil.init = phi ptr [ %.91622822.i, %.lr.ph805.i.preheader ], [ %i.ahs, %.preheader406.loopexit.i.unr-lcssa ]
  %.01727802.i.epil.init = phi ptr [ %.1854.i, %.lr.ph805.i.preheader ], [ %i.ahr, %.preheader406.loopexit.i.unr-lcssa ]
  %.1306800.i.epil.init = phi <8 x float> [ %.0305.i, %.lr.ph805.i.preheader ], [ %i.aho, %.preheader406.loopexit.i.unr-lcssa ]
  %.1309799.i.epil.init = phi <8 x float> [ %.0308.i, %.lr.ph805.i.preheader ], [ %i.ahq, %.preheader406.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2104)
  %i.afr = load <16 x bfloat>, ptr %.01727802.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.afs = load double, ptr %.101623803.i.epil.init, align 1, !tbaa !17
  %i.aft = insertelement <4 x double> poison, double %i.afs, i64 0
  %i.afu = bitcast <4 x double> %i.aft to <4 x i64>
  %i.afv = shufflevector <4 x i64> %i.afu, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.afw = bitcast <4 x i64> %i.afv to <8 x i32>
  %i.afx = shufflevector <8 x i32> %i.afw, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.afy = bitcast <4 x i64> %i.afv to <16 x bfloat>
  %i.afz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1306800.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.afr, <16 x bfloat> nofpclass(nan inf) %i.afy)
  %i.aga = bitcast <8 x i32> %i.afx to <16 x bfloat>
  %i.agb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1309799.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.afr, <16 x bfloat> nofpclass(nan inf) %i.aga)
  br label %.preheader406.loopexit.i

.preheader406.loopexit.i:                         ; preds = %.preheader406.loopexit.i.unr-lcssa, %.lr.ph805.i.epil.preheader
  %.lcssa1974 = phi <8 x float> [ %i.aho, %.preheader406.loopexit.i.unr-lcssa ], [ %i.afz, %.lr.ph805.i.epil.preheader ]
  %.lcssa1973 = phi <8 x float> [ %i.ahq, %.preheader406.loopexit.i.unr-lcssa ], [ %i.agb, %.lr.ph805.i.epil.preheader ]
  %i.agc = getelementptr i8, ptr %.91622822.i, i64 %i.ar
  %scevgep1768.i = getelementptr i8, ptr %i.agc, i64 8
  br label %.preheader406.i

.preheader406.i:                                  ; preds = %.preheader406.loopexit.i, %bb.s
  %.1309.lcssa.i = phi <8 x float> [ %.0308.i, %bb.s ], [ %.lcssa1973, %.preheader406.loopexit.i ] ; 3 uses
  %.1306.lcssa.i = phi <8 x float> [ %.0305.i, %bb.s ], [ %.lcssa1974, %.preheader406.loopexit.i ] ; 3 uses
  %.01729.lcssa.i = phi i32 [ 0, %bb.s ], [ %i.aj, %.preheader406.loopexit.i ] ; 5 uses
  %.01727.lcssa.i = phi ptr [ %.1854.i, %bb.s ], [ %indvars.iv.i, %.preheader406.loopexit.i ] ; 3 uses
  %.101623.lcssa.i = phi ptr [ %.91622822.i, %bb.s ], [ %scevgep1768.i, %.preheader406.loopexit.i ] ; 4 uses
  %i.agd = icmp slt i32 %.01729.lcssa.i, %8
  br i1 %i.agd, label %.lr.ph816.i.preheader, label %._crit_edge817.i

.lr.ph816.i.preheader:                            ; preds = %.preheader406.i
  %i.age = sub i32 %8, %.01729.lcssa.i
  %.neg2241 = add i32 %.01729.lcssa.i, 1
  %xtraiter2107 = and i32 %i.age, 1
  %lcmp.mod2108.not = icmp eq i32 %xtraiter2107, 0
  br i1 %lcmp.mod2108.not, label %.lr.ph816.i.prol.loopexit, label %.lr.ph816.i.prol

.lr.ph816.i.prol:                                 ; preds = %.lr.ph816.i.preheader
  %i.agf = load <8 x bfloat>, ptr %.01727.lcssa.i, align 1, !tbaa !17
  %i.agg = fpext fast <8 x bfloat> %i.agf to <8 x float> ; 2 uses
  %i.agh = load float, ptr %.101623.lcssa.i, align 1, !tbaa !17
  %i.agi = insertelement <4 x float> poison, float %i.agh, i64 0
  %i.agj = bitcast <4 x float> %i.agi to <8 x bfloat>
  %i.agk = shufflevector <8 x bfloat> %i.agj, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.agl = fpext fast <8 x bfloat> %i.agk to <8 x float> ; 2 uses
  %i.agm = shufflevector <8 x float> %i.agl, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.agn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agg, <8 x float> nofpclass(nan inf) %i.agl, <8 x float> nofpclass(nan inf) %.1306.lcssa.i) ; 2 uses
  %i.ago = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agg, <8 x float> nofpclass(nan inf) %i.agm, <8 x float> nofpclass(nan inf) %.1309.lcssa.i) ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %.01727.lcssa.i, i64 16
  %i.agq = getelementptr inbounds nuw i8, ptr %.101623.lcssa.i, i64 4 ; 2 uses
  %i.agr = add nuw nsw i32 %.01729.lcssa.i, 1
  br label %.lr.ph816.i.prol.loopexit

.lr.ph816.i.prol.loopexit:                        ; preds = %.lr.ph816.i.prol, %.lr.ph816.i.preheader
  %.lcssa1977.unr = phi <8 x float> [ poison, %.lr.ph816.i.preheader ], [ %i.agn, %.lr.ph816.i.prol ]
  %.lcssa1976.unr = phi <8 x float> [ poison, %.lr.ph816.i.preheader ], [ %i.ago, %.lr.ph816.i.prol ]
  %.lcssa1975.unr = phi ptr [ poison, %.lr.ph816.i.preheader ], [ %i.agq, %.lr.ph816.i.prol ]
  %.111624815.i.unr = phi ptr [ %.101623.lcssa.i, %.lr.ph816.i.preheader ], [ %i.agq, %.lr.ph816.i.prol ]
  %.11728814.i.unr = phi ptr [ %.01727.lcssa.i, %.lr.ph816.i.preheader ], [ %i.agp, %.lr.ph816.i.prol ]
  %.11730813.i.unr = phi i32 [ %.01729.lcssa.i, %.lr.ph816.i.preheader ], [ %i.agr, %.lr.ph816.i.prol ]
  %.2307812.i.unr = phi <8 x float> [ %.1306.lcssa.i, %.lr.ph816.i.preheader ], [ %i.agn, %.lr.ph816.i.prol ]
  %.2310811.i.unr = phi <8 x float> [ %.1309.lcssa.i, %.lr.ph816.i.preheader ], [ %i.ago, %.lr.ph816.i.prol ]
  %i.ags = icmp eq i32 %8, %.neg2241
  br i1 %i.ags, label %._crit_edge817.i, label %.lr.ph816.i

.lr.ph805.i:                                      ; preds = %.lr.ph805.i.preheader, %.lr.ph805.i
  %.101623803.i = phi ptr [ %i.ahs, %.lr.ph805.i ], [ %.91622822.i, %.lr.ph805.i.preheader ] ; 3 uses
  %.01727802.i = phi ptr [ %i.ahr, %.lr.ph805.i ], [ %.1854.i, %.lr.ph805.i.preheader ] ; 3 uses
  %.1306800.i = phi <8 x float> [ %i.aho, %.lr.ph805.i ], [ %.0305.i, %.lr.ph805.i.preheader ]
  %.1309799.i = phi <8 x float> [ %i.ahq, %.lr.ph805.i ], [ %.0308.i, %.lr.ph805.i.preheader ]
  %niter2106 = phi i32 [ %niter2106.next.1, %.lr.ph805.i ], [ 0, %.lr.ph805.i.preheader ]
  %i.agt = load <16 x bfloat>, ptr %.01727802.i, align 1, !tbaa !17 ; 2 uses
  %i.agu = load double, ptr %.101623803.i, align 1, !tbaa !17
  %i.agv = insertelement <4 x double> poison, double %i.agu, i64 0
  %i.agw = bitcast <4 x double> %i.agv to <4 x i64>
  %i.agx = shufflevector <4 x i64> %i.agw, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.agy = bitcast <4 x i64> %i.agx to <8 x i32>
  %i.agz = shufflevector <8 x i32> %i.agy, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.aha = bitcast <4 x i64> %i.agx to <16 x bfloat>
  %i.ahb = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1306800.i, <16 x bfloat> nofpclass(nan inf) %i.agt, <16 x bfloat> nofpclass(nan inf) %i.aha)
  %i.ahc = bitcast <8 x i32> %i.agz to <16 x bfloat>
  %i.ahd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1309799.i, <16 x bfloat> nofpclass(nan inf) %i.agt, <16 x bfloat> nofpclass(nan inf) %i.ahc)
  %i.ahe = getelementptr inbounds nuw i8, ptr %.01727802.i, i64 32
  %i.ahf = getelementptr inbounds nuw i8, ptr %.101623803.i, i64 8
  %i.ahg = load <16 x bfloat>, ptr %i.ahe, align 1, !tbaa !17 ; 2 uses
  %i.ahh = load double, ptr %i.ahf, align 1, !tbaa !17
  %i.ahi = insertelement <4 x double> poison, double %i.ahh, i64 0
  %i.ahj = bitcast <4 x double> %i.ahi to <4 x i64>
  %i.ahk = shufflevector <4 x i64> %i.ahj, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ahl = bitcast <4 x i64> %i.ahk to <8 x i32>
  %i.ahm = shufflevector <8 x i32> %i.ahl, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ahn = bitcast <4 x i64> %i.ahk to <16 x bfloat>
  %i.aho = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.ahb, <16 x bfloat> nofpclass(nan inf) %i.ahg, <16 x bfloat> nofpclass(nan inf) %i.ahn) ; 3 uses
  %i.ahp = bitcast <8 x i32> %i.ahm to <16 x bfloat>
  %i.ahq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.ahd, <16 x bfloat> nofpclass(nan inf) %i.ahg, <16 x bfloat> nofpclass(nan inf) %i.ahp) ; 3 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %.01727802.i, i64 64 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %.101623803.i, i64 16 ; 2 uses
  %niter2106.next.1 = add nuw nsw i32 %niter2106, 2 ; 2 uses
  %niter2106.ncmp.1.not = icmp eq i32 %niter2106.next.1, %unroll_iter2105
  br i1 %niter2106.ncmp.1.not, label %.preheader406.loopexit.i.unr-lcssa, label %.lr.ph805.i, !llvm.loop !364

.lr.ph816.i:                                      ; preds = %.lr.ph816.i.prol.loopexit, %.lr.ph816.i
  %.111624815.i = phi ptr [ %i.aiq, %.lr.ph816.i ], [ %.111624815.i.unr, %.lr.ph816.i.prol.loopexit ] ; 3 uses
  %.11728814.i = phi ptr [ %i.aip, %.lr.ph816.i ], [ %.11728814.i.unr, %.lr.ph816.i.prol.loopexit ] ; 3 uses
  %.11730813.i = phi i32 [ %i.air, %.lr.ph816.i ], [ %.11730813.i.unr, %.lr.ph816.i.prol.loopexit ]
  %.2307812.i = phi <8 x float> [ %i.ain, %.lr.ph816.i ], [ %.2307812.i.unr, %.lr.ph816.i.prol.loopexit ]
  %.2310811.i = phi <8 x float> [ %i.aio, %.lr.ph816.i ], [ %.2310811.i.unr, %.lr.ph816.i.prol.loopexit ]
  %i.aht = load <8 x bfloat>, ptr %.11728814.i, align 1, !tbaa !17
  %i.ahu = fpext fast <8 x bfloat> %i.aht to <8 x float> ; 2 uses
  %i.ahv = load float, ptr %.111624815.i, align 1, !tbaa !17
  %i.ahw = insertelement <4 x float> poison, float %i.ahv, i64 0
  %i.ahx = bitcast <4 x float> %i.ahw to <8 x bfloat>
  %i.ahy = shufflevector <8 x bfloat> %i.ahx, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ahz = fpext fast <8 x bfloat> %i.ahy to <8 x float> ; 2 uses
  %i.aia = shufflevector <8 x float> %i.ahz, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.aib = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahu, <8 x float> nofpclass(nan inf) %i.ahz, <8 x float> nofpclass(nan inf) %.2307812.i)
  %i.aic = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ahu, <8 x float> nofpclass(nan inf) %i.aia, <8 x float> nofpclass(nan inf) %.2310811.i)
  %i.aid = getelementptr inbounds nuw i8, ptr %.11728814.i, i64 16
  %i.aie = getelementptr inbounds nuw i8, ptr %.111624815.i, i64 4
  %i.aif = load <8 x bfloat>, ptr %i.aid, align 1, !tbaa !17
  %i.aig = fpext fast <8 x bfloat> %i.aif to <8 x float> ; 2 uses
  %i.aih = load float, ptr %i.aie, align 1, !tbaa !17
  %i.aii = insertelement <4 x float> poison, float %i.aih, i64 0
  %i.aij = bitcast <4 x float> %i.aii to <8 x bfloat>
  %i.aik = shufflevector <8 x bfloat> %i.aij, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ail = fpext fast <8 x bfloat> %i.aik to <8 x float> ; 2 uses
  %i.aim = shufflevector <8 x float> %i.ail, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ain = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aig, <8 x float> nofpclass(nan inf) %i.ail, <8 x float> nofpclass(nan inf) %i.aib) ; 2 uses
  %i.aio = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aig, <8 x float> nofpclass(nan inf) %i.aim, <8 x float> nofpclass(nan inf) %i.aic) ; 2 uses
  %i.aip = getelementptr inbounds nuw i8, ptr %.11728814.i, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %.111624815.i, i64 8 ; 2 uses
  %i.air = add nuw nsw i32 %.11730813.i, 2        ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
._crit_edge843.i:                                 ; preds = %.lr.ph842.i.prol.loopexit, %.lr.ph842.i, %.preheader405.i
  %.2313.lcssa.i = phi <8 x float> [ %.1312.lcssa.i, %.preheader405.i ], [ %.lcssa1982.unr, %.lr.ph842.i.prol.loopexit ], [ %i.alv, %.lr.ph842.i ]
  %.141627.lcssa.i = phi ptr [ %.131626.lcssa.i, %.preheader405.i ], [ %.lcssa1981.unr, %.lr.ph842.i.prol.loopexit ], [ %i.alx, %.lr.ph842.i ]
  store <8 x float> %.2313.lcssa.i, ptr %.11848.i, align 32, !tbaa !17
  %i.alz = getelementptr inbounds nuw i8, ptr %.11848.i, i64 32 ; 2 uses
  %i.ama = add nuw nsw i32 %.41632846.i, 1        ; 2 uses
  %exitcond1772.not.i = icmp eq i32 %i.ama, %6
  br i1 %exitcond1772.not.i, label %._crit_edge850.i, label %.lr.ph849.i, !llvm.loop !370

._crit_edge850.i:                                 ; preds = %._crit_edge843.i, %.preheader410.i
  %.11.lcssa.i = phi ptr [ %.10.lcssa.i, %.preheader410.i ], [ %i.alz, %._crit_edge843.i ] ; 2 uses
  %i.amb = getelementptr inbounds [2 x i8], ptr %.1854.i, i64 %i.ag ; 2 uses
  %i.amc = add nuw nsw i32 %.11387852.i, 8        ; 3 uses
  %i.amd = or disjoint i32 %i.amc, 7
  %i.ame = icmp slt i32 %i.amd, %4
  %scevgep1765.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.ap
  br i1 %i.ame, label %.preheader414.i, label %.preheader404.i, !llvm.loop !371

.preheader403.i:                                  ; preds = %._crit_edge1020.i, %.preheader403.lr.ph.i
  %indvars.iv1779.i = phi ptr [ %scevgep1778.i, %.preheader403.lr.ph.i ], [ %scevgep1780.i, %._crit_edge1020.i ] ; 4 uses
  %.21024.i = phi ptr [ %.1.lcssa.i, %.preheader403.lr.ph.i ], [ %i.bhw, %._crit_edge1020.i ] ; 16 uses
  %.121023.i = phi ptr [ %.6.lcssa.i, %.preheader403.lr.ph.i ], [ %.17.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %.213881022.i = phi i32 [ %.11387.lcssa.i, %.preheader403.lr.ph.i ], [ %i.bhx, %._crit_edge1020.i ]
  br i1 %i.tx, label %.lr.ph891.i, label %.preheader402.i

.preheader393.i:                                  ; preds = %._crit_edge1020.i, %.preheader404.i
  %.21388.lcssa.i = phi i32 [ %.11387.lcssa.i, %.preheader404.i ], [ %i.bhx, %._crit_edge1020.i ] ; 3 uses
  %.12.lcssa.i = phi ptr [ %.6.lcssa.i, %.preheader404.i ], [ %.17.lcssa.i, %._crit_edge1020.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.preheader404.i ], [ %i.bhw, %._crit_edge1020.i ] ; 3 uses
  %i.amf = or disjoint i32 %.21388.lcssa.i, 1
  %i.amg = icmp slt i32 %i.amf, %4
  br i1 %i.amg, label %.preheader392.lr.ph.i, label %.preheader382.i

.preheader392.lr.ph.i:                            ; preds = %.preheader393.i
  %i.amh = icmp sgt i32 %6, 15
  %.not1796.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.ami = icmp sgt i32 %8, 1                     ; 5 uses
  %i.amj = shl i32 %8, 1
  %i.amk = sext i32 %i.amj to i64                 ; 2 uses
  %i.aml = add i32 %8, -2                         ; 7 uses
  %i.amm = and i32 %i.aml, -2
  %i.amn = add i32 %i.amm, 2                      ; 5 uses
  %i.amo = and i32 %6, -16
  %i.amp = lshr i32 %i.aml, 1
  %i.amq = zext nneg i32 %i.amp to i64            ; 5 uses
  %i.amr = shl nuw nsw i64 %i.amq, 5
  %i.ams = shl nuw nsw i64 %i.amq, 4
  %i.amt = shl nuw nsw i64 %i.amq, 3
  %i.amu = add nuw nsw i64 %i.amt, 8              ; 2 uses
  %scevgep1793.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.amu
  %i.amv = shl nsw i64 %i.amk, 1
  %i.amw = shl nuw nsw i64 %i.amq, 2
  %i.amx = lshr i32 %i.aml, 1
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = shl nuw nsw i64 %i.amy, 6
  %i.ana = add nuw nsw i64 %i.amq, 1              ; 10 uses
  %i.anb = add i32 %8, -2                         ; 4 uses
  %i.anc = lshr i32 %i.anb, 1                     ; 4 uses
  %i.and = add nuw i32 %i.anc, 1                  ; 6 uses
  %i.ane = icmp eq i32 %i.anc, 0
  %unroll_iter2182 = and i32 %i.and, -2
  %i.anf = and i32 %i.anb, 2
  %lcmp.mod2177.not.not = icmp eq i32 %i.anf, 0
  %lcmp.mod2181 = trunc i32 %i.and to i1
  %i.ang = icmp eq i32 %i.anc, 0
  %unroll_iter2193 = and i32 %i.and, -2
  %i.anh = and i32 %i.anb, 2
  %lcmp.mod2188.not.not = icmp eq i32 %i.anh, 0
  %lcmp.mod2192 = trunc i32 %i.and to i1
  %i.ani = icmp eq i32 %i.anc, 0
  %unroll_iter2204 = and i32 %i.and, -2
  %i.anj = and i32 %i.anb, 2
  %lcmp.mod2199.not.not = icmp eq i32 %i.anj, 0
  %lcmp.mod2203 = trunc i32 %i.and to i1
  %min.iters.check1320 = icmp ult i32 %i.aml, 14
  %min.iters.check1322 = icmp ult i32 %i.aml, 62
  %i.ank = and i64 %i.ana, 24
  %n.vec1324 = and i64 %i.ana, 4294967264         ; 5 uses
  %i.anl = trunc nuw i64 %n.vec1324 to i32
  %i.anm = shl i32 %i.anl, 1
  %i.ann = shl nuw nsw i64 %n.vec1324, 3          ; 2 uses
  %cmp.n1365 = icmp eq i64 %i.ana, %n.vec1324
  %min.epilog.iters.check1369 = icmp eq i64 %i.ank, 0
  %n.vec1376 = and i64 %i.ana, 4294967288         ; 4 uses
  %i.ano = trunc nuw i64 %n.vec1376 to i32
  %i.anp = shl i32 %i.ano, 1
  %i.anq = shl nuw nsw i64 %n.vec1376, 3          ; 2 uses
  %cmp.n1397 = icmp eq i64 %i.ana, %n.vec1376
  %min.iters.check1152 = icmp ult i32 %i.aml, 14
  %min.iters.check1154 = icmp ult i32 %i.aml, 126
  %i.anr = and i64 %i.ana, 56
  %n.vec1156 = and i64 %i.ana, 4294967232         ; 6 uses
  %i.ans = trunc nuw i64 %n.vec1156 to i32
  %i.ant = shl i32 %i.ans, 1
  %i.anu = shl nuw nsw i64 %n.vec1156, 3
  %i.anv = shl nuw nsw i64 %n.vec1156, 2
  %cmp.n1215 = icmp eq i64 %i.ana, %n.vec1156
  %min.epilog.iters.check1219 = icmp eq i64 %i.anr, 0
  %n.vec1224 = and i64 %i.ana, 4294967288         ; 5 uses
  %i.anw = trunc nuw i64 %n.vec1224 to i32
  %i.anx = shl i32 %i.anw, 1
  %i.any = shl nuw nsw i64 %n.vec1224, 3
  %i.anz = shl nuw nsw i64 %n.vec1224, 2
  %cmp.n1241 = icmp eq i64 %i.ana, %n.vec1224
  br label %.preheader392.i

.preheader402.i:                                  ; preds = %._crit_edge882.i, %.preheader403.i
  %.01754.lcssa.i = phi i32 [ 0, %.preheader403.i ], [ %i.ue, %._crit_edge882.i ] ; 3 uses
  %.01739.lcssa.i = phi ptr [ %.val8, %.preheader403.i ], [ %.21741.lcssa.i, %._crit_edge882.i ] ; 2 uses
  %.13.lcssa.i = phi ptr [ %.121023.i, %.preheader403.i ], [ %i.asg, %._crit_edge882.i ] ; 2 uses
  %i.aoa = or disjoint i32 %.01754.lcssa.i, 7
  %i.aob = icmp slt i32 %i.aoa, %6
  br i1 %i.aob, label %.lr.ph928.i, label %.preheader401.i

.lr.ph891.i:                                      ; preds = %.preheader403.i, %._crit_edge882.i
  %.13890.i = phi ptr [ %i.asg, %._crit_edge882.i ], [ %.121023.i, %.preheader403.i ] ; 9 uses
  %.01739889.i = phi ptr [ %.21741.lcssa.i, %._crit_edge882.i ], [ %.val8, %.preheader403.i ] ; 4 uses
  %.01754888.i = phi i32 [ %i.ash, %._crit_edge882.i ], [ 0, %.preheader403.i ]
  br i1 %.not1801.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph891.i
  %i.aoc = load <16 x float>, ptr %.13890.i, align 1, !tbaa !17
  %i.aod = getelementptr inbounds nuw i8, ptr %.13890.i, i64 64
  %i.aoe = load <16 x float>, ptr %i.aod, align 1, !tbaa !17
  %i.aof = getelementptr inbounds nuw i8, ptr %.13890.i, i64 128
  %i.aog = load <16 x float>, ptr %i.aof, align 1, !tbaa !17
  %i.aoh = getelementptr inbounds nuw i8, ptr %.13890.i, i64 192
  %i.aoi = load <16 x float>, ptr %i.aoh, align 1, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph891.i
  %.01778.i = phi nsz <16 x float> [ %i.aoi, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01771.i = phi nsz <16 x float> [ %i.aog, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01768.i = phi nsz <16 x float> [ %i.aoe, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  %.01765.i = phi nsz <16 x float> [ %i.aoc, %bb.v ], [ zeroinitializer, %.lr.ph891.i ] ; 3 uses
  br i1 %i.ty, label %.lr.ph866.i.preheader, label %.preheader398.i

.lr.ph866.i.preheader:                            ; preds = %bb.w
  br i1 %i.ut, label %.lr.ph866.i.epil.preheader, label %.lr.ph866.i

.preheader398.i.loopexit.unr-lcssa:               ; preds = %.lr.ph866.i
  br i1 %lcmp.mod2120.not.not, label %.lr.ph866.i.epil.preheader, label %.preheader398.i.loopexit

.lr.ph866.i.epil.preheader:                       ; preds = %.preheader398.i.loopexit.unr-lcssa, %.lr.ph866.i.preheader
  %.11740864.i.epil.init = phi ptr [ %.01739889.i, %.lr.ph866.i.preheader ], [ %i.aqx, %.preheader398.i.loopexit.unr-lcssa ]
  %.01763863.i.epil.init = phi ptr [ %.21024.i, %.lr.ph866.i.preheader ], [ %i.aqw, %.preheader398.i.loopexit.unr-lcssa ] ; 2 uses
  %.11766862.i.epil.init = phi <16 x float> [ %.01765.i, %.lr.ph866.i.preheader ], [ %i.aqp, %.preheader398.i.loopexit.unr-lcssa ]
  %.11769861.i.epil.init = phi <16 x float> [ %.01768.i, %.lr.ph866.i.preheader ], [ %i.aqr, %.preheader398.i.loopexit.unr-lcssa ]
  %.11772860.i.epil.init = phi <16 x float> [ %.01771.i, %.lr.ph866.i.preheader ], [ %i.aqu, %.preheader398.i.loopexit.unr-lcssa ]
  %.11779859.i.epil.init = phi <16 x float> [ %.01778.i, %.lr.ph866.i.preheader ], [ %i.aqv, %.preheader398.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2126)
  %i.aoj = load <4 x i32>, ptr %.01763863.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aok = load <8 x i64>, ptr %.11740864.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.aol = bitcast <8 x i64> %i.aok to <16 x i32>
  %i.aom = shufflevector <16 x i32> %i.aol, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.aon = bitcast <4 x i32> %i.aoj to <8 x bfloat>
  %i.aoo = shufflevector <8 x bfloat> %i.aon, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aop = bitcast <8 x i64> %i.aok to <32 x bfloat> ; 2 uses
  %i.aoq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11766862.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aoo, <32 x bfloat> nofpclass(nan inf) %i.aop)
  %i.aor = bitcast <16 x i32> %i.aom to <32 x bfloat> ; 2 uses
  %i.aos = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11769861.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aoo, <32 x bfloat> nofpclass(nan inf) %i.aor)
  %i.aot = bitcast <4 x i32> %i.aoj to <8 x bfloat>
  %i.aou = shufflevector <8 x bfloat> %i.aot, <8 x bfloat> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aov = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11772860.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aou, <32 x bfloat> nofpclass(nan inf) %i.aop)
  %i.aow = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11779859.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.aou, <32 x bfloat> nofpclass(nan inf) %i.aor)
  %i.aox = getelementptr inbounds nuw i8, ptr %.01763863.i.epil.init, i64 16
  br label %.preheader398.i.loopexit

.preheader398.i.loopexit:                         ; preds = %.preheader398.i.loopexit.unr-lcssa, %.lr.ph866.i.epil.preheader
  %.lcssa1881 = phi <16 x float> [ %i.aqp, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aoq, %.lr.ph866.i.epil.preheader ]
  %.lcssa1880 = phi <16 x float> [ %i.aqr, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aos, %.lr.ph866.i.epil.preheader ]
  %.lcssa1879 = phi <16 x float> [ %i.aqu, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aov, %.lr.ph866.i.epil.preheader ]
  %.lcssa1878 = phi <16 x float> [ %i.aqv, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aow, %.lr.ph866.i.epil.preheader ]
  %.lcssa1877 = phi ptr [ %i.aqw, %.preheader398.i.loopexit.unr-lcssa ], [ %i.aox, %.lr.ph866.i.epil.preheader ]
  %i.aoy = getelementptr i8, ptr %.01739889.i, i64 %i.up
  %scevgep551 = getelementptr i8, ptr %i.aoy, i64 64
  br label %.preheader398.i

.preheader398.i:                                  ; preds = %.preheader398.i.loopexit, %bb.w
  %.01781.lcssa.i = phi i32 [ 0, %bb.w ], [ %i.ud, %.preheader398.i.loopexit ] ; 5 uses
  %.11779.lcssa.i = phi <16 x float> [ %.01778.i, %bb.w ], [ %.lcssa1878, %.preheader398.i.loopexit ] ; 3 uses
  %.11772.lcssa.i = phi <16 x float> [ %.01771.i, %bb.w ], [ %.lcssa1879, %.preheader398.i.loopexit ] ; 3 uses
  %.11769.lcssa.i = phi <16 x float> [ %.01768.i, %bb.w ], [ %.lcssa1880, %.preheader398.i.loopexit ] ; 3 uses
  %.11766.lcssa.i = phi <16 x float> [ %.01765.i, %bb.w ], [ %.lcssa1881, %.preheader398.i.loopexit ] ; 3 uses
  %.01763.lcssa.i = phi ptr [ %.21024.i, %bb.w ], [ %.lcssa1877, %.preheader398.i.loopexit ] ; 3 uses
  %.11740.lcssa.i = phi ptr [ %.01739889.i, %bb.w ], [ %scevgep551, %.preheader398.i.loopexit ] ; 4 uses
  %i.aoz = icmp slt i32 %.01781.lcssa.i, %8
  br i1 %i.aoz, label %.lr.ph881.i.preheader, label %._crit_edge882.i

.lr.ph881.i.preheader:                            ; preds = %.preheader398.i
  %i.apa = sub i32 %8, %.01781.lcssa.i
  %.neg2243 = add i32 %.01781.lcssa.i, 1
  %xtraiter2129 = and i32 %i.apa, 1
  %lcmp.mod2130.not = icmp eq i32 %xtraiter2129, 0
  br i1 %lcmp.mod2130.not, label %.lr.ph881.i.prol.loopexit, label %.lr.ph881.i.prol

.lr.ph881.i.prol:                                 ; preds = %.lr.ph881.i.preheader
  %i.apb = load i64, ptr %.01763.lcssa.i, align 1, !tbaa !17
  %i.apc = insertelement <2 x i64> poison, i64 %i.apb, i64 0
  %i.apd = bitcast <2 x i64> %i.apc to <8 x i16>
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.apd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ape = bitcast <8 x i16> %15 to <4 x float>   ; 2 uses
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.apg = load <16 x bfloat>, ptr %.11740.lcssa.i, align 1, !tbaa !17
  %i.aph = fpext fast <16 x bfloat> %i.apg to <16 x float> ; 3 uses
  %i.api = shufflevector <4 x float> %i.ape, <4 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.apj = shufflevector <16 x float> %i.aph, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.apk = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.apf, <16 x float> nofpclass(nan inf) %i.aph, <16 x float> nofpclass(nan inf) %.11766.lcssa.i) ; 2 uses
  %i.apl = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.apf, <16 x float> nofpclass(nan inf) %i.apj, <16 x float> nofpclass(nan inf) %.11769.lcssa.i) ; 2 uses
  %i.apm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.api, <16 x float> nofpclass(nan inf) %i.aph, <16 x float> nofpclass(nan inf) %.11772.lcssa.i) ; 2 uses
  %i.apn = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.api, <16 x float> nofpclass(nan inf) %i.apj, <16 x float> nofpclass(nan inf) %.11779.lcssa.i) ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.01763.lcssa.i, i64 8
  %i.app = getelementptr inbounds nuw i8, ptr %.11740.lcssa.i, i64 32 ; 2 uses
  %i.apq = add nuw nsw i32 %.01781.lcssa.i, 1
  br label %.lr.ph881.i.prol.loopexit

.lr.ph881.i.prol.loopexit:                        ; preds = %.lr.ph881.i.prol, %.lr.ph881.i.preheader
  %.lcssa1886.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apk, %.lr.ph881.i.prol ]
  %.lcssa1885.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apl, %.lr.ph881.i.prol ]
  %.lcssa1884.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apm, %.lr.ph881.i.prol ]
  %.lcssa1883.unr = phi <16 x float> [ poison, %.lr.ph881.i.preheader ], [ %i.apn, %.lr.ph881.i.prol ]
  %.lcssa1882.unr = phi ptr [ poison, %.lr.ph881.i.preheader ], [ %i.app, %.lr.ph881.i.prol ]
  %.21741880.i.unr = phi ptr [ %.11740.lcssa.i, %.lr.ph881.i.preheader ], [ %i.app, %.lr.ph881.i.prol ]
  %.11764879.i.unr = phi ptr [ %.01763.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apo, %.lr.ph881.i.prol ]
  %.21767878.i.unr = phi <16 x float> [ %.11766.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apk, %.lr.ph881.i.prol ]
  %.21770877.i.unr = phi <16 x float> [ %.11769.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apl, %.lr.ph881.i.prol ]
  %.21773876.i.unr = phi <16 x float> [ %.11772.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apm, %.lr.ph881.i.prol ]
  %.21780875.i.unr = phi <16 x float> [ %.11779.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apn, %.lr.ph881.i.prol ]
  %.11782874.i.unr = phi i32 [ %.01781.lcssa.i, %.lr.ph881.i.preheader ], [ %i.apq, %.lr.ph881.i.prol ]
  %i.apr = icmp eq i32 %8, %.neg2243
  br i1 %i.apr, label %._crit_edge882.i, label %.lr.ph881.i

.lr.ph866.i:                                      ; preds = %.lr.ph866.i.preheader, %.lr.ph866.i
  %.11740864.i = phi ptr [ %i.aqx, %.lr.ph866.i ], [ %.01739889.i, %.lr.ph866.i.preheader ] ; 3 uses
  %.01763863.i = phi ptr [ %i.aqw, %.lr.ph866.i ], [ %.21024.i, %.lr.ph866.i.preheader ] ; 3 uses
  %.11766862.i = phi <16 x float> [ %i.aqp, %.lr.ph866.i ], [ %.01765.i, %.lr.ph866.i.preheader ]
  %.11769861.i = phi <16 x float> [ %i.aqr, %.lr.ph866.i ], [ %.01768.i, %.lr.ph866.i.preheader ]
  %.11772860.i = phi <16 x float> [ %i.aqu, %.lr.ph866.i ], [ %.01771.i, %.lr.ph866.i.preheader ]
  %.11779859.i = phi <16 x float> [ %i.aqv, %.lr.ph866.i ], [ %.01778.i, %.lr.ph866.i.preheader ]
  %niter2128 = phi i32 [ %niter2128.next.1, %.lr.ph866.i ], [ 0, %.lr.ph866.i.preheader ]
  %i.aps = load <4 x i32>, ptr %.01763863.i, align 1, !tbaa !17 ; 2 uses
  %i.apt = load <8 x i64>, ptr %.11740864.i, align 1, !tbaa !17 ; 2 uses
  %i.apu = bitcast <8 x i64> %i.apt to <16 x i32>
  %i.apv = shufflevector <16 x i32> %i.apu, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.apw = bitcast <4 x i32> %i.aps to <8 x bfloat>
  %i.apx = shufflevector <8 x bfloat> %i.apw, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.apy = bitcast <8 x i64> %i.apt to <32 x bfloat> ; 2 uses
  %i.apz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11766862.i, <32 x bfloat> nofpclass(nan inf) %i.apx, <32 x bfloat> nofpclass(nan inf) %i.apy)
  %i.aqa = bitcast <16 x i32> %i.apv to <32 x bfloat> ; 2 uses
  %i.aqb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11769861.i, <32 x bfloat> nofpclass(nan inf) %i.apx, <32 x bfloat> nofpclass(nan inf) %i.aqa)
  %i.aqc = bitcast <4 x i32> %i.aps to <8 x bfloat>
  %i.aqd = shufflevector <8 x bfloat> %i.aqc, <8 x bfloat> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aqe = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11772860.i, <32 x bfloat> nofpclass(nan inf) %i.aqd, <32 x bfloat> nofpclass(nan inf) %i.apy)
  %i.aqf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.11779859.i, <32 x bfloat> nofpclass(nan inf) %i.aqd, <32 x bfloat> nofpclass(nan inf) %i.aqa)
  %i.aqg = getelementptr inbounds nuw i8, ptr %.01763863.i, i64 16
  %i.aqh = getelementptr inbounds nuw i8, ptr %.11740864.i, i64 64
  %i.aqi = load <4 x i32>, ptr %i.aqg, align 1, !tbaa !17 ; 2 uses
  %i.aqj = load <8 x i64>, ptr %i.aqh, align 1, !tbaa !17 ; 2 uses
  %i.aqk = bitcast <8 x i64> %i.aqj to <16 x i32>
  %i.aql = shufflevector <16 x i32> %i.aqk, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.aqm = bitcast <4 x i32> %i.aqi to <8 x bfloat>
  %i.aqn = shufflevector <8 x bfloat> %i.aqm, <8 x bfloat> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %i.aqo = bitcast <8 x i64> %i.aqj to <32 x bfloat> ; 2 uses
  %i.aqp = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.apz, <32 x bfloat> nofpclass(nan inf) %i.aqn, <32 x bfloat> nofpclass(nan inf) %i.aqo) ; 3 uses
  %i.aqq = bitcast <16 x i32> %i.aql to <32 x bfloat> ; 2 uses
  %i.aqr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.aqb, <32 x bfloat> nofpclass(nan inf) %i.aqn, <32 x bfloat> nofpclass(nan inf) %i.aqq) ; 3 uses
  %i.aqs = bitcast <4 x i32> %i.aqi to <8 x bfloat>
  %i.aqt = shufflevector <8 x bfloat> %i.aqs, <8 x bfloat> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aqu = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.aqe, <32 x bfloat> nofpclass(nan inf) %i.aqt, <32 x bfloat> nofpclass(nan inf) %i.aqo) ; 3 uses
  %i.aqv = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %i.aqf, <32 x bfloat> nofpclass(nan inf) %i.aqt, <32 x bfloat> nofpclass(nan inf) %i.aqq) ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %.01763863.i, i64 32 ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.11740864.i, i64 128 ; 2 uses
  %niter2128.next.1 = add nuw nsw i32 %niter2128, 2 ; 2 uses
  %niter2128.ncmp.1.not = icmp eq i32 %niter2128.next.1, %unroll_iter2127
  br i1 %niter2128.ncmp.1.not, label %.preheader398.i.loopexit.unr-lcssa, label %.lr.ph866.i, !llvm.loop !372

.lr.ph881.i:                                      ; preds = %.lr.ph881.i.prol.loopexit, %.lr.ph881.i
  %.21741880.i = phi ptr [ %i.asb, %.lr.ph881.i ], [ %.21741880.i.unr, %.lr.ph881.i.prol.loopexit ] ; 3 uses
  %.11764879.i = phi ptr [ %i.asa, %.lr.ph881.i ], [ %.11764879.i.unr, %.lr.ph881.i.prol.loopexit ] ; 3 uses
  %.21767878.i = phi <16 x float> [ %i.arw, %.lr.ph881.i ], [ %.21767878.i.unr, %.lr.ph881.i.prol.loopexit ]
  %.21770877.i = phi <16 x float> [ %i.arx, %.lr.ph881.i ], [ %.21770877.i.unr, %.lr.ph881.i.prol.loopexit ]
  %.21773876.i = phi <16 x float> [ %i.ary, %.lr.ph881.i ], [ %.21773876.i.unr, %.lr.ph881.i.prol.loopexit ]
  %.21780875.i = phi <16 x float> [ %i.arz, %.lr.ph881.i ], [ %.21780875.i.unr, %.lr.ph881.i.prol.loopexit ]
  %.11782874.i = phi i32 [ %i.asc, %.lr.ph881.i ], [ %.11782874.i.unr, %.lr.ph881.i.prol.loopexit ]
  %i.aqy = load i64, ptr %.11764879.i, align 1, !tbaa !17
  %i.aqz = insertelement <2 x i64> poison, i64 %i.aqy, i64 0
  %i.ara = bitcast <2 x i64> %i.aqz to <8 x i16>
  %16 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ara, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arb = bitcast <8 x i16> %16 to <4 x float>   ; 2 uses
  %i.arc = shufflevector <4 x float> %i.arb, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ard = load <16 x bfloat>, ptr %.21741880.i, align 1, !tbaa !17
  %i.are = fpext fast <16 x bfloat> %i.ard to <16 x float> ; 3 uses
  %i.arf = shufflevector <4 x float> %i.arb, <4 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.arg = shufflevector <16 x float> %i.are, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.arh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arc, <16 x float> nofpclass(nan inf) %i.are, <16 x float> nofpclass(nan inf) %.21767878.i)
  %i.ari = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arc, <16 x float> nofpclass(nan inf) %i.arg, <16 x float> nofpclass(nan inf) %.21770877.i)
  %i.arj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arf, <16 x float> nofpclass(nan inf) %i.are, <16 x float> nofpclass(nan inf) %.21773876.i)
  %i.ark = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arf, <16 x float> nofpclass(nan inf) %i.arg, <16 x float> nofpclass(nan inf) %.21780875.i)
  %i.arl = getelementptr inbounds nuw i8, ptr %.11764879.i, i64 8
  %i.arm = getelementptr inbounds nuw i8, ptr %.21741880.i, i64 32
  %i.arn = load i64, ptr %i.arl, align 1, !tbaa !17
  %i.aro = insertelement <2 x i64> poison, i64 %i.arn, i64 0
  %i.arp = bitcast <2 x i64> %i.aro to <8 x i16>
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.arp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arq = bitcast <8 x i16> %17 to <4 x float>   ; 2 uses
  %i.arr = shufflevector <4 x float> %i.arq, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ars = load <16 x bfloat>, ptr %i.arm, align 1, !tbaa !17
  %i.art = fpext fast <16 x bfloat> %i.ars to <16 x float> ; 3 uses
  %i.aru = shufflevector <4 x float> %i.arq, <4 x float> poison, <16 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.arv = shufflevector <16 x float> %i.art, <16 x float> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12> ; 2 uses
  %i.arw = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arr, <16 x float> nofpclass(nan inf) %i.art, <16 x float> nofpclass(nan inf) %i.arh) ; 2 uses
  %i.arx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.arr, <16 x float> nofpclass(nan inf) %i.arv, <16 x float> nofpclass(nan inf) %i.ari) ; 2 uses
  %i.ary = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aru, <16 x float> nofpclass(nan inf) %i.art, <16 x float> nofpclass(nan inf) %i.arj) ; 2 uses
  %i.arz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aru, <16 x float> nofpclass(nan inf) %i.arv, <16 x float> nofpclass(nan inf) %i.ark) ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %.11764879.i, i64 16
  %i.asb = getelementptr inbounds nuw i8, ptr %.21741880.i, i64 64 ; 2 uses
  %i.asc = add nuw nsw i32 %.11782874.i, 2        ; 2 uses
  %exitcond1773.not.i.1 = icmp eq i32 %i.asc, %8
  br i1 %exitcond1773.not.i.1, label %._crit_edge882.i, label %.lr.ph881.i, !llvm.loop !373

._crit_edge882.i:                                 ; preds = %.lr.ph881.i.prol.loopexit, %.lr.ph881.i, %.preheader398.i
  %.21780.lcssa.i = phi <16 x float> [ %.11779.lcssa.i, %.preheader398.i ], [ %.lcssa1883.unr, %.lr.ph881.i.prol.loopexit ], [ %i.arz, %.lr.ph881.i ]
  %.21773.lcssa.i = phi <16 x float> [ %.11772.lcssa.i, %.preheader398.i ], [ %.lcssa1884.unr, %.lr.ph881.i.prol.loopexit ], [ %i.ary, %.lr.ph881.i ]
  %.21770.lcssa.i = phi <16 x float> [ %.11769.lcssa.i, %.preheader398.i ], [ %.lcssa1885.unr, %.lr.ph881.i.prol.loopexit ], [ %i.arx, %.lr.ph881.i ]
  %.21767.lcssa.i = phi <16 x float> [ %.11766.lcssa.i, %.preheader398.i ], [ %.lcssa1886.unr, %.lr.ph881.i.prol.loopexit ], [ %i.arw, %.lr.ph881.i ]
  %.21741.lcssa.i = phi ptr [ %.11740.lcssa.i, %.preheader398.i ], [ %.lcssa1882.unr, %.lr.ph881.i.prol.loopexit ], [ %i.asb, %.lr.ph881.i ] ; 2 uses
  store <16 x float> %.21767.lcssa.i, ptr %.13890.i, align 1, !tbaa !17
  %i.asd = getelementptr inbounds nuw i8, ptr %.13890.i, i64 64
  store <16 x float> %.21770.lcssa.i, ptr %i.asd, align 1, !tbaa !17
  %i.ase = getelementptr inbounds nuw i8, ptr %.13890.i, i64 128
  store <16 x float> %.21773.lcssa.i, ptr %i.ase, align 1, !tbaa !17
  %i.asf = getelementptr inbounds nuw i8, ptr %.13890.i, i64 192
  store <16 x float> %.21780.lcssa.i, ptr %i.asf, align 1, !tbaa !17
  %i.asg = getelementptr inbounds nuw i8, ptr %.13890.i, i64 256 ; 2 uses
  %i.ash = add nuw nsw i32 %.01754888.i, 16       ; 2 uses
  %i.asi = or disjoint i32 %i.ash, 15
  %i.asj = icmp slt i32 %i.asi, %6
  br i1 %i.asj, label %.lr.ph891.i, label %.preheader402.i, !llvm.loop !374

.preheader401.i:                                  ; preds = %._crit_edge919.i, %.preheader402.i
  %.11755.lcssa.i = phi i32 [ %.01754.lcssa.i, %.preheader402.i ], [ %i.awu, %._crit_edge919.i ] ; 3 uses
  %.31742.lcssa.i = phi ptr [ %.01739.lcssa.i, %.preheader402.i ], [ %.51744.lcssa.i, %._crit_edge919.i ] ; 2 uses
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader402.i ], [ %i.awt, %._crit_edge919.i ] ; 2 uses
  %i.ask = or disjoint i32 %.11755.lcssa.i, 3
  %i.asl = icmp slt i32 %i.ask, %6
  br i1 %i.asl, label %.lr.ph965.i, label %.preheader400.i

.lr.ph928.i:                                      ; preds = %.preheader402.i, %._crit_edge919.i
  %.14927.i = phi ptr [ %i.awt, %._crit_edge919.i ], [ %.13.lcssa.i, %.preheader402.i ] ; 9 uses
  %.31742926.i = phi ptr [ %.51744.lcssa.i, %._crit_edge919.i ], [ %.01739.lcssa.i, %.preheader402.i ] ; 4 uses
  %.11755925.i = phi i32 [ %i.awu, %._crit_edge919.i ], [ %.01754.lcssa.i, %.preheader402.i ]
  br i1 %.not1801.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph928.i
  %i.asm = load <8 x float>, ptr %.14927.i, align 32, !tbaa !17
  %i.asn = getelementptr inbounds nuw i8, ptr %.14927.i, i64 32
  %i.aso = load <8 x float>, ptr %i.asn, align 32, !tbaa !17
  %i.asp = getelementptr inbounds nuw i8, ptr %.14927.i, i64 64
  %i.asq = load <8 x float>, ptr %i.asp, align 32, !tbaa !17
  %i.asr = getelementptr inbounds nuw i8, ptr %.14927.i, i64 96
  %i.ass = load <8 x float>, ptr %i.asr, align 32, !tbaa !17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph928.i
  %.0330.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph928.i ], [ %i.ass, %bb.x ] ; 3 uses
  %.0327.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph928.i ], [ %i.asq, %bb.x ] ; 3 uses
  %.0324.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph928.i ], [ %i.aso, %bb.x ] ; 3 uses
  %.0321.i = phi nsz <8 x float> [ zeroinitializer, %.lr.ph928.i ], [ %i.asm, %bb.x ] ; 3 uses
  br i1 %i.ty, label %.lr.ph903.i.preheader, label %.preheader397.i

.lr.ph903.i.preheader:                            ; preds = %bb.y
  br i1 %i.uv, label %.lr.ph903.i.epil.preheader, label %.lr.ph903.i

.preheader397.loopexit.i.unr-lcssa:               ; preds = %.lr.ph903.i
  br i1 %lcmp.mod2133.not.not, label %.lr.ph903.i.epil.preheader, label %.preheader397.loopexit.i

.lr.ph903.i.epil.preheader:                       ; preds = %.preheader397.loopexit.i.unr-lcssa, %.lr.ph903.i.preheader
  %.41743901.i.epil.init = phi ptr [ %.31742926.i, %.lr.ph903.i.preheader ], [ %i.avk, %.preheader397.loopexit.i.unr-lcssa ]
  %.01776899.i.epil.init = phi ptr [ %.21024.i, %.lr.ph903.i.preheader ], [ %i.avj, %.preheader397.loopexit.i.unr-lcssa ] ; 2 uses
  %.1322898.i.epil.init = phi <8 x float> [ %.0321.i, %.lr.ph903.i.preheader ], [ %i.avd, %.preheader397.loopexit.i.unr-lcssa ]
  %.1325897.i.epil.init = phi <8 x float> [ %.0324.i, %.lr.ph903.i.preheader ], [ %i.avf, %.preheader397.loopexit.i.unr-lcssa ]
  %.1328896.i.epil.init = phi <8 x float> [ %.0327.i, %.lr.ph903.i.preheader ], [ %i.avh, %.preheader397.loopexit.i.unr-lcssa ]
  %.1331895.i.epil.init = phi <8 x float> [ %.0330.i, %.lr.ph903.i.preheader ], [ %i.avi, %.preheader397.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2139)
  %i.ast = load <2 x i64>, ptr %.01776899.i.epil.init, align 1, !tbaa !17
  %i.asu = shufflevector <2 x i64> %i.ast, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.asv = load <4 x i64>, ptr %.41743901.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.asw = bitcast <4 x i64> %i.asu to <8 x i32>
  %i.asx = shufflevector <8 x i32> %i.asw, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.asy = bitcast <4 x i64> %i.asv to <8 x i32>
  %i.asz = shufflevector <8 x i32> %i.asy, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.ata = bitcast <4 x i64> %i.asu to <16 x bfloat> ; 2 uses
  %i.atb = bitcast <4 x i64> %i.asv to <16 x bfloat> ; 2 uses
  %i.atc = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1322898.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.ata, <16 x bfloat> nofpclass(nan inf) %i.atb)
  %i.atd = bitcast <8 x i32> %i.asx to <16 x bfloat> ; 2 uses
  %i.ate = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1325897.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.atd, <16 x bfloat> nofpclass(nan inf) %i.atb)
  %i.atf = bitcast <8 x i32> %i.asz to <16 x bfloat> ; 2 uses
  %i.atg = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1328896.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.ata, <16 x bfloat> nofpclass(nan inf) %i.atf)
  %i.ath = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1331895.i.epil.init, <16 x bfloat> nofpclass(nan inf) %i.atd, <16 x bfloat> nofpclass(nan inf) %i.atf)
  %i.ati = getelementptr inbounds nuw i8, ptr %.01776899.i.epil.init, i64 16
  br label %.preheader397.loopexit.i

.preheader397.loopexit.i:                         ; preds = %.preheader397.loopexit.i.unr-lcssa, %.lr.ph903.i.epil.preheader
  %.lcssa1892 = phi <8 x float> [ %i.avd, %.preheader397.loopexit.i.unr-lcssa ], [ %i.atc, %.lr.ph903.i.epil.preheader ]
  %.lcssa1891 = phi <8 x float> [ %i.avf, %.preheader397.loopexit.i.unr-lcssa ], [ %i.ate, %.lr.ph903.i.epil.preheader ]
  %.lcssa1890 = phi <8 x float> [ %i.avh, %.preheader397.loopexit.i.unr-lcssa ], [ %i.atg, %.lr.ph903.i.epil.preheader ]
  %.lcssa1889 = phi <8 x float> [ %i.avi, %.preheader397.loopexit.i.unr-lcssa ], [ %i.ath, %.lr.ph903.i.epil.preheader ]
  %.lcssa1888 = phi ptr [ %i.avj, %.preheader397.loopexit.i.unr-lcssa ], [ %i.ati, %.lr.ph903.i.epil.preheader ]
  %i.atj = getelementptr i8, ptr %.31742926.i, i64 %i.uh
  %scevgep1774.i = getelementptr i8, ptr %i.atj, i64 32
  br label %.preheader397.i

.preheader397.i:                                  ; preds = %.preheader397.loopexit.i, %bb.y
  %.1331.lcssa.i = phi <8 x float> [ %.0330.i, %bb.y ], [ %.lcssa1889, %.preheader397.loopexit.i ] ; 3 uses
  %.1328.lcssa.i = phi <8 x float> [ %.0327.i, %bb.y ], [ %.lcssa1890, %.preheader397.loopexit.i ] ; 3 uses
  %.1325.lcssa.i = phi <8 x float> [ %.0324.i, %bb.y ], [ %.lcssa1891, %.preheader397.loopexit.i ] ; 3 uses
  %.1322.lcssa.i = phi <8 x float> [ %.0321.i, %bb.y ], [ %.lcssa1892, %.preheader397.loopexit.i ] ; 3 uses
  %.01776.lcssa.i = phi ptr [ %.21024.i, %bb.y ], [ %.lcssa1888, %.preheader397.loopexit.i ] ; 3 uses
  %.01774.lcssa.i = phi i32 [ 0, %bb.y ], [ %i.ud, %.preheader397.loopexit.i ] ; 5 uses
  %.41743.lcssa.i = phi ptr [ %.31742926.i, %bb.y ], [ %scevgep1774.i, %.preheader397.loopexit.i ] ; 4 uses
  %i.atk = icmp slt i32 %.01774.lcssa.i, %8
  br i1 %i.atk, label %.lr.ph918.i.preheader, label %._crit_edge919.i

.lr.ph918.i.preheader:                            ; preds = %.preheader397.i
  %i.atl = sub i32 %8, %.01774.lcssa.i
  %.neg2244 = add i32 %.01774.lcssa.i, 1
  %xtraiter2142 = and i32 %i.atl, 1
  %lcmp.mod2143.not = icmp eq i32 %xtraiter2142, 0
  br i1 %lcmp.mod2143.not, label %.lr.ph918.i.prol.loopexit, label %.lr.ph918.i.prol

.lr.ph918.i.prol:                                 ; preds = %.lr.ph918.i.preheader
  %i.atm = load i64, ptr %.01776.lcssa.i, align 1, !tbaa !17
  %i.atn = insertelement <2 x i64> poison, i64 %i.atm, i64 0
  %i.ato = bitcast <2 x i64> %i.atn to <8 x i16>
  %18 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ato, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.atp = bitcast <8 x i16> %18 to <4 x float>   ; 2 uses
  %i.atq = shufflevector <4 x float> %i.atp, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.atr = load <8 x bfloat>, ptr %.41743.lcssa.i, align 1, !tbaa !17
  %i.ats = fpext fast <8 x bfloat> %i.atr to <8 x float> ; 3 uses
  %i.att = shufflevector <4 x float> %i.atp, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.atu = shufflevector <8 x float> %i.ats, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.atv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atq, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) %.1322.lcssa.i) ; 2 uses
  %i.atw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.att, <8 x float> nofpclass(nan inf) %i.ats, <8 x float> nofpclass(nan inf) %.1325.lcssa.i) ; 2 uses
  %i.atx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atq, <8 x float> nofpclass(nan inf) %i.atu, <8 x float> nofpclass(nan inf) %.1328.lcssa.i) ; 2 uses
  %i.aty = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.att, <8 x float> nofpclass(nan inf) %i.atu, <8 x float> nofpclass(nan inf) %.1331.lcssa.i) ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %.01776.lcssa.i, i64 8
  %i.aua = getelementptr inbounds nuw i8, ptr %.41743.lcssa.i, i64 16 ; 2 uses
  %i.aub = add nuw nsw i32 %.01774.lcssa.i, 1
  br label %.lr.ph918.i.prol.loopexit

.lr.ph918.i.prol.loopexit:                        ; preds = %.lr.ph918.i.prol, %.lr.ph918.i.preheader
  %.lcssa1897.unr = phi <8 x float> [ poison, %.lr.ph918.i.preheader ], [ %i.atv, %.lr.ph918.i.prol ]
  %.lcssa1896.unr = phi <8 x float> [ poison, %.lr.ph918.i.preheader ], [ %i.atw, %.lr.ph918.i.prol ]
  %.lcssa1895.unr = phi <8 x float> [ poison, %.lr.ph918.i.preheader ], [ %i.atx, %.lr.ph918.i.prol ]
  %.lcssa1894.unr = phi <8 x float> [ poison, %.lr.ph918.i.preheader ], [ %i.aty, %.lr.ph918.i.prol ]
  %.lcssa1893.unr = phi ptr [ poison, %.lr.ph918.i.preheader ], [ %i.aua, %.lr.ph918.i.prol ]
  %.51744917.i.unr = phi ptr [ %.41743.lcssa.i, %.lr.ph918.i.preheader ], [ %i.aua, %.lr.ph918.i.prol ]
  %.11775916.i.unr = phi i32 [ %.01774.lcssa.i, %.lr.ph918.i.preheader ], [ %i.aub, %.lr.ph918.i.prol ]
  %.11777915.i.unr = phi ptr [ %.01776.lcssa.i, %.lr.ph918.i.preheader ], [ %i.atz, %.lr.ph918.i.prol ]
  %.2323914.i.unr = phi <8 x float> [ %.1322.lcssa.i, %.lr.ph918.i.preheader ], [ %i.atv, %.lr.ph918.i.prol ]
  %.2326913.i.unr = phi <8 x float> [ %.1325.lcssa.i, %.lr.ph918.i.preheader ], [ %i.atw, %.lr.ph918.i.prol ]
  %.2329912.i.unr = phi <8 x float> [ %.1328.lcssa.i, %.lr.ph918.i.preheader ], [ %i.atx, %.lr.ph918.i.prol ]
  %.2332911.i.unr = phi <8 x float> [ %.1331.lcssa.i, %.lr.ph918.i.preheader ], [ %i.aty, %.lr.ph918.i.prol ]
  %i.auc = icmp eq i32 %8, %.neg2244
  br i1 %i.auc, label %._crit_edge919.i, label %.lr.ph918.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %.41743901.i = phi ptr [ %i.avk, %.lr.ph903.i ], [ %.31742926.i, %.lr.ph903.i.preheader ] ; 3 uses
  %.01776899.i = phi ptr [ %i.avj, %.lr.ph903.i ], [ %.21024.i, %.lr.ph903.i.preheader ] ; 3 uses
  %.1322898.i = phi <8 x float> [ %i.avd, %.lr.ph903.i ], [ %.0321.i, %.lr.ph903.i.preheader ]
  %.1325897.i = phi <8 x float> [ %i.avf, %.lr.ph903.i ], [ %.0324.i, %.lr.ph903.i.preheader ]
  %.1328896.i = phi <8 x float> [ %i.avh, %.lr.ph903.i ], [ %.0327.i, %.lr.ph903.i.preheader ]
  %.1331895.i = phi <8 x float> [ %i.avi, %.lr.ph903.i ], [ %.0330.i, %.lr.ph903.i.preheader ]
  %niter2141 = phi i32 [ %niter2141.next.1, %.lr.ph903.i ], [ 0, %.lr.ph903.i.preheader ]
  %i.aud = load <2 x i64>, ptr %.01776899.i, align 1, !tbaa !17
  %i.aue = shufflevector <2 x i64> %i.aud, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.auf = load <4 x i64>, ptr %.41743901.i, align 1, !tbaa !17 ; 2 uses
  %i.aug = bitcast <4 x i64> %i.aue to <8 x i32>
  %i.auh = shufflevector <8 x i32> %i.aug, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.aui = bitcast <4 x i64> %i.auf to <8 x i32>
  %i.auj = shufflevector <8 x i32> %i.aui, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.auk = bitcast <4 x i64> %i.aue to <16 x bfloat> ; 2 uses
  %i.aul = bitcast <4 x i64> %i.auf to <16 x bfloat> ; 2 uses
  %i.aum = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1322898.i, <16 x bfloat> nofpclass(nan inf) %i.auk, <16 x bfloat> nofpclass(nan inf) %i.aul)
  %i.aun = bitcast <8 x i32> %i.auh to <16 x bfloat> ; 2 uses
  %i.auo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1325897.i, <16 x bfloat> nofpclass(nan inf) %i.aun, <16 x bfloat> nofpclass(nan inf) %i.aul)
  %i.aup = bitcast <8 x i32> %i.auj to <16 x bfloat> ; 2 uses
  %i.auq = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1328896.i, <16 x bfloat> nofpclass(nan inf) %i.auk, <16 x bfloat> nofpclass(nan inf) %i.aup)
  %i.aur = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.1331895.i, <16 x bfloat> nofpclass(nan inf) %i.aun, <16 x bfloat> nofpclass(nan inf) %i.aup)
  %i.aus = getelementptr inbounds nuw i8, ptr %.01776899.i, i64 16
  %i.aut = getelementptr inbounds nuw i8, ptr %.41743901.i, i64 32
  %i.auu = load <2 x i64>, ptr %i.aus, align 1, !tbaa !17
  %i.auv = shufflevector <2 x i64> %i.auu, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.auw = load <4 x i64>, ptr %i.aut, align 1, !tbaa !17 ; 2 uses
  %i.aux = bitcast <4 x i64> %i.auv to <8 x i32>
  %i.auy = shufflevector <8 x i32> %i.aux, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 6, i32 7, i32 4, i32 5>
  %i.auz = bitcast <4 x i64> %i.auw to <8 x i32>
  %i.ava = shufflevector <8 x i32> %i.auz, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.avb = bitcast <4 x i64> %i.auv to <16 x bfloat> ; 2 uses
  %i.avc = bitcast <4 x i64> %i.auw to <16 x bfloat> ; 2 uses
  %i.avd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.aum, <16 x bfloat> nofpclass(nan inf) %i.avb, <16 x bfloat> nofpclass(nan inf) %i.avc) ; 3 uses
  %i.ave = bitcast <8 x i32> %i.auy to <16 x bfloat> ; 2 uses
  %i.avf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.auo, <16 x bfloat> nofpclass(nan inf) %i.ave, <16 x bfloat> nofpclass(nan inf) %i.avc) ; 3 uses
  %i.avg = bitcast <8 x i32> %i.ava to <16 x bfloat> ; 2 uses
  %i.avh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.auq, <16 x bfloat> nofpclass(nan inf) %i.avb, <16 x bfloat> nofpclass(nan inf) %i.avg) ; 3 uses
  %i.avi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.aur, <16 x bfloat> nofpclass(nan inf) %i.ave, <16 x bfloat> nofpclass(nan inf) %i.avg) ; 3 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %.01776899.i, i64 32 ; 3 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %.41743901.i, i64 64 ; 2 uses
  %niter2141.next.1 = add nuw nsw i32 %niter2141, 2 ; 2 uses
  %niter2141.ncmp.1.not = icmp eq i32 %niter2141.next.1, %unroll_iter2140
  br i1 %niter2141.ncmp.1.not, label %.preheader397.loopexit.i.unr-lcssa, label %.lr.ph903.i, !llvm.loop !375

.lr.ph918.i:                                      ; preds = %.lr.ph918.i.prol.loopexit, %.lr.ph918.i
  %.51744917.i = phi ptr [ %i.awo, %.lr.ph918.i ], [ %.51744917.i.unr, %.lr.ph918.i.prol.loopexit ] ; 3 uses
  %.11775916.i = phi i32 [ %i.awp, %.lr.ph918.i ], [ %.11775916.i.unr, %.lr.ph918.i.prol.loopexit ]
  %.11777915.i = phi ptr [ %i.awn, %.lr.ph918.i ], [ %.11777915.i.unr, %.lr.ph918.i.prol.loopexit ] ; 3 uses
  %.2323914.i = phi <8 x float> [ %i.awj, %.lr.ph918.i ], [ %.2323914.i.unr, %.lr.ph918.i.prol.loopexit ]
  %.2326913.i = phi <8 x float> [ %i.awk, %.lr.ph918.i ], [ %.2326913.i.unr, %.lr.ph918.i.prol.loopexit ]
  %.2329912.i = phi <8 x float> [ %i.awl, %.lr.ph918.i ], [ %.2329912.i.unr, %.lr.ph918.i.prol.loopexit ]
  %.2332911.i = phi <8 x float> [ %i.awm, %.lr.ph918.i ], [ %.2332911.i.unr, %.lr.ph918.i.prol.loopexit ]
  %i.avl = load i64, ptr %.11777915.i, align 1, !tbaa !17
  %i.avm = insertelement <2 x i64> poison, i64 %i.avl, i64 0
  %i.avn = bitcast <2 x i64> %i.avm to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avo = bitcast <8 x i16> %19 to <4 x float>   ; 2 uses
  %i.avp = shufflevector <4 x float> %i.avo, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.avq = load <8 x bfloat>, ptr %.51744917.i, align 1, !tbaa !17
  %i.avr = fpext fast <8 x bfloat> %i.avq to <8 x float> ; 3 uses
  %i.avs = shufflevector <4 x float> %i.avo, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.avt = shufflevector <8 x float> %i.avr, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.avu = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avp, <8 x float> nofpclass(nan inf) %i.avr, <8 x float> nofpclass(nan inf) %.2323914.i)
  %i.avv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avs, <8 x float> nofpclass(nan inf) %i.avr, <8 x float> nofpclass(nan inf) %.2326913.i)
  %i.avw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avp, <8 x float> nofpclass(nan inf) %i.avt, <8 x float> nofpclass(nan inf) %.2329912.i)
  %i.avx = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.avs, <8 x float> nofpclass(nan inf) %i.avt, <8 x float> nofpclass(nan inf) %.2332911.i)
  %i.avy = getelementptr inbounds nuw i8, ptr %.11777915.i, i64 8
  %i.avz = getelementptr inbounds nuw i8, ptr %.51744917.i, i64 16
  %i.awa = load i64, ptr %i.avy, align 1, !tbaa !17
  %i.awb = insertelement <2 x i64> poison, i64 %i.awa, i64 0
  %i.awc = bitcast <2 x i64> %i.awb to <8 x i16>
  %20 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awd = bitcast <8 x i16> %20 to <4 x float>   ; 2 uses
  %i.awe = shufflevector <4 x float> %i.awd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.awf = load <8 x bfloat>, ptr %i.avz, align 1, !tbaa !17
  %i.awg = fpext fast <8 x bfloat> %i.awf to <8 x float> ; 3 uses
  %i.awh = shufflevector <4 x float> %i.awd, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.awi = shufflevector <8 x float> %i.awg, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4> ; 2 uses
  %i.awj = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awe, <8 x float> nofpclass(nan inf) %i.awg, <8 x float> nofpclass(nan inf) %i.avu) ; 2 uses
  %i.awk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awh, <8 x float> nofpclass(nan inf) %i.awg, <8 x float> nofpclass(nan inf) %i.avv) ; 2 uses
  %i.awl = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awe, <8 x float> nofpclass(nan inf) %i.awi, <8 x float> nofpclass(nan inf) %i.avw) ; 2 uses
  %i.awm = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.awh, <8 x float> nofpclass(nan inf) %i.awi, <8 x float> nofpclass(nan inf) %i.avx) ; 2 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %.11777915.i, i64 16
  %i.awo = getelementptr inbounds nuw i8, ptr %.51744917.i, i64 32 ; 2 uses
  %i.awp = add nuw nsw i32 %.11775916.i, 2        ; 2 uses
  %exitcond1775.not.i.1 = icmp eq i32 %i.awp, %8
  br i1 %exitcond1775.not.i.1, label %._crit_edge919.i, label %.lr.ph918.i, !llvm.loop !376

._crit_edge919.i:                                 ; preds = %.lr.ph918.i.prol.loopexit, %.lr.ph918.i, %.preheader397.i
  %.2332.lcssa.i = phi <8 x float> [ %.1331.lcssa.i, %.preheader397.i ], [ %.lcssa1894.unr, %.lr.ph918.i.prol.loopexit ], [ %i.awm, %.lr.ph918.i ]
  %.2329.lcssa.i = phi <8 x float> [ %.1328.lcssa.i, %.preheader397.i ], [ %.lcssa1895.unr, %.lr.ph918.i.prol.loopexit ], [ %i.awl, %.lr.ph918.i ]
  %.2326.lcssa.i = phi <8 x float> [ %.1325.lcssa.i, %.preheader397.i ], [ %.lcssa1896.unr, %.lr.ph918.i.prol.loopexit ], [ %i.awk, %.lr.ph918.i ]
  %.2323.lcssa.i = phi <8 x float> [ %.1322.lcssa.i, %.preheader397.i ], [ %.lcssa1897.unr, %.lr.ph918.i.prol.loopexit ], [ %i.awj, %.lr.ph918.i ]
  %.51744.lcssa.i = phi ptr [ %.41743.lcssa.i, %.preheader397.i ], [ %.lcssa1893.unr, %.lr.ph918.i.prol.loopexit ], [ %i.awo, %.lr.ph918.i ] ; 2 uses
  store <8 x float> %.2323.lcssa.i, ptr %.14927.i, align 32, !tbaa !17
  %i.awq = getelementptr inbounds nuw i8, ptr %.14927.i, i64 32
  store <8 x float> %.2326.lcssa.i, ptr %i.awq, align 32, !tbaa !17
  %i.awr = getelementptr inbounds nuw i8, ptr %.14927.i, i64 64
  store <8 x float> %.2329.lcssa.i, ptr %i.awr, align 32, !tbaa !17
  %i.aws = getelementptr inbounds nuw i8, ptr %.14927.i, i64 96
  store <8 x float> %.2332.lcssa.i, ptr %i.aws, align 32, !tbaa !17
  %i.awt = getelementptr inbounds nuw i8, ptr %.14927.i, i64 128 ; 2 uses
  %i.awu = add nuw nsw i32 %.11755925.i, 8        ; 3 uses
  %i.awv = or disjoint i32 %i.awu, 7
  %i.aww = icmp slt i32 %i.awv, %6
  br i1 %i.aww, label %.lr.ph928.i, label %.preheader401.i, !llvm.loop !377

.preheader400.i:                                  ; preds = %._crit_edge956.i, %.preheader401.i
  %.21756.lcssa.i = phi i32 [ %.11755.lcssa.i, %.preheader401.i ], [ %i.baz, %._crit_edge956.i ] ; 3 uses
  %.61745.lcssa.i = phi ptr [ %.31742.lcssa.i, %.preheader401.i ], [ %.81747.lcssa.i, %._crit_edge956.i ] ; 2 uses
  %.15.lcssa.i = phi ptr [ %.14.lcssa.i, %.preheader401.i ], [ %i.bay, %._crit_edge956.i ] ; 2 uses
  %i.awx = or disjoint i32 %.21756.lcssa.i, 1
  %i.awy = icmp slt i32 %i.awx, %6
  br i1 %i.awy, label %.lr.ph994.i, label %.preheader399.i

.lr.ph965.i:                                      ; preds = %.preheader401.i, %._crit_edge956.i
  %.15964.i = phi ptr [ %i.bay, %._crit_edge956.i ], [ %.14.lcssa.i, %.preheader401.i ] ; 9 uses
  %.61745963.i = phi ptr [ %.81747.lcssa.i, %._crit_edge956.i ], [ %.31742.lcssa.i, %.preheader401.i ] ; 4 uses
  %.21756962.i = phi i32 [ %i.baz, %._crit_edge956.i ], [ %.11755.lcssa.i, %.preheader401.i ]
  br i1 %.not1801.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph965.i
  %i.awz = load <4 x float>, ptr %.15964.i, align 16, !tbaa !17
  %i.axa = getelementptr inbounds nuw i8, ptr %.15964.i, i64 16
  %i.axb = load <4 x float>, ptr %i.axa, align 16, !tbaa !17
  %i.axc = getelementptr inbounds nuw i8, ptr %.15964.i, i64 32
  %i.axd = load <4 x float>, ptr %i.axc, align 16, !tbaa !17
  %i.axe = getelementptr inbounds nuw i8, ptr %.15964.i, i64 48
  %i.axf = load <4 x float>, ptr %i.axe, align 16, !tbaa !17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph965.i
  %.0342.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph965.i ], [ %i.axf, %bb.z ] ; 3 uses
  %.0339.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph965.i ], [ %i.axd, %bb.z ] ; 3 uses
  %.0336.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph965.i ], [ %i.axb, %bb.z ] ; 3 uses
  %.0333.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph965.i ], [ %i.awz, %bb.z ] ; 3 uses
  br i1 %i.ty, label %.lr.ph940.i.preheader, label %.preheader396.i

.lr.ph940.i.preheader:                            ; preds = %bb.aa
  br i1 %i.ux, label %.lr.ph940.i.epil.preheader, label %.lr.ph940.i

.preheader396.loopexit.i.unr-lcssa:               ; preds = %.lr.ph940.i
  br i1 %lcmp.mod2146.not.not, label %.lr.ph940.i.epil.preheader, label %.preheader396.loopexit.i

.lr.ph940.i.epil.preheader:                       ; preds = %.preheader396.loopexit.i.unr-lcssa, %.lr.ph940.i.preheader
  %.71746938.i.epil.init = phi ptr [ %.61745963.i, %.lr.ph940.i.preheader ], [ %i.azn, %.preheader396.loopexit.i.unr-lcssa ]
  %.01761936.i.epil.init = phi ptr [ %.21024.i, %.lr.ph940.i.preheader ], [ %i.azm, %.preheader396.loopexit.i.unr-lcssa ]
  %.1334935.i.epil.init = phi <4 x float> [ %.0333.i, %.lr.ph940.i.preheader ], [ %i.aze, %.preheader396.loopexit.i.unr-lcssa ]
  %.1337934.i.epil.init = phi <4 x float> [ %.0336.i, %.lr.ph940.i.preheader ], [ %i.azh, %.preheader396.loopexit.i.unr-lcssa ]
  %.1340933.i.epil.init = phi <4 x float> [ %.0339.i, %.lr.ph940.i.preheader ], [ %i.azk, %.preheader396.loopexit.i.unr-lcssa ]
  %.1343932.i.epil.init = phi <4 x float> [ %.0342.i, %.lr.ph940.i.preheader ], [ %i.azl, %.preheader396.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2151)
  %i.axg = load <2 x i64>, ptr %.01761936.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.axh = load <2 x i64>, ptr %.71746938.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.axi = bitcast <2 x i64> %i.axg to <8 x bfloat> ; 2 uses
  %i.axj = bitcast <2 x i64> %i.axh to <8 x bfloat> ; 2 uses
  %i.axk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1334935.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.axi, <8 x bfloat> nofpclass(nan inf) %i.axj)
  %i.axl = bitcast <2 x i64> %i.axh to <8 x bfloat>
  %i.axm = shufflevector <8 x bfloat> %i.axl, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.axn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1337934.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.axi, <8 x bfloat> nofpclass(nan inf) %i.axm)
  %i.axo = bitcast <2 x i64> %i.axg to <8 x bfloat>
  %i.axp = shufflevector <8 x bfloat> %i.axo, <8 x bfloat> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.axq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1340933.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.axp, <8 x bfloat> nofpclass(nan inf) %i.axj)
  %i.axr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1343932.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.axp, <8 x bfloat> nofpclass(nan inf) %i.axm)
  br label %.preheader396.loopexit.i

.preheader396.loopexit.i:                         ; preds = %.preheader396.loopexit.i.unr-lcssa, %.lr.ph940.i.epil.preheader
  %.lcssa1903 = phi <4 x float> [ %i.aze, %.preheader396.loopexit.i.unr-lcssa ], [ %i.axk, %.lr.ph940.i.epil.preheader ]
  %.lcssa1902 = phi <4 x float> [ %i.azh, %.preheader396.loopexit.i.unr-lcssa ], [ %i.axn, %.lr.ph940.i.epil.preheader ]
  %.lcssa1901 = phi <4 x float> [ %i.azk, %.preheader396.loopexit.i.unr-lcssa ], [ %i.axq, %.lr.ph940.i.epil.preheader ]
  %.lcssa1900 = phi <4 x float> [ %i.azl, %.preheader396.loopexit.i.unr-lcssa ], [ %i.axr, %.lr.ph940.i.epil.preheader ]
  %scevgep1776.i = getelementptr i8, ptr %.61745963.i, i64 %i.uj
  br label %.preheader396.i

.preheader396.i:                                  ; preds = %.preheader396.loopexit.i, %bb.aa
  %.1343.lcssa.i = phi <4 x float> [ %.0342.i, %bb.aa ], [ %.lcssa1900, %.preheader396.loopexit.i ] ; 3 uses
  %.1340.lcssa.i = phi <4 x float> [ %.0339.i, %bb.aa ], [ %.lcssa1901, %.preheader396.loopexit.i ] ; 3 uses
  %.1337.lcssa.i = phi <4 x float> [ %.0336.i, %bb.aa ], [ %.lcssa1902, %.preheader396.loopexit.i ] ; 3 uses
  %.1334.lcssa.i = phi <4 x float> [ %.0333.i, %bb.aa ], [ %.lcssa1903, %.preheader396.loopexit.i ] ; 3 uses
  %.01761.lcssa.i = phi ptr [ %.21024.i, %bb.aa ], [ %indvars.iv1779.i, %.preheader396.loopexit.i ] ; 3 uses
  %.01759.lcssa.i = phi i32 [ 0, %bb.aa ], [ %i.ud, %.preheader396.loopexit.i ] ; 5 uses
  %.71746.lcssa.i = phi ptr [ %.61745963.i, %bb.aa ], [ %scevgep1776.i, %.preheader396.loopexit.i ] ; 4 uses
  %i.axs = icmp slt i32 %.01759.lcssa.i, %8
  br i1 %i.axs, label %.lr.ph955.i.preheader, label %._crit_edge956.i

.lr.ph955.i.preheader:                            ; preds = %.preheader396.i
  %i.axt = sub i32 %8, %.01759.lcssa.i
  %.neg2245 = add i32 %.01759.lcssa.i, 1
  %xtraiter2154 = and i32 %i.axt, 1
  %lcmp.mod2155.not = icmp eq i32 %xtraiter2154, 0
  br i1 %lcmp.mod2155.not, label %.lr.ph955.i.prol.loopexit, label %.lr.ph955.i.prol

.lr.ph955.i.prol:                                 ; preds = %.lr.ph955.i.preheader
  %i.axu = load i64, ptr %.01761.lcssa.i, align 1, !tbaa !17
  %i.axv = insertelement <2 x i64> poison, i64 %i.axu, i64 0
  %i.axw = bitcast <2 x i64> %i.axv to <8 x i16>
  %21 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.axw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.axx = bitcast <8 x i16> %21 to <4 x float>   ; 3 uses
  %i.axy = load i64, ptr %.71746.lcssa.i, align 1, !tbaa !17
  %i.axz = insertelement <2 x i64> poison, i64 %i.axy, i64 0
  %i.aya = bitcast <2 x i64> %i.axz to <8 x i16>
  %22 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aya, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ayb = bitcast <8 x i16> %22 to <4 x float>   ; 3 uses
  %i.ayc = shufflevector <4 x float> %i.axx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ayd = shufflevector <4 x float> %i.ayb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.aye = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axx, <4 x float> nofpclass(nan inf) %i.ayb, <4 x float> nofpclass(nan inf) %.1334.lcssa.i) ; 2 uses
  %i.ayf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.axx, <4 x float> nofpclass(nan inf) %i.ayd, <4 x float> nofpclass(nan inf) %.1337.lcssa.i) ; 2 uses
  %i.ayg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayc, <4 x float> nofpclass(nan inf) %i.ayb, <4 x float> nofpclass(nan inf) %.1340.lcssa.i) ; 2 uses
  %i.ayh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ayc, <4 x float> nofpclass(nan inf) %i.ayd, <4 x float> nofpclass(nan inf) %.1343.lcssa.i) ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %.01761.lcssa.i, i64 8
  %i.ayj = getelementptr inbounds nuw i8, ptr %.71746.lcssa.i, i64 8 ; 2 uses
  %i.ayk = add nuw nsw i32 %.01759.lcssa.i, 1
  br label %.lr.ph955.i.prol.loopexit

.lr.ph955.i.prol.loopexit:                        ; preds = %.lr.ph955.i.prol, %.lr.ph955.i.preheader
  %.lcssa1908.unr = phi <4 x float> [ poison, %.lr.ph955.i.preheader ], [ %i.aye, %.lr.ph955.i.prol ]
  %.lcssa1907.unr = phi <4 x float> [ poison, %.lr.ph955.i.preheader ], [ %i.ayf, %.lr.ph955.i.prol ]
  %.lcssa1906.unr = phi <4 x float> [ poison, %.lr.ph955.i.preheader ], [ %i.ayg, %.lr.ph955.i.prol ]
  %.lcssa1905.unr = phi <4 x float> [ poison, %.lr.ph955.i.preheader ], [ %i.ayh, %.lr.ph955.i.prol ]
  %.lcssa1904.unr = phi ptr [ poison, %.lr.ph955.i.preheader ], [ %i.ayj, %.lr.ph955.i.prol ]
  %.81747954.i.unr = phi ptr [ %.71746.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayj, %.lr.ph955.i.prol ]
  %.11760953.i.unr = phi i32 [ %.01759.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayk, %.lr.ph955.i.prol ]
  %.11762952.i.unr = phi ptr [ %.01761.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayi, %.lr.ph955.i.prol ]
  %.2335951.i.unr = phi <4 x float> [ %.1334.lcssa.i, %.lr.ph955.i.preheader ], [ %i.aye, %.lr.ph955.i.prol ]
  %.2338950.i.unr = phi <4 x float> [ %.1337.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayf, %.lr.ph955.i.prol ]
  %.2341949.i.unr = phi <4 x float> [ %.1340.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayg, %.lr.ph955.i.prol ]
  %.2344948.i.unr = phi <4 x float> [ %.1343.lcssa.i, %.lr.ph955.i.preheader ], [ %i.ayh, %.lr.ph955.i.prol ]
  %i.ayl = icmp eq i32 %8, %.neg2245
  br i1 %i.ayl, label %._crit_edge956.i, label %.lr.ph955.i

.lr.ph940.i:                                      ; preds = %.lr.ph940.i.preheader, %.lr.ph940.i
  %.71746938.i = phi ptr [ %i.azn, %.lr.ph940.i ], [ %.61745963.i, %.lr.ph940.i.preheader ] ; 3 uses
  %.01761936.i = phi ptr [ %i.azm, %.lr.ph940.i ], [ %.21024.i, %.lr.ph940.i.preheader ] ; 3 uses
  %.1334935.i = phi <4 x float> [ %i.aze, %.lr.ph940.i ], [ %.0333.i, %.lr.ph940.i.preheader ]
  %.1337934.i = phi <4 x float> [ %i.azh, %.lr.ph940.i ], [ %.0336.i, %.lr.ph940.i.preheader ]
  %.1340933.i = phi <4 x float> [ %i.azk, %.lr.ph940.i ], [ %.0339.i, %.lr.ph940.i.preheader ]
  %.1343932.i = phi <4 x float> [ %i.azl, %.lr.ph940.i ], [ %.0342.i, %.lr.ph940.i.preheader ]
  %niter2153 = phi i32 [ %niter2153.next.1, %.lr.ph940.i ], [ 0, %.lr.ph940.i.preheader ]
  %i.aym = load <2 x i64>, ptr %.01761936.i, align 1, !tbaa !17 ; 2 uses
  %i.ayn = load <2 x i64>, ptr %.71746938.i, align 1, !tbaa !17 ; 2 uses
  %i.ayo = bitcast <2 x i64> %i.aym to <8 x bfloat> ; 2 uses
  %i.ayp = bitcast <2 x i64> %i.ayn to <8 x bfloat> ; 2 uses
  %i.ayq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1334935.i, <8 x bfloat> nofpclass(nan inf) %i.ayo, <8 x bfloat> nofpclass(nan inf) %i.ayp)
  %i.ayr = bitcast <2 x i64> %i.ayn to <8 x bfloat>
  %i.ays = shufflevector <8 x bfloat> %i.ayr, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.ayt = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1337934.i, <8 x bfloat> nofpclass(nan inf) %i.ayo, <8 x bfloat> nofpclass(nan inf) %i.ays)
  %i.ayu = bitcast <2 x i64> %i.aym to <8 x bfloat>
  %i.ayv = shufflevector <8 x bfloat> %i.ayu, <8 x bfloat> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ayw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1340933.i, <8 x bfloat> nofpclass(nan inf) %i.ayv, <8 x bfloat> nofpclass(nan inf) %i.ayp)
  %i.ayx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1343932.i, <8 x bfloat> nofpclass(nan inf) %i.ayv, <8 x bfloat> nofpclass(nan inf) %i.ays)
  %i.ayy = getelementptr inbounds nuw i8, ptr %.01761936.i, i64 16
  %i.ayz = getelementptr inbounds nuw i8, ptr %.71746938.i, i64 16
  %i.aza = load <2 x i64>, ptr %i.ayy, align 1, !tbaa !17 ; 2 uses
  %i.azb = load <2 x i64>, ptr %i.ayz, align 1, !tbaa !17 ; 2 uses
  %i.azc = bitcast <2 x i64> %i.aza to <8 x bfloat> ; 2 uses
  %i.azd = bitcast <2 x i64> %i.azb to <8 x bfloat> ; 2 uses
  %i.aze = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.ayq, <8 x bfloat> nofpclass(nan inf) %i.azc, <8 x bfloat> nofpclass(nan inf) %i.azd) ; 3 uses
  %i.azf = bitcast <2 x i64> %i.azb to <8 x bfloat>
  %i.azg = shufflevector <8 x bfloat> %i.azf, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.azh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.ayt, <8 x bfloat> nofpclass(nan inf) %i.azc, <8 x bfloat> nofpclass(nan inf) %i.azg) ; 3 uses
  %i.azi = bitcast <2 x i64> %i.aza to <8 x bfloat>
  %i.azj = shufflevector <8 x bfloat> %i.azi, <8 x bfloat> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.azk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.ayw, <8 x bfloat> nofpclass(nan inf) %i.azj, <8 x bfloat> nofpclass(nan inf) %i.azd) ; 3 uses
  %i.azl = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.ayx, <8 x bfloat> nofpclass(nan inf) %i.azj, <8 x bfloat> nofpclass(nan inf) %i.azg) ; 3 uses
  %i.azm = getelementptr inbounds nuw i8, ptr %.01761936.i, i64 32 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %.71746938.i, i64 32 ; 2 uses
  %niter2153.next.1 = add nuw nsw i32 %niter2153, 2 ; 2 uses
  %niter2153.ncmp.1.not = icmp eq i32 %niter2153.next.1, %unroll_iter2152
  br i1 %niter2153.ncmp.1.not, label %.preheader396.loopexit.i.unr-lcssa, label %.lr.ph940.i, !llvm.loop !378

.lr.ph955.i:                                      ; preds = %.lr.ph955.i.prol.loopexit, %.lr.ph955.i
  %.81747954.i = phi ptr [ %i.bat, %.lr.ph955.i ], [ %.81747954.i.unr, %.lr.ph955.i.prol.loopexit ] ; 3 uses
  %.11760953.i = phi i32 [ %i.bau, %.lr.ph955.i ], [ %.11760953.i.unr, %.lr.ph955.i.prol.loopexit ]
  %.11762952.i = phi ptr [ %i.bas, %.lr.ph955.i ], [ %.11762952.i.unr, %.lr.ph955.i.prol.loopexit ] ; 3 uses
  %.2335951.i = phi <4 x float> [ %i.bao, %.lr.ph955.i ], [ %.2335951.i.unr, %.lr.ph955.i.prol.loopexit ]
  %.2338950.i = phi <4 x float> [ %i.bap, %.lr.ph955.i ], [ %.2338950.i.unr, %.lr.ph955.i.prol.loopexit ]
  %.2341949.i = phi <4 x float> [ %i.baq, %.lr.ph955.i ], [ %.2341949.i.unr, %.lr.ph955.i.prol.loopexit ]
  %.2344948.i = phi <4 x float> [ %i.bar, %.lr.ph955.i ], [ %.2344948.i.unr, %.lr.ph955.i.prol.loopexit ]
  %i.azo = load i64, ptr %.11762952.i, align 1, !tbaa !17
  %i.azp = insertelement <2 x i64> poison, i64 %i.azo, i64 0
  %i.azq = bitcast <2 x i64> %i.azp to <8 x i16>
  %23 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azr = bitcast <8 x i16> %23 to <4 x float>   ; 3 uses
  %i.azs = load i64, ptr %.81747954.i, align 1, !tbaa !17
  %i.azt = insertelement <2 x i64> poison, i64 %i.azs, i64 0
  %i.azu = bitcast <2 x i64> %i.azt to <8 x i16>
  %24 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azv = bitcast <8 x i16> %24 to <4 x float>   ; 3 uses
  %i.azw = shufflevector <4 x float> %i.azr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.azx = shufflevector <4 x float> %i.azv, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.azy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azr, <4 x float> nofpclass(nan inf) %i.azv, <4 x float> nofpclass(nan inf) %.2335951.i)
  %i.azz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azr, <4 x float> nofpclass(nan inf) %i.azx, <4 x float> nofpclass(nan inf) %.2338950.i)
  %i.baa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azw, <4 x float> nofpclass(nan inf) %i.azv, <4 x float> nofpclass(nan inf) %.2341949.i)
  %i.bab = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azw, <4 x float> nofpclass(nan inf) %i.azx, <4 x float> nofpclass(nan inf) %.2344948.i)
  %i.bac = getelementptr inbounds nuw i8, ptr %.11762952.i, i64 8
  %i.bad = getelementptr inbounds nuw i8, ptr %.81747954.i, i64 8
  %i.bae = load i64, ptr %i.bac, align 1, !tbaa !17
  %i.baf = insertelement <2 x i64> poison, i64 %i.bae, i64 0
  %i.bag = bitcast <2 x i64> %i.baf to <8 x i16>
  %25 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bah = bitcast <8 x i16> %25 to <4 x float>   ; 3 uses
  %i.bai = load i64, ptr %i.bad, align 1, !tbaa !17
  %i.baj = insertelement <2 x i64> poison, i64 %i.bai, i64 0
  %i.bak = bitcast <2 x i64> %i.baj to <8 x i16>
  %26 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bal = bitcast <8 x i16> %26 to <4 x float>   ; 3 uses
  %i.bam = shufflevector <4 x float> %i.bah, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ban = shufflevector <4 x float> %i.bal, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  %i.bao = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bah, <4 x float> nofpclass(nan inf) %i.bal, <4 x float> nofpclass(nan inf) %i.azy) ; 2 uses
  %i.bap = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bah, <4 x float> nofpclass(nan inf) %i.ban, <4 x float> nofpclass(nan inf) %i.azz) ; 2 uses
  %i.baq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bam, <4 x float> nofpclass(nan inf) %i.bal, <4 x float> nofpclass(nan inf) %i.baa) ; 2 uses
  %i.bar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bam, <4 x float> nofpclass(nan inf) %i.ban, <4 x float> nofpclass(nan inf) %i.bab) ; 2 uses
  %i.bas = getelementptr inbounds nuw i8, ptr %.11762952.i, i64 16
  %i.bat = getelementptr inbounds nuw i8, ptr %.81747954.i, i64 16 ; 2 uses
  %i.bau = add nuw nsw i32 %.11760953.i, 2        ; 2 uses
  %exitcond1777.not.i.1 = icmp eq i32 %i.bau, %8
  br i1 %exitcond1777.not.i.1, label %._crit_edge956.i, label %.lr.ph955.i, !llvm.loop !379

._crit_edge956.i:                                 ; preds = %.lr.ph955.i.prol.loopexit, %.lr.ph955.i, %.preheader396.i
  %.2344.lcssa.i = phi <4 x float> [ %.1343.lcssa.i, %.preheader396.i ], [ %.lcssa1905.unr, %.lr.ph955.i.prol.loopexit ], [ %i.bar, %.lr.ph955.i ]
  %.2341.lcssa.i = phi <4 x float> [ %.1340.lcssa.i, %.preheader396.i ], [ %.lcssa1906.unr, %.lr.ph955.i.prol.loopexit ], [ %i.baq, %.lr.ph955.i ]
  %.2338.lcssa.i = phi <4 x float> [ %.1337.lcssa.i, %.preheader396.i ], [ %.lcssa1907.unr, %.lr.ph955.i.prol.loopexit ], [ %i.bap, %.lr.ph955.i ]
  %.2335.lcssa.i = phi <4 x float> [ %.1334.lcssa.i, %.preheader396.i ], [ %.lcssa1908.unr, %.lr.ph955.i.prol.loopexit ], [ %i.bao, %.lr.ph955.i ]
  %.81747.lcssa.i = phi ptr [ %.71746.lcssa.i, %.preheader396.i ], [ %.lcssa1904.unr, %.lr.ph955.i.prol.loopexit ], [ %i.bat, %.lr.ph955.i ] ; 2 uses
  store <4 x float> %.2335.lcssa.i, ptr %.15964.i, align 16, !tbaa !17
  %i.bav = getelementptr inbounds nuw i8, ptr %.15964.i, i64 16
  store <4 x float> %.2338.lcssa.i, ptr %i.bav, align 16, !tbaa !17
  %i.baw = getelementptr inbounds nuw i8, ptr %.15964.i, i64 32
  store <4 x float> %.2341.lcssa.i, ptr %i.baw, align 16, !tbaa !17
  %i.bax = getelementptr inbounds nuw i8, ptr %.15964.i, i64 48
  store <4 x float> %.2344.lcssa.i, ptr %i.bax, align 16, !tbaa !17
  %i.bay = getelementptr inbounds nuw i8, ptr %.15964.i, i64 64 ; 2 uses
  %i.baz = add nuw nsw i32 %.21756962.i, 4        ; 3 uses
  %i.bba = or disjoint i32 %i.baz, 3
  %i.bbb = icmp slt i32 %i.bba, %6
  br i1 %i.bbb, label %.lr.ph965.i, label %.preheader400.i, !llvm.loop !380

.preheader399.i:                                  ; preds = %._crit_edge987.i, %.preheader400.i
  %.31757.lcssa.i = phi i32 [ %.21756.lcssa.i, %.preheader400.i ], [ %i.bej, %._crit_edge987.i ] ; 2 uses
  %.91748.lcssa.i = phi ptr [ %.61745.lcssa.i, %.preheader400.i ], [ %.111750.lcssa.i, %._crit_edge987.i ]
  %.16.lcssa.i = phi ptr [ %.15.lcssa.i, %.preheader400.i ], [ %i.bei, %._crit_edge987.i ] ; 2 uses
  %i.bbc = icmp slt i32 %.31757.lcssa.i, %6
  br i1 %i.bbc, label %.lr.ph1019.i, label %._crit_edge1020.i

.lr.ph994.i:                                      ; preds = %.preheader400.i, %._crit_edge987.i
  %.16993.i = phi ptr [ %i.bei, %._crit_edge987.i ], [ %.15.lcssa.i, %.preheader400.i ] ; 5 uses
  %.91748992.i = phi ptr [ %.111750.lcssa.i, %._crit_edge987.i ], [ %.61745.lcssa.i, %.preheader400.i ] ; 4 uses
  %.31757991.i = phi i32 [ %i.bej, %._crit_edge987.i ], [ %.21756.lcssa.i, %.preheader400.i ]
  br i1 %.not1801.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph994.i
  %i.bbd = load <4 x float>, ptr %.16993.i, align 16, !tbaa !17
  %i.bbe = getelementptr inbounds nuw i8, ptr %.16993.i, i64 16
  %i.bbf = load <4 x float>, ptr %i.bbe, align 16, !tbaa !17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph994.i
  %.0348.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph994.i ], [ %i.bbf, %bb.ab ] ; 3 uses
  %.0345.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph994.i ], [ %i.bbd, %bb.ab ] ; 3 uses
  br i1 %i.ty, label %.lr.ph975.i.preheader, label %.preheader395.i

.lr.ph975.i.preheader:                            ; preds = %bb.ac
  br i1 %i.uz, label %.lr.ph975.i.epil.preheader, label %.lr.ph975.i

.preheader395.loopexit.i.unr-lcssa:               ; preds = %.lr.ph975.i
  br i1 %lcmp.mod2158.not.not, label %.lr.ph975.i.epil.preheader, label %.preheader395.loopexit.i

.lr.ph975.i.epil.preheader:                       ; preds = %.preheader395.loopexit.i.unr-lcssa, %.lr.ph975.i.preheader
  %.01733972.i.epil.init = phi ptr [ %.21024.i, %.lr.ph975.i.preheader ], [ %i.bde, %.preheader395.loopexit.i.unr-lcssa ]
  %.101749971.i.epil.init = phi ptr [ %.91748992.i, %.lr.ph975.i.preheader ], [ %i.bdf, %.preheader395.loopexit.i.unr-lcssa ]
  %.1346970.i.epil.init = phi <4 x float> [ %.0345.i, %.lr.ph975.i.preheader ], [ %i.bda, %.preheader395.loopexit.i.unr-lcssa ]
  %.1349969.i.epil.init = phi <4 x float> [ %.0348.i, %.lr.ph975.i.preheader ], [ %i.bdd, %.preheader395.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2161)
  %i.bbg = load <8 x bfloat>, ptr %.01733972.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.bbh = load double, ptr %.101749971.i.epil.init, align 1, !tbaa !17
  %i.bbi = insertelement <2 x double> poison, double %i.bbh, i64 0
  %i.bbj = bitcast <2 x double> %i.bbi to <2 x i64>
  %i.bbk = shufflevector <2 x i64> %i.bbj, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bbl = bitcast <2 x i64> %i.bbk to <8 x bfloat>
  %i.bbm = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1346970.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.bbg, <8 x bfloat> nofpclass(nan inf) %i.bbl)
  %i.bbn = bitcast <2 x i64> %i.bbk to <8 x bfloat>
  %i.bbo = shufflevector <8 x bfloat> %i.bbn, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.bbp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1349969.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.bbg, <8 x bfloat> nofpclass(nan inf) %i.bbo)
  br label %.preheader395.loopexit.i

.preheader395.loopexit.i:                         ; preds = %.preheader395.loopexit.i.unr-lcssa, %.lr.ph975.i.epil.preheader
  %.lcssa1912 = phi <4 x float> [ %i.bda, %.preheader395.loopexit.i.unr-lcssa ], [ %i.bbm, %.lr.ph975.i.epil.preheader ]
  %.lcssa1911 = phi <4 x float> [ %i.bdd, %.preheader395.loopexit.i.unr-lcssa ], [ %i.bbp, %.lr.ph975.i.epil.preheader ]
  %i.bbq = getelementptr i8, ptr %.91748992.i, i64 %i.ul
  %scevgep1781.i = getelementptr i8, ptr %i.bbq, i64 8
  br label %.preheader395.i

.preheader395.i:                                  ; preds = %.preheader395.loopexit.i, %bb.ac
  %.1349.lcssa.i = phi <4 x float> [ %.0348.i, %bb.ac ], [ %.lcssa1911, %.preheader395.loopexit.i ] ; 3 uses
  %.1346.lcssa.i = phi <4 x float> [ %.0345.i, %bb.ac ], [ %.lcssa1912, %.preheader395.loopexit.i ] ; 3 uses
  %.101749.lcssa.i = phi ptr [ %.91748992.i, %bb.ac ], [ %scevgep1781.i, %.preheader395.loopexit.i ] ; 4 uses
  %.01733.lcssa.i = phi ptr [ %.21024.i, %bb.ac ], [ %indvars.iv1779.i, %.preheader395.loopexit.i ] ; 3 uses
  %.01731.lcssa.i = phi i32 [ 0, %bb.ac ], [ %i.ud, %.preheader395.loopexit.i ] ; 5 uses
  %i.bbr = icmp slt i32 %.01731.lcssa.i, %8
  br i1 %i.bbr, label %.lr.ph986.i.preheader, label %._crit_edge987.i

.lr.ph986.i.preheader:                            ; preds = %.preheader395.i
  %i.bbs = sub i32 %8, %.01731.lcssa.i
  %.neg2246 = add i32 %.01731.lcssa.i, 1
  %xtraiter2164 = and i32 %i.bbs, 1
  %lcmp.mod2165.not = icmp eq i32 %xtraiter2164, 0
  br i1 %lcmp.mod2165.not, label %.lr.ph986.i.prol.loopexit, label %.lr.ph986.i.prol

.lr.ph986.i.prol:                                 ; preds = %.lr.ph986.i.preheader
  %i.bbt = load i64, ptr %.01733.lcssa.i, align 1, !tbaa !17
  %i.bbu = insertelement <2 x i64> poison, i64 %i.bbt, i64 0
  %i.bbv = bitcast <2 x i64> %i.bbu to <8 x i16>
  %27 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbw = bitcast <8 x i16> %27 to <4 x float>   ; 2 uses
  %i.bbx = load float, ptr %.101749.lcssa.i, align 1, !tbaa !17
  %i.bby = insertelement <4 x float> poison, float %i.bbx, i64 0
  %i.bbz = bitcast <4 x float> %i.bby to <8 x i16>
  %28 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.bca = bitcast <8 x i16> %28 to <4 x float>   ; 2 uses
  %i.bcb = shufflevector <4 x float> %i.bca, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bcc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbw, <4 x float> nofpclass(nan inf) %i.bca, <4 x float> nofpclass(nan inf) %.1346.lcssa.i) ; 2 uses
  %i.bcd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bbw, <4 x float> nofpclass(nan inf) %i.bcb, <4 x float> nofpclass(nan inf) %.1349.lcssa.i) ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %.01733.lcssa.i, i64 8
  %i.bcf = getelementptr inbounds nuw i8, ptr %.101749.lcssa.i, i64 4 ; 2 uses
  %i.bcg = add nuw nsw i32 %.01731.lcssa.i, 1
  br label %.lr.ph986.i.prol.loopexit

.lr.ph986.i.prol.loopexit:                        ; preds = %.lr.ph986.i.prol, %.lr.ph986.i.preheader
  %.lcssa1915.unr = phi <4 x float> [ poison, %.lr.ph986.i.preheader ], [ %i.bcc, %.lr.ph986.i.prol ]
  %.lcssa1914.unr = phi <4 x float> [ poison, %.lr.ph986.i.preheader ], [ %i.bcd, %.lr.ph986.i.prol ]
  %.lcssa1913.unr = phi ptr [ poison, %.lr.ph986.i.preheader ], [ %i.bcf, %.lr.ph986.i.prol ]
  %.11732985.i.unr = phi i32 [ %.01731.lcssa.i, %.lr.ph986.i.preheader ], [ %i.bcg, %.lr.ph986.i.prol ]
  %.11734984.i.unr = phi ptr [ %.01733.lcssa.i, %.lr.ph986.i.preheader ], [ %i.bce, %.lr.ph986.i.prol ]
  %.111750983.i.unr = phi ptr [ %.101749.lcssa.i, %.lr.ph986.i.preheader ], [ %i.bcf, %.lr.ph986.i.prol ]
  %.2347982.i.unr = phi <4 x float> [ %.1346.lcssa.i, %.lr.ph986.i.preheader ], [ %i.bcc, %.lr.ph986.i.prol ]
  %.2350981.i.unr = phi <4 x float> [ %.1349.lcssa.i, %.lr.ph986.i.preheader ], [ %i.bcd, %.lr.ph986.i.prol ]
  %i.bch = icmp eq i32 %8, %.neg2246
  br i1 %i.bch, label %._crit_edge987.i, label %.lr.ph986.i

.lr.ph975.i:                                      ; preds = %.lr.ph975.i.preheader, %.lr.ph975.i
  %.01733972.i = phi ptr [ %i.bde, %.lr.ph975.i ], [ %.21024.i, %.lr.ph975.i.preheader ] ; 3 uses
  %.101749971.i = phi ptr [ %i.bdf, %.lr.ph975.i ], [ %.91748992.i, %.lr.ph975.i.preheader ] ; 3 uses
  %.1346970.i = phi <4 x float> [ %i.bda, %.lr.ph975.i ], [ %.0345.i, %.lr.ph975.i.preheader ]
  %.1349969.i = phi <4 x float> [ %i.bdd, %.lr.ph975.i ], [ %.0348.i, %.lr.ph975.i.preheader ]
  %niter2163 = phi i32 [ %niter2163.next.1, %.lr.ph975.i ], [ 0, %.lr.ph975.i.preheader ]
  %i.bci = load <8 x bfloat>, ptr %.01733972.i, align 1, !tbaa !17 ; 2 uses
  %i.bcj = load double, ptr %.101749971.i, align 1, !tbaa !17
  %i.bck = insertelement <2 x double> poison, double %i.bcj, i64 0
  %i.bcl = bitcast <2 x double> %i.bck to <2 x i64>
  %i.bcm = shufflevector <2 x i64> %i.bcl, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bcn = bitcast <2 x i64> %i.bcm to <8 x bfloat>
  %i.bco = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1346970.i, <8 x bfloat> nofpclass(nan inf) %i.bci, <8 x bfloat> nofpclass(nan inf) %i.bcn)
  %i.bcp = bitcast <2 x i64> %i.bcm to <8 x bfloat>
  %i.bcq = shufflevector <8 x bfloat> %i.bcp, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.bcr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1349969.i, <8 x bfloat> nofpclass(nan inf) %i.bci, <8 x bfloat> nofpclass(nan inf) %i.bcq)
  %i.bcs = getelementptr inbounds nuw i8, ptr %.01733972.i, i64 16
  %i.bct = getelementptr inbounds nuw i8, ptr %.101749971.i, i64 8
  %i.bcu = load <8 x bfloat>, ptr %i.bcs, align 1, !tbaa !17 ; 2 uses
  %i.bcv = load double, ptr %i.bct, align 1, !tbaa !17
  %i.bcw = insertelement <2 x double> poison, double %i.bcv, i64 0
  %i.bcx = bitcast <2 x double> %i.bcw to <2 x i64>
  %i.bcy = shufflevector <2 x i64> %i.bcx, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bcz = bitcast <2 x i64> %i.bcy to <8 x bfloat>
  %i.bda = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bco, <8 x bfloat> nofpclass(nan inf) %i.bcu, <8 x bfloat> nofpclass(nan inf) %i.bcz) ; 3 uses
  %i.bdb = bitcast <2 x i64> %i.bcy to <8 x bfloat>
  %i.bdc = shufflevector <8 x bfloat> %i.bdb, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.bdd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bcr, <8 x bfloat> nofpclass(nan inf) %i.bcu, <8 x bfloat> nofpclass(nan inf) %i.bdc) ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %.01733972.i, i64 32 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %.101749971.i, i64 16 ; 2 uses
  %niter2163.next.1 = add nuw nsw i32 %niter2163, 2 ; 2 uses
  %niter2163.ncmp.1.not = icmp eq i32 %niter2163.next.1, %unroll_iter2162
  br i1 %niter2163.ncmp.1.not, label %.preheader395.loopexit.i.unr-lcssa, label %.lr.ph975.i, !llvm.loop !381

.lr.ph986.i:                                      ; preds = %.lr.ph986.i.prol.loopexit, %.lr.ph986.i
  %.11732985.i = phi i32 [ %i.beg, %.lr.ph986.i ], [ %.11732985.i.unr, %.lr.ph986.i.prol.loopexit ]
  %.11734984.i = phi ptr [ %i.bee, %.lr.ph986.i ], [ %.11734984.i.unr, %.lr.ph986.i.prol.loopexit ] ; 3 uses
  %.111750983.i = phi ptr [ %i.bef, %.lr.ph986.i ], [ %.111750983.i.unr, %.lr.ph986.i.prol.loopexit ] ; 3 uses
  %.2347982.i = phi <4 x float> [ %i.bec, %.lr.ph986.i ], [ %.2347982.i.unr, %.lr.ph986.i.prol.loopexit ]
  %.2350981.i = phi <4 x float> [ %i.bed, %.lr.ph986.i ], [ %.2350981.i.unr, %.lr.ph986.i.prol.loopexit ]
  %i.bdg = load i64, ptr %.11734984.i, align 1, !tbaa !17
  %i.bdh = insertelement <2 x i64> poison, i64 %i.bdg, i64 0
  %i.bdi = bitcast <2 x i64> %i.bdh to <8 x i16>
  %29 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdj = bitcast <8 x i16> %29 to <4 x float>   ; 2 uses
  %i.bdk = load float, ptr %.111750983.i, align 1, !tbaa !17
  %i.bdl = insertelement <4 x float> poison, float %i.bdk, i64 0
  %i.bdm = bitcast <4 x float> %i.bdl to <8 x i16>
  %30 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.bdn = bitcast <8 x i16> %30 to <4 x float>   ; 2 uses
  %i.bdo = shufflevector <4 x float> %i.bdn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bdp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bdj, <4 x float> nofpclass(nan inf) %i.bdn, <4 x float> nofpclass(nan inf) %.2347982.i)
  %i.bdq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bdj, <4 x float> nofpclass(nan inf) %i.bdo, <4 x float> nofpclass(nan inf) %.2350981.i)
  %i.bdr = getelementptr inbounds nuw i8, ptr %.11734984.i, i64 8
  %i.bds = getelementptr inbounds nuw i8, ptr %.111750983.i, i64 4
  %i.bdt = load i64, ptr %i.bdr, align 1, !tbaa !17
  %i.bdu = insertelement <2 x i64> poison, i64 %i.bdt, i64 0
  %i.bdv = bitcast <2 x i64> %i.bdu to <8 x i16>
  %31 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bdw = bitcast <8 x i16> %31 to <4 x float>   ; 2 uses
  %i.bdx = load float, ptr %i.bds, align 1, !tbaa !17
  %i.bdy = insertelement <4 x float> poison, float %i.bdx, i64 0
  %i.bdz = bitcast <4 x float> %i.bdy to <8 x i16>
  %32 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bdz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.bea = bitcast <8 x i16> %32 to <4 x float>   ; 2 uses
  %i.beb = shufflevector <4 x float> %i.bea, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bec = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bdw, <4 x float> nofpclass(nan inf) %i.bea, <4 x float> nofpclass(nan inf) %i.bdp) ; 2 uses
  %i.bed = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bdw, <4 x float> nofpclass(nan inf) %i.beb, <4 x float> nofpclass(nan inf) %i.bdq) ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %.11734984.i, i64 16
  %i.bef = getelementptr inbounds nuw i8, ptr %.111750983.i, i64 8 ; 2 uses
  %i.beg = add nuw nsw i32 %.11732985.i, 2        ; 2 uses
  %exitcond1782.not.i.1 = icmp eq i32 %i.beg, %8
  br i1 %exitcond1782.not.i.1, label %._crit_edge987.i, label %.lr.ph986.i, !llvm.loop !382

._crit_edge987.i:                                 ; preds = %.lr.ph986.i.prol.loopexit, %.lr.ph986.i, %.preheader395.i
  %.2350.lcssa.i = phi <4 x float> [ %.1349.lcssa.i, %.preheader395.i ], [ %.lcssa1914.unr, %.lr.ph986.i.prol.loopexit ], [ %i.bed, %.lr.ph986.i ]
  %.2347.lcssa.i = phi <4 x float> [ %.1346.lcssa.i, %.preheader395.i ], [ %.lcssa1915.unr, %.lr.ph986.i.prol.loopexit ], [ %i.bec, %.lr.ph986.i ]
  %.111750.lcssa.i = phi ptr [ %.101749.lcssa.i, %.preheader395.i ], [ %.lcssa1913.unr, %.lr.ph986.i.prol.loopexit ], [ %i.bef, %.lr.ph986.i ] ; 2 uses
  store <4 x float> %.2347.lcssa.i, ptr %.16993.i, align 16, !tbaa !17
  %i.beh = getelementptr inbounds nuw i8, ptr %.16993.i, i64 16
  store <4 x float> %.2350.lcssa.i, ptr %i.beh, align 16, !tbaa !17
  %i.bei = getelementptr inbounds nuw i8, ptr %.16993.i, i64 32 ; 2 uses
  %i.bej = add nuw nsw i32 %.31757991.i, 2        ; 3 uses
  %i.bek = or disjoint i32 %i.bej, 1
  %i.bel = icmp slt i32 %i.bek, %6
  br i1 %i.bel, label %.lr.ph994.i, label %.preheader399.i, !llvm.loop !383

.lr.ph1019.i:                                     ; preds = %.preheader399.i, %._crit_edge1013.i
  %.171018.i = phi ptr [ %i.bhu, %._crit_edge1013.i ], [ %.16.lcssa.i, %.preheader399.i ] ; 3 uses
  %.1217511017.i = phi ptr [ %.141753.lcssa.i, %._crit_edge1013.i ], [ %.91748.lcssa.i, %.preheader399.i ] ; 4 uses
  %.417581016.i = phi i32 [ %i.bhv, %._crit_edge1013.i ], [ %.31757.lcssa.i, %.preheader399.i ]
  br i1 %.not1801.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph1019.i
  %i.bem = load <4 x float>, ptr %.171018.i, align 16, !tbaa !17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph1019.i
  %.0351.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1019.i ], [ %i.bem, %bb.ad ] ; 3 uses
  br i1 %i.ty, label %.lr.ph1003.i.preheader, label %.preheader394.i

.lr.ph1003.i.preheader:                           ; preds = %bb.ae
  br i1 %i.vb, label %.lr.ph1003.i.epil.preheader, label %.lr.ph1003.i

.preheader394.loopexit.i.unr-lcssa:               ; preds = %.lr.ph1003.i
  br i1 %lcmp.mod2168.not, label %.preheader394.loopexit.i, label %.lr.ph1003.i.epil.preheader

.lr.ph1003.i.epil.preheader:                      ; preds = %.preheader394.loopexit.i.unr-lcssa, %.lr.ph1003.i.preheader
  %.017231000.i.epil.init = phi ptr [ %.21024.i, %.lr.ph1003.i.preheader ], [ %i.bgr, %.preheader394.loopexit.i.unr-lcssa ]
  %.131752999.i.epil.init = phi ptr [ %.1217511017.i, %.lr.ph1003.i.preheader ], [ %i.bgs, %.preheader394.loopexit.i.unr-lcssa ]
  %.1352998.i.epil.init = phi <4 x float> [ %.0351.i, %.lr.ph1003.i.preheader ], [ %i.bgq, %.preheader394.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2170)
  br label %.lr.ph1003.i.epil

.lr.ph1003.i.epil:                                ; preds = %.lr.ph1003.i.epil, %.lr.ph1003.i.epil.preheader
  %.017231000.i.epil = phi ptr [ %i.bet, %.lr.ph1003.i.epil ], [ %.017231000.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.131752999.i.epil = phi ptr [ %i.beu, %.lr.ph1003.i.epil ], [ %.131752999.i.epil.init, %.lr.ph1003.i.epil.preheader ] ; 2 uses
  %.1352998.i.epil = phi <4 x float> [ %i.bes, %.lr.ph1003.i.epil ], [ %.1352998.i.epil.init, %.lr.ph1003.i.epil.preheader ]
  %epil.iter2167 = phi i32 [ %epil.iter2167.next, %.lr.ph1003.i.epil ], [ 0, %.lr.ph1003.i.epil.preheader ]
  %i.ben = load <8 x bfloat>, ptr %.017231000.i.epil, align 1, !tbaa !17
  %i.beo = load i32, ptr %.131752999.i.epil, align 4, !tbaa !442
  %i.bep = insertelement <4 x i32> poison, i32 %i.beo, i64 0
  %i.beq = bitcast <4 x i32> %i.bep to <8 x bfloat>
  %i.ber = shufflevector <8 x bfloat> %i.beq, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bes = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i.epil, <8 x bfloat> nofpclass(nan inf) %i.ben, <8 x bfloat> nofpclass(nan inf) %i.ber) ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %.017231000.i.epil, i64 16
  %i.beu = getelementptr inbounds nuw i8, ptr %.131752999.i.epil, i64 4
  %epil.iter2167.next = add i32 %epil.iter2167, 1 ; 2 uses
  %epil.iter2167.cmp.not = icmp eq i32 %epil.iter2167.next, %xtraiter2166
  br i1 %epil.iter2167.cmp.not, label %.preheader394.loopexit.i, label %.lr.ph1003.i.epil, !llvm.loop !384

.preheader394.loopexit.i:                         ; preds = %.lr.ph1003.i.epil, %.preheader394.loopexit.i.unr-lcssa
  %.lcssa1918 = phi <4 x float> [ %i.bgq, %.preheader394.loopexit.i.unr-lcssa ], [ %i.bes, %.lr.ph1003.i.epil ]
  %i.bev = getelementptr i8, ptr %.1217511017.i, i64 %i.um
  %scevgep1783.i = getelementptr i8, ptr %i.bev, i64 4
  br label %.preheader394.i

.preheader394.i:                                  ; preds = %.preheader394.loopexit.i, %bb.ae
  %.1352.lcssa.i = phi <4 x float> [ %.0351.i, %bb.ae ], [ %.lcssa1918, %.preheader394.loopexit.i ] ; 3 uses
  %.131752.lcssa.i = phi ptr [ %.1217511017.i, %bb.ae ], [ %scevgep1783.i, %.preheader394.loopexit.i ] ; 4 uses
  %.01723.lcssa.i = phi ptr [ %.21024.i, %bb.ae ], [ %indvars.iv1779.i, %.preheader394.loopexit.i ] ; 3 uses
  %.01721.lcssa.i = phi i32 [ 0, %bb.ae ], [ %i.ud, %.preheader394.loopexit.i ] ; 5 uses
  %i.bew = icmp slt i32 %.01721.lcssa.i, %8
  br i1 %i.bew, label %.lr.ph1012.i.preheader, label %._crit_edge1013.i

.lr.ph1012.i.preheader:                           ; preds = %.preheader394.i
  %i.bex = sub i32 %8, %.01721.lcssa.i
  %.neg2247 = add i32 %.01721.lcssa.i, 1
  %xtraiter2173 = and i32 %i.bex, 1
  %lcmp.mod2174.not = icmp eq i32 %xtraiter2173, 0
  br i1 %lcmp.mod2174.not, label %.lr.ph1012.i.prol.loopexit, label %.lr.ph1012.i.prol

.lr.ph1012.i.prol:                                ; preds = %.lr.ph1012.i.preheader
  %i.bey = load i64, ptr %.01723.lcssa.i, align 1, !tbaa !17
  %i.bez = insertelement <2 x i64> poison, i64 %i.bey, i64 0
  %i.bfa = bitcast <2 x i64> %i.bez to <8 x i16>
  %33 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bfa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bfb = bitcast <8 x i16> %33 to <4 x float>
  %i.bfc = load i16, ptr %.131752.lcssa.i, align 2, !tbaa !24
  %i.bfd = zext i16 %i.bfc to i32
  %i.bfe = shl nuw i32 %i.bfd, 16
  %i.bff = insertelement <4 x i32> poison, i32 %i.bfe, i64 0
  %i.bfg = bitcast <4 x i32> %i.bff to <4 x float>
  %i.bfh = shufflevector <4 x float> %i.bfg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bfi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bfb, <4 x float> nofpclass(nan inf) %i.bfh, <4 x float> nofpclass(nan inf) %.1352.lcssa.i) ; 2 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %.01723.lcssa.i, i64 8
  %i.bfk = getelementptr inbounds nuw i8, ptr %.131752.lcssa.i, i64 2 ; 2 uses
  %i.bfl = add nuw nsw i32 %.01721.lcssa.i, 1
  br label %.lr.ph1012.i.prol.loopexit

.lr.ph1012.i.prol.loopexit:                       ; preds = %.lr.ph1012.i.prol, %.lr.ph1012.i.preheader
  %.lcssa1920.unr = phi <4 x float> [ poison, %.lr.ph1012.i.preheader ], [ %i.bfi, %.lr.ph1012.i.prol ]
  %.lcssa1919.unr = phi ptr [ poison, %.lr.ph1012.i.preheader ], [ %i.bfk, %.lr.ph1012.i.prol ]
  %.117221011.i.unr = phi i32 [ %.01721.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bfl, %.lr.ph1012.i.prol ]
  %.117241010.i.unr = phi ptr [ %.01723.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bfj, %.lr.ph1012.i.prol ]
  %.1417531009.i.unr = phi ptr [ %.131752.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bfk, %.lr.ph1012.i.prol ]
  %.23531008.i.unr = phi <4 x float> [ %.1352.lcssa.i, %.lr.ph1012.i.preheader ], [ %i.bfi, %.lr.ph1012.i.prol ]
  %i.bfm = icmp eq i32 %8, %.neg2247
  br i1 %i.bfm, label %._crit_edge1013.i, label %.lr.ph1012.i

.lr.ph1003.i:                                     ; preds = %.lr.ph1003.i.preheader, %.lr.ph1003.i
  %.017231000.i = phi ptr [ %i.bgr, %.lr.ph1003.i ], [ %.21024.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.131752999.i = phi ptr [ %i.bgs, %.lr.ph1003.i ], [ %.1217511017.i, %.lr.ph1003.i.preheader ] ; 5 uses
  %.1352998.i = phi <4 x float> [ %i.bgq, %.lr.ph1003.i ], [ %.0351.i, %.lr.ph1003.i.preheader ]
  %niter2172 = phi i32 [ %niter2172.next.3, %.lr.ph1003.i ], [ 0, %.lr.ph1003.i.preheader ]
  %i.bfn = load <8 x bfloat>, ptr %.017231000.i, align 1, !tbaa !17
  %i.bfo = load i32, ptr %.131752999.i, align 4, !tbaa !442
  %i.bfp = insertelement <4 x i32> poison, i32 %i.bfo, i64 0
  %i.bfq = bitcast <4 x i32> %i.bfp to <8 x bfloat>
  %i.bfr = shufflevector <8 x bfloat> %i.bfq, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bfs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.1352998.i, <8 x bfloat> nofpclass(nan inf) %i.bfn, <8 x bfloat> nofpclass(nan inf) %i.bfr)
  %i.bft = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 16
  %i.bfu = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 4
  %i.bfv = load <8 x bfloat>, ptr %i.bft, align 1, !tbaa !17
  %i.bfw = load i32, ptr %i.bfu, align 4, !tbaa !442
  %i.bfx = insertelement <4 x i32> poison, i32 %i.bfw, i64 0
  %i.bfy = bitcast <4 x i32> %i.bfx to <8 x bfloat>
  %i.bfz = shufflevector <8 x bfloat> %i.bfy, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bga = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bfs, <8 x bfloat> nofpclass(nan inf) %i.bfv, <8 x bfloat> nofpclass(nan inf) %i.bfz)
  %i.bgb = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 32
  %i.bgc = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 8
  %i.bgd = load <8 x bfloat>, ptr %i.bgb, align 1, !tbaa !17
  %i.bge = load i32, ptr %i.bgc, align 4, !tbaa !442
  %i.bgf = insertelement <4 x i32> poison, i32 %i.bge, i64 0
  %i.bgg = bitcast <4 x i32> %i.bgf to <8 x bfloat>
  %i.bgh = shufflevector <8 x bfloat> %i.bgg, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bga, <8 x bfloat> nofpclass(nan inf) %i.bgd, <8 x bfloat> nofpclass(nan inf) %i.bgh)
  %i.bgj = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 48
  %i.bgk = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 12
  %i.bgl = load <8 x bfloat>, ptr %i.bgj, align 1, !tbaa !17
  %i.bgm = load i32, ptr %i.bgk, align 4, !tbaa !442
  %i.bgn = insertelement <4 x i32> poison, i32 %i.bgm, i64 0
  %i.bgo = bitcast <4 x i32> %i.bgn to <8 x bfloat>
  %i.bgp = shufflevector <8 x bfloat> %i.bgo, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bgi, <8 x bfloat> nofpclass(nan inf) %i.bgl, <8 x bfloat> nofpclass(nan inf) %i.bgp) ; 3 uses
  %i.bgr = getelementptr inbounds nuw i8, ptr %.017231000.i, i64 64 ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.131752999.i, i64 16 ; 2 uses
  %niter2172.next.3 = add i32 %niter2172, 4       ; 2 uses
  %niter2172.ncmp.3.not = icmp eq i32 %niter2172.next.3, %unroll_iter2171
  br i1 %niter2172.ncmp.3.not, label %.preheader394.loopexit.i.unr-lcssa, label %.lr.ph1003.i, !llvm.loop !385

.lr.ph1012.i:                                     ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i
  %.117221011.i = phi i32 [ %i.bht, %.lr.ph1012.i ], [ %.117221011.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %.117241010.i = phi ptr [ %i.bhr, %.lr.ph1012.i ], [ %.117241010.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.1417531009.i = phi ptr [ %i.bhs, %.lr.ph1012.i ], [ %.1417531009.i.unr, %.lr.ph1012.i.prol.loopexit ] ; 3 uses
  %.23531008.i = phi <4 x float> [ %i.bhq, %.lr.ph1012.i ], [ %.23531008.i.unr, %.lr.ph1012.i.prol.loopexit ]
  %i.bgt = load i64, ptr %.117241010.i, align 1, !tbaa !17
  %i.bgu = insertelement <2 x i64> poison, i64 %i.bgt, i64 0
  %i.bgv = bitcast <2 x i64> %i.bgu to <8 x i16>
  %34 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bgv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bgw = bitcast <8 x i16> %34 to <4 x float>
  %i.bgx = load i16, ptr %.1417531009.i, align 2, !tbaa !24
  %i.bgy = zext i16 %i.bgx to i32
  %i.bgz = shl nuw i32 %i.bgy, 16
  %i.bha = insertelement <4 x i32> poison, i32 %i.bgz, i64 0
  %i.bhb = bitcast <4 x i32> %i.bha to <4 x float>
  %i.bhc = shufflevector <4 x float> %i.bhb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bhd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bgw, <4 x float> nofpclass(nan inf) %i.bhc, <4 x float> nofpclass(nan inf) %.23531008.i)
  %i.bhe = getelementptr inbounds nuw i8, ptr %.117241010.i, i64 8
  %i.bhf = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 2
  %i.bhg = load i64, ptr %i.bhe, align 1, !tbaa !17
  %i.bhh = insertelement <2 x i64> poison, i64 %i.bhg, i64 0
  %i.bhi = bitcast <2 x i64> %i.bhh to <8 x i16>
  %35 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bhi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bhj = bitcast <8 x i16> %35 to <4 x float>
  %i.bhk = load i16, ptr %i.bhf, align 2, !tbaa !24
  %i.bhl = zext i16 %i.bhk to i32
  %i.bhm = shl nuw i32 %i.bhl, 16
  %i.bhn = insertelement <4 x i32> poison, i32 %i.bhm, i64 0
  %i.bho = bitcast <4 x i32> %i.bhn to <4 x float>
  %i.bhp = shufflevector <4 x float> %i.bho, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bhq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bhj, <4 x float> nofpclass(nan inf) %i.bhp, <4 x float> nofpclass(nan inf) %i.bhd) ; 2 uses
  %i.bhr = getelementptr inbounds nuw i8, ptr %.117241010.i, i64 16
  %i.bhs = getelementptr inbounds nuw i8, ptr %.1417531009.i, i64 4 ; 2 uses
  %i.bht = add nuw nsw i32 %.117221011.i, 2       ; 2 uses
  %exitcond1784.not.i.1 = icmp eq i32 %i.bht, %8
  br i1 %exitcond1784.not.i.1, label %._crit_edge1013.i, label %.lr.ph1012.i, !llvm.loop !386

._crit_edge1013.i:                                ; preds = %.lr.ph1012.i.prol.loopexit, %.lr.ph1012.i, %.preheader394.i
  %.2353.lcssa.i = phi <4 x float> [ %.1352.lcssa.i, %.preheader394.i ], [ %.lcssa1920.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bhq, %.lr.ph1012.i ]
  %.141753.lcssa.i = phi ptr [ %.131752.lcssa.i, %.preheader394.i ], [ %.lcssa1919.unr, %.lr.ph1012.i.prol.loopexit ], [ %i.bhs, %.lr.ph1012.i ]
  store <4 x float> %.2353.lcssa.i, ptr %.171018.i, align 16, !tbaa !17
  %i.bhu = getelementptr inbounds nuw i8, ptr %.171018.i, i64 16 ; 2 uses
  %i.bhv = add nuw nsw i32 %.417581016.i, 1       ; 2 uses
  %exitcond1785.not.i = icmp eq i32 %i.bhv, %6
  br i1 %exitcond1785.not.i, label %._crit_edge1020.i, label %.lr.ph1019.i, !llvm.loop !387

._crit_edge1020.i:                                ; preds = %._crit_edge1013.i, %.preheader399.i
  %.17.lcssa.i = phi ptr [ %.16.lcssa.i, %.preheader399.i ], [ %i.bhu, %._crit_edge1013.i ] ; 2 uses
  %i.bhw = getelementptr inbounds [2 x i8], ptr %.21024.i, i64 %i.ua ; 2 uses
  %i.bhx = add nuw nsw i32 %.213881022.i, 4       ; 3 uses
  %i.bhy = or disjoint i32 %i.bhx, 3
  %i.bhz = icmp slt i32 %i.bhy, %4
  %scevgep1780.i = getelementptr i8, ptr %indvars.iv1779.i, i64 %i.uk
  br i1 %i.bhz, label %.preheader403.i, label %.preheader393.i, !llvm.loop !388

.preheader392.i:                                  ; preds = %._crit_edge1178.i, %.preheader392.lr.ph.i
  %indvars.iv1794.i = phi ptr [ %scevgep1793.i, %.preheader392.lr.ph.i ], [ %scevgep1795.i, %._crit_edge1178.i ] ; 3 uses
  %.31182.i = phi ptr [ %.2.lcssa.i, %.preheader392.lr.ph.i ], [ %i.ctn, %._crit_edge1178.i ] ; 26 uses
  %.181181.i = phi ptr [ %.12.lcssa.i, %.preheader392.lr.ph.i ], [ %.23.lcssa.i, %._crit_edge1178.i ] ; 2 uses
  %.313891180.i = phi i32 [ %.21388.lcssa.i, %.preheader392.lr.ph.i ], [ %i.cto, %._crit_edge1178.i ]
  br i1 %i.amh, label %.lr.ph1053.i, label %.preheader391.i

.preheader382.i:                                  ; preds = %._crit_edge1178.i, %.preheader393.i
  %.31389.lcssa.i = phi i32 [ %.21388.lcssa.i, %.preheader393.i ], [ %i.cto, %._crit_edge1178.i ] ; 2 uses
  %.18.lcssa.i = phi ptr [ %.12.lcssa.i, %.preheader393.i ], [ %.23.lcssa.i, %._crit_edge1178.i ]
  %.3.lcssa.i = phi ptr [ %.2.lcssa.i, %.preheader393.i ], [ %i.ctn, %._crit_edge1178.i ] ; 2 uses
  %i.bia = icmp slt i32 %.31389.lcssa.i, %4
  br i1 %i.bia, label %.preheader381.lr.ph.i, label %_ZN4ncnnL29gemm_transB_packed_tile_bf16sERKNS_3MatES2_RS0_iiiiii.exit

.preheader381.lr.ph.i:                            ; preds = %.preheader382.i
  %i.bib = icmp sgt i32 %6, 15
  %.not1791.i = icmp eq i32 %7, 0                 ; 5 uses
  %i.bic = icmp sgt i32 %8, 1                     ; 5 uses
  %i.bid = sext i32 %8 to i64                     ; 2 uses
  %i.bie = add i32 %8, -2                         ; 7 uses
  %i.bif = and i32 %i.bie, -2
  %i.big = add i32 %i.bif, 2                      ; 5 uses
  %i.bih = and i32 %6, -16
  %i.bii = lshr i32 %i.bie, 1
  %i.bij = zext nneg i32 %i.bii to i64            ; 5 uses
  %i.bik = shl nuw nsw i64 %i.bij, 5
  %i.bil = shl nuw nsw i64 %i.bij, 4
  %i.bim = shl nuw nsw i64 %i.bij, 3
  %i.bin = shl nuw nsw i64 %i.bij, 2              ; 2 uses
  %i.bio = lshr i32 %i.bie, 1
  %i.bip = zext nneg i32 %i.bio to i64
  %i.biq = shl nuw nsw i64 %i.bip, 6
  %i.bir = getelementptr i8, ptr %.3.lcssa.i, i64 %i.bin
  %scevgep554 = getelementptr i8, ptr %i.bir, i64 4
  %i.bis = shl nsw i64 %i.bid, 1
  %i.bit = add nuw nsw i64 %i.bij, 1              ; 10 uses
  %i.biu = add i32 %8, -2                         ; 4 uses
  %i.biv = lshr i32 %i.biu, 1
  %i.biw = add nuw i32 %i.biv, 1                  ; 6 uses
  %xtraiter2208 = and i32 %i.biw, 3               ; 3 uses
  %i.bix = icmp ult i32 %i.biu, 6
  %unroll_iter2214 = and i32 %i.biw, -4
  %lcmp.mod2210.not = icmp eq i32 %xtraiter2208, 0
  %lcmp.mod2213 = icmp ne i32 %xtraiter2208, 0
  %xtraiter2218 = and i32 %i.biw, 3               ; 3 uses
  %i.biy = icmp ult i32 %i.biu, 6
  %unroll_iter2224 = and i32 %i.biw, -4
  %lcmp.mod2220.not = icmp eq i32 %xtraiter2218, 0
  %lcmp.mod2223 = icmp ne i32 %xtraiter2218, 0
  %xtraiter2228 = and i32 %i.biw, 3               ; 3 uses
  %i.biz = icmp ult i32 %i.biu, 6
  %unroll_iter2234 = and i32 %i.biw, -4
  %lcmp.mod2230.not = icmp eq i32 %xtraiter2228, 0
  %lcmp.mod2233 = icmp ne i32 %xtraiter2228, 0
  %min.iters.check1601 = icmp ult i32 %i.bie, 14
  %min.iters.check1603 = icmp ult i32 %i.bie, 126
  %i.bja = and i64 %i.bit, 56
  %n.vec1605 = and i64 %i.bit, 4294967232         ; 6 uses
  %i.bjb = trunc nuw i64 %n.vec1605 to i32
  %i.bjc = shl i32 %i.bjb, 1
  %i.bjd = shl nuw nsw i64 %n.vec1605, 2
  %i.bje = shl nuw nsw i64 %n.vec1605, 3
  %cmp.n1664 = icmp eq i64 %i.bit, %n.vec1605
  %min.epilog.iters.check1668 = icmp eq i64 %i.bja, 0
  %n.vec1673 = and i64 %i.bit, 4294967288         ; 5 uses
  %i.bjf = trunc nuw i64 %n.vec1673 to i32
  %i.bjg = shl i32 %i.bjf, 1
  %i.bjh = shl nuw nsw i64 %n.vec1673, 2
  %i.bji = shl nuw nsw i64 %n.vec1673, 3
  %cmp.n1690 = icmp eq i64 %i.bit, %n.vec1673
  %min.iters.check1454 = icmp ult i32 %i.bie, 14
  %min.iters.check1456 = icmp ult i32 %i.bie, 126
  %i.bjj = and i64 %i.bit, 56
  %n.vec1458 = and i64 %i.bit, 4294967232         ; 5 uses
  %i.bjk = trunc nuw i64 %n.vec1458 to i32
  %i.bjl = shl i32 %i.bjk, 1
  %i.bjm = shl nuw nsw i64 %n.vec1458, 2          ; 2 uses
  %cmp.n1502 = icmp eq i64 %i.bit, %n.vec1458
  %min.epilog.iters.check1506 = icmp eq i64 %i.bjj, 0
  %n.vec1510 = and i64 %i.bit, 4294967288         ; 4 uses
  %i.bjn = trunc nuw i64 %n.vec1510 to i32
  %i.bjo = shl i32 %i.bjn, 1
  %i.bjp = shl nuw nsw i64 %n.vec1510, 2          ; 2 uses
  %cmp.n1524 = icmp eq i64 %i.bit, %n.vec1510
  br label %.preheader381.i

.preheader391.i:                                  ; preds = %._crit_edge1046.i, %.preheader392.i
  %.01704.lcssa.i = phi ptr [ %.val8, %.preheader392.i ], [ %.21706.lcssa.i, %._crit_edge1046.i ] ; 2 uses
  %.01699.lcssa.i = phi i32 [ 0, %.preheader392.i ], [ %i.amo, %._crit_edge1046.i ] ; 3 uses
  %.19.lcssa.i = phi ptr [ %.181181.i, %.preheader392.i ], [ %i.bnb, %._crit_edge1046.i ] ; 2 uses
  %i.bjq = or disjoint i32 %.01699.lcssa.i, 7
  %i.bjr = icmp slt i32 %i.bjq, %6
  br i1 %i.bjr, label %.lr.ph1082.i, label %.preheader390.i

.lr.ph1053.i:                                     ; preds = %.preheader392.i, %._crit_edge1046.i
  %.191052.i = phi ptr [ %i.bnb, %._crit_edge1046.i ], [ %.181181.i, %.preheader392.i ] ; 5 uses
  %.016991051.i = phi i32 [ %i.bnc, %._crit_edge1046.i ], [ 0, %.preheader392.i ]
  %.017041050.i = phi ptr [ %.21706.lcssa.i, %._crit_edge1046.i ], [ %.val8, %.preheader392.i ] ; 4 uses
  br i1 %.not1796.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph1053.i
  %i.bjs = load <16 x float>, ptr %.191052.i, align 1, !tbaa !17
  %i.bjt = getelementptr inbounds nuw i8, ptr %.191052.i, i64 64
  %i.bju = load <16 x float>, ptr %i.bjt, align 1, !tbaa !17
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph1053.i
  %.01696.i = phi nsz <16 x float> [ %i.bjs, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  %.01693.i = phi nsz <16 x float> [ %i.bju, %bb.af ], [ zeroinitializer, %.lr.ph1053.i ] ; 3 uses
  br i1 %i.ami, label %.lr.ph1034.i.preheader, label %.preheader387.i

.lr.ph1034.i.preheader:                           ; preds = %bb.ag
  br i1 %i.ane, label %.lr.ph1034.i.epil.preheader, label %.lr.ph1034.i

.preheader387.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1034.i
  br i1 %lcmp.mod2177.not.not, label %.lr.ph1034.i.epil.preheader, label %.preheader387.i.loopexit

.lr.ph1034.i.epil.preheader:                      ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.preheader
  %.016911031.i.epil.init = phi ptr [ %.31182.i, %.lr.ph1034.i.preheader ], [ %i.blz, %.preheader387.i.loopexit.unr-lcssa ] ; 2 uses
  %.116941030.i.epil.init = phi <16 x float> [ %.01693.i, %.lr.ph1034.i.preheader ], [ %i.bly, %.preheader387.i.loopexit.unr-lcssa ]
  %.116971029.i.epil.init = phi <16 x float> [ %.01696.i, %.lr.ph1034.i.preheader ], [ %i.blw, %.preheader387.i.loopexit.unr-lcssa ]
  %.117051028.i.epil.init = phi ptr [ %.017041050.i, %.lr.ph1034.i.preheader ], [ %i.bma, %.preheader387.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2181)
  %i.bjv = load double, ptr %.016911031.i.epil.init, align 8, !tbaa !441
  %i.bjw = insertelement <8 x double> poison, double %i.bjv, i64 0
  %i.bjx = bitcast <8 x double> %i.bjw to <8 x i64>
  %i.bjy = shufflevector <8 x i64> %i.bjx, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bjz = load <8 x i64>, ptr %.117051028.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.bka = bitcast <8 x i64> %i.bjz to <16 x i32>
  %i.bkb = shufflevector <16 x i32> %i.bka, <16 x i32> poison, <16 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4, i32 9, i32 10, i32 11, i32 8, i32 13, i32 14, i32 15, i32 12>
  %i.bkc = bitcast <8 x i64> %i.bjy to <32 x bfloat> ; 2 uses
  %i.bkd = bitcast <8 x i64> %i.bjz to <32 x bfloat>
  %i.bke = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116971029.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bkc, <32 x bfloat> nofpclass(nan inf) %i.bkd)
  %i.bkf = bitcast <16 x i32> %i.bkb to <32 x bfloat>
  %i.bkg = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.116941030.i.epil.init, <32 x bfloat> nofpclass(nan inf) %i.bkc, <32 x bfloat> nofpclass(nan inf) %i.bkf)
  %i.bkh = getelementptr inbounds nuw i8, ptr %.016911031.i.epil.init, i64 8
  br label %.preheader387.i.loopexit

.preheader387.i.loopexit:                         ; preds = %.preheader387.i.loopexit.unr-lcssa, %.lr.ph1034.i.epil.preheader
  %.lcssa1798 = phi <16 x float> [ %i.blw, %.preheader387.i.loopexit.unr-lcssa ], [ %i.bke, %.lr.ph1034.i.epil.preheader ]
  %.lcssa1797 = phi <16 x float> [ %i.bly, %.preheader387.i.loopexit.unr-lcssa ], [ %i.bkg, %.lr.ph1034.i.epil.preheader ]
  %.lcssa1796 = phi ptr [ %i.blz, %.preheader387.i.loopexit.unr-lcssa ], [ %i.bkh, %.lr.ph1034.i.epil.preheader ]
  %i.bki = getelementptr i8, ptr %.017041050.i, i64 %i.amz
  %scevgep552 = getelementptr i8, ptr %i.bki, i64 64
  br label %.preheader387.i

.preheader387.i:                                  ; preds = %.preheader387.i.loopexit, %bb.ag
  %.11705.lcssa.i = phi ptr [ %.017041050.i, %bb.ag ], [ %scevgep552, %.preheader387.i.loopexit ] ; 4 uses
  %.11697.lcssa.i = phi <16 x float> [ %.01696.i, %bb.ag ], [ %.lcssa1798, %.preheader387.i.loopexit ] ; 3 uses
  %.11694.lcssa.i = phi <16 x float> [ %.01693.i, %bb.ag ], [ %.lcssa1797, %.preheader387.i.loopexit ] ; 3 uses
  %.01691.lcssa.i = phi ptr [ %.31182.i, %bb.ag ], [ %.lcssa1796, %.preheader387.i.loopexit ] ; 3 uses
  %.01689.lcssa.i = phi i32 [ 0, %bb.ag ], [ %i.amn, %.preheader387.i.loopexit ] ; 5 uses
  %i.bkj = icmp slt i32 %.01689.lcssa.i, %8
  br i1 %i.bkj, label %.lr.ph1045.i.preheader, label %._crit_edge1046.i

.lr.ph1045.i.preheader:                           ; preds = %.preheader387.i
  %i.bkk = sub i32 %8, %.01689.lcssa.i
  %.neg2248 = add i32 %.01689.lcssa.i, 1
  %xtraiter2184 = and i32 %i.bkk, 1
  %lcmp.mod2185.not = icmp eq i32 %xtraiter2184, 0
  br i1 %lcmp.mod2185.not, label %.lr.ph1045.i.prol.loopexit, label %.lr.ph1045.i.prol

.lr.ph1045.i.prol:                                ; preds = %.lr.ph1045.i.preheader
  %i.bkl = load i32, ptr %.01691.lcssa.i, align 4, !tbaa !442
  %i.bkm = insertelement <8 x i32> poison, i32 %i.bkl, i64 0
  %i.bkn = shufflevector <8 x i32> %i.bkm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bko = bitcast <8 x i32> %i.bkn to <16 x bfloat>
  %i.bkp = fpext fast <16 x bfloat> %i.bko to <16 x float> ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %i.bny = sub i32 %8, %.01670.lcssa.i
  %.neg2249 = add i32 %.01670.lcssa.i, 1
  %xtraiter2195 = and i32 %i.bny, 1
  %lcmp.mod2196.not = icmp eq i32 %xtraiter2195, 0
  br i1 %lcmp.mod2196.not, label %.lr.ph1074.i.prol.loopexit, label %.lr.ph1074.i.prol

.lr.ph1074.i.prol:                                ; preds = %.lr.ph1074.i.preheader
  %i.bnz = load float, ptr %.01672.lcssa.i, align 1, !tbaa !17
  %i.boa = insertelement <4 x float> poison, float %i.bnz, i64 0
  %i.bob = load <8 x bfloat>, ptr %.41708.lcssa.i, align 1, !tbaa !17
  %i.boc = bitcast <4 x float> %i.boa to <8 x bfloat>
  %i.bod = shufflevector <8 x bfloat> %i.boc, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.boe = fpext fast <8 x bfloat> %i.bod to <8 x float> ; 2 uses
  %i.bof = shufflevector <8 x float> %i.boe, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bog = fpext fast <8 x bfloat> %i.bob to <8 x float> ; 2 uses
  %i.boh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.boe, <8 x float> nofpclass(nan inf) %i.bog, <8 x float> nofpclass(nan inf) %.1355.lcssa.i) ; 2 uses
  %i.boi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bof, <8 x float> nofpclass(nan inf) %i.bog, <8 x float> nofpclass(nan inf) %.1358.lcssa.i) ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %.01672.lcssa.i, i64 4
  %i.bok = getelementptr inbounds nuw i8, ptr %.41708.lcssa.i, i64 16 ; 2 uses
  %i.bol = add nuw nsw i32 %.01670.lcssa.i, 1
  br label %.lr.ph1074.i.prol.loopexit

.lr.ph1074.i.prol.loopexit:                       ; preds = %.lr.ph1074.i.prol, %.lr.ph1074.i.preheader
  %.lcssa1808.unr = phi <8 x float> [ poison, %.lr.ph1074.i.preheader ], [ %i.boh, %.lr.ph1074.i.prol ]
  %.lcssa1807.unr = phi <8 x float> [ poison, %.lr.ph1074.i.preheader ], [ %i.boi, %.lr.ph1074.i.prol ]
  %.lcssa1806.unr = phi ptr [ poison, %.lr.ph1074.i.preheader ], [ %i.bok, %.lr.ph1074.i.prol ]
  %.116711073.i.unr = phi i32 [ %.01670.lcssa.i, %.lr.ph1074.i.preheader ], [ %i.bol, %.lr.ph1074.i.prol ]
  %.116731072.i.unr = phi ptr [ %.01672.lcssa.i, %.lr.ph1074.i.preheader ], [ %i.boj, %.lr.ph1074.i.prol ]
  %.517091071.i.unr = phi ptr [ %.41708.lcssa.i, %.lr.ph1074.i.preheader ], [ %i.bok, %.lr.ph1074.i.prol ]
  %.23561070.i.unr = phi <8 x float> [ %.1355.lcssa.i, %.lr.ph1074.i.preheader ], [ %i.boh, %.lr.ph1074.i.prol ]
  %.23591069.i.unr = phi <8 x float> [ %.1358.lcssa.i, %.lr.ph1074.i.preheader ], [ %i.boi, %.lr.ph1074.i.prol ]
  %i.bom = icmp eq i32 %8, %.neg2249
  br i1 %i.bom, label %._crit_edge1075.i, label %.lr.ph1074.i

.lr.ph1063.i:                                     ; preds = %.lr.ph1063.i.preheader, %.lr.ph1063.i
  %.016721060.i = phi ptr [ %i.bpl, %.lr.ph1063.i ], [ %.31182.i, %.lr.ph1063.i.preheader ] ; 3 uses
  %.417081059.i = phi ptr [ %i.bpm, %.lr.ph1063.i ], [ %.317071079.i, %.lr.ph1063.i.preheader ] ; 3 uses
  %.13551058.i = phi <8 x float> [ %i.bpi, %.lr.ph1063.i ], [ %.0354.i, %.lr.ph1063.i.preheader ]
  %.13581057.i = phi <8 x float> [ %i.bpk, %.lr.ph1063.i ], [ %.0357.i, %.lr.ph1063.i.preheader ]
  %niter2194 = phi i32 [ %niter2194.next.1, %.lr.ph1063.i ], [ 0, %.lr.ph1063.i.preheader ]
  %i.bon = load double, ptr %.016721060.i, align 1, !tbaa !17
  %i.boo = insertelement <4 x double> poison, double %i.bon, i64 0
  %i.bop = bitcast <4 x double> %i.boo to <4 x i64>
  %i.boq = shufflevector <4 x i64> %i.bop, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bor = load <16 x bfloat>, ptr %.417081059.i, align 1, !tbaa !17 ; 2 uses
  %i.bos = bitcast <4 x i64> %i.boq to <8 x i32>
  %i.bot = shufflevector <8 x i32> %i.bos, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bou = bitcast <4 x i64> %i.boq to <16 x bfloat>
  %i.bov = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.13551058.i, <16 x bfloat> nofpclass(nan inf) %i.bou, <16 x bfloat> nofpclass(nan inf) %i.bor)
  %i.bow = bitcast <8 x i32> %i.bot to <16 x bfloat>
  %i.box = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.13581057.i, <16 x bfloat> nofpclass(nan inf) %i.bow, <16 x bfloat> nofpclass(nan inf) %i.bor)
  %i.boy = getelementptr inbounds nuw i8, ptr %.016721060.i, i64 8
  %i.boz = getelementptr inbounds nuw i8, ptr %.417081059.i, i64 32
  %i.bpa = load double, ptr %i.boy, align 1, !tbaa !17
  %i.bpb = insertelement <4 x double> poison, double %i.bpa, i64 0
  %i.bpc = bitcast <4 x double> %i.bpb to <4 x i64>
  %i.bpd = shufflevector <4 x i64> %i.bpc, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bpe = load <16 x bfloat>, ptr %i.boz, align 1, !tbaa !17 ; 2 uses
  %i.bpf = bitcast <4 x i64> %i.bpd to <8 x i32>
  %i.bpg = shufflevector <8 x i32> %i.bpf, <8 x i32> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bph = bitcast <4 x i64> %i.bpd to <16 x bfloat>
  %i.bpi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.bov, <16 x bfloat> nofpclass(nan inf) %i.bph, <16 x bfloat> nofpclass(nan inf) %i.bpe) ; 3 uses
  %i.bpj = bitcast <8 x i32> %i.bpg to <16 x bfloat>
  %i.bpk = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.box, <16 x bfloat> nofpclass(nan inf) %i.bpj, <16 x bfloat> nofpclass(nan inf) %i.bpe) ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %.016721060.i, i64 16 ; 3 uses
  %i.bpm = getelementptr inbounds nuw i8, ptr %.417081059.i, i64 64 ; 2 uses
  %niter2194.next.1 = add nuw nsw i32 %niter2194, 2 ; 2 uses
  %niter2194.ncmp.1.not = icmp eq i32 %niter2194.next.1, %unroll_iter2193
  br i1 %niter2194.ncmp.1.not, label %.preheader386.loopexit.i.unr-lcssa, label %.lr.ph1063.i, !llvm.loop !392

.lr.ph1074.i:                                     ; preds = %.lr.ph1074.i.prol.loopexit, %.lr.ph1074.i
  %.116711073.i = phi i32 [ %i.bql, %.lr.ph1074.i ], [ %.116711073.i.unr, %.lr.ph1074.i.prol.loopexit ]
  %.116731072.i = phi ptr [ %i.bqj, %.lr.ph1074.i ], [ %.116731072.i.unr, %.lr.ph1074.i.prol.loopexit ] ; 3 uses
  %.517091071.i = phi ptr [ %i.bqk, %.lr.ph1074.i ], [ %.517091071.i.unr, %.lr.ph1074.i.prol.loopexit ] ; 3 uses
  %.23561070.i = phi <8 x float> [ %i.bqh, %.lr.ph1074.i ], [ %.23561070.i.unr, %.lr.ph1074.i.prol.loopexit ]
  %.23591069.i = phi <8 x float> [ %i.bqi, %.lr.ph1074.i ], [ %.23591069.i.unr, %.lr.ph1074.i.prol.loopexit ]
  %i.bpn = load float, ptr %.116731072.i, align 1, !tbaa !17
  %i.bpo = insertelement <4 x float> poison, float %i.bpn, i64 0
  %i.bpp = load <8 x bfloat>, ptr %.517091071.i, align 1, !tbaa !17
  %i.bpq = bitcast <4 x float> %i.bpo to <8 x bfloat>
  %i.bpr = shufflevector <8 x bfloat> %i.bpq, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bps = fpext fast <8 x bfloat> %i.bpr to <8 x float> ; 2 uses
  %i.bpt = shufflevector <8 x float> %i.bps, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bpu = fpext fast <8 x bfloat> %i.bpp to <8 x float> ; 2 uses
  %i.bpv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bps, <8 x float> nofpclass(nan inf) %i.bpu, <8 x float> nofpclass(nan inf) %.23561070.i)
  %i.bpw = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bpt, <8 x float> nofpclass(nan inf) %i.bpu, <8 x float> nofpclass(nan inf) %.23591069.i)
  %i.bpx = getelementptr inbounds nuw i8, ptr %.116731072.i, i64 4
  %i.bpy = getelementptr inbounds nuw i8, ptr %.517091071.i, i64 16
  %i.bpz = load float, ptr %i.bpx, align 1, !tbaa !17
  %i.bqa = insertelement <4 x float> poison, float %i.bpz, i64 0
  %i.bqb = load <8 x bfloat>, ptr %i.bpy, align 1, !tbaa !17
  %i.bqc = bitcast <4 x float> %i.bqa to <8 x bfloat>
  %i.bqd = shufflevector <8 x bfloat> %i.bqc, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bqe = fpext fast <8 x bfloat> %i.bqd to <8 x float> ; 2 uses
  %i.bqf = shufflevector <8 x float> %i.bqe, <8 x float> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 0, i32 5, i32 6, i32 7, i32 4>
  %i.bqg = fpext fast <8 x bfloat> %i.bqb to <8 x float> ; 2 uses
  %i.bqh = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bqe, <8 x float> nofpclass(nan inf) %i.bqg, <8 x float> nofpclass(nan inf) %i.bpv) ; 2 uses
  %i.bqi = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bqf, <8 x float> nofpclass(nan inf) %i.bqg, <8 x float> nofpclass(nan inf) %i.bpw) ; 2 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %.116731072.i, i64 8
  %i.bqk = getelementptr inbounds nuw i8, ptr %.517091071.i, i64 32 ; 2 uses
  %i.bql = add nuw nsw i32 %.116711073.i, 2       ; 2 uses
  %exitcond1788.not.i.1 = icmp eq i32 %i.bql, %8
  br i1 %exitcond1788.not.i.1, label %._crit_edge1075.i, label %.lr.ph1074.i, !llvm.loop !393

._crit_edge1075.i:                                ; preds = %.lr.ph1074.i.prol.loopexit, %.lr.ph1074.i, %.preheader386.i
  %.2359.lcssa.i = phi <8 x float> [ %.1358.lcssa.i, %.preheader386.i ], [ %.lcssa1807.unr, %.lr.ph1074.i.prol.loopexit ], [ %i.bqi, %.lr.ph1074.i ]
  %.2356.lcssa.i = phi <8 x float> [ %.1355.lcssa.i, %.preheader386.i ], [ %.lcssa1808.unr, %.lr.ph1074.i.prol.loopexit ], [ %i.bqh, %.lr.ph1074.i ]
  %.51709.lcssa.i = phi ptr [ %.41708.lcssa.i, %.preheader386.i ], [ %.lcssa1806.unr, %.lr.ph1074.i.prol.loopexit ], [ %i.bqk, %.lr.ph1074.i ] ; 2 uses
  store <8 x float> %.2356.lcssa.i, ptr %.201081.i, align 1, !tbaa !17
  %i.bqm = getelementptr inbounds nuw i8, ptr %.201081.i, i64 32
  store <8 x float> %.2359.lcssa.i, ptr %i.bqm, align 1, !tbaa !17
  %i.bqn = getelementptr inbounds nuw i8, ptr %.201081.i, i64 64 ; 2 uses
  %i.bqo = add nuw nsw i32 %.117001080.i, 8       ; 3 uses
  %i.bqp = or disjoint i32 %i.bqo, 7
  %i.bqq = icmp slt i32 %i.bqp, %6
  br i1 %i.bqq, label %.lr.ph1082.i, label %.preheader390.i, !llvm.loop !394

.preheader389.i:                                  ; preds = %._crit_edge1104.i, %.preheader390.i
  %.61710.lcssa.i = phi ptr [ %.31707.lcssa.i, %.preheader390.i ], [ %.81712.lcssa.i, %._crit_edge1104.i ] ; 2 uses
  %.21701.lcssa.i = phi i32 [ %.11700.lcssa.i, %.preheader390.i ], [ %i.buc, %._crit_edge1104.i ] ; 3 uses
  %.21.lcssa.i = phi ptr [ %.20.lcssa.i, %.preheader390.i ], [ %i.bub, %._crit_edge1104.i ] ; 2 uses
  %i.bqr = or disjoint i32 %.21701.lcssa.i, 1
  %i.bqs = icmp slt i32 %i.bqr, %6
  br i1 %i.bqs, label %.lr.ph1148.i.preheader, label %.preheader388.i

.lr.ph1148.i.preheader:                           ; preds = %.preheader389.i
  %i.bqt = getelementptr i8, ptr %.31182.i, i64 %i.ann
  %i.bqu = getelementptr i8, ptr %.31182.i, i64 %i.anq
  br label %.lr.ph1148.i

.lr.ph1111.i:                                     ; preds = %.preheader390.i, %._crit_edge1104.i
  %.211110.i = phi ptr [ %i.bub, %._crit_edge1104.i ], [ %.20.lcssa.i, %.preheader390.i ] ; 5 uses
  %.217011109.i = phi i32 [ %i.buc, %._crit_edge1104.i ], [ %.11700.lcssa.i, %.preheader390.i ]
  %.617101108.i = phi ptr [ %.81712.lcssa.i, %._crit_edge1104.i ], [ %.31707.lcssa.i, %.preheader390.i ] ; 4 uses
  br i1 %.not1796.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph1111.i
  %i.bqv = load <4 x float>, ptr %.211110.i, align 16, !tbaa !17
  %i.bqw = getelementptr inbounds nuw i8, ptr %.211110.i, i64 16
  %i.bqx = load <4 x float>, ptr %i.bqw, align 16, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph1111.i
  %.0363.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1111.i ], [ %i.bqx, %bb.aj ] ; 3 uses
  %.0360.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1111.i ], [ %i.bqv, %bb.aj ] ; 3 uses
  br i1 %i.ami, label %.lr.ph1092.i.preheader, label %.preheader385.i

.lr.ph1092.i.preheader:                           ; preds = %bb.ak
  br i1 %i.ani, label %.lr.ph1092.i.epil.preheader, label %.lr.ph1092.i

.preheader385.loopexit.i.unr-lcssa:               ; preds = %.lr.ph1092.i
  br i1 %lcmp.mod2199.not.not, label %.lr.ph1092.i.epil.preheader, label %.preheader385.loopexit.i

.lr.ph1092.i.epil.preheader:                      ; preds = %.preheader385.loopexit.i.unr-lcssa, %.lr.ph1092.i.preheader
  %.016591089.i.epil.init = phi ptr [ %.31182.i, %.lr.ph1092.i.preheader ], [ %i.bsx, %.preheader385.loopexit.i.unr-lcssa ] ; 2 uses
  %.717111088.i.epil.init = phi ptr [ %.617101108.i, %.lr.ph1092.i.preheader ], [ %i.bsy, %.preheader385.loopexit.i.unr-lcssa ]
  %.13611087.i.epil.init = phi <4 x float> [ %.0360.i, %.lr.ph1092.i.preheader ], [ %i.bst, %.preheader385.loopexit.i.unr-lcssa ]
  %.13641086.i.epil.init = phi <4 x float> [ %.0363.i, %.lr.ph1092.i.preheader ], [ %i.bsw, %.preheader385.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2203)
  %i.bqy = load double, ptr %.016591089.i.epil.init, align 1, !tbaa !17
  %i.bqz = insertelement <2 x double> poison, double %i.bqy, i64 0
  %i.bra = load <2 x i64>, ptr %.717111088.i.epil.init, align 1, !tbaa !17 ; 2 uses
  %i.brb = bitcast <2 x double> %i.bqz to <8 x bfloat>
  %i.brc = shufflevector <8 x bfloat> %i.brb, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.brd = bitcast <2 x i64> %i.bra to <8 x bfloat>
  %i.bre = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13611087.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.brc, <8 x bfloat> nofpclass(nan inf) %i.brd)
  %i.brf = bitcast <2 x i64> %i.bra to <8 x bfloat>
  %i.brg = shufflevector <8 x bfloat> %i.brf, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.brh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13641086.i.epil.init, <8 x bfloat> nofpclass(nan inf) %i.brc, <8 x bfloat> nofpclass(nan inf) %i.brg)
  %i.bri = getelementptr inbounds nuw i8, ptr %.016591089.i.epil.init, i64 8
  br label %.preheader385.loopexit.i

.preheader385.loopexit.i:                         ; preds = %.preheader385.loopexit.i.unr-lcssa, %.lr.ph1092.i.epil.preheader
  %.lcssa1813 = phi <4 x float> [ %i.bst, %.preheader385.loopexit.i.unr-lcssa ], [ %i.bre, %.lr.ph1092.i.epil.preheader ]
  %.lcssa1812 = phi <4 x float> [ %i.bsw, %.preheader385.loopexit.i.unr-lcssa ], [ %i.brh, %.lr.ph1092.i.epil.preheader ]
  %.lcssa1811 = phi ptr [ %i.bsx, %.preheader385.loopexit.i.unr-lcssa ], [ %i.bri, %.lr.ph1092.i.epil.preheader ]
  %i.brj = getelementptr i8, ptr %.617101108.i, i64 %i.ams
  %scevgep1789.i = getelementptr i8, ptr %i.brj, i64 16
  br label %.preheader385.i

.preheader385.i:                                  ; preds = %.preheader385.loopexit.i, %bb.ak
  %.1364.lcssa.i = phi <4 x float> [ %.0363.i, %bb.ak ], [ %.lcssa1812, %.preheader385.loopexit.i ] ; 3 uses
  %.1361.lcssa.i = phi <4 x float> [ %.0360.i, %bb.ak ], [ %.lcssa1813, %.preheader385.loopexit.i ] ; 3 uses
  %.71711.lcssa.i = phi ptr [ %.617101108.i, %bb.ak ], [ %scevgep1789.i, %.preheader385.loopexit.i ] ; 4 uses
  %.01659.lcssa.i = phi ptr [ %.31182.i, %bb.ak ], [ %.lcssa1811, %.preheader385.loopexit.i ] ; 3 uses
  %.01657.lcssa.i = phi i32 [ 0, %bb.ak ], [ %i.amn, %.preheader385.loopexit.i ] ; 5 uses
  %i.brk = icmp slt i32 %.01657.lcssa.i, %8
  br i1 %i.brk, label %.lr.ph1103.i.preheader, label %._crit_edge1104.i

.lr.ph1103.i.preheader:                           ; preds = %.preheader385.i
  %i.brl = sub i32 %8, %.01657.lcssa.i
  %.neg2250 = add i32 %.01657.lcssa.i, 1
  %xtraiter2206 = and i32 %i.brl, 1
  %lcmp.mod2207.not = icmp eq i32 %xtraiter2206, 0
  br i1 %lcmp.mod2207.not, label %.lr.ph1103.i.prol.loopexit, label %.lr.ph1103.i.prol

.lr.ph1103.i.prol:                                ; preds = %.lr.ph1103.i.preheader
  %i.brm = load float, ptr %.01659.lcssa.i, align 1, !tbaa !17
  %i.brn = insertelement <4 x float> poison, float %i.brm, i64 0
  %i.bro = bitcast <4 x float> %i.brn to <8 x i16>
  %36 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bro, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.brp = bitcast <8 x i16> %36 to <4 x float>   ; 2 uses
  %i.brq = load i64, ptr %.71711.lcssa.i, align 1, !tbaa !17
  %i.brr = insertelement <2 x i64> poison, i64 %i.brq, i64 0
  %i.brs = bitcast <2 x i64> %i.brr to <8 x i16>
  %37 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.brt = bitcast <8 x i16> %37 to <4 x float>   ; 2 uses
  %i.bru = shufflevector <4 x float> %i.brt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.brv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brp, <4 x float> nofpclass(nan inf) %i.brt, <4 x float> nofpclass(nan inf) %.1361.lcssa.i) ; 2 uses
  %i.brw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.brp, <4 x float> nofpclass(nan inf) %i.bru, <4 x float> nofpclass(nan inf) %.1364.lcssa.i) ; 2 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %.01659.lcssa.i, i64 4
  %i.bry = getelementptr inbounds nuw i8, ptr %.71711.lcssa.i, i64 8 ; 2 uses
  %i.brz = add nuw nsw i32 %.01657.lcssa.i, 1
  br label %.lr.ph1103.i.prol.loopexit

.lr.ph1103.i.prol.loopexit:                       ; preds = %.lr.ph1103.i.prol, %.lr.ph1103.i.preheader
  %.lcssa1816.unr = phi <4 x float> [ poison, %.lr.ph1103.i.preheader ], [ %i.brv, %.lr.ph1103.i.prol ]
  %.lcssa1815.unr = phi <4 x float> [ poison, %.lr.ph1103.i.preheader ], [ %i.brw, %.lr.ph1103.i.prol ]
  %.lcssa1814.unr = phi ptr [ poison, %.lr.ph1103.i.preheader ], [ %i.bry, %.lr.ph1103.i.prol ]
  %.116581102.i.unr = phi i32 [ %.01657.lcssa.i, %.lr.ph1103.i.preheader ], [ %i.brz, %.lr.ph1103.i.prol ]
  %.116601101.i.unr = phi ptr [ %.01659.lcssa.i, %.lr.ph1103.i.preheader ], [ %i.brx, %.lr.ph1103.i.prol ]
  %.817121100.i.unr = phi ptr [ %.71711.lcssa.i, %.lr.ph1103.i.preheader ], [ %i.bry, %.lr.ph1103.i.prol ]
  %.23621099.i.unr = phi <4 x float> [ %.1361.lcssa.i, %.lr.ph1103.i.preheader ], [ %i.brv, %.lr.ph1103.i.prol ]
  %.23651098.i.unr = phi <4 x float> [ %.1364.lcssa.i, %.lr.ph1103.i.preheader ], [ %i.brw, %.lr.ph1103.i.prol ]
  %i.bsa = icmp eq i32 %8, %.neg2250
  br i1 %i.bsa, label %._crit_edge1104.i, label %.lr.ph1103.i

.lr.ph1092.i:                                     ; preds = %.lr.ph1092.i.preheader, %.lr.ph1092.i
  %.016591089.i = phi ptr [ %i.bsx, %.lr.ph1092.i ], [ %.31182.i, %.lr.ph1092.i.preheader ] ; 3 uses
  %.717111088.i = phi ptr [ %i.bsy, %.lr.ph1092.i ], [ %.617101108.i, %.lr.ph1092.i.preheader ] ; 3 uses
  %.13611087.i = phi <4 x float> [ %i.bst, %.lr.ph1092.i ], [ %.0360.i, %.lr.ph1092.i.preheader ]
  %.13641086.i = phi <4 x float> [ %i.bsw, %.lr.ph1092.i ], [ %.0363.i, %.lr.ph1092.i.preheader ]
  %niter2205 = phi i32 [ %niter2205.next.1, %.lr.ph1092.i ], [ 0, %.lr.ph1092.i.preheader ]
  %i.bsb = load double, ptr %.016591089.i, align 1, !tbaa !17
  %i.bsc = insertelement <2 x double> poison, double %i.bsb, i64 0
  %i.bsd = load <2 x i64>, ptr %.717111088.i, align 1, !tbaa !17 ; 2 uses
  %i.bse = bitcast <2 x double> %i.bsc to <8 x bfloat>
  %i.bsf = shufflevector <8 x bfloat> %i.bse, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bsg = bitcast <2 x i64> %i.bsd to <8 x bfloat>
  %i.bsh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13611087.i, <8 x bfloat> nofpclass(nan inf) %i.bsf, <8 x bfloat> nofpclass(nan inf) %i.bsg)
  %i.bsi = bitcast <2 x i64> %i.bsd to <8 x bfloat>
  %i.bsj = shufflevector <8 x bfloat> %i.bsi, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.bsk = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13641086.i, <8 x bfloat> nofpclass(nan inf) %i.bsf, <8 x bfloat> nofpclass(nan inf) %i.bsj)
  %i.bsl = getelementptr inbounds nuw i8, ptr %.016591089.i, i64 8
  %i.bsm = getelementptr inbounds nuw i8, ptr %.717111088.i, i64 16
  %i.bsn = load double, ptr %i.bsl, align 1, !tbaa !17
  %i.bso = insertelement <2 x double> poison, double %i.bsn, i64 0
  %i.bsp = load <2 x i64>, ptr %i.bsm, align 1, !tbaa !17 ; 2 uses
  %i.bsq = bitcast <2 x double> %i.bso to <8 x bfloat>
  %i.bsr = shufflevector <8 x bfloat> %i.bsq, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bss = bitcast <2 x i64> %i.bsp to <8 x bfloat>
  %i.bst = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bsh, <8 x bfloat> nofpclass(nan inf) %i.bsr, <8 x bfloat> nofpclass(nan inf) %i.bss) ; 3 uses
  %i.bsu = bitcast <2 x i64> %i.bsp to <8 x bfloat>
  %i.bsv = shufflevector <8 x bfloat> %i.bsu, <8 x bfloat> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1>
  %i.bsw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.bsk, <8 x bfloat> nofpclass(nan inf) %i.bsr, <8 x bfloat> nofpclass(nan inf) %i.bsv) ; 3 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %.016591089.i, i64 16 ; 3 uses
  %i.bsy = getelementptr inbounds nuw i8, ptr %.717111088.i, i64 32 ; 2 uses
  %niter2205.next.1 = add nuw nsw i32 %niter2205, 2 ; 2 uses
  %niter2205.ncmp.1.not = icmp eq i32 %niter2205.next.1, %unroll_iter2204
  br i1 %niter2205.ncmp.1.not, label %.preheader385.loopexit.i.unr-lcssa, label %.lr.ph1092.i, !llvm.loop !395

.lr.ph1103.i:                                     ; preds = %.lr.ph1103.i.prol.loopexit, %.lr.ph1103.i
  %.116581102.i = phi i32 [ %i.btz, %.lr.ph1103.i ], [ %.116581102.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %.116601101.i = phi ptr [ %i.btx, %.lr.ph1103.i ], [ %.116601101.i.unr, %.lr.ph1103.i.prol.loopexit ] ; 3 uses
  %.817121100.i = phi ptr [ %i.bty, %.lr.ph1103.i ], [ %.817121100.i.unr, %.lr.ph1103.i.prol.loopexit ] ; 3 uses
  %.23621099.i = phi <4 x float> [ %i.btv, %.lr.ph1103.i ], [ %.23621099.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %.23651098.i = phi <4 x float> [ %i.btw, %.lr.ph1103.i ], [ %.23651098.i.unr, %.lr.ph1103.i.prol.loopexit ]
  %i.bsz = load float, ptr %.116601101.i, align 1, !tbaa !17
  %i.bta = insertelement <4 x float> poison, float %i.bsz, i64 0
  %i.btb = bitcast <4 x float> %i.bta to <8 x i16>
  %38 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.btc = bitcast <8 x i16> %38 to <4 x float>   ; 2 uses
  %i.btd = load i64, ptr %.817121100.i, align 1, !tbaa !17
  %i.bte = insertelement <2 x i64> poison, i64 %i.btd, i64 0
  %i.btf = bitcast <2 x i64> %i.bte to <8 x i16>
  %39 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.btg = bitcast <8 x i16> %39 to <4 x float>   ; 2 uses
  %i.bth = shufflevector <4 x float> %i.btg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.bti = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btc, <4 x float> nofpclass(nan inf) %i.btg, <4 x float> nofpclass(nan inf) %.23621099.i)
  %i.btj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btc, <4 x float> nofpclass(nan inf) %i.bth, <4 x float> nofpclass(nan inf) %.23651098.i)
  %i.btk = getelementptr inbounds nuw i8, ptr %.116601101.i, i64 4
  %i.btl = getelementptr inbounds nuw i8, ptr %.817121100.i, i64 8
  %i.btm = load float, ptr %i.btk, align 1, !tbaa !17
  %i.btn = insertelement <4 x float> poison, float %i.btm, i64 0
  %i.bto = bitcast <4 x float> %i.btn to <8 x i16>
  %40 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bto, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 8, i32 3, i32 9>
  %i.btp = bitcast <8 x i16> %40 to <4 x float>   ; 2 uses
  %i.btq = load i64, ptr %i.btl, align 1, !tbaa !17
  %i.btr = insertelement <2 x i64> poison, i64 %i.btq, i64 0
  %i.bts = bitcast <2 x i64> %i.btr to <8 x i16>
  %41 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bts, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.btt = bitcast <8 x i16> %41 to <4 x float>   ; 2 uses
  %i.btu = shufflevector <4 x float> %i.btt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.btv = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btp, <4 x float> nofpclass(nan inf) %i.btt, <4 x float> nofpclass(nan inf) %i.bti) ; 2 uses
  %i.btw = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.btp, <4 x float> nofpclass(nan inf) %i.btu, <4 x float> nofpclass(nan inf) %i.btj) ; 2 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %.116601101.i, i64 8
  %i.bty = getelementptr inbounds nuw i8, ptr %.817121100.i, i64 16 ; 2 uses
  %i.btz = add nuw nsw i32 %.116581102.i, 2       ; 2 uses
  %exitcond1790.not.i.1 = icmp eq i32 %i.btz, %8
  br i1 %exitcond1790.not.i.1, label %._crit_edge1104.i, label %.lr.ph1103.i, !llvm.loop !396

._crit_edge1104.i:                                ; preds = %.lr.ph1103.i.prol.loopexit, %.lr.ph1103.i, %.preheader385.i
  %.2365.lcssa.i = phi <4 x float> [ %.1364.lcssa.i, %.preheader385.i ], [ %.lcssa1815.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.btw, %.lr.ph1103.i ]
  %.2362.lcssa.i = phi <4 x float> [ %.1361.lcssa.i, %.preheader385.i ], [ %.lcssa1816.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.btv, %.lr.ph1103.i ]
  %.81712.lcssa.i = phi ptr [ %.71711.lcssa.i, %.preheader385.i ], [ %.lcssa1814.unr, %.lr.ph1103.i.prol.loopexit ], [ %i.bty, %.lr.ph1103.i ] ; 2 uses
  store <4 x float> %.2362.lcssa.i, ptr %.211110.i, align 16, !tbaa !17
  %i.bua = getelementptr inbounds nuw i8, ptr %.211110.i, i64 16
  store <4 x float> %.2365.lcssa.i, ptr %i.bua, align 16, !tbaa !17
  %i.bub = getelementptr inbounds nuw i8, ptr %.211110.i, i64 32 ; 2 uses
  %i.buc = add nuw nsw i32 %.217011109.i, 4       ; 3 uses
  %i.bud = or disjoint i32 %i.buc, 3
  %i.bue = icmp slt i32 %i.bud, %6
  br i1 %i.bue, label %.lr.ph1111.i, label %.preheader389.i, !llvm.loop !397

.preheader388.i:                                  ; preds = %._crit_edge1139.i, %.preheader389.i
  %.91713.lcssa.i = phi ptr [ %.61710.lcssa.i, %.preheader389.i ], [ %.111715.lcssa.i, %._crit_edge1139.i ]
  %.31702.lcssa.i = phi i32 [ %.21701.lcssa.i, %.preheader389.i ], [ %i.cgv, %._crit_edge1139.i ] ; 2 uses
  %.22.lcssa.i = phi ptr [ %.21.lcssa.i, %.preheader389.i ], [ %i.cgu, %._crit_edge1139.i ] ; 2 uses
  %i.buf = icmp slt i32 %.31702.lcssa.i, %6
  br i1 %i.buf, label %.lr.ph1177.i.preheader, label %._crit_edge1178.i

.lr.ph1177.i.preheader:                           ; preds = %.preheader388.i
  %i.bug = getelementptr i8, ptr %.31182.i, i64 %i.anu
  %i.buh = getelementptr i8, ptr %.31182.i, i64 %i.any
  br label %.lr.ph1177.i

.lr.ph1148.i:                                     ; preds = %.lr.ph1148.i.preheader, %._crit_edge1139.i
  %.221147.i = phi ptr [ %i.cgu, %._crit_edge1139.i ], [ %.21.lcssa.i, %.lr.ph1148.i.preheader ] ; 5 uses
  %.317021146.i = phi i32 [ %i.cgv, %._crit_edge1139.i ], [ %.21701.lcssa.i, %.lr.ph1148.i.preheader ]
  %.917131145.i = phi ptr [ %.111715.lcssa.i, %._crit_edge1139.i ], [ %.61710.lcssa.i, %.lr.ph1148.i.preheader ] ; 8 uses
  br i1 %.not1796.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph1148.i
  %i.bui = load <4 x float>, ptr %.221147.i, align 4, !tbaa !444
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph1148.i
  %i.buj = phi <4 x float> [ %i.bui, %bb.al ], [ zeroinitializer, %.lr.ph1148.i ] ; 7 uses
  %i.buk = shufflevector <4 x float> %i.buj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0> ; 2 uses
  br i1 %i.ami, label %iter.check1366, label %.preheader384.i

iter.check1366:                                   ; preds = %bb.am
  br i1 %min.iters.check1320, label %.lr.ph1123.i.preheader, label %vector.main.loop.iter.check1321

vector.main.loop.iter.check1321:                  ; preds = %iter.check1366
  %i.bul = extractelement <4 x float> %i.buj, i64 0
  %i.bum = extractelement <4 x float> %i.buj, i64 1
  %i.bun = extractelement <4 x float> %i.buj, i64 2
  %i.buo = extractelement <4 x float> %i.buj, i64 3
  br i1 %min.iters.check1322, label %vec.epilog.ph1370, label %vector.ph1323

vector.ph1323:                                    ; preds = %vector.main.loop.iter.check1321
  %i.bup = getelementptr i8, ptr %.917131145.i, i64 %i.ann
  %i.buq = shufflevector <4 x float> %i.buj, <4 x float> poison, <16 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bur = shufflevector <4 x float> %i.buj, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %42 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.bur, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %43 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.bur, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bus = shufflevector <16 x float> %i.buq, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.but = shufflevector <16 x float> %i.bur, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.ph1323, %vector.body1325
  %index1326 = phi i64 [ 0, %vector.ph1323 ], [ %index.next1359, %vector.body1325 ] ; 2 uses
  %vec.phi1327 = phi <16 x float> [ %42, %vector.ph1323 ], [ %i.bxw, %vector.body1325 ]
  %vec.phi1328 = phi <16 x float> [ zeroinitializer, %vector.ph1323 ], [ %i.bxx, %vector.body1325 ]
  %vec.phi1329 = phi <16 x float> [ %43, %vector.ph1323 ], [ %i.bxo, %vector.body1325 ]
  %vec.phi1330 = phi <16 x float> [ zeroinitializer, %vector.ph1323 ], [ %i.bxp, %vector.body1325 ]
  %vec.phi1331 = phi <16 x float> [ %i.bus, %vector.ph1323 ], [ %i.bxg, %vector.body1325 ]
  %vec.phi1332 = phi <16 x float> [ zeroinitializer, %vector.ph1323 ], [ %i.bxh, %vector.body1325 ]
  %vec.phi1333 = phi <16 x float> [ %i.but, %vector.ph1323 ], [ %i.bwy, %vector.body1325 ]
  %vec.phi1334 = phi <16 x float> [ zeroinitializer, %vector.ph1323 ], [ %i.bwz, %vector.body1325 ]
  %i.buu = shl i64 %index1326, 3                  ; 3 uses
  %i.buv = or disjoint i64 %i.buu, 128            ; 2 uses
  %next.gep1335 = getelementptr i8, ptr %.31182.i, i64 %i.buu
  %next.gep1336 = getelementptr i8, ptr %.31182.i, i64 %i.buv
  %next.gep1337 = getelementptr i8, ptr %.917131145.i, i64 %i.buu
  %next.gep1338 = getelementptr i8, ptr %.917131145.i, i64 %i.buv
  %wide.vec1339 = load <64 x i16>, ptr %next.gep1335, align 2, !tbaa !24 ; 4 uses
  %strided.vec1340 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1341 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1342 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1343 = shufflevector <64 x i16> %wide.vec1339, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1344 = load <64 x i16>, ptr %next.gep1336, align 2, !tbaa !24 ; 4 uses
  %strided.vec1345 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1346 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1347 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1348 = shufflevector <64 x i16> %wide.vec1344, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.buw = zext <16 x i16> %strided.vec1340 to <16 x i32>
  %i.bux = zext <16 x i16> %strided.vec1345 to <16 x i32>
  %i.buy = shl nuw <16 x i32> %i.buw, splat (i32 16)
  %i.buz = shl nuw <16 x i32> %i.bux, splat (i32 16)
  %i.bva = bitcast <16 x i32> %i.buy to <16 x float> ; 2 uses
  %i.bvb = bitcast <16 x i32> %i.buz to <16 x float> ; 2 uses
  %i.bvc = zext <16 x i16> %strided.vec1341 to <16 x i32>
  %i.bvd = zext <16 x i16> %strided.vec1346 to <16 x i32>
  %i.bve = shl nuw <16 x i32> %i.bvc, splat (i32 16)
  %i.bvf = shl nuw <16 x i32> %i.bvd, splat (i32 16)
  %i.bvg = bitcast <16 x i32> %i.bve to <16 x float> ; 2 uses
  %i.bvh = bitcast <16 x i32> %i.bvf to <16 x float> ; 2 uses
  %i.bvi = zext <16 x i16> %strided.vec1342 to <16 x i32>
  %i.bvj = zext <16 x i16> %strided.vec1347 to <16 x i32>
  %i.bvk = shl nuw <16 x i32> %i.bvi, splat (i32 16)
  %i.bvl = shl nuw <16 x i32> %i.bvj, splat (i32 16)
  %i.bvm = bitcast <16 x i32> %i.bvk to <16 x float> ; 2 uses
  %i.bvn = bitcast <16 x i32> %i.bvl to <16 x float> ; 2 uses
  %i.bvo = zext <16 x i16> %strided.vec1343 to <16 x i32>
  %i.bvp = zext <16 x i16> %strided.vec1348 to <16 x i32>
  %i.bvq = shl nuw <16 x i32> %i.bvo, splat (i32 16)
  %i.bvr = shl nuw <16 x i32> %i.bvp, splat (i32 16)
  %i.bvs = bitcast <16 x i32> %i.bvq to <16 x float> ; 2 uses
  %i.bvt = bitcast <16 x i32> %i.bvr to <16 x float> ; 2 uses
  %wide.vec1349 = load <64 x i16>, ptr %next.gep1337, align 2, !tbaa !24 ; 4 uses
  %strided.vec1350 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1351 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1352 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1353 = shufflevector <64 x i16> %wide.vec1349, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1354 = load <64 x i16>, ptr %next.gep1338, align 2, !tbaa !24 ; 4 uses
  %strided.vec1355 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1356 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1357 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1358 = shufflevector <64 x i16> %wide.vec1354, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.bvu = zext <16 x i16> %strided.vec1350 to <16 x i32>
  %i.bvv = zext <16 x i16> %strided.vec1355 to <16 x i32>
  %i.bvw = shl nuw <16 x i32> %i.bvu, splat (i32 16)
  %i.bvx = shl nuw <16 x i32> %i.bvv, splat (i32 16)
  %i.bvy = bitcast <16 x i32> %i.bvw to <16 x float> ; 2 uses
  %i.bvz = bitcast <16 x i32> %i.bvx to <16 x float> ; 2 uses
  %i.bwa = zext <16 x i16> %strided.vec1351 to <16 x i32>
  %i.bwb = zext <16 x i16> %strided.vec1356 to <16 x i32>
  %i.bwc = shl nuw <16 x i32> %i.bwa, splat (i32 16)
  %i.bwd = shl nuw <16 x i32> %i.bwb, splat (i32 16)
  %i.bwe = bitcast <16 x i32> %i.bwc to <16 x float> ; 2 uses
  %i.bwf = bitcast <16 x i32> %i.bwd to <16 x float> ; 2 uses
  %i.bwg = zext <16 x i16> %strided.vec1352 to <16 x i32>
  %i.bwh = zext <16 x i16> %strided.vec1357 to <16 x i32>
  %i.bwi = shl nuw <16 x i32> %i.bwg, splat (i32 16)
  %i.bwj = shl nuw <16 x i32> %i.bwh, splat (i32 16)
  %i.bwk = bitcast <16 x i32> %i.bwi to <16 x float> ; 2 uses
  %i.bwl = bitcast <16 x i32> %i.bwj to <16 x float> ; 2 uses
  %i.bwm = zext <16 x i16> %strided.vec1353 to <16 x i32>
  %i.bwn = zext <16 x i16> %strided.vec1358 to <16 x i32>
  %i.bwo = shl nuw <16 x i32> %i.bwm, splat (i32 16)
  %i.bwp = shl nuw <16 x i32> %i.bwn, splat (i32 16)
  %i.bwq = bitcast <16 x i32> %i.bwo to <16 x float> ; 2 uses
  %i.bwr = bitcast <16 x i32> %i.bwp to <16 x float> ; 2 uses
  %i.bws = fmul fast <16 x float> %i.bvy, %i.bva
  %i.bwt = fmul fast <16 x float> %i.bvz, %i.bvb
  %i.bwu = fmul fast <16 x float> %i.bwe, %i.bvg
  %i.bwv = fmul fast <16 x float> %i.bwf, %i.bvh
  %i.bww = fadd fast <16 x float> %vec.phi1333, %i.bws
  %i.bwx = fadd fast <16 x float> %vec.phi1334, %i.bwt
  %i.bwy = fadd fast <16 x float> %i.bww, %i.bwu  ; 2 uses
  %i.bwz = fadd fast <16 x float> %i.bwx, %i.bwv  ; 2 uses
  %i.bxa = fmul fast <16 x float> %i.bwk, %i.bva
  %i.bxb = fmul fast <16 x float> %i.bwl, %i.bvb
  %i.bxc = fmul fast <16 x float> %i.bwq, %i.bvg
  %i.bxd = fmul fast <16 x float> %i.bwr, %i.bvh
  %i.bxe = fadd fast <16 x float> %vec.phi1331, %i.bxa
  %i.bxf = fadd fast <16 x float> %vec.phi1332, %i.bxb
  %i.bxg = fadd fast <16 x float> %i.bxe, %i.bxc  ; 2 uses
  %i.bxh = fadd fast <16 x float> %i.bxf, %i.bxd  ; 2 uses
  %i.bxi = fmul fast <16 x float> %i.bvy, %i.bvm
  %i.bxj = fmul fast <16 x float> %i.bvz, %i.bvn
  %i.bxk = fmul fast <16 x float> %i.bwe, %i.bvs
  %i.bxl = fmul fast <16 x float> %i.bwf, %i.bvt
  %i.bxm = fadd fast <16 x float> %vec.phi1329, %i.bxi
  %i.bxn = fadd fast <16 x float> %vec.phi1330, %i.bxj
  %i.bxo = fadd fast <16 x float> %i.bxm, %i.bxk  ; 2 uses
  %i.bxp = fadd fast <16 x float> %i.bxn, %i.bxl  ; 2 uses
  %i.bxq = fmul fast <16 x float> %i.bwk, %i.bvm
  %i.bxr = fmul fast <16 x float> %i.bwl, %i.bvn
  %i.bxs = fmul fast <16 x float> %i.bwq, %i.bvs
  %i.bxt = fmul fast <16 x float> %i.bwr, %i.bvt
  %i.bxu = fadd fast <16 x float> %vec.phi1327, %i.bxq
  %i.bxv = fadd fast <16 x float> %vec.phi1328, %i.bxr
  %i.bxw = fadd fast <16 x float> %i.bxu, %i.bxs  ; 2 uses
  %i.bxx = fadd fast <16 x float> %i.bxv, %i.bxt  ; 2 uses
  %index.next1359 = add nuw i64 %index1326, 32    ; 2 uses
  %i.bxy = icmp eq i64 %index.next1359, %n.vec1324
  br i1 %i.bxy, label %middle.block1360, label %vector.body1325, !llvm.loop !398

middle.block1360:                                 ; preds = %vector.body1325
  %bin.rdx1361 = fadd fast <16 x float> %i.bxx, %i.bxw
  %i.bxz = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1361) ; 2 uses
  %bin.rdx1362 = fadd fast <16 x float> %i.bxp, %i.bxo
  %i.bya = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1362) ; 2 uses
  %bin.rdx1363 = fadd fast <16 x float> %i.bxh, %i.bxg
  %i.byb = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1363) ; 2 uses
  %bin.rdx1364 = fadd fast <16 x float> %i.bwz, %i.bwy
  %i.byc = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1364) ; 2 uses
  %i.byd = insertelement <4 x float> poison, float %i.byb, i64 0
  %i.bye = insertelement <4 x float> %i.byd, float %i.bya, i64 1
  %i.byf = insertelement <4 x float> %i.bye, float %i.bxz, i64 2
  %i.byg = insertelement <4 x float> %i.byf, float %i.byc, i64 3 ; 2 uses
  br i1 %cmp.n1365, label %.preheader384.loopexit.i, label %vec.epilog.iter.check1367

vec.epilog.iter.check1367:                        ; preds = %middle.block1360
  br i1 %min.epilog.iters.check1369, label %.lr.ph1123.i.preheader, label %vec.epilog.ph1370, !prof !22

vec.epilog.ph1370:                                ; preds = %vector.main.loop.iter.check1321, %vec.epilog.iter.check1367
  %vec.epilog.resume.val1371 = phi i64 [ %n.vec1324, %vec.epilog.iter.check1367 ], [ 0, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1372 = phi float [ %i.bxz, %vec.epilog.iter.check1367 ], [ %i.buo, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1373 = phi float [ %i.bya, %vec.epilog.iter.check1367 ], [ %i.bun, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1374 = phi float [ %i.byb, %vec.epilog.iter.check1367 ], [ %i.bum, %vector.main.loop.iter.check1321 ]
  %bc.merge.rdx1375 = phi float [ %i.byc, %vec.epilog.iter.check1367 ], [ %i.bul, %vector.main.loop.iter.check1321 ]
  %i.byh = getelementptr i8, ptr %.917131145.i, i64 %i.anq
  %i.byi = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1372, i64 0
  %i.byj = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1373, i64 0
  %i.byk = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1374, i64 0
  %i.byl = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1375, i64 0
  br label %vec.epilog.vector.body1377

vec.epilog.vector.body1377:                       ; preds = %vec.epilog.vector.body1377, %vec.epilog.ph1370
  %index1378 = phi i64 [ %vec.epilog.resume.val1371, %vec.epilog.ph1370 ], [ %index.next1395, %vec.epilog.vector.body1377 ] ; 2 uses
  %vec.phi1379 = phi <8 x float> [ %i.byi, %vec.epilog.ph1370 ], [ %i.caa, %vec.epilog.vector.body1377 ]
  %vec.phi1380 = phi <8 x float> [ %i.byj, %vec.epilog.ph1370 ], [ %i.bzw, %vec.epilog.vector.body1377 ]
  %vec.phi1381 = phi <8 x float> [ %i.byk, %vec.epilog.ph1370 ], [ %i.bzs, %vec.epilog.vector.body1377 ]
  %vec.phi1382 = phi <8 x float> [ %i.byl, %vec.epilog.ph1370 ], [ %i.bzo, %vec.epilog.vector.body1377 ]
  %i.bym = shl i64 %index1378, 3                  ; 2 uses
  %next.gep1383 = getelementptr i8, ptr %.31182.i, i64 %i.bym
  %next.gep1384 = getelementptr i8, ptr %.917131145.i, i64 %i.bym
  %wide.vec1385 = load <32 x i16>, ptr %next.gep1383, align 2, !tbaa !24 ; 4 uses
  %strided.vec1386 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1387 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1388 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1389 = shufflevector <32 x i16> %wide.vec1385, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.byn = zext <8 x i16> %strided.vec1386 to <8 x i32>
  %i.byo = shl nuw <8 x i32> %i.byn, splat (i32 16)
  %i.byp = bitcast <8 x i32> %i.byo to <8 x float> ; 2 uses
  %i.byq = zext <8 x i16> %strided.vec1387 to <8 x i32>
  %i.byr = shl nuw <8 x i32> %i.byq, splat (i32 16)
  %i.bys = bitcast <8 x i32> %i.byr to <8 x float> ; 2 uses
  %i.byt = zext <8 x i16> %strided.vec1388 to <8 x i32>
  %i.byu = shl nuw <8 x i32> %i.byt, splat (i32 16)
  %i.byv = bitcast <8 x i32> %i.byu to <8 x float> ; 2 uses
  %i.byw = zext <8 x i16> %strided.vec1389 to <8 x i32>
  %i.byx = shl nuw <8 x i32> %i.byw, splat (i32 16)
  %i.byy = bitcast <8 x i32> %i.byx to <8 x float> ; 2 uses
  %wide.vec1390 = load <32 x i16>, ptr %next.gep1384, align 2, !tbaa !24 ; 4 uses
  %strided.vec1391 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1392 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1393 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1394 = shufflevector <32 x i16> %wide.vec1390, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.byz = zext <8 x i16> %strided.vec1391 to <8 x i32>
  %i.bza = shl nuw <8 x i32> %i.byz, splat (i32 16)
  %i.bzb = bitcast <8 x i32> %i.bza to <8 x float> ; 2 uses
  %i.bzc = zext <8 x i16> %strided.vec1392 to <8 x i32>
  %i.bzd = shl nuw <8 x i32> %i.bzc, splat (i32 16)
  %i.bze = bitcast <8 x i32> %i.bzd to <8 x float> ; 2 uses
  %i.bzf = zext <8 x i16> %strided.vec1393 to <8 x i32>
  %i.bzg = shl nuw <8 x i32> %i.bzf, splat (i32 16)
  %i.bzh = bitcast <8 x i32> %i.bzg to <8 x float> ; 2 uses
  %i.bzi = zext <8 x i16> %strided.vec1394 to <8 x i32>
  %i.bzj = shl nuw <8 x i32> %i.bzi, splat (i32 16)
  %i.bzk = bitcast <8 x i32> %i.bzj to <8 x float> ; 2 uses
  %i.bzl = fmul fast <8 x float> %i.bzb, %i.byp
  %i.bzm = fmul fast <8 x float> %i.bze, %i.bys
  %i.bzn = fadd fast <8 x float> %vec.phi1382, %i.bzl
  %i.bzo = fadd fast <8 x float> %i.bzn, %i.bzm   ; 2 uses
  %i.bzp = fmul fast <8 x float> %i.bzh, %i.byp
  %i.bzq = fmul fast <8 x float> %i.bzk, %i.bys
  %i.bzr = fadd fast <8 x float> %vec.phi1381, %i.bzp
  %i.bzs = fadd fast <8 x float> %i.bzr, %i.bzq   ; 2 uses
  %i.bzt = fmul fast <8 x float> %i.bzb, %i.byv
  %i.bzu = fmul fast <8 x float> %i.bze, %i.byy
  %i.bzv = fadd fast <8 x float> %vec.phi1380, %i.bzt
  %i.bzw = fadd fast <8 x float> %i.bzv, %i.bzu   ; 2 uses
  %i.bzx = fmul fast <8 x float> %i.bzh, %i.byv
  %i.bzy = fmul fast <8 x float> %i.bzk, %i.byy
  %i.bzz = fadd fast <8 x float> %vec.phi1379, %i.bzx
  %i.caa = fadd fast <8 x float> %i.bzz, %i.bzy   ; 2 uses
  %index.next1395 = add nuw i64 %index1378, 8     ; 2 uses
  %i.cab = icmp eq i64 %index.next1395, %n.vec1376
  br i1 %i.cab, label %vec.epilog.middle.block1396, label %vec.epilog.vector.body1377, !llvm.loop !399

vec.epilog.middle.block1396:                      ; preds = %vec.epilog.vector.body1377
  %i.cac = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.caa)
  %i.cad = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bzw)
  %i.cae = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bzs)
  %i.caf = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bzo)
  %i.cag = insertelement <4 x float> poison, float %i.cae, i64 0
  %i.cah = insertelement <4 x float> %i.cag, float %i.cad, i64 1
  %i.cai = insertelement <4 x float> %i.cah, float %i.cac, i64 2
  %i.caj = insertelement <4 x float> %i.cai, float %i.caf, i64 3 ; 2 uses
  br i1 %cmp.n1397, label %.preheader384.loopexit.i, label %.lr.ph1123.i.preheader

.lr.ph1123.i.preheader:                           ; preds = %iter.check1366, %vec.epilog.iter.check1367, %vec.epilog.middle.block1396
  %.016331121.i.ph = phi i32 [ 0, %iter.check1366 ], [ %i.anm, %vec.epilog.iter.check1367 ], [ %i.anp, %vec.epilog.middle.block1396 ]
  %.016351120.i.ph = phi ptr [ %.31182.i, %iter.check1366 ], [ %i.bqt, %vec.epilog.iter.check1367 ], [ %i.bqu, %vec.epilog.middle.block1396 ]
  %.1017141115.i.ph = phi ptr [ %.917131145.i, %iter.check1366 ], [ %i.bup, %vec.epilog.iter.check1367 ], [ %i.byh, %vec.epilog.middle.block1396 ]
  %.ph1795 = phi <4 x float> [ %i.buk, %iter.check1366 ], [ %i.byg, %vec.epilog.iter.check1367 ], [ %i.caj, %vec.epilog.middle.block1396 ]
  br label %.lr.ph1123.i

.preheader384.loopexit.i:                         ; preds = %.lr.ph1123.i, %vec.epilog.middle.block1396, %middle.block1360
  %i.cak = phi <4 x float> [ %i.caj, %vec.epilog.middle.block1396 ], [ %i.byg, %middle.block1360 ], [ %i.cfq, %.lr.ph1123.i ]
  %scevgep1791.i = getelementptr i8, ptr %.917131145.i, i64 %i.amu
  br label %.preheader384.i

.preheader384.i:                                  ; preds = %.preheader384.loopexit.i, %bb.am
  %.101714.lcssa.i = phi ptr [ %.917131145.i, %bb.am ], [ %scevgep1791.i, %.preheader384.loopexit.i ] ; 7 uses
  %.01635.lcssa.i = phi ptr [ %.31182.i, %bb.am ], [ %indvars.iv1794.i, %.preheader384.loopexit.i ] ; 6 uses
  %.01633.lcssa.i = phi i32 [ 0, %bb.am ], [ %i.amn, %.preheader384.loopexit.i ] ; 5 uses
  %i.cal = phi <4 x float> [ %i.buk, %bb.am ], [ %i.cak, %.preheader384.loopexit.i ] ; 7 uses
  %i.cam = icmp slt i32 %.01633.lcssa.i, %8
  %i.can = shufflevector <4 x float> %i.cal, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cao = extractelement <4 x float> %i.cal, i64 2 ; 2 uses
  %i.cap = extractelement <4 x float> %i.cal, i64 3 ; 2 uses
  br i1 %i.cam, label %iter.check1285, label %._crit_edge1139.i

iter.check1285:                                   ; preds = %.preheader384.i
  %i.caq = xor i32 %.01633.lcssa.i, -1
  %i.car = add i32 %8, %i.caq                     ; 3 uses
  %i.cas = zext i32 %i.car to i64
  %i.cat = add nuw nsw i64 %i.cas, 1              ; 5 uses
  %min.iters.check1247 = icmp ult i32 %i.car, 3
  %i.cau = extractelement <4 x float> %i.cal, i64 0
  %i.cav = extractelement <4 x float> %i.cal, i64 1
  br i1 %min.iters.check1247, label %.lr.ph1138.i.preheader, label %vector.main.loop.iter.check1248

vector.main.loop.iter.check1248:                  ; preds = %iter.check1285
  %min.iters.check1249 = icmp ult i32 %i.car, 31
  br i1 %min.iters.check1249, label %vec.epilog.ph1289, label %vector.ph1250

vector.ph1250:                                    ; preds = %vector.main.loop.iter.check1248
  %i.caw = and i64 %i.cat, 28
  %n.vec1251 = and i64 %i.cat, 8589934560         ; 5 uses
  %i.cax = trunc i64 %n.vec1251 to i32
  %i.cay = add i32 %.01633.lcssa.i, %i.cax
  %i.caz = shl nuw nsw i64 %n.vec1251, 2          ; 2 uses
  %i.cba = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.caz
  %i.cbb = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.caz ; 2 uses
  %i.cbc = shufflevector <4 x float> %i.cal, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %44 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.cbc, <16 x i32> <i32 18, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %45 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.cbc, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cbd = shufflevector <16 x float> %i.cbc, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %46 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.cbc, <16 x i32> <i32 19, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.ph1250, %vector.body1252
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1278, %vector.body1252 ] ; 2 uses
  %vec.phi1254 = phi <16 x float> [ %44, %vector.ph1250 ], [ %i.ccw, %vector.body1252 ]
  %vec.phi1255 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.ccx, %vector.body1252 ]
  %vec.phi1256 = phi <16 x float> [ %45, %vector.ph1250 ], [ %i.ccs, %vector.body1252 ]
  %vec.phi1257 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.cct, %vector.body1252 ]
  %vec.phi1258 = phi <16 x float> [ %i.cbd, %vector.ph1250 ], [ %i.cco, %vector.body1252 ]
  %vec.phi1259 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.ccp, %vector.body1252 ]
  %vec.phi1260 = phi <16 x float> [ %46, %vector.ph1250 ], [ %i.cck, %vector.body1252 ]
  %vec.phi1261 = phi <16 x float> [ zeroinitializer, %vector.ph1250 ], [ %i.ccl, %vector.body1252 ]
  %i.cbe = shl i64 %index1253, 2                  ; 3 uses
  %i.cbf = or disjoint i64 %i.cbe, 64             ; 2 uses
  %next.gep1262 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cbe
  %next.gep1263 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cbf
  %next.gep1264 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cbe
  %next.gep1265 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cbf
  %wide.vec1266 = load <32 x i16>, ptr %next.gep1262, align 2, !tbaa !24
  %i.cbg = freeze <32 x i16> %wide.vec1266        ; 2 uses
  %i.cbh = bitcast <32 x i16> %i.cbg to <16 x i32>
  %i.cbi = bitcast <32 x i16> %i.cbg to <16 x i32>
  %i.cbj = and <16 x i32> %i.cbi, splat (i32 -65536)
  %wide.vec1269 = load <32 x i16>, ptr %next.gep1263, align 2, !tbaa !24
  %i.cbk = freeze <32 x i16> %wide.vec1269        ; 2 uses
  %i.cbl = bitcast <32 x i16> %i.cbk to <16 x i32>
  %i.cbm = bitcast <32 x i16> %i.cbk to <16 x i32>
  %i.cbn = and <16 x i32> %i.cbm, splat (i32 -65536)
  %i.cbo = shl <16 x i32> %i.cbh, splat (i32 16)
  %i.cbp = shl <16 x i32> %i.cbl, splat (i32 16)
  %i.cbq = bitcast <16 x i32> %i.cbo to <16 x float> ; 2 uses
  %i.cbr = bitcast <16 x i32> %i.cbp to <16 x float> ; 2 uses
  %i.cbs = bitcast <16 x i32> %i.cbj to <16 x float> ; 2 uses
  %i.cbt = bitcast <16 x i32> %i.cbn to <16 x float> ; 2 uses
  %wide.vec1272 = load <32 x i16>, ptr %next.gep1264, align 2, !tbaa !24
  %i.cbu = freeze <32 x i16> %wide.vec1272        ; 2 uses
  %i.cbv = bitcast <32 x i16> %i.cbu to <16 x i32>
  %i.cbw = bitcast <32 x i16> %i.cbu to <16 x i32>
  %i.cbx = and <16 x i32> %i.cbw, splat (i32 -65536)
  %wide.vec1275 = load <32 x i16>, ptr %next.gep1265, align 2, !tbaa !24
  %i.cby = freeze <32 x i16> %wide.vec1275        ; 2 uses
  %i.cbz = bitcast <32 x i16> %i.cby to <16 x i32>
  %i.cca = bitcast <32 x i16> %i.cby to <16 x i32>
  %i.ccb = and <16 x i32> %i.cca, splat (i32 -65536)
  %i.ccc = shl <16 x i32> %i.cbv, splat (i32 16)
  %i.ccd = shl <16 x i32> %i.cbz, splat (i32 16)
  %i.cce = bitcast <16 x i32> %i.ccc to <16 x float> ; 2 uses
  %i.ccf = bitcast <16 x i32> %i.ccd to <16 x float> ; 2 uses
  %i.ccg = bitcast <16 x i32> %i.cbx to <16 x float> ; 2 uses
  %i.cch = bitcast <16 x i32> %i.ccb to <16 x float> ; 2 uses
  %i.cci = fmul fast <16 x float> %i.cce, %i.cbq
  %i.ccj = fmul fast <16 x float> %i.ccf, %i.cbr
  %i.cck = fadd fast <16 x float> %i.cci, %vec.phi1260 ; 2 uses
  %i.ccl = fadd fast <16 x float> %i.ccj, %vec.phi1261 ; 2 uses
  %i.ccm = fmul fast <16 x float> %i.ccg, %i.cbq
  %i.ccn = fmul fast <16 x float> %i.cch, %i.cbr
  %i.cco = fadd fast <16 x float> %i.ccm, %vec.phi1258 ; 2 uses
  %i.ccp = fadd fast <16 x float> %i.ccn, %vec.phi1259 ; 2 uses
  %i.ccq = fmul fast <16 x float> %i.cce, %i.cbs
  %i.ccr = fmul fast <16 x float> %i.ccf, %i.cbt
  %i.ccs = fadd fast <16 x float> %i.ccq, %vec.phi1256 ; 2 uses
  %i.cct = fadd fast <16 x float> %i.ccr, %vec.phi1257 ; 2 uses
  %i.ccu = fmul fast <16 x float> %i.ccg, %i.cbs
  %i.ccv = fmul fast <16 x float> %i.cch, %i.cbt
  %i.ccw = fadd fast <16 x float> %i.ccu, %vec.phi1254 ; 2 uses
  %i.ccx = fadd fast <16 x float> %i.ccv, %vec.phi1255 ; 2 uses
  %index.next1278 = add nuw i64 %index1253, 32    ; 2 uses
  %i.ccy = icmp eq i64 %index.next1278, %n.vec1251
  br i1 %i.ccy, label %middle.block1279, label %vector.body1252, !llvm.loop !400

middle.block1279:                                 ; preds = %vector.body1252
  %bin.rdx1280 = fadd fast <16 x float> %i.ccx, %i.ccw
  %i.ccz = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1280) ; 3 uses
  %bin.rdx1281 = fadd fast <16 x float> %i.cct, %i.ccs
  %i.cda = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1281) ; 3 uses
  %bin.rdx1282 = fadd fast <16 x float> %i.ccp, %i.cco
  %i.cdb = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1282) ; 3 uses
  %bin.rdx1283 = fadd fast <16 x float> %i.ccl, %i.cck
  %i.cdc = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1283) ; 3 uses
  %cmp.n1284 = icmp eq i64 %i.cat, %n.vec1251
  %i.cdd = insertelement <2 x float> poison, float %i.cdb, i64 0
  %i.cde = insertelement <2 x float> %i.cdd, float %i.cda, i64 1
  br i1 %cmp.n1284, label %._crit_edge1139.i, label %vec.epilog.iter.check1286

vec.epilog.iter.check1286:                        ; preds = %middle.block1279
  %min.epilog.iters.check1288 = icmp eq i64 %i.caw, 0
  %i.cdf = insertelement <4 x float> poison, float %i.cdb, i64 0
  %i.cdg = insertelement <4 x float> %i.cdf, float %i.cda, i64 1
  %i.cdh = insertelement <4 x float> %i.cdg, float %i.ccz, i64 2
  %i.cdi = insertelement <4 x float> %i.cdh, float %i.cdc, i64 3
  br i1 %min.epilog.iters.check1288, label %.lr.ph1138.i.preheader, label %vec.epilog.ph1289, !prof !25

vec.epilog.ph1289:                                ; preds = %vector.main.loop.iter.check1248, %vec.epilog.iter.check1286
  %vec.epilog.resume.val1290 = phi i64 [ %n.vec1251, %vec.epilog.iter.check1286 ], [ 0, %vector.main.loop.iter.check1248 ]
  %i.cdj = phi <4 x float> [ %i.cdi, %vec.epilog.iter.check1286 ], [ %i.cal, %vector.main.loop.iter.check1248 ] ; 4 uses
  %n.vec1295 = and i64 %i.cat, 8589934588         ; 4 uses
  %i.cdk = trunc i64 %n.vec1295 to i32
  %i.cdl = add i32 %.01633.lcssa.i, %i.cdk
  %i.cdm = shl nuw nsw i64 %n.vec1295, 2          ; 2 uses
  %i.cdn = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cdm
  %i.cdo = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cdm ; 2 uses
  %47 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cdj, <4 x i32> <i32 6, i32 1, i32 2, i32 3>
  %48 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cdj, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.cdp = shufflevector <4 x float> %i.cdj, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %49 = shufflevector <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.cdj, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body1296

vec.epilog.vector.body1296:                       ; preds = %vec.epilog.vector.body1296, %vec.epilog.ph1289
  %index1297 = phi i64 [ %vec.epilog.resume.val1290, %vec.epilog.ph1289 ], [ %index.next1310, %vec.epilog.vector.body1296 ] ; 2 uses
  %vec.phi1298 = phi <4 x float> [ %47, %vec.epilog.ph1289 ], [ %i.cem, %vec.epilog.vector.body1296 ]
  %vec.phi1299 = phi <4 x float> [ %48, %vec.epilog.ph1289 ], [ %i.cek, %vec.epilog.vector.body1296 ]
  %vec.phi1300 = phi <4 x float> [ %i.cdp, %vec.epilog.ph1289 ], [ %i.cei, %vec.epilog.vector.body1296 ]
  %vec.phi1301 = phi <4 x float> [ %49, %vec.epilog.ph1289 ], [ %i.ceg, %vec.epilog.vector.body1296 ]
  %i.cdq = shl i64 %index1297, 2                  ; 2 uses
  %next.gep1302 = getelementptr i8, ptr %.01635.lcssa.i, i64 %i.cdq
  %next.gep1303 = getelementptr i8, ptr %.101714.lcssa.i, i64 %i.cdq
  %wide.vec1304 = load <8 x i16>, ptr %next.gep1302, align 2, !tbaa !24
  %i.cdr = freeze <8 x i16> %wide.vec1304         ; 2 uses
  %i.cds = bitcast <8 x i16> %i.cdr to <4 x i32>
  %i.cdt = bitcast <8 x i16> %i.cdr to <4 x i32>
  %i.cdu = and <4 x i32> %i.cdt, splat (i32 -65536)
  %i.cdv = shl <4 x i32> %i.cds, splat (i32 16)
  %i.cdw = bitcast <4 x i32> %i.cdv to <4 x float> ; 2 uses
  %i.cdx = bitcast <4 x i32> %i.cdu to <4 x float> ; 2 uses
  %wide.vec1307 = load <8 x i16>, ptr %next.gep1303, align 2, !tbaa !24
  %i.cdy = freeze <8 x i16> %wide.vec1307         ; 2 uses
  %i.cdz = bitcast <8 x i16> %i.cdy to <4 x i32>
  %i.cea = bitcast <8 x i16> %i.cdy to <4 x i32>
  %i.ceb = and <4 x i32> %i.cea, splat (i32 -65536)
  %i.cec = shl <4 x i32> %i.cdz, splat (i32 16)
  %i.ced = bitcast <4 x i32> %i.cec to <4 x float> ; 2 uses
  %i.cee = bitcast <4 x i32> %i.ceb to <4 x float> ; 2 uses
  %i.cef = fmul fast <4 x float> %i.ced, %i.cdw
  %i.ceg = fadd fast <4 x float> %i.cef, %vec.phi1301 ; 2 uses
  %i.ceh = fmul fast <4 x float> %i.cee, %i.cdw
  %i.cei = fadd fast <4 x float> %i.ceh, %vec.phi1300 ; 2 uses
  %i.cej = fmul fast <4 x float> %i.ced, %i.cdx
  %i.cek = fadd fast <4 x float> %i.cej, %vec.phi1299 ; 2 uses
  %i.cel = fmul fast <4 x float> %i.cee, %i.cdx
  %i.cem = fadd fast <4 x float> %i.cel, %vec.phi1298 ; 2 uses
  %index.next1310 = add nuw i64 %index1297, 4     ; 2 uses
  %i.cen = icmp eq i64 %index.next1310, %n.vec1295
  br i1 %i.cen, label %vec.epilog.middle.block1311, label %vec.epilog.vector.body1296, !llvm.loop !401

vec.epilog.middle.block1311:                      ; preds = %vec.epilog.vector.body1296
  %i.ceo = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cem) ; 2 uses
  %i.cep = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cek) ; 2 uses
  %i.ceq = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cei) ; 2 uses
  %i.cer = tail call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ceg) ; 2 uses
  %cmp.n1312 = icmp eq i64 %i.cat, %n.vec1295
  %i.ces = insertelement <2 x float> poison, float %i.ceq, i64 0
  %i.cet = insertelement <2 x float> %i.ces, float %i.cep, i64 1
  br i1 %cmp.n1312, label %._crit_edge1139.i, label %.lr.ph1138.i.preheader

.lr.ph1138.i.preheader:                           ; preds = %iter.check1285, %vec.epilog.iter.check1286, %vec.epilog.middle.block1311
  %.116341137.i.ph = phi i32 [ %.01633.lcssa.i, %iter.check1285 ], [ %i.cay, %vec.epilog.iter.check1286 ], [ %i.cdl, %vec.epilog.middle.block1311 ]
  %.116361136.i.ph = phi ptr [ %.01635.lcssa.i, %iter.check1285 ], [ %i.cba, %vec.epilog.iter.check1286 ], [ %i.cdn, %vec.epilog.middle.block1311 ]
  %.216391135.i.ph = phi float [ %i.cao, %iter.check1285 ], [ %i.ccz, %vec.epilog.iter.check1286 ], [ %i.ceo, %vec.epilog.middle.block1311 ]
  %.216421134.i.ph = phi float [ %i.cav, %iter.check1285 ], [ %i.cda, %vec.epilog.iter.check1286 ], [ %i.cep, %vec.epilog.middle.block1311 ]
  %.216451133.i.ph = phi float [ %i.cau, %iter.check1285 ], [ %i.cdb, %vec.epilog.iter.check1286 ], [ %i.ceq, %vec.epilog.middle.block1311 ]
  %.216481132.i.ph = phi float [ %i.cap, %iter.check1285 ], [ %i.cdc, %vec.epilog.iter.check1286 ], [ %i.cer, %vec.epilog.middle.block1311 ]
  %.1117151131.i.ph = phi ptr [ %.101714.lcssa.i, %iter.check1285 ], [ %i.cbb, %vec.epilog.iter.check1286 ], [ %i.cdo, %vec.epilog.middle.block1311 ]
  br label %.lr.ph1138.i

.lr.ph1123.i:                                     ; preds = %.lr.ph1123.i.preheader, %.lr.ph1123.i
  %.016331121.i = phi i32 [ %i.cft, %.lr.ph1123.i ], [ %.016331121.i.ph, %.lr.ph1123.i.preheader ]
  %.016351120.i = phi ptr [ %i.cfr, %.lr.ph1123.i ], [ %.016351120.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %.1017141115.i = phi ptr [ %i.cfs, %.lr.ph1123.i ], [ %.1017141115.i.ph, %.lr.ph1123.i.preheader ] ; 2 uses
  %i.ceu = phi <4 x float> [ %i.cfq, %.lr.ph1123.i ], [ %.ph1795, %.lr.ph1123.i.preheader ]
  %i.cev = load <4 x i16>, ptr %.016351120.i, align 2, !tbaa !24 ; 2 uses
  %i.cew = shufflevector <4 x i16> %i.cev, <4 x i16> poison, <4 x i32> <i32 0, i32 2, i32 2, i32 0>
  %i.cex = zext <4 x i16> %i.cew to <4 x i32>
  %i.cey = shl nuw <4 x i32> %i.cex, splat (i32 16)
  %i.cez = bitcast <4 x i32> %i.cey to <4 x float>
  %i.cfa = shufflevector <4 x i16> %i.cev, <4 x i16> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 1>
  %i.cfb = zext <4 x i16> %i.cfa to <4 x i32>
  %i.cfc = shl nuw <4 x i32> %i.cfb, splat (i32 16)
  %i.cfd = bitcast <4 x i32> %i.cfc to <4 x float>
  %i.cfe = load <4 x i16>, ptr %.1017141115.i, align 2, !tbaa !24 ; 2 uses
  %i.cff = shufflevector <4 x i16> %i.cfe, <4 x i16> poison, <4 x i32> <i32 2, i32 0, i32 2, i32 0>
  %i.cfg = zext <4 x i16> %i.cff to <4 x i32>
  %i.cfh = shl nuw <4 x i32> %i.cfg, splat (i32 16)
  %i.cfi = bitcast <4 x i32> %i.cfh to <4 x float>
  %i.cfj = shufflevector <4 x i16> %i.cfe, <4 x i16> poison, <4 x i32> <i32 3, i32 1, i32 3, i32 1>
  %i.cfk = zext <4 x i16> %i.cfj to <4 x i32>
  %i.cfl = shl nuw <4 x i32> %i.cfk, splat (i32 16)
  %i.cfm = bitcast <4 x i32> %i.cfl to <4 x float>
  %i.cfn = fmul fast <4 x float> %i.cfi, %i.cez
  %i.cfo = fmul fast <4 x float> %i.cfm, %i.cfd
  %i.cfp = fadd fast <4 x float> %i.ceu, %i.cfn
  %i.cfq = fadd fast <4 x float> %i.cfp, %i.cfo   ; 2 uses
  %i.cfr = getelementptr inbounds nuw i8, ptr %.016351120.i, i64 8
  %i.cfs = getelementptr inbounds nuw i8, ptr %.1017141115.i, i64 8
  %i.cft = add nuw nsw i32 %.016331121.i, 2       ; 2 uses
  %i.cfu = or disjoint i32 %i.cft, 1
  %i.cfv = icmp slt i32 %i.cfu, %8
  br i1 %i.cfv, label %.lr.ph1123.i, label %.preheader384.loopexit.i, !llvm.loop !402

.lr.ph1138.i:                                     ; preds = %.lr.ph1138.i.preheader, %.lr.ph1138.i
  %.116341137.i = phi i32 [ %i.cgo, %.lr.ph1138.i ], [ %.116341137.i.ph, %.lr.ph1138.i.preheader ]
  %.116361136.i = phi ptr [ %i.cgm, %.lr.ph1138.i ], [ %.116361136.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %.216391135.i = phi float [ %i.cgl, %.lr.ph1138.i ], [ %.216391135.i.ph, %.lr.ph1138.i.preheader ]
  %.216421134.i = phi float [ %i.cgq, %.lr.ph1138.i ], [ %.216421134.i.ph, %.lr.ph1138.i.preheader ]
  %.216451133.i = phi float [ %i.cgp, %.lr.ph1138.i ], [ %.216451133.i.ph, %.lr.ph1138.i.preheader ]
  %.216481132.i = phi float [ %i.cgf, %.lr.ph1138.i ], [ %.216481132.i.ph, %.lr.ph1138.i.preheader ]
  %.1117151131.i = phi ptr [ %i.cgn, %.lr.ph1138.i ], [ %.1117151131.i.ph, %.lr.ph1138.i.preheader ] ; 2 uses
  %i.cfw = load <2 x i16>, ptr %.116361136.i, align 2, !tbaa !24
  %i.cfx = zext <2 x i16> %i.cfw to <2 x i32>
  %i.cfy = shl nuw <2 x i32> %i.cfx, splat (i32 16)
  %i.cfz = bitcast <2 x i32> %i.cfy to <2 x float> ; 3 uses
  %i.cga = load <2 x i16>, ptr %.1117151131.i, align 2, !tbaa !24
  %i.cgb = zext <2 x i16> %i.cga to <2 x i32>
  %i.cgc = shl nuw <2 x i32> %i.cgb, splat (i32 16)
  %shift = bitcast <2 x i32> %i.cgc to <2 x float> ; 2 uses
  %i.cgd = shufflevector <2 x float> %shift, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop = fmul fast <2 x float> %shift, %i.cfz
  %i.cge = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cgf = fadd fast float %i.cge, %.216481132.i  ; 2 uses
  %i.cgg = fmul fast <2 x float> %i.cgd, %i.cfz
  %i.cgh = insertelement <2 x float> poison, float %.216451133.i, i64 0
  %i.cgi = insertelement <2 x float> %i.cgh, float %.216421134.i, i64 1
  %i.cgj = fadd fast <2 x float> %i.cgg, %i.cgi   ; 3 uses
  %shift1702 = shufflevector <2 x float> %i.cfz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1703 = fmul fast <2 x float> %i.cgd, %shift1702
  %i.cgk = extractelement <2 x float> %foldExtExtBinop1703, i64 0
  %i.cgl = fadd fast float %i.cgk, %.216391135.i  ; 2 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %.116361136.i, i64 4
  %i.cgn = getelementptr inbounds nuw i8, ptr %.1117151131.i, i64 4 ; 2 uses
  %i.cgo = add nuw nsw i32 %.116341137.i, 1       ; 2 uses
  %exitcond1792.not.i = icmp eq i32 %i.cgo, %8
  %i.cgp = extractelement <2 x float> %i.cgj, i64 0
  %i.cgq = extractelement <2 x float> %i.cgj, i64 1
  br i1 %exitcond1792.not.i, label %._crit_edge1139.i, label %.lr.ph1138.i, !llvm.loop !403

._crit_edge1139.i:                                ; preds = %.lr.ph1138.i, %middle.block1279, %vec.epilog.middle.block1311, %.preheader384.i
  %.111715.lcssa.i = phi ptr [ %.101714.lcssa.i, %.preheader384.i ], [ %i.cdo, %vec.epilog.middle.block1311 ], [ %i.cbb, %middle.block1279 ], [ %i.cgn, %.lr.ph1138.i ] ; 2 uses
  %.21648.lcssa.i = phi float [ %i.cap, %.preheader384.i ], [ %i.cer, %vec.epilog.middle.block1311 ], [ %i.cdc, %middle.block1279 ], [ %i.cgf, %.lr.ph1138.i ]
  %.21639.lcssa.i = phi float [ %i.cao, %.preheader384.i ], [ %i.ceo, %vec.epilog.middle.block1311 ], [ %i.ccz, %middle.block1279 ], [ %i.cgl, %.lr.ph1138.i ]
  %i.cgr = phi <2 x float> [ %i.can, %.preheader384.i ], [ %i.cet, %vec.epilog.middle.block1311 ], [ %i.cde, %middle.block1279 ], [ %i.cgj, %.lr.ph1138.i ]
  store float %.21648.lcssa.i, ptr %.221147.i, align 4, !tbaa !444
  %i.cgs = getelementptr inbounds nuw i8, ptr %.221147.i, i64 4
  store <2 x float> %i.cgr, ptr %i.cgs, align 4, !tbaa !444
  %i.cgt = getelementptr inbounds nuw i8, ptr %.221147.i, i64 12
  store float %.21639.lcssa.i, ptr %i.cgt, align 4, !tbaa !444
  %i.cgu = getelementptr inbounds nuw i8, ptr %.221147.i, i64 16 ; 2 uses
  %i.cgv = add nuw nsw i32 %.317021146.i, 2       ; 3 uses
  %i.cgw = or disjoint i32 %i.cgv, 1
  %i.cgx = icmp slt i32 %i.cgw, %6
  br i1 %i.cgx, label %.lr.ph1148.i, label %.preheader388.i, !llvm.loop !404

.lr.ph1177.i:                                     ; preds = %.lr.ph1177.i.preheader, %._crit_edge1170.i
  %.231176.i = phi ptr [ %i.ctl, %._crit_edge1170.i ], [ %.22.lcssa.i, %.lr.ph1177.i.preheader ] ; 4 uses
  %.417031175.i = phi i32 [ %i.ctm, %._crit_edge1170.i ], [ %.31702.lcssa.i, %.lr.ph1177.i.preheader ]
  %.1217161174.i = phi ptr [ %.141718.lcssa.i, %._crit_edge1170.i ], [ %.91713.lcssa.i, %.lr.ph1177.i.preheader ] ; 10 uses
  br i1 %.not1796.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph1177.i
  %i.cgy = load <2 x float>, ptr %.231176.i, align 4, !tbaa !444
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph1177.i
  %i.cgz = phi <2 x float> [ %i.cgy, %bb.an ], [ zeroinitializer, %.lr.ph1177.i ] ; 5 uses
  br i1 %i.ami, label %iter.check1216, label %.preheader383.i

iter.check1216:                                   ; preds = %bb.ao
  br i1 %min.iters.check1152, label %.lr.ph1158.i.preheader, label %vector.main.loop.iter.check1153

vector.main.loop.iter.check1153:                  ; preds = %iter.check1216
  %i.cha = extractelement <2 x float> %i.cgz, i64 0
  %i.chb = extractelement <2 x float> %i.cgz, i64 1
  br i1 %min.iters.check1154, label %vec.epilog.ph1220, label %vector.ph1155

vector.ph1155:                                    ; preds = %vector.main.loop.iter.check1153
  %i.chc = getelementptr i8, ptr %.1217161174.i, i64 %i.anv
  %i.chd = shufflevector <2 x float> %i.cgz, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %50 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.chd, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.che = shufflevector <16 x float> %i.chd, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.ph1155, %vector.body1157
  %index1158 = phi i64 [ 0, %vector.ph1155 ], [ %index.next1207, %vector.body1157 ] ; 3 uses
  %vec.phi1159 = phi <16 x float> [ %50, %vector.ph1155 ], [ %i.cln, %vector.body1157 ]
  %vec.phi1160 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clo, %vector.body1157 ]
  %vec.phi1161 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clp, %vector.body1157 ]
  %vec.phi1162 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.clq, %vector.body1157 ]
  %vec.phi1163 = phi <16 x float> [ %i.che, %vector.ph1155 ], [ %i.ckx, %vector.body1157 ]
  %vec.phi1164 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.cky, %vector.body1157 ]
  %vec.phi1165 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.ckz, %vector.body1157 ]
  %vec.phi1166 = phi <16 x float> [ zeroinitializer, %vector.ph1155 ], [ %i.cla, %vector.body1157 ]
  %i.chf = shl i64 %index1158, 3                  ; 4 uses
  %next.gep1167 = getelementptr i8, ptr %.31182.i, i64 %i.chf
  %i.chg = getelementptr i8, ptr %.31182.i, i64 %i.chf
  %next.gep1168 = getelementptr i8, ptr %i.chg, i64 128
  %i.chh = getelementptr i8, ptr %.31182.i, i64 %i.chf
  %next.gep1169 = getelementptr i8, ptr %i.chh, i64 256
  %i.chi = getelementptr i8, ptr %.31182.i, i64 %i.chf
  %next.gep1170 = getelementptr i8, ptr %i.chi, i64 384
  %i.chj = shl i64 %index1158, 2                  ; 4 uses
  %next.gep1171 = getelementptr i8, ptr %.1217161174.i, i64 %i.chj
  %i.chk = getelementptr i8, ptr %.1217161174.i, i64 %i.chj
  %next.gep1172 = getelementptr i8, ptr %i.chk, i64 64
  %i.chl = getelementptr i8, ptr %.1217161174.i, i64 %i.chj
  %next.gep1173 = getelementptr i8, ptr %i.chl, i64 128
  %i.chm = getelementptr i8, ptr %.1217161174.i, i64 %i.chj
  %next.gep1174 = getelementptr i8, ptr %i.chm, i64 192
  %wide.vec1175 = load <64 x i16>, ptr %next.gep1167, align 2, !tbaa !24 ; 4 uses
  %strided.vec1176 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1177 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1178 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1179 = shufflevector <64 x i16> %wide.vec1175, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1180 = load <64 x i16>, ptr %next.gep1168, align 2, !tbaa !24 ; 4 uses
  %strided.vec1181 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1182 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1183 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1184 = shufflevector <64 x i16> %wide.vec1180, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1185 = load <64 x i16>, ptr %next.gep1169, align 2, !tbaa !24 ; 4 uses
  %strided.vec1186 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1187 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1188 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1189 = shufflevector <64 x i16> %wide.vec1185, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1190 = load <64 x i16>, ptr %next.gep1170, align 2, !tbaa !24 ; 4 uses
  %strided.vec1191 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1192 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1193 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1194 = shufflevector <64 x i16> %wide.vec1190, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.chn = zext <16 x i16> %strided.vec1176 to <16 x i32>
  %i.cho = zext <16 x i16> %strided.vec1181 to <16 x i32>
  %i.chp = zext <16 x i16> %strided.vec1186 to <16 x i32>
  %i.chq = zext <16 x i16> %strided.vec1191 to <16 x i32>
  %i.chr = shl nuw <16 x i32> %i.chn, splat (i32 16)
  %i.chs = shl nuw <16 x i32> %i.cho, splat (i32 16)
  %i.cht = shl nuw <16 x i32> %i.chp, splat (i32 16)
  %i.chu = shl nuw <16 x i32> %i.chq, splat (i32 16)
  %i.chv = bitcast <16 x i32> %i.chr to <16 x float>
  %i.chw = bitcast <16 x i32> %i.chs to <16 x float>
  %i.chx = bitcast <16 x i32> %i.cht to <16 x float>
  %i.chy = bitcast <16 x i32> %i.chu to <16 x float>
  %i.chz = zext <16 x i16> %strided.vec1177 to <16 x i32>
  %i.cia = zext <16 x i16> %strided.vec1182 to <16 x i32>
  %i.cib = zext <16 x i16> %strided.vec1187 to <16 x i32>
  %i.cic = zext <16 x i16> %strided.vec1192 to <16 x i32>
  %i.cid = shl nuw <16 x i32> %i.chz, splat (i32 16)
  %i.cie = shl nuw <16 x i32> %i.cia, splat (i32 16)
  %i.cif = shl nuw <16 x i32> %i.cib, splat (i32 16)
  %i.cig = shl nuw <16 x i32> %i.cic, splat (i32 16)
  %i.cih = bitcast <16 x i32> %i.cid to <16 x float>
  %i.cii = bitcast <16 x i32> %i.cie to <16 x float>
  %i.cij = bitcast <16 x i32> %i.cif to <16 x float>
  %i.cik = bitcast <16 x i32> %i.cig to <16 x float>
  %i.cil = zext <16 x i16> %strided.vec1178 to <16 x i32>
  %i.cim = zext <16 x i16> %strided.vec1183 to <16 x i32>
  %i.cin = zext <16 x i16> %strided.vec1188 to <16 x i32>
  %i.cio = zext <16 x i16> %strided.vec1193 to <16 x i32>
  %i.cip = shl nuw <16 x i32> %i.cil, splat (i32 16)
  %i.ciq = shl nuw <16 x i32> %i.cim, splat (i32 16)
  %i.cir = shl nuw <16 x i32> %i.cin, splat (i32 16)
  %i.cis = shl nuw <16 x i32> %i.cio, splat (i32 16)
  %i.cit = bitcast <16 x i32> %i.cip to <16 x float>
  %i.ciu = bitcast <16 x i32> %i.ciq to <16 x float>
  %i.civ = bitcast <16 x i32> %i.cir to <16 x float>
  %i.ciw = bitcast <16 x i32> %i.cis to <16 x float>
  %i.cix = zext <16 x i16> %strided.vec1179 to <16 x i32>
  %i.ciy = zext <16 x i16> %strided.vec1184 to <16 x i32>
  %i.ciz = zext <16 x i16> %strided.vec1189 to <16 x i32>
  %i.cja = zext <16 x i16> %strided.vec1194 to <16 x i32>
  %i.cjb = shl nuw <16 x i32> %i.cix, splat (i32 16)
  %i.cjc = shl nuw <16 x i32> %i.ciy, splat (i32 16)
  %i.cjd = shl nuw <16 x i32> %i.ciz, splat (i32 16)
  %i.cje = shl nuw <16 x i32> %i.cja, splat (i32 16)
  %i.cjf = bitcast <16 x i32> %i.cjb to <16 x float>
  %i.cjg = bitcast <16 x i32> %i.cjc to <16 x float>
  %i.cjh = bitcast <16 x i32> %i.cjd to <16 x float>
  %i.cji = bitcast <16 x i32> %i.cje to <16 x float>
  %wide.vec1195 = load <32 x i16>, ptr %next.gep1171, align 2, !tbaa !24
  %i.cjj = freeze <32 x i16> %wide.vec1195        ; 2 uses
  %i.cjk = bitcast <32 x i16> %i.cjj to <16 x i32>
  %i.cjl = bitcast <32 x i16> %i.cjj to <16 x i32>
  %i.cjm = and <16 x i32> %i.cjl, splat (i32 -65536)
  %wide.vec1198 = load <32 x i16>, ptr %next.gep1172, align 2, !tbaa !24
  %i.cjn = freeze <32 x i16> %wide.vec1198        ; 2 uses
  %i.cjo = bitcast <32 x i16> %i.cjn to <16 x i32>
  %i.cjp = bitcast <32 x i16> %i.cjn to <16 x i32>
  %i.cjq = and <16 x i32> %i.cjp, splat (i32 -65536)
  %wide.vec1201 = load <32 x i16>, ptr %next.gep1173, align 2, !tbaa !24
  %i.cjr = freeze <32 x i16> %wide.vec1201        ; 2 uses
  %i.cjs = bitcast <32 x i16> %i.cjr to <16 x i32>
  %i.cjt = bitcast <32 x i16> %i.cjr to <16 x i32>
  %i.cju = and <16 x i32> %i.cjt, splat (i32 -65536)
  %wide.vec1204 = load <32 x i16>, ptr %next.gep1174, align 2, !tbaa !24
  %i.cjv = freeze <32 x i16> %wide.vec1204        ; 2 uses
  %i.cjw = bitcast <32 x i16> %i.cjv to <16 x i32>
  %i.cjx = bitcast <32 x i16> %i.cjv to <16 x i32>
  %i.cjy = and <16 x i32> %i.cjx, splat (i32 -65536)
  %i.cjz = shl <16 x i32> %i.cjk, splat (i32 16)
  %i.cka = shl <16 x i32> %i.cjo, splat (i32 16)
  %i.ckb = shl <16 x i32> %i.cjs, splat (i32 16)
  %i.ckc = shl <16 x i32> %i.cjw, splat (i32 16)
  %i.ckd = bitcast <16 x i32> %i.cjz to <16 x float> ; 2 uses
  %i.cke = bitcast <16 x i32> %i.cka to <16 x float> ; 2 uses
  %i.ckf = bitcast <16 x i32> %i.ckb to <16 x float> ; 2 uses
  %i.ckg = bitcast <16 x i32> %i.ckc to <16 x float> ; 2 uses
  %i.ckh = bitcast <16 x i32> %i.cjm to <16 x float> ; 2 uses
  %i.cki = bitcast <16 x i32> %i.cjq to <16 x float> ; 2 uses
  %i.ckj = bitcast <16 x i32> %i.cju to <16 x float> ; 2 uses
  %i.ckk = bitcast <16 x i32> %i.cjy to <16 x float> ; 2 uses
  %i.ckl = fmul fast <16 x float> %i.ckd, %i.chv
  %i.ckm = fmul fast <16 x float> %i.cke, %i.chw
  %i.ckn = fmul fast <16 x float> %i.ckf, %i.chx
  %i.cko = fmul fast <16 x float> %i.ckg, %i.chy
  %i.ckp = fmul fast <16 x float> %i.ckh, %i.cih
  %i.ckq = fmul fast <16 x float> %i.cki, %i.cii
  %i.ckr = fmul fast <16 x float> %i.ckj, %i.cij
  %i.cks = fmul fast <16 x float> %i.ckk, %i.cik
  %i.ckt = fadd fast <16 x float> %vec.phi1163, %i.ckl
  %i.cku = fadd fast <16 x float> %vec.phi1164, %i.ckm
  %i.ckv = fadd fast <16 x float> %vec.phi1165, %i.ckn
  %i.ckw = fadd fast <16 x float> %vec.phi1166, %i.cko
  %i.ckx = fadd fast <16 x float> %i.ckt, %i.ckp  ; 2 uses
  %i.cky = fadd fast <16 x float> %i.cku, %i.ckq  ; 2 uses
  %i.ckz = fadd fast <16 x float> %i.ckv, %i.ckr  ; 2 uses
  %i.cla = fadd fast <16 x float> %i.ckw, %i.cks  ; 2 uses
  %i.clb = fmul fast <16 x float> %i.ckd, %i.cit
  %i.clc = fmul fast <16 x float> %i.cke, %i.ciu
  %i.cld = fmul fast <16 x float> %i.ckf, %i.civ
  %i.cle = fmul fast <16 x float> %i.ckg, %i.ciw
  %i.clf = fmul fast <16 x float> %i.ckh, %i.cjf
  %i.clg = fmul fast <16 x float> %i.cki, %i.cjg
  %i.clh = fmul fast <16 x float> %i.ckj, %i.cjh
  %i.cli = fmul fast <16 x float> %i.ckk, %i.cji
  %i.clj = fadd fast <16 x float> %vec.phi1159, %i.clb
  %i.clk = fadd fast <16 x float> %vec.phi1160, %i.clc
  %i.cll = fadd fast <16 x float> %vec.phi1161, %i.cld
  %i.clm = fadd fast <16 x float> %vec.phi1162, %i.cle
  %i.cln = fadd fast <16 x float> %i.clj, %i.clf  ; 2 uses
  %i.clo = fadd fast <16 x float> %i.clk, %i.clg  ; 2 uses
  %i.clp = fadd fast <16 x float> %i.cll, %i.clh  ; 2 uses
  %i.clq = fadd fast <16 x float> %i.clm, %i.cli  ; 2 uses
  %index.next1207 = add nuw i64 %index1158, 64    ; 2 uses
  %i.clr = icmp eq i64 %index.next1207, %n.vec1156
  br i1 %i.clr, label %middle.block1208, label %vector.body1157, !llvm.loop !405

middle.block1208:                                 ; preds = %vector.body1157
  %bin.rdx1209 = fadd fast <16 x float> %i.clo, %i.cln
  %bin.rdx1210 = fadd fast <16 x float> %i.clp, %bin.rdx1209
  %bin.rdx1211 = fadd fast <16 x float> %i.clq, %bin.rdx1210
  %i.cls = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1211) ; 2 uses
  %bin.rdx1212 = fadd fast <16 x float> %i.cky, %i.ckx
  %bin.rdx1213 = fadd fast <16 x float> %i.ckz, %bin.rdx1212
  %bin.rdx1214 = fadd fast <16 x float> %i.cla, %bin.rdx1213
  %i.clt = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1214) ; 2 uses
  %i.clu = insertelement <2 x float> poison, float %i.clt, i64 0
  %i.clv = insertelement <2 x float> %i.clu, float %i.cls, i64 1 ; 2 uses
  br i1 %cmp.n1215, label %.preheader383.loopexit.i, label %vec.epilog.iter.check1217

vec.epilog.iter.check1217:                        ; preds = %middle.block1208
  br i1 %min.epilog.iters.check1219, label %.lr.ph1158.i.preheader, label %vec.epilog.ph1220, !prof !26

vec.epilog.ph1220:                                ; preds = %vector.main.loop.iter.check1153, %vec.epilog.iter.check1217
  %vec.epilog.resume.val1221 = phi i64 [ %n.vec1156, %vec.epilog.iter.check1217 ], [ 0, %vector.main.loop.iter.check1153 ]
  %bc.merge.rdx1222 = phi float [ %i.cls, %vec.epilog.iter.check1217 ], [ %i.chb, %vector.main.loop.iter.check1153 ]
  %bc.merge.rdx1223 = phi float [ %i.clt, %vec.epilog.iter.check1217 ], [ %i.cha, %vector.main.loop.iter.check1153 ]
  %i.clw = getelementptr i8, ptr %.1217161174.i, i64 %i.anz
  %i.clx = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1222, i64 0
  %i.cly = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1223, i64 0
  br label %vec.epilog.vector.body1225

vec.epilog.vector.body1225:                       ; preds = %vec.epilog.vector.body1225, %vec.epilog.ph1220
  %index1226 = phi i64 [ %vec.epilog.resume.val1221, %vec.epilog.ph1220 ], [ %index.next1239, %vec.epilog.vector.body1225 ] ; 3 uses
  %vec.phi1227 = phi <8 x float> [ %i.clx, %vec.epilog.ph1220 ], [ %i.cnb, %vec.epilog.vector.body1225 ]
  %vec.phi1228 = phi <8 x float> [ %i.cly, %vec.epilog.ph1220 ], [ %i.cmx, %vec.epilog.vector.body1225 ]
  %i.clz = shl i64 %index1226, 3
  %next.gep1229 = getelementptr i8, ptr %.31182.i, i64 %i.clz
  %i.cma = shl i64 %index1226, 2
  %next.gep1230 = getelementptr i8, ptr %.1217161174.i, i64 %i.cma
  %wide.vec1231 = load <32 x i16>, ptr %next.gep1229, align 2, !tbaa !24 ; 4 uses
  %strided.vec1232 = shufflevector <32 x i16> %wide.vec1231, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1233 = shufflevector <32 x i16> %wide.vec1231, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1234 = shufflevector <32 x i16> %wide.vec1231, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1235 = shufflevector <32 x i16> %wide.vec1231, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cmb = zext <8 x i16> %strided.vec1232 to <8 x i32>
  %i.cmc = shl nuw <8 x i32> %i.cmb, splat (i32 16)
  %i.cmd = bitcast <8 x i32> %i.cmc to <8 x float>
  %i.cme = zext <8 x i16> %strided.vec1233 to <8 x i32>
  %i.cmf = shl nuw <8 x i32> %i.cme, splat (i32 16)
  %i.cmg = bitcast <8 x i32> %i.cmf to <8 x float>
  %i.cmh = zext <8 x i16> %strided.vec1234 to <8 x i32>
  %i.cmi = shl nuw <8 x i32> %i.cmh, splat (i32 16)
  %i.cmj = bitcast <8 x i32> %i.cmi to <8 x float>
  %i.cmk = zext <8 x i16> %strided.vec1235 to <8 x i32>
  %i.cml = shl nuw <8 x i32> %i.cmk, splat (i32 16)
  %i.cmm = bitcast <8 x i32> %i.cml to <8 x float>
  %wide.vec1236 = load <16 x i16>, ptr %next.gep1230, align 2, !tbaa !24
  %i.cmn = freeze <16 x i16> %wide.vec1236        ; 2 uses
  %i.cmo = bitcast <16 x i16> %i.cmn to <8 x i32>
  %i.cmp = bitcast <16 x i16> %i.cmn to <8 x i32>
  %i.cmq = and <8 x i32> %i.cmp, splat (i32 -65536)
  %i.cmr = shl <8 x i32> %i.cmo, splat (i32 16)
  %i.cms = bitcast <8 x i32> %i.cmr to <8 x float> ; 2 uses
  %i.cmt = bitcast <8 x i32> %i.cmq to <8 x float> ; 2 uses
  %i.cmu = fmul fast <8 x float> %i.cms, %i.cmd
  %i.cmv = fmul fast <8 x float> %i.cmt, %i.cmg
  %i.cmw = fadd fast <8 x float> %vec.phi1228, %i.cmu
  %i.cmx = fadd fast <8 x float> %i.cmw, %i.cmv   ; 2 uses
  %i.cmy = fmul fast <8 x float> %i.cms, %i.cmj
  %i.cmz = fmul fast <8 x float> %i.cmt, %i.cmm
  %i.cna = fadd fast <8 x float> %vec.phi1227, %i.cmy
  %i.cnb = fadd fast <8 x float> %i.cna, %i.cmz   ; 2 uses
  %index.next1239 = add nuw i64 %index1226, 8     ; 2 uses
  %i.cnc = icmp eq i64 %index.next1239, %n.vec1224
  br i1 %i.cnc, label %vec.epilog.middle.block1240, label %vec.epilog.vector.body1225, !llvm.loop !406

vec.epilog.middle.block1240:                      ; preds = %vec.epilog.vector.body1225
  %i.cnd = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cnb)
  %i.cne = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.cmx)
  %i.cnf = insertelement <2 x float> poison, float %i.cne, i64 0
  %i.cng = insertelement <2 x float> %i.cnf, float %i.cnd, i64 1 ; 2 uses
  br i1 %cmp.n1241, label %.preheader383.loopexit.i, label %.lr.ph1158.i.preheader

.lr.ph1158.i.preheader:                           ; preds = %iter.check1216, %vec.epilog.iter.check1217, %vec.epilog.middle.block1240
  %.015781156.i.ph = phi i32 [ 0, %iter.check1216 ], [ %i.ant, %vec.epilog.iter.check1217 ], [ %i.anx, %vec.epilog.middle.block1240 ]
  %.015801155.i.ph = phi ptr [ %.31182.i, %iter.check1216 ], [ %i.bug, %vec.epilog.iter.check1217 ], [ %i.buh, %vec.epilog.middle.block1240 ]
  %.1317171152.i.ph = phi ptr [ %.1217161174.i, %iter.check1216 ], [ %i.chc, %vec.epilog.iter.check1217 ], [ %i.clw, %vec.epilog.middle.block1240 ]
  %.ph1794 = phi <2 x float> [ %i.cgz, %iter.check1216 ], [ %i.clv, %vec.epilog.iter.check1217 ], [ %i.cng, %vec.epilog.middle.block1240 ]
  br label %.lr.ph1158.i

.preheader383.loopexit.i:                         ; preds = %.lr.ph1158.i, %vec.epilog.middle.block1240, %middle.block1208
  %i.cnh = phi <2 x float> [ %i.cng, %vec.epilog.middle.block1240 ], [ %i.clv, %middle.block1208 ], [ %i.csm, %.lr.ph1158.i ]
  %i.cni = getelementptr i8, ptr %.1217161174.i, i64 %i.amw
  %scevgep1796.i = getelementptr i8, ptr %i.cni, i64 4
  br label %.preheader383.i

.preheader383.i:                                  ; preds = %.preheader383.loopexit.i, %bb.ao
  %.131717.lcssa.i = phi ptr [ %.1217161174.i, %bb.ao ], [ %scevgep1796.i, %.preheader383.loopexit.i ] ; 6 uses
  %.01580.lcssa.i = phi ptr [ %.31182.i, %bb.ao ], [ %indvars.iv1794.i, %.preheader383.loopexit.i ] ; 8 uses
  %.01578.lcssa.i = phi i32 [ 0, %bb.ao ], [ %i.amn, %.preheader383.loopexit.i ] ; 5 uses
  %i.cnj = phi <2 x float> [ %i.cgz, %bb.ao ], [ %i.cnh, %.preheader383.loopexit.i ] ; 5 uses
  %i.cnk = icmp slt i32 %.01578.lcssa.i, %8
  %i.cnl = extractelement <2 x float> %i.cnj, i64 0
  %i.cnm = extractelement <2 x float> %i.cnj, i64 1
  br i1 %i.cnk, label %iter.check, label %._crit_edge1170.i

iter.check:                                       ; preds = %.preheader383.i
  %i.cnn = xor i32 %.01578.lcssa.i, -1
  %i.cno = add i32 %8, %i.cnn                     ; 3 uses
  %i.cnp = zext i32 %i.cno to i64
  %i.cnq = add nuw nsw i64 %i.cnp, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.cno, 7
  br i1 %min.iters.check, label %.lr.ph1169.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1105 = icmp ult i32 %i.cno, 63
  br i1 %min.iters.check1105, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cnr = and i64 %i.cnq, 56
  %n.vec = and i64 %i.cnq, 8589934528             ; 6 uses
  %i.cns = trunc i64 %n.vec to i32
  %i.cnt = add i32 %.01578.lcssa.i, %i.cns
  %i.cnu = shl nuw nsw i64 %n.vec, 2
  %i.cnv = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.cnu
  %i.cnw = shl nuw nsw i64 %n.vec, 1
  %i.cnx = getelementptr i8, ptr %.131717.lcssa.i, i64 %i.cnw ; 2 uses
  %i.cny = shufflevector <2 x float> %i.cnj, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %51 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.cny, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cnz = shufflevector <16 x float> %i.cny, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %51, %vector.ph ], [ %i.cqi, %vector.body ]
  %vec.phi1106 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cqj, %vector.body ]
  %vec.phi1107 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cqk, %vector.body ]
  %vec.phi1108 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cql, %vector.body ]
  %vec.phi1109 = phi <16 x float> [ %i.cnz, %vector.ph ], [ %i.cpw, %vector.body ]
  %vec.phi1110 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cpx, %vector.body ]
  %vec.phi1111 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cpy, %vector.body ]
  %vec.phi1112 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cpz, %vector.body ]
  %i.coa = shl i64 %index, 2                      ; 4 uses
  %next.gep = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.coa
  %i.cob = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.coa
  %next.gep1113 = getelementptr i8, ptr %i.cob, i64 64
  %i.coc = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.coa
  %next.gep1114 = getelementptr i8, ptr %i.coc, i64 128
  %i.cod = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.coa
  %next.gep1115 = getelementptr i8, ptr %i.cod, i64 192
  %i.coe = shl i64 %index, 1
  %next.gep1116 = getelementptr i8, ptr %.131717.lcssa.i, i64 %i.coe ; 4 uses
  %wide.vec = load <32 x i16>, ptr %next.gep, align 2, !tbaa !24
  %i.cof = freeze <32 x i16> %wide.vec            ; 2 uses
  %i.cog = bitcast <32 x i16> %i.cof to <16 x i32>
  %i.coh = bitcast <32 x i16> %i.cof to <16 x i32>
  %i.coi = and <16 x i32> %i.coh, splat (i32 -65536)
  %wide.vec1118 = load <32 x i16>, ptr %next.gep1113, align 2, !tbaa !24
  %i.coj = freeze <32 x i16> %wide.vec1118        ; 2 uses
  %i.cok = bitcast <32 x i16> %i.coj to <16 x i32>
  %i.col = bitcast <32 x i16> %i.coj to <16 x i32>
  %i.com = and <16 x i32> %i.col, splat (i32 -65536)
  %wide.vec1121 = load <32 x i16>, ptr %next.gep1114, align 2, !tbaa !24
  %i.con = freeze <32 x i16> %wide.vec1121        ; 2 uses
  %i.coo = bitcast <32 x i16> %i.con to <16 x i32>
  %i.cop = bitcast <32 x i16> %i.con to <16 x i32>
  %i.coq = and <16 x i32> %i.cop, splat (i32 -65536)
  %wide.vec1124 = load <32 x i16>, ptr %next.gep1115, align 2, !tbaa !24
  %i.cor = freeze <32 x i16> %wide.vec1124        ; 2 uses
  %i.cos = bitcast <32 x i16> %i.cor to <16 x i32>
  %i.cot = bitcast <32 x i16> %i.cor to <16 x i32>
  %i.cou = and <16 x i32> %i.cot, splat (i32 -65536)
  %i.cov = shl <16 x i32> %i.cog, splat (i32 16)
  %i.cow = shl <16 x i32> %i.cok, splat (i32 16)
  %i.cox = shl <16 x i32> %i.coo, splat (i32 16)
  %i.coy = shl <16 x i32> %i.cos, splat (i32 16)
  %i.coz = bitcast <16 x i32> %i.cov to <16 x float>
  %i.cpa = bitcast <16 x i32> %i.cow to <16 x float>
  %i.cpb = bitcast <16 x i32> %i.cox to <16 x float>
  %i.cpc = bitcast <16 x i32> %i.coy to <16 x float>
  %i.cpd = getelementptr i8, ptr %next.gep1116, i64 32
  %i.cpe = getelementptr i8, ptr %next.gep1116, i64 64
  %i.cpf = getelementptr i8, ptr %next.gep1116, i64 96
  %wide.load = load <16 x i16>, ptr %next.gep1116, align 2, !tbaa !24
  %wide.load1127 = load <16 x i16>, ptr %i.cpd, align 2, !tbaa !24
  %wide.load1128 = load <16 x i16>, ptr %i.cpe, align 2, !tbaa !24
  %wide.load1129 = load <16 x i16>, ptr %i.cpf, align 2, !tbaa !24
  %i.cpg = zext <16 x i16> %wide.load to <16 x i32>
  %i.cph = zext <16 x i16> %wide.load1127 to <16 x i32>
  %i.cpi = zext <16 x i16> %wide.load1128 to <16 x i32>
  %i.cpj = zext <16 x i16> %wide.load1129 to <16 x i32>
  %i.cpk = shl nuw <16 x i32> %i.cpg, splat (i32 16)
  %i.cpl = shl nuw <16 x i32> %i.cph, splat (i32 16)
  %i.cpm = shl nuw <16 x i32> %i.cpi, splat (i32 16)
  %i.cpn = shl nuw <16 x i32> %i.cpj, splat (i32 16)
  %i.cpo = bitcast <16 x i32> %i.cpk to <16 x float> ; 2 uses
  %i.cpp = bitcast <16 x i32> %i.cpl to <16 x float> ; 2 uses
  %i.cpq = bitcast <16 x i32> %i.cpm to <16 x float> ; 2 uses
  %i.cpr = bitcast <16 x i32> %i.cpn to <16 x float> ; 2 uses
  %i.cps = fmul fast <16 x float> %i.cpo, %i.coz
  %i.cpt = fmul fast <16 x float> %i.cpp, %i.cpa
  %i.cpu = fmul fast <16 x float> %i.cpq, %i.cpb
  %i.cpv = fmul fast <16 x float> %i.cpr, %i.cpc
  %i.cpw = fadd fast <16 x float> %i.cps, %vec.phi1109 ; 2 uses
  %i.cpx = fadd fast <16 x float> %i.cpt, %vec.phi1110 ; 2 uses
  %i.cpy = fadd fast <16 x float> %i.cpu, %vec.phi1111 ; 2 uses
  %i.cpz = fadd fast <16 x float> %i.cpv, %vec.phi1112 ; 2 uses
  %i.cqa = bitcast <16 x i32> %i.coi to <16 x float>
  %i.cqb = bitcast <16 x i32> %i.com to <16 x float>
  %i.cqc = bitcast <16 x i32> %i.coq to <16 x float>
  %i.cqd = bitcast <16 x i32> %i.cou to <16 x float>
  %i.cqe = fmul fast <16 x float> %i.cqa, %i.cpo
  %i.cqf = fmul fast <16 x float> %i.cqb, %i.cpp
  %i.cqg = fmul fast <16 x float> %i.cqc, %i.cpq
  %i.cqh = fmul fast <16 x float> %i.cqd, %i.cpr
  %i.cqi = fadd fast <16 x float> %i.cqe, %vec.phi ; 2 uses
  %i.cqj = fadd fast <16 x float> %i.cqf, %vec.phi1106 ; 2 uses
  %i.cqk = fadd fast <16 x float> %i.cqg, %vec.phi1107 ; 2 uses
  %i.cql = fadd fast <16 x float> %i.cqh, %vec.phi1108 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.cqm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cqm, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.cqj, %i.cqi
  %bin.rdx1130 = fadd fast <16 x float> %i.cqk, %bin.rdx
  %bin.rdx1131 = fadd fast <16 x float> %i.cql, %bin.rdx1130
  %i.cqn = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1131) ; 2 uses
  %bin.rdx1132 = fadd fast <16 x float> %i.cpx, %i.cpw
  %bin.rdx1133 = fadd fast <16 x float> %i.cpy, %bin.rdx1132
  %bin.rdx1134 = fadd fast <16 x float> %i.cpz, %bin.rdx1133
  %i.cqo = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1134) ; 2 uses
  %cmp.n = icmp eq i64 %i.cnq, %n.vec
  br i1 %cmp.n, label %._crit_edge1170.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cnr, 0
  %i.cqp = insertelement <2 x float> poison, float %i.cqo, i64 0
  %i.cqq = insertelement <2 x float> %i.cqp, float %i.cqn, i64 1 ; 2 uses
  br i1 %min.epilog.iters.check, label %.lr.ph1169.i.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cqr = phi <2 x float> [ %i.cqq, %vec.epilog.iter.check ], [ %i.cnj, %vector.main.loop.iter.check ]
  %n.vec1136 = and i64 %i.cnq, 8589934584         ; 5 uses
  %i.cqs = trunc i64 %n.vec1136 to i32
  %i.cqt = add i32 %.01578.lcssa.i, %i.cqs
  %i.cqu = shl nuw nsw i64 %n.vec1136, 2
  %i.cqv = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.cqu
  %i.cqw = shl nuw nsw i64 %n.vec1136, 1
  %i.cqx = getelementptr i8, ptr %.131717.lcssa.i, i64 %i.cqw ; 2 uses
  %i.cqy = shufflevector <2 x float> %i.cqr, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %52 = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.cqy, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cqz = shufflevector <8 x float> %i.cqy, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1146, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi1138 = phi <8 x float> [ %52, %vec.epilog.ph ], [ %i.crp, %vec.epilog.vector.body ]
  %vec.phi1139 = phi <8 x float> [ %i.cqz, %vec.epilog.ph ], [ %i.crm, %vec.epilog.vector.body ]
  %i.cra = shl i64 %index1137, 2
  %next.gep1140 = getelementptr i8, ptr %.01580.lcssa.i, i64 %i.cra
  %i.crb = shl i64 %index1137, 1
  %next.gep1141 = getelementptr i8, ptr %.131717.lcssa.i, i64 %i.crb
  %wide.vec1142 = load <16 x i16>, ptr %next.gep1140, align 2, !tbaa !24
  %i.crc = freeze <16 x i16> %wide.vec1142        ; 2 uses
  %i.crd = bitcast <16 x i16> %i.crc to <8 x i32>
  %i.cre = bitcast <16 x i16> %i.crc to <8 x i32>
  %i.crf = and <8 x i32> %i.cre, splat (i32 -65536)
  %i.crg = shl <8 x i32> %i.crd, splat (i32 16)
  %i.crh = bitcast <8 x i32> %i.crg to <8 x float>
  %wide.load1145 = load <8 x i16>, ptr %next.gep1141, align 2, !tbaa !24
  %i.cri = zext <8 x i16> %wide.load1145 to <8 x i32>
  %i.crj = shl nuw <8 x i32> %i.cri, splat (i32 16)
  %i.crk = bitcast <8 x i32> %i.crj to <8 x float> ; 2 uses
  %i.crl = fmul fast <8 x float> %i.crk, %i.crh
  %i.crm = fadd fast <8 x float> %i.crl, %vec.phi1139 ; 2 uses
  %i.crn = bitcast <8 x i32> %i.crf to <8 x float>
  %i.cro = fmul fast <8 x float> %i.crn, %i.crk
  %i.crp = fadd fast <8 x float> %i.cro, %vec.phi1138 ; 2 uses
  %index.next1146 = add nuw i64 %index1137, 8     ; 2 uses
  %i.crq = icmp eq i64 %index.next1146, %n.vec1136
  br i1 %i.crq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.crr = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.crp) ; 2 uses
  %i.crs = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.crm) ; 2 uses
  %cmp.n1147 = icmp eq i64 %i.cnq, %n.vec1136
  %i.crt = insertelement <2 x float> poison, float %i.crs, i64 0
  %i.cru = insertelement <2 x float> %i.crt, float %i.crr, i64 1
  br i1 %cmp.n1147, label %._crit_edge1170.i, label %.lr.ph1169.i.preheader

.lr.ph1169.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.115791168.i.ph = phi i32 [ %.01578.lcssa.i, %iter.check ], [ %i.cnt, %vec.epilog.iter.check ], [ %i.cqt, %vec.epilog.middle.block ]
  %.115811167.i.ph = phi ptr [ %.01580.lcssa.i, %iter.check ], [ %i.cnv, %vec.epilog.iter.check ], [ %i.cqv, %vec.epilog.middle.block ]
  %.1417181164.i.ph = phi ptr [ %.131717.lcssa.i, %iter.check ], [ %i.cnx, %vec.epilog.iter.check ], [ %i.cqx, %vec.epilog.middle.block ]
  %.ph1793 = phi <2 x float> [ %i.cnj, %iter.check ], [ %i.cqq, %vec.epilog.iter.check ], [ %i.cru, %vec.epilog.middle.block ]
  br label %.lr.ph1169.i

.lr.ph1158.i:                                     ; preds = %.lr.ph1158.i.preheader, %.lr.ph1158.i
  %.015781156.i = phi i32 [ %i.csp, %.lr.ph1158.i ], [ %.015781156.i.ph, %.lr.ph1158.i.preheader ]
  %.015801155.i = phi ptr [ %i.csn, %.lr.ph1158.i ], [ %.015801155.i.ph, %.lr.ph1158.i.preheader ] ; 2 uses
  %.1317171152.i = phi ptr [ %i.cso, %.lr.ph1158.i ], [ %.1317171152.i.ph, %.lr.ph1158.i.preheader ] ; 2 uses
  %i.crv = phi <2 x float> [ %i.csm, %.lr.ph1158.i ], [ %.ph1794, %.lr.ph1158.i.preheader ]
  %i.crw = load <4 x i16>, ptr %.015801155.i, align 2, !tbaa !24
  %i.crx = freeze <4 x i16> %i.crw
  %i.cry = bitcast <4 x i16> %i.crx to <2 x i32>  ; 2 uses
  %i.crz = and <2 x i32> %i.cry, splat (i32 -65536)
  %i.csa = shl <2 x i32> %i.cry, splat (i32 16)
  %i.csb = bitcast <2 x i32> %i.csa to <2 x float>
  %i.csc = bitcast <2 x i32> %i.crz to <2 x float>
  %i.csd = load <2 x i16>, ptr %.1317171152.i, align 2, !tbaa !24
  %i.cse = zext <2 x i16> %i.csd to <2 x i32>
  %i.csf = shl nuw <2 x i32> %i.cse, splat (i32 16)
  %i.csg = bitcast <2 x i32> %i.csf to <2 x float> ; 2 uses
  %i.csh = shufflevector <2 x float> %i.csg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.csi = fmul fast <2 x float> %i.csh, %i.csb
  %i.csj = shufflevector <2 x float> %i.csg, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.csk = fmul fast <2 x float> %i.csj, %i.csc
  %i.csl = fadd fast <2 x float> %i.crv, %i.csi
  %i.csm = fadd fast <2 x float> %i.csl, %i.csk   ; 2 uses
  %i.csn = getelementptr inbounds nuw i8, ptr %.015801155.i, i64 8
  %i.cso = getelementptr inbounds nuw i8, ptr %.1317171152.i, i64 4
  %i.csp = add nuw nsw i32 %.015781156.i, 2       ; 2 uses
  %i.csq = or disjoint i32 %i.csp, 1
  %i.csr = icmp slt i32 %i.csq, %8
  br i1 %i.csr, label %.lr.ph1158.i, label %.preheader383.loopexit.i, !llvm.loop !409

.lr.ph1169.i:                                     ; preds = %.lr.ph1169.i.preheader, %.lr.ph1169.i
  %.115791168.i = phi i32 [ %i.cth, %.lr.ph1169.i ], [ %.115791168.i.ph, %.lr.ph1169.i.preheader ]
  %.115811167.i = phi ptr [ %i.ctf, %.lr.ph1169.i ], [ %.115811167.i.ph, %.lr.ph1169.i.preheader ] ; 2 uses
  %.1417181164.i = phi ptr [ %i.ctg, %.lr.ph1169.i ], [ %.1417181164.i.ph, %.lr.ph1169.i.preheader ] ; 2 uses
  %i.css = phi <2 x float> [ %i.cte, %.lr.ph1169.i ], [ %.ph1793, %.lr.ph1169.i.preheader ]
  %i.cst = load i16, ptr %.1417181164.i, align 2, !tbaa !24
  %i.csu = zext i16 %i.cst to i32
  %i.csv = shl nuw i32 %i.csu, 16
  %i.csw = load <2 x i16>, ptr %.115811167.i, align 2, !tbaa !24
  %i.csx = zext <2 x i16> %i.csw to <2 x i32>
  %i.csy = shl nuw <2 x i32> %i.csx, splat (i32 16)
  %i.csz = bitcast <2 x i32> %i.csy to <2 x float>
  %i.cta = insertelement <2 x i32> poison, i32 %i.csv, i64 0
  %i.ctb = bitcast <2 x i32> %i.cta to <2 x float>
  %i.ctc = shufflevector <2 x float> %i.ctb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ctd = fmul fast <2 x float> %i.ctc, %i.csz
  %i.cte = fadd fast <2 x float> %i.ctd, %i.css   ; 3 uses
  %i.ctf = getelementptr inbounds nuw i8, ptr %.115811167.i, i64 4
  %i.ctg = getelementptr inbounds nuw i8, ptr %.1417181164.i, i64 2 ; 2 uses
  %i.cth = add nuw nsw i32 %.115791168.i, 1       ; 2 uses
  %exitcond1797.not.i = icmp eq i32 %i.cth, %8
  br i1 %exitcond1797.not.i, label %._crit_edge1170.i.loopexit, label %.lr.ph1169.i, !llvm.loop !410

._crit_edge1170.i.loopexit:                       ; preds = %.lr.ph1169.i
  %i.cti = extractelement <2 x float> %i.cte, i64 1
  %i.ctj = extractelement <2 x float> %i.cte, i64 0
  br label %._crit_edge1170.i

._crit_edge1170.i:                                ; preds = %._crit_edge1170.i.loopexit, %middle.block, %vec.epilog.middle.block, %.preheader383.i
  %.141718.lcssa.i = phi ptr [ %.131717.lcssa.i, %.preheader383.i ], [ %i.cqx, %vec.epilog.middle.block ], [ %i.cnx, %middle.block ], [ %i.ctg, %._crit_edge1170.i.loopexit ]
  %.21587.lcssa.i = phi float [ %i.cnl, %.preheader383.i ], [ %i.crs, %vec.epilog.middle.block ], [ %i.cqo, %middle.block ], [ %i.ctj, %._crit_edge1170.i.loopexit ]
  %.21584.lcssa.i = phi float [ %i.cnm, %.preheader383.i ], [ %i.crr, %vec.epilog.middle.block ], [ %i.cqn, %middle.block ], [ %i.cti, %._crit_edge1170.i.loopexit ]
  store float %.21587.lcssa.i, ptr %.231176.i, align 4, !tbaa !444
  %i.ctk = getelementptr inbounds nuw i8, ptr %.231176.i, i64 4
  store float %.21584.lcssa.i, ptr %i.ctk, align 4, !tbaa !444
  %i.ctl = getelementptr inbounds nuw i8, ptr %.231176.i, i64 8 ; 2 uses
  %i.ctm = add nuw nsw i32 %.417031175.i, 1       ; 2 uses
  %exitcond1798.not.i = icmp eq i32 %i.ctm, %6
  br i1 %exitcond1798.not.i, label %._crit_edge1178.i, label %.lr.ph1177.i, !llvm.loop !411

._crit_edge1178.i:                                ; preds = %._crit_edge1170.i, %.preheader388.i
  %.23.lcssa.i = phi ptr [ %.22.lcssa.i, %.preheader388.i ], [ %i.ctl, %._crit_edge1170.i ] ; 2 uses
  %i.ctn = getelementptr inbounds [2 x i8], ptr %.31182.i, i64 %i.amk ; 2 uses
  %i.cto = add nuw nsw i32 %.313891180.i, 2       ; 3 uses
  %i.ctp = or disjoint i32 %i.cto, 1
  %i.ctq = icmp slt i32 %i.ctp, %4
  %scevgep1795.i = getelementptr i8, ptr %indvars.iv1794.i, i64 %i.amv
  br i1 %i.ctq, label %.preheader392.i, label %.preheader382.i, !llvm.loop !412

.preheader381.i:                                  ; preds = %._crit_edge1421.i, %.preheader381.lr.ph.i
  %indvars.iv555 = phi ptr [ %scevgep556, %._crit_edge1421.i ], [ %scevgep554, %.preheader381.lr.ph.i ] ; 2 uses
  %.41425.i = phi ptr [ %i.dza, %._crit_edge1421.i ], [ %.3.lcssa.i, %.preheader381.lr.ph.i ] ; 28 uses
  %.241424.i = phi ptr [ %.29.lcssa.i, %._crit_edge1421.i ], [ %.18.lcssa.i, %.preheader381.lr.ph.i ] ; 2 uses
  %.413901423.i = phi i32 [ %i.dzb, %._crit_edge1421.i ], [ %.31389.lcssa.i, %.preheader381.lr.ph.i ]
  br i1 %i.bib, label %.lr.ph1225.i, label %.preheader380.i

.preheader380.i:                                  ; preds = %._crit_edge1218.i, %.preheader381.i
  %.01542.lcssa.i = phi ptr [ %.val8, %.preheader381.i ], [ %.31545.lcssa.i, %._crit_edge1218.i ] ; 2 uses
  %.01537.lcssa.i = phi i32 [ 0, %.preheader381.i ], [ %i.bih, %._crit_edge1218.i ] ; 3 uses
  %.25.lcssa.i = phi ptr [ %.241424.i, %.preheader381.i ], [ %i.cwv, %._crit_edge1218.i ] ; 2 uses
  %i.ctr = or disjoint i32 %.01537.lcssa.i, 7
  %i.cts = icmp slt i32 %i.ctr, %6
  br i1 %i.cts, label %.lr.ph1270.i, label %.preheader379.i

.lr.ph1225.i:                                     ; preds = %.preheader381.i, %._crit_edge1218.i
  %.251224.i = phi ptr [ %i.cwv, %._crit_edge1218.i ], [ %.241424.i, %.preheader381.i ] ; 3 uses
  %.015371223.i = phi i32 [ %i.cww, %._crit_edge1218.i ], [ 0, %.preheader381.i ]
  %.015421222.i = phi ptr [ %.31545.lcssa.i, %._crit_edge1218.i ], [ %.val8, %.preheader381.i ] ; 4 uses
  br i1 %.not1791.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph1225.i
  %i.ctt = load <16 x float>, ptr %.251224.i, align 1, !tbaa !17
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph1225.i
  %.01534.i = phi nsz <16 x float> [ %i.ctt, %bb.ap ], [ zeroinitializer, %.lr.ph1225.i ] ; 3 uses
  br i1 %i.bic, label %.lr.ph1191.i.preheader, label %.preheader376.i

.lr.ph1191.i.preheader:                           ; preds = %bb.aq
  br i1 %i.bix, label %.lr.ph1191.i.epil.preheader, label %.lr.ph1191.i

.preheader376.i.loopexit.unr-lcssa:               ; preds = %.lr.ph1191.i
  br i1 %lcmp.mod2210.not, label %.preheader376.i.loopexit, label %.lr.ph1191.i.epil.preheader

.lr.ph1191.i.epil.preheader:                      ; preds = %.preheader376.i.loopexit.unr-lcssa, %.lr.ph1191.i.preheader
  %.015311188.i.epil.init = phi ptr [ %.41425.i, %.lr.ph1191.i.preheader ], [ %i.cvw, %.preheader376.i.loopexit.unr-lcssa ]
  %.115351187.i.epil.init = phi <16 x float> [ %.01534.i, %.lr.ph1191.i.preheader ], [ %i.cvv, %.preheader376.i.loopexit.unr-lcssa ]
  %.115431186.i.epil.init = phi ptr [ %.015421222.i, %.lr.ph1191.i.preheader ], [ %i.cvx, %.preheader376.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2213)
  br label %.lr.ph1191.i.epil

.lr.ph1191.i.epil:                                ; preds = %.lr.ph1191.i.epil, %.lr.ph1191.i.epil.preheader
  %.015311188.i.epil = phi ptr [ %i.cua, %.lr.ph1191.i.epil ], [ %.015311188.i.epil.init, %.lr.ph1191.i.epil.preheader ] ; 2 uses
  %.115351187.i.epil = phi <16 x float> [ %i.ctz, %.lr.ph1191.i.epil ], [ %.115351187.i.epil.init, %.lr.ph1191.i.epil.preheader ]
  %.115431186.i.epil = phi ptr [ %i.cub, %.lr.ph1191.i.epil ], [ %.115431186.i.epil.init, %.lr.ph1191.i.epil.preheader ] ; 2 uses
  %epil.iter2209 = phi i32 [ %epil.iter2209.next, %.lr.ph1191.i.epil ], [ 0, %.lr.ph1191.i.epil.preheader ]
  %i.ctu = load i32, ptr %.015311188.i.epil, align 4, !tbaa !442
  %i.ctv = insertelement <16 x i32> poison, i32 %i.ctu, i64 0
  %i.ctw = shufflevector <16 x i32> %i.ctv, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ctx = load <32 x bfloat>, ptr %.115431186.i.epil, align 1, !tbaa !17
  %i.cty = bitcast <16 x i32> %i.ctw to <32 x bfloat>
  %i.ctz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512bf16.dpbf16ps.512(<16 x float> nofpclass(nan inf) %.115351187.i.epil, <32 x bfloat> nofpclass(nan inf) %i.cty, <32 x bfloat> nofpclass(nan inf) %i.ctx) ; 2 uses
  %i.cua = getelementptr inbounds nuw i8, ptr %.015311188.i.epil, i64 4 ; 2 uses
  %i.cub = getelementptr inbounds nuw i8, ptr %.115431186.i.epil, i64 64
  %epil.iter2209.next = add i32 %epil.iter2209, 1 ; 2 uses
  %epil.iter2209.cmp.not = icmp eq i32 %epil.iter2209.next, %xtraiter2208
  br i1 %epil.iter2209.cmp.not, label %.preheader376.i.loopexit, label %.lr.ph1191.i.epil, !llvm.loop !413

.preheader376.i.loopexit:                         ; preds = %.lr.ph1191.i.epil, %.preheader376.i.loopexit.unr-lcssa
  %.lcssa1736 = phi <16 x float> [ %i.cvv, %.preheader376.i.loopexit.unr-lcssa ], [ %i.ctz, %.lr.ph1191.i.epil ]
  %.lcssa = phi ptr [ %i.cvw, %.preheader376.i.loopexit.unr-lcssa ], [ %i.cua, %.lr.ph1191.i.epil ]
  %i.cuc = getelementptr i8, ptr %.015421222.i, i64 %i.biq
  %scevgep553 = getelementptr i8, ptr %i.cuc, i64 64
  br label %.preheader376.i

.preheader376.i:                                  ; preds = %.preheader376.i.loopexit, %bb.aq
  %.11543.lcssa.i = phi ptr [ %.015421222.i, %bb.aq ], [ %scevgep553, %.preheader376.i.loopexit ] ; 4 uses
  %.11535.lcssa.i = phi <16 x float> [ %.01534.i, %bb.aq ], [ %.lcssa1736, %.preheader376.i.loopexit ] ; 3 uses
  %.01531.lcssa.i = phi ptr [ %.41425.i, %bb.aq ], [ %.lcssa, %.preheader376.i.loopexit ] ; 3 uses
  %.01528.lcssa.i = phi i32 [ 0, %bb.aq ], [ %i.big, %.preheader376.i.loopexit ] ; 5 uses
  %i.cud = icmp slt i32 %.01528.lcssa.i, %8
  br i1 %i.cud, label %.lr.ph1217.i.preheader, label %._crit_edge1218.i

.lr.ph1217.i.preheader:                           ; preds = %.preheader376.i
  %i.cue = sub i32 %8, %.01528.lcssa.i
end_hunk_3
begin_hunk_4_@_ZN4ncnn40gemm_transB_packed_tile_bf16s_avx512bf16ERKNS_3MatES2_RS0_iiiiii:bb.a
  %xtraiter2226 = and i32 %i.cxm, 1
  %lcmp.mod2227.not = icmp eq i32 %xtraiter2226, 0
  br i1 %lcmp.mod2227.not, label %.lr.ph1260.i.prol.loopexit, label %.lr.ph1260.i.prol

.lr.ph1260.i.prol:                                ; preds = %.lr.ph1260.i.preheader
  %i.cxn = load i16, ptr %.01487.lcssa.i, align 2, !tbaa !24
  %i.cxo = zext i16 %i.cxn to i32
  %i.cxp = shl nuw i32 %i.cxo, 16
  %i.cxq = insertelement <8 x i32> poison, i32 %i.cxp, i64 0
  %i.cxr = bitcast <8 x i32> %i.cxq to <8 x float>
  %i.cxs = shufflevector <8 x float> %i.cxr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cxt = load <8 x bfloat>, ptr %.51547.lcssa.i, align 1, !tbaa !17
  %i.cxu = fpext fast <8 x bfloat> %i.cxt to <8 x float>
  %i.cxv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.cxs, <8 x float> nofpclass(nan inf) %i.cxu, <8 x float> nofpclass(nan inf) %.1371.lcssa.i) ; 2 uses
  %i.cxw = getelementptr inbounds nuw i8, ptr %.01487.lcssa.i, i64 2
  %i.cxx = getelementptr inbounds nuw i8, ptr %.51547.lcssa.i, i64 16 ; 2 uses
  %i.cxy = add nuw nsw i32 %.01484.lcssa.i, 1
  br label %.lr.ph1260.i.prol.loopexit

.lr.ph1260.i.prol.loopexit:                       ; preds = %.lr.ph1260.i.prol, %.lr.ph1260.i.preheader
  %.lcssa1743.unr = phi <8 x float> [ poison, %.lr.ph1260.i.preheader ], [ %i.cxv, %.lr.ph1260.i.prol ]
  %.lcssa1742.unr = phi ptr [ poison, %.lr.ph1260.i.preheader ], [ %i.cxx, %.lr.ph1260.i.prol ]
  %.214861258.i.unr = phi i32 [ %.01484.lcssa.i, %.lr.ph1260.i.preheader ], [ %i.cxy, %.lr.ph1260.i.prol ]
  %.214891257.i.unr = phi ptr [ %.01487.lcssa.i, %.lr.ph1260.i.preheader ], [ %i.cxw, %.lr.ph1260.i.prol ]
  %.715491256.i.unr = phi ptr [ %.51547.lcssa.i, %.lr.ph1260.i.preheader ], [ %i.cxx, %.lr.ph1260.i.prol ]
  %.23721255.i.unr = phi <8 x float> [ %.1371.lcssa.i, %.lr.ph1260.i.preheader ], [ %i.cxv, %.lr.ph1260.i.prol ]
  %i.cxz = icmp eq i32 %8, %.neg2252
  br i1 %i.cxz, label %._crit_edge1261.i, label %.lr.ph1260.i

.lr.ph1234.i:                                     ; preds = %.lr.ph1234.i.preheader, %.lr.ph1234.i
  %.014871231.i = phi ptr [ %i.cze, %.lr.ph1234.i ], [ %.41425.i, %.lr.ph1234.i.preheader ] ; 5 uses
  %.515471230.i = phi ptr [ %i.czf, %.lr.ph1234.i ], [ %.415461267.i, %.lr.ph1234.i.preheader ] ; 5 uses
  %.13711229.i = phi <8 x float> [ %i.czd, %.lr.ph1234.i ], [ %.0370.i, %.lr.ph1234.i.preheader ]
  %niter2225 = phi i32 [ %niter2225.next.3, %.lr.ph1234.i ], [ 0, %.lr.ph1234.i.preheader ]
  %i.cya = load i32, ptr %.014871231.i, align 4, !tbaa !442
  %i.cyb = insertelement <8 x i32> poison, i32 %i.cya, i64 0
  %i.cyc = shufflevector <8 x i32> %i.cyb, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cyd = load <16 x bfloat>, ptr %.515471230.i, align 1, !tbaa !17
  %i.cye = bitcast <8 x i32> %i.cyc to <16 x bfloat>
  %i.cyf = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %.13711229.i, <16 x bfloat> nofpclass(nan inf) %i.cye, <16 x bfloat> nofpclass(nan inf) %i.cyd)
  %i.cyg = getelementptr inbounds nuw i8, ptr %.014871231.i, i64 4
  %i.cyh = getelementptr inbounds nuw i8, ptr %.515471230.i, i64 32
  %i.cyi = load i32, ptr %i.cyg, align 4, !tbaa !442
  %i.cyj = insertelement <8 x i32> poison, i32 %i.cyi, i64 0
  %i.cyk = shufflevector <8 x i32> %i.cyj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cyl = load <16 x bfloat>, ptr %i.cyh, align 1, !tbaa !17
  %i.cym = bitcast <8 x i32> %i.cyk to <16 x bfloat>
  %i.cyn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.cyf, <16 x bfloat> nofpclass(nan inf) %i.cym, <16 x bfloat> nofpclass(nan inf) %i.cyl)
  %i.cyo = getelementptr inbounds nuw i8, ptr %.014871231.i, i64 8
  %i.cyp = getelementptr inbounds nuw i8, ptr %.515471230.i, i64 64
  %i.cyq = load i32, ptr %i.cyo, align 4, !tbaa !442
  %i.cyr = insertelement <8 x i32> poison, i32 %i.cyq, i64 0
  %i.cys = shufflevector <8 x i32> %i.cyr, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.cyt = load <16 x bfloat>, ptr %i.cyp, align 1, !tbaa !17
  %i.cyu = bitcast <8 x i32> %i.cys to <16 x bfloat>
  %i.cyv = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.cyn, <16 x bfloat> nofpclass(nan inf) %i.cyu, <16 x bfloat> nofpclass(nan inf) %i.cyt)
  %i.cyw = getelementptr inbounds nuw i8, ptr %.014871231.i, i64 12
  %i.cyx = getelementptr inbounds nuw i8, ptr %.515471230.i, i64 96
  %i.cyy = load i32, ptr %i.cyw, align 4, !tbaa !442
  %i.cyz = insertelement <8 x i32> poison, i32 %i.cyy, i64 0
  %i.cza = shufflevector <8 x i32> %i.cyz, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.czb = load <16 x bfloat>, ptr %i.cyx, align 1, !tbaa !17
  %i.czc = bitcast <8 x i32> %i.cza to <16 x bfloat>
  %i.czd = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx512bf16.dpbf16ps.256(<8 x float> nofpclass(nan inf) %i.cyv, <16 x bfloat> nofpclass(nan inf) %i.czc, <16 x bfloat> nofpclass(nan inf) %i.czb) ; 3 uses
  %i.cze = getelementptr inbounds nuw i8, ptr %.014871231.i, i64 16 ; 3 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %.515471230.i, i64 128 ; 2 uses
  %niter2225.next.3 = add i32 %niter2225, 4       ; 2 uses
  %niter2225.ncmp.3.not = icmp eq i32 %niter2225.next.3, %unroll_iter2224
  br i1 %niter2225.ncmp.3.not, label %.preheader375.loopexit.i.unr-lcssa, label %.lr.ph1234.i, !llvm.loop !418

.lr.ph1260.i:                                     ; preds = %.lr.ph1260.i.prol.loopexit, %.lr.ph1260.i
  %.214861258.i = phi i32 [ %i.dac, %.lr.ph1260.i ], [ %.214861258.i.unr, %.lr.ph1260.i.prol.loopexit ]
  %.214891257.i = phi ptr [ %i.daa, %.lr.ph1260.i ], [ %.214891257.i.unr, %.lr.ph1260.i.prol.loopexit ] ; 3 uses
  %.715491256.i = phi ptr [ %i.dab, %.lr.ph1260.i ], [ %.715491256.i.unr, %.lr.ph1260.i.prol.loopexit ] ; 3 uses
  %.23721255.i = phi <8 x float> [ %i.czz, %.lr.ph1260.i ], [ %.23721255.i.unr, %.lr.ph1260.i.prol.loopexit ]
  %i.czg = load i16, ptr %.214891257.i, align 2, !tbaa !24
  %i.czh = zext i16 %i.czg to i32
  %i.czi = shl nuw i32 %i.czh, 16
  %i.czj = insertelement <8 x i32> poison, i32 %i.czi, i64 0
  %i.czk = bitcast <8 x i32> %i.czj to <8 x float>
  %i.czl = shufflevector <8 x float> %i.czk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.czm = load <8 x bfloat>, ptr %.715491256.i, align 1, !tbaa !17
  %i.czn = fpext fast <8 x bfloat> %i.czm to <8 x float>
  %i.czo = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.czl, <8 x float> nofpclass(nan inf) %i.czn, <8 x float> nofpclass(nan inf) %.23721255.i)
  %i.czp = getelementptr inbounds nuw i8, ptr %.214891257.i, i64 2
  %i.czq = getelementptr inbounds nuw i8, ptr %.715491256.i, i64 16
  %i.czr = load i16, ptr %i.czp, align 2, !tbaa !24
  %i.czs = zext i16 %i.czr to i32
  %i.czt = shl nuw i32 %i.czs, 16
  %i.czu = insertelement <8 x i32> poison, i32 %i.czt, i64 0
  %i.czv = bitcast <8 x i32> %i.czu to <8 x float>
  %i.czw = shufflevector <8 x float> %i.czv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.czx = load <8 x bfloat>, ptr %i.czq, align 1, !tbaa !17
  %i.czy = fpext fast <8 x bfloat> %i.czx to <8 x float>
  %i.czz = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.czw, <8 x float> nofpclass(nan inf) %i.czy, <8 x float> nofpclass(nan inf) %i.czo) ; 2 uses
  %i.daa = getelementptr inbounds nuw i8, ptr %.214891257.i, i64 4
  %i.dab = getelementptr inbounds nuw i8, ptr %.715491256.i, i64 32 ; 2 uses
  %i.dac = add nuw nsw i32 %.214861258.i, 2       ; 2 uses
  %exitcond1801.not.i.1 = icmp eq i32 %i.dac, %8
  br i1 %exitcond1801.not.i.1, label %._crit_edge1261.i, label %.lr.ph1260.i, !llvm.loop !419

._crit_edge1261.i:                                ; preds = %.lr.ph1260.i.prol.loopexit, %.lr.ph1260.i, %.preheader375.i
  %.2372.lcssa.i = phi <8 x float> [ %.1371.lcssa.i, %.preheader375.i ], [ %.lcssa1743.unr, %.lr.ph1260.i.prol.loopexit ], [ %i.czz, %.lr.ph1260.i ]
  %.71549.lcssa.i = phi ptr [ %.51547.lcssa.i, %.preheader375.i ], [ %.lcssa1742.unr, %.lr.ph1260.i.prol.loopexit ], [ %i.dab, %.lr.ph1260.i ] ; 2 uses
  store <8 x float> %.2372.lcssa.i, ptr %.261269.i, align 1, !tbaa !17
  %i.dad = getelementptr inbounds nuw i8, ptr %.261269.i, i64 32 ; 2 uses
  %i.dae = add nuw nsw i32 %.115381268.i, 8       ; 3 uses
  %i.daf = or disjoint i32 %i.dae, 7
  %i.dag = icmp slt i32 %i.daf, %6
  br i1 %i.dag, label %.lr.ph1270.i, label %.preheader379.i, !llvm.loop !420

.preheader378.i:                                  ; preds = %._crit_edge1306.i, %.preheader379.i
  %.81550.lcssa.i = phi ptr [ %.41546.lcssa.i, %.preheader379.i ], [ %.111553.lcssa.i, %._crit_edge1306.i ] ; 2 uses
  %.21539.lcssa.i = phi i32 [ %.11538.lcssa.i, %.preheader379.i ], [ %i.ddu, %._crit_edge1306.i ] ; 3 uses
  %.27.lcssa.i = phi ptr [ %.26.lcssa.i, %.preheader379.i ], [ %i.ddt, %._crit_edge1306.i ] ; 2 uses
  %i.dah = or disjoint i32 %.21539.lcssa.i, 1
  %i.dai = icmp slt i32 %i.dah, %6
  br i1 %i.dai, label %.lr.ph1375.i.preheader, label %.preheader377.i

.lr.ph1375.i.preheader:                           ; preds = %.preheader378.i
  %i.daj = getelementptr i8, ptr %.41425.i, i64 %i.bjd ; 2 uses
  %i.dak = getelementptr i8, ptr %.41425.i, i64 %i.bjh ; 2 uses
  br label %.lr.ph1375.i

.lr.ph1315.i:                                     ; preds = %.preheader379.i, %._crit_edge1306.i
  %.271314.i = phi ptr [ %i.ddt, %._crit_edge1306.i ], [ %.26.lcssa.i, %.preheader379.i ] ; 3 uses
  %.215391313.i = phi i32 [ %i.ddu, %._crit_edge1306.i ], [ %.11538.lcssa.i, %.preheader379.i ]
  %.815501312.i = phi ptr [ %.111553.lcssa.i, %._crit_edge1306.i ], [ %.41546.lcssa.i, %.preheader379.i ] ; 4 uses
  br i1 %.not1791.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph1315.i
  %i.dal = load <4 x float>, ptr %.271314.i, align 1, !tbaa !17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph1315.i
  %.0318.i = phi nsz <4 x float> [ zeroinitializer, %.lr.ph1315.i ], [ %i.dal, %bb.at ] ; 3 uses
  br i1 %i.bic, label %.lr.ph1279.i.preheader, label %.preheader374.i

.lr.ph1279.i.preheader:                           ; preds = %bb.au
  br i1 %i.biz, label %.lr.ph1279.i.epil.preheader, label %.lr.ph1279.i

.preheader374.loopexit.i.unr-lcssa:               ; preds = %.lr.ph1279.i
  br i1 %lcmp.mod2230.not, label %.preheader374.loopexit.i, label %.lr.ph1279.i.epil.preheader

.lr.ph1279.i.epil.preheader:                      ; preds = %.preheader374.loopexit.i.unr-lcssa, %.lr.ph1279.i.preheader
  %.014751276.i.epil.init = phi ptr [ %.41425.i, %.lr.ph1279.i.preheader ], [ %i.dcq, %.preheader374.loopexit.i.unr-lcssa ]
  %.915511275.i.epil.init = phi ptr [ %.815501312.i, %.lr.ph1279.i.preheader ], [ %i.dcr, %.preheader374.loopexit.i.unr-lcssa ]
  %.13191274.i.epil.init = phi <4 x float> [ %.0318.i, %.lr.ph1279.i.preheader ], [ %i.dcp, %.preheader374.loopexit.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2233)
  br label %.lr.ph1279.i.epil

.lr.ph1279.i.epil:                                ; preds = %.lr.ph1279.i.epil, %.lr.ph1279.i.epil.preheader
  %.014751276.i.epil = phi ptr [ %i.das, %.lr.ph1279.i.epil ], [ %.014751276.i.epil.init, %.lr.ph1279.i.epil.preheader ] ; 2 uses
  %.915511275.i.epil = phi ptr [ %i.dat, %.lr.ph1279.i.epil ], [ %.915511275.i.epil.init, %.lr.ph1279.i.epil.preheader ] ; 2 uses
  %.13191274.i.epil = phi <4 x float> [ %i.dar, %.lr.ph1279.i.epil ], [ %.13191274.i.epil.init, %.lr.ph1279.i.epil.preheader ]
  %epil.iter2229 = phi i32 [ %epil.iter2229.next, %.lr.ph1279.i.epil ], [ 0, %.lr.ph1279.i.epil.preheader ]
  %i.dam = load i32, ptr %.014751276.i.epil, align 4, !tbaa !442
  %i.dan = insertelement <4 x i32> poison, i32 %i.dam, i64 0
  %i.dao = load <8 x bfloat>, ptr %.915511275.i.epil, align 1, !tbaa !17
  %i.dap = bitcast <4 x i32> %i.dan to <8 x bfloat>
  %i.daq = shufflevector <8 x bfloat> %i.dap, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dar = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13191274.i.epil, <8 x bfloat> nofpclass(nan inf) %i.daq, <8 x bfloat> nofpclass(nan inf) %i.dao) ; 2 uses
  %i.das = getelementptr inbounds nuw i8, ptr %.014751276.i.epil, i64 4 ; 2 uses
  %i.dat = getelementptr inbounds nuw i8, ptr %.915511275.i.epil, i64 16
  %epil.iter2229.next = add i32 %epil.iter2229, 1 ; 2 uses
  %epil.iter2229.cmp.not = icmp eq i32 %epil.iter2229.next, %xtraiter2228
  br i1 %epil.iter2229.cmp.not, label %.preheader374.loopexit.i, label %.lr.ph1279.i.epil, !llvm.loop !421

.preheader374.loopexit.i:                         ; preds = %.lr.ph1279.i.epil, %.preheader374.loopexit.i.unr-lcssa
  %.lcssa1747 = phi <4 x float> [ %i.dcp, %.preheader374.loopexit.i.unr-lcssa ], [ %i.dar, %.lr.ph1279.i.epil ]
  %.lcssa1746 = phi ptr [ %i.dcq, %.preheader374.loopexit.i.unr-lcssa ], [ %i.das, %.lr.ph1279.i.epil ]
  %i.dau = getelementptr i8, ptr %.815501312.i, i64 %i.bil
  %scevgep1802.i = getelementptr i8, ptr %i.dau, i64 16
  br label %.preheader374.i

.preheader374.i:                                  ; preds = %.preheader374.loopexit.i, %bb.au
  %.1319.lcssa.i = phi <4 x float> [ %.0318.i, %bb.au ], [ %.lcssa1747, %.preheader374.loopexit.i ] ; 3 uses
  %.91551.lcssa.i = phi ptr [ %.815501312.i, %bb.au ], [ %scevgep1802.i, %.preheader374.loopexit.i ] ; 4 uses
  %.01475.lcssa.i = phi ptr [ %.41425.i, %bb.au ], [ %.lcssa1746, %.preheader374.loopexit.i ] ; 3 uses
  %.01472.lcssa.i = phi i32 [ 0, %bb.au ], [ %i.big, %.preheader374.loopexit.i ] ; 5 uses
  %i.dav = icmp slt i32 %.01472.lcssa.i, %8
  br i1 %i.dav, label %.lr.ph1305.i.preheader, label %._crit_edge1306.i

.lr.ph1305.i.preheader:                           ; preds = %.preheader374.i
  %i.daw = sub i32 %8, %.01472.lcssa.i
  %.neg2253 = add i32 %.01472.lcssa.i, 1
  %xtraiter2236 = and i32 %i.daw, 1
  %lcmp.mod2237.not = icmp eq i32 %xtraiter2236, 0
  br i1 %lcmp.mod2237.not, label %.lr.ph1305.i.prol.loopexit, label %.lr.ph1305.i.prol

.lr.ph1305.i.prol:                                ; preds = %.lr.ph1305.i.preheader
  %i.dax = load i16, ptr %.01475.lcssa.i, align 2, !tbaa !24
  %i.day = zext i16 %i.dax to i32
  %i.daz = shl nuw i32 %i.day, 16
  %i.dba = insertelement <4 x i32> poison, i32 %i.daz, i64 0
  %i.dbb = bitcast <4 x i32> %i.dba to <4 x float>
  %i.dbc = shufflevector <4 x float> %i.dbb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dbd = load i64, ptr %.91551.lcssa.i, align 1, !tbaa !17
  %i.dbe = insertelement <2 x i64> poison, i64 %i.dbd, i64 0
  %i.dbf = bitcast <2 x i64> %i.dbe to <8 x i16>
  %53 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbg = bitcast <8 x i16> %53 to <4 x float>
  %i.dbh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dbc, <4 x float> nofpclass(nan inf) %i.dbg, <4 x float> nofpclass(nan inf) %.1319.lcssa.i) ; 2 uses
  %i.dbi = getelementptr inbounds nuw i8, ptr %.01475.lcssa.i, i64 2
  %i.dbj = getelementptr inbounds nuw i8, ptr %.91551.lcssa.i, i64 8 ; 2 uses
  %i.dbk = add nuw nsw i32 %.01472.lcssa.i, 1
  br label %.lr.ph1305.i.prol.loopexit

.lr.ph1305.i.prol.loopexit:                       ; preds = %.lr.ph1305.i.prol, %.lr.ph1305.i.preheader
  %.lcssa1749.unr = phi <4 x float> [ poison, %.lr.ph1305.i.preheader ], [ %i.dbh, %.lr.ph1305.i.prol ]
  %.lcssa1748.unr = phi ptr [ poison, %.lr.ph1305.i.preheader ], [ %i.dbj, %.lr.ph1305.i.prol ]
  %.214741303.i.unr = phi i32 [ %.01472.lcssa.i, %.lr.ph1305.i.preheader ], [ %i.dbk, %.lr.ph1305.i.prol ]
  %.214771302.i.unr = phi ptr [ %.01475.lcssa.i, %.lr.ph1305.i.preheader ], [ %i.dbi, %.lr.ph1305.i.prol ]
  %.1115531301.i.unr = phi ptr [ %.91551.lcssa.i, %.lr.ph1305.i.preheader ], [ %i.dbj, %.lr.ph1305.i.prol ]
  %.23201300.i.unr = phi <4 x float> [ %.1319.lcssa.i, %.lr.ph1305.i.preheader ], [ %i.dbh, %.lr.ph1305.i.prol ]
  %i.dbl = icmp eq i32 %8, %.neg2253
  br i1 %i.dbl, label %._crit_edge1306.i, label %.lr.ph1305.i

.lr.ph1279.i:                                     ; preds = %.lr.ph1279.i.preheader, %.lr.ph1279.i
  %.014751276.i = phi ptr [ %i.dcq, %.lr.ph1279.i ], [ %.41425.i, %.lr.ph1279.i.preheader ] ; 5 uses
  %.915511275.i = phi ptr [ %i.dcr, %.lr.ph1279.i ], [ %.815501312.i, %.lr.ph1279.i.preheader ] ; 5 uses
  %.13191274.i = phi <4 x float> [ %i.dcp, %.lr.ph1279.i ], [ %.0318.i, %.lr.ph1279.i.preheader ]
  %niter2235 = phi i32 [ %niter2235.next.3, %.lr.ph1279.i ], [ 0, %.lr.ph1279.i.preheader ]
  %i.dbm = load i32, ptr %.014751276.i, align 4, !tbaa !442
  %i.dbn = insertelement <4 x i32> poison, i32 %i.dbm, i64 0
  %i.dbo = load <8 x bfloat>, ptr %.915511275.i, align 1, !tbaa !17
  %i.dbp = bitcast <4 x i32> %i.dbn to <8 x bfloat>
  %i.dbq = shufflevector <8 x bfloat> %i.dbp, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dbr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %.13191274.i, <8 x bfloat> nofpclass(nan inf) %i.dbq, <8 x bfloat> nofpclass(nan inf) %i.dbo)
  %i.dbs = getelementptr inbounds nuw i8, ptr %.014751276.i, i64 4
  %i.dbt = getelementptr inbounds nuw i8, ptr %.915511275.i, i64 16
  %i.dbu = load i32, ptr %i.dbs, align 4, !tbaa !442
  %i.dbv = insertelement <4 x i32> poison, i32 %i.dbu, i64 0
  %i.dbw = load <8 x bfloat>, ptr %i.dbt, align 1, !tbaa !17
  %i.dbx = bitcast <4 x i32> %i.dbv to <8 x bfloat>
  %i.dby = shufflevector <8 x bfloat> %i.dbx, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dbz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.dbr, <8 x bfloat> nofpclass(nan inf) %i.dby, <8 x bfloat> nofpclass(nan inf) %i.dbw)
  %i.dca = getelementptr inbounds nuw i8, ptr %.014751276.i, i64 8
  %i.dcb = getelementptr inbounds nuw i8, ptr %.915511275.i, i64 32
  %i.dcc = load i32, ptr %i.dca, align 4, !tbaa !442
  %i.dcd = insertelement <4 x i32> poison, i32 %i.dcc, i64 0
  %i.dce = load <8 x bfloat>, ptr %i.dcb, align 1, !tbaa !17
  %i.dcf = bitcast <4 x i32> %i.dcd to <8 x bfloat>
  %i.dcg = shufflevector <8 x bfloat> %i.dcf, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dch = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.dbz, <8 x bfloat> nofpclass(nan inf) %i.dcg, <8 x bfloat> nofpclass(nan inf) %i.dce)
  %i.dci = getelementptr inbounds nuw i8, ptr %.014751276.i, i64 12
  %i.dcj = getelementptr inbounds nuw i8, ptr %.915511275.i, i64 48
  %i.dck = load i32, ptr %i.dci, align 4, !tbaa !442
  %i.dcl = insertelement <4 x i32> poison, i32 %i.dck, i64 0
  %i.dcm = load <8 x bfloat>, ptr %i.dcj, align 1, !tbaa !17
  %i.dcn = bitcast <4 x i32> %i.dcl to <8 x bfloat>
  %i.dco = shufflevector <8 x bfloat> %i.dcn, <8 x bfloat> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dcp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.avx512bf16.dpbf16ps.128(<4 x float> nofpclass(nan inf) %i.dch, <8 x bfloat> nofpclass(nan inf) %i.dco, <8 x bfloat> nofpclass(nan inf) %i.dcm) ; 3 uses
  %i.dcq = getelementptr inbounds nuw i8, ptr %.014751276.i, i64 16 ; 3 uses
  %i.dcr = getelementptr inbounds nuw i8, ptr %.915511275.i, i64 64 ; 2 uses
  %niter2235.next.3 = add i32 %niter2235, 4       ; 2 uses
  %niter2235.ncmp.3.not = icmp eq i32 %niter2235.next.3, %unroll_iter2234
  br i1 %niter2235.ncmp.3.not, label %.preheader374.loopexit.i.unr-lcssa, label %.lr.ph1279.i, !llvm.loop !422

.lr.ph1305.i:                                     ; preds = %.lr.ph1305.i.prol.loopexit, %.lr.ph1305.i
  %.214741303.i = phi i32 [ %i.dds, %.lr.ph1305.i ], [ %.214741303.i.unr, %.lr.ph1305.i.prol.loopexit ]
  %.214771302.i = phi ptr [ %i.ddq, %.lr.ph1305.i ], [ %.214771302.i.unr, %.lr.ph1305.i.prol.loopexit ] ; 3 uses
  %.1115531301.i = phi ptr [ %i.ddr, %.lr.ph1305.i ], [ %.1115531301.i.unr, %.lr.ph1305.i.prol.loopexit ] ; 3 uses
  %.23201300.i = phi <4 x float> [ %i.ddp, %.lr.ph1305.i ], [ %.23201300.i.unr, %.lr.ph1305.i.prol.loopexit ]
  %i.dcs = load i16, ptr %.214771302.i, align 2, !tbaa !24
  %i.dct = zext i16 %i.dcs to i32
  %i.dcu = shl nuw i32 %i.dct, 16
  %i.dcv = insertelement <4 x i32> poison, i32 %i.dcu, i64 0
  %i.dcw = bitcast <4 x i32> %i.dcv to <4 x float>
  %i.dcx = shufflevector <4 x float> %i.dcw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dcy = load i64, ptr %.1115531301.i, align 1, !tbaa !17
  %i.dcz = insertelement <2 x i64> poison, i64 %i.dcy, i64 0
  %i.dda = bitcast <2 x i64> %i.dcz to <8 x i16>
  %54 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dda, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddb = bitcast <8 x i16> %54 to <4 x float>
  %i.ddc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dcx, <4 x float> nofpclass(nan inf) %i.ddb, <4 x float> nofpclass(nan inf) %.23201300.i)
  %i.ddd = getelementptr inbounds nuw i8, ptr %.214771302.i, i64 2
  %i.dde = getelementptr inbounds nuw i8, ptr %.1115531301.i, i64 8
  %i.ddf = load i16, ptr %i.ddd, align 2, !tbaa !24
  %i.ddg = zext i16 %i.ddf to i32
  %i.ddh = shl nuw i32 %i.ddg, 16
  %i.ddi = insertelement <4 x i32> poison, i32 %i.ddh, i64 0
  %i.ddj = bitcast <4 x i32> %i.ddi to <4 x float>
  %i.ddk = shufflevector <4 x float> %i.ddj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ddl = load i64, ptr %i.dde, align 1, !tbaa !17
  %i.ddm = insertelement <2 x i64> poison, i64 %i.ddl, i64 0
  %i.ddn = bitcast <2 x i64> %i.ddm to <8 x i16>
  %55 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddo = bitcast <8 x i16> %55 to <4 x float>
  %i.ddp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ddk, <4 x float> nofpclass(nan inf) %i.ddo, <4 x float> nofpclass(nan inf) %i.ddc) ; 2 uses
  %i.ddq = getelementptr inbounds nuw i8, ptr %.214771302.i, i64 4
  %i.ddr = getelementptr inbounds nuw i8, ptr %.1115531301.i, i64 16 ; 2 uses
  %i.dds = add nuw nsw i32 %.214741303.i, 2       ; 2 uses
  %exitcond1803.not.i.1 = icmp eq i32 %i.dds, %8
  br i1 %exitcond1803.not.i.1, label %._crit_edge1306.i, label %.lr.ph1305.i, !llvm.loop !423

._crit_edge1306.i:                                ; preds = %.lr.ph1305.i.prol.loopexit, %.lr.ph1305.i, %.preheader374.i
  %.2320.lcssa.i = phi <4 x float> [ %.1319.lcssa.i, %.preheader374.i ], [ %.lcssa1749.unr, %.lr.ph1305.i.prol.loopexit ], [ %i.ddp, %.lr.ph1305.i ]
  %.111553.lcssa.i = phi ptr [ %.91551.lcssa.i, %.preheader374.i ], [ %.lcssa1748.unr, %.lr.ph1305.i.prol.loopexit ], [ %i.ddr, %.lr.ph1305.i ] ; 2 uses
  store <4 x float> %.2320.lcssa.i, ptr %.271314.i, align 1, !tbaa !17
  %i.ddt = getelementptr inbounds nuw i8, ptr %.271314.i, i64 16 ; 2 uses
  %i.ddu = add nuw nsw i32 %.215391313.i, 4       ; 3 uses
  %i.ddv = or disjoint i32 %i.ddu, 3
  %i.ddw = icmp slt i32 %i.ddv, %6
  br i1 %i.ddw, label %.lr.ph1315.i, label %.preheader378.i, !llvm.loop !424

.preheader377.i:                                  ; preds = %._crit_edge1362.i, %.preheader378.i
  %.121554.lcssa.i = phi ptr [ %.81550.lcssa.i, %.preheader378.i ], [ %.151557.lcssa.i, %._crit_edge1362.i ]
  %.31540.lcssa.i = phi i32 [ %.21539.lcssa.i, %.preheader378.i ], [ %i.dqo, %._crit_edge1362.i ] ; 2 uses
  %.28.lcssa.i = phi ptr [ %.27.lcssa.i, %.preheader378.i ], [ %i.dqn, %._crit_edge1362.i ] ; 2 uses
  %i.ddx = icmp slt i32 %.31540.lcssa.i, %6
  br i1 %i.ddx, label %.lr.ph1420.i.preheader, label %._crit_edge1421.i

.lr.ph1420.i.preheader:                           ; preds = %.preheader377.i
  %i.ddy = getelementptr i8, ptr %.41425.i, i64 %i.bjm
  %i.ddz = getelementptr i8, ptr %.41425.i, i64 %i.bjp
  br label %.lr.ph1420.i

.lr.ph1375.i:                                     ; preds = %.lr.ph1375.i.preheader, %._crit_edge1362.i
  %.281374.i = phi ptr [ %i.dqn, %._crit_edge1362.i ], [ %.27.lcssa.i, %.lr.ph1375.i.preheader ] ; 4 uses
  %.315401373.i = phi i32 [ %i.dqo, %._crit_edge1362.i ], [ %.21539.lcssa.i, %.lr.ph1375.i.preheader ]
  %.1215541372.i = phi ptr [ %.151557.lcssa.i, %._crit_edge1362.i ], [ %.81550.lcssa.i, %.lr.ph1375.i.preheader ] ; 10 uses
  br i1 %.not1791.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph1375.i
  %i.dea = load <2 x float>, ptr %.281374.i, align 4, !tbaa !444
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph1375.i
  %i.deb = phi <2 x float> [ %i.dea, %bb.av ], [ zeroinitializer, %.lr.ph1375.i ] ; 5 uses
  br i1 %i.bic, label %iter.check1665, label %.preheader373.i

iter.check1665:                                   ; preds = %bb.aw
  br i1 %min.iters.check1601, label %.lr.ph1325.i.preheader, label %vector.main.loop.iter.check1602

vector.main.loop.iter.check1602:                  ; preds = %iter.check1665
  %i.dec = extractelement <2 x float> %i.deb, i64 0
  %i.ded = extractelement <2 x float> %i.deb, i64 1
  br i1 %min.iters.check1603, label %vec.epilog.ph1669, label %vector.ph1604

vector.ph1604:                                    ; preds = %vector.main.loop.iter.check1602
  %i.dee = getelementptr i8, ptr %.1215541372.i, i64 %i.bje
  %i.def = shufflevector <2 x float> %i.deb, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %56 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.def, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.deg = shufflevector <16 x float> %i.def, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1606

vector.body1606:                                  ; preds = %vector.ph1604, %vector.body1606
  %index1607 = phi i64 [ 0, %vector.ph1604 ], [ %index.next1656, %vector.body1606 ] ; 3 uses
  %vec.phi1608 = phi <16 x float> [ %56, %vector.ph1604 ], [ %i.dip, %vector.body1606 ]
  %vec.phi1609 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.diq, %vector.body1606 ]
  %vec.phi1610 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.dir, %vector.body1606 ]
  %vec.phi1611 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.dis, %vector.body1606 ]
  %vec.phi1612 = phi <16 x float> [ %i.deg, %vector.ph1604 ], [ %i.dhz, %vector.body1606 ]
  %vec.phi1613 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.dia, %vector.body1606 ]
  %vec.phi1614 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.dib, %vector.body1606 ]
  %vec.phi1615 = phi <16 x float> [ zeroinitializer, %vector.ph1604 ], [ %i.dic, %vector.body1606 ]
  %i.deh = shl i64 %index1607, 2                  ; 4 uses
  %next.gep1616 = getelementptr i8, ptr %.41425.i, i64 %i.deh
  %i.dei = getelementptr i8, ptr %.41425.i, i64 %i.deh
  %next.gep1617 = getelementptr i8, ptr %i.dei, i64 64
  %i.dej = getelementptr i8, ptr %.41425.i, i64 %i.deh
  %next.gep1618 = getelementptr i8, ptr %i.dej, i64 128
  %i.dek = getelementptr i8, ptr %.41425.i, i64 %i.deh
  %next.gep1619 = getelementptr i8, ptr %i.dek, i64 192
  %i.del = shl i64 %index1607, 3                  ; 4 uses
  %next.gep1620 = getelementptr i8, ptr %.1215541372.i, i64 %i.del
  %i.dem = getelementptr i8, ptr %.1215541372.i, i64 %i.del
  %next.gep1621 = getelementptr i8, ptr %i.dem, i64 128
  %i.den = getelementptr i8, ptr %.1215541372.i, i64 %i.del
  %next.gep1622 = getelementptr i8, ptr %i.den, i64 256
  %i.deo = getelementptr i8, ptr %.1215541372.i, i64 %i.del
  %next.gep1623 = getelementptr i8, ptr %i.deo, i64 384
  %wide.vec1624 = load <32 x i16>, ptr %next.gep1616, align 2, !tbaa !24
  %i.dep = freeze <32 x i16> %wide.vec1624        ; 2 uses
  %i.deq = bitcast <32 x i16> %i.dep to <16 x i32>
  %i.der = bitcast <32 x i16> %i.dep to <16 x i32>
  %i.des = and <16 x i32> %i.der, splat (i32 -65536)
  %wide.vec1627 = load <32 x i16>, ptr %next.gep1617, align 2, !tbaa !24
  %i.det = freeze <32 x i16> %wide.vec1627        ; 2 uses
  %i.deu = bitcast <32 x i16> %i.det to <16 x i32>
  %i.dev = bitcast <32 x i16> %i.det to <16 x i32>
  %i.dew = and <16 x i32> %i.dev, splat (i32 -65536)
  %wide.vec1630 = load <32 x i16>, ptr %next.gep1618, align 2, !tbaa !24
  %i.dex = freeze <32 x i16> %wide.vec1630        ; 2 uses
  %i.dey = bitcast <32 x i16> %i.dex to <16 x i32>
  %i.dez = bitcast <32 x i16> %i.dex to <16 x i32>
  %i.dfa = and <16 x i32> %i.dez, splat (i32 -65536)
  %wide.vec1633 = load <32 x i16>, ptr %next.gep1619, align 2, !tbaa !24
  %i.dfb = freeze <32 x i16> %wide.vec1633        ; 2 uses
  %i.dfc = bitcast <32 x i16> %i.dfb to <16 x i32>
  %i.dfd = bitcast <32 x i16> %i.dfb to <16 x i32>
  %i.dfe = and <16 x i32> %i.dfd, splat (i32 -65536)
  %i.dff = shl <16 x i32> %i.deq, splat (i32 16)
  %i.dfg = shl <16 x i32> %i.deu, splat (i32 16)
  %i.dfh = shl <16 x i32> %i.dey, splat (i32 16)
  %i.dfi = shl <16 x i32> %i.dfc, splat (i32 16)
  %i.dfj = bitcast <16 x i32> %i.dff to <16 x float> ; 2 uses
  %i.dfk = bitcast <16 x i32> %i.dfg to <16 x float> ; 2 uses
  %i.dfl = bitcast <16 x i32> %i.dfh to <16 x float> ; 2 uses
  %i.dfm = bitcast <16 x i32> %i.dfi to <16 x float> ; 2 uses
  %i.dfn = bitcast <16 x i32> %i.des to <16 x float> ; 2 uses
  %i.dfo = bitcast <16 x i32> %i.dew to <16 x float> ; 2 uses
  %i.dfp = bitcast <16 x i32> %i.dfa to <16 x float> ; 2 uses
  %i.dfq = bitcast <16 x i32> %i.dfe to <16 x float> ; 2 uses
  %wide.vec1636 = load <64 x i16>, ptr %next.gep1620, align 2, !tbaa !24 ; 4 uses
  %strided.vec1637 = shufflevector <64 x i16> %wide.vec1636, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1638 = shufflevector <64 x i16> %wide.vec1636, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1639 = shufflevector <64 x i16> %wide.vec1636, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1640 = shufflevector <64 x i16> %wide.vec1636, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1641 = load <64 x i16>, ptr %next.gep1621, align 2, !tbaa !24 ; 4 uses
  %strided.vec1642 = shufflevector <64 x i16> %wide.vec1641, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1643 = shufflevector <64 x i16> %wide.vec1641, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1644 = shufflevector <64 x i16> %wide.vec1641, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1645 = shufflevector <64 x i16> %wide.vec1641, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1646 = load <64 x i16>, ptr %next.gep1622, align 2, !tbaa !24 ; 4 uses
  %strided.vec1647 = shufflevector <64 x i16> %wide.vec1646, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1648 = shufflevector <64 x i16> %wide.vec1646, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1649 = shufflevector <64 x i16> %wide.vec1646, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1650 = shufflevector <64 x i16> %wide.vec1646, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %wide.vec1651 = load <64 x i16>, ptr %next.gep1623, align 2, !tbaa !24 ; 4 uses
  %strided.vec1652 = shufflevector <64 x i16> %wide.vec1651, <64 x i16> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60>
  %strided.vec1653 = shufflevector <64 x i16> %wide.vec1651, <64 x i16> poison, <16 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %strided.vec1654 = shufflevector <64 x i16> %wide.vec1651, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %strided.vec1655 = shufflevector <64 x i16> %wide.vec1651, <64 x i16> poison, <16 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31, i32 35, i32 39, i32 43, i32 47, i32 51, i32 55, i32 59, i32 63>
  %i.dfr = zext <16 x i16> %strided.vec1637 to <16 x i32>
  %i.dfs = zext <16 x i16> %strided.vec1642 to <16 x i32>
  %i.dft = zext <16 x i16> %strided.vec1647 to <16 x i32>
  %i.dfu = zext <16 x i16> %strided.vec1652 to <16 x i32>
  %i.dfv = shl nuw <16 x i32> %i.dfr, splat (i32 16)
  %i.dfw = shl nuw <16 x i32> %i.dfs, splat (i32 16)
  %i.dfx = shl nuw <16 x i32> %i.dft, splat (i32 16)
  %i.dfy = shl nuw <16 x i32> %i.dfu, splat (i32 16)
  %i.dfz = bitcast <16 x i32> %i.dfv to <16 x float>
  %i.dga = bitcast <16 x i32> %i.dfw to <16 x float>
  %i.dgb = bitcast <16 x i32> %i.dfx to <16 x float>
  %i.dgc = bitcast <16 x i32> %i.dfy to <16 x float>
  %i.dgd = zext <16 x i16> %strided.vec1638 to <16 x i32>
  %i.dge = zext <16 x i16> %strided.vec1643 to <16 x i32>
  %i.dgf = zext <16 x i16> %strided.vec1648 to <16 x i32>
  %i.dgg = zext <16 x i16> %strided.vec1653 to <16 x i32>
  %i.dgh = shl nuw <16 x i32> %i.dgd, splat (i32 16)
  %i.dgi = shl nuw <16 x i32> %i.dge, splat (i32 16)
  %i.dgj = shl nuw <16 x i32> %i.dgf, splat (i32 16)
  %i.dgk = shl nuw <16 x i32> %i.dgg, splat (i32 16)
  %i.dgl = bitcast <16 x i32> %i.dgh to <16 x float>
  %i.dgm = bitcast <16 x i32> %i.dgi to <16 x float>
  %i.dgn = bitcast <16 x i32> %i.dgj to <16 x float>
  %i.dgo = bitcast <16 x i32> %i.dgk to <16 x float>
  %i.dgp = zext <16 x i16> %strided.vec1639 to <16 x i32>
  %i.dgq = zext <16 x i16> %strided.vec1644 to <16 x i32>
  %i.dgr = zext <16 x i16> %strided.vec1649 to <16 x i32>
  %i.dgs = zext <16 x i16> %strided.vec1654 to <16 x i32>
  %i.dgt = shl nuw <16 x i32> %i.dgp, splat (i32 16)
  %i.dgu = shl nuw <16 x i32> %i.dgq, splat (i32 16)
  %i.dgv = shl nuw <16 x i32> %i.dgr, splat (i32 16)
  %i.dgw = shl nuw <16 x i32> %i.dgs, splat (i32 16)
  %i.dgx = bitcast <16 x i32> %i.dgt to <16 x float>
  %i.dgy = bitcast <16 x i32> %i.dgu to <16 x float>
  %i.dgz = bitcast <16 x i32> %i.dgv to <16 x float>
  %i.dha = bitcast <16 x i32> %i.dgw to <16 x float>
  %i.dhb = zext <16 x i16> %strided.vec1640 to <16 x i32>
  %i.dhc = zext <16 x i16> %strided.vec1645 to <16 x i32>
  %i.dhd = zext <16 x i16> %strided.vec1650 to <16 x i32>
  %i.dhe = zext <16 x i16> %strided.vec1655 to <16 x i32>
  %i.dhf = shl nuw <16 x i32> %i.dhb, splat (i32 16)
  %i.dhg = shl nuw <16 x i32> %i.dhc, splat (i32 16)
  %i.dhh = shl nuw <16 x i32> %i.dhd, splat (i32 16)
  %i.dhi = shl nuw <16 x i32> %i.dhe, splat (i32 16)
  %i.dhj = bitcast <16 x i32> %i.dhf to <16 x float>
  %i.dhk = bitcast <16 x i32> %i.dhg to <16 x float>
  %i.dhl = bitcast <16 x i32> %i.dhh to <16 x float>
  %i.dhm = bitcast <16 x i32> %i.dhi to <16 x float>
  %i.dhn = fmul fast <16 x float> %i.dfz, %i.dfj
  %i.dho = fmul fast <16 x float> %i.dga, %i.dfk
  %i.dhp = fmul fast <16 x float> %i.dgb, %i.dfl
  %i.dhq = fmul fast <16 x float> %i.dgc, %i.dfm
  %i.dhr = fmul fast <16 x float> %i.dgl, %i.dfn
  %i.dhs = fmul fast <16 x float> %i.dgm, %i.dfo
  %i.dht = fmul fast <16 x float> %i.dgn, %i.dfp
  %i.dhu = fmul fast <16 x float> %i.dgo, %i.dfq
  %i.dhv = fadd fast <16 x float> %vec.phi1612, %i.dhn
  %i.dhw = fadd fast <16 x float> %vec.phi1613, %i.dho
  %i.dhx = fadd fast <16 x float> %vec.phi1614, %i.dhp
  %i.dhy = fadd fast <16 x float> %vec.phi1615, %i.dhq
  %i.dhz = fadd fast <16 x float> %i.dhv, %i.dhr  ; 2 uses
  %i.dia = fadd fast <16 x float> %i.dhw, %i.dhs  ; 2 uses
  %i.dib = fadd fast <16 x float> %i.dhx, %i.dht  ; 2 uses
  %i.dic = fadd fast <16 x float> %i.dhy, %i.dhu  ; 2 uses
  %i.did = fmul fast <16 x float> %i.dgx, %i.dfj
  %i.die = fmul fast <16 x float> %i.dgy, %i.dfk
  %i.dif = fmul fast <16 x float> %i.dgz, %i.dfl
  %i.dig = fmul fast <16 x float> %i.dha, %i.dfm
  %i.dih = fmul fast <16 x float> %i.dhj, %i.dfn
  %i.dii = fmul fast <16 x float> %i.dhk, %i.dfo
  %i.dij = fmul fast <16 x float> %i.dhl, %i.dfp
  %i.dik = fmul fast <16 x float> %i.dhm, %i.dfq
  %i.dil = fadd fast <16 x float> %vec.phi1608, %i.did
  %i.dim = fadd fast <16 x float> %vec.phi1609, %i.die
  %i.din = fadd fast <16 x float> %vec.phi1610, %i.dif
  %i.dio = fadd fast <16 x float> %vec.phi1611, %i.dig
  %i.dip = fadd fast <16 x float> %i.dil, %i.dih  ; 2 uses
  %i.diq = fadd fast <16 x float> %i.dim, %i.dii  ; 2 uses
  %i.dir = fadd fast <16 x float> %i.din, %i.dij  ; 2 uses
  %i.dis = fadd fast <16 x float> %i.dio, %i.dik  ; 2 uses
  %index.next1656 = add nuw i64 %index1607, 64    ; 2 uses
  %i.dit = icmp eq i64 %index.next1656, %n.vec1605
  br i1 %i.dit, label %middle.block1657, label %vector.body1606, !llvm.loop !425

middle.block1657:                                 ; preds = %vector.body1606
  %bin.rdx1658 = fadd fast <16 x float> %i.diq, %i.dip
  %bin.rdx1659 = fadd fast <16 x float> %i.dir, %bin.rdx1658
  %bin.rdx1660 = fadd fast <16 x float> %i.dis, %bin.rdx1659
  %i.diu = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1660) ; 2 uses
  %bin.rdx1661 = fadd fast <16 x float> %i.dia, %i.dhz
  %bin.rdx1662 = fadd fast <16 x float> %i.dib, %bin.rdx1661
  %bin.rdx1663 = fadd fast <16 x float> %i.dic, %bin.rdx1662
  %i.div = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1663) ; 2 uses
  %i.diw = insertelement <2 x float> poison, float %i.div, i64 0
  %i.dix = insertelement <2 x float> %i.diw, float %i.diu, i64 1 ; 2 uses
  br i1 %cmp.n1664, label %.preheader373.loopexit.i, label %vec.epilog.iter.check1666

vec.epilog.iter.check1666:                        ; preds = %middle.block1657
  br i1 %min.epilog.iters.check1668, label %.lr.ph1325.i.preheader, label %vec.epilog.ph1669, !prof !26

vec.epilog.ph1669:                                ; preds = %vector.main.loop.iter.check1602, %vec.epilog.iter.check1666
  %vec.epilog.resume.val1670 = phi i64 [ %n.vec1605, %vec.epilog.iter.check1666 ], [ 0, %vector.main.loop.iter.check1602 ]
  %bc.merge.rdx1671 = phi float [ %i.diu, %vec.epilog.iter.check1666 ], [ %i.ded, %vector.main.loop.iter.check1602 ]
  %bc.merge.rdx1672 = phi float [ %i.div, %vec.epilog.iter.check1666 ], [ %i.dec, %vector.main.loop.iter.check1602 ]
  %i.diy = getelementptr i8, ptr %.1215541372.i, i64 %i.bji
  %i.diz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1671, i64 0
  %i.dja = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1672, i64 0
  br label %vec.epilog.vector.body1674

vec.epilog.vector.body1674:                       ; preds = %vec.epilog.vector.body1674, %vec.epilog.ph1669
  %index1675 = phi i64 [ %vec.epilog.resume.val1670, %vec.epilog.ph1669 ], [ %index.next1688, %vec.epilog.vector.body1674 ] ; 3 uses
  %vec.phi1676 = phi <8 x float> [ %i.diz, %vec.epilog.ph1669 ], [ %i.dkd, %vec.epilog.vector.body1674 ]
  %vec.phi1677 = phi <8 x float> [ %i.dja, %vec.epilog.ph1669 ], [ %i.djz, %vec.epilog.vector.body1674 ]
  %i.djb = shl i64 %index1675, 2
  %next.gep1678 = getelementptr i8, ptr %.41425.i, i64 %i.djb
  %i.djc = shl i64 %index1675, 3
  %next.gep1679 = getelementptr i8, ptr %.1215541372.i, i64 %i.djc
  %wide.vec1680 = load <16 x i16>, ptr %next.gep1678, align 2, !tbaa !24
  %i.djd = freeze <16 x i16> %wide.vec1680        ; 2 uses
  %i.dje = bitcast <16 x i16> %i.djd to <8 x i32>
  %i.djf = bitcast <16 x i16> %i.djd to <8 x i32>
  %i.djg = and <8 x i32> %i.djf, splat (i32 -65536)
  %i.djh = shl <8 x i32> %i.dje, splat (i32 16)
  %i.dji = bitcast <8 x i32> %i.djh to <8 x float> ; 2 uses
  %i.djj = bitcast <8 x i32> %i.djg to <8 x float> ; 2 uses
  %wide.vec1683 = load <32 x i16>, ptr %next.gep1679, align 2, !tbaa !24 ; 4 uses
  %strided.vec1684 = shufflevector <32 x i16> %wide.vec1683, <32 x i16> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec1685 = shufflevector <32 x i16> %wide.vec1683, <32 x i16> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec1686 = shufflevector <32 x i16> %wide.vec1683, <32 x i16> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec1687 = shufflevector <32 x i16> %wide.vec1683, <32 x i16> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.djk = zext <8 x i16> %strided.vec1684 to <8 x i32>
  %i.djl = shl nuw <8 x i32> %i.djk, splat (i32 16)
  %i.djm = bitcast <8 x i32> %i.djl to <8 x float>
  %i.djn = zext <8 x i16> %strided.vec1685 to <8 x i32>
  %i.djo = shl nuw <8 x i32> %i.djn, splat (i32 16)
  %i.djp = bitcast <8 x i32> %i.djo to <8 x float>
  %i.djq = zext <8 x i16> %strided.vec1686 to <8 x i32>
  %i.djr = shl nuw <8 x i32> %i.djq, splat (i32 16)
  %i.djs = bitcast <8 x i32> %i.djr to <8 x float>
  %i.djt = zext <8 x i16> %strided.vec1687 to <8 x i32>
  %i.dju = shl nuw <8 x i32> %i.djt, splat (i32 16)
  %i.djv = bitcast <8 x i32> %i.dju to <8 x float>
  %i.djw = fmul fast <8 x float> %i.djm, %i.dji
  %i.djx = fmul fast <8 x float> %i.djp, %i.djj
  %i.djy = fadd fast <8 x float> %vec.phi1677, %i.djw
  %i.djz = fadd fast <8 x float> %i.djy, %i.djx   ; 2 uses
  %i.dka = fmul fast <8 x float> %i.djs, %i.dji
  %i.dkb = fmul fast <8 x float> %i.djv, %i.djj
  %i.dkc = fadd fast <8 x float> %vec.phi1676, %i.dka
  %i.dkd = fadd fast <8 x float> %i.dkc, %i.dkb   ; 2 uses
  %index.next1688 = add nuw i64 %index1675, 8     ; 2 uses
  %i.dke = icmp eq i64 %index.next1688, %n.vec1673
  br i1 %i.dke, label %vec.epilog.middle.block1689, label %vec.epilog.vector.body1674, !llvm.loop !426

vec.epilog.middle.block1689:                      ; preds = %vec.epilog.vector.body1674
  %i.dkf = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dkd)
  %i.dkg = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.djz)
  %i.dkh = insertelement <2 x float> poison, float %i.dkg, i64 0
  %i.dki = insertelement <2 x float> %i.dkh, float %i.dkf, i64 1 ; 2 uses
  br i1 %cmp.n1690, label %.preheader373.loopexit.i, label %.lr.ph1325.i.preheader

.lr.ph1325.i.preheader:                           ; preds = %iter.check1665, %vec.epilog.iter.check1666, %vec.epilog.middle.block1689
  %.014541323.i.ph = phi i32 [ 0, %iter.check1665 ], [ %i.bjc, %vec.epilog.iter.check1666 ], [ %i.bjg, %vec.epilog.middle.block1689 ]
  %.014571322.i.ph = phi ptr [ %.41425.i, %iter.check1665 ], [ %i.daj, %vec.epilog.iter.check1666 ], [ %i.dak, %vec.epilog.middle.block1689 ]
  %.1315551319.i.ph = phi ptr [ %.1215541372.i, %iter.check1665 ], [ %i.dee, %vec.epilog.iter.check1666 ], [ %i.diy, %vec.epilog.middle.block1689 ]
  %.ph1735 = phi <2 x float> [ %i.deb, %iter.check1665 ], [ %i.dix, %vec.epilog.iter.check1666 ], [ %i.dki, %vec.epilog.middle.block1689 ]
  br label %.lr.ph1325.i

.preheader373.loopexit.i:                         ; preds = %.lr.ph1325.i, %vec.epilog.middle.block1689, %middle.block1657
  %.lcssa865 = phi ptr [ %i.dak, %vec.epilog.middle.block1689 ], [ %i.daj, %middle.block1657 ], [ %i.dpp, %.lr.ph1325.i ]
  %i.dkj = phi <2 x float> [ %i.dki, %vec.epilog.middle.block1689 ], [ %i.dix, %middle.block1657 ], [ %i.dpo, %.lr.ph1325.i ]
  %i.dkk = getelementptr i8, ptr %.1215541372.i, i64 %i.bim
  %scevgep1804.i = getelementptr i8, ptr %i.dkk, i64 8
  br label %.preheader373.i

.preheader373.i:                                  ; preds = %.preheader373.loopexit.i, %bb.aw
  %.131555.lcssa.i = phi ptr [ %.1215541372.i, %bb.aw ], [ %scevgep1804.i, %.preheader373.loopexit.i ] ; 9 uses
  %.01457.lcssa.i = phi ptr [ %.41425.i, %bb.aw ], [ %.lcssa865, %.preheader373.loopexit.i ] ; 5 uses
  %.01454.lcssa.i = phi i32 [ 0, %bb.aw ], [ %i.big, %.preheader373.loopexit.i ] ; 5 uses
  %i.dkl = phi <2 x float> [ %i.deb, %bb.aw ], [ %i.dkj, %.preheader373.loopexit.i ] ; 5 uses
  %i.dkm = icmp slt i32 %.01454.lcssa.i, %8
  %i.dkn = extractelement <2 x float> %i.dkl, i64 0
  %i.dko = extractelement <2 x float> %i.dkl, i64 1
  br i1 %i.dkm, label %iter.check1574, label %._crit_edge1362.i

iter.check1574:                                   ; preds = %.preheader373.i
  %i.dkp = xor i32 %.01454.lcssa.i, -1
  %i.dkq = add i32 %8, %i.dkp                     ; 3 uses
  %i.dkr = zext i32 %i.dkq to i64
  %i.dks = add nuw nsw i64 %i.dkr, 1              ; 5 uses
  %min.iters.check1529 = icmp ult i32 %i.dkq, 7
  br i1 %min.iters.check1529, label %.lr.ph1361.i.preheader, label %vector.main.loop.iter.check1530

vector.main.loop.iter.check1530:                  ; preds = %iter.check1574
  %min.iters.check1531 = icmp ult i32 %i.dkq, 63
  br i1 %min.iters.check1531, label %vec.epilog.ph1578, label %vector.ph1532

vector.ph1532:                                    ; preds = %vector.main.loop.iter.check1530
  %i.dkt = and i64 %i.dks, 56
  %n.vec1533 = and i64 %i.dks, 8589934528         ; 6 uses
  %i.dku = trunc i64 %n.vec1533 to i32
  %i.dkv = add i32 %.01454.lcssa.i, %i.dku
  %i.dkw = shl nuw nsw i64 %n.vec1533, 1
  %i.dkx = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.dkw
  %i.dky = shl nuw nsw i64 %n.vec1533, 2
  %i.dkz = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dky ; 2 uses
  %i.dla = shufflevector <2 x float> %i.dkl, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %57 = shufflevector <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x float> %i.dla, <16 x i32> <i32 17, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dlb = shufflevector <16 x float> %i.dla, <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <16 x i32> <i32 0, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.ph1532, %vector.body1534
  %index1535 = phi i64 [ 0, %vector.ph1532 ], [ %index.next1565, %vector.body1534 ] ; 3 uses
  %vec.phi1536 = phi <16 x float> [ %57, %vector.ph1532 ], [ %i.dnk, %vector.body1534 ]
  %vec.phi1537 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dnl, %vector.body1534 ]
  %vec.phi1538 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dnm, %vector.body1534 ]
  %vec.phi1539 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dnn, %vector.body1534 ]
  %vec.phi1540 = phi <16 x float> [ %i.dlb, %vector.ph1532 ], [ %i.dmy, %vector.body1534 ]
  %vec.phi1541 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dmz, %vector.body1534 ]
  %vec.phi1542 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dna, %vector.body1534 ]
  %vec.phi1543 = phi <16 x float> [ zeroinitializer, %vector.ph1532 ], [ %i.dnb, %vector.body1534 ]
  %i.dlc = shl i64 %index1535, 1
  %next.gep1544 = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.dlc ; 4 uses
  %i.dld = shl i64 %index1535, 2                  ; 4 uses
  %next.gep1545 = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dld
  %i.dle = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dld
  %next.gep1546 = getelementptr i8, ptr %i.dle, i64 64
  %i.dlf = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dld
  %next.gep1547 = getelementptr i8, ptr %i.dlf, i64 128
  %i.dlg = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dld
  %next.gep1548 = getelementptr i8, ptr %i.dlg, i64 192
  %i.dlh = getelementptr i8, ptr %next.gep1544, i64 32
  %i.dli = getelementptr i8, ptr %next.gep1544, i64 64
  %i.dlj = getelementptr i8, ptr %next.gep1544, i64 96
  %wide.load1549 = load <16 x i16>, ptr %next.gep1544, align 2, !tbaa !24
  %wide.load1550 = load <16 x i16>, ptr %i.dlh, align 2, !tbaa !24
  %wide.load1551 = load <16 x i16>, ptr %i.dli, align 2, !tbaa !24
  %wide.load1552 = load <16 x i16>, ptr %i.dlj, align 2, !tbaa !24
  %i.dlk = zext <16 x i16> %wide.load1549 to <16 x i32>
  %i.dll = zext <16 x i16> %wide.load1550 to <16 x i32>
  %i.dlm = zext <16 x i16> %wide.load1551 to <16 x i32>
  %i.dln = zext <16 x i16> %wide.load1552 to <16 x i32>
  %i.dlo = shl nuw <16 x i32> %i.dlk, splat (i32 16)
  %i.dlp = shl nuw <16 x i32> %i.dll, splat (i32 16)
  %i.dlq = shl nuw <16 x i32> %i.dlm, splat (i32 16)
  %i.dlr = shl nuw <16 x i32> %i.dln, splat (i32 16)
  %i.dls = bitcast <16 x i32> %i.dlo to <16 x float> ; 2 uses
  %i.dlt = bitcast <16 x i32> %i.dlp to <16 x float> ; 2 uses
  %i.dlu = bitcast <16 x i32> %i.dlq to <16 x float> ; 2 uses
  %i.dlv = bitcast <16 x i32> %i.dlr to <16 x float> ; 2 uses
  %wide.vec1553 = load <32 x i16>, ptr %next.gep1545, align 2, !tbaa !24
  %i.dlw = freeze <32 x i16> %wide.vec1553        ; 2 uses
  %i.dlx = bitcast <32 x i16> %i.dlw to <16 x i32>
  %i.dly = bitcast <32 x i16> %i.dlw to <16 x i32>
  %i.dlz = and <16 x i32> %i.dly, splat (i32 -65536)
  %wide.vec1556 = load <32 x i16>, ptr %next.gep1546, align 2, !tbaa !24
  %i.dma = freeze <32 x i16> %wide.vec1556        ; 2 uses
  %i.dmb = bitcast <32 x i16> %i.dma to <16 x i32>
  %i.dmc = bitcast <32 x i16> %i.dma to <16 x i32>
  %i.dmd = and <16 x i32> %i.dmc, splat (i32 -65536)
  %wide.vec1559 = load <32 x i16>, ptr %next.gep1547, align 2, !tbaa !24
  %i.dme = freeze <32 x i16> %wide.vec1559        ; 2 uses
  %i.dmf = bitcast <32 x i16> %i.dme to <16 x i32>
  %i.dmg = bitcast <32 x i16> %i.dme to <16 x i32>
  %i.dmh = and <16 x i32> %i.dmg, splat (i32 -65536)
  %wide.vec1562 = load <32 x i16>, ptr %next.gep1548, align 2, !tbaa !24
  %i.dmi = freeze <32 x i16> %wide.vec1562        ; 2 uses
  %i.dmj = bitcast <32 x i16> %i.dmi to <16 x i32>
  %i.dmk = bitcast <32 x i16> %i.dmi to <16 x i32>
  %i.dml = and <16 x i32> %i.dmk, splat (i32 -65536)
  %i.dmm = shl <16 x i32> %i.dlx, splat (i32 16)
  %i.dmn = shl <16 x i32> %i.dmb, splat (i32 16)
  %i.dmo = shl <16 x i32> %i.dmf, splat (i32 16)
  %i.dmp = shl <16 x i32> %i.dmj, splat (i32 16)
  %i.dmq = bitcast <16 x i32> %i.dmm to <16 x float>
  %i.dmr = bitcast <16 x i32> %i.dmn to <16 x float>
  %i.dms = bitcast <16 x i32> %i.dmo to <16 x float>
  %i.dmt = bitcast <16 x i32> %i.dmp to <16 x float>
  %i.dmu = fmul fast <16 x float> %i.dmq, %i.dls
  %i.dmv = fmul fast <16 x float> %i.dmr, %i.dlt
  %i.dmw = fmul fast <16 x float> %i.dms, %i.dlu
  %i.dmx = fmul fast <16 x float> %i.dmt, %i.dlv
  %i.dmy = fadd fast <16 x float> %i.dmu, %vec.phi1540 ; 2 uses
  %i.dmz = fadd fast <16 x float> %i.dmv, %vec.phi1541 ; 2 uses
  %i.dna = fadd fast <16 x float> %i.dmw, %vec.phi1542 ; 2 uses
  %i.dnb = fadd fast <16 x float> %i.dmx, %vec.phi1543 ; 2 uses
  %i.dnc = bitcast <16 x i32> %i.dlz to <16 x float>
  %i.dnd = bitcast <16 x i32> %i.dmd to <16 x float>
  %i.dne = bitcast <16 x i32> %i.dmh to <16 x float>
  %i.dnf = bitcast <16 x i32> %i.dml to <16 x float>
  %i.dng = fmul fast <16 x float> %i.dnc, %i.dls
  %i.dnh = fmul fast <16 x float> %i.dnd, %i.dlt
  %i.dni = fmul fast <16 x float> %i.dne, %i.dlu
  %i.dnj = fmul fast <16 x float> %i.dnf, %i.dlv
  %i.dnk = fadd fast <16 x float> %i.dng, %vec.phi1536 ; 2 uses
  %i.dnl = fadd fast <16 x float> %i.dnh, %vec.phi1537 ; 2 uses
  %i.dnm = fadd fast <16 x float> %i.dni, %vec.phi1538 ; 2 uses
  %i.dnn = fadd fast <16 x float> %i.dnj, %vec.phi1539 ; 2 uses
  %index.next1565 = add nuw i64 %index1535, 64    ; 2 uses
  %i.dno = icmp eq i64 %index.next1565, %n.vec1533
  br i1 %i.dno, label %middle.block1566, label %vector.body1534, !llvm.loop !427

middle.block1566:                                 ; preds = %vector.body1534
  %bin.rdx1567 = fadd fast <16 x float> %i.dnl, %i.dnk
  %bin.rdx1568 = fadd fast <16 x float> %i.dnm, %bin.rdx1567
  %bin.rdx1569 = fadd fast <16 x float> %i.dnn, %bin.rdx1568
  %i.dnp = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1569) ; 2 uses
  %bin.rdx1570 = fadd fast <16 x float> %i.dmz, %i.dmy
  %bin.rdx1571 = fadd fast <16 x float> %i.dna, %bin.rdx1570
  %bin.rdx1572 = fadd fast <16 x float> %i.dnb, %bin.rdx1571
  %i.dnq = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1572) ; 2 uses
  %cmp.n1573 = icmp eq i64 %i.dks, %n.vec1533
  br i1 %cmp.n1573, label %._crit_edge1362.i, label %vec.epilog.iter.check1575

vec.epilog.iter.check1575:                        ; preds = %middle.block1566
  %min.epilog.iters.check1577 = icmp eq i64 %i.dkt, 0
  %i.dnr = insertelement <2 x float> poison, float %i.dnq, i64 0
  %i.dns = insertelement <2 x float> %i.dnr, float %i.dnp, i64 1 ; 2 uses
  br i1 %min.epilog.iters.check1577, label %.lr.ph1361.i.preheader, label %vec.epilog.ph1578, !prof !26

vec.epilog.ph1578:                                ; preds = %vector.main.loop.iter.check1530, %vec.epilog.iter.check1575
  %vec.epilog.resume.val1579 = phi i64 [ %n.vec1533, %vec.epilog.iter.check1575 ], [ 0, %vector.main.loop.iter.check1530 ]
  %i.dnt = phi <2 x float> [ %i.dns, %vec.epilog.iter.check1575 ], [ %i.dkl, %vector.main.loop.iter.check1530 ]
  %n.vec1582 = and i64 %i.dks, 8589934584         ; 5 uses
  %i.dnu = trunc i64 %n.vec1582 to i32
  %i.dnv = add i32 %.01454.lcssa.i, %i.dnu
  %i.dnw = shl nuw nsw i64 %n.vec1582, 1
  %i.dnx = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.dnw
  %i.dny = shl nuw nsw i64 %n.vec1582, 2
  %i.dnz = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dny ; 2 uses
  %i.doa = shufflevector <2 x float> %i.dnt, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %58 = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.doa, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dob = shufflevector <8 x float> %i.doa, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vec.epilog.vector.body1583

vec.epilog.vector.body1583:                       ; preds = %vec.epilog.vector.body1583, %vec.epilog.ph1578
  %index1584 = phi i64 [ %vec.epilog.resume.val1579, %vec.epilog.ph1578 ], [ %index.next1593, %vec.epilog.vector.body1583 ] ; 3 uses
  %vec.phi1585 = phi <8 x float> [ %58, %vec.epilog.ph1578 ], [ %i.dor, %vec.epilog.vector.body1583 ]
  %vec.phi1586 = phi <8 x float> [ %i.dob, %vec.epilog.ph1578 ], [ %i.doo, %vec.epilog.vector.body1583 ]
  %i.doc = shl i64 %index1584, 1
  %next.gep1587 = getelementptr i8, ptr %.01457.lcssa.i, i64 %i.doc
  %i.dod = shl i64 %index1584, 2
  %next.gep1588 = getelementptr i8, ptr %.131555.lcssa.i, i64 %i.dod
  %wide.load1589 = load <8 x i16>, ptr %next.gep1587, align 2, !tbaa !24
  %i.doe = zext <8 x i16> %wide.load1589 to <8 x i32>
  %i.dof = shl nuw <8 x i32> %i.doe, splat (i32 16)
  %i.dog = bitcast <8 x i32> %i.dof to <8 x float> ; 2 uses
  %wide.vec1590 = load <16 x i16>, ptr %next.gep1588, align 2, !tbaa !24
  %i.doh = freeze <16 x i16> %wide.vec1590        ; 2 uses
  %i.doi = bitcast <16 x i16> %i.doh to <8 x i32>
  %i.doj = bitcast <16 x i16> %i.doh to <8 x i32>
  %i.dok = and <8 x i32> %i.doj, splat (i32 -65536)
  %i.dol = shl <8 x i32> %i.doi, splat (i32 16)
  %i.dom = bitcast <8 x i32> %i.dol to <8 x float>
  %i.don = fmul fast <8 x float> %i.dom, %i.dog
  %i.doo = fadd fast <8 x float> %i.don, %vec.phi1586 ; 2 uses
  %i.dop = bitcast <8 x i32> %i.dok to <8 x float>
  %i.doq = fmul fast <8 x float> %i.dop, %i.dog
  %i.dor = fadd fast <8 x float> %i.doq, %vec.phi1585 ; 2 uses
  %index.next1593 = add nuw i64 %index1584, 8     ; 2 uses
  %i.dos = icmp eq i64 %index.next1593, %n.vec1582
  br i1 %i.dos, label %vec.epilog.middle.block1594, label %vec.epilog.vector.body1583, !llvm.loop !428

vec.epilog.middle.block1594:                      ; preds = %vec.epilog.vector.body1583
  %i.dot = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.dor) ; 2 uses
  %i.dou = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.doo) ; 2 uses
  %cmp.n1595 = icmp eq i64 %i.dks, %n.vec1582
  %i.dov = insertelement <2 x float> poison, float %i.dou, i64 0
  %i.dow = insertelement <2 x float> %i.dov, float %i.dot, i64 1
  br i1 %cmp.n1595, label %._crit_edge1362.i, label %.lr.ph1361.i.preheader

.lr.ph1361.i.preheader:                           ; preds = %iter.check1574, %vec.epilog.iter.check1575, %vec.epilog.middle.block1594
  %.214561359.i.ph = phi i32 [ %.01454.lcssa.i, %iter.check1574 ], [ %i.dkv, %vec.epilog.iter.check1575 ], [ %i.dnv, %vec.epilog.middle.block1594 ]
  %.214591358.i.ph = phi ptr [ %.01457.lcssa.i, %iter.check1574 ], [ %i.dkx, %vec.epilog.iter.check1575 ], [ %i.dnx, %vec.epilog.middle.block1594 ]
  %.1515571355.i.ph = phi ptr [ %.131555.lcssa.i, %iter.check1574 ], [ %i.dkz, %vec.epilog.iter.check1575 ], [ %i.dnz, %vec.epilog.middle.block1594 ]
  %.ph = phi <2 x float> [ %i.dkl, %iter.check1574 ], [ %i.dns, %vec.epilog.iter.check1575 ], [ %i.dow, %vec.epilog.middle.block1594 ]
  br label %.lr.ph1361.i

.lr.ph1325.i:                                     ; preds = %.lr.ph1325.i.preheader, %.lr.ph1325.i
  %.014541323.i = phi i32 [ %i.dpr, %.lr.ph1325.i ], [ %.014541323.i.ph, %.lr.ph1325.i.preheader ]
  %.014571322.i = phi ptr [ %i.dpp, %.lr.ph1325.i ], [ %.014571322.i.ph, %.lr.ph1325.i.preheader ] ; 2 uses
  %.1315551319.i = phi ptr [ %i.dpq, %.lr.ph1325.i ], [ %.1315551319.i.ph, %.lr.ph1325.i.preheader ] ; 2 uses
  %i.dox = phi <2 x float> [ %i.dpo, %.lr.ph1325.i ], [ %.ph1735, %.lr.ph1325.i.preheader ]
  %i.doy = load <2 x i16>, ptr %.014571322.i, align 2, !tbaa !24
  %i.doz = zext <2 x i16> %i.doy to <2 x i32>
  %i.dpa = shl nuw <2 x i32> %i.doz, splat (i32 16)
  %i.dpb = bitcast <2 x i32> %i.dpa to <2 x float> ; 2 uses
  %i.dpc = load <4 x i16>, ptr %.1315551319.i, align 2, !tbaa !24
  %i.dpd = freeze <4 x i16> %i.dpc
  %i.dpe = bitcast <4 x i16> %i.dpd to <2 x i32>  ; 2 uses
  %i.dpf = and <2 x i32> %i.dpe, splat (i32 -65536)
  %i.dpg = shl <2 x i32> %i.dpe, splat (i32 16)
  %i.dph = bitcast <2 x i32> %i.dpg to <2 x float>
  %i.dpi = bitcast <2 x i32> %i.dpf to <2 x float>
  %i.dpj = shufflevector <2 x float> %i.dpb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dpk = fmul fast <2 x float> %i.dpj, %i.dph
  %i.dpl = shufflevector <2 x float> %i.dpb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dpm = fmul fast <2 x float> %i.dpl, %i.dpi
  %i.dpn = fadd fast <2 x float> %i.dox, %i.dpk
  %i.dpo = fadd fast <2 x float> %i.dpn, %i.dpm   ; 2 uses
  %i.dpp = getelementptr inbounds nuw i8, ptr %.014571322.i, i64 4 ; 2 uses
  %i.dpq = getelementptr inbounds nuw i8, ptr %.1315551319.i, i64 8
  %i.dpr = add nuw nsw i32 %.014541323.i, 2       ; 2 uses
  %i.dps = or disjoint i32 %i.dpr, 1
  %i.dpt = icmp slt i32 %i.dps, %8
  br i1 %i.dpt, label %.lr.ph1325.i, label %.preheader373.loopexit.i, !llvm.loop !429

.lr.ph1361.i:                                     ; preds = %.lr.ph1361.i.preheader, %.lr.ph1361.i
  %.214561359.i = phi i32 [ %i.dqj, %.lr.ph1361.i ], [ %.214561359.i.ph, %.lr.ph1361.i.preheader ]
  %.214591358.i = phi ptr [ %i.dqh, %.lr.ph1361.i ], [ %.214591358.i.ph, %.lr.ph1361.i.preheader ] ; 2 uses
  %.1515571355.i = phi ptr [ %i.dqi, %.lr.ph1361.i ], [ %.1515571355.i.ph, %.lr.ph1361.i.preheader ] ; 2 uses
  %i.dpu = phi <2 x float> [ %i.dqg, %.lr.ph1361.i ], [ %.ph, %.lr.ph1361.i.preheader ]
  %i.dpv = load i16, ptr %.214591358.i, align 2, !tbaa !24
  %i.dpw = zext i16 %i.dpv to i32
  %i.dpx = shl nuw i32 %i.dpw, 16
  %i.dpy = load <2 x i16>, ptr %.1515571355.i, align 2, !tbaa !24
  %i.dpz = zext <2 x i16> %i.dpy to <2 x i32>
  %i.dqa = shl nuw <2 x i32> %i.dpz, splat (i32 16)
  %i.dqb = bitcast <2 x i32> %i.dqa to <2 x float>
  %i.dqc = insertelement <2 x i32> poison, i32 %i.dpx, i64 0
  %i.dqd = bitcast <2 x i32> %i.dqc to <2 x float>
  %i.dqe = shufflevector <2 x float> %i.dqd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dqf = fmul fast <2 x float> %i.dqe, %i.dqb
  %i.dqg = fadd fast <2 x float> %i.dqf, %i.dpu   ; 3 uses
  %i.dqh = getelementptr inbounds nuw i8, ptr %.214591358.i, i64 2
  %i.dqi = getelementptr inbounds nuw i8, ptr %.1515571355.i, i64 4 ; 2 uses
  %i.dqj = add nuw nsw i32 %.214561359.i, 1       ; 2 uses
  %exitcond1805.not.i = icmp eq i32 %i.dqj, %8
  br i1 %exitcond1805.not.i, label %._crit_edge1362.i.loopexit, label %.lr.ph1361.i, !llvm.loop !430

._crit_edge1362.i.loopexit:                       ; preds = %.lr.ph1361.i
  %i.dqk = extractelement <2 x float> %i.dqg, i64 1
  %i.dql = extractelement <2 x float> %i.dqg, i64 0
  br label %._crit_edge1362.i

._crit_edge1362.i:                                ; preds = %._crit_edge1362.i.loopexit, %middle.block1566, %vec.epilog.middle.block1594, %.preheader373.i
  %.151557.lcssa.i = phi ptr [ %.131555.lcssa.i, %.preheader373.i ], [ %i.dnz, %vec.epilog.middle.block1594 ], [ %i.dkz, %middle.block1566 ], [ %i.dqi, %._crit_edge1362.i.loopexit ] ; 2 uses
  %.21465.lcssa.i = phi float [ %i.dkn, %.preheader373.i ], [ %i.dou, %vec.epilog.middle.block1594 ], [ %i.dnq, %middle.block1566 ], [ %i.dql, %._crit_edge1362.i.loopexit ]
  %.21462.lcssa.i = phi float [ %i.dko, %.preheader373.i ], [ %i.dot, %vec.epilog.middle.block1594 ], [ %i.dnp, %middle.block1566 ], [ %i.dqk, %._crit_edge1362.i.loopexit ]
  store float %.21465.lcssa.i, ptr %.281374.i, align 4, !tbaa !444
  %i.dqm = getelementptr inbounds nuw i8, ptr %.281374.i, i64 4
  store float %.21462.lcssa.i, ptr %i.dqm, align 4, !tbaa !444
  %i.dqn = getelementptr inbounds nuw i8, ptr %.281374.i, i64 8 ; 2 uses
  %i.dqo = add nuw nsw i32 %.315401373.i, 2       ; 3 uses
  %i.dqp = or disjoint i32 %i.dqo, 1
  %i.dqq = icmp slt i32 %i.dqp, %6
  br i1 %i.dqq, label %.lr.ph1375.i, label %.preheader377.i, !llvm.loop !431

.lr.ph1420.i:                                     ; preds = %.lr.ph1420.i.preheader, %._crit_edge1411.i
  %.291419.i = phi ptr [ %i.dyy, %._crit_edge1411.i ], [ %.28.lcssa.i, %.lr.ph1420.i.preheader ] ; 3 uses
  %.415411418.i = phi i32 [ %i.dyz, %._crit_edge1411.i ], [ %.31540.lcssa.i, %.lr.ph1420.i.preheader ]
  %.1615581417.i = phi ptr [ %.191561.lcssa.i, %._crit_edge1411.i ], [ %.121554.lcssa.i, %.lr.ph1420.i.preheader ] ; 10 uses
  br i1 %.not1791.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1420.i
  %i.dqr = load float, ptr %.291419.i, align 4, !tbaa !444
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.lr.ph1420.i
  %.01394.i = phi nsz float [ %i.dqr, %bb.ax ], [ 0.000000e+00, %.lr.ph1420.i ] ; 4 uses
  br i1 %i.bic, label %iter.check1503, label %.preheader.i

iter.check1503:                                   ; preds = %bb.ay
  br i1 %min.iters.check1454, label %.lr.ph1384.i.preheader, label %vector.main.loop.iter.check1455

vector.main.loop.iter.check1455:                  ; preds = %iter.check1503
  br i1 %min.iters.check1456, label %vec.epilog.ph1507, label %vector.ph1457

vector.ph1457:                                    ; preds = %vector.main.loop.iter.check1455
  %i.dqs = getelementptr i8, ptr %.1615581417.i, i64 %i.bjm
  %i.dqt = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.01394.i, i64 0
  br label %vector.body1459

vector.body1459:                                  ; preds = %vector.ph1457, %vector.body1459
  %index1460 = phi i64 [ 0, %vector.ph1457 ], [ %index.next1497, %vector.body1459 ] ; 2 uses
  %vec.phi1461 = phi <16 x float> [ %i.dqt, %vector.ph1457 ], [ %i.dto, %vector.body1459 ]
  %vec.phi1462 = phi <16 x float> [ zeroinitializer, %vector.ph1457 ], [ %i.dtp, %vector.body1459 ]
  %vec.phi1463 = phi <16 x float> [ zeroinitializer, %vector.ph1457 ], [ %i.dtq, %vector.body1459 ]
  %vec.phi1464 = phi <16 x float> [ zeroinitializer, %vector.ph1457 ], [ %i.dtr, %vector.body1459 ]
  %i.dqu = shl i64 %index1460, 2                  ; 5 uses
  %i.dqv = or disjoint i64 %i.dqu, 64             ; 2 uses
  %i.dqw = or disjoint i64 %i.dqu, 128            ; 2 uses
  %i.dqx = or disjoint i64 %i.dqu, 192            ; 2 uses
  %next.gep1465 = getelementptr i8, ptr %.41425.i, i64 %i.dqu
  %next.gep1466 = getelementptr i8, ptr %.41425.i, i64 %i.dqv
  %next.gep1467 = getelementptr i8, ptr %.41425.i, i64 %i.dqw
  %next.gep1468 = getelementptr i8, ptr %.41425.i, i64 %i.dqx
  %next.gep1469 = getelementptr i8, ptr %.1615581417.i, i64 %i.dqu
  %next.gep1470 = getelementptr i8, ptr %.1615581417.i, i64 %i.dqv
  %next.gep1471 = getelementptr i8, ptr %.1615581417.i, i64 %i.dqw
  %next.gep1472 = getelementptr i8, ptr %.1615581417.i, i64 %i.dqx
  %wide.vec1473 = load <32 x i16>, ptr %next.gep1465, align 2, !tbaa !24
  %i.dqy = freeze <32 x i16> %wide.vec1473        ; 2 uses
  %i.dqz = bitcast <32 x i16> %i.dqy to <16 x i32>
  %i.dra = bitcast <32 x i16> %i.dqy to <16 x i32>
  %i.drb = and <16 x i32> %i.dra, splat (i32 -65536)
  %wide.vec1476 = load <32 x i16>, ptr %next.gep1466, align 2, !tbaa !24
  %i.drc = freeze <32 x i16> %wide.vec1476        ; 2 uses
  %i.drd = bitcast <32 x i16> %i.drc to <16 x i32>
  %i.dre = bitcast <32 x i16> %i.drc to <16 x i32>
  %i.drf = and <16 x i32> %i.dre, splat (i32 -65536)
  %wide.vec1479 = load <32 x i16>, ptr %next.gep1467, align 2, !tbaa !24
  %i.drg = freeze <32 x i16> %wide.vec1479        ; 2 uses
  %i.drh = bitcast <32 x i16> %i.drg to <16 x i32>
  %i.dri = bitcast <32 x i16> %i.drg to <16 x i32>
  %i.drj = and <16 x i32> %i.dri, splat (i32 -65536)
  %wide.vec1482 = load <32 x i16>, ptr %next.gep1468, align 2, !tbaa !24
  %i.drk = freeze <32 x i16> %wide.vec1482        ; 2 uses
  %i.drl = bitcast <32 x i16> %i.drk to <16 x i32>
  %i.drm = bitcast <32 x i16> %i.drk to <16 x i32>
  %i.drn = and <16 x i32> %i.drm, splat (i32 -65536)
  %i.dro = shl <16 x i32> %i.dqz, splat (i32 16)
  %i.drp = shl <16 x i32> %i.drd, splat (i32 16)
  %i.drq = shl <16 x i32> %i.drh, splat (i32 16)
  %i.drr = shl <16 x i32> %i.drl, splat (i32 16)
  %i.drs = bitcast <16 x i32> %i.dro to <16 x float>
  %i.drt = bitcast <16 x i32> %i.drp to <16 x float>
  %i.dru = bitcast <16 x i32> %i.drq to <16 x float>
  %i.drv = bitcast <16 x i32> %i.drr to <16 x float>
  %i.drw = bitcast <16 x i32> %i.drb to <16 x float>
  %i.drx = bitcast <16 x i32> %i.drf to <16 x float>
  %i.dry = bitcast <16 x i32> %i.drj to <16 x float>
  %i.drz = bitcast <16 x i32> %i.drn to <16 x float>
  %wide.vec1485 = load <32 x i16>, ptr %next.gep1469, align 2, !tbaa !24
  %i.dsa = freeze <32 x i16> %wide.vec1485        ; 2 uses
  %i.dsb = bitcast <32 x i16> %i.dsa to <16 x i32>
  %i.dsc = bitcast <32 x i16> %i.dsa to <16 x i32>
  %i.dsd = and <16 x i32> %i.dsc, splat (i32 -65536)
  %wide.vec1488 = load <32 x i16>, ptr %next.gep1470, align 2, !tbaa !24
  %i.dse = freeze <32 x i16> %wide.vec1488        ; 2 uses
  %i.dsf = bitcast <32 x i16> %i.dse to <16 x i32>
  %i.dsg = bitcast <32 x i16> %i.dse to <16 x i32>
end_hunk_4
