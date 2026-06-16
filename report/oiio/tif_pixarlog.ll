inline.NumInlined: 19
inline.NumDeleted: 13
begin_hunk_0_@TIFFInitPixarLog:bb.a
  store ptr @PixarLogPreEncode, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr @PixarLogPostEncode, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr @PixarLogEncode, ptr %i.p, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @PixarLogEncode, ptr %i.q, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @PixarLogEncode, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr @PixarLogClose, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @PixarLogCleanup, ptr %i.t, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !47
  store ptr @PixarLogVGetField, ptr %i.v, align 8, !tbaa !48
  %i.y = shufflevector <2 x ptr> %i.x, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.y, ptr %i.w, align 8, !tbaa !47
  store ptr @PixarLogVSetField, ptr %i.u, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  store i32 -1, ptr %i.z, align 4, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  store i32 0, ptr %i.aa, align 4, !tbaa !51
  %i.ab = tail call i32 @TIFFPredictorInit(ptr noundef nonnull %0) #7 ; 0 uses
  store float 2.500000e+02, ptr @LogK1, align 4, !tbaa !52
  store float f0x431469C5, ptr @LogK2, align 4, !tbaa !52
  %i.ac = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 54600) #7 ; 4 uses
  %i.ad = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 32768) #7 ; 4 uses
  %i.ae = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 512) #7 ; 4 uses
  %i.af = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 8196) #7 ; 21 uses
  %i.ag = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 4098) #7 ; 8 uses
  %i.ah = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef 2049) #7 ; 8 uses
  %i.ai = icmp eq ptr %i.ac, null                 ; 2 uses
  %i.aj = icmp eq ptr %i.ad, null                 ; 2 uses
  %or.cond.i = select i1 %i.ai, i1 true, i1 %i.aj
  %i.ak = icmp eq ptr %i.ae, null                 ; 2 uses
  %or.cond3.i = select i1 %or.cond.i, i1 true, i1 %i.ak
  %i.al = icmp eq ptr %i.af, null                 ; 2 uses
  %or.cond5.i = select i1 %or.cond3.i, i1 true, i1 %i.al
  %i.am = icmp eq ptr %i.ag, null                 ; 2 uses
  %or.cond7.i = select i1 %or.cond5.i, i1 true, i1 %i.am
  %i.an = icmp eq ptr %i.ah, null                 ; 2 uses
  %or.cond9.i = select i1 %or.cond7.i, i1 true, i1 %i.an
  br i1 %or.cond9.i, label %bb.e, label %vector.body

vector.body:                                      ; preds = %bb.d, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %bb.d ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next.1, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %bb.d ] ; 3 uses
  %i.ao = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.ap = fmul nnan <4 x double> %i.ao, splat (double f0x3F1334911EDA5B17)
  %i.aq = fptrunc <4 x double> %i.ap to <4 x float>
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  store <4 x float> %i.aq, ptr %i.ar, align 4, !tbaa !52
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.as = uitofp nneg <4 x i32> %vec.ind.next to <4 x double>
  %i.at = fmul nnan <4 x double> %i.as, splat (double f0x3F1334911EDA5B17)
  %i.au = fptrunc <4 x double> %i.at to <4 x float>
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !52
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ax = icmp eq i64 %index.next.1, 248
  br i1 %i.ax, label %.preheader165.i, label %vector.body, !llvm.loop !53

bb.e:                                             ; preds = %bb.d
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ad) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ae) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.al, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.af) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ag) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.ah) #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, i8 0, i64 48, i1 false)
  br label %PixarLogMakeTables.exit

.preheader165.i:                                  ; preds = %vector.body
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 992
  store float f0x3C94D765, ptr %i.az, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 996
  store float f0x3C957109, ptr %i.ba, align 4, !tbaa !52
  br label %.preheader164.i

.preheader164.i:                                  ; preds = %.preheader165.i, %.preheader164.i
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %.preheader164.i ], [ 250, %.preheader165.i ] ; 3 uses
  %indvars182.i = trunc i64 %indvars.iv180.i to i32
  %i.bb = uitofp nneg i32 %indvars182.i to double
  %i.bc = fmul nnan double %i.bb, 4.000000e-03
  %i.bd = tail call double @exp(double noundef %i.bc) #7, !tbaa !3
  %i.be = fmul double %i.bd, f0x3F7B993FE00D5376
  %i.bf = fptrunc double %i.be to float
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv180.i
  store float %i.bf, ptr %i.bg, align 4, !tbaa !52
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next181.i, 2048
  br i1 %exitcond185.not.i, label %vector.memcheck, label %.preheader164.i

