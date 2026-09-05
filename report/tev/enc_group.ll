Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_AVX219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %.0186284.us = phi i64 [ %i.sd, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dw = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.dx = load ptr, ptr %i.cp, align 8, !tbaa !181
  %i.dy = load i64, ptr %i.cq, align 8, !tbaa !177
  %i.dz = mul i64 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ea, i64 64) ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.p
  %i.ec = lshr i64 %.0186284.us, 3
  %i.ed = add nuw nsw i64 %i.ec, %i.ac            ; 2 uses
  %i.ee = load ptr, ptr %i.cr, align 8, !tbaa !181
  %i.ef = load i64, ptr %i.cs, align 8, !tbaa !177
  %i.eg = mul i64 %i.ef, %i.ed
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eg ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eh, i64 64) ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ab
  %i.ej = load ptr, ptr %i.ct, align 8, !tbaa !181
  %i.ek = load i64, ptr %i.cu, align 8, !tbaa !177
  %i.el = mul i64 %i.ek, %i.ed
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.el ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.em, i64 64) ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.eo = shl i64 %.0186284.us, 3
  %i.ep = add i64 %i.ak, %i.eo
  %i.eq = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.er = mul i64 %i.eq, %i.ep                    ; 3 uses
  %i.es = load ptr, ptr %i.cv, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.et, i64 64) ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.aj
  store ptr %i.eu, ptr %i.d, align 16, !tbaa !189
  %i.ev = load ptr, ptr %i.cx, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ew, i64 64) ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.aj
  store ptr %i.ex, ptr %i.cw, align 8, !tbaa !189
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.er ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ez, i64 64) ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.aj
  store ptr %i.fa, ptr %i.cy, align 16, !tbaa !189
  %i.fb = load i64, ptr %i.al, align 8, !tbaa !177
  %i.fc = mul i64 %i.fb, %i.dw                    ; 3 uses
  %i.fd = load ptr, ptr %i.da, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.p
  %i.fg = load ptr, ptr %i.db, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.p
  %i.fj = load ptr, ptr %i.dc, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fj, i64 64) ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fc ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fk, i64 64) ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.p
  %i.fm = load ptr, ptr %i.dd, align 8, !tbaa !181
  %i.fn = load i64, ptr %i.de, align 8, !tbaa !177
  %i.fo = mul i64 %i.fn, %i.dw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fp, i64 64) ]
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.qu, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.fr = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.fr
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

bb.f:                                             ; preds = %.lr.ph281.us, %bb.s
  %.0184280.us = phi i64 [ %i.fr, %.lr.ph281.us ], [ %i.qt, %bb.s ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.0184280.us
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !57  ; 3 uses
  %i.fu = lshr i8 %i.ft, 1                        ; 2 uses
  %i.fv = and i8 %i.ft, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.fv to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.fu to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.fw = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.fw, ptr %9, align 8
  %i.fx = trunc i8 %i.ft to i1
  br i1 %i.fx, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.fy = zext nneg i8 %i.fu to i64               ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !57
  %i.gb = zext i8 %i.ga to i64                    ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.fy
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !57
  %i.ge = zext i8 %i.gd to i64                    ; 3 uses
  %i.gf = call noundef i64 @llvm.umin.i64(i64 %i.ge, i64 %i.gb) ; 9 uses
  %i.gg = call noundef i64 @llvm.umax.i64(i64 %i.ge, i64 %i.gb) ; 16 uses
  %i.gh = shl nuw nsw i64 %i.gg, 6
  %i.gi = mul nuw nsw i64 %i.gh, %i.gf            ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.0184280.us ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !55 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.0183.idx274.us = phi i64 [ 0, %bb.g ], [ %.0183.add.us, %bb.h ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.gl = load i32, ptr %.0183.ptr.us, align 4, !tbaa !55
  %i.gm = sext i32 %i.gl to i64                   ; 2 uses
  %i.gn = load i32, ptr %9, align 8, !tbaa !193
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !189
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx195.us
  %i.gr = mul nsw i64 %i.gi, %i.gm
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gr
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.gn, ptr noundef %i.gq, i64 noundef %i.aq, ptr noundef %i.gs, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.i, label %bb.h

bb.i:                                             ; preds = %bb.h
  %i.gt = load i32, ptr %9, align 8, !tbaa !193
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gi ; 6 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.gt, ptr noundef %i.gu, ptr noundef %i.gv, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.gw = load i32, ptr %9, align 8, !tbaa !193   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !983
  %i.gx = load i32, ptr %i.be, align 4, !tbaa !164, !noalias !983
  %i.gy = icmp slt i32 %i.gx, 6
  br i1 %i.gy, label %.loopexit.2.i.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56, !noalias !983
  br label %bb.k

.loopexit.2.i.us:                                 ; preds = %bb.i
  %i.gz = load float, ptr %i.dk, align 8, !tbaa !165, !noalias !983
  %i.ha = load float, ptr %i.dl, align 4, !tbaa !166, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !983
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !55, !noalias !983
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.gu, ptr noundef nonnull %i.e) #48, !noalias !984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56, !noalias !983
  %i.hb = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !983
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !55, !noalias !983
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 0, float noundef %i.gz, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !984
  %i.hc = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !983
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !983
  store i32 %i.gk, ptr %i.e, align 4, !tbaa !55, !noalias !983
  %.idx.i.us = shl nuw nsw i64 %i.gi, 3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 2, float noundef %i.ha, i32 noundef %i.gw, i64 noundef %i.gg, i64 noundef %i.gf, ptr noundef nonnull %i.b, ptr noundef %i.hd, ptr noundef nonnull %i.e) #48, !noalias !984
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hb, i32 %i.hc)
  %i.he = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !983
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.he)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !983
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !55, !noalias !983
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.2.i.us, %bb.j
  %i.hf = phi i32 [ %i.gk, %bb.j ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gi ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.hh = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !987 ; 3 uses
  %i.hi = zext i32 %i.gw to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !51, !noalias !987
  %.idx.i.i.i.us = mul nuw nsw i64 %i.hi, 24      ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hh, i64 %.idx.i.i.i.us
  %i.hm = getelementptr i8, ptr %i.hl, i64 80
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !53, !noalias !987 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %i.hn ; 2 uses
  %i.hp = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !987
  %i.hq = sitofp i32 %i.hf to float               ; 4 uses
  %i.hr = fmul float %i.hp, %i.hq
  %i.hs = insertelement <8 x float> poison, float %i.hr, i64 0
  %i.ht = shufflevector <8 x float> %i.hs, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hu = shl nuw nsw i64 %i.gf, 3                ; 6 uses
  %.not91.i.i.us = icmp eq i64 %i.gf, 0           ; 3 uses
  br i1 %.not91.i.i.us, label %.preheader.us.sink.split, label %.lr.ph87.i.i.us

.lr.ph87.i.i.us:                                  ; preds = %bb.k
  %i.hv = shl nuw nsw i64 %i.gf, 2                ; 2 uses
  %i.hw = shl nuw nsw i64 %i.gg, 3                ; 2 uses
  %i.hx = shl nuw nsw i64 %i.gg, 2
  %trunc = trunc nuw i64 %i.gg to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph87.i.i.us
  %i.hy = load <2 x float>, ptr %i.a, align 16
  %i.hz = load <2 x float>, ptr %i.di, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07585.us.i.i.us = phi i64 [ %23, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07585.us.i.i.us, %i.hv
  %10 = shl nuw nsw i64 %.07585.us.i.i.us, 3      ; 3 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %10
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %10
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %10
  %14 = insertelement <2 x i1> poison, i1 %.not79.us.i.i.us, i64 0
  %15 = shufflevector <2 x i1> %14, <2 x i1> poison, <2 x i32> zeroinitializer
  %16 = select <2 x i1> %15, <2 x float> %i.hy, <2 x float> %i.hz
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.us.i.i.us
  %.07684.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.ik, %bb.l ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.07684.us.us.i.i.us
  %18 = load <8 x float>, ptr %i.ia, align 32, !tbaa !57, !noalias !987
  %19 = fmul <8 x float> %i.ht, %18
  %20 = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %.07684.us.us.i.i.us
  %i.ib = load <8 x float>, ptr %20, align 32, !tbaa !57, !alias.scope !988, !noalias !989
  %i.ic = fmul <8 x float> %19, %i.ib             ; 2 uses
  %i.id = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ic)
  %i.ie = fcmp oge <8 x float> %i.id, %17
  %i.if = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.ic)
  %i.ig = select <8 x i1> %i.ie, <8 x float> %i.if, <8 x float> zeroinitializer ; 2 uses
  %i.ih = fcmp oge <8 x float> %i.ig, splat (float f0x4F000000)
  %i.ii = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ig)
  %i.ij = select <8 x i1> %i.ih, <8 x i32> splat (i32 2147483647), <8 x i32> %i.ii
  %21 = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.07684.us.us.i.i.us
  store <8 x i32> %i.ij, ptr %21, align 32, !tbaa !57, !alias.scope !990, !noalias !991
  %i.ik = add nuw nsw i64 %.07684.us.us.i.i.us, 8 ; 2 uses
  %22 = icmp samesign ult i64 %i.ik, %i.hw
  br i1 %22, label %bb.l, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !4

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.l
  %23 = add nuw nsw i64 %.07585.us.i.i.us, 1      ; 2 uses
  %exitcond95.not.i.i.us = icmp eq i64 %23, %i.hu
  br i1 %exitcond95.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !5

