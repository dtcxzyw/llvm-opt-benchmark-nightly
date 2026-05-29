inline.NumInlined: 42
begin_hunk_0_@main:bb.a

._crit_edge.us.i:                                 ; preds = %bb.b
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, 100
  br i1 %exitcond68.not.i, label %.preheader51.i, label %.preheader52.us.i, !llvm.loop !15

.preheader51.i:                                   ; preds = %._crit_edge.us.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted875 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted878 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted881 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted884 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted887 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted890 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted893 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted896 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted899 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted902 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted905 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted908 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted911 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted914 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted917 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted920 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted923 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted926 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted929 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted932 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted935 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted938 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted941 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted943 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted945 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted947 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i, %.preheader51.i
  %i.v = phi float [ %.promoted947, %.preheader51.i ], [ %i.cc, %.preheader.us.i ]
  %i.w = phi float [ %.promoted945, %.preheader51.i ], [ %i.ca, %.preheader.us.i ]
  %i.x = phi float [ %.promoted943, %.preheader51.i ], [ %i.by, %.preheader.us.i ]
  %i.y = phi float [ %.promoted941, %.preheader51.i ], [ %i.bw, %.preheader.us.i ]
  %wide.load529.11939 = phi <4 x float> [ %.promoted938, %.preheader51.i ], [ %i.bu, %.preheader.us.i ]
  %wide.load.11936 = phi <4 x float> [ %.promoted935, %.preheader51.i ], [ %i.bt, %.preheader.us.i ]
  %wide.load529.10933 = phi <4 x float> [ %.promoted932, %.preheader51.i ], [ %i.bq, %.preheader.us.i ]
  %wide.load.10930 = phi <4 x float> [ %.promoted929, %.preheader51.i ], [ %i.bp, %.preheader.us.i ]
  %wide.load529.9927 = phi <4 x float> [ %.promoted926, %.preheader51.i ], [ %i.bm, %.preheader.us.i ]
  %wide.load.9924 = phi <4 x float> [ %.promoted923, %.preheader51.i ], [ %i.bl, %.preheader.us.i ]
  %wide.load529.8921 = phi <4 x float> [ %.promoted920, %.preheader51.i ], [ %i.bi, %.preheader.us.i ]
  %wide.load.8918 = phi <4 x float> [ %.promoted917, %.preheader51.i ], [ %i.bh, %.preheader.us.i ]
  %wide.load529.7915 = phi <4 x float> [ %.promoted914, %.preheader51.i ], [ %i.be, %.preheader.us.i ]
  %wide.load.7912 = phi <4 x float> [ %.promoted911, %.preheader51.i ], [ %i.bd, %.preheader.us.i ]
  %wide.load529.6909 = phi <4 x float> [ %.promoted908, %.preheader51.i ], [ %i.ba, %.preheader.us.i ]
  %wide.load.6906 = phi <4 x float> [ %.promoted905, %.preheader51.i ], [ %i.az, %.preheader.us.i ]
  %wide.load529.5903 = phi <4 x float> [ %.promoted902, %.preheader51.i ], [ %i.aw, %.preheader.us.i ]
  %wide.load.5900 = phi <4 x float> [ %.promoted899, %.preheader51.i ], [ %i.av, %.preheader.us.i ]
  %wide.load529.4897 = phi <4 x float> [ %.promoted896, %.preheader51.i ], [ %i.as, %.preheader.us.i ]
  %wide.load.4894 = phi <4 x float> [ %.promoted893, %.preheader51.i ], [ %i.ar, %.preheader.us.i ]
  %wide.load529.3891 = phi <4 x float> [ %.promoted890, %.preheader51.i ], [ %i.ao, %.preheader.us.i ]
  %wide.load.3888 = phi <4 x float> [ %.promoted887, %.preheader51.i ], [ %i.an, %.preheader.us.i ]
  %wide.load529.2885 = phi <4 x float> [ %.promoted884, %.preheader51.i ], [ %i.ak, %.preheader.us.i ]
  %wide.load.2882 = phi <4 x float> [ %.promoted881, %.preheader51.i ], [ %i.aj, %.preheader.us.i ]
  %wide.load529.1879 = phi <4 x float> [ %.promoted878, %.preheader51.i ], [ %i.ag, %.preheader.us.i ]
  %wide.load.1876 = phi <4 x float> [ %.promoted875, %.preheader51.i ], [ %i.af, %.preheader.us.i ]
  %i.z = phi <4 x float> [ %.promoted, %.preheader51.i ], [ %i.ac, %.preheader.us.i ]
  %wide.load872 = phi <4 x float> [ %main.b.promoted, %.preheader51.i ], [ %i.ab, %.preheader.us.i ]
  %indvars.iv77.i = phi i64 [ 0, %.preheader51.i ], [ %indvars.iv.next78.i, %.preheader.us.i ] ; 2 uses
  %invariant.gep82.i.idx = mul nuw nsw i64 %indvars.iv77.i, 804
  %invariant.gep82.i = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i.idx ; 28 uses
  %i.aa = getelementptr i8, ptr %invariant.gep82.i, i64 16
  %wide.load530 = load <4 x float>, ptr %invariant.gep82.i, align 4, !tbaa !11
  %wide.load531 = load <4 x float>, ptr %i.aa, align 4, !tbaa !11
  %i.ab = fadd <4 x float> %wide.load872, %wide.load530 ; 2 uses
  %i.ac = fadd <4 x float> %i.z, %wide.load531    ; 2 uses
  %i.ad = getelementptr i8, ptr %invariant.gep82.i, i64 32
  %i.ae = getelementptr i8, ptr %invariant.gep82.i, i64 48
  %wide.load530.1 = load <4 x float>, ptr %i.ad, align 4, !tbaa !11
  %wide.load531.1 = load <4 x float>, ptr %i.ae, align 4, !tbaa !11
  %i.af = fadd <4 x float> %wide.load.1876, %wide.load530.1 ; 2 uses
  %i.ag = fadd <4 x float> %wide.load529.1879, %wide.load531.1 ; 2 uses
  %i.ah = getelementptr i8, ptr %invariant.gep82.i, i64 64
  %i.ai = getelementptr i8, ptr %invariant.gep82.i, i64 80
  %wide.load530.2 = load <4 x float>, ptr %i.ah, align 4, !tbaa !11
  %wide.load531.2 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11
  %i.aj = fadd <4 x float> %wide.load.2882, %wide.load530.2 ; 2 uses
  %i.ak = fadd <4 x float> %wide.load529.2885, %wide.load531.2 ; 2 uses
  %i.al = getelementptr i8, ptr %invariant.gep82.i, i64 96
  %i.am = getelementptr i8, ptr %invariant.gep82.i, i64 112
  %wide.load530.3 = load <4 x float>, ptr %i.al, align 4, !tbaa !11
  %wide.load531.3 = load <4 x float>, ptr %i.am, align 4, !tbaa !11
  %i.an = fadd <4 x float> %wide.load.3888, %wide.load530.3 ; 2 uses
  %i.ao = fadd <4 x float> %wide.load529.3891, %wide.load531.3 ; 2 uses
  %i.ap = getelementptr i8, ptr %invariant.gep82.i, i64 128
  %i.aq = getelementptr i8, ptr %invariant.gep82.i, i64 144
  %wide.load530.4 = load <4 x float>, ptr %i.ap, align 4, !tbaa !11
  %wide.load531.4 = load <4 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = fadd <4 x float> %wide.load.4894, %wide.load530.4 ; 2 uses
  %i.as = fadd <4 x float> %wide.load529.4897, %wide.load531.4 ; 2 uses
  %i.at = getelementptr i8, ptr %invariant.gep82.i, i64 160
  %i.au = getelementptr i8, ptr %invariant.gep82.i, i64 176
  %wide.load530.5 = load <4 x float>, ptr %i.at, align 4, !tbaa !11
  %wide.load531.5 = load <4 x float>, ptr %i.au, align 4, !tbaa !11
  %i.av = fadd <4 x float> %wide.load.5900, %wide.load530.5 ; 2 uses
  %i.aw = fadd <4 x float> %wide.load529.5903, %wide.load531.5 ; 2 uses
  %i.ax = getelementptr i8, ptr %invariant.gep82.i, i64 192
  %i.ay = getelementptr i8, ptr %invariant.gep82.i, i64 208
  %wide.load530.6 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %wide.load531.6 = load <4 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.az = fadd <4 x float> %wide.load.6906, %wide.load530.6 ; 2 uses
  %i.ba = fadd <4 x float> %wide.load529.6909, %wide.load531.6 ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep82.i, i64 224
  %i.bc = getelementptr i8, ptr %invariant.gep82.i, i64 240
  %wide.load530.7 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load531.7 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fadd <4 x float> %wide.load.7912, %wide.load530.7 ; 2 uses
  %i.be = fadd <4 x float> %wide.load529.7915, %wide.load531.7 ; 2 uses
  %i.bf = getelementptr i8, ptr %invariant.gep82.i, i64 256
  %i.bg = getelementptr i8, ptr %invariant.gep82.i, i64 272
  %wide.load530.8 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %wide.load531.8 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11
  %i.bh = fadd <4 x float> %wide.load.8918, %wide.load530.8 ; 2 uses
  %i.bi = fadd <4 x float> %wide.load529.8921, %wide.load531.8 ; 2 uses
  %i.bj = getelementptr i8, ptr %invariant.gep82.i, i64 288
  %i.bk = getelementptr i8, ptr %invariant.gep82.i, i64 304
  %wide.load530.9 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11
  %wide.load531.9 = load <4 x float>, ptr %i.bk, align 4, !tbaa !11
  %i.bl = fadd <4 x float> %wide.load.9924, %wide.load530.9 ; 2 uses
  %i.bm = fadd <4 x float> %wide.load529.9927, %wide.load531.9 ; 2 uses
  %i.bn = getelementptr i8, ptr %invariant.gep82.i, i64 320
  %i.bo = getelementptr i8, ptr %invariant.gep82.i, i64 336
  %wide.load530.10 = load <4 x float>, ptr %i.bn, align 4, !tbaa !11
  %wide.load531.10 = load <4 x float>, ptr %i.bo, align 4, !tbaa !11
  %i.bp = fadd <4 x float> %wide.load.10930, %wide.load530.10 ; 2 uses
  %i.bq = fadd <4 x float> %wide.load529.10933, %wide.load531.10 ; 2 uses
  %i.br = getelementptr i8, ptr %invariant.gep82.i, i64 352
  %i.bs = getelementptr i8, ptr %invariant.gep82.i, i64 368
  %wide.load530.11 = load <4 x float>, ptr %i.br, align 4, !tbaa !11
  %wide.load531.11 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11
  %i.bt = fadd <4 x float> %wide.load.11936, %wide.load530.11 ; 2 uses
  %i.bu = fadd <4 x float> %wide.load529.11939, %wide.load531.11 ; 2 uses
  %gep83.i = getelementptr i8, ptr %invariant.gep82.i, i64 384
  %i.bv = load float, ptr %gep83.i, align 4, !tbaa !11
  %i.bw = fadd float %i.y, %i.bv                  ; 2 uses
  %gep83.i.1 = getelementptr i8, ptr %invariant.gep82.i, i64 388
  %i.bx = load float, ptr %gep83.i.1, align 4, !tbaa !11
  %i.by = fadd float %i.x, %i.bx                  ; 2 uses
  %gep83.i.2 = getelementptr i8, ptr %invariant.gep82.i, i64 392
  %i.bz = load float, ptr %gep83.i.2, align 4, !tbaa !11
  %i.ca = fadd float %i.w, %i.bz                  ; 2 uses
  %gep83.i.3 = getelementptr i8, ptr %invariant.gep82.i, i64 396
  %i.cb = load float, ptr %gep83.i.3, align 4, !tbaa !11
  %i.cc = fadd float %i.v, %i.cb                  ; 2 uses
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, 100
  br i1 %exitcond81.not.i, label %matgen.exit, label %.preheader.us.i, !llvm.loop !16

matgen.exit:                                      ; preds = %.preheader.us.i
  store <4 x float> %i.ab, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.ac, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.af, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.ag, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.ak, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.an, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.ao, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.ar, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.as, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.av, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.aw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.az, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.ba, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.bd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.be, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.bh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.bi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.bl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.bm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.bp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.bq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.bt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.bu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.bw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.by, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.ca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.cc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %i.cd = tail call i64 @clock() #12
  %i.ce = sitofp i64 %i.cd to float
  %i.cf = fdiv float %i.ce, 1.000000e+06
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %i.cg = tail call i64 @clock() #12
  %i.ch = sitofp i64 %i.cg to float
  %i.ci = fdiv float %i.ch, 1.000000e+06
  %i.cj = fsub float %i.ci, %i.cf
  store float %i.cj, ptr @atime, align 16, !tbaa !11
  %i.ck = tail call i64 @clock() #12
  br label %bb.c

bb.c:                                             ; preds = %daxpy.exit.i, %matgen.exit
  %indvars.iv146.i = phi i64 [ 0, %matgen.exit ], [ %indvars.iv.next147.i, %daxpy.exit.i ] ; 7 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.cn ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !11 ; 4 uses
  %i.cq = zext i32 %i.cm to i64
  %.not103.i = icmp eq i64 %indvars.iv146.i, %i.cq
  br i1 %.not103.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  store float %i.cs, ptr %i.co, align 4, !tbaa !11
  store float %i.cp, ptr %i.cr, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.ct = mul nuw nsw i64 %indvars.iv146.i, 808
  %i.cu = getelementptr i8, ptr @main.a, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i ; 2 uses
  %i.cx = fcmp oeq float %i.cp, 0.000000e+00
  br i1 %i.cx, label %daxpy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cy = sub nuw nsw i64 99, %indvars.iv146.i    ; 3 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv146.i, 91
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph533

vector.ph533:                                     ; preds = %bb.f
  %n.vec = and i64 %i.cy, 120                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph533
  %index535 = phi i64 [ 0, %vector.ph533 ], [ %index.next540, %vector.body534 ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index535 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load536 = load <4 x float>, ptr %i.cz, align 4, !tbaa !11
  %wide.load537 = load <4 x float>, ptr %i.da, align 4, !tbaa !11
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index535 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load538 = load <4 x float>, ptr %i.db, align 4, !tbaa !11
  %wide.load539 = load <4 x float>, ptr %i.dc, align 4, !tbaa !11
  %i.dd = fmul <4 x float> %broadcast.splat, %wide.load538
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load539
  %i.df = fadd <4 x float> %wide.load536, %i.dd
  %i.dg = fadd <4 x float> %wide.load537, %i.de
  store <4 x float> %i.df, ptr %i.cz, align 4, !tbaa !11
  store <4 x float> %i.dg, ptr %i.da, align 4, !tbaa !11
  %index.next540 = add nuw i64 %index535, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next540, %n.vec
  br i1 %i.dh, label %middle.block541, label %vector.body534, !llvm.loop !17

middle.block541:                                  ; preds = %vector.body534
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %middle.block541
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block541 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !11
  %i.dm = fmul float %i.cp, %i.dl
  %i.dn = fadd float %i.dj, %i.dm
  store float %i.dn, ptr %i.di, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.cy
  br i1 %exitcond.not.i.i, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !20

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i, %middle.block541, %bb.e
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, 99
  br i1 %exitcond150.not.i, label %.lr.ph136.i, label %bb.c, !llvm.loop !21

.lr.ph136.i:                                      ; preds = %daxpy.exit.i, %daxpy.exit110.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %daxpy.exit110.i ], [ 0, %daxpy.exit.i ] ; 4 uses
  %i.do = sub nsw i64 99, %indvars.iv151.i        ; 3 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.dp = sub nuw nsw i64 99, %indvars.iv151.i    ; 5 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.dp ; 2 uses
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !11
  %i.ds = getelementptr [4 x i8], ptr @main.a, i64 %i.dp
  %i.dt = mul nuw nsw i64 %i.dp, 804
  %i.du = getelementptr i8, ptr %i.ds, i64 %i.dt
  %i.dv = load float, ptr %i.du, align 4, !tbaa !11
  %i.dw = fdiv float %i.dr, %i.dv                 ; 4 uses
  store float %i.dw, ptr %i.dq, align 4, !tbaa !11
  %.idx = mul nuw nsw i64 %i.dp, 804
  %i.dx = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx ; 2 uses
  %i.dy = icmp samesign ugt i64 %indvars.iv151.i, 98
  %i.dz = fcmp oeq float %i.dw, 0.000000e+00
  %or.cond41.i104.i = or i1 %i.dy, %i.dz
  br i1 %or.cond41.i104.i, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader

.lr.ph.i106.i.preheader:                          ; preds = %.lr.ph136.i
  %min.iters.check543 = icmp ult i64 %i.do, 8
  br i1 %min.iters.check543, label %.lr.ph.i106.i.preheader829, label %vector.ph544

vector.ph544:                                     ; preds = %.lr.ph.i106.i.preheader
  %n.vec546 = and i64 %i.do, -8                   ; 3 uses
  %broadcast.splatinsert547 = insertelement <4 x float> poison, float %i.dw, i64 0
  %broadcast.splat548 = shufflevector <4 x float> %broadcast.splatinsert547, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body549

