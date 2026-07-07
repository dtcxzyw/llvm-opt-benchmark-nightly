inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
  %.promoted885 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted888 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted891 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted894 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted897 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted900 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted903 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted906 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted909 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted912 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted915 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted918 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted921 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted924 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted927 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted930 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted933 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted936 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted939 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted942 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted944 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted946 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted948 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i

bb.b:                                             ; preds = %bb.b, %.preheader52.i
  %indvars.iv.i = phi i64 [ 0, %.preheader52.i ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %.14553.i = phi i32 [ %.04455.i, %.preheader52.i ], [ %i.q, %bb.b ] ; 2 uses
  %i.k = mul nuw nsw i32 %.14553.i, 3125
  %i.l = and i32 %i.k, 65535
  %i.m = add nsw i32 %i.l, -32768
  %i.n = sitofp i32 %i.m to float
  %i.o = fmul nnan float %i.n, f0x38800000
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store float %i.o, ptr %gep.i, align 4, !tbaa !11
  %i.p = mul nsw i32 %.14553.i, 761
  %i.q = and i32 %i.p, 65535                      ; 3 uses
  %i.r = add nsw i32 %i.q, -32768
  %i.s = sitofp i32 %i.r to float
  %i.t = fmul nnan float %i.s, f0x38800000
  %i.u = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %gep.i.1 = getelementptr i8, ptr %i.u, i64 4
  store float %i.t, ptr %gep.i.1, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 100
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.b, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.b
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, 100
  br i1 %exitcond68.not.i, label %.preheader51.i, label %.preheader52.i, !llvm.loop !15

.preheader.i:                                     ; preds = %.preheader.i, %.preheader51.i
  %i.v = phi float [ %.promoted948, %.preheader51.i ], [ %i.cc, %.preheader.i ]
  %i.w = phi float [ %.promoted946, %.preheader51.i ], [ %i.ca, %.preheader.i ]
  %i.x = phi float [ %.promoted944, %.preheader51.i ], [ %i.by, %.preheader.i ]
  %i.y = phi float [ %.promoted942, %.preheader51.i ], [ %i.bw, %.preheader.i ]
  %wide.load530.11940 = phi <4 x float> [ %.promoted939, %.preheader51.i ], [ %i.bu, %.preheader.i ]
  %wide.load.11937 = phi <4 x float> [ %.promoted936, %.preheader51.i ], [ %i.bt, %.preheader.i ]
  %wide.load530.10934 = phi <4 x float> [ %.promoted933, %.preheader51.i ], [ %i.bq, %.preheader.i ]
  %wide.load.10931 = phi <4 x float> [ %.promoted930, %.preheader51.i ], [ %i.bp, %.preheader.i ]
  %wide.load530.9928 = phi <4 x float> [ %.promoted927, %.preheader51.i ], [ %i.bm, %.preheader.i ]
  %wide.load.9925 = phi <4 x float> [ %.promoted924, %.preheader51.i ], [ %i.bl, %.preheader.i ]
  %wide.load530.8922 = phi <4 x float> [ %.promoted921, %.preheader51.i ], [ %i.bi, %.preheader.i ]
  %wide.load.8919 = phi <4 x float> [ %.promoted918, %.preheader51.i ], [ %i.bh, %.preheader.i ]
  %wide.load530.7916 = phi <4 x float> [ %.promoted915, %.preheader51.i ], [ %i.be, %.preheader.i ]
  %wide.load.7913 = phi <4 x float> [ %.promoted912, %.preheader51.i ], [ %i.bd, %.preheader.i ]
  %wide.load530.6910 = phi <4 x float> [ %.promoted909, %.preheader51.i ], [ %i.ba, %.preheader.i ]
  %wide.load.6907 = phi <4 x float> [ %.promoted906, %.preheader51.i ], [ %i.az, %.preheader.i ]
  %wide.load530.5904 = phi <4 x float> [ %.promoted903, %.preheader51.i ], [ %i.aw, %.preheader.i ]
  %wide.load.5901 = phi <4 x float> [ %.promoted900, %.preheader51.i ], [ %i.av, %.preheader.i ]
  %wide.load530.4898 = phi <4 x float> [ %.promoted897, %.preheader51.i ], [ %i.as, %.preheader.i ]
  %wide.load.4895 = phi <4 x float> [ %.promoted894, %.preheader51.i ], [ %i.ar, %.preheader.i ]
  %wide.load530.3892 = phi <4 x float> [ %.promoted891, %.preheader51.i ], [ %i.ao, %.preheader.i ]
  %wide.load.3889 = phi <4 x float> [ %.promoted888, %.preheader51.i ], [ %i.an, %.preheader.i ]
  %wide.load530.2886 = phi <4 x float> [ %.promoted885, %.preheader51.i ], [ %i.ak, %.preheader.i ]
  %wide.load.2883 = phi <4 x float> [ %.promoted882, %.preheader51.i ], [ %i.aj, %.preheader.i ]
  %wide.load530.1880 = phi <4 x float> [ %.promoted879, %.preheader51.i ], [ %i.ag, %.preheader.i ]
  %wide.load.1877 = phi <4 x float> [ %.promoted876, %.preheader51.i ], [ %i.af, %.preheader.i ]
  %i.z = phi <4 x float> [ %.promoted, %.preheader51.i ], [ %i.ac, %.preheader.i ]
  %wide.load873 = phi <4 x float> [ %main.b.promoted, %.preheader51.i ], [ %i.ab, %.preheader.i ]
  %indvars.iv77.i = phi i64 [ 0, %.preheader51.i ], [ %indvars.iv.next78.i, %.preheader.i ] ; 2 uses
  %invariant.gep82.i.idx = mul nuw nsw i64 %indvars.iv77.i, 804
  %invariant.gep82.i = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i.idx ; 28 uses
  %i.aa = getelementptr i8, ptr %invariant.gep82.i, i64 16
  %wide.load531 = load <4 x float>, ptr %invariant.gep82.i, align 4, !tbaa !11
  %wide.load532 = load <4 x float>, ptr %i.aa, align 4, !tbaa !11
  %i.ab = fadd <4 x float> %wide.load873, %wide.load531 ; 2 uses
  %i.ac = fadd <4 x float> %i.z, %wide.load532    ; 2 uses
  %i.ad = getelementptr i8, ptr %invariant.gep82.i, i64 32
  %i.ae = getelementptr i8, ptr %invariant.gep82.i, i64 48
  %wide.load531.1 = load <4 x float>, ptr %i.ad, align 4, !tbaa !11
  %wide.load532.1 = load <4 x float>, ptr %i.ae, align 4, !tbaa !11
  %i.af = fadd <4 x float> %wide.load.1877, %wide.load531.1 ; 2 uses
  %i.ag = fadd <4 x float> %wide.load530.1880, %wide.load532.1 ; 2 uses
  %i.ah = getelementptr i8, ptr %invariant.gep82.i, i64 64
  %i.ai = getelementptr i8, ptr %invariant.gep82.i, i64 80
  %wide.load531.2 = load <4 x float>, ptr %i.ah, align 4, !tbaa !11
  %wide.load532.2 = load <4 x float>, ptr %i.ai, align 4, !tbaa !11
  %i.aj = fadd <4 x float> %wide.load.2883, %wide.load531.2 ; 2 uses
  %i.ak = fadd <4 x float> %wide.load530.2886, %wide.load532.2 ; 2 uses
  %i.al = getelementptr i8, ptr %invariant.gep82.i, i64 96
  %i.am = getelementptr i8, ptr %invariant.gep82.i, i64 112
  %wide.load531.3 = load <4 x float>, ptr %i.al, align 4, !tbaa !11
  %wide.load532.3 = load <4 x float>, ptr %i.am, align 4, !tbaa !11
  %i.an = fadd <4 x float> %wide.load.3889, %wide.load531.3 ; 2 uses
  %i.ao = fadd <4 x float> %wide.load530.3892, %wide.load532.3 ; 2 uses
  %i.ap = getelementptr i8, ptr %invariant.gep82.i, i64 128
  %i.aq = getelementptr i8, ptr %invariant.gep82.i, i64 144
  %wide.load531.4 = load <4 x float>, ptr %i.ap, align 4, !tbaa !11
  %wide.load532.4 = load <4 x float>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = fadd <4 x float> %wide.load.4895, %wide.load531.4 ; 2 uses
  %i.as = fadd <4 x float> %wide.load530.4898, %wide.load532.4 ; 2 uses
  %i.at = getelementptr i8, ptr %invariant.gep82.i, i64 160
  %i.au = getelementptr i8, ptr %invariant.gep82.i, i64 176
  %wide.load531.5 = load <4 x float>, ptr %i.at, align 4, !tbaa !11
  %wide.load532.5 = load <4 x float>, ptr %i.au, align 4, !tbaa !11
  %i.av = fadd <4 x float> %wide.load.5901, %wide.load531.5 ; 2 uses
  %i.aw = fadd <4 x float> %wide.load530.5904, %wide.load532.5 ; 2 uses
  %i.ax = getelementptr i8, ptr %invariant.gep82.i, i64 192
  %i.ay = getelementptr i8, ptr %invariant.gep82.i, i64 208
  %wide.load531.6 = load <4 x float>, ptr %i.ax, align 4, !tbaa !11
  %wide.load532.6 = load <4 x float>, ptr %i.ay, align 4, !tbaa !11
  %i.az = fadd <4 x float> %wide.load.6907, %wide.load531.6 ; 2 uses
  %i.ba = fadd <4 x float> %wide.load530.6910, %wide.load532.6 ; 2 uses
  %i.bb = getelementptr i8, ptr %invariant.gep82.i, i64 224
  %i.bc = getelementptr i8, ptr %invariant.gep82.i, i64 240
  %wide.load531.7 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load532.7 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fadd <4 x float> %wide.load.7913, %wide.load531.7 ; 2 uses
  %i.be = fadd <4 x float> %wide.load530.7916, %wide.load532.7 ; 2 uses
  %i.bf = getelementptr i8, ptr %invariant.gep82.i, i64 256
  %i.bg = getelementptr i8, ptr %invariant.gep82.i, i64 272
  %wide.load531.8 = load <4 x float>, ptr %i.bf, align 4, !tbaa !11
  %wide.load532.8 = load <4 x float>, ptr %i.bg, align 4, !tbaa !11
  %i.bh = fadd <4 x float> %wide.load.8919, %wide.load531.8 ; 2 uses
  %i.bi = fadd <4 x float> %wide.load530.8922, %wide.load532.8 ; 2 uses
  %i.bj = getelementptr i8, ptr %invariant.gep82.i, i64 288
  %i.bk = getelementptr i8, ptr %invariant.gep82.i, i64 304
  %wide.load531.9 = load <4 x float>, ptr %i.bj, align 4, !tbaa !11
  %wide.load532.9 = load <4 x float>, ptr %i.bk, align 4, !tbaa !11
  %i.bl = fadd <4 x float> %wide.load.9925, %wide.load531.9 ; 2 uses
  %i.bm = fadd <4 x float> %wide.load530.9928, %wide.load532.9 ; 2 uses
  %i.bn = getelementptr i8, ptr %invariant.gep82.i, i64 320
  %i.bo = getelementptr i8, ptr %invariant.gep82.i, i64 336
  %wide.load531.10 = load <4 x float>, ptr %i.bn, align 4, !tbaa !11
  %wide.load532.10 = load <4 x float>, ptr %i.bo, align 4, !tbaa !11
  %i.bp = fadd <4 x float> %wide.load.10931, %wide.load531.10 ; 2 uses
  %i.bq = fadd <4 x float> %wide.load530.10934, %wide.load532.10 ; 2 uses
  %i.br = getelementptr i8, ptr %invariant.gep82.i, i64 352
  %i.bs = getelementptr i8, ptr %invariant.gep82.i, i64 368
  %wide.load531.11 = load <4 x float>, ptr %i.br, align 4, !tbaa !11
  %wide.load532.11 = load <4 x float>, ptr %i.bs, align 4, !tbaa !11
  %i.bt = fadd <4 x float> %wide.load.11937, %wide.load531.11 ; 2 uses
  %i.bu = fadd <4 x float> %wide.load530.11940, %wide.load532.11 ; 2 uses
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
  br i1 %exitcond81.not.i, label %matgen.exit, label %.preheader.i, !llvm.loop !16

matgen.exit:                                      ; preds = %.preheader.i
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
  %0 = fdiv float %i.ce, 1.000000e+06
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info)
  %1 = tail call i64 @clock() #12
  %2 = sitofp i64 %1 to float
  %3 = fdiv float %2, 1.000000e+06
  %4 = fsub float %3, %0
  store float %4, ptr @atime, align 16, !tbaa !11
  %i.cf = tail call i64 @clock() #12
  br label %bb.c

