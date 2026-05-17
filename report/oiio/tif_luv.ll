inline.NumInlined: 35
inline.NumDeleted: 5
begin_hunk_0_@oog_encode:bb.a
  %i.ce = add nsw i32 %.05159, %i.cd
  %i.cf = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.by
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  store double %i.bx, ptr %i.bz, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.cg = sub nsw i32 %.05159, %spec.store.select ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, -1
  br i1 %i.ch, label %bb.b, label %.loopexit

.preheader56:                                     ; preds = %.loopexit, %.preheader56._crit_edge
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.preheader56._crit_edge ], [ 99, %.loopexit ] ; 5 uses
  %.163 = phi i32 [ %i.cl, %.preheader56._crit_edge ], [ 100, %.loopexit ]
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv70
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !15
  %i.ck = fcmp ogt double %i.cj, 1.500000e+00
  %i.cl = trunc nuw nsw i64 %indvars.iv70 to i32  ; 4 uses
  br i1 %i.ck, label %.preheader, label %.preheader56._crit_edge

.preheader:                                       ; preds = %.preheader56, %bb.f
  %.04960 = phi i32 [ %i.cx, %bb.f ], [ 1, %.preheader56 ] ; 4 uses
  %i.cm = add nuw nsw i32 %.04960, %i.cl
  %.urem = urem i32 %i.cm, 100
  %i.cn = zext nneg i32 %.urem to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !15
  %i.cq = fcmp olt double %i.cp, 1.500000e+00
  br i1 %i.cq, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.cr = add nuw nsw i32 %.04960, 1              ; 3 uses
  %exitcond.not = icmp eq i32 %i.cr, 50
  br i1 %exitcond.not, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %bb.e
  %i.cs = add nuw nsw i32 %i.cr, %i.cl
  %.urem.1 = urem i32 %i.cs, 100
  %i.ct = zext nneg i32 %.urem.1 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !15
  %i.cw = fcmp olt double %i.cv, 1.500000e+00
  br i1 %i.cw, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.1
  %i.cx = add nuw nsw i32 %.04960, 2
  br label %.preheader

bb.g:                                             ; preds = %.preheader.1, %.preheader, %bb.e
  %.049.lcssa = phi i32 [ %.04960, %.preheader ], [ 50, %bb.e ], [ %i.cr, %.preheader.1 ] ; 2 uses
  %i.cy = add nuw nsw i32 %.163, 99               ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %.0.neg62 = phi i32 [ -1, %bb.g ], [ %.0.neg.1, %bb.k ] ; 2 uses
  %.061 = phi i32 [ 1, %bb.g ], [ %i.dk, %bb.k ]  ; 5 uses
  %i.cz = add nsw i32 %i.cy, %.0.neg62
  %.urem68 = urem i32 %i.cz, 100
  %i.da = zext nneg i32 %.urem68 to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !15
  %i.dd = fcmp olt double %i.dc, 1.500000e+00
  br i1 %i.dd, label %.preheader56._crit_edge.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.de = add nuw nsw i32 %.061, 1                ; 2 uses
  %exitcond69.not = icmp eq i32 %i.de, 50
  br i1 %exitcond69.not, label %.preheader56._crit_edge.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.0.neg = xor i32 %.061, -1                     ; 2 uses
  %i.df = add nsw i32 %i.cy, %.0.neg
  %.urem68.1 = urem i32 %i.df, 100
  %i.dg = zext nneg i32 %.urem68.1 to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !15
  %i.dj = fcmp olt double %i.di, 1.500000e+00
  br i1 %i.dj, label %.preheader56._crit_edge.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dk = add nuw nsw i32 %.061, 2
  %.0.neg.1 = sub nuw i32 -2, %.061
  br label %bb.h

.preheader56._crit_edge.sink.split:               ; preds = %bb.j, %bb.h, %bb.i
  %.0.lcssa = phi i32 [ %.061, %bb.h ], [ 50, %bb.i ], [ %i.de, %bb.j ]
  %.0.neg.lcssa = phi i32 [ %.0.neg62, %bb.h ], [ -50, %bb.i ], [ %.0.neg, %bb.j ]
  %i.dl = icmp samesign ult i32 %.049.lcssa, %.0.lcssa
  %i.dm = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %indvars.iv70
  %i.dn = add nsw i32 %.049.lcssa, %i.cl
  %i.do = add i32 %i.cy, %.0.neg.lcssa
  %.sink = select i1 %i.dl, i32 %i.dn, i32 %i.do
  %i.dp = srem i32 %.sink, 100
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  store i32 %i.ds, ptr %i.dm, align 4, !tbaa !3
  br label %.preheader56._crit_edge

.preheader56._crit_edge:                          ; preds = %.preheader56._crit_edge.sink.split, %.preheader56
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, -1
  %.not55 = icmp eq i64 %indvars.iv70, 0
  br i1 %.not55, label %bb.l, label %.preheader56