vector.body549:                                   ; preds = %vector.body549, %vector.ph544
  %index550 = phi i64 [ 0, %vector.ph544 ], [ %index.next555, %vector.body549 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index550 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load551 = load <4 x float>, ptr %i.ea, align 16, !tbaa !11
  %wide.load552 = load <4 x float>, ptr %i.eb, align 16, !tbaa !11
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index550 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load553 = load <4 x float>, ptr %i.ec, align 4, !tbaa !11
  %wide.load554 = load <4 x float>, ptr %i.ed, align 4, !tbaa !11
  %i.ee = fmul <4 x float> %broadcast.splat548, %wide.load553
  %i.ef = fmul <4 x float> %broadcast.splat548, %wide.load554
  %i.eg = fsub <4 x float> %wide.load551, %i.ee
  %i.eh = fsub <4 x float> %wide.load552, %i.ef
  store <4 x float> %i.eg, ptr %i.ea, align 16, !tbaa !11
  store <4 x float> %i.eh, ptr %i.eb, align 16, !tbaa !11
  %index.next555 = add nuw i64 %index550, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next555, %n.vec546
  br i1 %i.ei, label %middle.block556, label %vector.body549, !llvm.loop !22

middle.block556:                                  ; preds = %vector.body549
  %cmp.n557 = icmp eq i64 %i.do, %n.vec546
  br i1 %cmp.n557, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader829

.lr.ph.i106.i.preheader829:                       ; preds = %.lr.ph.i106.i.preheader, %middle.block556
  %indvars.iv.i107.i.ph = phi i64 [ 0, %.lr.ph.i106.i.preheader ], [ %n.vec546, %middle.block556 ]
  br label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %.lr.ph.i106.i.preheader829, %.lr.ph.i106.i
  %indvars.iv.i107.i = phi i64 [ %indvars.iv.next.i108.i, %.lr.ph.i106.i ], [ %indvars.iv.i107.i.ph, %.lr.ph.i106.i.preheader829 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !11
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.i107.i
  %i.em = load float, ptr %i.el, align 4, !tbaa !11
  %i.en = fmul float %i.dw, %i.em
  %i.eo = fsub float %i.ek, %i.en
  store float %i.eo, ptr %i.ej, align 4, !tbaa !11
  %indvars.iv.next.i108.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %indvars.iv.next.i108.i, %i.dp
  br i1 %exitcond.not.i109.i, label %daxpy.exit110.i, label %.lr.ph.i106.i, !llvm.loop !23

daxpy.exit110.i:                                  ; preds = %.lr.ph.i106.i, %middle.block556, %.lr.ph136.i
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, 100
  br i1 %exitcond155.not.i, label %dgesl.exit, label %.lr.ph136.i, !llvm.loop !24

dgesl.exit:                                       ; preds = %daxpy.exit110.i
  %i.ep = sitofp i64 %i.ck to float
  %i.eq = fdiv float %i.ep, 1.000000e+06
  %i.er = tail call i64 @clock() #12
  %i.es = sitofp i64 %i.er to float
  %i.et = fdiv float %i.es, 1.000000e+06
  %i.eu = fsub float %i.et, %i.eq                 ; 2 uses
  store float %i.eu, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), align 4, !tbaa !11
  %i.ev = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  br label %.preheader52.us.i88

.preheader52.us.i88:                              ; preds = %dgesl.exit, %._crit_edge.us.i98
  %.2 = phi float [ %..us.i95.1, %._crit_edge.us.i98 ], [ 0.000000e+00, %dgesl.exit ]
  %indvars.iv64.i89 = phi i64 [ %indvars.iv.next65.i99, %._crit_edge.us.i98 ], [ 0, %dgesl.exit ] ; 2 uses
  %.04455.us.i90 = phi i32 [ %i.fd, %._crit_edge.us.i98 ], [ 1325, %dgesl.exit ]
  %invariant.gep.i91.idx = mul nuw nsw i64 %indvars.iv64.i89, 804
  %invariant.gep.i91 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i91.idx ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader52.us.i88
  %.3 = phi float [ %.2, %.preheader52.us.i88 ], [ %..us.i95.1, %bb.g ] ; 2 uses
  %indvars.iv.i92 = phi i64 [ 0, %.preheader52.us.i88 ], [ %indvars.iv.next.i96.1, %bb.g ] ; 3 uses
  %.14553.us.i93 = phi i32 [ %.04455.us.i90, %.preheader52.us.i88 ], [ %i.fd, %bb.g ] ; 2 uses
  %i.ew = mul nuw nsw i32 %.14553.us.i93, 3125
  %i.ex = and i32 %i.ew, 65535
  %i.ey = add nsw i32 %i.ex, -32768
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x38800000      ; 3 uses
  %gep.i94 = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  store float %i.fa, ptr %gep.i94, align 4, !tbaa !11
  %i.fb = fcmp ogt float %i.fa, %.3
  %..us.i95 = select i1 %i.fb, float %i.fa, float %.3 ; 2 uses
  %i.fc = mul nsw i32 %.14553.us.i93, 761
  %i.fd = and i32 %i.fc, 65535                    ; 3 uses
  %i.fe = add nsw i32 %i.fd, -32768
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fmul nnan float %i.ff, f0x38800000      ; 3 uses
  %i.fh = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  %gep.i94.1 = getelementptr i8, ptr %i.fh, i64 4
  store float %i.fg, ptr %gep.i94.1, align 4, !tbaa !11
  %i.fi = fcmp ogt float %i.fg, %..us.i95
  %..us.i95.1 = select i1 %i.fi, float %i.fg, float %..us.i95 ; 3 uses
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %indvars.iv.next.i96.1, 100
  br i1 %exitcond.not.i97.1, label %._crit_edge.us.i98, label %bb.g, !llvm.loop !13

._crit_edge.us.i98:                               ; preds = %bb.g
  %indvars.iv.next65.i99 = add nuw nsw i64 %indvars.iv64.i89, 1 ; 2 uses
  %exitcond68.not.i100 = icmp eq i64 %indvars.iv.next65.i99, 100
  br i1 %exitcond68.not.i100, label %.preheader51.i101, label %.preheader52.us.i88, !llvm.loop !15

.preheader51.i101:                                ; preds = %._crit_edge.us.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted949 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted952 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted954 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted957 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted960 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted963 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted966 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted969 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted972 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted975 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted978 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted981 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted984 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted987 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted990 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted993 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted996 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted999 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1002 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1005 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1008 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1011 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1014 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1017 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1020 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1022 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1024 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1026 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i102

.preheader.us.i102:                               ; preds = %.preheader.us.i102, %.preheader51.i101
  %i.fj = phi float [ %.promoted1026, %.preheader51.i101 ], [ %i.hq, %.preheader.us.i102 ]
  %i.fk = phi float [ %.promoted1024, %.preheader51.i101 ], [ %i.ho, %.preheader.us.i102 ]
  %i.fl = phi float [ %.promoted1022, %.preheader51.i101 ], [ %i.hm, %.preheader.us.i102 ]
  %i.fm = phi float [ %.promoted1020, %.preheader51.i101 ], [ %i.hk, %.preheader.us.i102 ]
  %wide.load564.111018 = phi <4 x float> [ %.promoted1017, %.preheader51.i101 ], [ %i.hi, %.preheader.us.i102 ]
  %wide.load563.111015 = phi <4 x float> [ %.promoted1014, %.preheader51.i101 ], [ %i.hh, %.preheader.us.i102 ]
  %wide.load564.101012 = phi <4 x float> [ %.promoted1011, %.preheader51.i101 ], [ %i.he, %.preheader.us.i102 ]
  %wide.load563.101009 = phi <4 x float> [ %.promoted1008, %.preheader51.i101 ], [ %i.hd, %.preheader.us.i102 ]
  %wide.load564.91006 = phi <4 x float> [ %.promoted1005, %.preheader51.i101 ], [ %i.ha, %.preheader.us.i102 ]
  %wide.load563.91003 = phi <4 x float> [ %.promoted1002, %.preheader51.i101 ], [ %i.gz, %.preheader.us.i102 ]
  %wide.load564.81000 = phi <4 x float> [ %.promoted999, %.preheader51.i101 ], [ %i.gw, %.preheader.us.i102 ]
  %wide.load563.8997 = phi <4 x float> [ %.promoted996, %.preheader51.i101 ], [ %i.gv, %.preheader.us.i102 ]
  %wide.load564.7994 = phi <4 x float> [ %.promoted993, %.preheader51.i101 ], [ %i.gs, %.preheader.us.i102 ]
  %wide.load563.7991 = phi <4 x float> [ %.promoted990, %.preheader51.i101 ], [ %i.gr, %.preheader.us.i102 ]
  %wide.load564.6988 = phi <4 x float> [ %.promoted987, %.preheader51.i101 ], [ %i.go, %.preheader.us.i102 ]
  %wide.load563.6985 = phi <4 x float> [ %.promoted984, %.preheader51.i101 ], [ %i.gn, %.preheader.us.i102 ]
  %wide.load564.5982 = phi <4 x float> [ %.promoted981, %.preheader51.i101 ], [ %i.gk, %.preheader.us.i102 ]
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.um = sitofp i32 %i.ul to float
  %i.un = fmul nnan float %i.um, f0x38800000
  %i.uo = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.uo, i64 4
  store float %i.un, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.us.i148, label %bb.o, !llvm.loop !13

._crit_edge.us.i148:                              ; preds = %bb.o
  %indvars.iv.next65.i149 = add nuw nsw i64 %indvars.iv64.i139, 1 ; 2 uses
  %exitcond68.not.i150 = icmp eq i64 %indvars.iv.next65.i149, 100
  br i1 %exitcond68.not.i150, label %.preheader51.i151, label %.preheader52.us.i138, !llvm.loop !15

.preheader51.i151:                                ; preds = %._crit_edge.us.i148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1265 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1268 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1270 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1273 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1276 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1279 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1282 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1285 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1288 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1291 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1294 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1297 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1300 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1303 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1306 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1309 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1312 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1315 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1318 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1321 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1324 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1327 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1330 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1333 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1336 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1338 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1340 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1342 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i152

.preheader.us.i152:                               ; preds = %.preheader.us.i152, %.preheader51.i151
  %i.up = phi float [ %.promoted1342, %.preheader51.i151 ], [ %i.ww, %.preheader.us.i152 ]
  %i.uq = phi float [ %.promoted1340, %.preheader51.i151 ], [ %i.wu, %.preheader.us.i152 ]
  %i.ur = phi float [ %.promoted1338, %.preheader51.i151 ], [ %i.ws, %.preheader.us.i152 ]
  %i.us = phi float [ %.promoted1336, %.preheader51.i151 ], [ %i.wq, %.preheader.us.i152 ]
  %wide.load644.111334 = phi <4 x float> [ %.promoted1333, %.preheader51.i151 ], [ %i.wo, %.preheader.us.i152 ]
  %wide.load643.111331 = phi <4 x float> [ %.promoted1330, %.preheader51.i151 ], [ %i.wn, %.preheader.us.i152 ]
  %wide.load644.101328 = phi <4 x float> [ %.promoted1327, %.preheader51.i151 ], [ %i.wk, %.preheader.us.i152 ]
  %wide.load643.101325 = phi <4 x float> [ %.promoted1324, %.preheader51.i151 ], [ %i.wj, %.preheader.us.i152 ]
  %wide.load644.91322 = phi <4 x float> [ %.promoted1321, %.preheader51.i151 ], [ %i.wg, %.preheader.us.i152 ]
  %wide.load643.91319 = phi <4 x float> [ %.promoted1318, %.preheader51.i151 ], [ %i.wf, %.preheader.us.i152 ]
  %wide.load644.81316 = phi <4 x float> [ %.promoted1315, %.preheader51.i151 ], [ %i.wc, %.preheader.us.i152 ]
  %wide.load643.81313 = phi <4 x float> [ %.promoted1312, %.preheader51.i151 ], [ %i.wb, %.preheader.us.i152 ]
  %wide.load644.71310 = phi <4 x float> [ %.promoted1309, %.preheader51.i151 ], [ %i.vy, %.preheader.us.i152 ]
  %wide.load643.71307 = phi <4 x float> [ %.promoted1306, %.preheader51.i151 ], [ %i.vx, %.preheader.us.i152 ]
  %wide.load644.61304 = phi <4 x float> [ %.promoted1303, %.preheader51.i151 ], [ %i.vu, %.preheader.us.i152 ]
  %wide.load643.61301 = phi <4 x float> [ %.promoted1300, %.preheader51.i151 ], [ %i.vt, %.preheader.us.i152 ]
  %wide.load644.51298 = phi <4 x float> [ %.promoted1297, %.preheader51.i151 ], [ %i.vq, %.preheader.us.i152 ]
  %wide.load643.51295 = phi <4 x float> [ %.promoted1294, %.preheader51.i151 ], [ %i.vp, %.preheader.us.i152 ]
  %wide.load644.41292 = phi <4 x float> [ %.promoted1291, %.preheader51.i151 ], [ %i.vm, %.preheader.us.i152 ]
  %wide.load643.41289 = phi <4 x float> [ %.promoted1288, %.preheader51.i151 ], [ %i.vl, %.preheader.us.i152 ]
  %wide.load644.31286 = phi <4 x float> [ %.promoted1285, %.preheader51.i151 ], [ %i.vi, %.preheader.us.i152 ]
  %wide.load643.31283 = phi <4 x float> [ %.promoted1282, %.preheader51.i151 ], [ %i.vh, %.preheader.us.i152 ]
  %wide.load644.21280 = phi <4 x float> [ %.promoted1279, %.preheader51.i151 ], [ %i.ve, %.preheader.us.i152 ]
  %wide.load643.21277 = phi <4 x float> [ %.promoted1276, %.preheader51.i151 ], [ %i.vd, %.preheader.us.i152 ]
  %wide.load644.11274 = phi <4 x float> [ %.promoted1273, %.preheader51.i151 ], [ %i.va, %.preheader.us.i152 ]
  %wide.load643.11271 = phi <4 x float> [ %.promoted1270, %.preheader51.i151 ], [ %i.uz, %.preheader.us.i152 ]
  %i.ut = phi <4 x float> [ %.promoted1268, %.preheader51.i151 ], [ %i.uw, %.preheader.us.i152 ]
  %wide.load6431266 = phi <4 x float> [ %main.b.promoted1265, %.preheader51.i151 ], [ %i.uv, %.preheader.us.i152 ]
  %indvars.iv77.i153 = phi i64 [ 0, %.preheader51.i151 ], [ %indvars.iv.next78.i160, %.preheader.us.i152 ] ; 2 uses
  %invariant.gep82.i154.idx = mul nuw nsw i64 %indvars.iv77.i153, 804
  %invariant.gep82.i154 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i154.idx ; 28 uses
  %i.uu = getelementptr i8, ptr %invariant.gep82.i154, i64 16
  %wide.load645 = load <4 x float>, ptr %invariant.gep82.i154, align 4, !tbaa !11
  %wide.load646 = load <4 x float>, ptr %i.uu, align 4, !tbaa !11
  %i.uv = fadd <4 x float> %wide.load6431266, %wide.load645 ; 2 uses
  %i.uw = fadd <4 x float> %i.ut, %wide.load646   ; 2 uses
  %i.ux = getelementptr i8, ptr %invariant.gep82.i154, i64 32
  %i.uy = getelementptr i8, ptr %invariant.gep82.i154, i64 48
  %wide.load645.1 = load <4 x float>, ptr %i.ux, align 4, !tbaa !11
  %wide.load646.1 = load <4 x float>, ptr %i.uy, align 4, !tbaa !11
  %i.uz = fadd <4 x float> %wide.load643.11271, %wide.load645.1 ; 2 uses
  %i.va = fadd <4 x float> %wide.load644.11274, %wide.load646.1 ; 2 uses
  %i.vb = getelementptr i8, ptr %invariant.gep82.i154, i64 64
  %i.vc = getelementptr i8, ptr %invariant.gep82.i154, i64 80
  %wide.load645.2 = load <4 x float>, ptr %i.vb, align 4, !tbaa !11
  %wide.load646.2 = load <4 x float>, ptr %i.vc, align 4, !tbaa !11
  %i.vd = fadd <4 x float> %wide.load643.21277, %wide.load645.2 ; 2 uses
  %i.ve = fadd <4 x float> %wide.load644.21280, %wide.load646.2 ; 2 uses
  %i.vf = getelementptr i8, ptr %invariant.gep82.i154, i64 96
  %i.vg = getelementptr i8, ptr %invariant.gep82.i154, i64 112
  %wide.load645.3 = load <4 x float>, ptr %i.vf, align 4, !tbaa !11
  %wide.load646.3 = load <4 x float>, ptr %i.vg, align 4, !tbaa !11
  %i.vh = fadd <4 x float> %wide.load643.31283, %wide.load645.3 ; 2 uses
  %i.vi = fadd <4 x float> %wide.load644.31286, %wide.load646.3 ; 2 uses
  %i.vj = getelementptr i8, ptr %invariant.gep82.i154, i64 128
  %i.vk = getelementptr i8, ptr %invariant.gep82.i154, i64 144
  %wide.load645.4 = load <4 x float>, ptr %i.vj, align 4, !tbaa !11
  %wide.load646.4 = load <4 x float>, ptr %i.vk, align 4, !tbaa !11
  %i.vl = fadd <4 x float> %wide.load643.41289, %wide.load645.4 ; 2 uses
  %i.vm = fadd <4 x float> %wide.load644.41292, %wide.load646.4 ; 2 uses
  %i.vn = getelementptr i8, ptr %invariant.gep82.i154, i64 160
  %i.vo = getelementptr i8, ptr %invariant.gep82.i154, i64 176
  %wide.load645.5 = load <4 x float>, ptr %i.vn, align 4, !tbaa !11
  %wide.load646.5 = load <4 x float>, ptr %i.vo, align 4, !tbaa !11
  %i.vp = fadd <4 x float> %wide.load643.51295, %wide.load645.5 ; 2 uses
  %i.vq = fadd <4 x float> %wide.load644.51298, %wide.load646.5 ; 2 uses
  %i.vr = getelementptr i8, ptr %invariant.gep82.i154, i64 192
  %i.vs = getelementptr i8, ptr %invariant.gep82.i154, i64 208
  %wide.load645.6 = load <4 x float>, ptr %i.vr, align 4, !tbaa !11
  %wide.load646.6 = load <4 x float>, ptr %i.vs, align 4, !tbaa !11
  %i.vt = fadd <4 x float> %wide.load643.61301, %wide.load645.6 ; 2 uses
  %i.vu = fadd <4 x float> %wide.load644.61304, %wide.load646.6 ; 2 uses
  %i.vv = getelementptr i8, ptr %invariant.gep82.i154, i64 224
  %i.vw = getelementptr i8, ptr %invariant.gep82.i154, i64 240
  %wide.load645.7 = load <4 x float>, ptr %i.vv, align 4, !tbaa !11
  %wide.load646.7 = load <4 x float>, ptr %i.vw, align 4, !tbaa !11
  %i.vx = fadd <4 x float> %wide.load643.71307, %wide.load645.7 ; 2 uses
  %i.vy = fadd <4 x float> %wide.load644.71310, %wide.load646.7 ; 2 uses
  %i.vz = getelementptr i8, ptr %invariant.gep82.i154, i64 256
  %i.wa = getelementptr i8, ptr %invariant.gep82.i154, i64 272
  %wide.load645.8 = load <4 x float>, ptr %i.vz, align 4, !tbaa !11
  %wide.load646.8 = load <4 x float>, ptr %i.wa, align 4, !tbaa !11
  %i.wb = fadd <4 x float> %wide.load643.81313, %wide.load645.8 ; 2 uses
  %i.wc = fadd <4 x float> %wide.load644.81316, %wide.load646.8 ; 2 uses
  %i.wd = getelementptr i8, ptr %invariant.gep82.i154, i64 288
  %i.we = getelementptr i8, ptr %invariant.gep82.i154, i64 304
  %wide.load645.9 = load <4 x float>, ptr %i.wd, align 4, !tbaa !11
  %wide.load646.9 = load <4 x float>, ptr %i.we, align 4, !tbaa !11
  %i.wf = fadd <4 x float> %wide.load643.91319, %wide.load645.9 ; 2 uses
  %i.wg = fadd <4 x float> %wide.load644.91322, %wide.load646.9 ; 2 uses
  %i.wh = getelementptr i8, ptr %invariant.gep82.i154, i64 320
  %i.wi = getelementptr i8, ptr %invariant.gep82.i154, i64 336
  %wide.load645.10 = load <4 x float>, ptr %i.wh, align 4, !tbaa !11
  %wide.load646.10 = load <4 x float>, ptr %i.wi, align 4, !tbaa !11
  %i.wj = fadd <4 x float> %wide.load643.101325, %wide.load645.10 ; 2 uses
  %i.wk = fadd <4 x float> %wide.load644.101328, %wide.load646.10 ; 2 uses
  %i.wl = getelementptr i8, ptr %invariant.gep82.i154, i64 352
  %i.wm = getelementptr i8, ptr %invariant.gep82.i154, i64 368
  %wide.load645.11 = load <4 x float>, ptr %i.wl, align 4, !tbaa !11
  %wide.load646.11 = load <4 x float>, ptr %i.wm, align 4, !tbaa !11
  %i.wn = fadd <4 x float> %wide.load643.111331, %wide.load645.11 ; 2 uses
  %i.wo = fadd <4 x float> %wide.load644.111334, %wide.load646.11 ; 2 uses
  %gep83.i156 = getelementptr i8, ptr %invariant.gep82.i154, i64 384
  %i.wp = load float, ptr %gep83.i156, align 4, !tbaa !11
  %i.wq = fadd float %i.us, %i.wp                 ; 2 uses
  %gep83.i156.1 = getelementptr i8, ptr %invariant.gep82.i154, i64 388
  %i.wr = load float, ptr %gep83.i156.1, align 4, !tbaa !11
  %i.ws = fadd float %i.ur, %i.wr                 ; 2 uses
  %gep83.i156.2 = getelementptr i8, ptr %invariant.gep82.i154, i64 392
  %i.wt = load float, ptr %gep83.i156.2, align 4, !tbaa !11
  %i.wu = fadd float %i.uq, %i.wt                 ; 2 uses
  %gep83.i156.3 = getelementptr i8, ptr %invariant.gep82.i154, i64 396
  %i.wv = load float, ptr %gep83.i156.3, align 4, !tbaa !11
  %i.ww = fadd float %i.up, %i.wv                 ; 2 uses
  %indvars.iv.next78.i160 = add nuw nsw i64 %indvars.iv77.i153, 1 ; 2 uses
  %exitcond81.not.i161 = icmp eq i64 %indvars.iv.next78.i160, 100
  br i1 %exitcond81.not.i161, label %.lr.ph103.i.preheader.preheader, label %.preheader.us.i152, !llvm.loop !16

.lr.ph103.i.preheader.preheader:                  ; preds = %.preheader.us.i152
  store <4 x float> %i.uv, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.uw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.va, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.vd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.ve, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.vh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.vi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.vm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.vp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.vq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.vu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.vx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.vy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.wb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.wc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.wf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.wg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.wj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.wk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.wn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.wo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.wq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.ws, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.wu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.ww, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.lr.ph103.i.preheader.preheader, %.loopexit.i
  %i.wx = phi i32 [ %i.zk, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ] ; 12 uses
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %.loopexit.i ], [ 1, %.lr.ph103.i.preheader.preheader ] ; 2 uses
  %i.wy = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %i.wz = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %indvars109.i = trunc i64 %indvars.iv107.i to i32 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.xa = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i
  %i.xb = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xc = getelementptr i8, ptr %i.xa, i64 %i.xb  ; 7 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !11
  %i.xe = tail call float @llvm.fabs.f32(float %i.xd) ; 2 uses
  %xtraiter = and i64 %i.wy, 1
  %i.xf = icmp eq i64 %indvars.iv107.i, 98
  br i1 %i.xf, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph103.i.preheader.new