vector.memcheck:                                  ; preds = %.preheader164.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.af, i64 8188
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 8192
  store float %i.bi, ptr %i.bj, align 4, !tbaa !52
  %scevgep = getelementptr i8, ptr %i.ag, i64 4098 ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.ah, i64 2049 ; 2 uses
  %scevgep46 = getelementptr i8, ptr %i.af, i64 8196 ; 2 uses
  %bound0 = icmp ult ptr %i.ag, %scevgep45
  %bound1 = icmp ult ptr %i.ah, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound047 = icmp ult ptr %i.ag, %scevgep46
  %bound148 = icmp ult ptr %i.af, %scevgep
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx = or i1 %found.conflict, %found.conflict49
  %bound050 = icmp ult ptr %i.ah, %scevgep46
  %bound151 = icmp ult ptr %i.af, %scevgep45
  %found.conflict52 = and i1 %bound050, %bound151
  %conflict.rdx53 = or i1 %conflict.rdx, %found.conflict52
  br i1 %conflict.rdx53, label %scalar.ph54.preheader, label %vector.body56

vector.body56:                                    ; preds = %vector.memcheck, %vector.body56
  %index57 = phi i64 [ %index.next58, %vector.body56 ], [ 0, %vector.memcheck ] ; 4 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index57
  %wide.load = load <4 x float>, ptr %i.bk, align 4, !tbaa !52, !alias.scope !56
  %i.bl = fpext <4 x float> %wide.load to <4 x double> ; 2 uses
  %i.bm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> splat (double 6.553500e+04), <4 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bn = fcmp oge <4 x double> %i.bm, splat (double 6.553500e+04)
  %i.bo = select <4 x i1> %i.bn, <4 x double> splat (double 6.553500e+04), <4 x double> %i.bm
  %i.bp = fptoui <4 x double> %i.bo to <4 x i16>
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %index57
  store <4 x i16> %i.bp, ptr %i.bq, align 2, !tbaa !59, !alias.scope !60, !noalias !62
  %i.br = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.bl, <4 x double> splat (double 2.550000e+02), <4 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.bs = fcmp oge <4 x double> %i.br, splat (double 2.550000e+02)
  %i.bt = select <4 x i1> %i.bs, <4 x double> splat (double 2.550000e+02), <4 x double> %i.br
  %i.bu = fptoui <4 x double> %i.bt to <4 x i8>
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index57
  store <4 x i8> %i.bu, ptr %i.bv, align 1, !tbaa !64, !alias.scope !65, !noalias !56
  %index.next58 = add nuw i64 %index57, 4         ; 2 uses
  %i.bw = icmp eq i64 %index.next58, 2048
  br i1 %i.bw, label %scalar.ph54.preheader, label %vector.body56, !llvm.loop !66

scalar.ph54.preheader:                            ; preds = %vector.body56, %vector.memcheck
  %indvars.iv186.i.ph = phi i64 [ 0, %vector.memcheck ], [ 2048, %vector.body56 ]
  br label %scalar.ph54

scalar.ph54:                                      ; preds = %scalar.ph54.preheader, %scalar.ph54
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %scalar.ph54 ], [ %indvars.iv186.i.ph, %scalar.ph54.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv186.i
  %i.by = load float, ptr %i.bx, align 4, !tbaa !52
  %i.bz = fpext float %i.by to double             ; 2 uses
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bz, double 6.553500e+04, double 5.000000e-01) ; 2 uses
  %.inv.i = fcmp oge double %i.ca, 6.553500e+04
  %i.cb = select i1 %.inv.i, double 6.553500e+04, double %i.ca
  %i.cc = fptoui double %i.cb to i16
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv186.i
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !59
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.bz, double 2.550000e+02, double 5.000000e-01) ; 2 uses
  %.inv154.i = fcmp oge double %i.ce, 2.550000e+02
  %i.cf = select i1 %.inv154.i, double 2.550000e+02, double %i.ce
  %i.cg = fptoui double %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv186.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !64
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond189.not.i = icmp eq i64 %indvars.iv.next187.i, 2049
  br i1 %exitcond189.not.i, label %.preheader163.preheader.i, label %scalar.ph54, !llvm.loop !67

.preheader163.preheader.i:                        ; preds = %scalar.ph54
  %.pre.i = load float, ptr %i.af, align 4, !tbaa !52
  br label %.preheader163.i