bb.l:                                             ; preds = %.preheader56._crit_edge
  store i1 true, ptr @oog_encode.initialized, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %i.dt = fadd double %1, f0xBFDE50D794B8199E
  %i.du = fadd double %0, f0xBFCAF286BD156C1A
  %i.dv = tail call double @atan2(double noundef %i.dt, double noundef %i.du) #16, !tbaa !3
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double f0x402FD4BBAA79DC37, double 5.000000e+01)
  %i.dx = fptosi double %i.dw to i32
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr @oog_encode.oog_table, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  ret i32 %i.ea
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define range(i32 -1, 1) i32 @uv_decode(ptr noundef writeonly captures(none) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %or.cond = icmp ugt i32 %2, 16288
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.028 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.02227 = phi i32 [ %.123, %bb.c ], [ 163, %bb.a ] ; 2 uses
  %i.a = add nuw i32 %.028, %.02227
  %i.b = lshr i32 %i.a, 1                         ; 4 uses
  %i.c = zext nneg i32 %i.b to i64                ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !14
  %i.g = sext i16 %i.f to i32
  %i.h = sub nsw i32 %2, %i.g                     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b, %.preheader
  %.123 = phi i32 [ %.02227, %.preheader ], [ %i.b, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.b, %.preheader ], [ %.028, %bb.b ] ; 4 uses
  %i.k = sub nsw i32 %.123, %.1
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = zext nneg i32 %.1 to i64   ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29, i64 6
  %.pre = load i16, ptr %.phi.trans.insert30, align 2, !tbaa !14
  %.pre32 = sext i16 %.pre to i32
  %.pre34 = sub nsw i32 %2, %.pre32
  %i.m = sitofp i32 %.pre34 to double
  %i.n = fadd double %i.m, 5.000000e-01
  br label %split

split:                                            ; preds = %bb.b, %._crit_edge
  %.pre-phi35 = phi double [ %i.n, %._crit_edge ], [ 5.000000e-01, %bb.b ]
  %.pre-phi = phi i64 [ %.phi.trans.insert, %._crit_edge ], [ %i.c, %bb.b ]
  %.2 = phi i32 [ %.1, %._crit_edge ], [ %i.b, %bb.b ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi
  %i.p = load float, ptr %i.o, align 8, !tbaa !10
  %i.q = fpext float %i.p to double
  %i.r = tail call double @llvm.fmuladd.f64(double %.pre-phi35, double f0x3F6CAC0840000000, double %i.q)
  store double %i.r, ptr %0, align 8, !tbaa !15
  %i.s = uitofp i32 %.2 to double
  %i.t = fadd double %i.s, 5.000000e-01
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double f0x3F6CAC0840000000, double f0x3F9158B820000000)
  store double %i.u, ptr %1, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %split
  %.024 = phi i32 [ 0, %split ], [ -1, %bb.a ]
  ret i32 %.024
}

; Function Attrs: nofree norecurse nounwind memory(argmem: write, errnomem: write) uwtable
define void @LogLuv24toXYZ(i32 noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = lshr i32 %0, 14
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %LogL10toY.exit.thread, label %LogL10toY.exit

LogL10toY.exit:                                   ; preds = %bb.a
  %i.d = uitofp nneg i32 %i.b to double
  %i.e = fadd double %i.d, 5.000000e-01
  %i.f = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.g = tail call double @exp(double noundef %i.f) #16, !tbaa !3 ; 4 uses
  %i.h = fcmp ugt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %LogL10toY.exit.thread

LogL10toY.exit.thread:                            ; preds = %bb.a, %LogL10toY.exit
  store <3 x float> zeroinitializer, ptr %1, align 4, !tbaa !7
  br label %bb.f

bb.b:                                             ; preds = %LogL10toY.exit
  %i.i = and i32 %0, 16383                        ; 3 uses
  %or.cond.i = icmp samesign ugt i32 %i.i, 16288
  br i1 %or.cond.i, label %bb.e, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.028.i = phi i32 [ %.1.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.02227.i = phi i32 [ %.123.i, %bb.d ], [ 163, %bb.b ] ; 2 uses
  %i.j = add nuw i32 %.02227.i, %.028.i
  %i.k = lshr i32 %i.j, 1                         ; 4 uses
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !14
  %i.p = sext i16 %i.o to i32
  %i.q = sub nsw i32 %i.i, %i.p                   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.s = icmp slt i32 %i.q, 0
  br i1 %i.s, label %bb.d, label %uv_decode.exit

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.123.i = phi i32 [ %.02227.i, %.preheader.i ], [ %i.k, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.k, %.preheader.i ], [ %.028.i, %bb.c ] ; 4 uses
  %i.t = sub nsw i32 %.123.i, %.1.i
  %i.u = icmp ugt i32 %i.t, 1
  br i1 %i.u, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert.i
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29.i, i64 6
  %.pre.i = load i16, ptr %.phi.trans.insert30.i, align 2, !tbaa !14
  %.pre32.i = sext i16 %.pre.i to i32
  %.pre34.i = sub nsw i32 %i.i, %.pre32.i
  %i.v = sitofp i32 %.pre34.i to double
  %i.w = fadd double %i.v, 5.000000e-01
  br label %uv_decode.exit

uv_decode.exit:                                   ; preds = %bb.c, %._crit_edge.i
  %.pre-phi35.i = phi double [ %i.w, %._crit_edge.i ], [ 5.000000e-01, %bb.c ]
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %._crit_edge.i ], [ %i.l, %bb.c ]
  %.2.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %i.k, %bb.c ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi.i
  %i.y = load float, ptr %i.x, align 8, !tbaa !10
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %.pre-phi35.i, double f0x3F6CAC0840000000, double %i.z)
  %i.ab = uitofp i32 %.2.i to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double f0x3F6CAC0840000000, double f0x3F9158B820000000)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %uv_decode.exit
  %.020 = phi double [ %i.aa, %uv_decode.exit ], [ f0x3FCAF286BD156C1A, %bb.b ] ; 2 uses
  %.0 = phi double [ %i.ad, %uv_decode.exit ], [ f0x3FDE50D794B8199E, %bb.b ] ; 2 uses
  %i.ae = fmul double %.0, -1.600000e+01
  %i.af = tail call double @llvm.fmuladd.f64(double %.020, double 6.000000e+00, double %i.ae)
  %i.ag = fadd double %i.af, 1.200000e+01
  %i.ah = fdiv double 1.000000e+00, %i.ag         ; 2 uses
  %i.ai = fmul double %.020, 9.000000e+00
  %i.aj = fmul double %i.ai, %i.ah                ; 2 uses
  %i.ak = fmul double %.0, 4.000000e+00
  %i.al = fmul double %i.ak, %i.ah                ; 3 uses
  %i.am = fdiv double %i.aj, %i.al
  %i.an = fmul double %i.g, %i.am
  %i.ao = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.g, i64 1
  %i.aq = fptrunc <2 x double> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %1, align 4, !tbaa !7
  %i.ar = fsub double 1.000000e+00, %i.aj
  %i.as = fsub double %i.ar, %i.al
  %i.at = fdiv double %i.as, %i.al
  %i.au = fmul double %i.g, %i.at
  %i.av = fptrunc double %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %LogL10toY.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LogLuv24fromXYZ(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !7
  %i.c = fpext float %i.b to double               ; 7 uses
  %i.d = fcmp ult double %i.c, 1.574200e+01
  br i1 %i.d, label %bb.b, label %LogL10fromY.exit

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp ugt double %i.c, 2.428300e-04
  br i1 %i.e, label %bb.c, label %LogL10fromY.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ninf double @llvm.log.f64(double %i.c)
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double f0x3FF71547652B82FE, double 1.200000e+01)
  %i.h = fmul double %i.g, 6.400000e+01           ; 2 uses
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %tiff_itrunc.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %bb.e, label %_TIFFRand.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @time(ptr noundef null) #16
  %i.l = trunc i64 %i.k to i32
  %.pre.pre.pre = load float, ptr %i.a, align 4, !tbaa !7
  %.pre29 = fpext float %.pre.pre.pre to double
  br label %_TIFFRand.exit.i.i

