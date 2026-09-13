Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/finder_pattern_finder?download=true
inline.NumInlined: 2769
inline.NumDeleted: 610
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5zxing6qrcode19FinderPatternFinder18selectBestPatternsERNS_12ErrorHandlerE:bb.a
bb.by:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit201
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !77
  %i.ki = add i32 %i.kh, 1
  store i32 %i.ki, ptr %i.kg, align 8, !tbaa !77
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit201
  %i.kj = load ptr, ptr %i.ke, align 8, !tbaa !58 ; 4 uses
  %.not5.i.i203 = icmp eq ptr %i.kj, null
  br i1 %.not5.i.i203, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit204, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 3 uses
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !77
  %i.km = add i32 %i.kl, -1                       ; 2 uses
  store i32 %i.km, ptr %i.kk, align 8, !tbaa !77
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.cb, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit204

bb.cb:                                            ; preds = %bb.ca
  store i32 -559026175, ptr %i.kk, align 8, !tbaa !77
  %i.ko = load ptr, ptr %i.kj, align 8, !tbaa !63
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load ptr, ptr %i.kp, align 8
  tail call void %i.kq(ptr noundef nonnull align 8 dereferenceable(12) %i.kj) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit204

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit204: ; preds = %bb.bz, %bb.ca, %bb.cb
  store ptr %i.kf, ptr %i.ke, align 8, !tbaa !58
  br label %bb.cp

.unreachabledefault:                              ; preds = %bb.an
  unreachable

bb.cc:                                            ; preds = %bb.an
  %i.kr = load ptr, ptr %i.fs, align 8, !tbaa !58 ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i205, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !77
  %i.ku = add i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 8, !tbaa !77
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.kv = load ptr, ptr %i.z, align 8, !tbaa !58  ; 4 uses
  %.not5.i.i206 = icmp eq ptr %i.kv, null
  br i1 %.not5.i.i206, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 3 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !77
  %i.ky = add i32 %i.kx, -1                       ; 2 uses
  store i32 %i.ky, ptr %i.kw, align 8, !tbaa !77
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.cg, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207

bb.cg:                                            ; preds = %bb.cf
  store i32 -559026175, ptr %i.kw, align 8, !tbaa !77
  %i.la = load ptr, ptr %i.kv, align 8, !tbaa !63
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  tail call void %i.lc(ptr noundef nonnull align 8 dereferenceable(12) %i.kv) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207: ; preds = %bb.ce, %bb.cf, %bb.cg
  store ptr %i.kr, ptr %i.z, align 8, !tbaa !58
  %i.ld = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.lg = load ptr, ptr %i.le, align 8, !tbaa !58 ; 3 uses
  %.not.i.i208 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i208, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !77
  %i.lj = add i32 %i.li, 1
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !77
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit207
  %i.lk = load ptr, ptr %i.lf, align 8, !tbaa !58 ; 4 uses
  %.not5.i.i209 = icmp eq ptr %i.lk, null
  br i1 %.not5.i.i209, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !77
  %i.ln = add i32 %i.lm, -1                       ; 2 uses
  store i32 %i.ln, ptr %i.ll, align 8, !tbaa !77
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %bb.ck, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210

bb.ck:                                            ; preds = %bb.cj
  store i32 -559026175, ptr %i.ll, align 8, !tbaa !77
  %i.lp = load ptr, ptr %i.lk, align 8, !tbaa !63
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  tail call void %i.lr(ptr noundef nonnull align 8 dereferenceable(12) %i.lk) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210: ; preds = %bb.ci, %bb.cj, %bb.ck
  store ptr %i.lg, ptr %i.lf, align 8, !tbaa !58
  %i.ls = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.lv = load ptr, ptr %i.lt, align 8, !tbaa !58 ; 3 uses
  %.not.i.i211 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i211, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !77
  %i.ly = add i32 %i.lx, 1
  store i32 %i.ly, ptr %i.lw, align 8, !tbaa !77
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit210
  %i.lz = load ptr, ptr %i.lu, align 8, !tbaa !58 ; 4 uses
  %.not5.i.i212 = icmp eq ptr %i.lz, null
  br i1 %.not5.i.i212, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit213, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !77
  %i.mc = add i32 %i.mb, -1                       ; 2 uses
  store i32 %i.mc, ptr %i.ma, align 8, !tbaa !77
  %i.md = icmp eq i32 %i.mc, 0
  br i1 %i.md, label %bb.co, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit213