bb.c:                                             ; preds = %daxpy.exit.i, %matgen.exit
  %indvars.iv146.i = phi i64 [ 0, %matgen.exit ], [ %indvars.iv.next147.i, %daxpy.exit.i ] ; 7 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.ci ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11 ; 4 uses
  %i.cl = zext i32 %i.ch to i64
  %.not103.i = icmp eq i64 %indvars.iv146.i, %i.cl
  br i1 %.not103.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !11
  store float %i.cn, ptr %i.cj, align 4, !tbaa !11
  store float %i.ck, ptr %i.cm, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 3 uses
  %i.co = mul nuw nsw i64 %indvars.iv146.i, 808
  %i.cp = getelementptr i8, ptr @main.a, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 4      ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i ; 2 uses
  %i.cs = fcmp oeq float %i.ck, 0.000000e+00
  br i1 %i.cs, label %daxpy.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = sub nuw nsw i64 99, %indvars.iv146.i    ; 3 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv146.i, 91
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph534

vector.ph534:                                     ; preds = %bb.f
  %n.vec = and i64 %i.ct, 120                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph534
  %index536 = phi i64 [ 0, %vector.ph534 ], [ %index.next541, %vector.body535 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %index536 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %wide.load537 = load <4 x float>, ptr %i.cu, align 4, !tbaa !11
  %wide.load538 = load <4 x float>, ptr %i.cv, align 4, !tbaa !11
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index536 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load539 = load <4 x float>, ptr %i.cw, align 4, !tbaa !11
  %wide.load540 = load <4 x float>, ptr %i.cx, align 4, !tbaa !11
  %i.cy = fmul <4 x float> %broadcast.splat, %wide.load539
  %i.cz = fmul <4 x float> %broadcast.splat, %wide.load540
  %i.da = fadd <4 x float> %wide.load537, %i.cy
  %i.db = fadd <4 x float> %wide.load538, %i.cz
  store <4 x float> %i.da, ptr %i.cu, align 4, !tbaa !11
  store <4 x float> %i.db, ptr %i.cv, align 4, !tbaa !11
  %index.next541 = add nuw i64 %index536, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next541, %n.vec
  br i1 %i.dc, label %middle.block542, label %vector.body535, !llvm.loop !17

middle.block542:                                  ; preds = %vector.body535
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br i1 %cmp.n, label %daxpy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %middle.block542
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.f ], [ %n.vec, %middle.block542 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i.i ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !11
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.i
  %i.dg = load float, ptr %i.df, align 4, !tbaa !11
  %i.dh = fmul float %i.ck, %i.dg
  %i.di = fadd float %i.de, %i.dh
  store float %i.di, ptr %i.dd, align 4, !tbaa !11
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ct
  br i1 %exitcond.not.i.i, label %daxpy.exit.i, label %.lr.ph.i.i, !llvm.loop !20

daxpy.exit.i:                                     ; preds = %.lr.ph.i.i, %middle.block542, %bb.e
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next147.i, 99
  br i1 %exitcond150.not.i, label %.lr.ph136.i, label %bb.c, !llvm.loop !21

.lr.ph136.i:                                      ; preds = %daxpy.exit.i, %daxpy.exit110.i
  %indvars.iv151.i = phi i64 [ %indvars.iv.next152.i, %daxpy.exit110.i ], [ 0, %daxpy.exit.i ] ; 4 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.dj = sub nuw nsw i64 99, %indvars.iv151.i    ; 7 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.dj ; 2 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !11
  %i.dm = getelementptr [4 x i8], ptr @main.a, i64 %i.dj
  %i.dn = mul nuw nsw i64 %i.dj, 804
  %i.do = getelementptr i8, ptr %i.dm, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !11
  %i.dq = fdiv float %i.dl, %i.dp                 ; 4 uses
  store float %i.dq, ptr %i.dk, align 4, !tbaa !11
  %.idx = mul nuw nsw i64 %i.dj, 804
  %i.dr = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx ; 2 uses
  %i.ds = icmp samesign ugt i64 %indvars.iv151.i, 98
  %i.dt = fcmp oeq float %i.dq, 0.000000e+00
  %or.cond41.i104.i = or i1 %i.ds, %i.dt
  br i1 %or.cond41.i104.i, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader

.lr.ph.i106.i.preheader:                          ; preds = %.lr.ph136.i
  %min.iters.check544 = icmp samesign ugt i64 %indvars.iv151.i, 91
  br i1 %min.iters.check544, label %.lr.ph.i106.i.preheader830, label %vector.ph545

vector.ph545:                                     ; preds = %.lr.ph.i106.i.preheader
  %n.vec547 = and i64 %i.dj, 120                  ; 3 uses
  %broadcast.splatinsert548 = insertelement <4 x float> poison, float %i.dq, i64 0
  %broadcast.splat549 = shufflevector <4 x float> %broadcast.splatinsert548, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body550

vector.body550:                                   ; preds = %vector.body550, %vector.ph545
  %index551 = phi i64 [ 0, %vector.ph545 ], [ %index.next556, %vector.body550 ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index551 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load552 = load <4 x float>, ptr %i.du, align 16, !tbaa !11
  %wide.load553 = load <4 x float>, ptr %i.dv, align 16, !tbaa !11
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index551 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %wide.load554 = load <4 x float>, ptr %i.dw, align 4, !tbaa !11
  %wide.load555 = load <4 x float>, ptr %i.dx, align 4, !tbaa !11
  %i.dy = fmul <4 x float> %broadcast.splat549, %wide.load554
  %i.dz = fmul <4 x float> %broadcast.splat549, %wide.load555
  %i.ea = fsub <4 x float> %wide.load552, %i.dy
  %i.eb = fsub <4 x float> %wide.load553, %i.dz
  store <4 x float> %i.ea, ptr %i.du, align 16, !tbaa !11
  store <4 x float> %i.eb, ptr %i.dv, align 16, !tbaa !11
  %index.next556 = add nuw i64 %index551, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next556, %n.vec547
  br i1 %i.ec, label %middle.block557, label %vector.body550, !llvm.loop !22

middle.block557:                                  ; preds = %vector.body550
  %cmp.n558 = icmp eq i64 %i.dj, %n.vec547
  br i1 %cmp.n558, label %daxpy.exit110.i, label %.lr.ph.i106.i.preheader830

.lr.ph.i106.i.preheader830:                       ; preds = %.lr.ph.i106.i.preheader, %middle.block557
  %indvars.iv.i107.i.ph = phi i64 [ 0, %.lr.ph.i106.i.preheader ], [ %n.vec547, %middle.block557 ]
  br label %.lr.ph.i106.i

.lr.ph.i106.i:                                    ; preds = %.lr.ph.i106.i.preheader830, %.lr.ph.i106.i
  %indvars.iv.i107.i = phi i64 [ %indvars.iv.next.i108.i, %.lr.ph.i106.i ], [ %indvars.iv.i107.i.ph, %.lr.ph.i106.i.preheader830 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !11
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.i107.i
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !11
  %i.eh = fmul float %i.dq, %i.eg
  %i.ei = fsub float %i.ee, %i.eh
  store float %i.ei, ptr %i.ed, align 4, !tbaa !11
  %indvars.iv.next.i108.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %exitcond.not.i109.i = icmp eq i64 %indvars.iv.next.i108.i, %i.dj
  br i1 %exitcond.not.i109.i, label %daxpy.exit110.i, label %.lr.ph.i106.i, !llvm.loop !23

daxpy.exit110.i:                                  ; preds = %.lr.ph.i106.i, %middle.block557, %.lr.ph136.i
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next152.i, 100
  br i1 %exitcond155.not.i, label %dgesl.exit, label %.lr.ph136.i, !llvm.loop !24

dgesl.exit:                                       ; preds = %daxpy.exit110.i
  %i.ej = sitofp i64 %i.cf to float
  %5 = fdiv float %i.ej, 1.000000e+06
  %6 = tail call i64 @clock() #12
  %7 = sitofp i64 %6 to float
  %8 = fdiv float %7, 1.000000e+06
  %9 = fsub float %8, %5                          ; 2 uses
  store float %9, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 60), align 4, !tbaa !11
  %i.ek = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  br label %.preheader52.i88

.preheader52.i88:                                 ; preds = %dgesl.exit, %._crit_edge.i98
  %.2 = phi float [ %..i95.1, %._crit_edge.i98 ], [ 0.000000e+00, %dgesl.exit ]
  %indvars.iv64.i89 = phi i64 [ %indvars.iv.next65.i99, %._crit_edge.i98 ], [ 0, %dgesl.exit ] ; 2 uses
  %.04455.i90 = phi i32 [ %i.es, %._crit_edge.i98 ], [ 1325, %dgesl.exit ]
  %invariant.gep.i91.idx = mul nuw nsw i64 %indvars.iv64.i89, 804
  %invariant.gep.i91 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i91.idx ; 2 uses
  br label %bb.g

.preheader51.i101:                                ; preds = %._crit_edge.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted950 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted953 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted955 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted958 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted961 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted964 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted967 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted970 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted973 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted976 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted979 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted982 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted985 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted988 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted991 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted994 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted997 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1000 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1003 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1006 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1009 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1012 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1015 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1018 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1021 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1023 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1025 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1027 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i102

bb.g:                                             ; preds = %bb.g, %.preheader52.i88
  %.3 = phi float [ %.2, %.preheader52.i88 ], [ %..i95.1, %bb.g ] ; 2 uses
  %indvars.iv.i92 = phi i64 [ 0, %.preheader52.i88 ], [ %indvars.iv.next.i96.1, %bb.g ] ; 3 uses
  %.14553.i93 = phi i32 [ %.04455.i90, %.preheader52.i88 ], [ %i.es, %bb.g ] ; 2 uses
  %i.el = mul nuw nsw i32 %.14553.i93, 3125
  %i.em = and i32 %i.el, 65535
  %i.en = add nsw i32 %i.em, -32768
  %i.eo = sitofp i32 %i.en to float
  %i.ep = fmul nnan float %i.eo, f0x38800000      ; 3 uses
  %gep.i94 = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  store float %i.ep, ptr %gep.i94, align 4, !tbaa !11
  %i.eq = fcmp ogt float %i.ep, %.3
  %..i95 = select i1 %i.eq, float %i.ep, float %.3 ; 2 uses
  %i.er = mul nsw i32 %.14553.i93, 761
  %i.es = and i32 %i.er, 65535                    ; 3 uses
  %i.et = add nsw i32 %i.es, -32768
  %i.eu = sitofp i32 %i.et to float
  %i.ev = fmul nnan float %i.eu, f0x38800000      ; 3 uses
  %i.ew = getelementptr [4 x i8], ptr %invariant.gep.i91, i64 %indvars.iv.i92
  %gep.i94.1 = getelementptr i8, ptr %i.ew, i64 4
  store float %i.ev, ptr %gep.i94.1, align 4, !tbaa !11
  %i.ex = fcmp ogt float %i.ev, %..i95
  %..i95.1 = select i1 %i.ex, float %i.ev, float %..i95 ; 3 uses
  %indvars.iv.next.i96.1 = add nuw nsw i64 %indvars.iv.i92, 2 ; 2 uses
  %exitcond.not.i97.1 = icmp eq i64 %indvars.iv.next.i96.1, 100
  br i1 %exitcond.not.i97.1, label %._crit_edge.i98, label %bb.g, !llvm.loop !13

._crit_edge.i98:                                  ; preds = %bb.g
  %indvars.iv.next65.i99 = add nuw nsw i64 %indvars.iv64.i89, 1 ; 2 uses
  %exitcond68.not.i100 = icmp eq i64 %indvars.iv.next65.i99, 100
  br i1 %exitcond68.not.i100, label %.preheader51.i101, label %.preheader52.i88, !llvm.loop !15

.preheader.i102:                                  ; preds = %.preheader.i102, %.preheader51.i101
  %i.ey = phi float [ %.promoted1027, %.preheader51.i101 ], [ %i.hf, %.preheader.i102 ]
  %i.ez = phi float [ %.promoted1025, %.preheader51.i101 ], [ %i.hd, %.preheader.i102 ]
  %i.fa = phi float [ %.promoted1023, %.preheader51.i101 ], [ %i.hb, %.preheader.i102 ]
  %i.fb = phi float [ %.promoted1021, %.preheader51.i101 ], [ %i.gz, %.preheader.i102 ]
  %wide.load565.111019 = phi <4 x float> [ %.promoted1018, %.preheader51.i101 ], [ %i.gx, %.preheader.i102 ]
  %wide.load564.111016 = phi <4 x float> [ %.promoted1015, %.preheader51.i101 ], [ %i.gw, %.preheader.i102 ]
  %wide.load565.101013 = phi <4 x float> [ %.promoted1012, %.preheader51.i101 ], [ %i.gt, %.preheader.i102 ]
  %wide.load564.101010 = phi <4 x float> [ %.promoted1009, %.preheader51.i101 ], [ %i.gs, %.preheader.i102 ]
  %wide.load565.91007 = phi <4 x float> [ %.promoted1006, %.preheader51.i101 ], [ %i.gp, %.preheader.i102 ]
  %wide.load564.91004 = phi <4 x float> [ %.promoted1003, %.preheader51.i101 ], [ %i.go, %.preheader.i102 ]
  %wide.load565.81001 = phi <4 x float> [ %.promoted1000, %.preheader51.i101 ], [ %i.gl, %.preheader.i102 ]
  %wide.load564.8998 = phi <4 x float> [ %.promoted997, %.preheader51.i101 ], [ %i.gk, %.preheader.i102 ]
  %wide.load565.7995 = phi <4 x float> [ %.promoted994, %.preheader51.i101 ], [ %i.gh, %.preheader.i102 ]
  %wide.load564.7992 = phi <4 x float> [ %.promoted991, %.preheader51.i101 ], [ %i.gg, %.preheader.i102 ]
  %wide.load565.6989 = phi <4 x float> [ %.promoted988, %.preheader51.i101 ], [ %i.gd, %.preheader.i102 ]
  %wide.load564.6986 = phi <4 x float> [ %.promoted985, %.preheader51.i101 ], [ %i.gc, %.preheader.i102 ]
  %wide.load565.5983 = phi <4 x float> [ %.promoted982, %.preheader51.i101 ], [ %i.fz, %.preheader.i102 ]
  %wide.load564.5980 = phi <4 x float> [ %.promoted979, %.preheader51.i101 ], [ %i.fy, %.preheader.i102 ]
  %wide.load565.4977 = phi <4 x float> [ %.promoted976, %.preheader51.i101 ], [ %i.fv, %.preheader.i102 ]
  %wide.load564.4974 = phi <4 x float> [ %.promoted973, %.preheader51.i101 ], [ %i.fu, %.preheader.i102 ]
  %wide.load565.3971 = phi <4 x float> [ %.promoted970, %.preheader51.i101 ], [ %i.fr, %.preheader.i102 ]
  %wide.load564.3968 = phi <4 x float> [ %.promoted967, %.preheader51.i101 ], [ %i.fq, %.preheader.i102 ]
  %wide.load565.2965 = phi <4 x float> [ %.promoted964, %.preheader51.i101 ], [ %i.fn, %.preheader.i102 ]
  %wide.load564.2962 = phi <4 x float> [ %.promoted961, %.preheader51.i101 ], [ %i.fm, %.preheader.i102 ]
  %wide.load565.1959 = phi <4 x float> [ %.promoted958, %.preheader51.i101 ], [ %i.fj, %.preheader.i102 ]
  %wide.load564.1956 = phi <4 x float> [ %.promoted955, %.preheader51.i101 ], [ %i.fi, %.preheader.i102 ]
  %i.fc = phi <4 x float> [ %.promoted953, %.preheader51.i101 ], [ %i.ff, %.preheader.i102 ]
  %wide.load564951 = phi <4 x float> [ %main.b.promoted950, %.preheader51.i101 ], [ %i.fe, %.preheader.i102 ]
  %indvars.iv77.i103 = phi i64 [ 0, %.preheader51.i101 ], [ %indvars.iv.next78.i110, %.preheader.i102 ] ; 2 uses
  %invariant.gep82.i104.idx = mul nuw nsw i64 %indvars.iv77.i103, 804
  %invariant.gep82.i104 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i104.idx ; 28 uses
  %i.fd = getelementptr i8, ptr %invariant.gep82.i104, i64 16
  %wide.load566 = load <4 x float>, ptr %invariant.gep82.i104, align 4, !tbaa !11
  %wide.load567 = load <4 x float>, ptr %i.fd, align 4, !tbaa !11
  %i.fe = fadd <4 x float> %wide.load564951, %wide.load566 ; 2 uses
  %i.ff = fadd <4 x float> %i.fc, %wide.load567   ; 2 uses
  %i.fg = getelementptr i8, ptr %invariant.gep82.i104, i64 32
  %i.fh = getelementptr i8, ptr %invariant.gep82.i104, i64 48
  %wide.load566.1 = load <4 x float>, ptr %i.fg, align 4, !tbaa !11
  %wide.load567.1 = load <4 x float>, ptr %i.fh, align 4, !tbaa !11
  %i.fi = fadd <4 x float> %wide.load564.1956, %wide.load566.1 ; 2 uses
  %i.fj = fadd <4 x float> %wide.load565.1959, %wide.load567.1 ; 2 uses
  %i.fk = getelementptr i8, ptr %invariant.gep82.i104, i64 64
  %i.fl = getelementptr i8, ptr %invariant.gep82.i104, i64 80
  %wide.load566.2 = load <4 x float>, ptr %i.fk, align 4, !tbaa !11
  %wide.load567.2 = load <4 x float>, ptr %i.fl, align 4, !tbaa !11
  %i.fm = fadd <4 x float> %wide.load564.2962, %wide.load566.2 ; 2 uses
  %i.fn = fadd <4 x float> %wide.load565.2965, %wide.load567.2 ; 2 uses
  %i.fo = getelementptr i8, ptr %invariant.gep82.i104, i64 96
  %i.fp = getelementptr i8, ptr %invariant.gep82.i104, i64 112
  %wide.load566.3 = load <4 x float>, ptr %i.fo, align 4, !tbaa !11
  %wide.load567.3 = load <4 x float>, ptr %i.fp, align 4, !tbaa !11
  %i.fq = fadd <4 x float> %wide.load564.3968, %wide.load566.3 ; 2 uses
  %i.fr = fadd <4 x float> %wide.load565.3971, %wide.load567.3 ; 2 uses
  %i.fs = getelementptr i8, ptr %invariant.gep82.i104, i64 128
  %i.ft = getelementptr i8, ptr %invariant.gep82.i104, i64 144
  %wide.load566.4 = load <4 x float>, ptr %i.fs, align 4, !tbaa !11
  %wide.load567.4 = load <4 x float>, ptr %i.ft, align 4, !tbaa !11
  %i.fu = fadd <4 x float> %wide.load564.4974, %wide.load566.4 ; 2 uses
  %i.fv = fadd <4 x float> %wide.load565.4977, %wide.load567.4 ; 2 uses
  %i.fw = getelementptr i8, ptr %invariant.gep82.i104, i64 160
  %i.fx = getelementptr i8, ptr %invariant.gep82.i104, i64 176
  %wide.load566.5 = load <4 x float>, ptr %i.fw, align 4, !tbaa !11
  %wide.load567.5 = load <4 x float>, ptr %i.fx, align 4, !tbaa !11
  %i.fy = fadd <4 x float> %wide.load564.5980, %wide.load566.5 ; 2 uses
  %i.fz = fadd <4 x float> %wide.load565.5983, %wide.load567.5 ; 2 uses
  %i.ga = getelementptr i8, ptr %invariant.gep82.i104, i64 192
  %i.gb = getelementptr i8, ptr %invariant.gep82.i104, i64 208
  %wide.load566.6 = load <4 x float>, ptr %i.ga, align 4, !tbaa !11
  %wide.load567.6 = load <4 x float>, ptr %i.gb, align 4, !tbaa !11
  %i.gc = fadd <4 x float> %wide.load564.6986, %wide.load566.6 ; 2 uses
  %i.gd = fadd <4 x float> %wide.load565.6989, %wide.load567.6 ; 2 uses
  %i.ge = getelementptr i8, ptr %invariant.gep82.i104, i64 224
  %i.gf = getelementptr i8, ptr %invariant.gep82.i104, i64 240
  %wide.load566.7 = load <4 x float>, ptr %i.ge, align 4, !tbaa !11
  %wide.load567.7 = load <4 x float>, ptr %i.gf, align 4, !tbaa !11
  %i.gg = fadd <4 x float> %wide.load564.7992, %wide.load566.7 ; 2 uses
  %i.gh = fadd <4 x float> %wide.load565.7995, %wide.load567.7 ; 2 uses
  %i.gi = getelementptr i8, ptr %invariant.gep82.i104, i64 256
  %i.gj = getelementptr i8, ptr %invariant.gep82.i104, i64 272
  %wide.load566.8 = load <4 x float>, ptr %i.gi, align 4, !tbaa !11
  %wide.load567.8 = load <4 x float>, ptr %i.gj, align 4, !tbaa !11
  %i.gk = fadd <4 x float> %wide.load564.8998, %wide.load566.8 ; 2 uses
  %i.gl = fadd <4 x float> %wide.load565.81001, %wide.load567.8 ; 2 uses
  %i.gm = getelementptr i8, ptr %invariant.gep82.i104, i64 288
  %i.gn = getelementptr i8, ptr %invariant.gep82.i104, i64 304
  %wide.load566.9 = load <4 x float>, ptr %i.gm, align 4, !tbaa !11
  %wide.load567.9 = load <4 x float>, ptr %i.gn, align 4, !tbaa !11
  %i.go = fadd <4 x float> %wide.load564.91004, %wide.load566.9 ; 2 uses
  %i.gp = fadd <4 x float> %wide.load565.91007, %wide.load567.9 ; 2 uses
  %i.gq = getelementptr i8, ptr %invariant.gep82.i104, i64 320
  %i.gr = getelementptr i8, ptr %invariant.gep82.i104, i64 336
  %wide.load566.10 = load <4 x float>, ptr %i.gq, align 4, !tbaa !11
  %wide.load567.10 = load <4 x float>, ptr %i.gr, align 4, !tbaa !11
  %i.gs = fadd <4 x float> %wide.load564.101010, %wide.load566.10 ; 2 uses
  %i.gt = fadd <4 x float> %wide.load565.101013, %wide.load567.10 ; 2 uses
  %i.gu = getelementptr i8, ptr %invariant.gep82.i104, i64 352
  %i.gv = getelementptr i8, ptr %invariant.gep82.i104, i64 368
  %wide.load566.11 = load <4 x float>, ptr %i.gu, align 4, !tbaa !11
  %wide.load567.11 = load <4 x float>, ptr %i.gv, align 4, !tbaa !11
  %i.gw = fadd <4 x float> %wide.load564.111016, %wide.load566.11 ; 2 uses
  %i.gx = fadd <4 x float> %wide.load565.111019, %wide.load567.11 ; 2 uses
  %gep83.i106 = getelementptr i8, ptr %invariant.gep82.i104, i64 384
  %i.gy = load float, ptr %gep83.i106, align 4, !tbaa !11
  %i.gz = fadd float %i.fb, %i.gy                 ; 2 uses
  %gep83.i106.1 = getelementptr i8, ptr %invariant.gep82.i104, i64 388
  %i.ha = load float, ptr %gep83.i106.1, align 4, !tbaa !11
  %i.hb = fadd float %i.fa, %i.ha                 ; 2 uses
  %gep83.i106.2 = getelementptr i8, ptr %invariant.gep82.i104, i64 392
  %i.hc = load float, ptr %gep83.i106.2, align 4, !tbaa !11
  %i.hd = fadd float %i.ez, %i.hc                 ; 2 uses
  %gep83.i106.3 = getelementptr i8, ptr %invariant.gep82.i104, i64 396
  %i.he = load float, ptr %gep83.i106.3, align 4, !tbaa !11
  %i.hf = fadd float %i.ey, %i.he                 ; 2 uses
  %indvars.iv.next78.i110 = add nuw nsw i64 %indvars.iv77.i103, 1 ; 2 uses
  %exitcond81.not.i111 = icmp eq i64 %indvars.iv.next78.i110, 100
  br i1 %exitcond81.not.i111, label %vector.body572.preheader, label %.preheader.i102, !llvm.loop !16

vector.body572.preheader:                         ; preds = %.preheader.i102
  store <4 x float> %i.fe, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.ff, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.fi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.fj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.fm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.fn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.fq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.fr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.fu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.fv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.fy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.fz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.gc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.gd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.gg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.gh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.gk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.gl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.go, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.gp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.gs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.gt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.gw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.gx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.gz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.hb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.hd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.hf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %wide.load574 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %wide.load575 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %i.hg = fneg <4 x float> %wide.load574
  %i.hh = fneg <4 x float> %wide.load575
  store <4 x float> %i.hg, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.hh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %wide.load574.1 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %wide.load575.1 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %i.hi = fneg <4 x float> %wide.load574.1
  %i.hj = fneg <4 x float> %wide.load575.1
  store <4 x float> %i.hi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.hj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %wide.load574.2 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %wide.load575.2 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %i.hk = fneg <4 x float> %wide.load574.2
  %i.hl = fneg <4 x float> %wide.load575.2
  store <4 x float> %i.hk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.hl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %wide.load574.3 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %wide.load575.3 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %i.hm = fneg <4 x float> %wide.load574.3
  %i.hn = fneg <4 x float> %wide.load575.3
  store <4 x float> %i.hm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.hn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %wide.load574.4 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %wide.load575.4 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %i.ho = fneg <4 x float> %wide.load574.4
  %i.hp = fneg <4 x float> %wide.load575.4
  store <4 x float> %i.ho, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.hp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %wide.load574.5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %wide.load575.5 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %i.hq = fneg <4 x float> %wide.load574.5
  %i.hr = fneg <4 x float> %wide.load575.5
  store <4 x float> %i.hq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.hr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %wide.load574.6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %wide.load575.6 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %i.hs = fneg <4 x float> %wide.load574.6
  %i.ht = fneg <4 x float> %wide.load575.6
  store <4 x float> %i.hs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.ht, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %wide.load574.7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %wide.load575.7 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %i.hu = fneg <4 x float> %wide.load574.7
  %i.hv = fneg <4 x float> %wide.load575.7
  store <4 x float> %i.hu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.hv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %wide.load574.8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %wide.load575.8 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %i.hw = fneg <4 x float> %wide.load574.8
  %i.hx = fneg <4 x float> %wide.load575.8
  store <4 x float> %i.hw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.hx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %wide.load574.9 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %wide.load575.9 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %i.hy = fneg <4 x float> %wide.load574.9
  %i.hz = fneg <4 x float> %wide.load575.9
  store <4 x float> %i.hy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.hz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %wide.load574.10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %wide.load575.10 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %i.ia = fneg <4 x float> %wide.load574.10
  %i.ib = fneg <4 x float> %wide.load575.10
  store <4 x float> %i.ia, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.ib, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %wide.load574.11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %wide.load575.11 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %i.ic = fneg <4 x float> %wide.load574.11
  %i.id = fneg <4 x float> %wide.load575.11
  store <4 x float> %i.ic, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.id, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %i.ie = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %i.if = fneg float %i.ie
  store float %i.if, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %i.ig = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %i.ih = fneg float %i.ig
  store float %i.ih, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %i.ii = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %i.ij = fneg float %i.ii
  store float %i.ij, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %i.ik = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  %i.il = fneg float %i.ik
  store float %i.il, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  tail call void @dmxpy(i32 noundef 100, ptr noundef nonnull @main.b, i32 noundef 100, i32 noundef 201, ptr noundef nonnull @main.x, ptr noundef nonnull @main.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %vector.body572.preheader
  %indvars.iv462 = phi i64 [ 0, %vector.body572.preheader ], [ %indvars.iv.next463.1, %bb.h ] ; 4 uses
  %i.im = phi <2 x float> [ zeroinitializer, %vector.body572.preheader ], [ %i.je, %bb.h ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv462
  %i.io = load float, ptr %i.in, align 8, !tbaa !11
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr @main.x, i64 %indvars.iv462
  %i.iq = load float, ptr %i.ip, align 8, !tbaa !11
  %i.ir = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.io, i64 1
  %i.it = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.is) ; 2 uses
  %i.iu = fcmp ogt <2 x float> %i.im, %i.it
  %i.iv = select <2 x i1> %i.iu, <2 x float> %i.im, <2 x float> %i.it ; 2 uses
  %indvars.iv.next463 = or disjoint i64 %indvars.iv462, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next463
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !11
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr @main.x, i64 %indvars.iv.next463
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !11
  %i.ja = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.jb = insertelement <2 x float> %i.ja, float %i.ix, i64 1
  %i.jc = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.jb) ; 2 uses
  %i.jd = fcmp ogt <2 x float> %i.iv, %i.jc
  %i.je = select <2 x i1> %i.jd, <2 x float> %i.iv, <2 x float> %i.jc ; 3 uses
  %indvars.iv.next463.1 = add nuw nsw i64 %indvars.iv462, 2 ; 2 uses
  %exitcond465.not.1 = icmp eq i64 %indvars.iv.next463.1, 100
  br i1 %exitcond465.not.1, label %bb.i, label %bb.h, !llvm.loop !25

bb.i:                                             ; preds = %bb.h
  %i.jf = fadd float %i.ek, %9                    ; 4 uses
  %i.jg = fmul float %..i95.1, 1.000000e+02
  %i.jh = extractelement <2 x float> %i.je, i64 0
  %i.ji = fmul float %i.jg, %i.jh
  %i.jj = fmul float %i.ji, f0x34000000
  %i.jk = extractelement <2 x float> %i.je, i64 1 ; 2 uses
  %i.jl = fdiv float %i.jk, %i.jj
  %i.jm = load float, ptr @main.x, align 16, !tbaa !11
  %i.jn = fadd float %i.jm, -1.000000e+00
  %i.jo = load float, ptr getelementptr inbounds nuw (i8, ptr @main.x, i64 396), align 4, !tbaa !11
  %i.jp = fadd float %i.jo, -1.000000e+00
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jr = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %i.jq) #13 ; 0 uses
  %i.js = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jt = tail call i64 @fwrite(ptr nonnull @.str.8, i64 34, i64 1, ptr %i.js) #13 ; 0 uses
  %i.ju = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.jv = fpext float %i.jl to double
  %i.jw = fpext float %i.jk to double
  %i.jx = fpext float %i.jn to double
  %i.jy = fpext float %i.jp to double
  %i.jz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ju, ptr noundef nonnull @.str.9, double noundef %i.jv, double noundef %i.jw, double noundef f0x3E80000000000000, double noundef %i.jx, double noundef %i.jy) #14 ; 0 uses
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.10, i32 noundef 100) #14 ; 0 uses
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kc, ptr noundef nonnull @.str.11, i32 noundef 201) #14 ; 0 uses
  %i.ke = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kf = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.ke) #13 ; 0 uses
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kh = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.kg) #13 ; 0 uses
  store float %i.jf, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 120), align 8, !tbaa !11
  %i.ki = fcmp ogt float %i.jf, 0.000000e+00
  br i1 %i.ki, label %bb.j, label %.preheader52.i113.preheader.preheader