_TIFFRand.exit.i.i:                               ; preds = %bb.e, %bb.d
  %.pre28.pre-phi = phi double [ %.pre29, %bb.e ], [ %i.c, %bb.d ]
  %i.m = phi i32 [ %i.l, %bb.e ], [ %i.j, %bb.d ]
  %i.n = mul i32 %i.m, 1103515245
  %i.o = add i32 %i.n, 1103527590                 ; 2 uses
  store i32 %i.o, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.p = lshr i32 %i.o, 16
  %i.q = and i32 %i.p, 32767
  %i.r = uitofp nneg i32 %i.q to double
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double f0x3F00002000400080, double %i.h)
  %i.t = fadd double %i.s, -5.000000e-01
  br label %tiff_itrunc.exit.i

tiff_itrunc.exit.i:                               ; preds = %_TIFFRand.exit.i.i, %bb.c
  %.pre27.pre-phi = phi double [ %.pre28.pre-phi, %_TIFFRand.exit.i.i ], [ %i.c, %bb.c ]
  %.0.in.i.i = phi double [ %i.t, %_TIFFRand.exit.i.i ], [ %i.h, %bb.c ]
  %.0.i.i = fptosi double %.0.in.i.i to i32
  br label %LogL10fromY.exit

LogL10fromY.exit:                                 ; preds = %bb.a, %bb.b, %tiff_itrunc.exit.i
  %.pre-phi = phi double [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %.pre27.pre-phi, %tiff_itrunc.exit.i ] ; 2 uses
  %.0.i = phi i32 [ 1023, %bb.a ], [ 0, %bb.b ], [ %.0.i.i, %tiff_itrunc.exit.i ] ; 2 uses
  %i.u = load float, ptr %0, align 4, !tbaa !7
  %i.v = fpext float %i.u to double               ; 2 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %.pre-phi, double 1.500000e+01, double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !7
  %i.z = fpext float %i.y to double
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.z, double 3.000000e+00, double %i.w) ; 3 uses
  %i.ab = icmp eq i32 %.0.i, 0
  %i.ac = fcmp ole double %i.aa, 0.000000e+00
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac   ; 2 uses
  %i.ad = fmul double %i.v, 4.000000e+00
  %i.ae = fdiv double %i.ad, %i.aa
  %i.af = fmul double %.pre-phi, 9.000000e+00
  %i.ag = fdiv double %i.af, %i.aa
  %.018 = select i1 %or.cond, double f0x3FCAF286BD156C1A, double %i.ae
  %.017 = select i1 %or.cond, double f0x3FDE50D794B8199E, double %i.ag
  %i.ah = tail call i32 @uv_encode(double noundef %.018, double noundef %.017, i32 noundef %1) ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  %spec.select = select i1 %i.ai, i32 12266, i32 %i.ah
  %i.aj = shl i32 %.0.i, 14
  %i.ak = or i32 %spec.select, %i.aj
  ret i32 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define void @LogLuv32toXYZ(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 12)) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = ashr i32 %0, 16                          ; 2 uses
  %i.b = and i32 %i.a, 32767                      ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %LogL16toY.exit.thread, label %LogL16toY.exit

