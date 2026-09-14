Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_SSE419ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 5 uses
  %.not287 = icmp eq i64 %i.aa, 0
  br i1 %.not287, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.critedge197
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = lshr i64 %i.ad, 3                       ; 2 uses
  %.not288 = icmp eq i64 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1300
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 3872 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 3876 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1020 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  br i1 %.not288, label %.lr.ph285.split.preheader, label %.lr.ph283.us.preheader

.lr.ph285.split.preheader:                        ; preds = %.lr.ph285
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.dv = icmp ult i64 %i.aa, 8
  br i1 %i.dv, label %.lr.ph285.split.epil.preheader, label %.lr.ph285.split.preheader.new

.lr.ph285.split.preheader.new:                    ; preds = %.lr.ph285.split.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph285.split

.lr.ph283.us.preheader:                           ; preds = %.lr.ph285
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %min.iters.check391 = icmp ult i64 %i.bg, 4
  %n.vec393 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n402 = icmp eq i64 %i.bg, %n.vec393
  %min.iters.check377 = icmp ult i64 %i.bg, 4
  %n.vec379 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n388 = icmp eq i64 %i.bg, %n.vec379
  %min.iters.check = icmp ult i64 %i.bg, 4
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.tv, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dy = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.dz = load ptr, ptr %i.cp, align 8, !tbaa !181
  %i.ea = load i64, ptr %i.cq, align 8, !tbaa !177
  %i.eb = mul i64 %i.ea, %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ec, i64 64) ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.p
  %i.ee = lshr i64 %.0186284.us, 3
  %i.ef = add nuw nsw i64 %i.ee, %i.ac            ; 2 uses
  %i.eg = load ptr, ptr %i.cr, align 8, !tbaa !181
  %i.eh = load i64, ptr %i.cs, align 8, !tbaa !177
  %i.ei = mul i64 %i.eh, %i.ef
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ab
  %i.el = load ptr, ptr %i.ct, align 8, !tbaa !181
  %i.em = load i64, ptr %i.cu, align 8, !tbaa !177
  %i.en = mul i64 %i.em, %i.ef
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.en ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.eq = shl i64 %.0186284.us, 3
  %i.er = add i64 %i.ak, %i.eq
  %i.es = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.et = mul i64 %i.es, %i.er                    ; 3 uses
  %i.eu = load ptr, ptr %i.cv, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eu, i64 64) ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.aj
  store ptr %i.ew, ptr %i.d, align 16, !tbaa !189
  %i.ex = load ptr, ptr %i.cx, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ex, i64 64) ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ey, i64 64) ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.aj
  store ptr %i.ez, ptr %i.cw, align 8, !tbaa !189
  %i.fa = load ptr, ptr %i.cz, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.aj
  store ptr %i.fc, ptr %i.cy, align 16, !tbaa !189
  %i.fd = load i64, ptr %i.al, align 8, !tbaa !177
  %i.fe = mul i64 %i.fd, %i.dy                    ; 3 uses
  %i.ff = load ptr, ptr %i.da, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ff, i64 64) ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.p
  %i.fi = load ptr, ptr %i.db, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fi, i64 64) ]
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fj, i64 64) ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fj, i64 %i.p
  %i.fl = load ptr, ptr %i.dc, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fl, i64 64) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fe ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.p
  %i.fo = load ptr, ptr %i.dd, align 8, !tbaa !181
  %i.fp = load i64, ptr %i.de, align 8, !tbaa !177
  %i.fq = mul i64 %i.fp, %i.dy
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fr, i64 64) ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.tb, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0185282.us
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !57
  %i.fv = load float, ptr %i.dg, align 8, !tbaa !261
  %i.fw = sitofp i8 %i.fu to float
  %i.fx = load float, ptr %i.dh, align 4, !tbaa !190 ; 2 uses
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.fw, float %i.fx, float %i.fv)
  %i.fz = insertelement <4 x float> poison, float %i.fy, i64 0
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.0185282.us
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !57
  %i.gd = load float, ptr %i.di, align 4, !tbaa !262
  %i.ge = sitofp i8 %i.gc to float
  %i.gf = call noundef float @llvm.fmuladd.f32(float %i.ge, float %i.fx, float %i.gd)
  %i.gg = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.gi
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

.lr.ph281.us:                                     ; preds = %bb.e, %bb.r
  %.0184280.us = phi i64 [ %i.ta, %bb.r ], [ %i.gi, %bb.e ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.0184280.us
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !57  ; 3 uses
  %i.gl = lshr i8 %i.gk, 1                        ; 2 uses
  %i.gm = and i8 %i.gk, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.gm to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.gl to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.gn = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.gn, ptr %9, align 8
  %i.go = trunc i8 %i.gk to i1
  br i1 %i.go, label %bb.f, label %bb.r

bb.f:                                             ; preds = %.lr.ph281.us
  %i.gp = zext nneg i8 %i.gl to i64               ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !57
  %i.gs = zext i8 %i.gr to i64                    ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.gp
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !57
  %i.gv = zext i8 %i.gu to i64                    ; 3 uses
  %i.gw = call noundef i64 @llvm.umin.i64(i64 %i.gv, i64 %i.gs) ; 9 uses
  %i.gx = call noundef i64 @llvm.umax.i64(i64 %i.gv, i64 %i.gs) ; 16 uses
  %i.gy = shl nuw nsw i64 %i.gx, 6
  %i.gz = mul nuw nsw i64 %i.gy, %i.gw            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %.0184280.us ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !55 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0183.idx274.us = phi i64 [ 0, %bb.f ], [ %.0183.add.us, %bb.g ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.hc = load i32, ptr %.0183.ptr.us, align 4, !tbaa !55
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = load i32, ptr %9, align 8, !tbaa !193
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.hd
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !189
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx195.us
  %i.hi = mul nuw nsw i64 %i.gz, %i.hd
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hi
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.he, ptr noundef %i.hh, i64 noundef %i.aq, ptr noundef %i.hj, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.hk = load i32, ptr %9, align 8, !tbaa !193
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gz ; 6 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE412_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.hk, ptr noundef %i.hl, ptr noundef %i.hm, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.hn = load i32, ptr %9, align 8, !tbaa !193   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  call void @llvm.experimental.noalias.scope.decl(metadata !264)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !265
  %i.ho = load i32, ptr %i.be, align 4, !tbaa !164, !noalias !265
  %i.hp = icmp slt i32 %i.ho, 6
  br i1 %i.hp, label %.loopexit.2.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56, !noalias !265
  br label %bb.j

.loopexit.2.i.us:                                 ; preds = %bb.h
  %i.hq = load float, ptr %i.dn, align 8, !tbaa !165, !noalias !265
  %i.hr = load float, ptr %i.do, align 4, !tbaa !166, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !265
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !55, !noalias !265
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.hl, ptr noundef nonnull %i.e) #48, !noalias !266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56, !noalias !265
  %i.hs = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !265
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !55, !noalias !265
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 0, float noundef %i.hq, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !266
  %i.ht = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !265
  store i32 %i.hb, ptr %i.e, align 4, !tbaa !55, !noalias !265
  %.idx.i.us = shl nuw nsw i64 %i.gz, 3
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_SSE418AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dm, i64 noundef 2, float noundef %i.hr, i32 noundef %i.hn, i64 noundef %i.gx, i64 noundef %i.gw, ptr noundef nonnull %i.b, ptr noundef %i.hu, ptr noundef nonnull %i.e) #48, !noalias !266
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hs, i32 %i.ht)
  %i.hv = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !265
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.hv)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !265
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !55, !noalias !265
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.2.i.us, %bb.i
  %i.hw = phi i32 [ %i.hb, %bb.i ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.hy = load ptr, ptr %i.dp, align 8, !tbaa !42, !noalias !269 ; 3 uses
  %i.hz = zext i32 %i.hn to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !51, !noalias !269
  %.idx.i.i.i.us = mul nuw nsw i64 %i.hz, 24      ; 2 uses
  %i.ic = getelementptr i8, ptr %i.hy, i64 %.idx.i.i.i.us
  %i.id = getelementptr i8, ptr %i.ic, i64 80
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !53, !noalias !269 ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.ie ; 2 uses
  %i.ig = load float, ptr %i.dq, align 4, !tbaa !54, !noalias !269
  %i.ih = sitofp i32 %i.hw to float               ; 4 uses
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = insertelement <4 x float> poison, float %i.ii, i64 0
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.il = shl nuw nsw i64 %i.gw, 3                ; 6 uses
  %.not91.i.i.us = icmp eq i64 %i.gw, 0           ; 3 uses
  br i1 %.not91.i.i.us, label %.preheader.us.sink.split, label %.lr.ph87.i.i.us

.lr.ph87.i.i.us:                                  ; preds = %bb.j
  %i.im = shl nuw nsw i64 %i.gw, 2                ; 2 uses
  %i.in = shl nuw nsw i64 %i.gx, 3                ; 2 uses
  %i.io = shl nuw nsw i64 %i.gx, 2
  %trunc = trunc nuw i64 %i.gx to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph87.i.i.us
  %.val = load float, ptr %i.dj, align 4
  %.val349 = load float, ptr %i.dl, align 4
  %.val350 = load float, ptr %i.a, align 16
  %.val351 = load float, ptr %i.dk, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07585.us.i.i.us = phi i64 [ %i.js, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07585.us.i.i.us, %i.im ; 2 uses
  %i.ip = shl nuw nsw i64 %.07585.us.i.i.us, 3    ; 3 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ip
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ip
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ip
  %i.it = select i1 %.not79.us.i.i.us, float %.val, float %.val349
  %i.iu = insertelement <4 x float> poison, float %i.it, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iw = select i1 %.not79.us.i.i.us, float %.val350, float %.val351
  %i.ix = insertelement <4 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <4 x float> %i.ix, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i.i.us
  %.07684.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.jq, %bb.k ] ; 5 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07684.us.us.i.i.us
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !tbaa !57, !noalias !269
  %i.jb = call noundef <4 x float> @llvm.x86.sse41.blendvps(<4 x float> %i.iy, <4 x float> %i.iv, <4 x float> %i.ja)
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %.07684.us.us.i.i.us
  %i.jd = load <4 x float>, ptr %i.jc, align 16, !tbaa !57, !noalias !269
  %i.je = fmul <4 x float> %i.ik, %i.jd
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.07684.us.us.i.i.us
  %i.jg = load <4 x float>, ptr %i.jf, align 16, !tbaa !57, !alias.scope !270, !noalias !271
  %i.jh = fmul <4 x float> %i.je, %i.jg           ; 2 uses
  %i.ji = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.jh)
  %i.jj = fcmp ole <4 x float> %i.jb, %i.ji
  %i.jk = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.jh)
  %i.jl = select <4 x i1> %i.jj, <4 x float> %i.jk, <4 x float> zeroinitializer ; 2 uses
  %i.jm = fcmp oge <4 x float> %i.jl, splat (float f0x4F000000)
  %i.jn = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jl)
  %i.jo = select <4 x i1> %i.jm, <4 x i32> splat (i32 2147483647), <4 x i32> %i.jn
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.07684.us.us.i.i.us
  store <4 x i32> %i.jo, ptr %i.jp, align 16, !tbaa !57, !alias.scope !272, !noalias !273
  %i.jq = add nuw nsw i64 %.07684.us.us.i.i.us, 4 ; 2 uses
  %i.jr = icmp samesign ult i64 %i.jq, %i.in
  br i1 %i.jr, label %bb.k, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !0

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.k
  %i.js = add nuw nsw i64 %.07585.us.i.i.us, 1    ; 2 uses
  %exitcond95.not.i.i.us = icmp eq i64 %i.js, %i.il
  br i1 %exitcond95.not.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !1

