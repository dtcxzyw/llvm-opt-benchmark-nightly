Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/bvh_builder_sah_mb?download=true
inline.NumInlined: 7911
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 185
begin_hunk_0_@_ZZN6embree12bin_parallelINS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEENS1_10BinMappingILm32EEES3_EEvRT_PKT1_mmmmRKT0_ENKUlRKS7_SJ_E_clESJ_SJ_:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 6208
  %i.bb = load <2 x i64>, ptr %i.ba, align 64
  store <2 x i64> %i.bb, ptr %i.az, align 64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 6224
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 6224
  %i.be = load <2 x i64>, ptr %i.bd, align 16
  store <2 x i64> %i.be, ptr %i.bc, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6240
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 6240
  %i.bh = load <2 x i64>, ptr %i.bg, align 32
  store <2 x i64> %i.bh, ptr %i.bf, align 32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 6256
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 6256
  %i.bk = load <2 x i64>, ptr %i.bj, align 16
  store <2 x i64> %i.bk, ptr %i.bi, align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 6272
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 6272
  %i.bn = load <2 x i64>, ptr %i.bm, align 64
  store <2 x i64> %i.bn, ptr %i.bl, align 64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 6288
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 6288
  %i.bq = load <2 x i64>, ptr %i.bp, align 16
  store <2 x i64> %i.bq, ptr %i.bo, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 6304
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 6304
  %i.bt = load <2 x i64>, ptr %i.bs, align 32
  store <2 x i64> %i.bt, ptr %i.br, align 32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 6320
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 6320
  %i.bw = load <2 x i64>, ptr %i.bv, align 16
  store <2 x i64> %i.bw, ptr %i.bu, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 6336
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 6336
  %i.bz = load <2 x i64>, ptr %i.by, align 64
  store <2 x i64> %i.bz, ptr %i.bx, align 64
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 6352
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 6352
  %i.cc = load <2 x i64>, ptr %i.cb, align 16
  store <2 x i64> %i.cc, ptr %i.ca, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 6368
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 6368
  %i.cf = load <2 x i64>, ptr %i.ce, align 32
  store <2 x i64> %i.cf, ptr %i.cd, align 32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 6384
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 6384
  %i.ci = load <2 x i64>, ptr %i.ch, align 16
  store <2 x i64> %i.ci, ptr %i.cg, align 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 6400
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 6400
  %i.cl = load <2 x i64>, ptr %i.ck, align 64
  store <2 x i64> %i.cl, ptr %i.cj, align 64
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 6416
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 6416
  %i.co = load <2 x i64>, ptr %i.cn, align 16
  store <2 x i64> %i.co, ptr %i.cm, align 16
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 6432
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 6432
  %i.cr = load <2 x i64>, ptr %i.cq, align 32
  store <2 x i64> %i.cr, ptr %i.cp, align 32
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 6448
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 6448
  %i.cu = load <2 x i64>, ptr %i.ct, align 16
  store <2 x i64> %i.cu, ptr %i.cs, align 16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6464
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 6464
  %i.cx = load <2 x i64>, ptr %i.cw, align 64
  store <2 x i64> %i.cx, ptr %i.cv, align 64
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 6480
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 6480
  %i.da = load <2 x i64>, ptr %i.cz, align 16
  store <2 x i64> %i.da, ptr %i.cy, align 16
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 6496
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 6496
  %i.dd = load <2 x i64>, ptr %i.dc, align 32
  store <2 x i64> %i.dd, ptr %i.db, align 32
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 6512
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 6512
  %i.dg = load <2 x i64>, ptr %i.df, align 16
  store <2 x i64> %i.dg, ptr %i.de, align 16
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 6528
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 6528
  %i.dj = load <2 x i64>, ptr %i.di, align 64
  store <2 x i64> %i.dj, ptr %i.dh, align 64
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 6544
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 6544
  %i.dm = load <2 x i64>, ptr %i.dl, align 16
  store <2 x i64> %i.dm, ptr %i.dk, align 16
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 6560
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 6560
  %i.dp = load <2 x i64>, ptr %i.do, align 32
  store <2 x i64> %i.dp, ptr %i.dn, align 32
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 6576
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 6576
  %i.ds = load <2 x i64>, ptr %i.dr, align 16
  store <2 x i64> %i.ds, ptr %i.dq, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 6592
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 6592
  %i.dv = load <2 x i64>, ptr %i.du, align 64
  store <2 x i64> %i.dv, ptr %i.dt, align 64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 6608
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 6608
  %i.dy = load <2 x i64>, ptr %i.dx, align 16
  store <2 x i64> %i.dy, ptr %i.dw, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 6624
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 6624
  %i.eb = load <2 x i64>, ptr %i.ea, align 32
  store <2 x i64> %i.eb, ptr %i.dz, align 32
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 6640
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 6640
  %i.ee = load <2 x i64>, ptr %i.ed, align 16
  store <2 x i64> %i.ee, ptr %i.ec, align 16
  %i.ef = load ptr, ptr %1, align 8, !nonnull !50, !align !59
  %i.eg = load i64, ptr %i.ef, align 16           ; 2 uses
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5mergeERKS6_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ERKS6_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 6144
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0.i15 = phi i64 [ 0, %.lr.ph ], [ %i.gv, %bb.c ] ; 5 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %.0.i15
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %.0.i15 ; 2 uses
  %i.ek = load <4 x i32>, ptr %i.ej, align 16, !noalias !901
  %i.el = load <4 x i32>, ptr %i.ei, align 16, !noalias !901
  %i.em = add <4 x i32> %i.el, %i.ek
  store <4 x i32> %i.em, ptr %i.ej, align 16
  %i.en = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.0.i15 ; 13 uses
  %i.eo = getelementptr inbounds nuw [192 x i8], ptr %3, i64 %.0.i15 ; 12 uses
  %i.ep = load <4 x float>, ptr %i.en, align 64, !noalias !902
  %i.eq = load <4 x float>, ptr %i.eo, align 64, !noalias !902
  %i.er = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ep, <4 x float> %i.eq)
  store <4 x float> %i.er, ptr %i.en, align 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.eu = load <4 x float>, ptr %i.es, align 16, !noalias !903
  %i.ev = load <4 x float>, ptr %i.et, align 16, !noalias !903
  %i.ew = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.eu, <4 x float> %i.ev)
  store <4 x float> %i.ew, ptr %i.es, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.ez = load <4 x float>, ptr %i.ex, align 32, !noalias !904
  %i.fa = load <4 x float>, ptr %i.ey, align 32, !noalias !904
  %i.fb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ez, <4 x float> %i.fa)
  store <4 x float> %i.fb, ptr %i.ex, align 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 48 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.fe = load <4 x float>, ptr %i.fc, align 16, !noalias !905
  %i.ff = load <4 x float>, ptr %i.fd, align 16, !noalias !905
  %i.fg = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fe, <4 x float> %i.ff)
  store <4 x float> %i.fg, ptr %i.fc, align 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 64
  %i.fj = load <4 x float>, ptr %i.fh, align 64, !noalias !906
  %i.fk = load <4 x float>, ptr %i.fi, align 64, !noalias !906
  %i.fl = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.fj, <4 x float> %i.fk)
  store <4 x float> %i.fl, ptr %i.fh, align 64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 80 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %i.fo = load <4 x float>, ptr %i.fm, align 16, !noalias !907
  %i.fp = load <4 x float>, ptr %i.fn, align 16, !noalias !907
  %i.fq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fo, <4 x float> %i.fp)
  store <4 x float> %i.fq, ptr %i.fm, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.en, i64 96 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eo, i64 96
  %i.ft = load <4 x float>, ptr %i.fr, align 32, !noalias !908
  %i.fu = load <4 x float>, ptr %i.fs, align 32, !noalias !908
  %i.fv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ft, <4 x float> %i.fu)
  store <4 x float> %i.fv, ptr %i.fr, align 32
  %i.fw = getelementptr inbounds nuw i8, ptr %i.en, i64 112 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eo, i64 112
  %i.fy = load <4 x float>, ptr %i.fw, align 16, !noalias !909
  %i.fz = load <4 x float>, ptr %i.fx, align 16, !noalias !909
  %i.ga = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.fy, <4 x float> %i.fz)
  store <4 x float> %i.ga, ptr %i.fw, align 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.en, i64 128 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eo, i64 128
  %i.gd = load <4 x float>, ptr %i.gb, align 64, !noalias !910
  %i.ge = load <4 x float>, ptr %i.gc, align 64, !noalias !910
  %i.gf = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gd, <4 x float> %i.ge)
  store <4 x float> %i.gf, ptr %i.gb, align 64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.en, i64 144 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.eo, i64 144
  %i.gi = load <4 x float>, ptr %i.gg, align 16, !noalias !911
  %i.gj = load <4 x float>, ptr %i.gh, align 16, !noalias !911
  %i.gk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gi, <4 x float> %i.gj)
  store <4 x float> %i.gk, ptr %i.gg, align 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.en, i64 160 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 160
  %i.gn = load <4 x float>, ptr %i.gl, align 32, !noalias !912
  %i.go = load <4 x float>, ptr %i.gm, align 32, !noalias !912
  %i.gp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.gn, <4 x float> %i.go)
  store <4 x float> %i.gp, ptr %i.gl, align 32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.en, i64 176 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.eo, i64 176
  %i.gs = load <4 x float>, ptr %i.gq, align 16, !noalias !913
  %i.gt = load <4 x float>, ptr %i.gr, align 16, !noalias !913
  %i.gu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.gs, <4 x float> %i.gt)
  store <4 x float> %i.gu, ptr %i.gq, align 16
  %i.gv = add nuw i64 %.0.i15, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.gv, %i.eg
  br i1 %exitcond.not, label %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5mergeERKS6_m.exit, label %bb.c, !llvm.loop !900