.lr.ph103.i.preheader.new:                        ; preds = %.lr.ph103.i.preheader
  %unroll_iter = and i64 %i.wy, -2
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph103.i.preheader.new
  %indvars.iv52.i.i = phi i64 [ 1, %.lr.ph103.i.preheader.new ], [ %indvars.iv.next53.i.i.1, %.lr.ph48.i.i ] ; 4 uses
  %.247.i.i = phi i32 [ 0, %.lr.ph103.i.preheader.new ], [ %.3.i.i.1, %.lr.ph48.i.i ]
  %.23345.i.i = phi float [ %i.xe, %.lr.ph103.i.preheader.new ], [ %.334.i.i.1, %.lr.ph48.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.i.preheader.new ], [ %niter.next.1, %.lr.ph48.i.i ]
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv52.i.i
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !11
  %i.xi = tail call float @llvm.fabs.f32(float %i.xh) ; 2 uses
  %i.xj = fcmp ogt float %i.xi, %.23345.i.i       ; 2 uses
  %.334.i.i = select i1 %i.xj, float %i.xi, float %.23345.i.i ; 2 uses
  %i.xk = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %.3.i.i = select i1 %i.xj, i32 %i.xk, i32 %.247.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv.next53.i.i
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !11
  %i.xn = tail call float @llvm.fabs.f32(float %i.xm) ; 2 uses
  %i.xo = fcmp ogt float %i.xn, %.334.i.i         ; 2 uses
  %.334.i.i.1 = select i1 %i.xo, float %i.xn, float %.334.i.i ; 2 uses
  %i.xp = trunc nuw nsw i64 %indvars.iv.next53.i.i to i32
  %.3.i.i.1 = select i1 %i.xo, i32 %i.xp, i32 %.3.i.i ; 3 uses
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !27

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph48.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph103.i.preheader
  %indvars.iv52.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i.preheader ], [ %indvars.iv.next53.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.247.i.i.epil.init = phi i32 [ 0, %.lr.ph103.i.preheader ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23345.i.i.epil.init = phi float [ %i.xe, %.lr.ph103.i.preheader ], [ %.334.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod845 = trunc i64 %i.wy to i1
  tail call void @llvm.assume(i1 %lcmp.mod845)
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv52.i.i.epil.init
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !11
  %i.xs = tail call float @llvm.fabs.f32(float %i.xr)
  %i.xt = fcmp ogt float %i.xs, %.23345.i.i.epil.init
  %i.xu = trunc nuw nsw i64 %indvars.iv52.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.xt, i32 %i.xu, i32 %.247.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph48.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph48.i.i.epil.preheader ] ; 2 uses
  %i.xv = add nsw i32 %.3.i.i.lcssa, %indvars109.i ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i
  store i32 %i.xv, ptr %i.xw, align 4, !tbaa !4
  %i.xx = sext i32 %i.xv to i64                   ; 2 uses
  %.idx393 = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xy = getelementptr i8, ptr @main.a, i64 %.idx393
  %i.xz = getelementptr [4 x i8], ptr %i.xy, i64 %i.xx ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !11 ; 3 uses
  %i.yb = fcmp une float %i.ya, 0.000000e+00
  br i1 %i.yb, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  %.pre.i = load float, ptr %i.xc, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %.pre.i, ptr %i.xz, align 4, !tbaa !11
  store float %i.ya, ptr %i.xc, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.yc = phi float [ %i.ya, %bb.q ], [ %.pre.i, %bb.p ]
  %i.yd = fdiv float -1.000000e+00, %i.yc         ; 2 uses
  %i.ye = sub nuw nsw i64 99, %indvars.iv107.i    ; 4 uses
  %i.yf = getelementptr i8, ptr %i.xc, i64 4      ; 4 uses
  %min.iters.check625 = icmp samesign ugt i64 %indvars.iv107.i, 91
  br i1 %min.iters.check625, label %.lr.ph25.i.i.preheader, label %vector.ph626

vector.ph626:                                     ; preds = %bb.r
  %n.vec628 = and i64 %i.ye, 120                  ; 3 uses
  %broadcast.splatinsert629 = insertelement <4 x float> poison, float %i.yd, i64 0
  %broadcast.splat630 = shufflevector <4 x float> %broadcast.splatinsert629, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph626
  %index632 = phi i64 [ 0, %vector.ph626 ], [ %index.next635, %vector.body631 ] ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index632 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 2 uses
  %wide.load633 = load <4 x float>, ptr %i.yg, align 4, !tbaa !11
  %wide.load634 = load <4 x float>, ptr %i.yh, align 4, !tbaa !11
  %i.yi = fmul <4 x float> %broadcast.splat630, %wide.load633
  %i.yj = fmul <4 x float> %broadcast.splat630, %wide.load634
  store <4 x float> %i.yi, ptr %i.yg, align 4, !tbaa !11
  store <4 x float> %i.yj, ptr %i.yh, align 4, !tbaa !11
  %index.next635 = add nuw i64 %index632, 8       ; 2 uses
  %i.yk = icmp eq i64 %index.next635, %n.vec628
  br i1 %i.yk, label %middle.block636, label %vector.body631, !llvm.loop !28

middle.block636:                                  ; preds = %vector.body631
  %cmp.n637 = icmp eq i64 %i.ye, %n.vec628
  br i1 %cmp.n637, label %.lr.ph.i, label %.lr.ph25.i.i.preheader

.lr.ph25.i.i.preheader:                           ; preds = %bb.r, %middle.block636
  %indvars.iv28.i.i.ph = phi i64 [ 0, %bb.r ], [ %n.vec628, %middle.block636 ]
  br label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.lr.ph25.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.lr.ph25.i.i ], [ %indvars.iv28.i.i.ph, %.lr.ph25.i.i.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv28.i.i ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !11
  %i.yn = fmul float %i.yd, %i.ym
  store float %i.yn, ptr %i.yl, align 4, !tbaa !11
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next29.i.i, %i.ye
  br i1 %exitcond.not.i.i165, label %.lr.ph.i, label %.lr.ph25.i.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %.lr.ph25.i.i, %middle.block636
  %invariant.gep.i166 = getelementptr [4 x i8], ptr @main.a, i64 %i.xx
  %min.iters.check608 = icmp ult i64 %i.wz, 8
  %n.vec611 = and i64 %i.wz, -8                   ; 3 uses
  %cmp.n622 = icmp eq i64 %i.wz, %n.vec611
  br label %bb.s

bb.s:                                             ; preds = %daxpy.exit.i171, %.lr.ph.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.i163, %.lr.ph.i ], [ %indvars.iv.next105.i, %daxpy.exit.i171 ] ; 2 uses
  %i.yo = mul nuw nsw i64 %indvars.iv104.i, 201   ; 2 uses
  %gep.i167 = getelementptr [4 x i8], ptr %invariant.gep.i166, i64 %i.yo ; 2 uses
  %i.yp = load float, ptr %gep.i167, align 4, !tbaa !11 ; 4 uses
  %.pre112.i = add nuw nsw i64 %i.yo, %indvars.iv107.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !11
  store float %i.yr, ptr %gep.i167, align 4, !tbaa !11
  store float %i.yp, ptr %i.yq, align 4, !tbaa !11
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %i.ys = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i
  %i.yt = getelementptr i8, ptr %i.ys, i64 4      ; 2 uses
  %i.yu = fcmp oeq float %i.yp, 0.000000e+00
  br i1 %i.yu, label %daxpy.exit.i171, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %._crit_edge.i
  br i1 %min.iters.check608, label %.lr.ph.i.i168.preheader821, label %vector.ph609

vector.ph609:                                     ; preds = %.lr.ph.i.i168.preheader
  %broadcast.splatinsert612 = insertelement <4 x float> poison, float %i.yp, i64 0
  %broadcast.splat613 = shufflevector <4 x float> %broadcast.splatinsert612, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body614

vector.body614:                                   ; preds = %vector.body614, %vector.ph609
  %index615 = phi i64 [ 0, %vector.ph609 ], [ %index.next620, %vector.body614 ] ; 3 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %index615 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 2 uses
  %wide.load616 = load <4 x float>, ptr %i.yv, align 4, !tbaa !11
  %wide.load617 = load <4 x float>, ptr %i.yw, align 4, !tbaa !11
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index615 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %wide.load618 = load <4 x float>, ptr %i.yx, align 4, !tbaa !11
  %wide.load619 = load <4 x float>, ptr %i.yy, align 4, !tbaa !11
  %i.yz = fmul <4 x float> %broadcast.splat613, %wide.load618
  %i.za = fmul <4 x float> %broadcast.splat613, %wide.load619
  %i.zb = fadd <4 x float> %wide.load616, %i.yz
  %i.zc = fadd <4 x float> %wide.load617, %i.za
  store <4 x float> %i.zb, ptr %i.yv, align 4, !tbaa !11
  store <4 x float> %i.zc, ptr %i.yw, align 4, !tbaa !11
  %index.next620 = add nuw i64 %index615, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next620, %n.vec611
  br i1 %i.zd, label %middle.block621, label %vector.body614, !llvm.loop !30

middle.block621:                                  ; preds = %vector.body614
  br i1 %cmp.n622, label %daxpy.exit.i171, label %.lr.ph.i.i168.preheader821

.lr.ph.i.i168.preheader821:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block621
  %indvars.iv.i.i169.ph = phi i64 [ 0, %.lr.ph.i.i168.preheader ], [ %n.vec611, %middle.block621 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader821, %.lr.ph.i.i168
  %indvars.iv.i.i169 = phi i64 [ %indvars.iv.next.i.i170, %.lr.ph.i.i168 ], [ %indvars.iv.i.i169.ph, %.lr.ph.i.i168.preheader821 ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i.i169 ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !11
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv.i.i169
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !11
  %i.zi = fmul float %i.yp, %i.zh
  %i.zj = fadd float %i.zf, %i.zi
  store float %i.zj, ptr %i.ze, align 4, !tbaa !11
  %indvars.iv.next.i.i170 = add nuw nsw i64 %indvars.iv.i.i169, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i.i170, %i.ye
  br i1 %exitcond.not.i99.i, label %daxpy.exit.i171, label %.lr.ph.i.i168, !llvm.loop !31

daxpy.exit.i171:                                  ; preds = %.lr.ph.i.i168, %middle.block621, %._crit_edge.i
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next105.i, 100
  br i1 %exitcond.not.i172, label %.loopexit.i, label %bb.s, !llvm.loop !32

.loopexit.i:                                      ; preds = %daxpy.exit.i171, %idamax.exit.i
  %i.zk = phi i32 [ %indvars109.i, %idamax.exit.i ], [ %i.wx, %daxpy.exit.i171 ] ; 2 uses
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, 99
  br i1 %exitcond111.not.i, label %.loopexit100.i, label %.lr.ph103.i.preheader, !llvm.loop !33

.loopexit100.i:                                   ; preds = %.loopexit.i
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.zl = add nuw nsw i32 %storemerge79414, 1     ; 2 uses
  %exitcond467.not = icmp eq i32 %i.zl, %i.uc
  br i1 %exitcond467.not, label %._crit_edge415, label %.preheader52.us.i138.preheader, !llvm.loop !34

._crit_edge415:                                   ; preds = %.loopexit100.i
  %i.zm = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.zn = fcmp oeq float %i.zm, 0.000000e+00
  %i.zo = select i1 %i.zn, i32 99, i32 %i.zk
  store i32 %i.zo, ptr @main.info, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge415, %bb.n
  %i.zp = tail call i64 @clock() #12              ; 0 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.zr = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zq, ptr noundef nonnull @.str.15, i32 noundef %i.zr, double noundef 0.000000e+00) #14 ; 0 uses
  %exitcond468.not = icmp eq i32 %.162, -1
  br i1 %exitcond468.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zt = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zu = shl nsw i32 %i.zt, 1
  br label %bb.n, !llvm.loop !35

.critedge:                                        ; preds = %bb.u
  %i.zv = sitofp i64 %i.qy to float
  %i.zw = fdiv nnan float %i.zv, 1.000000e+06
  %i.zx = sitofp i64 %i.tt to float
  %i.zy = fdiv nnan float %i.zx, 1.000000e+06
  %i.zz = fsub float %i.zy, %i.zw
  %i.aaa = fdiv float %i.zz, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %i.aab = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aab, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.aad = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aad, ptr noundef nonnull @.str.19, i32 noundef 201) #14 ; 0 uses
  %i.aaf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aag = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.aaf) #13 ; 0 uses
  %i.aah = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aai = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.aah) #13 ; 0 uses
  %i.aaj = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aak = sitofp i32 %i.aaj to float
  %i.aal = fmul float %i.aaa, %i.aak
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %._crit_edge425
  %i.aam = tail call i64 @clock() #12
  %i.aan = sitofp i64 %i.aam to float
  %i.aao = fdiv float %i.aan, 1.000000e+06
  %i.aap = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.preheader52.us.i173.preheader, label %bb.ad

.preheader52.us.i173.preheader:                   ; preds = %bb.w, %.loopexit100.i216
  %storemerge85419 = phi i32 [ %i.afy, %.loopexit100.i216 ], [ 0, %bb.w ]
  br label %.preheader52.us.i173

.preheader52.us.i173:                             ; preds = %.preheader52.us.i173.preheader, %._crit_edge.us.i183
  %indvars.iv64.i174 = phi i64 [ %indvars.iv.next65.i184, %._crit_edge.us.i183 ], [ 0, %.preheader52.us.i173.preheader ] ; 2 uses
  %.04455.us.i175 = phi i32 [ %i.aax, %._crit_edge.us.i183 ], [ 1325, %.preheader52.us.i173.preheader ]
  %invariant.gep.i176.idx = mul nuw nsw i64 %indvars.iv64.i174, 804
  %invariant.gep.i176 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i176.idx ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.preheader52.us.i173
  %indvars.iv.i177 = phi i64 [ 0, %.preheader52.us.i173 ], [ %indvars.iv.next.i181.1, %bb.x ] ; 3 uses
  %.14553.us.i178 = phi i32 [ %.04455.us.i175, %.preheader52.us.i173 ], [ %i.aax, %bb.x ] ; 2 uses
  %i.aar = mul nuw nsw i32 %.14553.us.i178, 3125
  %i.aas = and i32 %i.aar, 65535
  %i.aat = add nsw i32 %i.aas, -32768
  %i.aau = sitofp i32 %i.aat to float
  %i.aav = fmul nnan float %i.aau, f0x38800000
  %gep.i179 = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  store float %i.aav, ptr %gep.i179, align 4, !tbaa !11
  %i.aaw = mul nsw i32 %.14553.us.i178, 761
  %i.aax = and i32 %i.aaw, 65535                  ; 3 uses
  %i.aay = add nsw i32 %i.aax, -32768
  %i.aaz = sitofp i32 %i.aay to float
  %i.aba = fmul nnan float %i.aaz, f0x38800000
  %i.abb = getelementptr [4 x i8], ptr %invariant.gep.i176, i64 %indvars.iv.i177
  %gep.i179.1 = getelementptr i8, ptr %i.abb, i64 4
  store float %i.aba, ptr %gep.i179.1, align 4, !tbaa !11
  %indvars.iv.next.i181.1 = add nuw nsw i64 %indvars.iv.i177, 2 ; 2 uses
  %exitcond.not.i182.1 = icmp eq i64 %indvars.iv.next.i181.1, 100
  br i1 %exitcond.not.i182.1, label %._crit_edge.us.i183, label %bb.x, !llvm.loop !13

._crit_edge.us.i183:                              ; preds = %bb.x
  %indvars.iv.next65.i184 = add nuw nsw i64 %indvars.iv64.i174, 1 ; 2 uses
  %exitcond68.not.i185 = icmp eq i64 %indvars.iv.next65.i184, 100
  br i1 %exitcond68.not.i185, label %.preheader51.i186, label %.preheader52.us.i173, !llvm.loop !15

.preheader51.i186:                                ; preds = %._crit_edge.us.i183
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1344 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1347 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1349 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1352 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1355 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1358 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1361 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1364 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1367 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1370 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1373 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1376 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1379 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1382 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1385 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1388 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1391 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1394 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1397 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1400 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1403 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1406 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1409 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1412 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1415 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1417 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1419 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1421 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i187

.preheader.us.i187:                               ; preds = %.preheader.us.i187, %.preheader51.i186
  %i.abc = phi float [ %.promoted1421, %.preheader51.i186 ], [ %i.adj, %.preheader.us.i187 ]
  %i.abd = phi float [ %.promoted1419, %.preheader51.i186 ], [ %i.adh, %.preheader.us.i187 ]
  %i.abe = phi float [ %.promoted1417, %.preheader51.i186 ], [ %i.adf, %.preheader.us.i187 ]
  %i.abf = phi float [ %.promoted1415, %.preheader51.i186 ], [ %i.add, %.preheader.us.i187 ]
  %wide.load720.111413 = phi <4 x float> [ %.promoted1412, %.preheader51.i186 ], [ %i.adb, %.preheader.us.i187 ]
  %wide.load719.111410 = phi <4 x float> [ %.promoted1409, %.preheader51.i186 ], [ %i.ada, %.preheader.us.i187 ]
  %wide.load720.101407 = phi <4 x float> [ %.promoted1406, %.preheader51.i186 ], [ %i.acx, %.preheader.us.i187 ]
  %wide.load719.101404 = phi <4 x float> [ %.promoted1403, %.preheader51.i186 ], [ %i.acw, %.preheader.us.i187 ]
  %wide.load720.91401 = phi <4 x float> [ %.promoted1400, %.preheader51.i186 ], [ %i.act, %.preheader.us.i187 ]
  %wide.load719.91398 = phi <4 x float> [ %.promoted1397, %.preheader51.i186 ], [ %i.acs, %.preheader.us.i187 ]
  %wide.load720.81395 = phi <4 x float> [ %.promoted1394, %.preheader51.i186 ], [ %i.acp, %.preheader.us.i187 ]
  %wide.load719.81392 = phi <4 x float> [ %.promoted1391, %.preheader51.i186 ], [ %i.aco, %.preheader.us.i187 ]
  %wide.load720.71389 = phi <4 x float> [ %.promoted1388, %.preheader51.i186 ], [ %i.acl, %.preheader.us.i187 ]
  %wide.load719.71386 = phi <4 x float> [ %.promoted1385, %.preheader51.i186 ], [ %i.ack, %.preheader.us.i187 ]
  %wide.load720.61383 = phi <4 x float> [ %.promoted1382, %.preheader51.i186 ], [ %i.ach, %.preheader.us.i187 ]
  %wide.load719.61380 = phi <4 x float> [ %.promoted1379, %.preheader51.i186 ], [ %i.acg, %.preheader.us.i187 ]
  %wide.load720.51377 = phi <4 x float> [ %.promoted1376, %.preheader51.i186 ], [ %i.acd, %.preheader.us.i187 ]
  %wide.load719.51374 = phi <4 x float> [ %.promoted1373, %.preheader51.i186 ], [ %i.acc, %.preheader.us.i187 ]
  %wide.load720.41371 = phi <4 x float> [ %.promoted1370, %.preheader51.i186 ], [ %i.abz, %.preheader.us.i187 ]
  %wide.load719.41368 = phi <4 x float> [ %.promoted1367, %.preheader51.i186 ], [ %i.aby, %.preheader.us.i187 ]
  %wide.load720.31365 = phi <4 x float> [ %.promoted1364, %.preheader51.i186 ], [ %i.abv, %.preheader.us.i187 ]
  %wide.load719.31362 = phi <4 x float> [ %.promoted1361, %.preheader51.i186 ], [ %i.abu, %.preheader.us.i187 ]
  %wide.load720.21359 = phi <4 x float> [ %.promoted1358, %.preheader51.i186 ], [ %i.abr, %.preheader.us.i187 ]
  %wide.load719.21356 = phi <4 x float> [ %.promoted1355, %.preheader51.i186 ], [ %i.abq, %.preheader.us.i187 ]
  %wide.load720.11353 = phi <4 x float> [ %.promoted1352, %.preheader51.i186 ], [ %i.abn, %.preheader.us.i187 ]
  %wide.load719.11350 = phi <4 x float> [ %.promoted1349, %.preheader51.i186 ], [ %i.abm, %.preheader.us.i187 ]
  %i.abg = phi <4 x float> [ %.promoted1347, %.preheader51.i186 ], [ %i.abj, %.preheader.us.i187 ]
  %wide.load7191345 = phi <4 x float> [ %main.b.promoted1344, %.preheader51.i186 ], [ %i.abi, %.preheader.us.i187 ]
  %indvars.iv77.i188 = phi i64 [ 0, %.preheader51.i186 ], [ %indvars.iv.next78.i195, %.preheader.us.i187 ] ; 2 uses
  %invariant.gep82.i189.idx = mul nuw nsw i64 %indvars.iv77.i188, 804
  %invariant.gep82.i189 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i189.idx ; 28 uses
  %i.abh = getelementptr i8, ptr %invariant.gep82.i189, i64 16
  %wide.load721 = load <4 x float>, ptr %invariant.gep82.i189, align 4, !tbaa !11
  %wide.load722 = load <4 x float>, ptr %i.abh, align 4, !tbaa !11
  %i.abi = fadd <4 x float> %wide.load7191345, %wide.load721 ; 2 uses
  %i.abj = fadd <4 x float> %i.abg, %wide.load722 ; 2 uses
  %i.abk = getelementptr i8, ptr %invariant.gep82.i189, i64 32
  %i.abl = getelementptr i8, ptr %invariant.gep82.i189, i64 48
  %wide.load721.1 = load <4 x float>, ptr %i.abk, align 4, !tbaa !11
  %wide.load722.1 = load <4 x float>, ptr %i.abl, align 4, !tbaa !11
  %i.abm = fadd <4 x float> %wide.load719.11350, %wide.load721.1 ; 2 uses
  %i.abn = fadd <4 x float> %wide.load720.11353, %wide.load722.1 ; 2 uses
  %i.abo = getelementptr i8, ptr %invariant.gep82.i189, i64 64
  %i.abp = getelementptr i8, ptr %invariant.gep82.i189, i64 80
  %wide.load721.2 = load <4 x float>, ptr %i.abo, align 4, !tbaa !11
  %wide.load722.2 = load <4 x float>, ptr %i.abp, align 4, !tbaa !11
  %i.abq = fadd <4 x float> %wide.load719.21356, %wide.load721.2 ; 2 uses
  %i.abr = fadd <4 x float> %wide.load720.21359, %wide.load722.2 ; 2 uses
  %i.abs = getelementptr i8, ptr %invariant.gep82.i189, i64 96
  %i.abt = getelementptr i8, ptr %invariant.gep82.i189, i64 112
  %wide.load721.3 = load <4 x float>, ptr %i.abs, align 4, !tbaa !11
  %wide.load722.3 = load <4 x float>, ptr %i.abt, align 4, !tbaa !11
  %i.abu = fadd <4 x float> %wide.load719.31362, %wide.load721.3 ; 2 uses
  %i.abv = fadd <4 x float> %wide.load720.31365, %wide.load722.3 ; 2 uses
  %i.abw = getelementptr i8, ptr %invariant.gep82.i189, i64 128
  %i.abx = getelementptr i8, ptr %invariant.gep82.i189, i64 144
  %wide.load721.4 = load <4 x float>, ptr %i.abw, align 4, !tbaa !11
  %wide.load722.4 = load <4 x float>, ptr %i.abx, align 4, !tbaa !11
  %i.aby = fadd <4 x float> %wide.load719.41368, %wide.load721.4 ; 2 uses
  %i.abz = fadd <4 x float> %wide.load720.41371, %wide.load722.4 ; 2 uses
  %i.aca = getelementptr i8, ptr %invariant.gep82.i189, i64 160
  %i.acb = getelementptr i8, ptr %invariant.gep82.i189, i64 176
  %wide.load721.5 = load <4 x float>, ptr %i.aca, align 4, !tbaa !11
  %wide.load722.5 = load <4 x float>, ptr %i.acb, align 4, !tbaa !11
  %i.acc = fadd <4 x float> %wide.load719.51374, %wide.load721.5 ; 2 uses
  %i.acd = fadd <4 x float> %wide.load720.51377, %wide.load722.5 ; 2 uses
  %i.ace = getelementptr i8, ptr %invariant.gep82.i189, i64 192
  %i.acf = getelementptr i8, ptr %invariant.gep82.i189, i64 208
  %wide.load721.6 = load <4 x float>, ptr %i.ace, align 4, !tbaa !11
  %wide.load722.6 = load <4 x float>, ptr %i.acf, align 4, !tbaa !11
  %i.acg = fadd <4 x float> %wide.load719.61380, %wide.load721.6 ; 2 uses
  %i.ach = fadd <4 x float> %wide.load720.61383, %wide.load722.6 ; 2 uses
  %i.aci = getelementptr i8, ptr %invariant.gep82.i189, i64 224
  %i.acj = getelementptr i8, ptr %invariant.gep82.i189, i64 240
  %wide.load721.7 = load <4 x float>, ptr %i.aci, align 4, !tbaa !11
  %wide.load722.7 = load <4 x float>, ptr %i.acj, align 4, !tbaa !11
  %i.ack = fadd <4 x float> %wide.load719.71386, %wide.load721.7 ; 2 uses
  %i.acl = fadd <4 x float> %wide.load720.71389, %wide.load722.7 ; 2 uses
  %i.acm = getelementptr i8, ptr %invariant.gep82.i189, i64 256
  %i.acn = getelementptr i8, ptr %invariant.gep82.i189, i64 272
  %wide.load721.8 = load <4 x float>, ptr %i.acm, align 4, !tbaa !11
  %wide.load722.8 = load <4 x float>, ptr %i.acn, align 4, !tbaa !11
  %i.aco = fadd <4 x float> %wide.load719.81392, %wide.load721.8 ; 2 uses
  %i.acp = fadd <4 x float> %wide.load720.81395, %wide.load722.8 ; 2 uses
  %i.acq = getelementptr i8, ptr %invariant.gep82.i189, i64 288
  %i.acr = getelementptr i8, ptr %invariant.gep82.i189, i64 304
  %wide.load721.9 = load <4 x float>, ptr %i.acq, align 4, !tbaa !11
  %wide.load722.9 = load <4 x float>, ptr %i.acr, align 4, !tbaa !11
  %i.acs = fadd <4 x float> %wide.load719.91398, %wide.load721.9 ; 2 uses
  %i.act = fadd <4 x float> %wide.load720.91401, %wide.load722.9 ; 2 uses
  %i.acu = getelementptr i8, ptr %invariant.gep82.i189, i64 320
  %i.acv = getelementptr i8, ptr %invariant.gep82.i189, i64 336
  %wide.load721.10 = load <4 x float>, ptr %i.acu, align 4, !tbaa !11
  %wide.load722.10 = load <4 x float>, ptr %i.acv, align 4, !tbaa !11
  %i.acw = fadd <4 x float> %wide.load719.101404, %wide.load721.10 ; 2 uses
  %i.acx = fadd <4 x float> %wide.load720.101407, %wide.load722.10 ; 2 uses
  %i.acy = getelementptr i8, ptr %invariant.gep82.i189, i64 352
  %i.acz = getelementptr i8, ptr %invariant.gep82.i189, i64 368
  %wide.load721.11 = load <4 x float>, ptr %i.acy, align 4, !tbaa !11
  %wide.load722.11 = load <4 x float>, ptr %i.acz, align 4, !tbaa !11
  %i.ada = fadd <4 x float> %wide.load719.111410, %wide.load721.11 ; 2 uses
  %i.adb = fadd <4 x float> %wide.load720.111413, %wide.load722.11 ; 2 uses
  %gep83.i191 = getelementptr i8, ptr %invariant.gep82.i189, i64 384
  %i.adc = load float, ptr %gep83.i191, align 4, !tbaa !11
  %i.add = fadd float %i.abf, %i.adc              ; 2 uses
  %gep83.i191.1 = getelementptr i8, ptr %invariant.gep82.i189, i64 388
  %i.ade = load float, ptr %gep83.i191.1, align 4, !tbaa !11
  %i.adf = fadd float %i.abe, %i.ade              ; 2 uses
  %gep83.i191.2 = getelementptr i8, ptr %invariant.gep82.i189, i64 392
  %i.adg = load float, ptr %gep83.i191.2, align 4, !tbaa !11
  %i.adh = fadd float %i.abd, %i.adg              ; 2 uses
  %gep83.i191.3 = getelementptr i8, ptr %invariant.gep82.i189, i64 396
  %i.adi = load float, ptr %gep83.i191.3, align 4, !tbaa !11
  %i.adj = fadd float %i.abc, %i.adi              ; 2 uses
  %indvars.iv.next78.i195 = add nuw nsw i64 %indvars.iv77.i188, 1 ; 2 uses
  %exitcond81.not.i196 = icmp eq i64 %indvars.iv.next78.i195, 100
  br i1 %exitcond81.not.i196, label %.lr.ph103.i198.preheader.preheader, label %.preheader.us.i187, !llvm.loop !16