.preheader163.i:                                  ; preds = %.preheader163.i, %.preheader163.preheader.i
  %2 = phi float [ %.pre.i, %.preheader163.preheader.i ], [ %3, %.preheader163.i ] ; 2 uses
  %indvars.iv190.i = phi i64 [ 0, %.preheader163.preheader.i ], [ %indvars.iv.next191.i, %.preheader163.i ] ; 3 uses
  %.2141171.i = phi i32 [ 0, %.preheader163.preheader.i ], [ %.3142.i, %.preheader163.i ] ; 2 uses
  %i.ci = trunc nuw nsw i64 %indvars.iv190.i to i32
  %i.cj = uitofp nneg i32 %i.ci to double
  %i.ck = fmul nnan double %i.cj, f0x3F1334911EDA5B17 ; 2 uses
  %i.cl = fmul nnan double %i.ck, %i.ck
  %i.cm = add nsw i32 %.2141171.i, 1              ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !52 ; 2 uses
  %i.cq = fmul float %2, %i.cp
  %i.cr = fpext float %i.cq to double
  %i.cs = fcmp ogt double %i.cl, %i.cr            ; 2 uses
  %.3142.i = select i1 %i.cs, i32 %i.cm, i32 %.2141171.i ; 2 uses
  %i.ct = trunc i32 %.3142.i to i16
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %indvars.iv190.i
  store i16 %i.ct, ptr %i.cu, align 2, !tbaa !59
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next191.i, 27300
  %3 = select i1 %i.cs, float %i.cp, float %2
  br i1 %exitcond193.not.i, label %.preheader161.i, label %.preheader163.i

.preheader161.i:                                  ; preds = %.preheader163.i, %bb.s
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %bb.s ], [ 0, %.preheader163.i ] ; 3 uses
  %.4143173.i = phi i64 [ %indvars.iv194.i, %bb.s ], [ 0, %.preheader163.i ]
  %i.cv = trunc nuw nsw i64 %indvars.iv197.i to i32
  %i.cw = uitofp nneg i32 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.638300e+04         ; 2 uses
  %i.cy = fmul double %i.cx, %i.cx
  %sext.i = shl i64 %.4143173.i, 32
  %i.cz = ashr exact i64 %sext.i, 32              ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.cz
  %.pre.i.a = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader161.i
  %i.da = phi float [ %.pre.i.a, %.preheader161.i ], [ %i.dc, %bb.r ]
  %indvars.iv194.i = phi i64 [ %i.cz, %.preheader161.i ], [ %indvars.iv.next195.i, %bb.r ] ; 3 uses
  %indvars.iv.next195.i = add nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv.next195.i
  %i.dc = load float, ptr %i.db, align 4, !tbaa !52 ; 2 uses
  %i.dd = fmul float %i.da, %i.dc
  %i.de = fpext float %i.dd to double
  %i.df = fcmp ogt double %i.cy, %i.de
  br i1 %i.df, label %bb.r, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = trunc i64 %indvars.iv194.i to i16
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv197.i
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !59
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond200.not.i = icmp eq i64 %indvars.iv.next198.i, 16384
  br i1 %exitcond200.not.i, label %.preheader.i, label %.preheader161.i

.preheader.i:                                     ; preds = %bb.s, %bb.u
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %bb.u ], [ 0, %bb.s ] ; 3 uses
  %.6175.i = phi i64 [ %indvars.iv201.i, %bb.u ], [ 0, %bb.s ]
  %i.di = trunc nuw nsw i64 %indvars.iv204.i to i32
  %i.dj = uitofp nneg i32 %i.di to double
  %i.dk = fdiv double %i.dj, 2.550000e+02         ; 2 uses
  %i.dl = fmul double %i.dk, %i.dk
  %sext218.i = shl i64 %.6175.i, 32
  %i.dm = ashr exact i64 %sext218.i, 32           ; 2 uses
  %.phi.trans.insert208.i = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.dm
  %.pre209.i = load float, ptr %.phi.trans.insert208.i, align 4, !tbaa !52
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader.i
  %i.dn = phi float [ %.pre209.i, %.preheader.i ], [ %i.dp, %bb.t ]
  %indvars.iv201.i = phi i64 [ %i.dm, %.preheader.i ], [ %indvars.iv.next202.i, %bb.t ] ; 3 uses
  %indvars.iv.next202.i = add nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.do = getelementptr inbounds [4 x i8], ptr %i.af, i64 %indvars.iv.next202.i
  %i.dp = load float, ptr %i.do, align 4, !tbaa !52 ; 2 uses
  %i.dq = fmul float %i.dn, %i.dp
  %i.dr = fpext float %i.dq to double
  %i.ds = fcmp ogt double %i.dl, %i.dr
  br i1 %i.ds, label %bb.t, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dt = trunc i64 %indvars.iv201.i to i16
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv204.i
  store i16 %i.dt, ptr %i.du, align 2, !tbaa !59
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next205.i, 256
  br i1 %exitcond207.not.i, label %bb.v, label %.preheader.i