_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEE5mergeERKS6_m.exit: ; preds = %bb.c, %_ZN6embree4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEC2ERKS6_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISA_NS4_10BinMappingILm32EEES6_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSB_ISA_SD_S6_EEvSF_SI_mmmmSL_EUlRKSA_SS_E_EESJ_SE_SE_SE_SE_SL_RSH_RKT2_EUlmE_EEvSE_SL_EUlSP_E_EEvSE_SE_SE_SL_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.102, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i64 %1, ptr %5, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.e = load i64, ptr %3, align 8
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %4, ptr %i.f, align 8
  %i.g = tail call noundef ptr @_ZN6embree13TaskScheduler6threadEv() ; 7 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.l, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 262272 ; 5 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  %i.k = icmp ugt i64 %i.j, 4095
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.8)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.u, %bb.i ], [ %i.l, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.m, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #15
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 786624 ; 2 uses
  %i.o = load i64, ptr %i.n, align 64             ; 4 uses
  %i.p = sub i64 0, %i.o
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = add i64 %i.o, 48
  %i.s = add i64 %i.r, %i.q                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, 524288
  br i1 %i.t, label %bb.g, label %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit

bb.g:                                             ; preds = %bb.f
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull @.str.9)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit: ; preds = %bb.f
  store i64 %i.s, ptr %i.n, align 64
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 262336
  %i.x = getelementptr i8, ptr %i.w, i64 %i.o
  %i.y = getelementptr i8, ptr %i.x, i64 %i.q     ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN6embree13TaskScheduler19ClosureTaskFunctionIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EE, i64 16), ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(40) %5, i64 40, i1 false)
  %i.aa = load atomic i64, ptr %i.i seq_cst, align 64
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.aa ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 786688
  %i.ad = load ptr, ptr %i.ac, align 64           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.y, ptr %i.ag, align 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %4, ptr %i.ai, align 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 %i.o, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i64 %i.a, ptr %i.ak, align 16
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = atomicrmw add ptr %i.al, i32 1 seq_cst, align 4 ; 0 uses
  br label %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit: ; preds = %bb.j, %_ZN6embree13TaskScheduler9TaskQueue5allocEmm.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !60
  %i.an = cmpxchg ptr %i.ab, i32 0, i32 1 seq_cst seq_cst, align 4 ; 0 uses
  %i.ao = atomicrmw add ptr %i.i, i64 1 seq_cst, align 8 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 262208 ; 2 uses
  %i.aq = load atomic i64, ptr %i.ap seq_cst, align 64
  %i.ar = load atomic i64, ptr %i.i seq_cst, align 64
  %i.as = add i64 %i.ar, -1
  %.not.i7 = icmp ult i64 %i.aq, %i.as
  br i1 %.not.i7, label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvmRKSF_S12_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit
  %i.at = load atomic i64, ptr %i.i seq_cst, align 64
  %i.au = add i64 %i.at, -1
  store atomic i64 %i.au, ptr %i.ap seq_cst, align 64
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvmRKSF_S12_.exit