.lr.ph103.i198.preheader.preheader:               ; preds = %.preheader.us.i187
  store <4 x float> %i.abi, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.abj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.abm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.abn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.abq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.abr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.abu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.abv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.aby, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.abz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.acc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.acd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.acg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.ach, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.ack, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.acl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.aco, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.acp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.acs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.act, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.acw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.acx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.ada, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.adb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.add, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.adf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.adh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.adj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i198.preheader

.lr.ph103.i198.preheader:                         ; preds = %.lr.ph103.i198.preheader.preheader, %.loopexit.i213
  %i.adk = phi i32 [ %i.afx, %.loopexit.i213 ], [ 0, %.lr.ph103.i198.preheader.preheader ]
  %indvars.iv107.i199 = phi i64 [ %indvars.iv.next108.i202, %.loopexit.i213 ], [ 0, %.lr.ph103.i198.preheader.preheader ] ; 12 uses
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i214, %.loopexit.i213 ], [ 1, %.lr.ph103.i198.preheader.preheader ] ; 2 uses
  %i.adl = sub nsw i64 99, %indvars.iv107.i199    ; 3 uses
  %i.adm = sub nsw i64 99, %indvars.iv107.i199    ; 3 uses
  %indvars109.i201 = trunc i64 %indvars.iv107.i199 to i32 ; 2 uses
  %indvars.iv.next108.i202 = add nuw nsw i64 %indvars.iv107.i199, 1 ; 2 uses
  %i.adn = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i199
  %i.ado = mul nuw nsw i64 %indvars.iv107.i199, 804
  %i.adp = getelementptr i8, ptr %i.adn, i64 %i.ado ; 7 uses
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !11
  %i.adr = tail call float @llvm.fabs.f32(float %i.adq) ; 2 uses
  %xtraiter846 = and i64 %i.adl, 1
  %i.ads = icmp eq i64 %indvars.iv107.i199, 98
  br i1 %i.ads, label %.lr.ph48.i.i203.epil.preheader, label %.lr.ph103.i198.preheader.new

.lr.ph103.i198.preheader.new:                     ; preds = %.lr.ph103.i198.preheader
  %unroll_iter850 = and i64 %i.adl, -2
  br label %.lr.ph48.i.i203

.lr.ph48.i.i203:                                  ; preds = %.lr.ph48.i.i203, %.lr.ph103.i198.preheader.new
  %indvars.iv52.i.i204 = phi i64 [ 1, %.lr.ph103.i198.preheader.new ], [ %indvars.iv.next53.i.i209.1, %.lr.ph48.i.i203 ] ; 4 uses
  %.247.i.i205 = phi i32 [ 0, %.lr.ph103.i198.preheader.new ], [ %.3.i.i208.1, %.lr.ph48.i.i203 ]
  %.23345.i.i206 = phi float [ %i.adr, %.lr.ph103.i198.preheader.new ], [ %.334.i.i207.1, %.lr.ph48.i.i203 ] ; 2 uses
  %niter851 = phi i64 [ 0, %.lr.ph103.i198.preheader.new ], [ %niter851.next.1, %.lr.ph48.i.i203 ]
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv52.i.i204
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !11
  %i.adv = tail call float @llvm.fabs.f32(float %i.adu) ; 2 uses
  %i.adw = fcmp ogt float %i.adv, %.23345.i.i206  ; 2 uses
  %.334.i.i207 = select i1 %i.adw, float %i.adv, float %.23345.i.i206 ; 2 uses
  %i.adx = trunc nuw nsw i64 %indvars.iv52.i.i204 to i32
  %.3.i.i208 = select i1 %i.adw, i32 %i.adx, i32 %.247.i.i205
  %indvars.iv.next53.i.i209 = add nuw nsw i64 %indvars.iv52.i.i204, 1 ; 2 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv.next53.i.i209
  %i.adz = load float, ptr %i.ady, align 4, !tbaa !11
  %i.aea = tail call float @llvm.fabs.f32(float %i.adz) ; 2 uses
  %i.aeb = fcmp ogt float %i.aea, %.334.i.i207    ; 2 uses
  %.334.i.i207.1 = select i1 %i.aeb, float %i.aea, float %.334.i.i207 ; 2 uses
  %i.aec = trunc nuw nsw i64 %indvars.iv.next53.i.i209 to i32
  %.3.i.i208.1 = select i1 %i.aeb, i32 %i.aec, i32 %.3.i.i208 ; 3 uses
  %indvars.iv.next53.i.i209.1 = add nuw nsw i64 %indvars.iv52.i.i204, 2 ; 2 uses
  %niter851.next.1 = add i64 %niter851, 2         ; 2 uses
  %niter851.ncmp.1 = icmp eq i64 %niter851.next.1, %unroll_iter850
  br i1 %niter851.ncmp.1, label %idamax.exit.i211.unr-lcssa, label %.lr.ph48.i.i203, !llvm.loop !27

idamax.exit.i211.unr-lcssa:                       ; preds = %.lr.ph48.i.i203
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  br i1 %lcmp.mod847.not, label %idamax.exit.i211, label %.lr.ph48.i.i203.epil.preheader

.lr.ph48.i.i203.epil.preheader:                   ; preds = %idamax.exit.i211.unr-lcssa, %.lr.ph103.i198.preheader
  %indvars.iv52.i.i204.epil.init = phi i64 [ 1, %.lr.ph103.i198.preheader ], [ %indvars.iv.next53.i.i209.1, %idamax.exit.i211.unr-lcssa ] ; 2 uses
  %.247.i.i205.epil.init = phi i32 [ 0, %.lr.ph103.i198.preheader ], [ %.3.i.i208.1, %idamax.exit.i211.unr-lcssa ]
  %.23345.i.i206.epil.init = phi float [ %i.adr, %.lr.ph103.i198.preheader ], [ %.334.i.i207.1, %idamax.exit.i211.unr-lcssa ]
  %lcmp.mod849 = trunc i64 %i.adl to i1
  tail call void @llvm.assume(i1 %lcmp.mod849)
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %i.adp, i64 %indvars.iv52.i.i204.epil.init
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !11
  %i.aef = tail call float @llvm.fabs.f32(float %i.aee)
  %i.aeg = fcmp ogt float %i.aef, %.23345.i.i206.epil.init
  %i.aeh = trunc nuw nsw i64 %indvars.iv52.i.i204.epil.init to i32
  %.3.i.i208.epil = select i1 %i.aeg, i32 %i.aeh, i32 %.247.i.i205.epil.init
  br label %idamax.exit.i211

idamax.exit.i211:                                 ; preds = %idamax.exit.i211.unr-lcssa, %.lr.ph48.i.i203.epil.preheader
  %.3.i.i208.lcssa = phi i32 [ %.3.i.i208.1, %idamax.exit.i211.unr-lcssa ], [ %.3.i.i208.epil, %.lr.ph48.i.i203.epil.preheader ] ; 2 uses
  %i.aei = add nsw i32 %.3.i.i208.lcssa, %indvars109.i201 ; 2 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i199
  store i32 %i.aei, ptr %i.aej, align 4, !tbaa !4
  %i.aek = sext i32 %i.aei to i64                 ; 2 uses
  %.idx391 = mul nuw nsw i64 %indvars.iv107.i199, 804
  %i.ael = getelementptr i8, ptr @main.a, i64 %.idx391
  %i.aem = getelementptr [4 x i8], ptr %i.ael, i64 %i.aek ; 2 uses
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !11 ; 3 uses
  %i.aeo = fcmp une float %i.aen, 0.000000e+00
  br i1 %i.aeo, label %bb.y, label %.loopexit.i213

bb.y:                                             ; preds = %idamax.exit.i211
  %.not.i217 = icmp eq i32 %.3.i.i208.lcssa, 0    ; 2 uses
  %.pre.i218 = load float, ptr %i.adp, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i217, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %.pre.i218, ptr %i.aem, align 4, !tbaa !11
  store float %i.aen, ptr %i.adp, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aep = phi float [ %i.aen, %bb.z ], [ %.pre.i218, %bb.y ]
  %i.aeq = fdiv float -1.000000e+00, %i.aep       ; 2 uses
  %i.aer = sub nuw nsw i64 99, %indvars.iv107.i199 ; 4 uses
  %i.aes = getelementptr i8, ptr %i.adp, i64 4    ; 4 uses
  %min.iters.check701 = icmp samesign ugt i64 %indvars.iv107.i199, 91
  br i1 %min.iters.check701, label %.lr.ph25.i.i219.preheader, label %vector.ph702

vector.ph702:                                     ; preds = %bb.aa
  %n.vec704 = and i64 %i.aer, 120                 ; 3 uses
  %broadcast.splatinsert705 = insertelement <4 x float> poison, float %i.aeq, i64 0
  %broadcast.splat706 = shufflevector <4 x float> %broadcast.splatinsert705, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body707

vector.body707:                                   ; preds = %vector.body707, %vector.ph702
  %index708 = phi i64 [ 0, %vector.ph702 ], [ %index.next711, %vector.body707 ] ; 2 uses
  %i.aet = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %index708 ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 16 ; 2 uses
  %wide.load709 = load <4 x float>, ptr %i.aet, align 4, !tbaa !11
  %wide.load710 = load <4 x float>, ptr %i.aeu, align 4, !tbaa !11
  %i.aev = fmul <4 x float> %broadcast.splat706, %wide.load709
  %i.aew = fmul <4 x float> %broadcast.splat706, %wide.load710
  store <4 x float> %i.aev, ptr %i.aet, align 4, !tbaa !11
  store <4 x float> %i.aew, ptr %i.aeu, align 4, !tbaa !11
  %index.next711 = add nuw i64 %index708, 8       ; 2 uses
  %i.aex = icmp eq i64 %index.next711, %n.vec704
  br i1 %i.aex, label %middle.block712, label %vector.body707, !llvm.loop !36

middle.block712:                                  ; preds = %vector.body707
  %cmp.n713 = icmp eq i64 %i.aer, %n.vec704
  br i1 %cmp.n713, label %.lr.ph.i223, label %.lr.ph25.i.i219.preheader

.lr.ph25.i.i219.preheader:                        ; preds = %bb.aa, %middle.block712
  %indvars.iv28.i.i220.ph = phi i64 [ 0, %bb.aa ], [ %n.vec704, %middle.block712 ]
  br label %.lr.ph25.i.i219

.lr.ph25.i.i219:                                  ; preds = %.lr.ph25.i.i219.preheader, %.lr.ph25.i.i219
  %indvars.iv28.i.i220 = phi i64 [ %indvars.iv.next29.i.i221, %.lr.ph25.i.i219 ], [ %indvars.iv28.i.i220.ph, %.lr.ph25.i.i219.preheader ] ; 2 uses
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv28.i.i220 ; 2 uses
  %i.aez = load float, ptr %i.aey, align 4, !tbaa !11
  %i.afa = fmul float %i.aeq, %i.aez
  store float %i.afa, ptr %i.aey, align 4, !tbaa !11
  %indvars.iv.next29.i.i221 = add nuw nsw i64 %indvars.iv28.i.i220, 1 ; 2 uses
  %exitcond.not.i.i222 = icmp eq i64 %indvars.iv.next29.i.i221, %i.aer
  br i1 %exitcond.not.i.i222, label %.lr.ph.i223, label %.lr.ph25.i.i219, !llvm.loop !37

.lr.ph.i223:                                      ; preds = %.lr.ph25.i.i219, %middle.block712
  %invariant.gep.i224 = getelementptr [4 x i8], ptr @main.a, i64 %i.aek
  %min.iters.check684 = icmp ult i64 %i.adm, 8
  %n.vec687 = and i64 %i.adm, -8                  ; 3 uses
  %cmp.n698 = icmp eq i64 %i.adm, %n.vec687
  br label %bb.ab

bb.ab:                                            ; preds = %daxpy.exit.i233, %.lr.ph.i223
  %indvars.iv104.i225 = phi i64 [ %indvars.iv.i200, %.lr.ph.i223 ], [ %indvars.iv.next105.i234, %daxpy.exit.i233 ] ; 2 uses
  %i.afb = mul nuw nsw i64 %indvars.iv104.i225, 201 ; 2 uses
  %gep.i226 = getelementptr [4 x i8], ptr %invariant.gep.i224, i64 %i.afb ; 2 uses
  %i.afc = load float, ptr %gep.i226, align 4, !tbaa !11 ; 4 uses
  %.pre112.i227 = add nuw nsw i64 %i.afb, %indvars.iv107.i199 ; 2 uses
  br i1 %.not.i217, label %._crit_edge.i228, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i227 ; 2 uses
  %i.afe = load float, ptr %i.afd, align 4, !tbaa !11
  store float %i.afe, ptr %gep.i226, align 4, !tbaa !11
  store float %i.afc, ptr %i.afd, align 4, !tbaa !11
  br label %._crit_edge.i228

._crit_edge.i228:                                 ; preds = %bb.ac, %bb.ab
  %i.aff = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i227
  %i.afg = getelementptr i8, ptr %i.aff, i64 4    ; 2 uses
  %i.afh = fcmp oeq float %i.afc, 0.000000e+00
  br i1 %i.afh, label %daxpy.exit.i233, label %.lr.ph.i.i229.preheader

.lr.ph.i.i229.preheader:                          ; preds = %._crit_edge.i228
  br i1 %min.iters.check684, label %.lr.ph.i.i229.preheader816, label %vector.ph685

vector.ph685:                                     ; preds = %.lr.ph.i.i229.preheader
  %broadcast.splatinsert688 = insertelement <4 x float> poison, float %i.afc, i64 0
  %broadcast.splat689 = shufflevector <4 x float> %broadcast.splatinsert688, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph685
  %index691 = phi i64 [ 0, %vector.ph685 ], [ %index.next696, %vector.body690 ] ; 3 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %index691 ; 3 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16 ; 2 uses
  %wide.load692 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %wide.load693 = load <4 x float>, ptr %i.afj, align 4, !tbaa !11
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %index691 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afk, i64 16
  %wide.load694 = load <4 x float>, ptr %i.afk, align 4, !tbaa !11
  %wide.load695 = load <4 x float>, ptr %i.afl, align 4, !tbaa !11
  %i.afm = fmul <4 x float> %broadcast.splat689, %wide.load694
  %i.afn = fmul <4 x float> %broadcast.splat689, %wide.load695
  %i.afo = fadd <4 x float> %wide.load692, %i.afm
  %i.afp = fadd <4 x float> %wide.load693, %i.afn
  store <4 x float> %i.afo, ptr %i.afi, align 4, !tbaa !11
  store <4 x float> %i.afp, ptr %i.afj, align 4, !tbaa !11
  %index.next696 = add nuw i64 %index691, 8       ; 2 uses
  %i.afq = icmp eq i64 %index.next696, %n.vec687
  br i1 %i.afq, label %middle.block697, label %vector.body690, !llvm.loop !38

middle.block697:                                  ; preds = %vector.body690
  br i1 %cmp.n698, label %daxpy.exit.i233, label %.lr.ph.i.i229.preheader816

.lr.ph.i.i229.preheader816:                       ; preds = %.lr.ph.i.i229.preheader, %middle.block697
  %indvars.iv.i.i230.ph = phi i64 [ 0, %.lr.ph.i.i229.preheader ], [ %n.vec687, %middle.block697 ]
  br label %.lr.ph.i.i229

.lr.ph.i.i229:                                    ; preds = %.lr.ph.i.i229.preheader816, %.lr.ph.i.i229
  %indvars.iv.i.i230 = phi i64 [ %indvars.iv.next.i.i231, %.lr.ph.i.i229 ], [ %indvars.iv.i.i230.ph, %.lr.ph.i.i229.preheader816 ] ; 3 uses
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.afg, i64 %indvars.iv.i.i230 ; 2 uses
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !11
  %i.aft = getelementptr inbounds nuw [4 x i8], ptr %i.aes, i64 %indvars.iv.i.i230
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !11
  %i.afv = fmul float %i.afc, %i.afu
  %i.afw = fadd float %i.afs, %i.afv
  store float %i.afw, ptr %i.afr, align 4, !tbaa !11
  %indvars.iv.next.i.i231 = add nuw nsw i64 %indvars.iv.i.i230, 1 ; 2 uses
  %exitcond.not.i99.i232 = icmp eq i64 %indvars.iv.next.i.i231, %i.aer
  br i1 %exitcond.not.i99.i232, label %daxpy.exit.i233, label %.lr.ph.i.i229, !llvm.loop !39

daxpy.exit.i233:                                  ; preds = %.lr.ph.i.i229, %middle.block697, %._crit_edge.i228
  %indvars.iv.next105.i234 = add nuw nsw i64 %indvars.iv104.i225, 1 ; 2 uses
  %exitcond.not.i235 = icmp eq i64 %indvars.iv.next105.i234, 100
  br i1 %exitcond.not.i235, label %.loopexit.i213, label %bb.ab, !llvm.loop !32

.loopexit.i213:                                   ; preds = %daxpy.exit.i233, %idamax.exit.i211
  %i.afx = phi i32 [ %indvars109.i201, %idamax.exit.i211 ], [ %i.adk, %daxpy.exit.i233 ] ; 2 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i200, 1
  %exitcond111.not.i215 = icmp eq i64 %indvars.iv.next108.i202, 99
  br i1 %exitcond111.not.i215, label %.loopexit100.i216, label %.lr.ph103.i198.preheader, !llvm.loop !33

.loopexit100.i216:                                ; preds = %.loopexit.i213
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afy = add nuw nsw i32 %storemerge85419, 1    ; 2 uses
  %exitcond469.not = icmp eq i32 %i.afy, %i.aap
  br i1 %exitcond469.not, label %._crit_edge420, label %.preheader52.us.i173.preheader, !llvm.loop !40

._crit_edge420:                                   ; preds = %.loopexit100.i216
  %i.afz = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.aga = fcmp oeq float %i.afz, 0.000000e+00
  %i.agb = select i1 %i.aga, i32 99, i32 %i.afx
  store i32 %i.agb, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge420, %bb.w
  %i.agc = tail call i64 @clock() #12
  %i.agd = sitofp i64 %i.agc to float
  %i.age = fdiv float %i.agd, 1.000000e+06
  %i.agf = fsub float %i.age, %i.aao
  %i.agg = fsub float %i.agf, %i.aal
  %i.agh = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agi = sitofp i32 %i.agh to float
  %i.agj = fdiv float %i.agg, %i.agi
  %i.agk = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agl = sext i32 %i.agk to i64
  %i.agm = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agl
  store float %i.agj, ptr %i.agm, align 4, !tbaa !11
  %i.agn = tail call i64 @clock() #12
  %i.ago = sitofp i64 %i.agn to float
  %i.agp = fdiv float %i.ago, 1.000000e+06
  %i.agq = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.agr = icmp sgt i32 %i.agq, 0
  br i1 %i.agr, label %.preheader394, label %._crit_edge425