.lr.ph.i.i.us:                                    ; preds = %.lr.ph87.i.i.us, %._crit_edge.split.i.i.us
  %.07585.i.i.us = phi i64 [ %i.jm, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph87.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07585.i.i.us, %i.hv
  %i.il = shl nuw nsw i64 %.07585.i.i.us, 3
  %i.im = mul nuw nsw i64 %i.il, %i.gg            ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.im
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.im
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.im
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.us
  %.07684.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.jk, %bb.m ] ; 5 uses
  %i.iq = icmp samesign uge i64 %.07684.i.i.us, %i.hx
  %i.ir = zext i1 %i.iq to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.ir
  %i.it = load float, ptr %i.is, align 4, !tbaa !56, !noalias !987
  %i.iu = insertelement <8 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.07684.i.i.us
  %i.ix = load <8 x float>, ptr %i.iw, align 32, !tbaa !57, !noalias !987
  %i.iy = fmul <8 x float> %i.ht, %i.ix
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.07684.i.i.us
  %i.ja = load <8 x float>, ptr %i.iz, align 32, !tbaa !57, !alias.scope !988, !noalias !989
  %i.jb = fmul <8 x float> %i.iy, %i.ja           ; 2 uses
  %i.jc = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jb)
  %i.jd = fcmp oge <8 x float> %i.jc, %i.iv
  %i.je = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.jb)
  %i.jf = select <8 x i1> %i.jd, <8 x float> %i.je, <8 x float> zeroinitializer ; 2 uses
  %i.jg = fcmp oge <8 x float> %i.jf, splat (float f0x4F000000)
  %i.jh = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.jf)
  %i.ji = select <8 x i1> %i.jg, <8 x i32> splat (i32 2147483647), <8 x i32> %i.jh
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %.07684.i.i.us
  store <8 x i32> %i.ji, ptr %i.jj, align 32, !tbaa !57, !alias.scope !990, !noalias !991
  %i.jk = add nuw nsw i64 %.07684.i.i.us, 8       ; 2 uses
  %i.jl = icmp samesign ult i64 %i.jk, %i.hw
  br i1 %i.jl, label %bb.m, label %._crit_edge.split.i.i.us, !llvm.loop !4