.lr.ph.i.i.us:                                    ; preds = %.lr.ph87.i.i.us, %._crit_edge.split.i.i.us
  %.07585.i.i.us = phi i64 [ %i.ku, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph87.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07585.i.i.us, %i.im
  %i.jt = shl nuw nsw i64 %.07585.i.i.us, 3
  %i.ju = mul nuw nsw i64 %i.jt, %i.gx            ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.dk
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.ju
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.ju
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07684.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.ks, %bb.l ] ; 5 uses
  %i.jy = icmp samesign uge i64 %.07684.i.i.us, %i.io
  %i.jz = zext i1 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.jz
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !56, !noalias !269
  %i.kc = insertelement <4 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.07684.i.i.us
  %i.kf = load <4 x float>, ptr %i.ke, align 16, !tbaa !57, !noalias !269
  %i.kg = fmul <4 x float> %i.ik, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %.07684.i.i.us
  %i.ki = load <4 x float>, ptr %i.kh, align 16, !tbaa !57, !alias.scope !270, !noalias !271
  %i.kj = fmul <4 x float> %i.kg, %i.ki           ; 2 uses
  %i.kk = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kj)
  %i.kl = fcmp ole <4 x float> %i.kd, %i.kk
  %i.km = call <4 x float> @llvm.roundeven.v4f32(<4 x float> %i.kj)
  %i.kn = select <4 x i1> %i.kl, <4 x float> %i.km, <4 x float> zeroinitializer ; 2 uses
  %i.ko = fcmp oge <4 x float> %i.kn, splat (float f0x4F000000)
  %i.kp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.kn)
  %i.kq = select <4 x i1> %i.ko, <4 x i32> splat (i32 2147483647), <4 x i32> %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %.07684.i.i.us
  store <4 x i32> %i.kq, ptr %i.kr, align 16, !tbaa !57, !alias.scope !272, !noalias !273
  %i.ks = add nuw nsw i64 %.07684.i.i.us, 4       ; 2 uses
  %i.kt = icmp samesign ult i64 %i.ks, %i.in
  br i1 %i.kt, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !0

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.ku = add nuw nsw i64 %.07585.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.ku, %i.il
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !1