bb.v:                                             ; preds = %bb.u
  store float 1.365000e+04, ptr @Fltsize, align 4, !tbaa !52
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.af, ptr %i.dv, align 8, !tbaa !68
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  store ptr %i.ag, ptr %i.dw, align 8, !tbaa !69
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %i.ah, ptr %i.dx, align 8, !tbaa !70
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store ptr %i.ac, ptr %i.dy, align 8, !tbaa !71
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store ptr %i.ad, ptr %i.dz, align 8, !tbaa !72
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  store ptr %i.ae, ptr %i.ea, align 8, !tbaa !73
  br label %PixarLogMakeTables.exit

bb.w:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @TIFFInitPixarLog.module, ptr noundef nonnull @.str.1) #7
  br label %PixarLogMakeTables.exit

PixarLogMakeTables.exit:                          ; preds = %bb.v, %bb.q, %bb.w, %bb.b
  %.0 = phi i32 [ 0, %bb.w ], [ 0, %bb.b ], [ 1, %bb.q ], [ 1, %bb.v ]
  ret i32 %.0
}

declare i32 @_TIFFMergeFields(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @TIFFErrorExtR(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @_TIFFmallocExt(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_TIFFmemset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @PixarLogFixupTags(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PixarLogSetupDecode(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.g, i32 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr @_TIFFNoPostDecode, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.l = load i16, ptr %i.k, align 2, !tbaa !77
  %i.m = icmp eq i16 %i.l, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.o = load i16, ptr %i.n, align 2, !tbaa !78
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi i16 [ %i.o, %bb.c ], [ 1, %bb.b ]    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  store i16 %i.p, ptr %i.q, align 8, !tbaa !79
  %i.r = zext i16 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load i32, ptr %i.s, align 8, !tbaa !80
  %i.u = zext i32 %i.t to i64
  %i.v = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.r, i64 noundef range(i64 0, 4294967296) %i.u, ptr noundef null) #7
  %i.w = zext i32 %spec.select to i64
  %i.x = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.v, i64 noundef range(i64 0, 4294967296) %i.w, ptr noundef null) #7
  %i.y = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.x, i64 noundef 2, ptr noundef null) #7 ; 3 uses
  %i.z = load i16, ptr %i.q, align 8, !tbaa !79   ; 2 uses
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1                ; 2 uses
  %i.ac = icmp eq i64 %i.y, 0
  %i.ad = icmp eq i16 %i.z, 0
  %or.cond.i = or i1 %i.ac, %i.ad
  %i.ae = xor i64 %i.ab, 9223372036854775807
  %i.af = icmp sgt i64 %i.y, %i.ae
  %or.cond11.i = or i1 %or.cond.i, %i.af
  %i.ag = add nsw i64 %i.ab, %i.y                 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, 0
  %i.ai = select i1 %or.cond11.i, i1 true, i1 %i.ah
  br i1 %i.ai, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.ag) #7 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !81
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 3 uses
  store i64 %i.ag, ptr %i.am, align 8, !tbaa !82
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %0, i64 116       ; 2 uses
  %.val = load i16, ptr %i.aq, align 4, !tbaa !83
  %i.ar = getelementptr i8, ptr %0, i64 118
  %.val50 = load i16, ptr %i.ar, align 2, !tbaa !84 ; 7 uses
  switch i16 %.val, label %.thread55 [
    i16 32, label %bb.h
    i16 16, label %bb.i
    i16 12, label %bb.j
    i16 11, label %bb.k
    i16 8, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq i16 %.val50, 3
  br i1 %i.as, label %.thread58, label %.thread55

bb.i:                                             ; preds = %bb.g
  switch i16 %.val50, label %.thread55 [
    i16 4, label %.thread58
    i16 1, label %.thread58
  ]

bb.j:                                             ; preds = %bb.g
  %i.at = add i16 %.val50, -2
end_hunk_0