bb.co:                                            ; preds = %bb.cn
  store i32 -559026175, ptr %i.ma, align 8, !tbaa !77
  %i.me = load ptr, ptr %i.lz, align 8, !tbaa !63
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  tail call void %i.mg(ptr noundef nonnull align 8 dereferenceable(12) %i.lz) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit213

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit213: ; preds = %bb.cm, %bb.cn, %bb.co
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !58
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit213, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit204, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit195, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit186
  store ptr %i.z, ptr %0, align 8, !tbaa !85
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.mh, align 8, !tbaa !84
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.mi, align 8, !tbaa !92
  br label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EED2Ev.exit390

bb.cq:                                            ; preds = %bb.ah
  %i.mj = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !58
  %i.ml = invoke noundef i32 @_ZNK5zxing6qrcode13FinderPattern8getCountEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mk)
          to label %bb.cr unwind label %.loopexit.split-lp440

bb.cr:                                            ; preds = %bb.cq
  %i.mm = icmp sgt i32 %i.ml, 1
  br i1 %i.mm, label %bb.cs, label %.preheader

bb.cs:                                            ; preds = %bb.cr
  %i.mn = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !58
  %i.mq = invoke noundef i32 @_ZNK5zxing6qrcode13FinderPattern8getCountEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mp)
          to label %bb.ct unwind label %.loopexit.split-lp440

bb.ct:                                            ; preds = %bb.cs
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.cu, label %.preheader

.preheader:                                       ; preds = %bb.cr, %bb.ct
  br label %bb.ey

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ms = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !58
  %i.mu = invoke noundef float @_ZNK5zxing6qrcode13FinderPattern22getEstimatedModuleSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mt)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.mv = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !58
  %i.my = invoke noundef float @_ZNK5zxing6qrcode13FinderPattern22getEstimatedModuleSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.mx)
          to label %.lr.ph488 unwind label %bb.cw

.lr.ph488:                                        ; preds = %bb.cv
  %i.mz = fadd float %i.mu, %i.my
  %i.na = fmul float %i.mz, 5.000000e-01          ; 2 uses
  %i.nb = fpext float %i.na to double
  %i.nc = fmul double %i.nb, 5.000000e-01
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.cx

.preheader430:                                    ; preds = %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !84
  %i.nh = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %.not502 = icmp eq ptr %i.ng, %i.nh
  br i1 %.not502, label %._crit_edge493, label %.lr.ph492

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

bb.cx:                                            ; preds = %.lr.ph488, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit
  %.0117486 = phi i64 [ 2, %.lr.ph488 ], [ %i.ob, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.nj = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %.0117486
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !58
  %i.nm = invoke noundef float @_ZNK5zxing6qrcode13FinderPattern22getEstimatedModuleSizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.nl)
          to label %bb.cy unwind label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  %i.nn = fsub float %i.nm, %i.na
  %i.no = call noundef float @llvm.fabs.f32(float %i.nn)
  %i.np = fpext float %i.no to double
  %i.nq = fcmp ogt double %i.nc, %i.np
  br i1 %i.nq, label %bb.cz, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit

bb.cz:                                            ; preds = %bb.cy
  %i.nr = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %.0117486 ; 2 uses
  %i.nt = load ptr, ptr %i.nd, align 8, !tbaa !84 ; 5 uses
  %i.nu = load ptr, ptr %i.ne, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.nt, %i.nu
  br i1 %.not.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store ptr null, ptr %i.nt, align 8, !tbaa !58
  %i.nv = load ptr, ptr %i.ns, align 8, !tbaa !58 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEC2ERKS3_.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !77
  %i.ny = add i32 %i.nx, 1
  store i32 %i.ny, ptr %i.nw, align 8, !tbaa !77
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEC2ERKS3_.exit.i

_ZN5zxing3RefINS_6qrcode13FinderPatternEEC2ERKS3_.exit.i: ; preds = %bb.db, %bb.da
  store ptr %i.nv, ptr %i.nt, align 8, !tbaa !58
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store ptr %i.nz, ptr %i.nd, align 8, !tbaa !84
  br label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit

bb.dc:                                            ; preds = %bb.cz
  invoke void @_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.nt, ptr noundef nonnull align 8 dereferenceable(8) %i.ns)
          to label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.cx
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.et

_ZNSt6vectorIN5zxing3RefINS0_6qrcode13FinderPatternEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEC2ERKS3_.exit.i, %bb.dc, %bb.cy
  %i.ob = add nuw i64 %.0117486, 1                ; 2 uses
  %exitcond523.not = icmp eq i64 %i.ob, %i.i
  br i1 %exitcond523.not, label %.preheader430, label %bb.cx, !llvm.loop !181

._crit_edge493:                                   ; preds = %bb.ei, %.preheader430
  %.0120.lcssa = phi i64 [ 0, %.preheader430 ], [ %.1121, %bb.ei ] ; 2 uses
  %i.oc = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !58 ; 3 uses
  %.not.i.i215 = icmp eq ptr %i.od, null
  br i1 %.not.i.i215, label %bb.df, label %bb.de

bb.de:                                            ; preds = %._crit_edge493
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !77
  %i.og = add i32 %i.of, 1
  store i32 %i.og, ptr %i.oe, align 8, !tbaa !77
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge493
  %i.oh = load ptr, ptr %i.z, align 8, !tbaa !58  ; 4 uses
  %.not5.i.i216 = icmp eq ptr %i.oh, null
  br i1 %.not5.i.i216, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8 ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !77
  %i.ok = add i32 %i.oj, -1                       ; 2 uses
  store i32 %i.ok, ptr %i.oi, align 8, !tbaa !77
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.dh, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217

bb.dh:                                            ; preds = %bb.dg
  store i32 -559026175, ptr %i.oi, align 8, !tbaa !77
  %i.om = load ptr, ptr %i.oh, align 8, !tbaa !63
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.oo = load ptr, ptr %i.on, align 8
  call void %i.oo(ptr noundef nonnull align 8 dereferenceable(12) %i.oh) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217: ; preds = %bb.df, %bb.dg, %bb.dh
  store ptr %i.od, ptr %i.z, align 8, !tbaa !58
  %i.op = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.os = load ptr, ptr %i.oq, align 8, !tbaa !58 ; 3 uses
  %.not.i.i218 = icmp eq ptr %i.os, null
  br i1 %.not.i.i218, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !77
  %i.ov = add i32 %i.ou, 1
  store i32 %i.ov, ptr %i.ot, align 8, !tbaa !77
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit217
  %i.ow = load ptr, ptr %i.or, align 8, !tbaa !58 ; 4 uses
  %.not5.i.i219 = icmp eq ptr %i.ow, null
  br i1 %.not5.i.i219, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit220, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 3 uses
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !77
  %i.oz = add i32 %i.oy, -1                       ; 2 uses
  store i32 %i.oz, ptr %i.ox, align 8, !tbaa !77
  %i.pa = icmp eq i32 %i.oz, 0
  br i1 %i.pa, label %bb.dl, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit220

bb.dl:                                            ; preds = %bb.dk
  store i32 -559026175, ptr %i.ox, align 8, !tbaa !77
  %i.pb = load ptr, ptr %i.ow, align 8, !tbaa !63
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8
  call void %i.pd(ptr noundef nonnull align 8 dereferenceable(12) %i.ow) #23, !inline_history !3
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit220

_ZN5zxing3RefINS_6qrcode13FinderPatternEEaSERKS3_.exit220: ; preds = %bb.dj, %bb.dk, %bb.dl
  store ptr %i.os, ptr %i.or, align 8, !tbaa !58
  %i.pe = load ptr, ptr %i.nf, align 8, !tbaa !84
  %i.pf = load ptr, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = ptrtoint ptr %i.pf to i64
  %i.pi = sub i64 %i.pg, %i.ph
  %i.pj = ashr exact i64 %i.pi, 3
  %.not = icmp ult i64 %.0120.lcssa, %i.pj
  br i1 %.not, label %bb.eo, label %bb.ej