_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph87.i.i.us
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !167, !noalias !265
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ie
  %i.ky = load float, ptr %i.dr, align 8, !tbaa !168, !noalias !265
  %i.kz = fdiv float %i.ky, %i.ih
  %i.la = insertelement <4 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <4 x float> %i.la, <4 x float> poison, <4 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gx, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.ls, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_SSE415QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.06581.i.us
  %i.ld = load <4 x i32>, ptr %i.lc, align 16, !tbaa !57, !alias.scope !264, !noalias !274 ; 2 uses
  %i.le = sitofp <4 x i32> %i.ld to <4 x float>   ; 4 uses
  %i.lf = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.le)
  %i.lg = fcmp olt <4 x float> %i.lf, splat (float 1.125000e+00)
  %.not76.i.us = icmp eq <4 x i32> %i.ld, zeroinitializer
  %i.lh = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x3F6E10E8), <4 x float> %i.le)
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi:bb.a
  %i.gg = fdiv float %i.ge, %i.gb
  %i.gh = sitofp i32 %i.fq to float
  %i.gi = fadd float %i.gg, %i.gh
  %i.gj = fptosi float %i.gi to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.gj, i32 255) ; 2 uses
  store i32 %spec.store.select, ptr %8, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gk = phi i32 [ %spec.store.select, %bb.y ], [ %i.fq, %bb.x ] ; 4 uses
  %i.gl = icmp eq i32 %3, 0
  %i.gm = fcmp olt float %i.ga, 1.100000e+01
  %or.cond222 = and i1 %i.gl, %i.gm
  br i1 %or.cond222, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.gn = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 254)
  %spec.store.select201 = add nsw i32 %i.gn, 1
  br label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.go = icmp ugt i32 %3, 3
  br i1 %i.go, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.gp = fpext float %.0179.lcssa to double
  %i.gq = fmul double %i.gp, f0x40025AAAAACCDC00
  %i.gr = fptrunc double %i.gq to float
  %i.gs = and i32 %3, -2
  %or.cond7 = icmp eq i32 %i.gs, 10
  %switch.selectcmp = icmp eq i32 %3, 5
  %switch.select = select i1 %switch.selectcmp, i64 2, i64 3
  %switch.selectcmp204 = icmp eq i32 %3, 4
  %switch.select205 = select i1 %switch.selectcmp204, i64 0, i64 %switch.select
  %.0174 = select i1 %or.cond7, i64 1, i64 %switch.select205 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul1, i64 %.0174
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %1
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !60
  %i.gw = uitofp i64 %4 to double
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = uitofp i64 %5 to double
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = fmul double %i.gz, 8.000000e+00
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr @_ZZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPiE5kMul2, i64 %.0174
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %1
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !60
  %i.he = fpext float %i.gr to double
  %i.hf = fmul double %i.hd, %i.he
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.ha, double 8.000000e+00, double %i.hf) ; 2 uses
  %i.hh = fcmp olt double %i.hg, %.0180.lcssa
  br i1 %i.hh, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hi = fdiv double %.0180.lcssa, %i.hg
  %i.hj = fptosi double %i.hi to i32
  %i.hk = tail call i32 @llvm.smax.i32(i32 %i.hj, i32 0)
  %i.hl = tail call i32 @llvm.umin.i32(i32 %i.hk, i32 2)
  %i.hm = add nsw i32 %i.gk, %i.hl
  %spec.store.select202 = tail call i32 @llvm.smin.i32(i32 %i.hm, i32 255)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %.thread
  %spec.store.select201.sink = phi i32 [ %spec.store.select201, %.thread ], [ %spec.store.select202, %bb.ac ] ; 2 uses
  store i32 %spec.store.select201.sink, ptr %8, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.ab, %bb.aa
  %i.hn = phi i32 [ %i.gk, %bb.aa ], [ %i.gk, %bb.ab ], [ %spec.store.select201.sink, %.sink.split ] ; 2 uses
  %i.ho = mul i64 %5, %4
  %i.hp = trunc i64 %i.ho to i32                  ; 5 uses
  %i.hq = fptosi float %i.fr to i32
  %i.hr = sdiv i32 %i.hp, 2                       ; 4 uses
  %i.hs = add nsw i32 %i.hr, %i.hq
  %i.ht = sdiv i32 %i.hs, %i.hp
  %i.hu = fptosi float %i.ft to i32
  %i.hv = add nsw i32 %i.hr, %i.hu
  %i.hw = sdiv i32 %i.hv, %i.hp
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.hw, i32 %i.ht)
  %i.hx = fptosi float %i.fw to i32
  %i.hy = add nsw i32 %i.hr, %i.hx
  %i.hz = sdiv i32 %i.hy, %i.hp
  %.sroa.speculated.1 = tail call i32 @llvm.smin.i32(i32 %i.hz, i32 %.sroa.speculated)
  %i.ia = fptosi float %i.fz to i32
  %i.ib = add nsw i32 %i.hr, %i.ia
  %i.ic = sdiv i32 %i.ib, %i.hp
  %.sroa.speculated.2 = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %.sroa.speculated.1)
  %i.id = sdiv i32 %i.hn, 2
  %spec.select223 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated.2, i32 15) ; 2 uses
  %i.ie = sub nsw i32 %i.hn, %spec.select223
  br i1 %i.ct, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ad
  %i.if = sitofp i32 %spec.select223 to double    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.ih = load <2 x float>, ptr %i.ig, align 4, !tbaa !56
  %i.ii = fpext <2 x float> %i.ih to <2 x double>
  %i.ij = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> splat (double 1.000000e-02), <2 x double> %i.ii)
  %i.im = fptrunc <2 x double> %i.il to <2 x float>
  store <2 x float> %i.im, ptr %i.ig, align 4, !tbaa !56
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !56
  %i.ip = fpext float %i.io to double
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.if, double 1.000000e-02, double %i.ip)
  %i.ir = fptrunc double %i.iq to float
  store float %i.ir, ptr %i.in, align 4, !tbaa !56
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.ad
  %.sroa.speculated208 = tail call i32 @llvm.smax.i32(i32 %i.id, i32 %i.ie)
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated208, i32 4)
  store i32 %spec.select203, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN3jxl6N_AVX225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef readonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr noalias nofree noundef captures(none) %9, ptr noalias nofree noundef captures(none) %10) local_unnamed_addr #11 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3196
  %i.d = load i32, ptr %i.c, align 4, !tbaa !164
  %i.e = icmp slt i32 %i.d, 6
  br i1 %i.e, label %.loopexit.2, label %bb.b

.loopexit.2:                                      ; preds = %bb.a
  %i.f = load i32, ptr %8, align 4, !tbaa !55     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3872
  %i.h = load float, ptr %i.g, align 8, !tbaa !165
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3876
  %i.j = load float, ptr %i.i, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.k, ptr noundef nonnull %8) #48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56
  %i.l = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 0, float noundef %i.h, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %9, ptr noundef nonnull %8) #48
  %i.m = load i32, ptr %8, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false)
  store i32 %i.f, ptr %8, align 4, !tbaa !55
  %.idx = shl i64 %1, 3
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 %.idx
  call void @_ZN3jxl6N_AVX218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef 2, float noundef %i.j, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef %i.n, ptr noundef nonnull %8) #48
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.o = load i32, ptr %8, align 4, !tbaa !55
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 %i.o)
  %.sroa.speculated.2 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated.1, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47
  store i32 %.sroa.speculated.2, ptr %8, align 4, !tbaa !55
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56
  %.pre = load i32, ptr %8, align 4, !tbaa !55, !noalias !944
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit.2
  %i.p = phi i32 [ %.pre, %bb.b ], [ %.sroa.speculated.2, %.loopexit.2 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %1 ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !944 ; 3 uses
  %i.u = zext i32 %4 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51, !noalias !944
  %.idx.i.i = mul nuw nsw i64 %i.u, 24
  %i.x = getelementptr i8, ptr %i.t, i64 %.idx.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !53, !noalias !944 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !54, !noalias !944
  %i.ad = sitofp i32 %i.p to float                ; 2 uses
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ah = shl i64 %6, 3                           ; 4 uses
  %.not91.i = icmp eq i64 %i.ah, 0
  br i1 %.not91.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.i

.lr.ph87.i:                                       ; preds = %bb.c
  %i.ai = lshr exact i64 %i.ah, 1                 ; 2 uses
  %i.aj = shl i64 %5, 3                           ; 3 uses
  %.not92.i = icmp eq i64 %i.aj, 0
  %i.ak = lshr exact i64 %i.aj, 1
  br i1 %.not92.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph87.split.i

.lr.ph87.split.i:                                 ; preds = %.lr.ph87.i
  %i.al = icmp eq i64 %5, 1
  br i1 %i.al, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph87.split.i, %bb.d
  %.07684.us.us.i = phi i64 [ %i.aw, %bb.d ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.us.i = icmp ult i64 %.07684.us.us.i, %i.ai ; 2 uses
  %11 = shl i64 %.07684.us.us.i, 3                ; 3 uses
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.us.i, i64 0, i64 8
  %.sroa.sel73.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.idx.sroa.sel.idx.sroa.sel.idx
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not79.us.i, i64 4, i64 12
  %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %11
  %13 = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %11
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %11
  %14 = load float, ptr %.sroa.sel73.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !56, !noalias !944
  %15 = insertelement <8 x float> poison, float %14, i64 0
  %16 = load float, ptr %.sroa.sel73.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !56, !noalias !944
  %17 = insertelement <8 x float> poison, float %16, i64 0
  %18 = shufflevector <8 x float> %17, <8 x float> %15, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8>
  %19 = load <8 x float>, ptr %12, align 32, !tbaa !57, !noalias !944
  %20 = fmul <8 x float> %i.ag, %19
  %i.an = load <8 x float>, ptr %13, align 32, !tbaa !57, !alias.scope !945, !noalias !946
  %i.ao = fmul <8 x float> %20, %i.an             ; 2 uses
  %i.ap = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ao)
  %i.aq = fcmp oge <8 x float> %i.ap, %18
  %i.ar = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.ao)
  %i.as = select <8 x i1> %i.aq, <8 x float> %i.ar, <8 x float> zeroinitializer ; 2 uses
  %i.at = fcmp oge <8 x float> %i.as, splat (float f0x4F000000)
  %i.au = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.as)
  %i.av = select <8 x i1> %i.at, <8 x i32> splat (i32 2147483647), <8 x i32> %i.au
  store <8 x i32> %i.av, ptr %i.am, align 32, !tbaa !57, !alias.scope !946, !noalias !945
  %i.aw = add nuw i64 %.07684.us.us.i, 1          ; 2 uses
  %exitcond95.not.i = icmp eq i64 %i.aw, %i.ah
  br i1 %exitcond95.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %bb.d, !llvm.loop !5