._crit_edge.split.i.i.us:                         ; preds = %bb.m
  %i.jm = add nuw nsw i64 %.07585.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.jm, %i.hu
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !5

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph87.i.i.us
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !167, !noalias !983
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.hn
  %i.jq = load float, ptr %i.do, align 8, !tbaa !168, !noalias !983
  %i.jr = fdiv float %i.jq, %i.hq
  %i.js = insertelement <8 x float> poison, float %i.jr, i64 0
  %i.jt = shufflevector <8 x float> %i.js, <8 x float> poison, <8 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.kj, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.06581.i.us
  %i.jv = load <8 x i32>, ptr %i.ju, align 32, !tbaa !57, !alias.scope !992, !noalias !993 ; 2 uses
  %i.jw = sitofp <8 x i32> %i.jv to <8 x float>   ; 4 uses
  %i.jx = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jw)
  %i.jy = fcmp olt <8 x float> %i.jx, splat (float 1.125000e+00)
  %.not76.i.us = icmp eq <8 x i32> %i.jv, zeroinitializer
  %i.jz = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float f0x3F6E10E8), <8 x float> %i.jw)
  %i.ka = select <8 x i1> %.not76.i.us, <8 x float> zeroinitializer, <8 x float> %i.jz
  %i.kb = call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.jw)
  %i.kc = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.kb, <8 x float> splat (float -1.450000e-01), <8 x float> %i.jw)
  %i.kd = select <8 x i1> %i.jy, <8 x float> %i.ka, <8 x float> %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.06581.i.us
  %i.kf = load <8 x float>, ptr %i.ke, align 32, !tbaa !57, !noalias !983
  %i.kg = fmul <8 x float> %i.kf, %i.kd
  %i.kh = fmul <8 x float> %i.jt, %i.kg
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.06581.i.us
  store <8 x float> %i.kh, ptr %i.ki, align 32, !tbaa !57, !alias.scope !981, !noalias !984
  %i.kj = add nuw nsw i64 %.06581.i.us, 8         ; 2 uses
  %i.kk = icmp samesign ult i64 %i.kj, %i.gi
  br i1 %i.kk, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !6

bb.n:                                             ; preds = %.lr.ph.us, %bb.n
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.kt, %bb.n ] ; 4 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.km = load <8 x float>, ptr %i.kl, align 32, !tbaa !57
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.0182275.us
  %i.ko = load <8 x float>, ptr %i.kn, align 32, !tbaa !57 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %.0182275.us ; 2 uses
  %i.kq = load <8 x float>, ptr %i.kp, align 32, !tbaa !57
  %i.kr = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.sb, <8 x float> %i.ko, <8 x float> %i.km)
  %i.ks = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.sc, <8 x float> %i.ko, <8 x float> %i.kq)
  store <8 x float> %i.kr, ptr %i.kl, align 32, !tbaa !57
  store <8 x float> %i.ks, ptr %i.kp, align 32, !tbaa !57
  %i.kt = add nuw nsw i64 %.0182275.us, 8         ; 2 uses
  %i.ku = icmp samesign ult i64 %i.kt, %i.gi
  br i1 %i.ku, label %bb.n, label %.preheader.us, !llvm.loop !961

.preheader.i.us:                                  ; preds = %.preheader.us
  %i.kv = insertelement <2 x float> poison, float %i.qz, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = insertelement <2 x float> poison, float %i.qy, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.ky, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.la = fcmp olt <2 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = select <2 x i1> %i.la, <2 x float> splat (float 5.000000e-01), <2 x float> %i.kz
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.lc, ptr %i.f, align 16, !tbaa !56, !noalias !994
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader.i.us, %.preheader.us
  %i.ld = fmul float %i.rd, %i.rm
  %i.le = insertelement <8 x float> poison, float %i.ld, i64 0
  %i.lf = shufflevector <8 x float> %i.le, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph87.i.us

.lr.ph87.i.us:                                    ; preds = %.loopexit.i.us
  %trunc290 = trunc nuw i64 %i.gg to i8
  switch i8 %trunc290, label %.lr.ph.i202.us [
    i8 0, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
    i8 1, label %.lr.ph.us.i.us.preheader
  ]

.lr.ph.us.i.us.preheader:                         ; preds = %.lr.ph87.i.us
  %i.lg = load <2 x float>, ptr %i.f, align 16
  %i.lh = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %.lr.ph.us.i.us.preheader, %._crit_edge.split.us.us.i.us
  %.07585.us.i.us = phi i64 [ %37, %._crit_edge.split.us.us.i.us ], [ 0, %.lr.ph.us.i.us.preheader ] ; 3 uses
  %.not79.us.i.us = icmp samesign ult i64 %.07585.us.i.us, %i.ra
  %24 = shl nuw nsw i64 %.07585.us.i.us, 3        ; 3 uses
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %24
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %24
  %27 = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %24
  %28 = insertelement <2 x i1> poison, i1 %.not79.us.i.us, i64 0
  %29 = shufflevector <2 x i1> %28, <2 x i1> poison, <2 x i32> zeroinitializer
  %30 = select <2 x i1> %29, <2 x float> %i.lg, <2 x float> %i.lh
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.us.i.us
  %.07684.us.us.i.us = phi i64 [ 0, %.lr.ph.us.i.us ], [ %i.ls, %bb.o ] ; 4 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %.07684.us.us.i.us
  %32 = load <8 x float>, ptr %i.li, align 32, !tbaa !57, !noalias !994
  %33 = fmul <8 x float> %i.lf, %32
  %34 = getelementptr inbounds nuw [4 x i8], ptr %26, i64 %.07684.us.us.i.us
  %i.lj = load <8 x float>, ptr %34, align 32, !tbaa !57, !alias.scope !995, !noalias !996
  %i.lk = fmul <8 x float> %33, %i.lj             ; 2 uses
  %i.ll = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.lk)
  %i.lm = fcmp oge <8 x float> %i.ll, %31
  %i.ln = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.lk)
  %i.lo = select <8 x i1> %i.lm, <8 x float> %i.ln, <8 x float> zeroinitializer ; 2 uses
  %i.lp = fcmp oge <8 x float> %i.lo, splat (float f0x4F000000)
  %i.lq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.lo)
  %i.lr = select <8 x i1> %i.lp, <8 x i32> splat (i32 2147483647), <8 x i32> %i.lq
  %35 = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %.07684.us.us.i.us
  store <8 x i32> %i.lr, ptr %35, align 32, !tbaa !57, !alias.scope !996, !noalias !995
  %i.ls = add nuw nsw i64 %.07684.us.us.i.us, 8   ; 2 uses
  %36 = icmp samesign ult i64 %i.ls, %i.rb
  br i1 %36, label %bb.o, label %._crit_edge.split.us.us.i.us, !llvm.loop !4

._crit_edge.split.us.us.i.us:                     ; preds = %bb.o
  %37 = add nuw nsw i64 %.07585.us.i.us, 1        ; 2 uses
  %exitcond95.not.i.us = icmp eq i64 %37, %i.hu
  br i1 %exitcond95.not.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.us.i.us, !llvm.loop !5

