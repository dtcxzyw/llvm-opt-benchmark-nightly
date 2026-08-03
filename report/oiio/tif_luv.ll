inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Luv24toXYZ:bb.a
  %i.h = icmp samesign ugt i64 %.078, 1
  br i1 %i.h, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Luv24toLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i64 [ %i.d, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.022 = phi ptr [ %i.al, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0821 = phi ptr [ %i.am, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = load i32, ptr %.0821, align 4, !tbaa !3  ; 2 uses
  %i.f = lshr i32 %i.e, 12
  %i.g = trunc i32 %i.f to i16
  %i.h = and i16 %i.g, 4093
  %i.i = add nuw nsw i16 %i.h, 13314
  %i.j = getelementptr inbounds nuw i8, ptr %.022, i64 2
  store i16 %i.i, ptr %.022, align 2, !tbaa !89
  %i.k = and i32 %i.e, 16383                      ; 3 uses
  %or.cond.i = icmp samesign ugt i32 %i.k, 16288
  br i1 %or.cond.i, label %bb.d, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.c
  %.028.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %.02227.i = phi i32 [ %.123.i, %bb.c ], [ 163, %.lr.ph ] ; 2 uses
  %i.l = add nuw i32 %.02227.i, %.028.i
  %i.m = lshr i32 %i.l, 1                         ; 4 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14
  %i.r = sext i16 %i.q to i32
  %i.s = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.c, label %uv_decode.exit

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.123.i = phi i32 [ %.02227.i, %.preheader.i ], [ %i.m, %bb.b ] ; 2 uses
  %.1.i = phi i32 [ %i.m, %.preheader.i ], [ %.028.i, %bb.b ] ; 4 uses
  %i.v = sub nsw i32 %.123.i, %.1.i
  %i.w = icmp ugt i32 %i.v, 1
  br i1 %i.w, label %.preheader.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %.phi.trans.insert29.i = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert.i
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29.i, i64 6
  %.pre.i = load i16, ptr %.phi.trans.insert30.i, align 2, !tbaa !14
  %.pre32.i = sext i16 %.pre.i to i32
  %.pre34.i = sub nsw i32 %i.k, %.pre32.i
  %i.x = sitofp i32 %.pre34.i to double
  %i.y = fadd nnan double %i.x, 5.000000e-01
  br label %uv_decode.exit

uv_decode.exit:                                   ; preds = %bb.b, %._crit_edge.i
  %.pre-phi35.i = phi double [ %i.y, %._crit_edge.i ], [ 5.000000e-01, %bb.b ]
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %._crit_edge.i ], [ %i.n, %bb.b ]
  %.2.i = phi i32 [ %.1.i, %._crit_edge.i ], [ %i.m, %bb.b ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi.i
  %i.aa = load float, ptr %i.z, align 8, !tbaa !10
  %i.ab = fpext float %i.aa to double
  %i.ac = uitofp i32 %.2.i to double
  %i.ad = fadd nnan double %i.ac, 5.000000e-01
  %i.ae = insertelement <2 x double> poison, double %.pre-phi35.i, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = insertelement <2 x double> <double poison, double f0x3F9158B820000000>, double %i.ab, i64 0
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> splat (double f0x3F6CAC0840000000), <2 x double> %i.ag)
  %i.ai = fmul <2 x double> %i.ah, splat (double 3.276800e+04)
  %i.aj = fptosi <2 x double> %i.ai to <2 x i16>
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %uv_decode.exit
  %i.ak = phi <2 x i16> [ %i.aj, %uv_decode.exit ], [ <i16 6898, i16 15521>, %.lr.ph ]
  %i.al = getelementptr inbounds nuw i8, ptr %.022, i64 6
  store <2 x i16> %i.ak, ptr %i.j, align 2, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %.0821, i64 4
  %i.an = icmp sgt i64 %.in, 1
  br i1 %i.an, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv24toRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.012 = phi ptr [ %i.cw, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.0511 = phi ptr [ %i.e, %XYZtoRGB24.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.0610 = phi i64 [ %i.d, %XYZtoRGB24.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.0610, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.0511, i64 4
  %i.f = load i32, ptr %.0511, align 4, !tbaa !3  ; 2 uses
  %i.g = lshr i32 %i.f, 14
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %LogLuv24toXYZ.exit, label %LogL10toY.exit.i

LogL10toY.exit.i:                                 ; preds = %.lr.ph
  %i.j = uitofp nneg i32 %i.h to double
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.m = tail call double @exp(double noundef %i.l) #16, !tbaa !3 ; 3 uses
  %i.n = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %LogLuv24toXYZ.exit

bb.b:                                             ; preds = %LogL10toY.exit.i
  %i.o = and i32 %i.f, 16383                      ; 3 uses
  %or.cond.i.i = icmp samesign ugt i32 %i.o, 16288
  br i1 %or.cond.i.i, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b, %bb.d
  %.028.i.i = phi i32 [ %.1.i.i, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.02227.i.i = phi i32 [ %.123.i.i, %bb.d ], [ 163, %bb.b ] ; 2 uses
  %i.p = add nuw i32 %.02227.i.i, %.028.i.i
  %i.q = lshr i32 %i.p, 1                         ; 4 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 6
  %i.u = load i16, ptr %i.t, align 2, !tbaa !14
  %i.v = sext i16 %i.u to i32
  %i.w = sub nsw i32 %i.o, %i.v                   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %bb.d, label %uv_decode.exit.i

bb.d:                                             ; preds = %bb.c, %.preheader.i.i
  %.123.i.i = phi i32 [ %.02227.i.i, %.preheader.i.i ], [ %i.q, %bb.c ] ; 2 uses
  %.1.i.i = phi i32 [ %i.q, %.preheader.i.i ], [ %.028.i.i, %bb.c ] ; 4 uses
  %i.z = sub nsw i32 %.123.i.i, %.1.i.i
  %i.aa = icmp ugt i32 %i.z, 1
  br i1 %i.aa, label %.preheader.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.d
  %.phi.trans.insert.i.i = zext nneg i32 %.1.i.i to i64 ; 2 uses
  %.phi.trans.insert29.i.i = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.phi.trans.insert.i.i
  %.phi.trans.insert30.i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert29.i.i, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert30.i.i, align 2, !tbaa !14
  %.pre32.i.i = sext i16 %.pre.i.i to i32
  %.pre34.i.i = sub nsw i32 %i.o, %.pre32.i.i
  %i.ab = sitofp i32 %.pre34.i.i to double
  %i.ac = fadd double %i.ab, 5.000000e-01
  br label %uv_decode.exit.i

uv_decode.exit.i:                                 ; preds = %bb.c, %._crit_edge.i.i
  %.pre-phi35.i.i = phi double [ %i.ac, %._crit_edge.i.i ], [ 5.000000e-01, %bb.c ]
  %.pre-phi.i.i = phi i64 [ %.phi.trans.insert.i.i, %._crit_edge.i.i ], [ %i.r, %bb.c ]
  %.2.i.i = phi i32 [ %.1.i.i, %._crit_edge.i.i ], [ %i.q, %bb.c ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @uv_row, i64 %.pre-phi.i.i
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !10
  %i.af = fpext float %i.ae to double
  %i.ag = uitofp i32 %.2.i.i to double
  %i.ah = fadd double %i.ag, 5.000000e-01
  %i.ai = insertelement <2 x double> poison, double %.pre-phi35.i.i, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = insertelement <2 x double> <double poison, double f0x3F9158B820000000>, double %i.af, i64 0
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> splat (double f0x3F6CAC0840000000), <2 x double> %i.ak)
  br label %bb.e

bb.e:                                             ; preds = %uv_decode.exit.i, %bb.b
  %i.am = phi <2 x double> [ %i.al, %uv_decode.exit.i ], [ <double f0x3FCAF286BD156C1A, double f0x3FDE50D794B8199E>, %bb.b ] ; 3 uses
  %i.an = extractelement <2 x double> %i.am, i64 1
  %i.ao = fmul double %i.an, -1.600000e+01
  %i.ap = extractelement <2 x double> %i.am, i64 0
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double 6.000000e+00, double %i.ao)
  %i.ar = fadd double %i.aq, 1.200000e+01
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = fmul <2 x double> %i.am, <double 9.000000e+00, double 4.000000e+00>
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x double> %i.at, %i.av          ; 4 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 0
  %i.ay = extractelement <2 x double> %i.aw, i64 1
  %i.az = fsub double 1.000000e+00, %i.ax
  %i.ba = fsub double %i.az, %i.ay
  %i.bb = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 0
  %i.bd = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.be = fdiv <2 x double> %i.bc, %i.bd
  %i.bf = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fmul <2 x double> %i.bg, %i.be
  %3 = fptrunc double %i.m to float
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float>
  %i.bj = fpext float %3 to double
  %i.bk = fpext <2 x float> %i.bi to <2 x double>
  br label %LogLuv24toXYZ.exit

LogLuv24toXYZ.exit:                               ; preds = %.lr.ph, %LogL10toY.exit.i, %bb.e
  %.sroa.5.0 = phi double [ %i.bj, %bb.e ], [ 0.000000e+00, %LogL10toY.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 3 uses
  %i.bl = phi <2 x double> [ %i.bk, %bb.e ], [ zeroinitializer, %LogL10toY.exit.i ], [ zeroinitializer, %.lr.ph ] ; 4 uses
  %i.bm = fmul double %.sroa.5.0, -1.276000e+00
  %4 = fmul double %.sroa.5.0, 1.978000e+00
  %5 = extractelement <2 x double> %i.bl, i64 1
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 2.690000e+00, double %i.bm)
  %i.bn = insertelement <2 x double> poison, double %6, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %4, i64 1
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> <double -4.140000e-01, double -1.022000e+00>, <2 x double> %i.bo) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bl, i64 0
  %i.br = fmul double %.sroa.5.0, -2.240000e-01
  %i.bs = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> <double 4.400000e-02, double 6.100000e-02>, <2 x double> %i.bt) ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 1
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bq, double 1.163000e+00, double %i.bv) ; 3 uses
  %i.bx = extractelement <2 x double> %i.bp, i64 0 ; 3 uses
  %i.by = fcmp ugt double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.f, label %bb.h

bb.f:                                             ; preds = %LogLuv24toXYZ.exit
  %i.bz = fcmp ult double %i.bx, 1.000000e+00
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = tail call double @sqrt(double noundef %i.bx) #16, !tbaa !3
  %i.cb = fmul double %i.ca, 2.560000e+02
  %i.cc = fptosi double %i.cb to i32
  %i.cd = trunc i32 %i.cc to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %LogLuv24toXYZ.exit
  %i.ce = phi i8 [ 0, %LogLuv24toXYZ.exit ], [ %i.cd, %bb.g ], [ -1, %bb.f ]
  store i8 %i.ce, ptr %.012, align 1, !tbaa !9
  %i.cf = extractelement <2 x double> %i.bu, i64 0 ; 3 uses
  %i.cg = fcmp ugt double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ch = fcmp ult double %i.cf, 1.000000e+00
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = tail call double @sqrt(double noundef %i.cf) #16, !tbaa !3
  %i.cj = fmul double %i.ci, 2.560000e+02
  %i.ck = fptosi double %i.cj to i32
  %i.cl = trunc i32 %i.ck to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cm = phi i8 [ 0, %bb.h ], [ %i.cl, %bb.j ], [ -1, %bb.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !9
  %i.co = fcmp ugt double %i.bw, 0.000000e+00
  br i1 %i.co, label %bb.l, label %XYZtoRGB24.exit

bb.l:                                             ; preds = %bb.k
  %i.cp = fcmp ult double %i.bw, 1.000000e+00
  br i1 %i.cp, label %bb.m, label %XYZtoRGB24.exit

bb.m:                                             ; preds = %bb.l
  %i.cq = tail call double @sqrt(double noundef %i.bw) #16, !tbaa !3
  %i.cr = fmul double %i.cq, 2.560000e+02
  %i.cs = fptosi double %i.cr to i32
  %i.ct = trunc i32 %i.cs to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.k, %bb.l, %bb.m
  %i.cu = phi i8 [ 0, %bb.k ], [ %i.ct, %bb.m ], [ -1, %bb.l ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %.012, i64 3
  %i.cx = icmp sgt i64 %.0610, 1
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvDecode32(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !70
  %.fr120 = freeze i32 %i.d
  %i.e = sext i32 %.fr120 to i64
  %i.f = sdiv i64 %2, %i.e                        ; 41 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode32.module, ptr noundef nonnull @.str.9) #16
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.060 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 25 uses
  %i.o = shl i64 %i.f, 2
  tail call void @_TIFFmemset(ptr noundef %.060, i32 noundef 0, i64 noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !78   ; 5 uses
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %.preheader79.preheader, label %.split.us

.preheader79.preheader:                           ; preds = %bb.e
  %i.u = icmp sgt i64 %i.s, 0
  br i1 %i.u, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.preheader79.preheader
  %scevgep264 = getelementptr i8, ptr %.060, i64 4
  br label %.lr.ph100

.split.us:                                        ; preds = %bb.e
  %.not77.us = icmp eq i64 %i.f, 0
  br i1 %.not77.us, label %.split116.us, label %.split112.us

.preheader79.1:                                   ; preds = %._crit_edge
  %i.v = icmp sgt i64 %.158.lcssa, 0
  br i1 %i.v, label %.lr.ph100.1.preheader, label %._crit_edge.1

.lr.ph100.1.preheader:                            ; preds = %.preheader79.1
  %scevgep307 = getelementptr i8, ptr %.060, i64 4
  br label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100.1.preheader, %.critedge.1
  %.15899.1 = phi i64 [ %.3.1, %.critedge.1 ], [ %.158.lcssa, %.lr.ph100.1.preheader ]
  %.16298.1 = phi ptr [ %.364.1, %.critedge.1 ], [ %.162.lcssa, %.lr.ph100.1.preheader ] ; 6 uses
  %.06697.1 = phi i64 [ %.369.1, %.critedge.1 ], [ 0, %.lr.ph100.1.preheader ] ; 18 uses
  %.15899.1.fr = freeze i64 %.15899.1             ; 5 uses
  %i.w = load i8, ptr %.16298.1, align 1, !tbaa !9 ; 4 uses
  %i.x = zext i8 %i.w to i32                      ; 5 uses
  %i.y = icmp slt i8 %i.w, 0
  br i1 %i.y, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph100.1
  %.26382.1 = getelementptr i8, ptr %.16298.1, i64 1 ; 6 uses
  %i.z = add nsw i64 %.15899.1.fr, -1             ; 4 uses
  %.not83.1 = icmp eq i64 %i.z, 0
  br i1 %.not83.1, label %._crit_edge.1.thread, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %.preheader.1
  %i.aa = add i64 %.15899.1.fr, -2
  %smax317 = tail call i64 @llvm.smax.i64(i64 %.06697.1, i64 %i.f)
  %i.ab = sub i64 %smax317, %.06697.1
  %i.ac = zext nneg i8 %i.w to i64
  %umin318 = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ac)
  %umin319 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %umin318) ; 2 uses
  %i.ad = add nuw nsw i64 %umin319, 1             ; 2 uses
  %min.iters.check321 = icmp samesign ult i64 %umin319, 8
  br i1 %min.iters.check321, label %.lr.ph.1.preheader461, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph.1.preheader
  %i.ae = shl i64 %.06697.1, 2
  %scevgep306 = getelementptr i8, ptr %.060, i64 %i.ae
  %i.af = add i64 %.15899.1.fr, -2
  %smax308 = tail call i64 @llvm.smax.i64(i64 %.06697.1, i64 %i.f)
  %i.ag = sub i64 %smax308, %.06697.1
  %i.ah = zext nneg i8 %i.w to i64
  %umin309 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah)
  %umin310 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %umin309) ; 2 uses
  %i.ai = add i64 %.06697.1, %umin310
  %i.aj = shl i64 %i.ai, 2
  %scevgep311 = getelementptr i8, ptr %scevgep307, i64 %i.aj
  %scevgep312 = getelementptr i8, ptr %.16298.1, i64 2
  %scevgep313 = getelementptr i8, ptr %scevgep312, i64 %umin310
  %bound0314 = icmp ult ptr %scevgep306, %scevgep313
  %bound1315 = icmp ult ptr %.26382.1, %scevgep311
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %.lr.ph.1.preheader461, label %vector.ph322

vector.ph322:                                     ; preds = %vector.memcheck305
  %n.mod.vf323 = and i64 %i.ad, 7                 ; 2 uses
  %i.ak = icmp eq i64 %n.mod.vf323, 0
  %i.al = select i1 %i.ak, i64 8, i64 %n.mod.vf323
  %n.vec324 = sub nsw i64 %i.ad, %i.al            ; 5 uses
  %i.am = sub i64 %i.z, %n.vec324
  %i.an = getelementptr i8, ptr %.26382.1, i64 %n.vec324
  %i.ao = trunc nsw i64 %n.vec324 to i32
  %i.ap = sub nsw i32 %i.x, %i.ao
  %i.aq = add i64 %.06697.1, %n.vec324
  %i.ar = getelementptr [4 x i8], ptr %.060, i64 %.06697.1
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph322
  %index326 = phi i64 [ 0, %vector.ph322 ], [ %index.next332, %vector.body325 ] ; 3 uses
  %next.gep327 = getelementptr i8, ptr %.26382.1, i64 %index326 ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep327, i64 4
  %wide.load328 = load <4 x i8>, ptr %next.gep327, align 1, !tbaa !9, !alias.scope !90
  %wide.load329 = load <4 x i8>, ptr %i.as, align 1, !tbaa !9, !alias.scope !90
  %i.at = zext <4 x i8> %wide.load328 to <4 x i32>
  %i.au = zext <4 x i8> %wide.load329 to <4 x i32>
  %i.av = shl nuw nsw <4 x i32> %i.at, splat (i32 16)
end_hunk_0
begin_hunk_1_@Luv32toXYZ:bb.a
  %i.am = fptrunc <2 x double> %i.al to <2 x float>
  store <2 x float> %i.am, ptr %.09, align 4, !tbaa !7
  %i.an = fsub double 1.000000e+00, %i.af
  %i.ao = fsub double %i.an, %i.ah
  %i.ap = fdiv double %i.ao, %i.ah
  %i.aq = fmul double %i.ap, %i.o
  %i.ar = fptrunc double %i.aq to float
  %i.as = getelementptr inbounds nuw i8, ptr %.09, i64 8
  store float %i.ar, ptr %i.as, align 4, !tbaa !7
  br label %LogLuv32toXYZ.exit

LogLuv32toXYZ.exit:                               ; preds = %LogL16toY.exit.thread.i, %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %.09, i64 12
  %i.au = icmp samesign ugt i64 %.067, 1
  br i1 %i.au, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %LogLuv32toXYZ.exit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @Luv32toLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #15 {
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

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv32toRGB(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.09 = phi ptr [ %i.cf, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
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
  %i.m = and i32 %i.g, 32768
  %.not7.i.i = icmp eq i32 %i.m, 0
  %i.n = fneg double %i.l
  %i.o = select i1 %.not7.i.i, double %i.l, double %i.n ; 3 uses
  %i.p = fcmp ugt double %i.o, 0.000000e+00
  br i1 %i.p, label %bb.b, label %LogLuv32toXYZ.exit

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
  %i.ae = fmul nnan double %i.y, 4.000000e+00
  %i.af = fmul double %i.ae, %i.ac                ; 2 uses
  %i.ag = fmul double %i.ad, %i.ac                ; 2 uses
  %i.ah = fsub double 1.000000e+00, %i.ag
  %i.ai = fsub double %i.ah, %i.af
  %i.aj = insertelement <2 x double> poison, double %i.ai, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.ag, i64 1
  %i.al = insertelement <2 x double> poison, double %i.af, i64 0
  %i.am = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = fdiv <2 x double> %i.ak, %i.am
  %i.ao = insertelement <2 x double> poison, double %i.o, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.an, %i.ap
  %3 = fptrunc double %i.o to float
  %i.ar = fptrunc <2 x double> %i.aq to <2 x float>
  %i.as = fpext float %3 to double
  %i.at = fpext <2 x float> %i.ar to <2 x double>
  br label %LogLuv32toXYZ.exit

LogLuv32toXYZ.exit:                               ; preds = %.lr.ph, %LogL16toY.exit.i, %bb.b
  %.sroa.5.0 = phi double [ %i.as, %bb.b ], [ 0.000000e+00, %LogL16toY.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 3 uses
  %i.au = phi <2 x double> [ %i.at, %bb.b ], [ zeroinitializer, %LogL16toY.exit.i ], [ zeroinitializer, %.lr.ph ] ; 4 uses
  %i.av = fmul double %.sroa.5.0, -1.276000e+00
  %4 = fmul double %.sroa.5.0, 1.978000e+00
  %5 = extractelement <2 x double> %i.au, i64 1
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 2.690000e+00, double %i.av)
  %i.aw = insertelement <2 x double> poison, double %6, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %4, i64 1
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double -4.140000e-01, double -1.022000e+00>, <2 x double> %i.ax) ; 2 uses
  %i.az = extractelement <2 x double> %i.au, i64 0
  %i.ba = fmul double %.sroa.5.0, -2.240000e-01
  %i.bb = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> <double 4.400000e-02, double 6.100000e-02>, <2 x double> %i.bc) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 1
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.az, double 1.163000e+00, double %i.be) ; 3 uses
  %i.bg = extractelement <2 x double> %i.ay, i64 0 ; 3 uses
  %i.bh = fcmp ugt double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.c, label %bb.e