.lr.ph.i:                                         ; preds = %.lr.ph87.split.i, %._crit_edge.split.i
  %.07585.i = phi i64 [ %i.bc, %._crit_edge.split.i ], [ 0, %.lr.ph87.split.i ] ; 3 uses
  %.not79.i = icmp ult i64 %.07585.i, %i.ai
  %i.ax = shl i64 %.07585.i, 3
  %i.ay = mul i64 %i.ax, %5                       ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not79.i, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ay
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ay
  br label %bb.e

._crit_edge.split.i:                              ; preds = %bb.e
  %i.bc = add nuw i64 %.07585.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %i.ah
  br i1 %exitcond.not.i, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit, label %.lr.ph.i, !llvm.loop !5

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.07684.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bx, %bb.e ] ; 5 uses
  %i.bd = icmp uge i64 %.07684.i, %i.ak
  %i.be = zext i1 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !56, !noalias !944
  %i.bh = insertelement <8 x float> poison, float %i.bg, i64 0
  %i.bi = shufflevector <8 x float> %i.bh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.07684.i
  %i.bk = load <8 x float>, ptr %i.bj, align 32, !tbaa !57, !noalias !944
  %i.bl = fmul <8 x float> %i.ag, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.07684.i
  %i.bn = load <8 x float>, ptr %i.bm, align 32, !tbaa !57, !alias.scope !945, !noalias !946
  %i.bo = fmul <8 x float> %i.bl, %i.bn           ; 2 uses
  %i.bp = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bo)
  %i.bq = fcmp oge <8 x float> %i.bp, %i.bi
  %i.br = tail call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.bo)
  %i.bs = select <8 x i1> %i.bq, <8 x float> %i.br, <8 x float> zeroinitializer ; 2 uses
  %i.bt = fcmp oge <8 x float> %i.bs, splat (float f0x4F000000)
  %i.bu = tail call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.bs)
  %i.bv = select <8 x i1> %i.bt, <8 x i32> splat (i32 2147483647), <8 x i32> %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.07684.i
  store <8 x i32> %i.bv, ptr %i.bw, align 32, !tbaa !57, !alias.scope !946, !noalias !945
  %i.bx = add nuw i64 %.07684.i, 8                ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.aj
  br i1 %i.by, label %bb.e, label %._crit_edge.split.i, !llvm.loop !4

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit: ; preds = %._crit_edge.split.i, %bb.d, %bb.c, %.lr.ph87.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !167
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.z
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cd = load float, ptr %i.cc, align 8, !tbaa !168
  %i.ce = fdiv float %i.cd, %i.ad
  %i.cf = insertelement <8 x float> poison, float %i.ce, i64 0
  %i.cg = shufflevector <8 x float> %i.cf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ch = shl i64 %5, 6
  %i.ci = mul i64 %i.ch, %6                       ; 2 uses
  %.not82 = icmp eq i64 %i.ci, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !56, !alias.scope !947
  %i.cl = insertelement <8 x float> poison, float %i.ck, i64 0
  %i.cm = bitcast <8 x float> %i.cl to <8 x i32>
  %i.cn = shufflevector <8 x i32> %i.cm, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.cp = load float, ptr %i.co, align 4, !tbaa !56, !alias.scope !947
  %.scalar = fneg float %i.cp
  %i.cq = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.cr = shufflevector <8 x float> %i.cq, <8 x float> poison, <8 x i32> zeroinitializer
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.06581 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.f ] ; 4 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.06581
  %i.ct = load <8 x i32>, ptr %i.cs, align 32, !tbaa !57, !alias.scope !948 ; 2 uses
  %i.cu = sitofp <8 x i32> %i.ct to <8 x float>   ; 4 uses
  %i.cv = bitcast <8 x float> %i.cu to <8 x i32>
  %i.cw = and <8 x i32> %i.cv, splat (i32 -2147483648)
  %i.cx = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cu)
  %i.cy = fcmp olt <8 x float> %i.cx, splat (float 1.125000e+00)
  %.not76 = icmp eq <8 x i32> %i.ct, zeroinitializer
  %i.cz = xor <8 x i32> %i.cn, %i.cw
  %i.da = bitcast <8 x i32> %i.cz to <8 x float>
  %i.db = select <8 x i1> %.not76, <8 x float> zeroinitializer, <8 x float> %i.da
  %i.dc = tail call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.cu)
  %i.dd = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cr, <8 x float> %i.dc, <8 x float> %i.cu)
  %i.de = select <8 x i1> %i.cy, <8 x float> %i.db, <8 x float> %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.06581
  %i.dg = load <8 x float>, ptr %i.df, align 32, !tbaa !57
  %i.dh = fmul <8 x float> %i.dg, %i.de
  %i.di = fmul <8 x float> %i.cg, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.06581
  store <8 x float> %i.di, ptr %i.dj, align 32, !tbaa !57
  %i.dk = add nuw i64 %.06581, 8                  ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.ci
  br i1 %i.dl, label %bb.f, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6N_AVX219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_(i64 noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef readonly captures(none) %4) #12 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 8 uses
  %i.b = alloca [4 x float], align 16             ; 13 uses
  %5 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %6 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %7 = alloca %"class.jxl::StatusOr", align 8     ; 6 uses
  %8 = alloca %"class.jxl::AlignedMemory", align 8 ; 5 uses
  %i.c = alloca [3 x [11 x ptr]], align 16        ; 10 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %9 = alloca %"class.jxl::AcStrategy", align 8   ; 10 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca [4 x float], align 16             ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !169  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170, !noalias !980 ; 2 uses
  %i.k = urem i64 %0, %i.j                        ; 2 uses
  %i.l = udiv i64 %0, %i.j                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !171, !noalias !980 ; 3 uses
  %i.o = lshr i64 %i.n, 3                         ; 6 uses
  %i.p = mul i64 %i.o, %i.k                       ; 8 uses
  %i.q = mul i64 %i.o, %i.l                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !172, !noalias !980 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !173, !noalias !980 ; 2 uses
  %i.v = add i64 %i.p, %i.o
  %.not.i.i.i = icmp ugt i64 %i.v, %i.s
  %i.w = tail call i64 @llvm.usub.sat.i64(i64 %i.s, i64 %i.p)
  %i.x = select i1 %.not.i.i.i, i64 %i.w, i64 %i.o ; 3 uses
  %i.y = add i64 %i.q, %i.o
  %.not.i8.i.i = icmp ugt i64 %i.y, %i.u
  %i.z = tail call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %i.q)
  %i.aa = select i1 %.not.i8.i.i, i64 %i.z, i64 %i.o ; 5 uses
  %i.ab = lshr i64 %i.p, 3                        ; 2 uses
  %i.ac = lshr i64 %i.q, 3
  %i.ad = add i64 %i.x, 7
  %i.ae = mul i64 %i.n, %i.k
  %i.af = mul i64 %i.n, %i.l
  %i.ag = load i64, ptr %3, align 8, !tbaa !175
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !176
  %i.aj = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.ak = add i64 %i.ai, %i.af
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !177
  %i.an = lshr i64 %i.am, 2                       ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = tail call noundef i64 @_ZN3jxl13MaxVectorSizeEv() #49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %5, ptr noundef %i.h, i64 noundef 786432, i64 noundef 0) #49
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !180 ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.b, label %_ZN3jxl8StatusOrINS_13AlignedMemoryEED2Ev.exit203

bb.b:                                             ; preds = %bb.a
  %i.av = lshr i64 %i.ar, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(28) %5) #49
  %i.aw = mul i64 %i.av, 3072
  %i.ax = add i64 %i.aw, 1310720
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call void @_ZN3jxl13AlignedMemory6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %7, ptr noundef %i.h, i64 noundef %i.ax, i64 noundef 0) #49
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !180 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #47
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(28) %7) #49
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !181
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 786432 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(264) %i.c, i8 0, i64 264, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 2872 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !182 ; 26 uses
  %.not = icmp eq i64 %i.bg, 0
  br i1 %.not, label %._crit_edge286, label %.preheader271