.lr.ph.i202.us:                                   ; preds = %.lr.ph87.i.us, %._crit_edge.split.i.us
  %.07585.i.us = phi i64 [ %i.mu, %._crit_edge.split.i.us ], [ 0, %.lr.ph87.i.us ] ; 3 uses
  %.not79.i.us = icmp samesign ult i64 %.07585.i.us, %i.ra
  %i.lt = shl nuw nsw i64 %.07585.i.us, 3
  %i.lu = mul nuw nsw i64 %i.lt, %i.gg            ; 3 uses
  %.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.us, ptr %i.f, ptr %i.dp
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.lu
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.lu
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i202.us
  %.07684.i.us = phi i64 [ 0, %.lr.ph.i202.us ], [ %i.ms, %bb.p ] ; 5 uses
  %i.ly = icmp samesign uge i64 %.07684.i.us, %i.rc
  %i.lz = zext i1 %i.ly to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.sroa.sel, i64 %i.lz
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !56, !noalias !994
  %i.mc = insertelement <8 x float> poison, float %i.mb, i64 0
  %i.md = shufflevector <8 x float> %i.mc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.07684.i.us
  %i.mf = load <8 x float>, ptr %i.me, align 32, !tbaa !57, !noalias !994
  %i.mg = fmul <8 x float> %i.lf, %i.mf
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %.07684.i.us
  %i.mi = load <8 x float>, ptr %i.mh, align 32, !tbaa !57, !alias.scope !995, !noalias !996
  %i.mj = fmul <8 x float> %i.mg, %i.mi           ; 2 uses
  %i.mk = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.mj)
  %i.ml = fcmp oge <8 x float> %i.mk, %i.md
  %i.mm = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.mj)
  %i.mn = select <8 x i1> %i.ml, <8 x float> %i.mm, <8 x float> zeroinitializer ; 2 uses
  %i.mo = fcmp oge <8 x float> %i.mn, splat (float f0x4F000000)
  %i.mp = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.mn)
  %i.mq = select <8 x i1> %i.mo, <8 x i32> splat (i32 2147483647), <8 x i32> %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %.07684.i.us
  store <8 x i32> %i.mq, ptr %i.mr, align 32, !tbaa !57, !alias.scope !996, !noalias !995
  %i.ms = add nuw nsw i64 %.07684.i.us, 8         ; 2 uses
  %i.mt = icmp samesign ult i64 %i.ms, %i.rb
  br i1 %i.mt, label %bb.p, label %._crit_edge.split.i.us, !llvm.loop !4

._crit_edge.split.i.us:                           ; preds = %bb.p
  %i.mu = add nuw nsw i64 %.07585.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.mu, %i.hu
  br i1 %exitcond.not.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us, label %.lr.ph.i202.us, !llvm.loop !5

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us: ; preds = %._crit_edge.split.us.us.i.us, %._crit_edge.split.i.us, %.lr.ph87.i.us, %.loopexit.i.us
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.gw, ptr noundef %i.cm, ptr noundef %i.mv, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.mw = load float, ptr %i.dl, align 4, !tbaa !56
  %i.mx = load i32, ptr %9, align 8, !tbaa !193   ; 2 uses
  %i.my = shl nuw nsw i64 %i.gi, 1                ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.my ; 3 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.my ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !997)
  call void @llvm.experimental.noalias.scope.decl(metadata !998)
  %i.nb = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !999 ; 2 uses
  %i.nc = zext i32 %i.mx to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !51, !noalias !999
  %.idx.i.i.us.1 = mul nuw nsw i64 %i.nc, 24
  %i.nf = getelementptr i8, ptr %i.nb, i64 %.idx.i.i.us.1
  %i.ng = getelementptr i8, ptr %i.nf, i64 88
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !53, !noalias !999
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nh ; 2 uses
  %i.nj = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !999
  %i.nk = fmul float %i.nj, %i.hq
  br i1 %i.qw, label %.preheader.i.us.1, label %.loopexit.i.us.1

.preheader.i.us.1:                                ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.nl = insertelement <2 x float> poison, float %i.qz, i64 0
  %i.nm = shufflevector <2 x float> %i.nl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nn = insertelement <2 x float> poison, float %i.qy, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> %i.no, <2 x float> <float 5.800000e-01, float 6.200000e-01>) ; 2 uses
  %i.nq = fcmp olt <2 x float> %i.np, splat (float 5.000000e-01)
  %i.nr = select <2 x i1> %i.nq, <2 x float> splat (float 5.000000e-01), <2 x float> %i.np
  %i.ns = shufflevector <2 x float> %i.nr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  store <4 x float> %i.ns, ptr %i.f, align 16, !tbaa !56, !noalias !999
  br label %.loopexit.i.us.1

.loopexit.i.us.1:                                 ; preds = %.preheader.i.us.1, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.us
  %i.nt = fmul float %i.mw, %i.nk
  %i.nu = insertelement <8 x float> poison, float %i.nt, i64 0
  %i.nv = shufflevector <8 x float> %i.nu, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br i1 %.not91.i.i.us, label %iter.check440, label %.lr.ph87.i.us.1

.lr.ph87.i.us.1:                                  ; preds = %.loopexit.i.us.1
  %trunc290.1 = trunc nuw i64 %i.gg to i8
  switch i8 %trunc290.1, label %.lr.ph.i202.us.1 [
    i8 0, label %iter.check440
    i8 1, label %.lr.ph.us.i.us.preheader.1
  ]

.lr.ph.us.i.us.preheader.1:                       ; preds = %.lr.ph87.i.us.1
  %i.nw = load <2 x float>, ptr %i.f, align 16
  %i.nx = load <2 x float>, ptr %i.dp, align 8
  br label %.lr.ph.us.i.us.1