.lr.ph492:                                        ; preds = %.preheader430, %bb.ei
  %i.pk = phi ptr [ %i.rw, %bb.ei ], [ %i.nh, %.preheader430 ]
  %.0118491 = phi float [ %.1119, %bb.ei ], [ 0.000000e+00, %.preheader430 ] ; 3 uses
  %.0120490 = phi i64 [ %.1121, %bb.ei ], [ 0, %.preheader430 ] ; 2 uses
  %.0122489 = phi i64 [ %i.ru, %bb.ei ], [ 0, %.preheader430 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !66
  %i.pl = load ptr, ptr %i.b, align 8, !tbaa !85  ; 2 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !58 ; 9 uses
  %.not.i.i221 = icmp eq ptr %i.pm, null          ; 3 uses
  br i1 %.not.i.i221, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph492
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !77
  %i.pp = add i32 %i.po, 1
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !77
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph492
  store ptr %i.pm, ptr %6, align 8, !tbaa !58
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !58 ; 9 uses
  %.not.i.i222 = icmp eq ptr %i.pr, null          ; 3 uses
  br i1 %.not.i.i222, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !77
  %i.pu = add i32 %i.pt, 1
  store i32 %i.pu, ptr %i.ps, align 8, !tbaa !77
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  store ptr %i.pr, ptr %7, align 8, !tbaa !58
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %.0122489
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !58 ; 9 uses
  %.not.i.i224 = icmp eq ptr %i.pw, null          ; 3 uses
  br i1 %.not.i.i224, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.py = load i32, ptr %i.px, align 8, !tbaa !77
  %i.pz = add i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 8, !tbaa !77
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  store ptr %i.pw, ptr %8, align 8, !tbaa !58
  %i.qa = invoke noundef zeroext i1 @_ZN5zxing6qrcode19FinderPatternFinder27checkIsoscelesRightTriangleENS_3RefINS0_13FinderPatternEEES4_S4_Rf(ptr nonnull align 8 poison, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ds unwind label %bb.eb

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not.i.i224, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 3 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !77
  %i.qd = add i32 %i.qc, -1                       ; 2 uses
  store i32 %i.qd, ptr %i.qb, align 8, !tbaa !77
  %i.qe = icmp eq i32 %i.qd, 0
  br i1 %i.qe, label %bb.du, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit

bb.du:                                            ; preds = %bb.dt
  store i32 -559026175, ptr %i.qb, align 8, !tbaa !77
  %i.qf = load ptr, ptr %i.pw, align 8, !tbaa !63
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(12) %i.pw) #23, !inline_history !4
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit

_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit: ; preds = %bb.ds, %bb.dt, %bb.du
  br i1 %.not.i.i222, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228, label %bb.dv

bb.dv:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 3 uses
  %i.qj = load i32, ptr %i.qi, align 8, !tbaa !77
  %i.qk = add i32 %i.qj, -1                       ; 2 uses
  store i32 %i.qk, ptr %i.qi, align 8, !tbaa !77
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.dw, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228

bb.dw:                                            ; preds = %bb.dv
  store i32 -559026175, ptr %i.qi, align 8, !tbaa !77
  %i.qm = load ptr, ptr %i.pr, align 8, !tbaa !63
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8
  call void %i.qo(ptr noundef nonnull align 8 dereferenceable(12) %i.pr) #23, !inline_history !4
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228

_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228: ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit, %bb.dv, %bb.dw
  br i1 %.not.i.i221, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit230, label %bb.dx

bb.dx:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 3 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !77
  %i.qr = add i32 %i.qq, -1                       ; 2 uses
  store i32 %i.qr, ptr %i.qp, align 8, !tbaa !77
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %bb.dy, label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit230

bb.dy:                                            ; preds = %bb.dx
  store i32 -559026175, ptr %i.qp, align 8, !tbaa !77
  %i.qt = load ptr, ptr %i.pm, align 8, !tbaa !63
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  call void %i.qv(ptr noundef nonnull align 8 dereferenceable(12) %i.pm) #23, !inline_history !4
  br label %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit230

_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit230: ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit228, %bb.dx, %bb.dy
  br i1 %i.qa, label %bb.dz, label %bb.ei

bb.dz:                                            ; preds = %_ZN5zxing3RefINS_6qrcode13FinderPatternEED2Ev.exit230
  %i.qw = load float, ptr %i.a, align 4, !tbaa !66 ; 2 uses
  %i.qx = fcmp ult float %i.qw, %.0118491
end_hunk_0