bb.j:                                             ; preds = %bb.i
  %i.kj = fpext nnan float %i.jf to double
  %i.kk = fmul nnan double %i.kj, 1.000000e+06
  %i.kl = fdiv double f0x4124F49560000000, %i.kk
  %i.km = fptrunc double %i.kl to float           ; 2 uses
  %i.kn = fdiv float 2.000000e+00, %i.km
  br label %.preheader52.i113.preheader.preheader

.preheader52.i113.preheader.preheader:            ; preds = %bb.j, %bb.i
  %.sink = phi float [ %i.km, %bb.j ], [ 0.000000e+00, %bb.i ]
  %storemerge77 = phi float [ %i.kn, %bb.j ], [ 0.000000e+00, %bb.i ]
  store float %.sink, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 180), align 4, !tbaa !11
  store float %storemerge77, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), align 16, !tbaa !11
  %i.ko = fdiv float %i.jf, 5.600000e-02
  store float %i.ko, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), align 4, !tbaa !11
  %i.kp = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.kq = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %i.kp) #13 ; 0 uses
  %i.kr = tail call i64 @clock() #12              ; 0 uses
  br label %.preheader52.i113.preheader

.preheader52.i113.preheader:                      ; preds = %.preheader52.i113.preheader.preheader, %matgen.exit137
  %storemerge78409 = phi i32 [ %i.nl, %matgen.exit137 ], [ 0, %.preheader52.i113.preheader.preheader ]
  br label %.preheader52.i113