.lr.ph.us.i.us.1:                                 ; preds = %._crit_edge.split.us.us.i.us.1, %.lr.ph.us.i.us.preheader.1
  %.07585.us.i.us.1 = phi i64 [ %51, %._crit_edge.split.us.us.i.us.1 ], [ 0, %.lr.ph.us.i.us.preheader.1 ] ; 3 uses
  %.not79.us.i.us.1 = icmp samesign ult i64 %.07585.us.i.us.1, %i.ra
  %38 = shl nuw nsw i64 %.07585.us.i.us.1, 3      ; 3 uses
  %39 = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %38
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %38
  %41 = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %38
  %42 = insertelement <2 x i1> poison, i1 %.not79.us.i.us.1, i64 0
  %43 = shufflevector <2 x i1> %42, <2 x i1> poison, <2 x i32> zeroinitializer
  %44 = select <2 x i1> %43, <2 x float> %i.nw, <2 x float> %i.nx
  %45 = shufflevector <2 x float> %44, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.us.i.us.1
  %.07684.us.us.i.us.1 = phi i64 [ 0, %.lr.ph.us.i.us.1 ], [ %i.oi, %bb.q ] ; 4 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %39, i64 %.07684.us.us.i.us.1
  %46 = load <8 x float>, ptr %i.ny, align 32, !tbaa !57, !noalias !999
  %47 = fmul <8 x float> %i.nv, %46
  %48 = getelementptr inbounds nuw [4 x i8], ptr %40, i64 %.07684.us.us.i.us.1
  %i.nz = load <8 x float>, ptr %48, align 32, !tbaa !57, !alias.scope !997, !noalias !998
  %i.oa = fmul <8 x float> %47, %i.nz             ; 2 uses
  %i.ob = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oa)
  %i.oc = fcmp oge <8 x float> %i.ob, %45
  %i.od = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.oa)
  %i.oe = select <8 x i1> %i.oc, <8 x float> %i.od, <8 x float> zeroinitializer ; 2 uses
  %i.of = fcmp oge <8 x float> %i.oe, splat (float f0x4F000000)
  %i.og = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.oe)
  %i.oh = select <8 x i1> %i.of, <8 x i32> splat (i32 2147483647), <8 x i32> %i.og
  %49 = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %.07684.us.us.i.us.1
  store <8 x i32> %i.oh, ptr %49, align 32, !tbaa !57, !alias.scope !998, !noalias !997
  %i.oi = add nuw nsw i64 %.07684.us.us.i.us.1, 8 ; 2 uses
  %50 = icmp samesign ult i64 %i.oi, %i.rb
  br i1 %50, label %bb.q, label %._crit_edge.split.us.us.i.us.1, !llvm.loop !4

._crit_edge.split.us.us.i.us.1:                   ; preds = %bb.q
  %51 = add nuw nsw i64 %.07585.us.i.us.1, 1      ; 2 uses
  %exitcond95.not.i.us.1 = icmp eq i64 %51, %i.hu
  br i1 %exitcond95.not.i.us.1, label %iter.check440, label %.lr.ph.us.i.us.1, !llvm.loop !5

.lr.ph.i202.us.1:                                 ; preds = %.lr.ph87.i.us.1, %._crit_edge.split.i.us.1
  %.07585.i.us.1 = phi i64 [ %i.pk, %._crit_edge.split.i.us.1 ], [ 0, %.lr.ph87.i.us.1 ] ; 3 uses
  %.not79.i.us.1 = icmp samesign ult i64 %.07585.i.us.1, %i.ra
  %i.oj = shl nuw nsw i64 %.07585.i.us.1, 3
  %i.ok = mul nuw nsw i64 %i.oj, %i.gg            ; 3 uses
  %.sroa.sel.idx.us.1.sroa.sel = select i1 %.not79.i.us.1, ptr %i.f, ptr %i.dp
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ok
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ok
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.ok
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i202.us.1
  %.07684.i.us.1 = phi i64 [ 0, %.lr.ph.i202.us.1 ], [ %i.pi, %bb.r ] ; 5 uses
  %i.oo = icmp samesign uge i64 %.07684.i.us.1, %i.rc
  %i.op = zext i1 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.us.1.sroa.sel, i64 %i.op
  %i.or = load float, ptr %i.oq, align 4, !tbaa !56, !noalias !999
  %i.os = insertelement <8 x float> poison, float %i.or, i64 0
  %i.ot = shufflevector <8 x float> %i.os, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %.07684.i.us.1
  %i.ov = load <8 x float>, ptr %i.ou, align 32, !tbaa !57, !noalias !999
  %i.ow = fmul <8 x float> %i.nv, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %.07684.i.us.1
  %i.oy = load <8 x float>, ptr %i.ox, align 32, !tbaa !57, !alias.scope !997, !noalias !998
  %i.oz = fmul <8 x float> %i.ow, %i.oy           ; 2 uses
  %i.pa = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.oz)
  %i.pb = fcmp oge <8 x float> %i.pa, %i.ot
  %i.pc = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.oz)
  %i.pd = select <8 x i1> %i.pb, <8 x float> %i.pc, <8 x float> zeroinitializer ; 2 uses
  %i.pe = fcmp oge <8 x float> %i.pd, splat (float f0x4F000000)
  %i.pf = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.pd)
  %i.pg = select <8 x i1> %i.pe, <8 x i32> splat (i32 2147483647), <8 x i32> %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.07684.i.us.1
  store <8 x i32> %i.pg, ptr %i.ph, align 32, !tbaa !57, !alias.scope !998, !noalias !997
  %i.pi = add nuw nsw i64 %.07684.i.us.1, 8       ; 2 uses
  %i.pj = icmp samesign ult i64 %i.pi, %i.rb
  br i1 %i.pj, label %bb.r, label %._crit_edge.split.i.us.1, !llvm.loop !4

._crit_edge.split.i.us.1:                         ; preds = %bb.r
  %i.pk = add nuw nsw i64 %.07585.i.us.1, 1       ; 2 uses
  %exitcond.not.i.us.1 = icmp eq i64 %i.pk, %i.hu
  br i1 %exitcond.not.i.us.1, label %iter.check440, label %.lr.ph.i202.us.1, !llvm.loop !5

iter.check440:                                    ; preds = %._crit_edge.split.us.us.i.us.1, %._crit_edge.split.i.us.1, %.lr.ph87.i.us.1, %.loopexit.i.us.1
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.mx, ptr noundef %i.mz, ptr noundef %i.pl, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #47
  store i32 %i.hf, ptr %i.gj, align 4, !tbaa !55
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.co, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.c) #49
  br i1 %min.iters.check421, label %vec.epilog.scalar.ph441.preheader, label %vector.main.loop.iter.check422

vector.main.loop.iter.check422:                   ; preds = %iter.check440
  br i1 %min.iters.check423, label %vec.epilog.ph444, label %vector.body426