LogL16toY.exit:                                   ; preds = %bb.a
  %i.c = uitofp nneg i32 %i.b to double
  %i.d = fadd double %i.c, 5.000000e-01
  %i.e = tail call double @llvm.fmuladd.f64(double %i.d, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.f = tail call double @exp(double noundef %i.e) #16, !tbaa !3 ; 2 uses
  %i.g = and i32 %i.a, 32768
  %.not7.i = icmp eq i32 %i.g, 0
  %i.h = fneg double %i.f
  %i.i = select i1 %.not7.i, double %i.f, double %i.h ; 4 uses
  %i.j = fcmp ugt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %LogL16toY.exit.thread

LogL16toY.exit.thread:                            ; preds = %bb.a, %LogL16toY.exit
  store <3 x float> zeroinitializer, ptr %1, align 4, !tbaa !7
  br label %bb.c

bb.b:                                             ; preds = %LogL16toY.exit
  %i.k = lshr i32 %0, 8
  %i.l = and i32 %i.k, 255
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fadd nnan double %i.m, 5.000000e-01
  %i.o = fmul nnan double %i.n, f0x3F63FB013FB013FB ; 2 uses
  %i.p = and i32 %0, 255
  %i.q = uitofp nneg i32 %i.p to double
  %i.r = fadd nnan double %i.q, 5.000000e-01
  %i.s = fmul nnan double %i.r, f0x3F63FB013FB013FB ; 2 uses
  %i.t = fmul nnan double %i.s, -1.600000e+01
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double 6.000000e+00, double %i.t)
  %i.v = fadd double %i.u, 1.200000e+01
  %i.w = fdiv double 1.000000e+00, %i.v           ; 2 uses
  %i.x = fmul nnan double %i.o, 9.000000e+00
  %i.y = fmul double %i.x, %i.w                   ; 2 uses
  %i.z = fmul nnan double %i.s, 4.000000e+00
  %i.aa = fmul double %i.z, %i.w                  ; 3 uses
  %i.ab = fdiv double %i.y, %i.aa
  %i.ac = fmul double %i.ab, %i.i
  %i.ad = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %i.i, i64 1
  %i.af = fptrunc <2 x double> %i.ae to <2 x float>
  store <2 x float> %i.af, ptr %1, align 4, !tbaa !7
  %i.ag = fsub double 1.000000e+00, %i.y
  %i.ah = fsub double %i.ag, %i.aa
  %i.ai = fdiv double %i.ah, %i.aa
  %i.aj = fmul double %i.ai, %i.i
  %i.ak = fptrunc double %i.aj to float
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ak, ptr %i.al, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %LogL16toY.exit.thread
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @LogLuv32fromXYZ(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !7
  %i.c = fpext float %i.b to double
  %i.d = tail call i32 @LogL16fromY(double noundef %i.c, i32 noundef %1) ; 2 uses
  %i.e = load float, ptr %0, align 4, !tbaa !7
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = load float, ptr %i.a, align 4, !tbaa !7
  %i.h = fpext float %i.g to double               ; 2 uses
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double 1.500000e+01, double %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !7
  %i.l = fpext float %i.k to double
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double 3.000000e+00, double %i.i) ; 3 uses
  %i.n = icmp eq i32 %i.d, 0
  %i.o = fcmp ole double %i.m, 0.000000e+00
  %or.cond = select i1 %i.n, i1 true, i1 %i.o     ; 2 uses
  %i.p = fmul double %i.f, 4.000000e+00
  %i.q = fdiv double %i.p, %i.m
  %i.r = fmul double %i.h, 9.000000e+00
  %i.s = fdiv double %i.r, %i.m
  %.024 = select i1 %or.cond, double f0x3FCAF286BD156C1A, double %i.q ; 2 uses
  %.023 = select i1 %or.cond, double f0x3FDE50D794B8199E, double %i.s ; 2 uses
  %i.t = fcmp ugt double %.024, 0.000000e+00
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.u = fmul double %.024, 4.100000e+02          ; 2 uses
  %i.v = icmp eq i32 %1, 0
  br i1 %i.v, label %tiff_itrunc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %_TIFFRand.exit.i

bb.d:                                             ; preds = %bb.c
  %i.x = tail call i64 @time(ptr noundef null) #16
  %i.y = trunc i64 %i.x to i32
  br label %_TIFFRand.exit.i

_TIFFRand.exit.i:                                 ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %i.y, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = mul i32 %i.z, 1103515245
  %i.ab = add i32 %i.aa, 1103527590               ; 2 uses
  store i32 %i.ab, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.ac = lshr i32 %i.ab, 16
  %i.ad = and i32 %i.ac, 32767
  %i.ae = uitofp nneg i32 %i.ad to double
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double f0x3F00002000400080, double %i.u)
  %i.ag = fadd double %i.af, -5.000000e-01
  br label %tiff_itrunc.exit

tiff_itrunc.exit:                                 ; preds = %bb.b, %_TIFFRand.exit.i
  %.0.in.i = phi double [ %i.ag, %_TIFFRand.exit.i ], [ %i.u, %bb.b ]
  %.0.i = fptosi double %.0.in.i to i32
  %i.ah = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 255)
  %i.ai = shl nuw nsw i32 %i.ah, 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %tiff_itrunc.exit
  %.0 = phi i32 [ %i.ai, %tiff_itrunc.exit ], [ 0, %bb.a ]
  %i.aj = fcmp ugt double %.023, 0.000000e+00
  br i1 %i.aj, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ak = fmul double %.023, 4.100000e+02         ; 2 uses
  %i.al = icmp eq i32 %1, 0
  br i1 %i.al, label %tiff_itrunc.exit31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !3 ; 2 uses
  %.not.i.i27 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i27, label %bb.h, label %_TIFFRand.exit.i28

bb.h:                                             ; preds = %bb.g
  %i.an = tail call i64 @time(ptr noundef null) #16
  %i.ao = trunc i64 %i.an to i32
  br label %_TIFFRand.exit.i28

_TIFFRand.exit.i28:                               ; preds = %bb.h, %bb.g
  %i.ap = phi i32 [ %i.ao, %bb.h ], [ %i.am, %bb.g ]
  %i.aq = mul i32 %i.ap, 1103515245
  %i.ar = add i32 %i.aq, 1103527590               ; 2 uses
  store i32 %i.ar, ptr @_TIFFRand.nCounter, align 4, !tbaa !3
  %i.as = lshr i32 %i.ar, 16
  %i.at = and i32 %i.as, 32767
  %i.au = uitofp nneg i32 %i.at to double
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double f0x3F00002000400080, double %i.ak)
  %i.aw = fadd double %i.av, -5.000000e-01
  br label %tiff_itrunc.exit31