.preheader394:                                    ; preds = %bb.ad, %dgesl.exit259
  %storemerge86424 = phi i32 [ %i.aiw, %dgesl.exit259 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader394, %daxpy.exit.i244
  %indvars.iv146.i237 = phi i64 [ %indvars.iv.next147.i239, %daxpy.exit.i244 ], [ 0, %.preheader394 ] ; 7 uses
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i237
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !4 ; 2 uses
  %i.agu = sext i32 %i.agt to i64
  %i.agv = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.agu ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !11 ; 4 uses
  %i.agx = zext i32 %i.agt to i64
  %.not103.i238 = icmp eq i64 %indvars.iv146.i237, %i.agx
  br i1 %.not103.i238, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i237 ; 2 uses
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !11
  store float %i.agz, ptr %i.agv, align 4, !tbaa !11
  store float %i.agw, ptr %i.agy, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next147.i239 = add nuw nsw i64 %indvars.iv146.i237, 1 ; 3 uses
  %i.aha = mul nuw nsw i64 %indvars.iv146.i237, 808
  %i.ahb = getelementptr i8, ptr @main.a, i64 %i.aha
  %i.ahc = getelementptr i8, ptr %i.ahb, i64 4    ; 2 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i239 ; 2 uses
  %i.ahe = fcmp oeq float %i.agw, 0.000000e+00
  br i1 %i.ahe, label %daxpy.exit.i244, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ahf = sub nuw nsw i64 99, %indvars.iv146.i237 ; 3 uses
  %min.iters.check667 = icmp samesign ugt i64 %indvars.iv146.i237, 91
  br i1 %min.iters.check667, label %.lr.ph.i.i240.preheader, label %vector.ph668

vector.ph668:                                     ; preds = %bb.ah
  %n.vec670 = and i64 %i.ahf, 120                 ; 3 uses
  %broadcast.splatinsert671 = insertelement <4 x float> poison, float %i.agw, i64 0
  %broadcast.splat672 = shufflevector <4 x float> %broadcast.splatinsert671, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph668
  %index674 = phi i64 [ 0, %vector.ph668 ], [ %index.next679, %vector.body673 ] ; 3 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %index674 ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 16 ; 2 uses
  %wide.load675 = load <4 x float>, ptr %i.ahg, align 4, !tbaa !11
  %wide.load676 = load <4 x float>, ptr %i.ahh, align 4, !tbaa !11
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %index674 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %wide.load677 = load <4 x float>, ptr %i.ahi, align 4, !tbaa !11
  %wide.load678 = load <4 x float>, ptr %i.ahj, align 4, !tbaa !11
  %i.ahk = fmul <4 x float> %broadcast.splat672, %wide.load677
  %i.ahl = fmul <4 x float> %broadcast.splat672, %wide.load678
  %i.ahm = fadd <4 x float> %wide.load675, %i.ahk
  %i.ahn = fadd <4 x float> %wide.load676, %i.ahl
  store <4 x float> %i.ahm, ptr %i.ahg, align 4, !tbaa !11
  store <4 x float> %i.ahn, ptr %i.ahh, align 4, !tbaa !11
  %index.next679 = add nuw i64 %index674, 8       ; 2 uses
  %i.aho = icmp eq i64 %index.next679, %n.vec670
  br i1 %i.aho, label %middle.block680, label %vector.body673, !llvm.loop !41

middle.block680:                                  ; preds = %vector.body673
  %cmp.n681 = icmp eq i64 %i.ahf, %n.vec670
  br i1 %cmp.n681, label %daxpy.exit.i244, label %.lr.ph.i.i240.preheader

.lr.ph.i.i240.preheader:                          ; preds = %bb.ah, %middle.block680
  %indvars.iv.i.i241.ph = phi i64 [ 0, %bb.ah ], [ %n.vec670, %middle.block680 ]
  br label %.lr.ph.i.i240

.lr.ph.i.i240:                                    ; preds = %.lr.ph.i.i240.preheader, %.lr.ph.i.i240
  %indvars.iv.i.i241 = phi i64 [ %indvars.iv.next.i.i242, %.lr.ph.i.i240 ], [ %indvars.iv.i.i241.ph, %.lr.ph.i.i240.preheader ] ; 3 uses
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahd, i64 %indvars.iv.i.i241 ; 2 uses
  %i.ahq = load float, ptr %i.ahp, align 4, !tbaa !11
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %indvars.iv.i.i241
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !11
  %i.aht = fmul float %i.agw, %i.ahs
  %i.ahu = fadd float %i.ahq, %i.aht
  store float %i.ahu, ptr %i.ahp, align 4, !tbaa !11
  %indvars.iv.next.i.i242 = add nuw nsw i64 %indvars.iv.i.i241, 1 ; 2 uses
  %exitcond.not.i.i243 = icmp eq i64 %indvars.iv.next.i.i242, %i.ahf
  br i1 %exitcond.not.i.i243, label %daxpy.exit.i244, label %.lr.ph.i.i240, !llvm.loop !42

daxpy.exit.i244:                                  ; preds = %.lr.ph.i.i240, %middle.block680, %bb.ag
  %exitcond150.not.i245 = icmp eq i64 %indvars.iv.next147.i239, 99
  br i1 %exitcond150.not.i245, label %.lr.ph136.i247, label %bb.ae, !llvm.loop !21

.lr.ph136.i247:                                   ; preds = %daxpy.exit.i244, %daxpy.exit110.i256
  %indvars.iv151.i248 = phi i64 [ %indvars.iv.next152.i249, %daxpy.exit110.i256 ], [ 0, %daxpy.exit.i244 ] ; 4 uses
  %i.ahv = sub nsw i64 99, %indvars.iv151.i248    ; 3 uses
  %indvars.iv.next152.i249 = add nuw nsw i64 %indvars.iv151.i248, 1 ; 2 uses
  %i.ahw = sub nuw nsw i64 99, %indvars.iv151.i248 ; 5 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.ahw ; 2 uses
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !11
  %i.ahz = getelementptr [4 x i8], ptr @main.a, i64 %i.ahw
  %i.aia = mul nuw nsw i64 %i.ahw, 804
  %i.aib = getelementptr i8, ptr %i.ahz, i64 %i.aia
  %i.aic = load float, ptr %i.aib, align 4, !tbaa !11
  %i.aid = fdiv float %i.ahy, %i.aic              ; 4 uses
  store float %i.aid, ptr %i.ahx, align 4, !tbaa !11
  %.idx389 = mul nuw nsw i64 %i.ahw, 804
  %i.aie = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx389 ; 2 uses
  %i.aif = icmp samesign ugt i64 %indvars.iv151.i248, 98
  %i.aig = fcmp oeq float %i.aid, 0.000000e+00
  %or.cond41.i104.i251 = or i1 %i.aif, %i.aig
  br i1 %or.cond41.i104.i251, label %daxpy.exit110.i256, label %.lr.ph.i106.i252.preheader

.lr.ph.i106.i252.preheader:                       ; preds = %.lr.ph136.i247
  %min.iters.check650 = icmp ult i64 %i.ahv, 8
  br i1 %min.iters.check650, label %.lr.ph.i106.i252.preheader817, label %vector.ph651

vector.ph651:                                     ; preds = %.lr.ph.i106.i252.preheader
  %n.vec653 = and i64 %i.ahv, -8                  ; 3 uses
  %broadcast.splatinsert654 = insertelement <4 x float> poison, float %i.aid, i64 0
  %broadcast.splat655 = shufflevector <4 x float> %broadcast.splatinsert654, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body656

vector.body656:                                   ; preds = %vector.body656, %vector.ph651
  %index657 = phi i64 [ 0, %vector.ph651 ], [ %index.next662, %vector.body656 ] ; 3 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index657 ; 3 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aih, i64 16 ; 2 uses
  %wide.load658 = load <4 x float>, ptr %i.aih, align 16, !tbaa !11
  %wide.load659 = load <4 x float>, ptr %i.aii, align 16, !tbaa !11
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %index657 ; 2 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %wide.load660 = load <4 x float>, ptr %i.aij, align 4, !tbaa !11
  %wide.load661 = load <4 x float>, ptr %i.aik, align 4, !tbaa !11
  %i.ail = fmul <4 x float> %broadcast.splat655, %wide.load660
  %i.aim = fmul <4 x float> %broadcast.splat655, %wide.load661
  %i.ain = fsub <4 x float> %wide.load658, %i.ail
  %i.aio = fsub <4 x float> %wide.load659, %i.aim
  store <4 x float> %i.ain, ptr %i.aih, align 16, !tbaa !11
  store <4 x float> %i.aio, ptr %i.aii, align 16, !tbaa !11
  %index.next662 = add nuw i64 %index657, 8       ; 2 uses
  %i.aip = icmp eq i64 %index.next662, %n.vec653
  br i1 %i.aip, label %middle.block663, label %vector.body656, !llvm.loop !43

middle.block663:                                  ; preds = %vector.body656
  %cmp.n664 = icmp eq i64 %i.ahv, %n.vec653
  br i1 %cmp.n664, label %daxpy.exit110.i256, label %.lr.ph.i106.i252.preheader817

.lr.ph.i106.i252.preheader817:                    ; preds = %.lr.ph.i106.i252.preheader, %middle.block663
  %indvars.iv.i107.i253.ph = phi i64 [ 0, %.lr.ph.i106.i252.preheader ], [ %n.vec653, %middle.block663 ]
  br label %.lr.ph.i106.i252

.lr.ph.i106.i252:                                 ; preds = %.lr.ph.i106.i252.preheader817, %.lr.ph.i106.i252
  %indvars.iv.i107.i253 = phi i64 [ %indvars.iv.next.i108.i254, %.lr.ph.i106.i252 ], [ %indvars.iv.i107.i253.ph, %.lr.ph.i106.i252.preheader817 ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i253 ; 2 uses
  %i.air = load float, ptr %i.aiq, align 4, !tbaa !11
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %indvars.iv.i107.i253
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !11
  %i.aiu = fmul float %i.aid, %i.ait
  %i.aiv = fsub float %i.air, %i.aiu
  store float %i.aiv, ptr %i.aiq, align 4, !tbaa !11
  %indvars.iv.next.i108.i254 = add nuw nsw i64 %indvars.iv.i107.i253, 1 ; 2 uses
  %exitcond.not.i109.i255 = icmp eq i64 %indvars.iv.next.i108.i254, %i.ahw
  br i1 %exitcond.not.i109.i255, label %daxpy.exit110.i256, label %.lr.ph.i106.i252, !llvm.loop !44

daxpy.exit110.i256:                               ; preds = %.lr.ph.i106.i252, %middle.block663, %.lr.ph136.i247
  %exitcond155.not.i257 = icmp eq i64 %indvars.iv.next152.i249, 100
  br i1 %exitcond155.not.i257, label %dgesl.exit259, label %.lr.ph136.i247, !llvm.loop !24

dgesl.exit259:                                    ; preds = %daxpy.exit110.i256
  %i.aiw = add nuw nsw i32 %storemerge86424, 1    ; 2 uses
  %exitcond470.not = icmp eq i32 %i.aiw, %i.agq
  br i1 %exitcond470.not, label %._crit_edge425, label %.preheader394, !llvm.loop !45

._crit_edge425:                                   ; preds = %dgesl.exit259, %bb.ad
  %i.aix = tail call i64 @clock() #12
  %i.aiy = sitofp i64 %i.aix to float
  %i.aiz = fdiv float %i.aiy, 1.000000e+06
  %i.aja = fsub float %i.aiz, %i.agp
  %i.ajb = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.ajc = sitofp i32 %i.ajb to float
  %i.ajd = fdiv float %i.aja, %i.ajc              ; 2 uses
  %i.aje = load i32, ptr @main.j, align 4, !tbaa !4 ; 3 uses
  %i.ajf = sext i32 %i.aje to i64                 ; 6 uses
  %i.ajg = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), i64 %i.ajf
  store float %i.ajd, ptr %i.ajg, align 4, !tbaa !11
  %i.ajh = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.ajf
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !11
  %i.ajj = fadd float %i.aji, %i.ajd              ; 3 uses
  %i.ajk = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), i64 %i.ajf
  store float %i.ajj, ptr %i.ajk, align 4, !tbaa !11
  %i.ajl = fpext float %i.ajj to double
  %i.ajm = fmul double %i.ajl, 1.000000e+06
  %i.ajn = fdiv double f0x4124F49560000000, %i.ajm
  %i.ajo = fptrunc double %i.ajn to float         ; 3 uses
  %i.ajp = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.ajf
  store float %i.ajo, ptr %i.ajp, align 4, !tbaa !11
  %i.ajq = fdiv float 2.000000e+00, %i.ajo
  %i.ajr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.ajf
  store float %i.ajq, ptr %i.ajr, align 4, !tbaa !11
  %i.ajs = fdiv float %i.ajj, 5.600000e-02
  %i.ajt = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.ajf
  store float %i.ajs, ptr %i.ajt, align 4, !tbaa !11
  %i.aju = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajv = fadd float %i.aju, %i.ajo              ; 2 uses
  store float %i.ajv, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajw = add nsw i32 %i.aje, 1
  store i32 %i.ajw, ptr @main.j, align 4, !tbaa !4
  %i.ajx = icmp slt i32 %i.aje, 5
  br i1 %i.ajx, label %bb.w, label %.preheader52.us.i260.preheader.preheader, !llvm.loop !46

.preheader52.us.i260.preheader.preheader:         ; preds = %._crit_edge425
  %i.ajy = fdiv float %i.ajv, 5.000000e+00
  store float %i.ajy, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  %i.ajz = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aka = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ajz, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  %i.akb = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.akc = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %i.akb) #13 ; 0 uses
  %i.akd = tail call i64 @clock() #12
  %i.ake = sitofp i64 %i.akd to float
  %i.akf = fdiv nnan float %i.ake, 1.000000e+06
  br label %.preheader52.us.i260.preheader

.preheader52.us.i260.preheader:                   ; preds = %.preheader52.us.i260.preheader.preheader, %matgen.exit284
  %storemerge81427 = phi i32 [ %i.amz, %matgen.exit284 ], [ 0, %.preheader52.us.i260.preheader.preheader ]
  br label %.preheader52.us.i260

.preheader52.us.i260:                             ; preds = %.preheader52.us.i260.preheader, %._crit_edge.us.i270
  %indvars.iv64.i261 = phi i64 [ %indvars.iv.next65.i271, %._crit_edge.us.i270 ], [ 0, %.preheader52.us.i260.preheader ] ; 2 uses
  %.04455.us.i262 = phi i32 [ %i.akm, %._crit_edge.us.i270 ], [ 1325, %.preheader52.us.i260.preheader ]
  %invariant.gep.i263.idx = mul nuw nsw i64 %indvars.iv64.i261, 800
  %invariant.gep.i263 = getelementptr i8, ptr @main.aa, i64 %invariant.gep.i263.idx ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader52.us.i260
  %indvars.iv.i264 = phi i64 [ 0, %.preheader52.us.i260 ], [ %indvars.iv.next.i268.1, %bb.ai ] ; 3 uses
  %.14553.us.i265 = phi i32 [ %.04455.us.i262, %.preheader52.us.i260 ], [ %i.akm, %bb.ai ] ; 2 uses
  %i.akg = mul nuw nsw i32 %.14553.us.i265, 3125
  %i.akh = and i32 %i.akg, 65535
  %i.aki = add nsw i32 %i.akh, -32768
  %i.akj = sitofp i32 %i.aki to float
  %i.akk = fmul nnan float %i.akj, f0x38800000
  %gep.i266 = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  store float %i.akk, ptr %gep.i266, align 8, !tbaa !11
  %i.akl = mul nsw i32 %.14553.us.i265, 761
  %i.akm = and i32 %i.akl, 65535                  ; 3 uses
  %i.akn = add nsw i32 %i.akm, -32768
  %i.ako = sitofp i32 %i.akn to float
  %i.akp = fmul nnan float %i.ako, f0x38800000
  %i.akq = getelementptr [4 x i8], ptr %invariant.gep.i263, i64 %indvars.iv.i264
  %gep.i266.1 = getelementptr i8, ptr %i.akq, i64 4
  store float %i.akp, ptr %gep.i266.1, align 4, !tbaa !11
  %indvars.iv.next.i268.1 = add nuw nsw i64 %indvars.iv.i264, 2 ; 2 uses
  %exitcond.not.i269.1 = icmp eq i64 %indvars.iv.next.i268.1, 100
  br i1 %exitcond.not.i269.1, label %._crit_edge.us.i270, label %bb.ai, !llvm.loop !13

._crit_edge.us.i270:                              ; preds = %bb.ai
  %indvars.iv.next65.i271 = add nuw nsw i64 %indvars.iv64.i261, 1 ; 2 uses
  %exitcond68.not.i272 = icmp eq i64 %indvars.iv.next65.i271, 100
  br i1 %exitcond68.not.i272, label %.preheader51.i273, label %.preheader52.us.i260, !llvm.loop !15

.preheader51.i273:                                ; preds = %._crit_edge.us.i270
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1423 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1426 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1428 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1431 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1434 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1437 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1440 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1443 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.aod = sitofp i32 %i.aoc to float
  %i.aoe = fmul nnan float %i.aod, f0x38800000
  %i.aof = getelementptr [4 x i8], ptr %invariant.gep.i288, i64 %indvars.iv.i289
  %gep.i291.1 = getelementptr i8, ptr %i.aof, i64 4
  store float %i.aoe, ptr %gep.i291.1, align 4, !tbaa !11
  %indvars.iv.next.i293.1 = add nuw nsw i64 %indvars.iv.i289, 2 ; 2 uses
  %exitcond.not.i294.1 = icmp eq i64 %indvars.iv.next.i293.1, 100
  br i1 %exitcond.not.i294.1, label %._crit_edge.us.i295, label %bb.ak, !llvm.loop !13

._crit_edge.us.i295:                              ; preds = %bb.ak
  %indvars.iv.next65.i296 = add nuw nsw i64 %indvars.iv64.i286, 1 ; 2 uses
  %exitcond68.not.i297 = icmp eq i64 %indvars.iv.next65.i296, 100
  br i1 %exitcond68.not.i297, label %.preheader51.i298, label %.preheader52.us.i285, !llvm.loop !15

.preheader51.i298:                                ; preds = %._crit_edge.us.i295
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1502 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1505 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1507 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1510 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1513 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1516 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1519 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1522 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1525 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1528 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1531 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1534 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1537 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1540 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1543 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1546 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1549 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1552 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1555 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1558 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1561 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1564 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1567 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1570 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1573 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1575 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1577 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1579 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.us.i299