vector.body426:                                   ; preds = %vector.main.loop.iter.check422, %vector.body426
  %index427 = phi i64 [ %index.next436, %vector.body426 ], [ 0, %vector.main.loop.iter.check422 ] ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index427 ; 5 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 32 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pm, i64 64 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 96 ; 2 uses
  %wide.load428.a = load <4 x ptr>, ptr %i.pm, align 16, !tbaa !188
  %wide.load429 = load <4 x ptr>, ptr %i.pn, align 16, !tbaa !188
  %wide.load430 = load <4 x ptr>, ptr %i.po, align 16, !tbaa !188
  %wide.load431 = load <4 x ptr>, ptr %i.pp, align 16, !tbaa !188
  %wide.gep432.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load428.a, i64 %i.gi
  %wide.gep433 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load429, i64 %i.gi
  %wide.gep434 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load430, i64 %i.gi
  %wide.gep435 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load431, i64 %i.gi
  store <4 x ptr> %wide.gep432.a, ptr %i.pm, align 16, !tbaa !188
  store <4 x ptr> %wide.gep433, ptr %i.pn, align 16, !tbaa !188
  store <4 x ptr> %wide.gep434, ptr %i.po, align 16, !tbaa !188
  store <4 x ptr> %wide.gep435, ptr %i.pp, align 16, !tbaa !188
  %index.next436 = add nuw i64 %index427, 16      ; 2 uses
  %i.pq = icmp eq i64 %index.next436, %n.vec425
  br i1 %i.pq, label %middle.block437, label %vector.body426, !llvm.loop !967

middle.block437:                                  ; preds = %vector.body426
  br i1 %cmp.n438, label %iter.check407, label %vec.epilog.iter.check442

vec.epilog.iter.check442:                         ; preds = %middle.block437
  br i1 %min.epilog.iters.check443, label %vec.epilog.scalar.ph441.preheader, label %vec.epilog.ph444, !prof !1000

vec.epilog.ph444:                                 ; preds = %vector.main.loop.iter.check422, %vec.epilog.iter.check442
  %vec.epilog.resume.val439 = phi i64 [ %n.vec425, %vec.epilog.iter.check442 ], [ 0, %vector.main.loop.iter.check422 ]
  br label %vec.epilog.vector.body446

vec.epilog.vector.body446:                        ; preds = %vec.epilog.vector.body446, %vec.epilog.ph444
  %index447 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph444 ], [ %index.next450, %vec.epilog.vector.body446 ] ; 2 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index447 ; 2 uses
  %wide.load448 = load <4 x ptr>, ptr %i.pr, align 16, !tbaa !188
  %wide.gep449 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load448, i64 %i.gi
  store <4 x ptr> %wide.gep449, ptr %i.pr, align 16, !tbaa !188
  %index.next450 = add nuw i64 %index447, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next450, %n.vec445
  br i1 %i.ps, label %vec.epilog.middle.block451, label %vec.epilog.vector.body446, !llvm.loop !968

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body446
  br i1 %cmp.n452, label %iter.check407, label %vec.epilog.scalar.ph441.preheader

vec.epilog.scalar.ph441.preheader:                ; preds = %iter.check440, %vec.epilog.iter.check442, %vec.epilog.middle.block451
  %.0277.us.ph = phi i64 [ 0, %iter.check440 ], [ %n.vec425, %vec.epilog.iter.check442 ], [ %n.vec445, %vec.epilog.middle.block451 ]
  br label %vec.epilog.scalar.ph441

vec.epilog.scalar.ph441:                          ; preds = %vec.epilog.scalar.ph441.preheader, %vec.epilog.scalar.ph441
  %.0277.us = phi i64 [ %i.pw, %vec.epilog.scalar.ph441 ], [ %.0277.us.ph, %vec.epilog.scalar.ph441.preheader ] ; 2 uses
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0277.us ; 2 uses
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !188
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.gi
  store ptr %i.pv, ptr %i.pt, align 8, !tbaa !188
  %i.pw = add nuw i64 %.0277.us, 1                ; 2 uses
  %exitcond294.not = icmp eq i64 %i.pw, %i.bg
  br i1 %exitcond294.not, label %iter.check407, label %vec.epilog.scalar.ph441, !llvm.loop !969

iter.check407:                                    ; preds = %vec.epilog.scalar.ph441, %vec.epilog.middle.block451, %middle.block437
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.hg, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.dr) #49
  br i1 %min.iters.check388, label %vec.epilog.scalar.ph408.preheader, label %vector.main.loop.iter.check389

vector.main.loop.iter.check389:                   ; preds = %iter.check407
  br i1 %min.iters.check390, label %vec.epilog.ph411, label %vector.body393

vector.body393:                                   ; preds = %vector.main.loop.iter.check389, %vector.body393
  %index394 = phi i64 [ %index.next403, %vector.body393 ], [ 0, %vector.main.loop.iter.check389 ] ; 2 uses
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index394 ; 5 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 32 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 64 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.px, i64 96 ; 2 uses
  %wide.load395.a = load <4 x ptr>, ptr %i.px, align 8, !tbaa !188
  %wide.load396 = load <4 x ptr>, ptr %i.py, align 8, !tbaa !188
  %wide.load397 = load <4 x ptr>, ptr %i.pz, align 8, !tbaa !188
  %wide.load398 = load <4 x ptr>, ptr %i.qa, align 8, !tbaa !188
  %wide.gep399.a = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load395.a, i64 %i.gi
  %wide.gep400 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load396, i64 %i.gi
  %wide.gep401 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load397, i64 %i.gi
  %wide.gep402 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load398, i64 %i.gi
  store <4 x ptr> %wide.gep399.a, ptr %i.px, align 8, !tbaa !188
  store <4 x ptr> %wide.gep400, ptr %i.py, align 8, !tbaa !188
  store <4 x ptr> %wide.gep401, ptr %i.pz, align 8, !tbaa !188
  store <4 x ptr> %wide.gep402, ptr %i.qa, align 8, !tbaa !188
  %index.next403 = add nuw i64 %index394, 16      ; 2 uses
  %i.qb = icmp eq i64 %index.next403, %n.vec392
  br i1 %i.qb, label %middle.block404, label %vector.body393, !llvm.loop !970