.preheader271:                                    ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2824 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader271, %.preheader270
  %.0187273 = phi i64 [ 0, %.preheader271 ], [ %i.cl, %.preheader270 ] ; 6 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.0187273
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !185 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !187
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk) #49
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %.preheader270, label %._crit_edge286

.preheader270:                                    ; preds = %bb.d
  %invariant.gep = getelementptr [8 x i8], ptr %i.c, i64 %.0187273 ; 3 uses
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0187273
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !185 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !187
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, i64 noundef 0, i64 noundef %0, i64 noundef 0) #49
  store ptr %i.bw, ptr %invariant.gep, align 8, !tbaa !188
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0187273
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !185 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !187
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = call ptr %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i64 noundef 1, i64 noundef %0, i64 noundef 0) #49
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 88
  store ptr %i.cd, ptr %gep.1, align 8, !tbaa !188
  %i.ce = load ptr, ptr %i.bh, align 8, !tbaa !183
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0187273
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !185 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !187
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, i64 noundef 2, i64 noundef %0, i64 noundef 0) #49
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 176
  store ptr %i.ck, ptr %gep.2, align 8, !tbaa !188
  %i.cl = add nuw i64 %.0187273, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cl, %i.bg
  br i1 %exitcond.not, label %.critedge197, label %bb.d, !llvm.loop !951

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !181 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 5 uses
  %.not287 = icmp eq i64 %i.aa, 0
  br i1 %.not287, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.critedge197
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = lshr i64 %i.ad, 3                       ; 2 uses
  %.not288 = icmp eq i64 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3872 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3876 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1020 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  br i1 %.not288, label %.lr.ph285.split.preheader, label %.lr.ph283.us.preheader

.lr.ph285.split.preheader:                        ; preds = %.lr.ph285
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.dq = icmp ult i64 %i.aa, 8
  br i1 %i.dq, label %.lr.ph285.split.epil.preheader, label %.lr.ph285.split.preheader.new

.lr.ph285.split.preheader.new:                    ; preds = %.lr.ph285.split.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph285.split

.lr.ph283.us.preheader:                           ; preds = %.lr.ph285
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 4 uses
  %min.iters.check418 = icmp ult i64 %i.bg, 4
  %min.iters.check420 = icmp ult i64 %i.bg, 16
  %i.dt = and i64 %i.bg, 12
  %n.vec422 = and i64 %i.bg, -16                  ; 4 uses
  %cmp.n435 = icmp eq i64 %i.bg, %n.vec422
  %min.epilog.iters.check440 = icmp eq i64 %i.dt, 0
  %n.vec442 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n449 = icmp eq i64 %i.bg, %n.vec442
  %min.iters.check385 = icmp ult i64 %i.bg, 4
  %min.iters.check387 = icmp ult i64 %i.bg, 16
  %i.du = and i64 %i.bg, 12
  %n.vec389 = and i64 %i.bg, -16                  ; 4 uses
  %cmp.n402 = icmp eq i64 %i.bg, %n.vec389
  %min.epilog.iters.check407 = icmp eq i64 %i.du, 0
  %n.vec409 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n416 = icmp eq i64 %i.bg, %n.vec409
  %min.iters.check = icmp ult i64 %i.bg, 4
  %min.iters.check372 = icmp ult i64 %i.bg, 16
  %i.dv = and i64 %i.bg, 12
  %n.vec = and i64 %i.bg, -16                     ; 4 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  %n.vec379 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n384 = icmp eq i64 %i.bg, %n.vec379
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.te, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
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
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.rv, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.fr = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.fr
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

bb.f:                                             ; preds = %.lr.ph281.us, %bb.p
  %.0184280.us = phi i64 [ %i.fr, %.lr.ph281.us ], [ %i.ru, %bb.p ] ; 10 uses
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
  br i1 %i.fx, label %bb.g, label %bb.p

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
  %i.gr = mul nuw nsw i64 %i.gi, %i.gm
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
  %i.hw = shl nuw nsw i64 %i.gg, 3
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

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %.lr.ph.us.i.i.us
  %.07585.us.i.i.us = phi i64 [ %i.it, %.lr.ph.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07585.us.i.i.us, %i.hv
  %i.ia = shl nuw nsw i64 %.07585.us.i.i.us, 3    ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ia
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ia
  %i.ie = insertelement <2 x i1> poison, i1 %.not79.us.i.i.us, i64 0
  %i.if = shufflevector <2 x i1> %i.ie, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ig = select <2 x i1> %i.if, <2 x float> %i.hy, <2 x float> %i.hz
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ii = load <8 x float>, ptr %i.ib, align 32, !tbaa !57, !noalias !987
  %i.ij = fmul <8 x float> %i.ht, %i.ii
  %i.ik = load <8 x float>, ptr %i.ic, align 32, !tbaa !57, !alias.scope !988, !noalias !989
  %i.il = fmul <8 x float> %i.ij, %i.ik           ; 2 uses
  %i.im = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.il)
  %i.in = fcmp oge <8 x float> %i.im, %i.ih
  %i.io = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.il)
  %i.ip = select <8 x i1> %i.in, <8 x float> %i.io, <8 x float> zeroinitializer ; 2 uses
  %i.iq = fcmp oge <8 x float> %i.ip, splat (float f0x4F000000)
  %i.ir = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.ip)
  %i.is = select <8 x i1> %i.iq, <8 x i32> splat (i32 2147483647), <8 x i32> %i.ir
  store <8 x i32> %i.is, ptr %i.id, align 32, !tbaa !57, !alias.scope !990, !noalias !991
  %i.it = add nuw nsw i64 %.07585.us.i.i.us, 1    ; 2 uses
  %exitcond95.not.i.i.us = icmp eq i64 %i.it, %i.hu
  br i1 %exitcond95.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !5

.lr.ph.i.i.us:                                    ; preds = %.lr.ph87.i.i.us, %._crit_edge.split.i.i.us
  %.07585.i.i.us = phi i64 [ %i.jv, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph87.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07585.i.i.us, %i.hv
  %i.iu = shl nuw nsw i64 %.07585.i.i.us, 3
  %i.iv = mul nuw nsw i64 %i.iu, %i.gg            ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.iv
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.iv
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.iv
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07684.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.jt, %bb.l ] ; 5 uses
  %i.iz = icmp samesign uge i64 %.07684.i.i.us, %i.hx
  %i.ja = zext i1 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.ja
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !56, !noalias !987
  %i.jd = insertelement <8 x float> poison, float %i.jc, i64 0
  %i.je = shufflevector <8 x float> %i.jd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %.07684.i.i.us
  %i.jg = load <8 x float>, ptr %i.jf, align 32, !tbaa !57, !noalias !987
  %i.jh = fmul <8 x float> %i.ht, %i.jg
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.07684.i.i.us
  %i.jj = load <8 x float>, ptr %i.ji, align 32, !tbaa !57, !alias.scope !988, !noalias !989
  %i.jk = fmul <8 x float> %i.jh, %i.jj           ; 2 uses
  %i.jl = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.jk)
  %i.jm = fcmp oge <8 x float> %i.jl, %i.je
  %i.jn = call <8 x float> @llvm.roundeven.v8f32(<8 x float> %i.jk)
  %i.jo = select <8 x i1> %i.jm, <8 x float> %i.jn, <8 x float> zeroinitializer ; 2 uses
  %i.jp = fcmp oge <8 x float> %i.jo, splat (float f0x4F000000)
  %i.jq = call <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float> %i.jo)
  %i.jr = select <8 x i1> %i.jp, <8 x i32> splat (i32 2147483647), <8 x i32> %i.jq
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %.07684.i.i.us
  store <8 x i32> %i.jr, ptr %i.js, align 32, !tbaa !57, !alias.scope !990, !noalias !991
  %i.jt = add nuw nsw i64 %.07684.i.i.us, 8       ; 2 uses
  %i.ju = icmp samesign ult i64 %i.jt, %i.hw
  br i1 %i.ju, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !4

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.jv = add nuw nsw i64 %.07585.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.jv, %i.hu
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !5