.preheader.us.i299:                               ; preds = %.preheader.us.i299, %.preheader51.i298
  %i.aog = phi float [ %.promoted1579, %.preheader51.i298 ], [ %i.aqn, %.preheader.us.i299 ]
  %i.aoh = phi float [ %.promoted1577, %.preheader51.i298 ], [ %i.aql, %.preheader.us.i299 ]
  %i.aoi = phi float [ %.promoted1575, %.preheader51.i298 ], [ %i.aqj, %.preheader.us.i299 ]
  %i.aoj = phi float [ %.promoted1573, %.preheader51.i298 ], [ %i.aqh, %.preheader.us.i299 ]
  %wide.load806.111571 = phi <4 x float> [ %.promoted1570, %.preheader51.i298 ], [ %i.aqf, %.preheader.us.i299 ]
  %wide.load805.111568 = phi <4 x float> [ %.promoted1567, %.preheader51.i298 ], [ %i.aqe, %.preheader.us.i299 ]
  %wide.load806.101565 = phi <4 x float> [ %.promoted1564, %.preheader51.i298 ], [ %i.aqb, %.preheader.us.i299 ]
  %wide.load805.101562 = phi <4 x float> [ %.promoted1561, %.preheader51.i298 ], [ %i.aqa, %.preheader.us.i299 ]
  %wide.load806.91559 = phi <4 x float> [ %.promoted1558, %.preheader51.i298 ], [ %i.apx, %.preheader.us.i299 ]
  %wide.load805.91556 = phi <4 x float> [ %.promoted1555, %.preheader51.i298 ], [ %i.apw, %.preheader.us.i299 ]
  %wide.load806.81553 = phi <4 x float> [ %.promoted1552, %.preheader51.i298 ], [ %i.apt, %.preheader.us.i299 ]
  %wide.load805.81550 = phi <4 x float> [ %.promoted1549, %.preheader51.i298 ], [ %i.aps, %.preheader.us.i299 ]
  %wide.load806.71547 = phi <4 x float> [ %.promoted1546, %.preheader51.i298 ], [ %i.app, %.preheader.us.i299 ]
  %wide.load805.71544 = phi <4 x float> [ %.promoted1543, %.preheader51.i298 ], [ %i.apo, %.preheader.us.i299 ]
  %wide.load806.61541 = phi <4 x float> [ %.promoted1540, %.preheader51.i298 ], [ %i.apl, %.preheader.us.i299 ]
  %wide.load805.61538 = phi <4 x float> [ %.promoted1537, %.preheader51.i298 ], [ %i.apk, %.preheader.us.i299 ]
  %wide.load806.51535 = phi <4 x float> [ %.promoted1534, %.preheader51.i298 ], [ %i.aph, %.preheader.us.i299 ]
  %wide.load805.51532 = phi <4 x float> [ %.promoted1531, %.preheader51.i298 ], [ %i.apg, %.preheader.us.i299 ]
  %wide.load806.41529 = phi <4 x float> [ %.promoted1528, %.preheader51.i298 ], [ %i.apd, %.preheader.us.i299 ]
  %wide.load805.41526 = phi <4 x float> [ %.promoted1525, %.preheader51.i298 ], [ %i.apc, %.preheader.us.i299 ]
  %wide.load806.31523 = phi <4 x float> [ %.promoted1522, %.preheader51.i298 ], [ %i.aoz, %.preheader.us.i299 ]
  %wide.load805.31520 = phi <4 x float> [ %.promoted1519, %.preheader51.i298 ], [ %i.aoy, %.preheader.us.i299 ]
  %wide.load806.21517 = phi <4 x float> [ %.promoted1516, %.preheader51.i298 ], [ %i.aov, %.preheader.us.i299 ]
  %wide.load805.21514 = phi <4 x float> [ %.promoted1513, %.preheader51.i298 ], [ %i.aou, %.preheader.us.i299 ]
  %wide.load806.11511 = phi <4 x float> [ %.promoted1510, %.preheader51.i298 ], [ %i.aor, %.preheader.us.i299 ]
  %wide.load805.11508 = phi <4 x float> [ %.promoted1507, %.preheader51.i298 ], [ %i.aoq, %.preheader.us.i299 ]
  %i.aok = phi <4 x float> [ %.promoted1505, %.preheader51.i298 ], [ %i.aon, %.preheader.us.i299 ]
  %wide.load8051503 = phi <4 x float> [ %main.b.promoted1502, %.preheader51.i298 ], [ %i.aom, %.preheader.us.i299 ]
  %indvars.iv77.i300 = phi i64 [ 0, %.preheader51.i298 ], [ %indvars.iv.next78.i307, %.preheader.us.i299 ] ; 2 uses
  %invariant.gep82.i301.idx = mul nuw nsw i64 %indvars.iv77.i300, 800
  %invariant.gep82.i301 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i301.idx ; 28 uses
  %i.aol = getelementptr i8, ptr %invariant.gep82.i301, i64 16
  %wide.load807 = load <4 x float>, ptr %invariant.gep82.i301, align 16, !tbaa !11
  %wide.load808 = load <4 x float>, ptr %i.aol, align 16, !tbaa !11
  %i.aom = fadd <4 x float> %wide.load8051503, %wide.load807 ; 2 uses
  %i.aon = fadd <4 x float> %i.aok, %wide.load808 ; 2 uses
  %i.aoo = getelementptr i8, ptr %invariant.gep82.i301, i64 32
  %i.aop = getelementptr i8, ptr %invariant.gep82.i301, i64 48
  %wide.load807.1 = load <4 x float>, ptr %i.aoo, align 16, !tbaa !11
  %wide.load808.1 = load <4 x float>, ptr %i.aop, align 16, !tbaa !11
  %i.aoq = fadd <4 x float> %wide.load805.11508, %wide.load807.1 ; 2 uses
  %i.aor = fadd <4 x float> %wide.load806.11511, %wide.load808.1 ; 2 uses
  %i.aos = getelementptr i8, ptr %invariant.gep82.i301, i64 64
  %i.aot = getelementptr i8, ptr %invariant.gep82.i301, i64 80
  %wide.load807.2 = load <4 x float>, ptr %i.aos, align 16, !tbaa !11
  %wide.load808.2 = load <4 x float>, ptr %i.aot, align 16, !tbaa !11
  %i.aou = fadd <4 x float> %wide.load805.21514, %wide.load807.2 ; 2 uses
  %i.aov = fadd <4 x float> %wide.load806.21517, %wide.load808.2 ; 2 uses
  %i.aow = getelementptr i8, ptr %invariant.gep82.i301, i64 96
  %i.aox = getelementptr i8, ptr %invariant.gep82.i301, i64 112
  %wide.load807.3 = load <4 x float>, ptr %i.aow, align 16, !tbaa !11
  %wide.load808.3 = load <4 x float>, ptr %i.aox, align 16, !tbaa !11
  %i.aoy = fadd <4 x float> %wide.load805.31520, %wide.load807.3 ; 2 uses
  %i.aoz = fadd <4 x float> %wide.load806.31523, %wide.load808.3 ; 2 uses
  %i.apa = getelementptr i8, ptr %invariant.gep82.i301, i64 128
  %i.apb = getelementptr i8, ptr %invariant.gep82.i301, i64 144
  %wide.load807.4 = load <4 x float>, ptr %i.apa, align 16, !tbaa !11
  %wide.load808.4 = load <4 x float>, ptr %i.apb, align 16, !tbaa !11
  %i.apc = fadd <4 x float> %wide.load805.41526, %wide.load807.4 ; 2 uses
  %i.apd = fadd <4 x float> %wide.load806.41529, %wide.load808.4 ; 2 uses
  %i.ape = getelementptr i8, ptr %invariant.gep82.i301, i64 160
  %i.apf = getelementptr i8, ptr %invariant.gep82.i301, i64 176
  %wide.load807.5 = load <4 x float>, ptr %i.ape, align 16, !tbaa !11
  %wide.load808.5 = load <4 x float>, ptr %i.apf, align 16, !tbaa !11
  %i.apg = fadd <4 x float> %wide.load805.51532, %wide.load807.5 ; 2 uses
  %i.aph = fadd <4 x float> %wide.load806.51535, %wide.load808.5 ; 2 uses
  %i.api = getelementptr i8, ptr %invariant.gep82.i301, i64 192
  %i.apj = getelementptr i8, ptr %invariant.gep82.i301, i64 208
  %wide.load807.6 = load <4 x float>, ptr %i.api, align 16, !tbaa !11
  %wide.load808.6 = load <4 x float>, ptr %i.apj, align 16, !tbaa !11
  %i.apk = fadd <4 x float> %wide.load805.61538, %wide.load807.6 ; 2 uses
  %i.apl = fadd <4 x float> %wide.load806.61541, %wide.load808.6 ; 2 uses
  %i.apm = getelementptr i8, ptr %invariant.gep82.i301, i64 224
  %i.apn = getelementptr i8, ptr %invariant.gep82.i301, i64 240
  %wide.load807.7 = load <4 x float>, ptr %i.apm, align 16, !tbaa !11
  %wide.load808.7 = load <4 x float>, ptr %i.apn, align 16, !tbaa !11
  %i.apo = fadd <4 x float> %wide.load805.71544, %wide.load807.7 ; 2 uses
  %i.app = fadd <4 x float> %wide.load806.71547, %wide.load808.7 ; 2 uses
  %i.apq = getelementptr i8, ptr %invariant.gep82.i301, i64 256
  %i.apr = getelementptr i8, ptr %invariant.gep82.i301, i64 272
  %wide.load807.8 = load <4 x float>, ptr %i.apq, align 16, !tbaa !11
  %wide.load808.8 = load <4 x float>, ptr %i.apr, align 16, !tbaa !11
  %i.aps = fadd <4 x float> %wide.load805.81550, %wide.load807.8 ; 2 uses
  %i.apt = fadd <4 x float> %wide.load806.81553, %wide.load808.8 ; 2 uses
  %i.apu = getelementptr i8, ptr %invariant.gep82.i301, i64 288
  %i.apv = getelementptr i8, ptr %invariant.gep82.i301, i64 304
  %wide.load807.9 = load <4 x float>, ptr %i.apu, align 16, !tbaa !11
  %wide.load808.9 = load <4 x float>, ptr %i.apv, align 16, !tbaa !11
  %i.apw = fadd <4 x float> %wide.load805.91556, %wide.load807.9 ; 2 uses
  %i.apx = fadd <4 x float> %wide.load806.91559, %wide.load808.9 ; 2 uses
  %i.apy = getelementptr i8, ptr %invariant.gep82.i301, i64 320
  %i.apz = getelementptr i8, ptr %invariant.gep82.i301, i64 336
  %wide.load807.10 = load <4 x float>, ptr %i.apy, align 16, !tbaa !11
  %wide.load808.10 = load <4 x float>, ptr %i.apz, align 16, !tbaa !11
  %i.aqa = fadd <4 x float> %wide.load805.101562, %wide.load807.10 ; 2 uses
  %i.aqb = fadd <4 x float> %wide.load806.101565, %wide.load808.10 ; 2 uses
  %i.aqc = getelementptr i8, ptr %invariant.gep82.i301, i64 352
  %i.aqd = getelementptr i8, ptr %invariant.gep82.i301, i64 368
  %wide.load807.11 = load <4 x float>, ptr %i.aqc, align 16, !tbaa !11
  %wide.load808.11 = load <4 x float>, ptr %i.aqd, align 16, !tbaa !11
  %i.aqe = fadd <4 x float> %wide.load805.111568, %wide.load807.11 ; 2 uses
  %i.aqf = fadd <4 x float> %wide.load806.111571, %wide.load808.11 ; 2 uses
  %gep83.i303 = getelementptr i8, ptr %invariant.gep82.i301, i64 384
  %i.aqg = load float, ptr %gep83.i303, align 16, !tbaa !11
  %i.aqh = fadd float %i.aoj, %i.aqg              ; 2 uses
  %gep83.i303.1 = getelementptr i8, ptr %invariant.gep82.i301, i64 388
  %i.aqi = load float, ptr %gep83.i303.1, align 4, !tbaa !11
  %i.aqj = fadd float %i.aoi, %i.aqi              ; 2 uses
  %gep83.i303.2 = getelementptr i8, ptr %invariant.gep82.i301, i64 392
  %i.aqk = load float, ptr %gep83.i303.2, align 8, !tbaa !11
  %i.aql = fadd float %i.aoh, %i.aqk              ; 2 uses
  %gep83.i303.3 = getelementptr i8, ptr %invariant.gep82.i301, i64 396
  %i.aqm = load float, ptr %gep83.i303.3, align 4, !tbaa !11
  %i.aqn = fadd float %i.aog, %i.aqm              ; 2 uses
  %indvars.iv.next78.i307 = add nuw nsw i64 %indvars.iv77.i300, 1 ; 2 uses
  %exitcond81.not.i308 = icmp eq i64 %indvars.iv.next78.i307, 100
  br i1 %exitcond81.not.i308, label %.lr.ph103.i310.preheader.preheader, label %.preheader.us.i299, !llvm.loop !16

.lr.ph103.i310.preheader.preheader:               ; preds = %.preheader.us.i299
  store <4 x float> %i.aom, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.aon, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.aoq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.aor, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aou, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.aov, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.aoy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.aoz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.apc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.apd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.apg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.aph, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.apk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.apl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.apo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.app, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.aps, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.apt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.apw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.apx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.aqa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.aqb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.aqe, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.aqf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.aqh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.aqj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.aql, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.aqn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i310.preheader

.lr.ph103.i310.preheader:                         ; preds = %.lr.ph103.i310.preheader.preheader, %.loopexit.i325
  %i.aqo = phi i32 [ %i.atb, %.loopexit.i325 ], [ 0, %.lr.ph103.i310.preheader.preheader ]
  %indvars.iv107.i311 = phi i64 [ %indvars.iv.next108.i314, %.loopexit.i325 ], [ 0, %.lr.ph103.i310.preheader.preheader ] ; 12 uses
  %indvars.iv.i312 = phi i64 [ %indvars.iv.next.i326, %.loopexit.i325 ], [ 1, %.lr.ph103.i310.preheader.preheader ] ; 2 uses
  %i.aqp = sub nsw i64 99, %indvars.iv107.i311    ; 3 uses
  %i.aqq = sub nsw i64 99, %indvars.iv107.i311    ; 3 uses
  %indvars109.i313 = trunc i64 %indvars.iv107.i311 to i32 ; 2 uses
  %indvars.iv.next108.i314 = add nuw nsw i64 %indvars.iv107.i311, 1 ; 2 uses
  %i.aqr = getelementptr [4 x i8], ptr @main.aa, i64 %indvars.iv107.i311
  %i.aqs = mul nuw nsw i64 %indvars.iv107.i311, 800
  %i.aqt = getelementptr i8, ptr %i.aqr, i64 %i.aqs ; 7 uses
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !11
  %i.aqv = tail call float @llvm.fabs.f32(float %i.aqu) ; 2 uses
  %xtraiter852 = and i64 %i.aqp, 1
  %i.aqw = icmp eq i64 %indvars.iv107.i311, 98
  br i1 %i.aqw, label %.lr.ph48.i.i315.epil.preheader, label %.lr.ph103.i310.preheader.new

.lr.ph103.i310.preheader.new:                     ; preds = %.lr.ph103.i310.preheader
  %unroll_iter856 = and i64 %i.aqp, -2
  br label %.lr.ph48.i.i315

.lr.ph48.i.i315:                                  ; preds = %.lr.ph48.i.i315, %.lr.ph103.i310.preheader.new
  %indvars.iv52.i.i316 = phi i64 [ 1, %.lr.ph103.i310.preheader.new ], [ %indvars.iv.next53.i.i321.1, %.lr.ph48.i.i315 ] ; 4 uses
  %.247.i.i317 = phi i32 [ 0, %.lr.ph103.i310.preheader.new ], [ %.3.i.i320.1, %.lr.ph48.i.i315 ]
  %.23345.i.i318 = phi float [ %i.aqv, %.lr.ph103.i310.preheader.new ], [ %.334.i.i319.1, %.lr.ph48.i.i315 ] ; 2 uses
  %niter857 = phi i64 [ 0, %.lr.ph103.i310.preheader.new ], [ %niter857.next.1, %.lr.ph48.i.i315 ]
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %indvars.iv52.i.i316
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !11
  %i.aqz = tail call float @llvm.fabs.f32(float %i.aqy) ; 2 uses
  %i.ara = fcmp ogt float %i.aqz, %.23345.i.i318  ; 2 uses
  %.334.i.i319 = select i1 %i.ara, float %i.aqz, float %.23345.i.i318 ; 2 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv52.i.i316 to i32
  %.3.i.i320 = select i1 %i.ara, i32 %i.arb, i32 %.247.i.i317
  %indvars.iv.next53.i.i321 = add nuw nsw i64 %indvars.iv52.i.i316, 1 ; 2 uses
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %indvars.iv.next53.i.i321
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !11
  %i.are = tail call float @llvm.fabs.f32(float %i.ard) ; 2 uses
  %i.arf = fcmp ogt float %i.are, %.334.i.i319    ; 2 uses
  %.334.i.i319.1 = select i1 %i.arf, float %i.are, float %.334.i.i319 ; 2 uses
  %i.arg = trunc nuw nsw i64 %indvars.iv.next53.i.i321 to i32
  %.3.i.i320.1 = select i1 %i.arf, i32 %i.arg, i32 %.3.i.i320 ; 3 uses
  %indvars.iv.next53.i.i321.1 = add nuw nsw i64 %indvars.iv52.i.i316, 2 ; 2 uses
  %niter857.next.1 = add i64 %niter857, 2         ; 2 uses
  %niter857.ncmp.1 = icmp eq i64 %niter857.next.1, %unroll_iter856
  br i1 %niter857.ncmp.1, label %idamax.exit.i323.unr-lcssa, label %.lr.ph48.i.i315, !llvm.loop !27

idamax.exit.i323.unr-lcssa:                       ; preds = %.lr.ph48.i.i315
  %lcmp.mod853.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod853.not, label %idamax.exit.i323, label %.lr.ph48.i.i315.epil.preheader

.lr.ph48.i.i315.epil.preheader:                   ; preds = %idamax.exit.i323.unr-lcssa, %.lr.ph103.i310.preheader
  %indvars.iv52.i.i316.epil.init = phi i64 [ 1, %.lr.ph103.i310.preheader ], [ %indvars.iv.next53.i.i321.1, %idamax.exit.i323.unr-lcssa ] ; 2 uses
  %.247.i.i317.epil.init = phi i32 [ 0, %.lr.ph103.i310.preheader ], [ %.3.i.i320.1, %idamax.exit.i323.unr-lcssa ]
  %.23345.i.i318.epil.init = phi float [ %i.aqv, %.lr.ph103.i310.preheader ], [ %.334.i.i319.1, %idamax.exit.i323.unr-lcssa ]
  %lcmp.mod855 = trunc i64 %i.aqp to i1
  tail call void @llvm.assume(i1 %lcmp.mod855)
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.aqt, i64 %indvars.iv52.i.i316.epil.init
  %i.ari = load float, ptr %i.arh, align 4, !tbaa !11
  %i.arj = tail call float @llvm.fabs.f32(float %i.ari)
  %i.ark = fcmp ogt float %i.arj, %.23345.i.i318.epil.init
  %i.arl = trunc nuw nsw i64 %indvars.iv52.i.i316.epil.init to i32
  %.3.i.i320.epil = select i1 %i.ark, i32 %i.arl, i32 %.247.i.i317.epil.init
  br label %idamax.exit.i323

idamax.exit.i323:                                 ; preds = %idamax.exit.i323.unr-lcssa, %.lr.ph48.i.i315.epil.preheader
  %.3.i.i320.lcssa = phi i32 [ %.3.i.i320.1, %idamax.exit.i323.unr-lcssa ], [ %.3.i.i320.epil, %.lr.ph48.i.i315.epil.preheader ] ; 2 uses
  %i.arm = add nsw i32 %.3.i.i320.lcssa, %indvars109.i313 ; 2 uses
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i311
  store i32 %i.arm, ptr %i.arn, align 4, !tbaa !4
  %i.aro = sext i32 %i.arm to i64                 ; 2 uses
  %.idx386 = mul nuw nsw i64 %indvars.iv107.i311, 800
  %i.arp = getelementptr i8, ptr @main.aa, i64 %.idx386
  %i.arq = getelementptr [4 x i8], ptr %i.arp, i64 %i.aro ; 2 uses
  %i.arr = load float, ptr %i.arq, align 4, !tbaa !11 ; 3 uses
  %i.ars = fcmp une float %i.arr, 0.000000e+00
  br i1 %i.ars, label %bb.al, label %.loopexit.i325

bb.al:                                            ; preds = %idamax.exit.i323
  %.not.i329 = icmp eq i32 %.3.i.i320.lcssa, 0    ; 2 uses
  %.pre.i330 = load float, ptr %i.aqt, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i329, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %.pre.i330, ptr %i.arq, align 4, !tbaa !11
  store float %i.arr, ptr %i.aqt, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.art = phi float [ %i.arr, %bb.am ], [ %.pre.i330, %bb.al ]
  %i.aru = fdiv float -1.000000e+00, %i.art       ; 2 uses
  %i.arv = sub nuw nsw i64 99, %indvars.iv107.i311 ; 4 uses
  %i.arw = getelementptr i8, ptr %i.aqt, i64 4    ; 4 uses
  %min.iters.check787 = icmp samesign ugt i64 %indvars.iv107.i311, 91
  br i1 %min.iters.check787, label %.lr.ph25.i.i331.preheader, label %vector.ph788

vector.ph788:                                     ; preds = %bb.an
  %n.vec790 = and i64 %i.arv, 120                 ; 3 uses
  %broadcast.splatinsert791 = insertelement <4 x float> poison, float %i.aru, i64 0
  %broadcast.splat792 = shufflevector <4 x float> %broadcast.splatinsert791, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body793

vector.body793:                                   ; preds = %vector.body793, %vector.ph788
  %index794 = phi i64 [ 0, %vector.ph788 ], [ %index.next797, %vector.body793 ] ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %index794 ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 16 ; 2 uses
  %wide.load795 = load <4 x float>, ptr %i.arx, align 4, !tbaa !11
  %wide.load796 = load <4 x float>, ptr %i.ary, align 4, !tbaa !11
  %i.arz = fmul <4 x float> %broadcast.splat792, %wide.load795
  %i.asa = fmul <4 x float> %broadcast.splat792, %wide.load796
  store <4 x float> %i.arz, ptr %i.arx, align 4, !tbaa !11
  store <4 x float> %i.asa, ptr %i.ary, align 4, !tbaa !11
  %index.next797 = add nuw i64 %index794, 8       ; 2 uses
  %i.asb = icmp eq i64 %index.next797, %n.vec790
  br i1 %i.asb, label %middle.block798, label %vector.body793, !llvm.loop !48

middle.block798:                                  ; preds = %vector.body793
  %cmp.n799 = icmp eq i64 %i.arv, %n.vec790
  br i1 %cmp.n799, label %.lr.ph.i335, label %.lr.ph25.i.i331.preheader

.lr.ph25.i.i331.preheader:                        ; preds = %bb.an, %middle.block798
  %indvars.iv28.i.i332.ph = phi i64 [ 0, %bb.an ], [ %n.vec790, %middle.block798 ]
  br label %.lr.ph25.i.i331

.lr.ph25.i.i331:                                  ; preds = %.lr.ph25.i.i331.preheader, %.lr.ph25.i.i331
  %indvars.iv28.i.i332 = phi i64 [ %indvars.iv.next29.i.i333, %.lr.ph25.i.i331 ], [ %indvars.iv28.i.i332.ph, %.lr.ph25.i.i331.preheader ] ; 2 uses
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %indvars.iv28.i.i332 ; 2 uses
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !11
  %i.ase = fmul float %i.aru, %i.asd
  store float %i.ase, ptr %i.asc, align 4, !tbaa !11
  %indvars.iv.next29.i.i333 = add nuw nsw i64 %indvars.iv28.i.i332, 1 ; 2 uses
  %exitcond.not.i.i334 = icmp eq i64 %indvars.iv.next29.i.i333, %i.arv
  br i1 %exitcond.not.i.i334, label %.lr.ph.i335, label %.lr.ph25.i.i331, !llvm.loop !49

.lr.ph.i335:                                      ; preds = %.lr.ph25.i.i331, %middle.block798
  %invariant.gep.i336 = getelementptr [4 x i8], ptr @main.aa, i64 %i.aro
  %min.iters.check770 = icmp ult i64 %i.aqq, 8
  %n.vec773 = and i64 %i.aqq, -8                  ; 3 uses
  %cmp.n784 = icmp eq i64 %i.aqq, %n.vec773
  br label %bb.ao