.preheader52.i113:                                ; preds = %.preheader52.i113.preheader, %._crit_edge.i123
  %indvars.iv64.i114 = phi i64 [ %indvars.iv.next65.i124, %._crit_edge.i123 ], [ 0, %.preheader52.i113.preheader ] ; 2 uses
  %.04455.i115 = phi i32 [ %i.ky, %._crit_edge.i123 ], [ 1325, %.preheader52.i113.preheader ]
  %invariant.gep.i116.idx = mul nuw nsw i64 %indvars.iv64.i114, 804
  %invariant.gep.i116 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i116.idx ; 2 uses
  br label %bb.k

.preheader51.i126:                                ; preds = %._crit_edge.i123
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  %main.b.promoted1029 = load <4 x float>, ptr @main.b, align 16, !tbaa !11
  %.promoted1032 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  %.promoted1034 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  %.promoted1037 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  %.promoted1040 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  %.promoted1043 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  %.promoted1046 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  %.promoted1049 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  %.promoted1052 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  %.promoted1055 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1058 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1061 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1064 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1067 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1070 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1073 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1076 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1079 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1082 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1085 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1088 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1091 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1094 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1097 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1100 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1102 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1104 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1106 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i127

bb.k:                                             ; preds = %bb.k, %.preheader52.i113
  %indvars.iv.i117 = phi i64 [ 0, %.preheader52.i113 ], [ %indvars.iv.next.i121.1835, %bb.k ] ; 3 uses
  %.14553.i118 = phi i32 [ %.04455.i115, %.preheader52.i113 ], [ %i.ky, %bb.k ] ; 2 uses
  %i.ks = mul nuw nsw i32 %.14553.i118, 3125
  %i.kt = and i32 %i.ks, 65535
  %i.ku = add nsw i32 %i.kt, -32768
  %i.kv = sitofp i32 %i.ku to float
  %i.kw = fmul nnan float %i.kv, f0x38800000
  %gep.i119 = getelementptr [4 x i8], ptr %invariant.gep.i116, i64 %indvars.iv.i117
  store float %i.kw, ptr %gep.i119, align 4, !tbaa !11
  %i.kx = mul nsw i32 %.14553.i118, 761
  %i.ky = and i32 %i.kx, 65535                    ; 3 uses
  %i.kz = add nsw i32 %i.ky, -32768
  %i.la = sitofp i32 %i.kz to float
  %i.lb = fmul nnan float %i.la, f0x38800000
  %i.lc = getelementptr [4 x i8], ptr %invariant.gep.i116, i64 %indvars.iv.i117
  %gep.i119.1834 = getelementptr i8, ptr %i.lc, i64 4
  store float %i.lb, ptr %gep.i119.1834, align 4, !tbaa !11
  %indvars.iv.next.i121.1835 = add nuw nsw i64 %indvars.iv.i117, 2 ; 2 uses
  %exitcond.not.i122.1836 = icmp eq i64 %indvars.iv.next.i121.1835, 100
  br i1 %exitcond.not.i122.1836, label %._crit_edge.i123, label %bb.k, !llvm.loop !13