_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %.lr.ph.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph87.i.i.us
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !167, !noalias !983
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.hn
  %i.jz = load float, ptr %i.do, align 8, !tbaa !168, !noalias !983
  %i.ka = fdiv float %i.jz, %i.hq
  %i.kb = insertelement <8 x float> poison, float %i.ka, i64 0
  %i.kc = shufflevector <8 x float> %i.kb, <8 x float> poison, <8 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not82.i.us, label %.preheader.us.sink.split, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, %.lr.ph.i.us
  %.06581.i.us = phi i64 [ %i.ks, %.lr.ph.i.us ], [ 0, %_ZN3jxl6N_AVX215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us ] ; 4 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.06581.i.us
  %i.ke = load <8 x i32>, ptr %i.kd, align 32, !tbaa !57, !alias.scope !992, !noalias !993 ; 2 uses
  %i.kf = sitofp <8 x i32> %i.ke to <8 x float>   ; 4 uses
  %i.kg = call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kf)
  %i.kh = fcmp olt <8 x float> %i.kg, splat (float 1.125000e+00)
  %.not76.i.us = icmp eq <8 x i32> %i.ke, zeroinitializer
  %i.ki = call <8 x float> @llvm.copysign.v8f32(<8 x float> splat (float f0x3F6E10E8), <8 x float> %i.kf)
  %i.kj = select <8 x i1> %.not76.i.us, <8 x float> zeroinitializer, <8 x float> %i.ki
  %i.kk = call noundef <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float> %i.kf)
  %i.kl = call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.kk, <8 x float> splat (float -1.450000e-01), <8 x float> %i.kf)
  %i.km = select <8 x i1> %i.kh, <8 x float> %i.kj, <8 x float> %i.kl
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %.06581.i.us
  %i.ko = load <8 x float>, ptr %i.kn, align 32, !tbaa !57, !noalias !983
  %i.kp = fmul <8 x float> %i.ko, %i.km
  %i.kq = fmul <8 x float> %i.kc, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.06581.i.us
  store <8 x float> %i.kq, ptr %i.kr, align 32, !tbaa !57, !alias.scope !981, !noalias !984
  %i.ks = add nuw nsw i64 %.06581.i.us, 8         ; 2 uses
  %i.kt = icmp samesign ult i64 %i.ks, %i.gi
  br i1 %i.kt, label %.lr.ph.i.us, label %.lr.ph.us, !llvm.loop !6

bb.m:                                             ; preds = %.lr.ph.us, %bb.m
  %.0182275.us = phi i64 [ 0, %.lr.ph.us ], [ %i.lc, %bb.m ] ; 4 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.0182275.us ; 2 uses
  %i.kv = load <8 x float>, ptr %i.ku, align 32, !tbaa !57
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %.0182275.us
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE219ComputeCoefficientsEmPNS_18PassesEncoderStateERKNS_6Image3IfEERKNS_5RectTImEEPS4_:bb.a

.critedge197:                                     ; preds = %.preheader270
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !181 ; 10 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181 ; 6 uses
  %.not287 = icmp eq i64 %i.aa, 0
  br i1 %.not287, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %.critedge197
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1088
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 1200
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 1232
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.df = lshr i64 %i.ad, 3                       ; 2 uses
  %.not288 = icmp eq i64 %i.df, 0
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 1292
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 976 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 3872
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 3876
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 1020 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 1016
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  br i1 %.not288, label %.lr.ph285.split.preheader, label %.lr.ph283.us.preheader

.lr.ph285.split.preheader:                        ; preds = %.lr.ph285
  %xtraiter = and i64 %i.aa, 7                    ; 3 uses
  %i.dq = icmp ult i64 %i.aa, 8
  br i1 %i.dq, label %.lr.ph285.split.epil.preheader, label %.lr.ph285.split.preheader.new

.lr.ph285.split.preheader.new:                    ; preds = %.lr.ph285.split.preheader
  %unroll_iter = and i64 %i.aa, -8
  br label %.lr.ph285.split

.lr.ph283.us.preheader:                           ; preds = %.lr.ph285
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 176 ; 3 uses
  %.in.us = getelementptr inbounds nuw i8, ptr %1, i64 3872
  %.in.us.1 = getelementptr inbounds nuw i8, ptr %1, i64 3876
  %min.iters.check377 = icmp ult i64 %i.bg, 4
  %n.vec379 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n388 = icmp eq i64 %i.bg, %n.vec379
  %min.iters.check363 = icmp ult i64 %i.bg, 4
  %n.vec365 = and i64 %i.bg, -4                   ; 3 uses
  %cmp.n374 = icmp eq i64 %i.bg, %n.vec365
  %min.iters.check = icmp ult i64 %i.bg, 4
  %n.vec = and i64 %i.bg, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br label %.lr.ph283.us

.lr.ph283.us:                                     ; preds = %.lr.ph283.us.preheader, %._crit_edge.us
  %.0186284.us = phi i64 [ %i.vd, %._crit_edge.us ], [ 0, %.lr.ph283.us.preheader ] ; 7 uses
  %i.dt = add i64 %.0186284.us, %i.q              ; 3 uses
  %i.du = load ptr, ptr %i.cp, align 8, !tbaa !181
  %i.dv = load i64, ptr %i.cq, align 8, !tbaa !177
  %i.dw = mul i64 %i.dv, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dx, i64 64) ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.p
  %i.dz = lshr i64 %.0186284.us, 3
  %i.ea = add nuw nsw i64 %i.dz, %i.ac            ; 2 uses
  %i.eb = load ptr, ptr %i.cr, align 8, !tbaa !181
  %i.ec = load i64, ptr %i.cs, align 8, !tbaa !177
  %i.ed = mul i64 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ed ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ee, i64 64) ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ab
  %i.eg = load ptr, ptr %i.ct, align 8, !tbaa !181
  %i.eh = load i64, ptr %i.cu, align 8, !tbaa !177
  %i.ei = mul i64 %i.eh, %i.ea
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ei ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ej, i64 64) ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #47
  %i.el = shl i64 %.0186284.us, 3
  %i.em = add i64 %i.ak, %i.el
  %i.en = load i64, ptr %i.ao, align 8, !tbaa !177
  %i.eo = mul i64 %i.en, %i.em                    ; 3 uses
  %i.ep = load ptr, ptr %i.cv, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ep, i64 64) ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eq, i64 64) ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.aj
  store ptr %i.er, ptr %i.d, align 16, !tbaa !189
  %i.es = load ptr, ptr %i.cx, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.es, i64 64) ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.et, i64 64) ]
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.aj
  store ptr %i.eu, ptr %i.cw, align 8, !tbaa !189
  %i.ev = load ptr, ptr %i.cz, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ev, i64 64) ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eo ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ew, i64 64) ]
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.aj
  store ptr %i.ex, ptr %i.cy, align 16, !tbaa !189
  %i.ey = load i64, ptr %i.al, align 8, !tbaa !177
  %i.ez = mul i64 %i.ey, %i.dt                    ; 3 uses
  %i.fa = load ptr, ptr %i.da, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fa, i64 64) ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.p
  %i.fd = load ptr, ptr %i.db, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fd, i64 64) ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fe, i64 64) ]
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.p
  %i.fg = load ptr, ptr %i.dc, align 8, !tbaa !181 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fg, i64 64) ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ez ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fh, i64 64) ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.p
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !181
  %i.fk = load i64, ptr %i.de, align 8, !tbaa !177
  %i.fl = mul i64 %i.fk, %i.dt
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fl ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fm, i64 64) ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.p
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph283.us, %.critedge.us
  %indvars.iv = phi i64 [ 8, %.lr.ph283.us ], [ %indvars.iv.next, %.critedge.us ] ; 2 uses
  %.0185282.us = phi i64 [ 0, %.lr.ph283.us ], [ %i.tz, %.critedge.us ] ; 4 uses
  %umin = call i64 @llvm.umin.i64(i64 %i.x, i64 %indvars.iv)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.0185282.us
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !57
  %i.fq = load float, ptr %i.dh, align 4, !tbaa !190
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.0185282.us
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !57
  %i.ft = load <2 x float>, ptr %i.dg, align 8, !tbaa !56
  %i.fu = insertelement <2 x i8> poison, i8 %i.fp, i64 0
  %i.fv = insertelement <2 x i8> %i.fu, i8 %i.fs, i64 1
  %i.fw = sitofp <2 x i8> %i.fv to <2 x float>
  %i.fx = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.ft) ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.gb = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gc = shl nuw i64 %.0185282.us, 3             ; 2 uses
  %or.cond279.us = icmp ugt i64 %i.x, %i.gc
  br i1 %or.cond279.us, label %.lr.ph281.us, label %.critedge.us