tiff_itrunc.exit31:                               ; preds = %bb.f, %_TIFFRand.exit.i28
  %.0.in.i29 = phi double [ %i.aw, %_TIFFRand.exit.i28 ], [ %i.ak, %bb.f ]
  %.0.i30 = fptosi double %.0.in.i29 to i32
  %i.ax = tail call i32 @llvm.umin.i32(i32 %.0.i30, i32 255)
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %tiff_itrunc.exit31
  %.025 = phi i32 [ %i.ax, %tiff_itrunc.exit31 ], [ 0, %bb.e ]
  %i.ay = shl i32 %i.d, 16
  %i.az = or i32 %.0, %i.ay
  %i.ba = or disjoint i32 %i.az, %.025
  ret i32 %i.ba
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFInitSGILog(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @_TIFFMergeFields(ptr noundef %0, ptr noundef nonnull @LogLuvFields, i32 noundef 2) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @TIFFInitSGILog.module, ptr noundef nonnull @.str) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef 56) #16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1072
  store ptr %i.b, ptr %i.c, align 8, !tbaa !17
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFmemset(ptr noundef nonnull %i.b, i32 noundef 0, i64 noundef 56) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 -1, ptr %i.e, align 4, !tbaa !35
  %i.f = icmp eq i32 %1, 34677
  %i.g = zext i1 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @_logLuvNop, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr @LogLuvFixupTags, ptr %i.j, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr @LogLuvSetupDecode, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1000
  store ptr @LogLuvDecodeStrip, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1016
  store ptr @LogLuvDecodeTile, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 952
  store ptr @LogLuvSetupEncode, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1008
  store ptr @LogLuvEncodeStrip, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store ptr @LogLuvEncodeTile, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr @LogLuvClose, ptr %i.q, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1048
  store ptr @LogLuvCleanup, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !48
  store ptr @LogLuvVGetField, ptr %i.t, align 8, !tbaa !49
  %i.w = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !48
end_hunk_0
begin_hunk_1_@LogLuvDecode32:bb.a
  %scevgep268 = getelementptr i8, ptr %.16298, i64 2
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %umin266
  %bound0 = icmp ult ptr %scevgep, %scevgep269
  %bound1 = icmp ult ptr %.26382, %scevgep267
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader479, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck
  %n.mod.vf276 = and i64 %i.iy, 7                 ; 2 uses
  %i.jf = icmp eq i64 %n.mod.vf276, 0
  %i.jg = select i1 %i.jf, i64 8, i64 %n.mod.vf276
  %n.vec277 = sub nsw i64 %i.iy, %i.jg            ; 5 uses
  %i.jh = sub i64 %i.iu, %n.vec277
  %i.ji = getelementptr i8, ptr %.26382, i64 %n.vec277
  %i.jj = trunc nsw i64 %n.vec277 to i32
  %i.jk = sub nsw i32 %i.is, %i.jj
  %i.jl = add i64 %.06697, %n.vec277
  %i.jm = getelementptr [4 x i8], ptr %.060, i64 %.06697
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph275
  %index279 = phi i64 [ 0, %vector.ph275 ], [ %index.next284, %vector.body278 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.26382, i64 %index279 ; 2 uses
  %i.jn = getelementptr i8, ptr %next.gep, i64 4
  %wide.load280 = load <4 x i8>, ptr %next.gep, align 1, !tbaa !9, !alias.scope !117
  %wide.load281 = load <4 x i8>, ptr %i.jn, align 1, !tbaa !9, !alias.scope !117
  %i.jo = zext <4 x i8> %wide.load280 to <4 x i32>
  %i.jp = zext <4 x i8> %wide.load281 to <4 x i32>
  %i.jq = shl nuw <4 x i32> %i.jo, splat (i32 24)
  %i.jr = shl nuw <4 x i32> %i.jp, splat (i32 24)
  %i.js = getelementptr [4 x i8], ptr %i.jm, i64 %index279 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  %wide.load282 = load <4 x i32>, ptr %i.js, align 4, !tbaa !3, !alias.scope !120, !noalias !117
  %wide.load283 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !3, !alias.scope !120, !noalias !117
  %i.ju = or <4 x i32> %i.jq, %wide.load282
  %i.jv = or <4 x i32> %i.jr, %wide.load283
  store <4 x i32> %i.ju, ptr %i.js, align 4, !tbaa !3, !alias.scope !120, !noalias !117
  store <4 x i32> %i.jv, ptr %i.jt, align 4, !tbaa !3, !alias.scope !120, !noalias !117
  %index.next284 = add nuw i64 %index279, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.jw, label %.lr.ph.preheader479, label %vector.body278, !llvm.loop !122

bb.o:                                             ; preds = %.lr.ph100
  %i.jx = icmp samesign ult i64 %.15899.fr, 2
  br i1 %i.jx, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jy = getelementptr inbounds nuw i8, ptr %.16298, i64 1
  %i.jz = add nsw i32 %i.is, -126                 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.16298, i64 2 ; 3 uses
  %i.kb = load i8, ptr %i.jy, align 1, !tbaa !9
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw i32 %i.kc, 24                   ; 2 uses
  %i.ke = add nsw i64 %.15899.fr, -2              ; 3 uses
  %i.kf = icmp slt i64 %.06697, %i.f
  br i1 %i.kf, label %.lr.ph95.preheader, label %.critedge

.lr.ph95.preheader:                               ; preds = %bb.p
  %i.kg = xor i64 %.06697, -1
  %i.kh = add i64 %i.f, %i.kg
  %i.ki = add nsw i32 %i.is, -127
  %i.kj = zext nneg i32 %i.ki to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.kh, i64 %i.kj) ; 2 uses
  %i.kk = add nuw nsw i64 %umin, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin, 7
  br i1 %min.iters.check, label %.lr.ph95.preheader478, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph95.preheader
  %n.vec = and i64 %i.kk, 4294967288              ; 4 uses
  %i.kl = trunc nuw i64 %n.vec to i32
  %i.km = sub i32 %i.jz, %i.kl
  %i.kn = add i64 %.06697, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %.060, i64 %.06697
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kp = getelementptr [4 x i8], ptr %i.ko, i64 %index ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kp, align 4, !tbaa !3
  %wide.load262 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !3
  %i.kr = or <4 x i32> %wide.load, %broadcast.splat
  %i.ks = or <4 x i32> %wide.load262, %broadcast.splat
  store <4 x i32> %i.kr, ptr %i.kp, align 4, !tbaa !3
  store <4 x i32> %i.ks, ptr %i.kq, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kt = icmp eq i64 %index.next, %n.vec
  br i1 %i.kt, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kk, %n.vec
  br i1 %cmp.n, label %.critedge, label %.lr.ph95.preheader478