bb.l:                                             ; preds = %bb.a
  %i.av = tail call noundef ptr @_ZN6embree13TaskScheduler8instanceEv()
  call void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSF_S12_mb(ptr noundef nonnull align 8 dereferenceable(80) %i.av, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %4, i64 noundef %i.a, i1 noundef zeroext true)
  br label %_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvmRKSF_S12_.exit

_ZN6embree13TaskScheduler5spawnIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvmRKSF_S12_.exit: ; preds = %bb.k, %_ZNSt13__atomic_baseIiE23compare_exchange_strongERiiSt12memory_orderS2_.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

declare void @_ZN6embree13TaskScheduler4waitEv() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #8

declare noundef ptr @_ZN6embree13TaskScheduler6threadEv() local_unnamed_addr #6

declare noundef ptr @_ZN6embree13TaskScheduler8instanceEv() local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler10spawn_rootIZNS0_5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImNS_4sse28BinInfoTILm32ENS_9PrimRefMBENS_5LBBoxINS_6Vec3faEEEEEZNS_12bin_parallelISB_NS5_10BinMappingILm32EEES7_EEvRT_PKT1_mmmmRKT0_EUlRKNS_5rangeImEEE_ZNSC_ISB_SE_S7_EEvSG_SJ_mmmmSM_EUlRKSB_ST_E_EESK_SF_SF_SF_SF_SM_RSI_RKT2_EUlmE_EEvSF_SM_EUlSQ_E_EEvSF_SF_SF_SM_PNS0_16TaskGroupContextEEUlvE_EEvRKSF_S12_mb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %7 = alloca %"class.std::unique_ptr.113", align 8 ; 6 uses
  %8 = alloca %"class.embree::Lock", align 8      ; 7 uses
  %9 = alloca %"class.embree::Ref", align 8       ; 7 uses
  %10 = alloca %"class.embree::Ref", align 8      ; 7 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 8 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6embree13TaskScheduler12startThreadsEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call noundef i64 @_ZN6embree13TaskScheduler16allocThreadIndexEv(ptr noundef nonnull align 8 dereferenceable(80) %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.b = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef 786752, i64 noundef 64) ; 13 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit53 unwind label %bb.w, !inline_history !13 ; 0 uses

_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit53: ; preds = %bb.c
  store i64 %i.a, ptr %i.b, align 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit53
  %.idx.i.i = phi i64 [ 0, %_ZN6embree3RefINS_13TaskSchedulerEEC2EPS1_.exit53 ], [ %.add.i.i.7, %bb.d ] ; 9 uses
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  store i32 0, ptr %.ptr.i.i, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i32 0, ptr %.ptr.i.i.1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.2 = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i32 0, ptr %.ptr.i.i.2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.3 = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store i32 0, ptr %.ptr.i.i.3, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.4 = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store i32 0, ptr %.ptr.i.i.4, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.ptr.i.i.5 = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  store i32 0, ptr %.ptr.i.i.5, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
end_hunk_0