.lr.ph281.us:                                     ; preds = %bb.e, %bb.r
  %.0184280.us = phi i64 [ %i.ty, %bb.r ], [ %i.gc, %bb.e ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #47
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.0184280.us
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !57  ; 3 uses
  %i.gf = lshr i8 %i.ge, 1                        ; 2 uses
  %i.gg = and i8 %i.ge, 1
  %.sroa.2.0.insert.ext.i.us = zext nneg i8 %i.gg to i64
  %.sroa.2.0.insert.shift.i.us = shl nuw nsw i64 %.sroa.2.0.insert.ext.i.us, 32
  %.sroa.0.0.insert.ext.i.us = zext nneg i8 %i.gf to i64
  %.sroa.0.0.insert.insert.i.us = or disjoint i64 %.sroa.2.0.insert.shift.i.us, %.sroa.0.0.insert.ext.i.us
  %i.gh = trunc nuw nsw i64 %.sroa.0.0.insert.insert.i.us to i40
  store i40 %i.gh, ptr %9, align 8
  %i.gi = trunc i8 %i.ge to i1
  br i1 %i.gi, label %bb.f, label %bb.r

bb.f:                                             ; preds = %.lr.ph281.us
  %i.gj = zext nneg i8 %i.gf to i64               ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_xEvE4kLut, i64 %i.gj
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !57
  %i.gm = zext i8 %i.gl to i64                    ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr @_ZZNK3jxl10AcStrategy16covered_blocks_yEvE4kLut, i64 %i.gj
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !57
  %i.gp = zext i8 %i.go to i64                    ; 3 uses
  %i.gq = call noundef i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gm) ; 9 uses
  %i.gr = call noundef i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gm) ; 15 uses
  %i.gs = shl nuw nsw i64 %i.gr, 6
  %i.gt = mul nuw nsw i64 %i.gs, %i.gq            ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #47
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %.0184280.us ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !55 ; 4 uses
  %.idx195.us = shl i64 %.0184280.us, 5
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0183.idx274.us = phi i64 [ 0, %bb.f ], [ %.0183.add.us, %bb.g ] ; 2 uses
  %.0183.ptr.us = getelementptr inbounds nuw i8, ptr @.ref.tmp.13, i64 %.0183.idx274.us
  %i.gw = load i32, ptr %.0183.ptr.us, align 4, !tbaa !55
  %i.gx = sext i32 %i.gw to i64                   ; 2 uses
  %i.gy = load i32, ptr %9, align 8, !tbaa !193
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !189
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %.idx195.us
  %i.hc = mul nuw nsw i64 %i.gt, %i.gx
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hc
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_119TransformFromPixelsENS_14AcStrategyTypeEPKfmPfS5_(i32 noundef %i.gy, ptr noundef %i.hb, i64 noundef %i.aq, ptr noundef %i.hd, ptr noundef nonnull %i.bd) #48
  %.0183.add.us = add nuw nsw i64 %.0183.idx274.us, 4 ; 2 uses
  %.not193.us = icmp eq i64 %.0183.add.us, 12
  br i1 %.not193.us, label %bb.h, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.he = load i32, ptr %9, align 8, !tbaa !193
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gt ; 6 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.0184280.us
  call fastcc void @_ZN3jxl6N_SSE212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_(i32 noundef %i.he, ptr noundef %i.hf, ptr noundef %i.hg, i64 noundef %i.an, ptr noundef nonnull %i.bd) #48
  %i.hh = load i32, ptr %9, align 8, !tbaa !193   ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  call void @llvm.experimental.noalias.scope.decl(metadata !2141)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47, !noalias !2142
  %i.hi = load i32, ptr %i.be, align 4, !tbaa !164, !noalias !2142
  %i.hj = icmp slt i32 %i.hi, 6
  br i1 %i.hj, label %.loopexit.2.i.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  store <4 x float> <float 5.600000e-01, float 6.200000e-01, float 6.200000e-01, float 6.200000e-01>, ptr %i.a, align 16, !tbaa !56, !noalias !2142
  br label %bb.j