bb.ao:                                            ; preds = %daxpy.exit.i345, %.lr.ph.i335
  %indvars.iv104.i337 = phi i64 [ %indvars.iv.i312, %.lr.ph.i335 ], [ %indvars.iv.next105.i346, %daxpy.exit.i345 ] ; 2 uses
  %i.asf = mul nuw nsw i64 %indvars.iv104.i337, 200 ; 2 uses
  %gep.i338 = getelementptr [4 x i8], ptr %invariant.gep.i336, i64 %i.asf ; 2 uses
  %i.asg = load float, ptr %gep.i338, align 4, !tbaa !11 ; 4 uses
  %.pre112.i339 = add nuw nsw i64 %i.asf, %indvars.iv107.i311 ; 2 uses
  br i1 %.not.i329, label %._crit_edge.i340, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre112.i339 ; 2 uses
  %i.asi = load float, ptr %i.ash, align 4, !tbaa !11
  store float %i.asi, ptr %gep.i338, align 4, !tbaa !11
  store float %i.asg, ptr %i.ash, align 4, !tbaa !11
  br label %._crit_edge.i340

._crit_edge.i340:                                 ; preds = %bb.ap, %bb.ao
  %i.asj = getelementptr [4 x i8], ptr @main.aa, i64 %.pre112.i339
  %i.ask = getelementptr i8, ptr %i.asj, i64 4    ; 2 uses
  %i.asl = fcmp oeq float %i.asg, 0.000000e+00
  br i1 %i.asl, label %daxpy.exit.i345, label %.lr.ph.i.i341.preheader

.lr.ph.i.i341.preheader:                          ; preds = %._crit_edge.i340
  br i1 %min.iters.check770, label %.lr.ph.i.i341.preheader811, label %vector.ph771

vector.ph771:                                     ; preds = %.lr.ph.i.i341.preheader
  %broadcast.splatinsert774 = insertelement <4 x float> poison, float %i.asg, i64 0
  %broadcast.splat775 = shufflevector <4 x float> %broadcast.splatinsert774, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph771
  %index777 = phi i64 [ 0, %vector.ph771 ], [ %index.next782, %vector.body776 ] ; 3 uses
  %i.asm = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %index777 ; 3 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 16 ; 2 uses
  %wide.load778 = load <4 x float>, ptr %i.asm, align 4, !tbaa !11
  %wide.load779 = load <4 x float>, ptr %i.asn, align 4, !tbaa !11
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %index777 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %wide.load780 = load <4 x float>, ptr %i.aso, align 4, !tbaa !11
  %wide.load781 = load <4 x float>, ptr %i.asp, align 4, !tbaa !11
  %i.asq = fmul <4 x float> %broadcast.splat775, %wide.load780
  %i.asr = fmul <4 x float> %broadcast.splat775, %wide.load781
  %i.ass = fadd <4 x float> %wide.load778, %i.asq
  %i.ast = fadd <4 x float> %wide.load779, %i.asr
  store <4 x float> %i.ass, ptr %i.asm, align 4, !tbaa !11
  store <4 x float> %i.ast, ptr %i.asn, align 4, !tbaa !11
  %index.next782 = add nuw i64 %index777, 8       ; 2 uses
  %i.asu = icmp eq i64 %index.next782, %n.vec773
  br i1 %i.asu, label %middle.block783, label %vector.body776, !llvm.loop !50

middle.block783:                                  ; preds = %vector.body776
  br i1 %cmp.n784, label %daxpy.exit.i345, label %.lr.ph.i.i341.preheader811

.lr.ph.i.i341.preheader811:                       ; preds = %.lr.ph.i.i341.preheader, %middle.block783
  %indvars.iv.i.i342.ph = phi i64 [ 0, %.lr.ph.i.i341.preheader ], [ %n.vec773, %middle.block783 ]
  br label %.lr.ph.i.i341

.lr.ph.i.i341:                                    ; preds = %.lr.ph.i.i341.preheader811, %.lr.ph.i.i341
  %indvars.iv.i.i342 = phi i64 [ %indvars.iv.next.i.i343, %.lr.ph.i.i341 ], [ %indvars.iv.i.i342.ph, %.lr.ph.i.i341.preheader811 ] ; 3 uses
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.ask, i64 %indvars.iv.i.i342 ; 2 uses
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !11
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %indvars.iv.i.i342
  %i.asy = load float, ptr %i.asx, align 4, !tbaa !11
  %i.asz = fmul float %i.asg, %i.asy
  %i.ata = fadd float %i.asw, %i.asz
  store float %i.ata, ptr %i.asv, align 4, !tbaa !11
  %indvars.iv.next.i.i343 = add nuw nsw i64 %indvars.iv.i.i342, 1 ; 2 uses
  %exitcond.not.i99.i344 = icmp eq i64 %indvars.iv.next.i.i343, %i.arv
  br i1 %exitcond.not.i99.i344, label %daxpy.exit.i345, label %.lr.ph.i.i341, !llvm.loop !51

daxpy.exit.i345:                                  ; preds = %.lr.ph.i.i341, %middle.block783, %._crit_edge.i340
  %indvars.iv.next105.i346 = add nuw nsw i64 %indvars.iv104.i337, 1 ; 2 uses
  %exitcond.not.i347 = icmp eq i64 %indvars.iv.next105.i346, 100
  br i1 %exitcond.not.i347, label %.loopexit.i325, label %bb.ao, !llvm.loop !32

.loopexit.i325:                                   ; preds = %daxpy.exit.i345, %idamax.exit.i323
  %i.atb = phi i32 [ %indvars109.i313, %idamax.exit.i323 ], [ %i.aqo, %daxpy.exit.i345 ] ; 2 uses
  %indvars.iv.next.i326 = add nuw nsw i64 %indvars.iv.i312, 1
  %exitcond111.not.i327 = icmp eq i64 %indvars.iv.next108.i314, 99
  br i1 %exitcond111.not.i327, label %.loopexit100.i328, label %.lr.ph103.i310.preheader, !llvm.loop !33

.loopexit100.i328:                                ; preds = %.loopexit.i325
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.atc = add nuw nsw i32 %storemerge83430, 1    ; 2 uses
  %exitcond472.not = icmp eq i32 %i.atc, %i.ant
  br i1 %exitcond472.not, label %._crit_edge431, label %.preheader52.us.i285.preheader, !llvm.loop !52

._crit_edge431:                                   ; preds = %.loopexit100.i328
  %i.atd = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.ate = fcmp oeq float %i.atd, 0.000000e+00
  %i.atf = select i1 %i.ate, i32 99, i32 %i.atb
  store i32 %i.atf, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge431, %bb.aj
  %i.atg = tail call i64 @clock() #12
  %i.ath = sitofp i64 %i.atg to float
  %i.ati = fdiv float %i.ath, 1.000000e+06
  %i.atj = fsub float %i.ati, %i.ans
  %i.atk = fsub float %i.atj, %i.anp
  %i.atl = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.atm = sitofp i32 %i.atl to float
  %i.atn = fdiv float %i.atk, %i.atm
  %i.ato = load i32, ptr @main.j, align 4, !tbaa !4
  %i.atp = sext i32 %i.ato to i64
  %i.atq = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.atp
  store float %i.atn, ptr %i.atq, align 4, !tbaa !11
  %i.atr = tail call i64 @clock() #12
  %i.ats = sitofp i64 %i.atr to float
  %i.att = fdiv float %i.ats, 1.000000e+06
  %i.atu = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.atv = icmp sgt i32 %i.atu, 0
  br i1 %i.atv, label %.preheader, label %._crit_edge436