middle.block404:                                  ; preds = %vector.body393
  br i1 %cmp.n405, label %iter.check, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block404
  br i1 %min.epilog.iters.check410, label %vec.epilog.scalar.ph408.preheader, label %vec.epilog.ph411, !prof !1000

vec.epilog.ph411:                                 ; preds = %vector.main.loop.iter.check389, %vec.epilog.iter.check409
  %vec.epilog.resume.val406 = phi i64 [ %n.vec392, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check389 ]
  br label %vec.epilog.vector.body413

vec.epilog.vector.body413:                        ; preds = %vec.epilog.vector.body413, %vec.epilog.ph411
  %index414 = phi i64 [ %vec.epilog.resume.val406, %vec.epilog.ph411 ], [ %index.next417, %vec.epilog.vector.body413 ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %index414 ; 2 uses
  %wide.load415 = load <4 x ptr>, ptr %i.qc, align 8, !tbaa !188
  %wide.gep416 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load415, i64 %i.gi
  store <4 x ptr> %wide.gep416, ptr %i.qc, align 8, !tbaa !188
  %index.next417 = add nuw i64 %index414, 4       ; 2 uses
  %i.qd = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.qd, label %vec.epilog.middle.block418, label %vec.epilog.vector.body413, !llvm.loop !971

vec.epilog.middle.block418:                       ; preds = %vec.epilog.vector.body413
  br i1 %cmp.n419, label %iter.check, label %vec.epilog.scalar.ph408.preheader

vec.epilog.scalar.ph408.preheader:                ; preds = %iter.check407, %vec.epilog.iter.check409, %vec.epilog.middle.block418
  %.0277.us.1.ph = phi i64 [ 0, %iter.check407 ], [ %n.vec392, %vec.epilog.iter.check409 ], [ %n.vec412, %vec.epilog.middle.block418 ]
  br label %vec.epilog.scalar.ph408

vec.epilog.scalar.ph408:                          ; preds = %vec.epilog.scalar.ph408.preheader, %vec.epilog.scalar.ph408
  %.0277.us.1 = phi i64 [ %i.qh, %vec.epilog.scalar.ph408 ], [ %.0277.us.1.ph, %vec.epilog.scalar.ph408.preheader ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.0277.us.1 ; 2 uses
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !188
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.gi
  store ptr %i.qg, ptr %i.qe, align 8, !tbaa !188
  %i.qh = add nuw i64 %.0277.us.1, 1              ; 2 uses
  %exitcond294.1.not = icmp eq i64 %i.qh, %i.bg
  br i1 %exitcond294.1.not, label %iter.check, label %vec.epilog.scalar.ph408, !llvm.loop !972

iter.check:                                       ; preds = %vec.epilog.scalar.ph408, %vec.epilog.middle.block418, %middle.block404
  call void @_ZN3jxl19ProgressiveSplitter19SplitACCoefficientsIiEEvPKT_RKNS_10AcStrategyEmmPrPS2_(ptr noundef nonnull align 8 dereferenceable(272) %i.bf, ptr noundef %i.na, ptr noundef nonnull align 4 dereferenceable(5) %9, i64 noundef %.0184280.us, i64 noundef %.0186284.us, ptr noundef nonnull %i.ds) #49
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check375, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index ; 5 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 32 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 64 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 96 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %i.qi, align 16, !tbaa !188
  %wide.load376 = load <4 x ptr>, ptr %i.qj, align 16, !tbaa !188
  %wide.load377 = load <4 x ptr>, ptr %i.qk, align 16, !tbaa !188
  %wide.load378 = load <4 x ptr>, ptr %i.ql, align 16, !tbaa !188
  %wide.gep = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load, i64 %i.gi
  %wide.gep379 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load376, i64 %i.gi
  %wide.gep380 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load377, i64 %i.gi
  %wide.gep381 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load378, i64 %i.gi
  store <4 x ptr> %wide.gep, ptr %i.qi, align 16, !tbaa !188
  store <4 x ptr> %wide.gep379, ptr %i.qj, align 16, !tbaa !188
  store <4 x ptr> %wide.gep380, ptr %i.qk, align 16, !tbaa !188
  store <4 x ptr> %wide.gep381, ptr %i.ql, align 16, !tbaa !188
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.qm = icmp eq i64 %index.next, %n.vec
  br i1 %i.qm, label %middle.block, label %vector.body, !llvm.loop !973

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1000

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index383 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index383 ; 2 uses
  %wide.load384 = load <4 x ptr>, ptr %i.qn, align 16, !tbaa !188
  %wide.gep385 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.load384, i64 %i.gi
  store <4 x ptr> %wide.gep385, ptr %i.qn, align 16, !tbaa !188
  %index.next386 = add nuw i64 %index383, 4       ; 2 uses
  %i.qo = icmp eq i64 %index.next386, %n.vec382
  br i1 %i.qo, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !974

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n387, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0277.us.2.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec382, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0277.us.2 = phi i64 [ %i.qs, %vec.epilog.scalar.ph ], [ %.0277.us.2.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.0277.us.2 ; 2 uses
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !188
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.gi
  store ptr %i.qr, ptr %i.qp, align 8, !tbaa !188
  %i.qs = add nuw i64 %.0277.us.2, 1              ; 2 uses
  %exitcond294.2.not = icmp eq i64 %i.qs, %i.bg
  br i1 %exitcond294.2.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !975

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #47
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #47
  %i.qt = add nuw i64 %.0184280.us, 1             ; 2 uses
  %exitcond296.not = icmp eq i64 %i.qt, %umin
  br i1 %exitcond296.not, label %.critedge.us, label %bb.f, !llvm.loop !976

.critedge.us:                                     ; preds = %bb.s, %bb.e
  %i.qu = add nuw nsw i64 %.0185282.us, 1         ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 8
  %exitcond297.not = icmp eq i64 %i.qu, %i.df
  br i1 %exitcond297.not, label %._crit_edge.us, label %bb.e, !llvm.loop !977

.preheader.us.sink.split:                         ; preds = %bb.k, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !983
  br label %.preheader.us

.preheader.us:                                    ; preds = %bb.n, %.preheader.us.sink.split
  %i.qv = mul nuw nsw i64 %i.ge, %i.gb
  %i.qw = icmp samesign ugt i64 %i.qv, 3          ; 2 uses
  %i.qx = uitofp nneg i64 %i.gg to float
  %i.qy = uitofp nneg i64 %i.gf to float          ; 2 uses
  %i.qz = fmul nnan float %i.qx, -7.440000e-03    ; 2 uses
  %i.ra = shl nuw nsw i64 %i.gf, 2                ; 4 uses
  %i.rb = shl nuw nsw i64 %i.gg, 3                ; 4 uses
  %i.rc = shl nuw nsw i64 %i.gg, 2                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_.thres, i64 16, i1 false)
  %i.rd = load float, ptr %i.dk, align 8, !tbaa !56
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.re = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !994 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !51, !noalias !994
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 72
  %i.ri = getelementptr i8, ptr %i.rh, i64 %.idx.i.i.i.us
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !53, !noalias !994
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %i.rj ; 2 uses
  %i.rl = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !994
  %i.rm = fmul float %i.rl, %i.hq
  br i1 %i.qw, label %.preheader.i.us, label %.loopexit.i.us

.lr.ph.us:                                        ; preds = %.lr.ph.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47, !noalias !983
  %.idx.us = shl nuw nsw i64 %i.gi, 3
  %i.rn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.us
  br label %bb.n

.lr.ph281.us:                                     ; preds = %bb.e
  %i.ro = getelementptr inbounds nuw i8, ptr %i.en, i64 %.0185282.us
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !57
  %i.rq = load float, ptr %i.dh, align 4, !tbaa !190
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.0185282.us
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !57
  %i.rt = insertelement <2 x i8> poison, i8 %i.rs, i64 0
  %i.ru = insertelement <2 x i8> %i.rt, i8 %i.rp, i64 1
  %i.rv = sitofp <2 x i8> %i.ru to <2 x float>
  %i.rw = load <2 x float>, ptr %i.dg, align 8, !tbaa !56
  %i.rx = insertelement <2 x float> poison, float %i.rq, i64 0
  %i.ry = shufflevector <2 x float> %i.rx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rv, <2 x float> %i.ry, <2 x float> %i.rw)
  %i.sa = fneg <2 x float> %i.rz                  ; 2 uses
  %i.sb = shufflevector <2 x float> %i.sa, <2 x float> poison, <8 x i32> zeroinitializer
  %i.sc = shufflevector <2 x float> %i.sa, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.f

._crit_edge.us:                                   ; preds = %.critedge.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #47
  %i.sd = add nuw i64 %.0186284.us, 1             ; 2 uses
  %exitcond298.not = icmp eq i64 %i.sd, %i.aa
  br i1 %exitcond298.not, label %._crit_edge286, label %.lr.ph283.us, !llvm.loop !978

.lr.ph285.split:                                  ; preds = %.lr.ph285.split, %.lr.ph285.split.preheader.new
  %niter = phi i64 [ 0, %.lr.ph285.split.preheader.new ], [ %niter.next.7, %.lr.ph285.split ]
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge286.loopexit.unr-lcssa, label %.lr.ph285.split, !llvm.loop !978

._crit_edge286.loopexit.unr-lcssa:                ; preds = %.lr.ph285.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge286, label %.lr.ph285.split.epil.preheader

.lr.ph285.split.epil.preheader:                   ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.preheader
  %lcmp.mod459 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod459)
  br label %.lr.ph285.split.epil