.lr.ph95.preheader478:                            ; preds = %.lr.ph95.preheader, %middle.block
  %.094.ph = phi i32 [ %i.jz, %.lr.ph95.preheader ], [ %i.km, %middle.block ]
  %.16793.ph = phi i64 [ %.06697, %.lr.ph95.preheader ], [ %i.kn, %middle.block ]
  br label %.lr.ph95

.lr.ph95:                                         ; preds = %.lr.ph95.preheader478, %.lr.ph95
  %.094 = phi i32 [ %i.ku, %.lr.ph95 ], [ %.094.ph, %.lr.ph95.preheader478 ]
  %.16793 = phi i64 [ %i.kv, %.lr.ph95 ], [ %.16793.ph, %.lr.ph95.preheader478 ] ; 2 uses
  %i.ku = add nsw i32 %.094, -1                   ; 2 uses
  %i.kv = add nsw i64 %.16793, 1                  ; 3 uses
  %i.kw = getelementptr inbounds [4 x i8], ptr %.060, i64 %.16793 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !3
  %i.ky = or i32 %i.kx, %i.kd
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !3
  %i.kz = icmp ne i32 %i.ku, 0
  %i.la = icmp slt i64 %i.kv, %i.f
  %i.lb = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %i.lb, label %.lr.ph95, label %.critedge, !llvm.loop !124

.lr.ph:                                           ; preds = %.lr.ph.preheader479, %bb.q
  %i.lc = phi i64 [ %i.lm, %bb.q ], [ %.ph480, %.lr.ph.preheader479 ] ; 2 uses
  %.26386 = phi ptr [ %.263, %bb.q ], [ %.26386.ph, %.lr.ph.preheader479 ] ; 3 uses
  %.185 = phi i32 [ %i.le, %bb.q ], [ %.185.ph, %.lr.ph.preheader479 ] ; 2 uses
  %.26884 = phi i64 [ %i.li, %bb.q ], [ %.26884.ph, %.lr.ph.preheader479 ] ; 4 uses
  %.not76 = icmp ne i32 %.185, 0
  %i.ld = icmp slt i64 %.26884, %i.f
  %or.cond = select i1 %.not76, i1 %i.ld, i1 false
  br i1 %or.cond, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.lr.ph
  %i.le = add nsw i32 %.185, -1
  %i.lf = load i8, ptr %.26386, align 1, !tbaa !9
  %i.lg = zext i8 %i.lf to i32
  %i.lh = shl nuw i32 %i.lg, 24
  %i.li = add nsw i64 %.26884, 1                  ; 2 uses
  %i.lj = getelementptr inbounds [4 x i8], ptr %.060, i64 %.26884 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !3
  %i.ll = or i32 %i.lh, %i.lk
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !3
  %.263 = getelementptr inbounds nuw i8, ptr %.26386, i64 1 ; 2 uses
  %i.lm = add nsw i64 %i.lc, -1                   ; 2 uses
  %.not = icmp eq i64 %i.lm, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !125

.critedge:                                        ; preds = %.lr.ph, %.lr.ph95, %middle.block, %bb.p
  %.369 = phi i64 [ %i.kv, %.lr.ph95 ], [ %.06697, %bb.p ], [ %i.kn, %middle.block ], [ %.26884, %.lr.ph ] ; 3 uses
  %.364 = phi ptr [ %i.ka, %.lr.ph95 ], [ %i.ka, %bb.p ], [ %i.ka, %middle.block ], [ %.26386, %.lr.ph ] ; 2 uses
  %.3 = phi i64 [ %i.ke, %.lr.ph95 ], [ %i.ke, %bb.p ], [ %i.ke, %middle.block ], [ %i.lc, %.lr.ph ] ; 3 uses
  %i.ln = icmp slt i64 %.369, %i.f
  %i.lo = icmp sgt i64 %.3, 0
  %i.lp = select i1 %i.ln, i1 %i.lo, i1 false
  br i1 %i.lp, label %.lr.ph100, label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.o, %.preheader79.preheader
  %.066.lcssa = phi i64 [ 0, %.preheader79.preheader ], [ %.06697, %bb.o ], [ %.369, %.critedge ] ; 2 uses
  %.162.lcssa = phi ptr [ %i.q, %.preheader79.preheader ], [ %.16298, %bb.o ], [ %.364, %.critedge ] ; 3 uses
  %.158.lcssa = phi i64 [ %i.s, %.preheader79.preheader ], [ 1, %bb.o ], [ %.3, %.critedge ] ; 4 uses
  %.not77 = icmp eq i64 %.066.lcssa, %i.f
  br i1 %.not77, label %.preheader79.1, label %.split112.us

._crit_edge.thread:                               ; preds = %.preheader, %bb.q
  %.369.ph = phi i64 [ %i.li, %bb.q ], [ %.06697, %.preheader ] ; 2 uses
  %.364.ph = phi ptr [ %.263, %bb.q ], [ %.26382, %.preheader ] ; 2 uses
  %.not77175 = icmp eq i64 %.369.ph, %i.f
  br i1 %.not77175, label %._crit_edge.1, label %.split112.us