bb.c:                                             ; preds = %LogLuv32toXYZ.exit
  %i.bi = fcmp ult double %i.bg, 1.000000e+00
  br i1 %i.bi, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bj = tail call double @sqrt(double noundef %i.bg) #16, !tbaa !3
  %i.bk = fmul double %i.bj, 2.560000e+02
  %i.bl = fptosi double %i.bk to i32
  %i.bm = trunc i32 %i.bl to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %LogLuv32toXYZ.exit
  %i.bn = phi i8 [ 0, %LogLuv32toXYZ.exit ], [ %i.bm, %bb.d ], [ -1, %bb.c ]
  store i8 %i.bn, ptr %.09, align 1, !tbaa !9
  %i.bo = extractelement <2 x double> %i.bd, i64 0 ; 3 uses
  %i.bp = fcmp ugt double %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bq = fcmp ult double %i.bo, 1.000000e+00
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.br = tail call double @sqrt(double noundef %i.bo) #16, !tbaa !3
  %i.bs = fmul double %i.br, 2.560000e+02
  %i.bt = fptosi double %i.bs to i32
  %i.bu = trunc i32 %i.bt to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bv = phi i8 [ 0, %bb.e ], [ %i.bu, %bb.g ], [ -1, %bb.f ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.09, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = fcmp ugt double %i.bf, 0.000000e+00
  br i1 %i.bx, label %bb.i, label %XYZtoRGB24.exit

bb.i:                                             ; preds = %bb.h
  %i.by = fcmp ult double %i.bf, 1.000000e+00
  br i1 %i.by, label %bb.j, label %XYZtoRGB24.exit

bb.j:                                             ; preds = %bb.i
  %i.bz = tail call double @sqrt(double noundef %i.bf) #16, !tbaa !3
  %i.ca = fmul double %i.bz, 2.560000e+02
  %i.cb = fptosi double %i.ca to i32
  %i.cc = trunc i32 %i.cb to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %i.cd = phi i8 [ 0, %bb.h ], [ %i.cc, %bb.j ], [ -1, %bb.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.09, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.09, i64 3
  %i.cg = icmp samesign ugt i64 %.067, 1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LogL16InitState(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !58   ; 2 uses
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %i.e) #16
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i16, ptr %i.i, align 4, !tbaa !59
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.n = load i16, ptr %i.m, align 2, !tbaa !60
  %i.o = zext i16 %i.n to i32
  %i.p = or i32 %i.l, %i.o
  %i.q = or i32 %i.p, 8
  switch i32 %i.q, label %bb.g [
    i32 2059, label %LogL16GuessDataFmt.exit
    i32 1036, label %bb.e
    i32 1034, label %bb.e
    i32 1033, label %bb.e
    i32 524, label %bb.f
    i32 521, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %LogL16GuessDataFmt.exit

bb.f:                                             ; preds = %bb.d, %bb.d
  br label %LogL16GuessDataFmt.exit

bb.g:                                             ; preds = %bb.d
  br label %LogL16GuessDataFmt.exit

LogL16GuessDataFmt.exit:                          ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ -1, %bb.g ], [ 3, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ] ; 2 uses
  store i32 %.0.i, ptr %i.f, align 4, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %LogL16GuessDataFmt.exit, %bb.c
  %i.r = phi i32 [ %.0.i, %LogL16GuessDataFmt.exit ], [ %i.g, %bb.c ]
  switch i32 %i.r, label %bb.k [
    i32 0, label %bb.l
    i32 1, label %bb.i
    i32 3, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.13) #16
  br label %bb.t

bb.l:                                             ; preds = %bb.h, %bb.j, %bb.i
  %.sink = phi i32 [ 1, %bb.j ], [ 2, %bb.i ], [ 4, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.sink, ptr %i.s, align 4, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !65
  %i.v = and i32 %i.u, 1024
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !72
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.y, i64 noundef range(i64 0, 4294967296) %i.ab, ptr noundef null) #16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !73
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !74 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !75 ; 2 uses
  %i.ai = icmp ult i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = zext i32 %i.af to i64
  %i.ao = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.an, ptr noundef null) #16 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !73
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !73
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.ar = phi i64 [ %i.ao, %bb.o ], [ %i.aq, %bb.p ], [ %i.ac, %bb.m ]
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.ar, i64 noundef 2, ptr noundef null) #16
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !73
  %i.aw = shl i64 %i.av, 1
  %i.ax = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aw) #16 ; 2 uses
end_hunk_1