.loopexit.2.i.us:                                 ; preds = %bb.h
  %i.hk = load float, ptr %i.dk, align 8, !tbaa !165, !noalias !2142
  %i.hl = load float, ptr %i.dl, align 4, !tbaa !166, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 1, float noundef 1.000000e+00, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.hf, ptr noundef nonnull %i.e) #48, !noalias !2143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa !56, !noalias !2142
  %i.hm = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 0, float noundef %i.hk, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.cm, ptr noundef nonnull %i.e) #48, !noalias !2143
  %i.hn = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #47, !noalias !2142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN3jxl6N_SSE225QuantizeRoundtripYBlockACEPNS_18PassesEncoderStateEmRKNS_9QuantizerEbNS_14AcStrategyTypeEmmPKfPiPfS9_.thres, i64 16, i1 false), !noalias !2142
  store i32 %i.gv, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  %.idx.i.us = shl nuw nsw i64 %i.gt, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.idx.i.us
  call void @_ZN3jxl6N_SSE218AdjustQuantBlockACERKNS_9QuantizerEmfNS_14AcStrategyTypeEmmPfPKfPi(ptr noundef nonnull readonly align 8 dereferenceable(72) %i.dj, i64 noundef 2, float noundef %i.hl, i32 noundef %i.hh, i64 noundef %i.gr, i64 noundef %i.gq, ptr noundef nonnull %i.b, ptr noundef %i.ho, ptr noundef nonnull %i.e) #48, !noalias !2143
  %.sroa.speculated.i.us = call i32 @llvm.smax.i32(i32 %i.hm, i32 %i.hn)
  %i.hp = load i32, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  %.sroa.speculated.1.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.i.us, i32 %i.hp)
  %.sroa.speculated.2.i.us = call i32 @llvm.smax.i32(i32 %.sroa.speculated.1.i.us, i32 0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #47, !noalias !2142
  store i32 %.sroa.speculated.2.i.us, ptr %i.e, align 4, !tbaa !55, !noalias !2142
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.2.i.us, %bb.i
  %i.hq = phi i32 [ %i.gv, %bb.i ], [ %.sroa.speculated.2.i.us, %.loopexit.2.i.us ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.gt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.experimental.noalias.scope.decl(metadata !2145)
  %i.hs = load ptr, ptr %i.dm, align 8, !tbaa !42, !noalias !2146 ; 3 uses
  %i.ht = zext i32 %i.hh to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !51, !noalias !2146
  %.idx.i.i.i.us = mul nuw nsw i64 %i.ht, 24
  %i.hw = getelementptr i8, ptr %i.hs, i64 %.idx.i.i.i.us
  %i.hx = getelementptr i8, ptr %i.hw, i64 80
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !53, !noalias !2146 ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %i.hy ; 2 uses
  %i.ia = load float, ptr %i.dn, align 4, !tbaa !54, !noalias !2146
  %i.ib = sitofp i32 %i.hq to float               ; 4 uses
  %i.ic = fmul float %i.ia, %i.ib
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <4 x float> %i.id, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.if = shl nuw nsw i64 %i.gq, 3                ; 6 uses
  %.not102.i.i.us = icmp eq i64 %i.gq, 0          ; 3 uses
  br i1 %.not102.i.i.us, label %.preheader.us.sink.split, label %.lr.ph98.i.i.us

.lr.ph98.i.i.us:                                  ; preds = %bb.j
  %i.ig = shl nuw nsw i64 %i.gq, 2                ; 2 uses
  %i.ih = shl nuw nsw i64 %i.gr, 3                ; 2 uses
  %i.ii = shl nuw nsw i64 %i.gr, 2
  %trunc = trunc nuw i64 %i.gr to i8
  switch i8 %trunc, label %.lr.ph.i.i.us [
    i8 0, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us
    i8 1, label %.lr.ph.us.i.i.us.preheader
  ]

.lr.ph.us.i.i.us.preheader:                       ; preds = %.lr.ph98.i.i.us
  %i.ij = load <2 x float>, ptr %i.a, align 16
  %i.ik = load <2 x float>, ptr %i.di, align 8
  br label %.lr.ph.us.i.i.us

.lr.ph.us.i.i.us:                                 ; preds = %.lr.ph.us.i.i.us.preheader, %._crit_edge.split.us.us.i.i.us
  %.07596.us.i.i.us = phi i64 [ %i.jw, %._crit_edge.split.us.us.i.i.us ], [ 0, %.lr.ph.us.i.i.us.preheader ] ; 3 uses
  %.not79.us.i.i.us = icmp samesign ult i64 %.07596.us.i.i.us, %i.ig
  %i.il = shl nuw nsw i64 %.07596.us.i.i.us, 3    ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.il
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.il
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.il
  %i.ip = insertelement <2 x i1> poison, i1 %.not79.us.i.i.us, i64 0
  %i.iq = shufflevector <2 x i1> %i.ip, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ir = select <2 x i1> %i.iq, <2 x float> %i.ij, <2 x float> %i.ik ; 2 uses
  %i.is = bitcast <2 x float> %i.ir to <2 x i32>
  %i.it = shufflevector <2 x i32> %i.is, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iu = bitcast <2 x float> %i.ir to <2 x i32>
  %i.iv = shufflevector <2 x i32> %i.iu, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.us.i.i.us
  %.07695.us.us.i.i.us = phi i64 [ 0, %.lr.ph.us.i.i.us ], [ %i.ju, %bb.k ] ; 5 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.kMask, i64 %.07695.us.us.i.i.us
  %i.ix = load <4 x i32>, ptr %i.iw, align 16, !tbaa !57, !noalias !2146 ; 2 uses
  %i.iy = and <4 x i32> %i.ix, %i.it
  %i.iz = xor <4 x i32> %i.ix, splat (i32 -1)
  %i.ja = and <4 x i32> %i.iv, %i.iz
  %i.jb = or <4 x i32> %i.ja, %i.iy
  %i.jc = bitcast <4 x i32> %i.jb to <4 x float>
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.07695.us.us.i.i.us
  %i.je = load <4 x float>, ptr %i.jd, align 16, !tbaa !57, !noalias !2146
  %i.jf = fmul <4 x float> %i.ie, %i.je
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.07695.us.us.i.i.us
  %i.jh = load <4 x float>, ptr %i.jg, align 16, !tbaa !57, !alias.scope !2147, !noalias !2148
  %i.ji = fmul <4 x float> %i.jf, %i.jh           ; 4 uses
  %i.jj = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ji) ; 2 uses
  %i.jk = fcmp oge <4 x float> %i.jj, %i.jc
  %i.jl = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.ji) ; 2 uses
  %i.jm = fadd <4 x float> %i.ji, %i.jl
  %i.jn = fsub <4 x float> %i.jm, %i.jl
  %i.jo = fcmp uge <4 x float> %i.jj, splat (float f0x4B000000)
  %.v.us.us.i.i.us = select <4 x i1> %i.jo, <4 x float> %i.ji, <4 x float> %i.jn
  %i.jp = select <4 x i1> %i.jk, <4 x float> %.v.us.us.i.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.jq = fcmp oge <4 x float> %i.jp, splat (float f0x4F000000)
  %i.jr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.jp)
  %i.js = select <4 x i1> %i.jq, <4 x i32> splat (i32 2147483647), <4 x i32> %i.jr
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.07695.us.us.i.i.us
  store <4 x i32> %i.js, ptr %i.jt, align 16, !tbaa !57, !alias.scope !2149, !noalias !2150
  %i.ju = add nuw nsw i64 %.07695.us.us.i.i.us, 4 ; 2 uses
  %i.jv = icmp samesign ult i64 %i.ju, %i.ih
  br i1 %i.jv, label %bb.k, label %._crit_edge.split.us.us.i.i.us, !llvm.loop !7

._crit_edge.split.us.us.i.i.us:                   ; preds = %bb.k
  %i.jw = add nuw nsw i64 %.07596.us.i.i.us, 1    ; 2 uses
  %exitcond106.not.i.i.us = icmp eq i64 %i.jw, %i.if
  br i1 %exitcond106.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.us.i.i.us, !llvm.loop !8

.lr.ph.i.i.us:                                    ; preds = %.lr.ph98.i.i.us, %._crit_edge.split.i.i.us
  %.07596.i.i.us = phi i64 [ %i.lb, %._crit_edge.split.i.i.us ], [ 0, %.lr.ph98.i.i.us ] ; 3 uses
  %.not79.i.i.us = icmp samesign ult i64 %.07596.i.i.us, %i.ig
  %i.jx = shl nuw nsw i64 %.07596.i.i.us, 3
  %i.jy = mul nuw nsw i64 %i.jx, %i.gr            ; 3 uses
  %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel = select i1 %.not79.i.i.us, ptr %i.a, ptr %i.di
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.jy
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.jy
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.us
  %.07695.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %i.kz, %bb.l ] ; 5 uses
  %i.kc = icmp samesign uge i64 %.07695.i.i.us, %i.ii
  %i.kd = zext i1 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.us.sroa.sel, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !56, !noalias !2146
  %i.kg = insertelement <4 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <4 x float> %i.kg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.07695.i.i.us
  %i.kj = load <4 x float>, ptr %i.ki, align 16, !tbaa !57, !noalias !2146
  %i.kk = fmul <4 x float> %i.ie, %i.kj
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.07695.i.i.us
  %i.km = load <4 x float>, ptr %i.kl, align 16, !tbaa !57, !alias.scope !2147, !noalias !2148
  %i.kn = fmul <4 x float> %i.kk, %i.km           ; 4 uses
  %i.ko = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kn) ; 2 uses
  %i.kp = fcmp ole <4 x float> %i.kh, %i.ko
  %i.kq = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float f0x4B000000), <4 x float> %i.kn) ; 2 uses
  %i.kr = fadd <4 x float> %i.kn, %i.kq
  %i.ks = fsub <4 x float> %i.kr, %i.kq
  %i.kt = fcmp uge <4 x float> %i.ko, splat (float f0x4B000000)
  %.v.i.i.us = select <4 x i1> %i.kt, <4 x float> %i.kn, <4 x float> %i.ks
  %i.ku = select <4 x i1> %i.kp, <4 x float> %.v.i.i.us, <4 x float> zeroinitializer ; 2 uses
  %i.kv = fcmp oge <4 x float> %i.ku, splat (float f0x4F000000)
  %i.kw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.ku)
  %i.kx = select <4 x i1> %i.kv, <4 x i32> splat (i32 2147483647), <4 x i32> %i.kw
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.07695.i.i.us
  store <4 x i32> %i.kx, ptr %i.ky, align 16, !tbaa !57, !alias.scope !2149, !noalias !2150
  %i.kz = add nuw nsw i64 %.07695.i.i.us, 4       ; 2 uses
  %i.la = icmp samesign ult i64 %i.kz, %i.ih
  br i1 %i.la, label %bb.l, label %._crit_edge.split.i.i.us, !llvm.loop !7

._crit_edge.split.i.i.us:                         ; preds = %bb.l
  %i.lb = add nuw nsw i64 %.07596.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %i.lb, %i.if
  br i1 %exitcond.not.i.i.us, label %_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us, label %.lr.ph.i.i.us, !llvm.loop !8

_ZN3jxl6N_SSE215QuantizeBlockACERKNS_9QuantizerEbmfNS_14AcStrategyTypeEmmPfPKfPKiPi.exit.i.us: ; preds = %._crit_edge.split.us.us.i.i.us, %._crit_edge.split.i.i.us, %.lr.ph98.i.i.us
  %i.lc = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !167, !noalias !2142
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.hy
  %i.lf = load float, ptr %i.do, align 8, !tbaa !168, !noalias !2142
  %i.lg = fdiv float %i.lf, %i.ib
  %i.lh = insertelement <4 x float> poison, float %i.lg, i64 0
  %i.li = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> zeroinitializer
  %.not82.i.us = icmp eq i64 %i.gr, 0
end_hunk_2