.split112.us:                                     ; preds = %._crit_edge.thread, %._crit_edge, %._crit_edge.1, %._crit_edge.2, %._crit_edge.3, %._crit_edge.1.thread, %._crit_edge.2.thread, %.split.us
  %.us-phi = phi i64 [ 0, %.split.us ], [ %.066.lcssa, %._crit_edge ], [ %.066.lcssa.1, %._crit_edge.1 ], [ %.066.lcssa.2, %._crit_edge.2 ], [ %.066.lcssa.3, %._crit_edge.3 ], [ %.369.1.ph, %._crit_edge.1.thread ], [ %.06697.2, %._crit_edge.2.thread ], [ %.369.ph, %._crit_edge.thread ]
  %.us-phi113 = phi ptr [ %i.q, %.split.us ], [ %.162.lcssa, %._crit_edge ], [ %.162.lcssa.1, %._crit_edge.1 ], [ %.162.lcssa.2, %._crit_edge.2 ], [ %.162.lcssa.3, %._crit_edge.3 ], [ %.364.1.ph, %._crit_edge.1.thread ], [ %.16298.2, %._crit_edge.2.thread ], [ %.364.ph, %._crit_edge.thread ]
  %.us-phi114 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa, %._crit_edge ], [ %.158.lcssa.1, %._crit_edge.1 ], [ %.158.lcssa.2, %._crit_edge.2 ], [ %.158.lcssa.3, %._crit_edge.3 ], [ 0, %._crit_edge.1.thread ], [ 1, %._crit_edge.2.thread ], [ 0, %._crit_edge.thread ]
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !88
  %i.ls = sub nsw i64 %i.f, %.us-phi
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %0, ptr noundef nonnull @LogLuvDecode32.module, ptr noundef nonnull @.str.10, i32 noundef %i.lr, i64 noundef %i.ls) #16
  store ptr %.us-phi113, ptr %i.p, align 8, !tbaa !77
  store i64 %.us-phi114, ptr %i.r, align 8, !tbaa !78
  br label %bb.r