.preheader:                                       ; preds = %bb.aq, %dgesl.exit371
  %storemerge84435 = phi i32 [ %i.awa, %dgesl.exit371 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i356
  %indvars.iv146.i349 = phi i64 [ %indvars.iv.next147.i351, %daxpy.exit.i356 ], [ 0, %.preheader ] ; 7 uses
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i349
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !4 ; 2 uses
  %i.aty = sext i32 %i.atx to i64
  %i.atz = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.aty ; 2 uses
  %i.aua = load float, ptr %i.atz, align 4, !tbaa !11 ; 4 uses
  %i.aub = zext i32 %i.atx to i64
  %.not103.i350 = icmp eq i64 %indvars.iv146.i349, %i.aub
  br i1 %.not103.i350, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i349 ; 2 uses
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !11
  store float %i.aud, ptr %i.atz, align 4, !tbaa !11
  store float %i.aua, ptr %i.auc, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next147.i351 = add nuw nsw i64 %indvars.iv146.i349, 1 ; 3 uses
  %i.aue = mul nuw nsw i64 %indvars.iv146.i349, 804
  %i.auf = getelementptr i8, ptr @main.aa, i64 %i.aue
  %i.aug = getelementptr i8, ptr %i.auf, i64 4    ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i351 ; 2 uses
  %i.aui = fcmp oeq float %i.aua, 0.000000e+00
  br i1 %i.aui, label %daxpy.exit.i356, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.auj = sub nuw nsw i64 99, %indvars.iv146.i349 ; 3 uses
  %min.iters.check753 = icmp samesign ugt i64 %indvars.iv146.i349, 91
  br i1 %min.iters.check753, label %.lr.ph.i.i352.preheader, label %vector.ph754

vector.ph754:                                     ; preds = %bb.au
  %n.vec756 = and i64 %i.auj, 120                 ; 3 uses
  %broadcast.splatinsert757 = insertelement <4 x float> poison, float %i.aua, i64 0
  %broadcast.splat758 = shufflevector <4 x float> %broadcast.splatinsert757, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body759

vector.body759:                                   ; preds = %vector.body759, %vector.ph754
  %index760 = phi i64 [ 0, %vector.ph754 ], [ %index.next765, %vector.body759 ] ; 3 uses
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %index760 ; 3 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 16 ; 2 uses
  %wide.load761 = load <4 x float>, ptr %i.auk, align 4, !tbaa !11
  %wide.load762 = load <4 x float>, ptr %i.aul, align 4, !tbaa !11
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.aug, i64 %index760 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 16
  %wide.load763 = load <4 x float>, ptr %i.aum, align 4, !tbaa !11
  %wide.load764 = load <4 x float>, ptr %i.aun, align 4, !tbaa !11
  %i.auo = fmul <4 x float> %broadcast.splat758, %wide.load763
  %i.aup = fmul <4 x float> %broadcast.splat758, %wide.load764
  %i.auq = fadd <4 x float> %wide.load761, %i.auo
  %i.aur = fadd <4 x float> %wide.load762, %i.aup
  store <4 x float> %i.auq, ptr %i.auk, align 4, !tbaa !11
  store <4 x float> %i.aur, ptr %i.aul, align 4, !tbaa !11
  %index.next765 = add nuw i64 %index760, 8       ; 2 uses
  %i.aus = icmp eq i64 %index.next765, %n.vec756
  br i1 %i.aus, label %middle.block766, label %vector.body759, !llvm.loop !53

middle.block766:                                  ; preds = %vector.body759
  %cmp.n767 = icmp eq i64 %i.auj, %n.vec756
  br i1 %cmp.n767, label %daxpy.exit.i356, label %.lr.ph.i.i352.preheader

.lr.ph.i.i352.preheader:                          ; preds = %bb.au, %middle.block766
  %indvars.iv.i.i353.ph = phi i64 [ 0, %bb.au ], [ %n.vec756, %middle.block766 ]
  br label %.lr.ph.i.i352

.lr.ph.i.i352:                                    ; preds = %.lr.ph.i.i352.preheader, %.lr.ph.i.i352
  %indvars.iv.i.i353 = phi i64 [ %indvars.iv.next.i.i354, %.lr.ph.i.i352 ], [ %indvars.iv.i.i353.ph, %.lr.ph.i.i352.preheader ] ; 3 uses
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %indvars.iv.i.i353 ; 2 uses
  %i.auu = load float, ptr %i.aut, align 4, !tbaa !11
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %i.aug, i64 %indvars.iv.i.i353
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !11
  %i.aux = fmul float %i.aua, %i.auw
  %i.auy = fadd float %i.auu, %i.aux
  store float %i.auy, ptr %i.aut, align 4, !tbaa !11
  %indvars.iv.next.i.i354 = add nuw nsw i64 %indvars.iv.i.i353, 1 ; 2 uses
  %exitcond.not.i.i355 = icmp eq i64 %indvars.iv.next.i.i354, %i.auj
  br i1 %exitcond.not.i.i355, label %daxpy.exit.i356, label %.lr.ph.i.i352, !llvm.loop !54

daxpy.exit.i356:                                  ; preds = %.lr.ph.i.i352, %middle.block766, %bb.at
  %exitcond150.not.i357 = icmp eq i64 %indvars.iv.next147.i351, 99
  br i1 %exitcond150.not.i357, label %.lr.ph136.i359, label %bb.ar, !llvm.loop !21

.lr.ph136.i359:                                   ; preds = %daxpy.exit.i356, %daxpy.exit110.i368
  %indvars.iv151.i360 = phi i64 [ %indvars.iv.next152.i361, %daxpy.exit110.i368 ], [ 0, %daxpy.exit.i356 ] ; 4 uses
  %i.auz = sub nsw i64 99, %indvars.iv151.i360    ; 3 uses
  %indvars.iv.next152.i361 = add nuw nsw i64 %indvars.iv151.i360, 1 ; 2 uses
  %i.ava = sub nuw nsw i64 99, %indvars.iv151.i360 ; 5 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.ava ; 2 uses
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !11
  %i.avd = getelementptr [4 x i8], ptr @main.aa, i64 %i.ava
  %i.ave = mul nuw nsw i64 %i.ava, 800
  %i.avf = getelementptr i8, ptr %i.avd, i64 %i.ave
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !11
  %i.avh = fdiv float %i.avc, %i.avg              ; 4 uses
  store float %i.avh, ptr %i.avb, align 4, !tbaa !11
  %.idx384 = mul nuw nsw i64 %i.ava, 800
  %i.avi = getelementptr inbounds nuw i8, ptr @main.aa, i64 %.idx384 ; 2 uses
  %i.avj = icmp samesign ugt i64 %indvars.iv151.i360, 98
  %i.avk = fcmp oeq float %i.avh, 0.000000e+00
  %or.cond41.i104.i363 = or i1 %i.avj, %i.avk
  br i1 %or.cond41.i104.i363, label %daxpy.exit110.i368, label %.lr.ph.i106.i364.preheader

.lr.ph.i106.i364.preheader:                       ; preds = %.lr.ph136.i359
  %min.iters.check736 = icmp ult i64 %i.auz, 8
  br i1 %min.iters.check736, label %.lr.ph.i106.i364.preheader812, label %vector.ph737

vector.ph737:                                     ; preds = %.lr.ph.i106.i364.preheader
  %n.vec739 = and i64 %i.auz, -8                  ; 3 uses
  %broadcast.splatinsert740 = insertelement <4 x float> poison, float %i.avh, i64 0
  %broadcast.splat741 = shufflevector <4 x float> %broadcast.splatinsert740, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body742

vector.body742:                                   ; preds = %vector.body742, %vector.ph737
  %index743 = phi i64 [ 0, %vector.ph737 ], [ %index.next748, %vector.body742 ] ; 3 uses
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index743 ; 3 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avl, i64 16 ; 2 uses
  %wide.load744 = load <4 x float>, ptr %i.avl, align 16, !tbaa !11
  %wide.load745 = load <4 x float>, ptr %i.avm, align 16, !tbaa !11
  %i.avn = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %index743 ; 2 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 16
  %wide.load746 = load <4 x float>, ptr %i.avn, align 16, !tbaa !11
  %wide.load747 = load <4 x float>, ptr %i.avo, align 16, !tbaa !11
  %i.avp = fmul <4 x float> %broadcast.splat741, %wide.load746
  %i.avq = fmul <4 x float> %broadcast.splat741, %wide.load747
  %i.avr = fsub <4 x float> %wide.load744, %i.avp
  %i.avs = fsub <4 x float> %wide.load745, %i.avq
  store <4 x float> %i.avr, ptr %i.avl, align 16, !tbaa !11
  store <4 x float> %i.avs, ptr %i.avm, align 16, !tbaa !11
  %index.next748 = add nuw i64 %index743, 8       ; 2 uses
  %i.avt = icmp eq i64 %index.next748, %n.vec739
  br i1 %i.avt, label %middle.block749, label %vector.body742, !llvm.loop !55

middle.block749:                                  ; preds = %vector.body742
  %cmp.n750 = icmp eq i64 %i.auz, %n.vec739
  br i1 %cmp.n750, label %daxpy.exit110.i368, label %.lr.ph.i106.i364.preheader812

.lr.ph.i106.i364.preheader812:                    ; preds = %.lr.ph.i106.i364.preheader, %middle.block749
  %indvars.iv.i107.i365.ph = phi i64 [ 0, %.lr.ph.i106.i364.preheader ], [ %n.vec739, %middle.block749 ]
  br label %.lr.ph.i106.i364

.lr.ph.i106.i364:                                 ; preds = %.lr.ph.i106.i364.preheader812, %.lr.ph.i106.i364
  %indvars.iv.i107.i365 = phi i64 [ %indvars.iv.next.i108.i366, %.lr.ph.i106.i364 ], [ %indvars.iv.i107.i365.ph, %.lr.ph.i106.i364.preheader812 ] ; 3 uses
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i365 ; 2 uses
  %i.avv = load float, ptr %i.avu, align 4, !tbaa !11
  %i.avw = getelementptr inbounds nuw [4 x i8], ptr %i.avi, i64 %indvars.iv.i107.i365
  %i.avx = load float, ptr %i.avw, align 4, !tbaa !11
  %i.avy = fmul float %i.avh, %i.avx
  %i.avz = fsub float %i.avv, %i.avy
  store float %i.avz, ptr %i.avu, align 4, !tbaa !11
  %indvars.iv.next.i108.i366 = add nuw nsw i64 %indvars.iv.i107.i365, 1 ; 2 uses
  %exitcond.not.i109.i367 = icmp eq i64 %indvars.iv.next.i108.i366, %i.ava
  br i1 %exitcond.not.i109.i367, label %daxpy.exit110.i368, label %.lr.ph.i106.i364, !llvm.loop !56

daxpy.exit110.i368:                               ; preds = %.lr.ph.i106.i364, %middle.block749, %.lr.ph136.i359
  %exitcond155.not.i369 = icmp eq i64 %indvars.iv.next152.i361, 100
  br i1 %exitcond155.not.i369, label %dgesl.exit371, label %.lr.ph136.i359, !llvm.loop !24

dgesl.exit371:                                    ; preds = %daxpy.exit110.i368
  %i.awa = add nuw nsw i32 %storemerge84435, 1    ; 2 uses
  %exitcond473.not = icmp eq i32 %i.awa, %i.atu
  br i1 %exitcond473.not, label %._crit_edge436, label %.preheader, !llvm.loop !57

._crit_edge436:                                   ; preds = %dgesl.exit371, %bb.aq
  %i.awb = tail call i64 @clock() #12
  %i.awc = sitofp i64 %i.awb to float
  %i.awd = fdiv float %i.awc, 1.000000e+06
  %i.awe = fsub float %i.awd, %i.att
  %i.awf = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.awg = sitofp i32 %i.awf to float
  %i.awh = fdiv float %i.awe, %i.awg              ; 2 uses
  %i.awi = load i32, ptr @main.j, align 4, !tbaa !4 ; 3 uses
  %i.awj = sext i32 %i.awi to i64                 ; 6 uses
  %i.awk = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), i64 %i.awj
  store float %i.awh, ptr %i.awk, align 4, !tbaa !11
  %i.awl = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.awj
  %i.awm = load float, ptr %i.awl, align 4, !tbaa !11
  %i.awn = fadd float %i.awm, %i.awh              ; 3 uses
  %i.awo = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), i64 %i.awj
  store float %i.awn, ptr %i.awo, align 4, !tbaa !11
  %i.awp = fpext float %i.awn to double
  %i.awq = fmul double %i.awp, 1.000000e+06
  %i.awr = fdiv double f0x4124F49560000000, %i.awq
  %i.aws = fptrunc double %i.awr to float         ; 3 uses
  %i.awt = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), i64 %i.awj
  store float %i.aws, ptr %i.awt, align 4, !tbaa !11
  %i.awu = fdiv float 2.000000e+00, %i.aws
  %i.awv = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.awj
  store float %i.awu, ptr %i.awv, align 4, !tbaa !11
  %i.aww = fdiv float %i.awn, 5.600000e-02
  %i.awx = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.awj
  store float %i.aww, ptr %i.awx, align 4, !tbaa !11
  %i.awy = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awz = fadd float %i.awy, %i.aws              ; 2 uses
  store float %i.awz, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.axa = add nsw i32 %i.awi, 1
  store i32 %i.axa, ptr @main.j, align 4, !tbaa !4
  %i.axb = icmp slt i32 %i.awi, 11
  br i1 %i.axb, label %bb.aj, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %._crit_edge436
  %i.axc = fdiv float %i.awz, 5.000000e+00
  store float %i.axc, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.axd = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.axe = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.axd, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matgen(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef captures(none) %3, ptr noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !11
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader52.us.preheader, label %._crit_edge61

.preheader52.us.preheader:                        ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 7 uses
  br label %.preheader52.us

.preheader52.us:                                  ; preds = %.preheader52.us.preheader, %._crit_edge.us
  %indvars.iv64 = phi i64 [ 0, %.preheader52.us.preheader ], [ %indvars.iv.next65, %._crit_edge.us ] ; 2 uses
  %.04455.us = phi i32 [ 1325, %.preheader52.us.preheader ], [ %i.e, %._crit_edge.us ]
  %i.c = mul nsw i64 %indvars.iv64, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader52.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader52.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14553.us = phi i32 [ %.04455.us, %.preheader52.us ], [ %i.e, %bb.b ]
  %i.d = mul nuw nsw i32 %.14553.us, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, f0x38800000        ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.h, ptr %gep, align 4, !tbaa !11
  %i.i = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %..us = select i1 %i.j, float %i.h, float %i.i
  store float %..us, ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !13

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.us.preheader, label %.preheader52.us, !llvm.loop !15

.preheader.us.preheader:                          ; preds = %._crit_edge.us
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.l, i1 false), !tbaa !11
  %i.m = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count80 = zext nneg i32 %2 to i64    ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count67, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.n
  %i.o = add nuw nsw i64 %wide.trip.count67, 4611686018427387903
  %i.p = mul i64 %i.o, %i.m
  %i.q = add i64 %i.p, %wide.trip.count67
  %i.r = shl i64 %i.q, 2
  %scevgep84 = getelementptr i8, ptr %0, i64 %i.r
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %3, %scevgep84
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %1, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter = and i64 %wide.trip.count80, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us62
  %indvars.iv77 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next78, %._crit_edge.us62 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv77, %i.m
  %invariant.gep82 = getelementptr [4 x i8], ptr %0, i64 %i.t ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %wide.load85 = load <4 x float>, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %i.w = getelementptr [4 x i8], ptr %invariant.gep82, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load86 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !62
  %wide.load87 = load <4 x float>, ptr %i.x, align 4, !tbaa !11, !alias.scope !62
  %i.y = fadd <4 x float> %wide.load, %wide.load86
  %i.z = fadd <4 x float> %wide.load85, %wide.load87
  store <4 x float> %i.y, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  store <4 x float> %i.z, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us62, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us, %middle.block
  %indvars.iv72.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %scalar.ph.prol ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72.prol ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %gep83.prol = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72.prol
  %i.ad = load float, ptr %gep83.prol, align 4, !tbaa !11
  %i.ae = fadd float %i.ac, %i.ad
  store float %i.ae, ptr %i.ab, align 4, !tbaa !11
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %scalar.ph.preheader ], [ %indvars.iv.next73.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv72.ph, %wide.trip.count80
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge.us62, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %scalar.ph ], [ %indvars.iv72.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72
  %i.aj = load float, ptr %gep83, align 4, !tbaa !11
  %i.ak = fadd float %i.ai, %i.aj
  store float %i.ak, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %gep83.1 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73
  %i.an = load float, ptr %gep83.1, align 4, !tbaa !11
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %i.al, align 4, !tbaa !11
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.1 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %gep83.2 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.1
  %i.ar = load float, ptr %gep83.2, align 4, !tbaa !11
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %i.ap, align 4, !tbaa !11
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.2 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %gep83.3 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.2
  %i.av = load float, ptr %gep83.3, align 4, !tbaa !11
  %i.aw = fadd float %i.au, %i.av
  store float %i.aw, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count80
  br i1 %exitcond76.not.3, label %._crit_edge.us62, label %scalar.ph, !llvm.loop !67

._crit_edge.us62:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge61, label %.preheader.us, !llvm.loop !16

._crit_edge61:                                    ; preds = %._crit_edge.us62, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgefa(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.a = add i32 %2, -1                           ; 5 uses
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph103.preheader, label %.loopexit100

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = zext nneg i32 %2 to i64                  ; 4 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep117 = getelementptr i8, ptr %i.j, i64 %i.g
  %scevgep120 = getelementptr i8, ptr %0, i64 %i.g
  %i.k = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.l = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 15 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %5 = sub i64 %i.k, %indvars.iv107               ; 3 uses
  %6 = xor i64 %indvars.iv107, -1
  %7 = add nsw i64 %6, %i.d                       ; 3 uses
  %i.m = add nuw i64 %indvars.iv107, 1
  %i.n = mul i64 %i.f, %i.m
  %scevgep = getelementptr i8, ptr %0, i64 %i.n
  %i.o = shl nuw nsw i64 %indvars.iv107, 2
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep118 = getelementptr i8, ptr %i.p, i64 4
  %i.q = trunc i64 %indvars.iv107 to i32
  %i.r = mul i32 %1, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 2                      ; 2 uses
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.t
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.t
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %i.u = sub nsw i64 %i.d, %indvars.iv107
  %i.v = mul nsw i64 %indvars.iv107, %i.c
  %i.w = mul nsw i32 %1, %indvars109
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.x ; 7 uses
  %i.aa = icmp eq i64 %i.u, 1
  br i1 %i.aa, label %idamax.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph103
  %i.ab = load float, ptr %i.z, align 4, !tbaa !11
  %i.ac = tail call float @llvm.fabs.f32(float %i.ab) ; 2 uses
  %xtraiter = and i64 %5, 1
  %i.ad = icmp eq i64 %i.l, %indvars.iv107
  br i1 %i.ad, label %.lr.ph48.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %5, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.new
  %indvars.iv52.i = phi i64 [ 1, %.new ], [ %indvars.iv.next53.i.1, %.lr.ph48.i ] ; 4 uses
  %.247.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph48.i ]
  %.23345.i = phi float [ %i.ac, %.new ], [ %.334.i.1, %.lr.ph48.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph48.i ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i
  %i.af = load float, ptr %i.ae, align 4, !tbaa !11
  %i.ag = tail call float @llvm.fabs.f32(float %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, %.23345.i         ; 2 uses
  %.334.i = select i1 %i.ah, float %i.ag, float %.23345.i ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.ah, i32 %i.ai, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next53.i
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !11
  %i.al = tail call float @llvm.fabs.f32(float %i.ak) ; 2 uses
  %i.am = fcmp ogt float %i.al, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.am, float %i.al, float %.334.i ; 2 uses
  %i.an = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.am, i32 %i.an, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !27

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %bb.b
  %indvars.iv52.i.epil.init = phi i64 [ 1, %bb.b ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %bb.b ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %i.ac, %bb.b ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i.epil.init
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !11
  %i.aq = tail call float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp ogt float %i.aq, %.23345.i.epil.init
  %i.as = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %.3.i.epil = select i1 %i.ar, i32 %i.as, i32 %.247.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %.lr.ph48.i.epil.preheader, %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %.035.i = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ], [ %.3.i.epil, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %i.at = add nsw i32 %.035.i, %indvars109        ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv107
  store i32 %i.at, ptr %i.au, align 4, !tbaa !4
  %i.av = sext i32 %i.at to i64                   ; 2 uses
  %i.aw = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !11 ; 3 uses
  %i.az = fcmp une float %i.ay, 0.000000e+00
  br i1 %i.az, label %bb.c, label %bb.h

bb.c:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.035.i, 0                  ; 2 uses
  %.pre = load float, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %.pre, ptr %i.ax, align 4, !tbaa !11
  store float %i.ay, ptr %i.z, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = phi float [ %i.ay, %bb.d ], [ %.pre, %bb.c ]
  %i.bb = fdiv float -1.000000e+00, %i.ba         ; 2 uses
  %i.bc = sub nsw i64 %i.d, %indvars.iv.next108   ; 5 uses
  %i.bd = getelementptr i8, ptr %i.z, i64 4       ; 6 uses
  %min.iters.check126 = icmp ult i64 %i.bc, 8
  br i1 %min.iters.check126, label %.lr.ph25.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.e
  %n.vec129 = and i64 %i.bc, -8                   ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next136, %vector.body132 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index133 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %wide.load134 = load <4 x float>, ptr %i.be, align 4, !tbaa !11
  %wide.load135 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %i.bg = fmul <4 x float> %broadcast.splat131, %wide.load134
  %i.bh = fmul <4 x float> %broadcast.splat131, %wide.load135
  store <4 x float> %i.bg, ptr %i.be, align 4, !tbaa !11
  store <4 x float> %i.bh, ptr %i.bf, align 4, !tbaa !11
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.bi, label %middle.block137, label %vector.body132, !llvm.loop !68

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.bc, %n.vec129
  br i1 %cmp.n138, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.e, %middle.block137
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.e ], [ %n.vec129, %middle.block137 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv28.i ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !11
  %i.bl = fmul float %i.bb, %i.bk
  store float %i.bl, ptr %i.bj, align 4, !tbaa !11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.bc
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block137
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.av
  %min.iters.check = icmp ult i64 %7, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep121
  %bound1 = icmp ult ptr %scevgep119, %scevgep117
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %7, -8                         ; 3 uses
  %cmp.n = icmp eq i64 %7, %n.vec
  %i.bn = sub i64 %i.k, %indvars.iv107
  %xtraiter143 = and i64 %i.bn, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bo = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo ; 2 uses
  %i.bp = load float, ptr %gep, align 4, !tbaa !11 ; 6 uses
  %.pre112 = add nsw i64 %i.bo, %indvars.iv107    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre112 ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !11
  store float %i.br, ptr %gep, align 4, !tbaa !11
  store float %i.bp, ptr %i.bq, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.g
  %i.bs = getelementptr [4 x i8], ptr %0, i64 %.pre112
  %i.bt = getelementptr i8, ptr %i.bs, i64 4      ; 4 uses
  %i.bu = fcmp oeq float %i.bp, 0.000000e+00
  br i1 %i.bu, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bm
  br i1 %brmerge, label %.lr.ph.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bp, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bv, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %wide.load122 = load <4 x float>, ptr %i.bw, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load123 = load <4 x float>, ptr %i.bx, align 4, !tbaa !11, !alias.scope !73
  %wide.load124 = load <4 x float>, ptr %i.by, align 4, !tbaa !11, !alias.scope !73
  %i.bz = fmul <4 x float> %broadcast.splat, %wide.load123
  %i.ca = fmul <4 x float> %broadcast.splat, %wide.load124
  %i.cb = fadd <4 x float> %wide.load, %i.bz
  %i.cc = fadd <4 x float> %wide.load122, %i.ca
  store <4 x float> %i.cb, ptr %i.bv, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  store <4 x float> %i.cc, ptr %i.bw, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader140

.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.ce = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod144.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader140
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i.ph ; 2 uses
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !11
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.ph
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !11
  %i.cj = fmul float %i.bp, %i.ci
  %i.ck = fadd float %i.cg, %i.cj
  store float %i.ck, ptr %i.cf, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader140
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader140 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.cl = icmp eq i64 %i.l, %i.ce
  br i1 %i.cl, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.i ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.cp = load float, ptr %i.co, align 4, !tbaa !11
  %i.cq = fmul float %i.bp, %i.cp
  %i.cr = fadd float %i.cn, %i.cq
  store float %i.cr, ptr %i.cm, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.next.i ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !11
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !11
  %i.cw = fmul float %i.bp, %i.cv
  %i.cx = fadd float %i.ct, %i.cw
  store float %i.cx, ptr %i.cs, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i.1, %i.bc
  br i1 %exitcond.not.i99.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !76

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !32

bb.h:                                             ; preds = %idamax.exit
  store i32 %indvars109, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %daxpy.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit100, label %.lr.ph103, !llvm.loop !33

.loopexit100:                                     ; preds = %.loopexit, %bb.a
  %i.cy = sext i32 %i.a to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cy
  store i32 %i.a, ptr %i.cz, align 4, !tbaa !4
  %i.da = add i32 %1, 1
  %i.db = mul i32 %i.a, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !11
  %i.df = fcmp oeq float %i.de, 0.000000e+00
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit100
  store i32 %i.a, ptr %4, align 4, !tbaa !4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, ptr noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %.preheader127

.preheader127:                                    ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.d = sext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph133, label %.loopexit124

.lr.ph133:                                        ; preds = %bb.b
  %i.f = add i32 %1, 1                            ; 2 uses
  %i.g = zext nneg i32 %2 to i64                  ; 5 uses
  %wide.trip.count149 = zext nneg i32 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %scevgep164 = getelementptr i8, ptr %4, i64 %i.h
  %scevgep165 = getelementptr i8, ptr %0, i64 4
  %i.i = add nsw i64 %i.g, -2
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph133, %daxpy.exit
  %indvars.iv146 = phi i64 [ 0, %.lr.ph133 ], [ %indvars.iv.next147, %daxpy.exit ] ; 10 uses
  %i.j = shl nuw nsw i64 %indvars.iv146, 2
  %i.k = getelementptr i8, ptr %4, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.k, i64 4
  %i.l = trunc i64 %indvars.iv146 to i32
  %i.m = mul i32 %i.f, %i.l
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %i.o
  %i.p = sub nsw i64 %i.g, %indvars.iv146
  %i.q = shl i64 %i.p, 2
  %scevgep167 = getelementptr i8, ptr %0, i64 %i.q
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %i.o
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv146
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %4, i64 %i.t ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !11 ; 6 uses
  %i.w = zext i32 %i.s to i64
  %.not103 = icmp eq i64 %indvars.iv146, %i.w
  br i1 %.not103, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv146 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !11
  store float %i.y, ptr %i.u, align 4, !tbaa !11
  store float %i.v, ptr %i.x, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 4 uses
  %i.z = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.aa = mul i32 %i.f, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [4 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 4      ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next147 ; 4 uses
  %i.af = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.af, label %daxpy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = sub nsw i64 %i.g, %indvars.iv.next147   ; 4 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.f
  %bound0 = icmp ult ptr %scevgep, %scevgep168
  %bound1 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %wide.load169 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load170 = load <4 x float>, ptr %i.aj, align 4, !tbaa !11, !alias.scope !80
  %wide.load171 = load <4 x float>, ptr %i.ak, align 4, !tbaa !11, !alias.scope !80
  %i.al = fmul <4 x float> %broadcast.splat, %wide.load170
  %i.am = fmul <4 x float> %broadcast.splat, %wide.load171
  %i.an = fadd <4 x float> %wide.load, %i.al
  %i.ao = fadd <4 x float> %wide.load169, %i.am
  store <4 x float> %i.an, ptr %i.ah, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  store <4 x float> %i.ao, ptr %i.ai, align 4, !tbaa !11, !alias.scope !77, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %bb.f, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.f ], [ %n.vec, %middle.block ] ; 5 uses
  %i.aq = add i64 %indvars.iv146, %indvars.iv.i.ph
  %i.ar = sub nsw i64 %indvars.iv146, %i.g
  %i.as = and i64 %i.ar, 1
  %lcmp.mod209.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod209.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i.ph ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.ph
  %i.aw = load float, ptr %i.av, align 4, !tbaa !11
  %i.ax = fmul float %i.v, %i.aw
  %i.ay = fadd float %i.au, %i.ax
  store float %i.ay, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.az = icmp eq i64 %i.i, %i.aq
  br i1 %i.az, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !11
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %i.be = fmul float %i.v, %i.bd
  %i.bf = fadd float %i.bb, %i.be
  store float %i.bf, ptr %i.ba, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %i.bk = fmul float %i.v, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  store float %i.bl, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.ag
  br i1 %exitcond.not.i.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !83

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.e
  %exitcond150.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count149
  br i1 %exitcond150.not, label %.loopexit124, label %bb.c, !llvm.loop !21

.loopexit124:                                     ; preds = %daxpy.exit, %bb.b
  %i.bm = icmp sgt i32 %2, 0
  br i1 %i.bm, label %.lr.ph136.preheader, label %.loopexit

.lr.ph136.preheader:                              ; preds = %.loopexit124
  %i.bn = zext nneg i32 %2 to i64                 ; 6 uses
  %i.bo = sext i32 %1 to i64                      ; 4 uses
  %wide.trip.count154 = zext nneg i32 %2 to i64
  %i.bp = shl nuw nsw i64 %i.bn, 2                ; 2 uses
  %i.bq = add nsw i64 %i.bp, -4
  %i.br = add nuw nsw i64 %i.bn, 4611686018427387903
  %i.bs = mul i64 %i.br, %i.bo
  %i.bt = shl i64 %i.bs, 2                        ; 2 uses
  %i.bu = mul nsw i64 %i.bo, -4
  %i.bv = shl nsw i64 %i.bo, 2
  %i.bw = sub nuw nsw i64 -4, %i.bv
  %i.bx = add nsw i64 %i.bn, -2
  %i.by = getelementptr i8, ptr %0, i64 %i.bt
  %i.bz = getelementptr i8, ptr %0, i64 %i.bt
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bp
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %daxpy.exit110
  %indvars.iv151 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next152, %daxpy.exit110 ] ; 7 uses
  %i.cc = xor i64 %indvars.iv151, -1
  %i.cd = add nsw i64 %i.cc, %i.bn                ; 3 uses
  %i.ce = shl i64 %indvars.iv151, 2
  %i.cf = sub i64 %i.bq, %i.ce
  %scevgep173 = getelementptr i8, ptr %4, i64 %i.cf
  %i.cg = mul i64 %i.bu, %indvars.iv151
  %scevgep174 = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ch = mul i64 %i.bw, %indvars.iv151
  %scevgep175 = getelementptr i8, ptr %i.cb, i64 %i.ch
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 4 uses
  %indvars = trunc i64 %indvars.iv.next152 to i32
  %i.ci = sub nsw i64 %i.bn, %indvars.iv.next152  ; 5 uses
  %i.cj = sub nsw i32 %2, %indvars
  %i.ck = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ci ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !11
  %i.cm = mul nsw i64 %i.ci, %i.bo
  %i.cn = mul nsw i32 %i.cj, %1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %0, i64 %i.ci
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !11
  %i.cs = fdiv float %i.cl, %i.cr                 ; 6 uses
  store float %i.cs, ptr %i.ck, align 4, !tbaa !11
  %i.ct = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cm ; 4 uses
  %i.cu = icmp slt i64 %i.ci, 1
  %i.cv = fcmp oeq float %i.cs, 0.000000e+00
  %or.cond41.i104 = or i1 %i.cu, %i.cv
  br i1 %or.cond41.i104, label %daxpy.exit110, label %.lr.ph.i106.preheader

.lr.ph.i106.preheader:                            ; preds = %.lr.ph136
  %min.iters.check180 = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check180, label %.lr.ph.i106.preheader196, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph.i106.preheader
  %bound0176 = icmp ult ptr %4, %scevgep175
  %bound1177 = icmp ult ptr %scevgep174, %scevgep173
  %found.conflict178 = and i1 %bound0176, %bound1177
  br i1 %found.conflict178, label %.lr.ph.i106.preheader196, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck172
  %n.vec183 = and i64 %i.cd, -8                   ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %i.cs, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph181
  %index187 = phi i64 [ 0, %vector.ph181 ], [ %index.next192, %vector.body186 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index187 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %wide.load188 = load <4 x float>, ptr %i.cw, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %wide.load189 = load <4 x float>, ptr %i.cx, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load190 = load <4 x float>, ptr %i.cy, align 4, !tbaa !11, !alias.scope !87
  %wide.load191 = load <4 x float>, ptr %i.cz, align 4, !tbaa !11, !alias.scope !87
  %i.da = fmul <4 x float> %broadcast.splat185, %wide.load190
  %i.db = fmul <4 x float> %broadcast.splat185, %wide.load191
  %i.dc = fsub <4 x float> %wide.load188, %i.da
  %i.dd = fsub <4 x float> %wide.load189, %i.db
  store <4 x float> %i.dc, ptr %i.cw, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  store <4 x float> %i.dd, ptr %i.cx, align 4, !tbaa !11, !alias.scope !84, !noalias !87
  %index.next192 = add nuw i64 %index187, 8       ; 2 uses
  %i.de = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.de, label %middle.block193, label %vector.body186, !llvm.loop !89

middle.block193:                                  ; preds = %vector.body186
  %cmp.n194 = icmp eq i64 %i.cd, %n.vec183
  br i1 %cmp.n194, label %daxpy.exit110, label %.lr.ph.i106.preheader196

.lr.ph.i106.preheader196:                         ; preds = %vector.memcheck172, %.lr.ph.i106.preheader, %middle.block193
  %indvars.iv.i107.ph = phi i64 [ 0, %vector.memcheck172 ], [ 0, %.lr.ph.i106.preheader ], [ %n.vec183, %middle.block193 ] ; 5 uses
  %i.df = add i64 %indvars.iv151, %indvars.iv.i107.ph
  %i.dg = sub nsw i64 %indvars.iv151, %i.bn
  %i.dh = and i64 %i.dg, 1
  %lcmp.mod211.not.not = icmp eq i64 %i.dh, 0
  br i1 %lcmp.mod211.not.not, label %.lr.ph.i106.prol, label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol:                                 ; preds = %.lr.ph.i106.preheader196
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107.ph ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !11
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i107.ph
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !11
  %i.dm = fmul float %i.cs, %i.dl
  %i.dn = fsub float %i.dj, %i.dm
  store float %i.dn, ptr %i.di, align 4, !tbaa !11
  %indvars.iv.next.i108.prol = or disjoint i64 %indvars.iv.i107.ph, 1
  br label %.lr.ph.i106.prol.loopexit

.lr.ph.i106.prol.loopexit:                        ; preds = %.lr.ph.i106.prol, %.lr.ph.i106.preheader196
  %indvars.iv.i107.unr = phi i64 [ %indvars.iv.i107.ph, %.lr.ph.i106.preheader196 ], [ %indvars.iv.next.i108.prol, %.lr.ph.i106.prol ]
  %i.do = icmp eq i64 %i.bx, %i.df
  br i1 %i.do, label %daxpy.exit110, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106
  %indvars.iv.i107 = phi i64 [ %indvars.iv.next.i108.1, %.lr.ph.i106 ], [ %indvars.iv.i107.unr, %.lr.ph.i106.prol.loopexit ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i107 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !11
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i107
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !11
  %i.dt = fmul float %i.cs, %i.ds
  %i.du = fsub float %i.dq, %i.dt
  store float %i.du, ptr %i.dp, align 4, !tbaa !11
  %indvars.iv.next.i108 = add nuw nsw i64 %indvars.iv.i107, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i108 ; 2 uses
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !11
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i108
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !11
  %i.dz = fmul float %i.cs, %i.dy
  %i.ea = fsub float %i.dw, %i.dz
  store float %i.ea, ptr %i.dv, align 4, !tbaa !11
  %indvars.iv.next.i108.1 = add nuw nsw i64 %indvars.iv.i107, 2 ; 2 uses
  %exitcond.not.i109.1 = icmp eq i64 %indvars.iv.next.i108.1, %i.ci
  br i1 %exitcond.not.i109.1, label %daxpy.exit110, label %.lr.ph.i106, !llvm.loop !90

daxpy.exit110:                                    ; preds = %.lr.ph.i106.prol.loopexit, %.lr.ph.i106, %middle.block193, %.lr.ph136
  %exitcond155.not = icmp eq i64 %indvars.iv.next152, %wide.trip.count154
  br i1 %exitcond155.not, label %.loopexit, label %.lr.ph136, !llvm.loop !24

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ddot.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ddot.exit ] ; 9 uses
  %indvars140 = trunc i64 %indvars.iv to i32
  %i.eb = mul nsw i64 %indvars.iv, %i.d
  %i.ec = mul nsw i32 %1, %indvars140
  %i.ed = getelementptr inbounds [4 x i8], ptr %0, i64 %i.eb ; 5 uses
end_hunk_2