.lr.ph285.split.epil:                             ; preds = %.lr.ph285.split.epil, %.lr.ph285.split.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph285.split.epil.preheader ], [ %epil.iter.next, %.lr.ph285.split.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge286, label %.lr.ph285.split.epil, !llvm.loop !979

._crit_edge286:                                   ; preds = %bb.d, %._crit_edge.us, %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285.split.epil, %bb.c, %.critedge197
  %.sroa.0248.1 = phi i32 [ 0, %.critedge197 ], [ 0, %._crit_edge.us ], [ 1, %bb.c ], [ 0, %._crit_edge286.loopexit.unr-lcssa ], [ 0, %.lr.ph285.split.epil ], [ 1, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #47
  %.pr = load i32, ptr %i.ay, align 8, !tbaa !180
  %i.se = icmp eq i32 %.pr, 0
  br i1 %i.se, label %bb.t, label %.thread

bb.t:                                             ; preds = %._crit_edge286
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %7) #49
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.t, %._crit_edge286
  %.sroa.0248.2262 = phi i32 [ %.sroa.0248.1, %bb.t ], [ %.sroa.0248.1, %._crit_edge286 ], [ %i.az, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %.pr263 = load i32, ptr %i.as, align 8, !tbaa !180
  %i.sf = icmp eq i32 %.pr263, 0
  br i1 %i.sf, label %bb.u, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.u:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(28) %5) #49
  br label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203: ; preds = %bb.a, %.thread, %bb.u
  %.sroa.0248.3266 = phi i32 [ %.sroa.0248.2262, %bb.u ], [ %.sroa.0248.2262, %.thread ], [ %i.at, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret i32 %.sroa.0248.3266
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN3jxl6N_AVX212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4) unnamed_addr #12 {
bb.a:
  %5 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %6 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %7 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %8 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %9 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %10 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %11 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %12 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %13 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %14 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %15 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %16 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %17 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %18 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %19 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %20 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %21 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %22 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %23 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %24 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %25 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %26 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %27 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %28 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %29 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %30 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %31 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %32 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %33 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %34 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %35 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %36 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %37 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %38 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %39 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %40 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %41 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %42 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %43 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %44 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %45 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %46 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %47 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %48 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %49 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %50 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %51 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %52 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %53 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %54 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %55 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %56 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %57 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %58 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %59 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %60 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %61 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %62 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %63 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %64 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %65 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %66 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %67 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %68 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %69 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %70 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %71 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %72 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %73 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %74 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %75 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %76 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %77 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %78 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %79 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %80 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %81 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %82 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %83 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTTo", align 8 ; 5 uses
  %84 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %85 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %86 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %87 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %88 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %89 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %90 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %91 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %92 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %93 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %94 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %95 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %96 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %97 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  %98 = alloca %"class.jxl::N_AVX2::(anonymous namespace)::DCTFrom", align 8 ; 5 uses
  switch i32 %0, label %bb.y [
    i32 1, label %.split.us.3.1
    i32 13, label %.preheader732
end_hunk_0