.split116.us:                                     ; preds = %._crit_edge.3, %.split.us
  %.us-phi117 = phi ptr [ %i.q, %.split.us ], [ %.162.lcssa.3, %._crit_edge.3 ]
  %.us-phi118 = phi i64 [ %i.s, %.split.us ], [ %.158.lcssa.3, %._crit_edge.3 ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !38
  tail call void %i.lu(ptr noundef %i.b, ptr noundef %1, i64 noundef %i.f) #16
  store ptr %.us-phi117, ptr %i.p, align 8, !tbaa !77
  store i64 %.us-phi118, ptr %i.r, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %.split116.us, %.split112.us, %bb.c
  %.059 = phi i32 [ 0, %.split112.us ], [ 1, %.split116.us ], [ 0, %bb.c ]
  ret i32 %.059
}

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv32toXYZ(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %LogLuv32toXYZ.exit
  %.09 = phi ptr [ %i.as, %LogLuv32toXYZ.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.058 = phi ptr [ %i.e, %LogLuv32toXYZ.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.067 = phi i64 [ %i.d, %LogLuv32toXYZ.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.067, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.f = load i32, ptr %.058, align 4, !tbaa !3   ; 3 uses
  %i.g = ashr i32 %i.f, 16                        ; 2 uses
  %i.h = and i32 %i.g, 32767                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %LogL16toY.exit.thread.i, label %LogL16toY.exit.i

LogL16toY.exit.i:                                 ; preds = %.lr.ph
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fadd double %i.i, 5.000000e-01
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.l = tail call double @exp(double noundef %i.k) #16, !tbaa !3 ; 2 uses
  %i.m = and i32 %i.g, 32768
  %.not7.i.i = icmp eq i32 %i.m, 0
  %i.n = fneg double %i.l
  %i.o = select i1 %.not7.i.i, double %i.l, double %i.n ; 4 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %LogL16toY.exit.thread.i

LogL16toY.exit.thread.i:                          ; preds = %LogL16toY.exit.i, %.lr.ph
  store <3 x float> zeroinitializer, ptr %.09, align 4, !tbaa !7
  br label %LogLuv32toXYZ.exit

bb.b:                                             ; preds = %LogL16toY.exit.i
  %i.q = lshr i32 %i.f, 8
  %i.r = and i32 %i.q, 255
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fadd nnan double %i.s, 5.000000e-01
  %i.u = fmul nnan double %i.t, f0x3F63FB013FB013FB ; 2 uses
  %i.v = and i32 %i.f, 255
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = fadd nnan double %i.w, 5.000000e-01
  %i.y = fmul nnan double %i.x, f0x3F63FB013FB013FB ; 2 uses
  %i.z = fmul nnan double %i.y, -1.600000e+01
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.u, double 6.000000e+00, double %i.z)
  %i.ab = fadd double %i.aa, 1.200000e+01
  %i.ac = fdiv double 1.000000e+00, %i.ab         ; 2 uses
  %i.ad = fmul nnan double %i.u, 9.000000e+00
  %i.ae = fmul double %i.ad, %i.ac                ; 2 uses
  %i.af = fmul nnan double %i.y, 4.000000e+00
  %i.ag = fmul double %i.af, %i.ac                ; 3 uses
  %i.ah = fdiv double %i.ae, %i.ag
  %i.ai = fmul double %i.ah, %i.o
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.o, i64 1
  %i.al = fptrunc <2 x double> %i.ak to <2 x float>
  store <2 x float> %i.al, ptr %.09, align 4, !tbaa !7
  %i.am = fsub double 1.000000e+00, %i.ae
  %i.an = fsub double %i.am, %i.ag
  %i.ao = fdiv double %i.an, %i.ag
  %i.ap = fmul double %i.ao, %i.o
  %i.aq = fptrunc double %i.ap to float
  %i.ar = getelementptr inbounds nuw i8, ptr %.09, i64 8
  store float %i.aq, ptr %i.ar, align 4, !tbaa !7
  br label %LogLuv32toXYZ.exit

LogLuv32toXYZ.exit:                               ; preds = %LogL16toY.exit.thread.i, %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %.09, i64 12
  %i.at = icmp samesign ugt i64 %.067, 1
  br i1 %i.at, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %LogLuv32toXYZ.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Luv32toLuv48(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %2, 9223372036854775804        ; 4 uses
  %i.d = and i64 %2, 3
  %i.e = shl i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %i.c, i64 %i.e
  %i.g = mul i64 %n.vec, 6
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.i
  %i.j = mul i64 %index, 6
  %next.gep16 = getelementptr i8, ptr %1, i64 %i.j
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 3 uses
  %i.k = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.l = trunc nuw <4 x i32> %i.k to <4 x i16>
  %i.m = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.n = and <4 x i32> %i.m, splat (i32 255)
  %i.o = uitofp nneg <4 x i32> %i.n to <4 x double>
  %i.p = fadd nnan <4 x double> %i.o, splat (double 5.000000e-01)
  %i.q = fmul nnan <4 x double> %i.p, splat (double f0x3F63FB013FB013FB)
  %i.r = and <4 x i32> %wide.load, splat (i32 255)
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x double>
  %i.t = fadd nnan <4 x double> %i.s, splat (double 5.000000e-01)
  %i.u = fmul nnan <4 x double> %i.t, splat (double f0x3F63FB013FB013FB)
  %i.v = fmul nnan <4 x double> %i.q, splat (double 3.276800e+04)
  %i.w = fptosi <4 x double> %i.v to <4 x i16>
  %i.x = fmul nnan <4 x double> %i.u, splat (double 3.276800e+04)
  %i.y = fptosi <4 x double> %i.x to <4 x i16>
  %i.z = shufflevector <4 x i16> %i.l, <4 x i16> %i.w, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aa = shufflevector <4 x i16> %i.y, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x i16> %i.z, <8 x i16> %i.aa, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i16> %interleaved.vec, ptr %next.gep16, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %middle.block, %.lr.ph.preheader
  %.015.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.d, %middle.block ] ; 2 uses
  %.01114.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 3 uses
  %.01213.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 6 uses
  %i.ac = load i32, ptr %.01114.ph, align 4, !tbaa !3 ; 3 uses
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 2
  store i16 %i.ae, ptr %.01213.ph, align 2, !tbaa !89
  %i.ag = lshr i32 %i.ac, 8
  %i.ah = and i32 %i.ac, 255
  %i.ai = and i32 %i.ag, 255
  %i.aj = uitofp nneg i32 %i.ah to double
  %i.ak = uitofp nneg i32 %i.ai to double
  %i.al = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = fadd nnan <2 x double> %i.am, splat (double 5.000000e-01)
  %i.ao = fmul nnan <2 x double> %i.an, splat (double f0x3F63FB013FB013FB)
  %i.ap = fmul nnan <2 x double> %i.ao, splat (double 3.276800e+04)
  %i.aq = fptosi <2 x double> %i.ap to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.af, align 2, !tbaa !89
  %i.ar = icmp samesign ugt i64 %.015.ph, 1
  br i1 %i.ar, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.01114.ph, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 6
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3  ; 3 uses
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 8
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !89
  %i.ay = lshr i32 %i.au, 8
  %i.az = and i32 %i.au, 255
  %i.ba = and i32 %i.ay, 255
  %i.bb = uitofp nneg i32 %i.az to double
  %i.bc = uitofp nneg i32 %i.ba to double
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  %i.bf = fadd nnan <2 x double> %i.be, splat (double 5.000000e-01)
  %i.bg = fmul nnan <2 x double> %i.bf, splat (double f0x3F63FB013FB013FB)
  %i.bh = fmul nnan <2 x double> %i.bg, splat (double 3.276800e+04)
  %i.bi = fptosi <2 x double> %i.bh to <2 x i16>
  store <2 x i16> %i.bi, ptr %i.ax, align 2, !tbaa !89
  %i.bj = icmp eq i64 %.015.ph, 3
  br i1 %i.bj, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bk = getelementptr inbounds nuw i8, ptr %.01114.ph, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 12
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !3  ; 3 uses
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 14
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !89
  %i.bq = lshr i32 %i.bm, 8
  %i.br = and i32 %i.bm, 255
  %i.bs = and i32 %i.bq, 255
  %i.bt = uitofp nneg i32 %i.br to double
  %i.bu = uitofp nneg i32 %i.bs to double
  %i.bv = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bt, i64 1
  %i.bx = fadd nnan <2 x double> %i.bw, splat (double 5.000000e-01)
  %i.by = fmul nnan <2 x double> %i.bx, splat (double f0x3F63FB013FB013FB)
  %i.bz = fmul nnan <2 x double> %i.by, splat (double 3.276800e+04)
  %i.ca = fptosi <2 x double> %i.bz to <2 x i16>
  store <2 x i16> %i.ca, ptr %i.bp, align 2, !tbaa !89
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv32toRGB(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.09 = phi ptr [ %i.bz, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.058 = phi ptr [ %i.e, %XYZtoRGB24.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.067 = phi i64 [ %i.d, %XYZtoRGB24.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.067, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.f = load i32, ptr %.058, align 4, !tbaa !3   ; 3 uses
  %i.g = ashr i32 %i.f, 16                        ; 2 uses
  %i.h = and i32 %i.g, 32767                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %LogLuv32toXYZ.exit, label %LogL16toY.exit.i

LogL16toY.exit.i:                                 ; preds = %.lr.ph
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fadd double %i.i, 5.000000e-01
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.l = tail call double @exp(double noundef %i.k) #16, !tbaa !3 ; 2 uses
end_hunk_1