._crit_edge.i123:                                 ; preds = %bb.k
  %indvars.iv.next65.i124 = add nuw nsw i64 %indvars.iv64.i114, 1 ; 2 uses
  %exitcond68.not.i125 = icmp eq i64 %indvars.iv.next65.i124, 100
  br i1 %exitcond68.not.i125, label %.preheader51.i126, label %.preheader52.i113, !llvm.loop !15

.preheader.i127:                                  ; preds = %.preheader.i127, %.preheader51.i126
  %i.ld = phi float [ %.promoted1106, %.preheader51.i126 ], [ %i.nk, %.preheader.i127 ]
  %i.le = phi float [ %.promoted1104, %.preheader51.i126 ], [ %i.ni, %.preheader.i127 ]
  %i.lf = phi float [ %.promoted1102, %.preheader51.i126 ], [ %i.ng, %.preheader.i127 ]
  %i.lg = phi float [ %.promoted1100, %.preheader51.i126 ], [ %i.ne, %.preheader.i127 ]
  %wide.load583.111098 = phi <4 x float> [ %.promoted1097, %.preheader51.i126 ], [ %i.nc, %.preheader.i127 ]
  %wide.load582.111095 = phi <4 x float> [ %.promoted1094, %.preheader51.i126 ], [ %i.nb, %.preheader.i127 ]
  %wide.load583.101092 = phi <4 x float> [ %.promoted1091, %.preheader51.i126 ], [ %i.my, %.preheader.i127 ]
  %wide.load582.101089 = phi <4 x float> [ %.promoted1088, %.preheader51.i126 ], [ %i.mx, %.preheader.i127 ]
  %wide.load583.91086 = phi <4 x float> [ %.promoted1085, %.preheader51.i126 ], [ %i.mu, %.preheader.i127 ]
  %wide.load582.91083 = phi <4 x float> [ %.promoted1082, %.preheader51.i126 ], [ %i.mt, %.preheader.i127 ]
  %wide.load583.81080 = phi <4 x float> [ %.promoted1079, %.preheader51.i126 ], [ %i.mq, %.preheader.i127 ]
  %wide.load582.81077 = phi <4 x float> [ %.promoted1076, %.preheader51.i126 ], [ %i.mp, %.preheader.i127 ]
  %wide.load583.71074 = phi <4 x float> [ %.promoted1073, %.preheader51.i126 ], [ %i.mm, %.preheader.i127 ]
  %wide.load582.71071 = phi <4 x float> [ %.promoted1070, %.preheader51.i126 ], [ %i.ml, %.preheader.i127 ]
  %wide.load583.61068 = phi <4 x float> [ %.promoted1067, %.preheader51.i126 ], [ %i.mi, %.preheader.i127 ]
  %wide.load582.61065 = phi <4 x float> [ %.promoted1064, %.preheader51.i126 ], [ %i.mh, %.preheader.i127 ]
  %wide.load583.51062 = phi <4 x float> [ %.promoted1061, %.preheader51.i126 ], [ %i.me, %.preheader.i127 ]
  %wide.load582.51059 = phi <4 x float> [ %.promoted1058, %.preheader51.i126 ], [ %i.md, %.preheader.i127 ]
  %wide.load583.41056 = phi <4 x float> [ %.promoted1055, %.preheader51.i126 ], [ %i.ma, %.preheader.i127 ]
  %wide.load582.41053 = phi <4 x float> [ %.promoted1052, %.preheader51.i126 ], [ %i.lz, %.preheader.i127 ]
  %wide.load583.31050 = phi <4 x float> [ %.promoted1049, %.preheader51.i126 ], [ %i.lw, %.preheader.i127 ]
  %wide.load582.31047 = phi <4 x float> [ %.promoted1046, %.preheader51.i126 ], [ %i.lv, %.preheader.i127 ]
  %wide.load583.21044 = phi <4 x float> [ %.promoted1043, %.preheader51.i126 ], [ %i.ls, %.preheader.i127 ]
  %wide.load582.21041 = phi <4 x float> [ %.promoted1040, %.preheader51.i126 ], [ %i.lr, %.preheader.i127 ]
  %wide.load583.11038 = phi <4 x float> [ %.promoted1037, %.preheader51.i126 ], [ %i.lo, %.preheader.i127 ]
  %wide.load582.11035 = phi <4 x float> [ %.promoted1034, %.preheader51.i126 ], [ %i.ln, %.preheader.i127 ]
  %i.lh = phi <4 x float> [ %.promoted1032, %.preheader51.i126 ], [ %i.lk, %.preheader.i127 ]
  %wide.load5821030 = phi <4 x float> [ %main.b.promoted1029, %.preheader51.i126 ], [ %i.lj, %.preheader.i127 ]
  %indvars.iv77.i128 = phi i64 [ 0, %.preheader51.i126 ], [ %indvars.iv.next78.i135, %.preheader.i127 ] ; 2 uses
  %invariant.gep82.i129.idx = mul nuw nsw i64 %indvars.iv77.i128, 804
  %invariant.gep82.i129 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i129.idx ; 28 uses
  %i.li = getelementptr i8, ptr %invariant.gep82.i129, i64 16
  %wide.load584 = load <4 x float>, ptr %invariant.gep82.i129, align 4, !tbaa !11
  %wide.load585 = load <4 x float>, ptr %i.li, align 4, !tbaa !11
  %i.lj = fadd <4 x float> %wide.load5821030, %wide.load584 ; 2 uses
  %i.lk = fadd <4 x float> %i.lh, %wide.load585   ; 2 uses
  %i.ll = getelementptr i8, ptr %invariant.gep82.i129, i64 32
  %i.lm = getelementptr i8, ptr %invariant.gep82.i129, i64 48
  %wide.load584.1 = load <4 x float>, ptr %i.ll, align 4, !tbaa !11
  %wide.load585.1 = load <4 x float>, ptr %i.lm, align 4, !tbaa !11
  %i.ln = fadd <4 x float> %wide.load582.11035, %wide.load584.1 ; 2 uses
  %i.lo = fadd <4 x float> %wide.load583.11038, %wide.load585.1 ; 2 uses
  %i.lp = getelementptr i8, ptr %invariant.gep82.i129, i64 64
  %i.lq = getelementptr i8, ptr %invariant.gep82.i129, i64 80
  %wide.load584.2 = load <4 x float>, ptr %i.lp, align 4, !tbaa !11
  %wide.load585.2 = load <4 x float>, ptr %i.lq, align 4, !tbaa !11
  %i.lr = fadd <4 x float> %wide.load582.21041, %wide.load584.2 ; 2 uses
  %i.ls = fadd <4 x float> %wide.load583.21044, %wide.load585.2 ; 2 uses
  %i.lt = getelementptr i8, ptr %invariant.gep82.i129, i64 96
  %i.lu = getelementptr i8, ptr %invariant.gep82.i129, i64 112
  %wide.load584.3 = load <4 x float>, ptr %i.lt, align 4, !tbaa !11
  %wide.load585.3 = load <4 x float>, ptr %i.lu, align 4, !tbaa !11
  %i.lv = fadd <4 x float> %wide.load582.31047, %wide.load584.3 ; 2 uses
  %i.lw = fadd <4 x float> %wide.load583.31050, %wide.load585.3 ; 2 uses
  %i.lx = getelementptr i8, ptr %invariant.gep82.i129, i64 128
  %i.ly = getelementptr i8, ptr %invariant.gep82.i129, i64 144
  %wide.load584.4 = load <4 x float>, ptr %i.lx, align 4, !tbaa !11
  %wide.load585.4 = load <4 x float>, ptr %i.ly, align 4, !tbaa !11
  %i.lz = fadd <4 x float> %wide.load582.41053, %wide.load584.4 ; 2 uses
  %i.ma = fadd <4 x float> %wide.load583.41056, %wide.load585.4 ; 2 uses
  %i.mb = getelementptr i8, ptr %invariant.gep82.i129, i64 160
  %i.mc = getelementptr i8, ptr %invariant.gep82.i129, i64 176
  %wide.load584.5 = load <4 x float>, ptr %i.mb, align 4, !tbaa !11
  %wide.load585.5 = load <4 x float>, ptr %i.mc, align 4, !tbaa !11
  %i.md = fadd <4 x float> %wide.load582.51059, %wide.load584.5 ; 2 uses
  %i.me = fadd <4 x float> %wide.load583.51062, %wide.load585.5 ; 2 uses
  %i.mf = getelementptr i8, ptr %invariant.gep82.i129, i64 192
  %i.mg = getelementptr i8, ptr %invariant.gep82.i129, i64 208
  %wide.load584.6 = load <4 x float>, ptr %i.mf, align 4, !tbaa !11
  %wide.load585.6 = load <4 x float>, ptr %i.mg, align 4, !tbaa !11
  %i.mh = fadd <4 x float> %wide.load582.61065, %wide.load584.6 ; 2 uses
  %i.mi = fadd <4 x float> %wide.load583.61068, %wide.load585.6 ; 2 uses
  %i.mj = getelementptr i8, ptr %invariant.gep82.i129, i64 224
  %i.mk = getelementptr i8, ptr %invariant.gep82.i129, i64 240
  %wide.load584.7 = load <4 x float>, ptr %i.mj, align 4, !tbaa !11
  %wide.load585.7 = load <4 x float>, ptr %i.mk, align 4, !tbaa !11
  %i.ml = fadd <4 x float> %wide.load582.71071, %wide.load584.7 ; 2 uses
end_hunk_0
