Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LogLuvDecode24:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %.lr.ph
  %.03643 = phi ptr [ %i.cr, %.lr.ph ], [ %.03643.ph, %.lr.ph.preheader61 ] ; 4 uses
  %.03742 = phi i64 [ %i.ct, %.lr.ph ], [ %.03742.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.03841 = phi i64 [ %i.cs, %.lr.ph ], [ %.03841.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.ce = load i8, ptr %.03643, align 1, !tbaa !9
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.03643, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.cj = zext i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 8
  %i.cl = or disjoint i32 %i.ck, %i.cg
  %i.cm = getelementptr inbounds nuw i8, ptr %.03643, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = zext i8 %i.cn to i32
  %i.cp = or disjoint i32 %i.cl, %i.co
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %.03742
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !6
  %i.cr = getelementptr inbounds nuw i8, ptr %.03643, i64 3 ; 2 uses
  %i.cs = add nsw i64 %.03841, -3                 ; 2 uses
  %i.ct = add nuw nsw i64 %.03742, 1              ; 3 uses
  %i.cu = icmp slt i64 %i.ct, %i.f
  %i.cv = icmp samesign ugt i64 %.03841, 5
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.e
  %.038.lcssa = phi i64 [ %.fr60, %bb.e ], [ %i.ak, %middle.block ], [ %i.cs, %.lr.ph ]
  %.037.lcssa = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ], [ %i.ct, %.lr.ph ] ; 2 uses
  %.036.lcssa = phi ptr [ %i.p, %bb.e ], [ %i.ai, %middle.block ], [ %i.cr, %.lr.ph ]
  store ptr %.036.lcssa, ptr %i.o, align 8, !tbaa !58
  store i64 %.038.lcssa, ptr %i.q, align 8, !tbaa !59
  %.not = icmp eq i64 %.037.lcssa, %i.f
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !62
  %i.cz = sub nsw i64 %i.f, %.037.lcssa
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode24.module, ptr noundef nonnull @.str.10, i32 noundef %i.cy, i64 noundef %i.cz) #16
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38
  tail call void %i.db(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %.039 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.c ]
  ret i32 %.039
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal void @Luv24toXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #14 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.010 = phi ptr [ %i.f, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.069 = phi ptr [ %i.g, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.078 = phi i64 [ %i.d, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.078, -1
  %i.e = load i32, ptr %.069, align 4, !tbaa !6
  tail call void @LogLuv24toXYZ(i32 noundef %i.e, ptr noundef %.010)
  %i.f = getelementptr inbounds nuw i8, ptr %.010, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %.069, i64 4
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.in = phi i64 [ %i.d, %bb.d ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.021 = phi ptr [ %i.al, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0820 = phi ptr [ %i.am, %bb.d ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.in, -1
  %i.e = load i32, ptr %.0820, align 4, !tbaa !6  ; 2 uses
  %i.f = lshr i32 %i.e, 12
  %i.g = trunc i32 %i.f to i16
  %i.h = and i16 %i.g, 4093
  %i.i = add nuw nsw i16 %i.h, 13314
  %i.j = getelementptr inbounds nuw i8, ptr %.021, i64 2
  store i16 %i.i, ptr %.021, align 2, !tbaa !63
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
  %i.aa = load float, ptr %i.z, align 8, !tbaa !12
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
  %i.al = getelementptr inbounds nuw i8, ptr %.021, i64 6
  store <2 x i16> %i.ak, ptr %i.j, align 2, !tbaa !63
  %i.am = getelementptr inbounds nuw i8, ptr %.0820, i64 4
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.012 = phi ptr [ %i.cf, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.0511 = phi ptr [ %i.e, %XYZtoRGB24.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.0610 = phi i64 [ %i.d, %XYZtoRGB24.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.0610, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.0511, i64 4
  %i.f = load i32, ptr %.0511, align 4, !tbaa !6  ; 2 uses
  %i.g = lshr i32 %i.f, 14
  %i.h = and i32 %i.g, 1023                       ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %LogLuv24toXYZ.exit, label %LogL10toY.exit.i

LogL10toY.exit.i:                                 ; preds = %.lr.ph
  %i.j = uitofp nneg i32 %i.h to double
  %i.k = fadd double %i.j, 5.000000e-01
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0x3F862E42FEFA39EF, double f0xC020A2B23F3BAB73)
  %i.m = tail call double @exp(double noundef %i.l) #16, !tbaa !6 ; 3 uses
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
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !12
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
  %3 = fptrunc double %i.m to float
  %4 = fsub double 1.000000e+00, %i.ax
  %5 = fsub double %4, %i.ay
  %i.az = insertelement <2 x double> %i.aw, double %5, i64 1
  %6 = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %7 = fdiv <2 x double> %i.az, %6
  %8 = insertelement <2 x double> poison, double %i.m, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fmul <2 x double> %9, %7
  %11 = fptrunc <2 x double> %10 to <2 x float>
  %12 = fpext float %3 to double
  %13 = fpext <2 x float> %11 to <2 x double>
  br label %LogLuv24toXYZ.exit

LogLuv24toXYZ.exit:                               ; preds = %.lr.ph, %LogL10toY.exit.i, %bb.e
  %.sroa.8.0 = phi double [ %12, %bb.e ], [ 0.000000e+00, %LogL10toY.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ba = phi <2 x double> [ %13, %bb.e ], [ zeroinitializer, %LogL10toY.exit.i ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %14 = insertelement <2 x double> poison, double %.sroa.8.0, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x double> %15, <double -1.276000e+00, double 1.978000e+00>
  %i.bc = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> <double 2.690000e+00, double -1.022000e+00>, <2 x double> %i.bb) ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  %i.bf = extractelement <2 x double> %i.ba, i64 1 ; 2 uses
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bf, double -4.140000e-01, double %i.be) ; 3 uses
  %16 = fmul double %.sroa.8.0, -2.240000e-01
  %17 = insertelement <2 x double> %i.bd, double %16, i64 0
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> <double 6.100000e-02, double 4.400000e-02>, <2 x double> %17) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double 1.163000e+00, double %19) ; 3 uses
  %i.bi = fcmp ugt double %i.bg, 0.000000e+00
  br i1 %i.bi, label %bb.f, label %bb.h

bb.f:                                             ; preds = %LogLuv24toXYZ.exit
  %i.bj = fcmp ult double %i.bg, 1.000000e+00
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call double @sqrt(double noundef %i.bg) #16, !tbaa !6
  %i.bl = fmul double %i.bk, 2.560000e+02
  %i.bm = fptosi double %i.bl to i32
  %i.bn = trunc i32 %i.bm to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %LogLuv24toXYZ.exit
  %i.bo = phi i8 [ 0, %LogLuv24toXYZ.exit ], [ %i.bn, %bb.g ], [ -1, %bb.f ]
  store i8 %i.bo, ptr %.012, align 1, !tbaa !9
  %20 = extractelement <2 x double> %18, i64 1    ; 3 uses
  %i.bp = fcmp ugt double %20, 0.000000e+00
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bq = fcmp ult double %20, 1.000000e+00
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = tail call double @sqrt(double noundef %20) #16, !tbaa !6
  %i.bs = fmul double %i.br, 2.560000e+02
  %i.bt = fptosi double %i.bs to i32
  %i.bu = trunc i32 %i.bt to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bv = phi i8 [ 0, %bb.h ], [ %i.bu, %bb.j ], [ -1, %bb.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = fcmp ugt double %i.bh, 0.000000e+00
  br i1 %i.bx, label %bb.l, label %XYZtoRGB24.exit

bb.l:                                             ; preds = %bb.k
  %i.by = fcmp ult double %i.bh, 1.000000e+00
  br i1 %i.by, label %bb.m, label %XYZtoRGB24.exit

bb.m:                                             ; preds = %bb.l
  %i.bz = tail call double @sqrt(double noundef %i.bh) #16, !tbaa !6
  %i.ca = fmul double %i.bz, 2.560000e+02
  %i.cb = fptosi double %i.ca to i32
  %i.cc = trunc i32 %i.cb to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.k, %bb.l, %bb.m
  %i.cd = phi i8 [ 0, %bb.k ], [ %i.cc, %bb.m ], [ -1, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.012, i64 3
  %i.cg = icmp sgt i64 %.0610, 1
  br i1 %i.cg, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvDecode32(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %.fr120 = freeze i32 %i.d
  %i.e = sext i32 %.fr120 to i64
  %i.f = sdiv i64 %2, %i.e                        ; 41 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvDecode32.module, ptr noundef nonnull @.str.9) #16
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.059 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]  ; 25 uses
  %i.o = shl i64 %i.f, 2
  tail call void @_TIFFmemset(ptr noundef %.059, i32 noundef 0, i64 noundef %i.o) #16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !58   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59   ; 5 uses
  %i.t = icmp sgt i64 %i.f, 0
  br i1 %i.t, label %.preheader79.preheader, label %.split.us

.preheader79.preheader:                           ; preds = %bb.e
  %i.u = icmp sgt i64 %i.s, 0
  br i1 %i.u, label %.lr.ph100.preheader, label %._crit_edge

.lr.ph100.preheader:                              ; preds = %.preheader79.preheader
  %scevgep263 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100

.split.us:                                        ; preds = %bb.e
  %.not77.us = icmp eq i64 %i.f, 0
  br i1 %.not77.us, label %.split116.us, label %.split112.us

.preheader79.1:                                   ; preds = %._crit_edge
  %i.v = icmp sgt i64 %.158.lcssa, 0
  br i1 %i.v, label %.lr.ph100.1.preheader, label %._crit_edge.1

.lr.ph100.1.preheader:                            ; preds = %.preheader79.1
  %scevgep301 = getelementptr i8, ptr %.059, i64 4
  br label %.lr.ph100.1

.lr.ph100.1:                                      ; preds = %.lr.ph100.1.preheader, %.critedge.1
  %.15899.1 = phi i64 [ %.3.1, %.critedge.1 ], [ %.158.lcssa, %.lr.ph100.1.preheader ]
  %.16198.1 = phi ptr [ %.363.1, %.critedge.1 ], [ %.161.lcssa, %.lr.ph100.1.preheader ] ; 6 uses
  %.06497.1 = phi i64 [ %.367.1, %.critedge.1 ], [ 0, %.lr.ph100.1.preheader ] ; 18 uses
  %.15899.1.fr = freeze i64 %.15899.1             ; 5 uses
  %i.w = load i8, ptr %.16198.1, align 1, !tbaa !9 ; 4 uses
  %i.x = zext i8 %i.w to i32                      ; 5 uses
  %i.y = icmp slt i8 %i.w, 0
  br i1 %i.y, label %bb.g, label %.preheader.1

.preheader.1:                                     ; preds = %.lr.ph100.1
  %.26282.1 = getelementptr i8, ptr %.16198.1, i64 1 ; 6 uses
  %i.z = add nsw i64 %.15899.1.fr, -1             ; 4 uses
  %.not83.1 = icmp eq i64 %i.z, 0
  br i1 %.not83.1, label %._crit_edge.1.thread, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %.preheader.1
  %i.aa = add i64 %.15899.1.fr, -2
  %i.ab = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.ac = sub i64 %i.ab, %.06497.1
  %i.ad = zext nneg i8 %i.w to i64
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ad)
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ae) ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check312 = icmp samesign ult i64 %i.af, 8
  br i1 %min.iters.check312, label %.lr.ph.1.preheader441, label %vector.memcheck299

vector.memcheck299:                               ; preds = %.lr.ph.1.preheader
  %i.ah = shl i64 %.06497.1, 2
  %scevgep300 = getelementptr i8, ptr %.059, i64 %i.ah
  %i.ai = add i64 %.15899.1.fr, -2
  %smax302 = tail call i64 @llvm.smax.i64(i64 %.06497.1, i64 %i.f)
  %i.aj = sub i64 %smax302, %.06497.1
  %i.ak = zext nneg i8 %i.w to i64
  %umin303 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.ak)
  %umin304 = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 %umin303) ; 2 uses
  %i.al = add i64 %.06497.1, %umin304
  %i.am = shl i64 %i.al, 2
  %scevgep305 = getelementptr i8, ptr %scevgep301, i64 %i.am
  %scevgep306 = getelementptr i8, ptr %.16198.1, i64 2
  %scevgep307 = getelementptr i8, ptr %scevgep306, i64 %umin304
  %bound0308 = icmp ult ptr %scevgep300, %scevgep307
  %bound1309 = icmp ult ptr %.26282.1, %scevgep305
  %found.conflict310 = and i1 %bound0308, %bound1309
  br i1 %found.conflict310, label %.lr.ph.1.preheader441, label %vector.ph313

vector.ph313:                                     ; preds = %vector.memcheck299
  %i.an = and i64 %i.ag, 7                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = select i1 %i.ao, i64 8, i64 %i.an
  %n.vec314 = sub nsw i64 %i.ag, %i.ap            ; 5 uses
  %i.aq = sub i64 %i.z, %n.vec314
  %i.ar = getelementptr i8, ptr %.26282.1, i64 %n.vec314
  %i.as = trunc nsw i64 %n.vec314 to i32
  %i.at = sub nsw i32 %i.x, %i.as
  %i.au = add i64 %.06497.1, %n.vec314
  %i.av = getelementptr [4 x i8], ptr %.059, i64 %.06497.1
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph313
  %index316 = phi i64 [ 0, %vector.ph313 ], [ %index.next322, %vector.body315 ] ; 3 uses
  %next.gep317 = getelementptr i8, ptr %.26282.1, i64 %index316 ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep317, i64 4
  %wide.load318 = load <4 x i8>, ptr %next.gep317, align 1, !tbaa !9, !alias.scope !121
  %wide.load319 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !9, !alias.scope !121
  %i.ax = zext <4 x i8> %wide.load318 to <4 x i32>
  %i.ay = zext <4 x i8> %wide.load319 to <4 x i32>
  %i.az = shl nuw nsw <4 x i32> %i.ax, splat (i32 16)
  %i.ba = shl nuw nsw <4 x i32> %i.ay, splat (i32 16)
  %i.bb = getelementptr [4 x i8], ptr %i.av, i64 %index316 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load320 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !6, !alias.scope !122, !noalias !121
  %wide.load321 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !6, !alias.scope !122, !noalias !121
  %i.bd = or <4 x i32> %i.az, %wide.load320
  %i.be = or <4 x i32> %i.ba, %wide.load321
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !6, !alias.scope !122, !noalias !121
  store <4 x i32> %i.be, ptr %i.bc, align 4, !tbaa !6, !alias.scope !122, !noalias !121
  %index.next322 = add nuw i64 %index316, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next322, %n.vec314
  br i1 %i.bf, label %.lr.ph.1.preheader441, label %vector.body315, !llvm.loop !96

.lr.ph.1.preheader441:                            ; preds = %vector.body315, %vector.memcheck299, %.lr.ph.1.preheader
  %.ph442 = phi i64 [ %i.z, %vector.memcheck299 ], [ %i.z, %.lr.ph.1.preheader ], [ %i.aq, %vector.body315 ]
  %.26286.1.ph = phi ptr [ %.26282.1, %vector.memcheck299 ], [ %.26282.1, %.lr.ph.1.preheader ], [ %i.ar, %vector.body315 ]
  %.185.1.ph = phi i32 [ %i.x, %vector.memcheck299 ], [ %i.x, %.lr.ph.1.preheader ], [ %i.at, %vector.body315 ]
  %.26684.1.ph = phi i64 [ %.06497.1, %vector.memcheck299 ], [ %.06497.1, %.lr.ph.1.preheader ], [ %i.au, %vector.body315 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader441, %bb.f
  %i.bg = phi i64 [ %i.bq, %bb.f ], [ %.ph442, %.lr.ph.1.preheader441 ] ; 2 uses
  %.26286.1 = phi ptr [ %.262.1, %bb.f ], [ %.26286.1.ph, %.lr.ph.1.preheader441 ] ; 3 uses
  %.185.1 = phi i32 [ %i.bi, %bb.f ], [ %.185.1.ph, %.lr.ph.1.preheader441 ] ; 2 uses
  %.26684.1 = phi i64 [ %i.bm, %bb.f ], [ %.26684.1.ph, %.lr.ph.1.preheader441 ] ; 4 uses
  %.not76.1 = icmp ne i32 %.185.1, 0
  %i.bh = icmp slt i64 %.26684.1, %i.f
  %or.cond.1 = select i1 %.not76.1, i1 %i.bh, i1 false
  br i1 %or.cond.1, label %bb.f, label %.critedge.1

bb.f:                                             ; preds = %.lr.ph.1
  %i.bi = add nsw i32 %.185.1, -1
  %i.bj = load i8, ptr %.26286.1, align 1, !tbaa !9
  %i.bk = zext i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 16
  %i.bm = add nsw i64 %.26684.1, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@Luv32toXYZ:bb.a
  %i.v = fmul nnan double %i.u, f0x3F63FB013FB013FB ; 2 uses
  %i.w = and i32 %i.f, 255
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fadd nnan double %i.x, 5.000000e-01
  %i.z = fmul nnan double %i.y, f0x3F63FB013FB013FB ; 2 uses
  %i.aa = fmul nnan double %i.z, -1.600000e+01
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.v, double 6.000000e+00, double %i.aa)
  %i.ac = fadd double %i.ab, 1.200000e+01
  %i.ad = fdiv double 1.000000e+00, %i.ac         ; 2 uses
  %i.ae = fmul nnan double %i.v, 9.000000e+00
  %i.af = fmul nnan double %i.z, 4.000000e+00
  %i.ag = fmul double %i.af, %i.ad                ; 2 uses
  %i.ah = fmul double %i.ae, %i.ad                ; 2 uses
  %i.ai = fsub double 1.000000e+00, %i.ah
  %i.aj = fsub double %i.ai, %i.ag
  %i.ak = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = fdiv <2 x double> %i.al, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.o, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x double> %i.ao, %i.aq          ; 2 uses
  %i.as = insertelement <2 x double> %i.ar, double %i.o, i64 1
  %i.at = fptrunc <2 x double> %i.as to <2 x float>
  store <2 x float> %i.at, ptr %.09, align 4, !tbaa !8
  %i.au = extractelement <2 x double> %i.ar, i64 1
  %i.av = fptrunc double %i.au to float
  %i.aw = getelementptr inbounds nuw i8, ptr %.09, i64 8
  store float %i.av, ptr %i.aw, align 4, !tbaa !8
  br label %LogLuv32toXYZ.exit

LogLuv32toXYZ.exit:                               ; preds = %LogL16toY.exit.thread.i, %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %.09, i64 12
  %i.ay = icmp samesign ugt i64 %.067, 1
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !6 ; 3 uses
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
  store <12 x i16> %interleaved.vec, ptr %next.gep16, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !129

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %middle.block, %.lr.ph.preheader
  %.015.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.d, %middle.block ] ; 2 uses
  %.01114.ph = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 3 uses
  %.01213.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 6 uses
  %i.ac = load i32, ptr %.01114.ph, align 4, !tbaa !6 ; 3 uses
  %i.ad = lshr i32 %i.ac, 16
  %i.ae = trunc nuw i32 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 2
  store i16 %i.ae, ptr %.01213.ph, align 2, !tbaa !63
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
  store <2 x i16> %i.aq, ptr %i.af, align 2, !tbaa !63
  %i.ar = icmp samesign ugt i64 %.015.ph, 1
  br i1 %i.ar, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.01114.ph, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 6
  %i.au = load i32, ptr %i.as, align 4, !tbaa !6  ; 3 uses
  %i.av = lshr i32 %i.au, 16
  %i.aw = trunc nuw i32 %i.av to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 8
  store i16 %i.aw, ptr %i.at, align 2, !tbaa !63
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
  store <2 x i16> %i.bi, ptr %i.ax, align 2, !tbaa !63
  %i.bj = icmp eq i64 %.015.ph, 3
  br i1 %i.bj, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.bk = getelementptr inbounds nuw i8, ptr %.01114.ph, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 12
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !6  ; 3 uses
  %i.bn = lshr i32 %i.bm, 16
  %i.bo = trunc nuw i32 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %.01213.ph, i64 14
  store i16 %i.bo, ptr %i.bl, align 2, !tbaa !63
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
  store <2 x i16> %i.ca, ptr %i.bp, align 2, !tbaa !63
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %XYZtoRGB24.exit
  %.09 = phi ptr [ %i.bp, %XYZtoRGB24.exit ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.058 = phi ptr [ %i.e, %XYZtoRGB24.exit ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %.067 = phi i64 [ %i.d, %XYZtoRGB24.exit ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %i.d = add nsw i64 %.067, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.f = load i32, ptr %.058, align 4, !tbaa !6   ; 3 uses
  %i.g = ashr i32 %i.f, 16                        ; 2 uses
  %i.h = and i32 %i.g, 32767                      ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %LogLuv32toXYZ.exit, label %LogL16toY.exit.i

LogL16toY.exit.i:                                 ; preds = %.lr.ph
  %i.i = uitofp nneg i32 %i.h to double
  %i.j = fadd double %i.i, 5.000000e-01
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.l = tail call double @exp(double noundef %i.k) #16, !tbaa !6 ; 2 uses
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
  %3 = fptrunc double %i.o to float
  %i.ag = fmul double %i.ad, %i.ac                ; 2 uses
  %4 = fsub double 1.000000e+00, %i.ag
  %5 = fsub double %4, %i.af
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %5, i64 1
  %6 = insertelement <2 x double> poison, double %i.af, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = fdiv <2 x double> %i.ai, %7
  %9 = insertelement <2 x double> poison, double %i.o, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x double> %8, %10
  %12 = fptrunc <2 x double> %11 to <2 x float>
  %i.aj = fpext float %3 to double
  %13 = fpext <2 x float> %12 to <2 x double>
  br label %LogLuv32toXYZ.exit

LogLuv32toXYZ.exit:                               ; preds = %.lr.ph, %LogL16toY.exit.i, %bb.b
  %.sroa.8.0 = phi double [ %i.aj, %bb.b ], [ 0.000000e+00, %LogL16toY.exit.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.ak = phi <2 x double> [ %13, %bb.b ], [ zeroinitializer, %LogL16toY.exit.i ], [ zeroinitializer, %.lr.ph ] ; 3 uses
  %14 = insertelement <2 x double> poison, double %.sroa.8.0, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %15, <double -1.276000e+00, double 1.978000e+00>
  %i.am = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> <double 2.690000e+00, double -1.022000e+00>, <2 x double> %i.al) ; 2 uses
  %i.ao = extractelement <2 x double> %i.an, i64 0
  %i.ap = extractelement <2 x double> %i.ak, i64 1 ; 2 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double -4.140000e-01, double %i.ao) ; 3 uses
  %16 = fmul double %.sroa.8.0, -2.240000e-01
  %17 = insertelement <2 x double> %i.an, double %16, i64 0
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> <double 6.100000e-02, double 4.400000e-02>, <2 x double> %17) ; 2 uses
  %19 = extractelement <2 x double> %18, i64 0
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ap, double 1.163000e+00, double %19) ; 3 uses
  %i.as = fcmp ugt double %i.aq, 0.000000e+00
  br i1 %i.as, label %bb.c, label %bb.e

bb.c:                                             ; preds = %LogLuv32toXYZ.exit
  %i.at = fcmp ult double %i.aq, 1.000000e+00
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = tail call double @sqrt(double noundef %i.aq) #16, !tbaa !6
  %i.av = fmul double %i.au, 2.560000e+02
  %i.aw = fptosi double %i.av to i32
  %i.ax = trunc i32 %i.aw to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %LogLuv32toXYZ.exit
  %i.ay = phi i8 [ 0, %LogLuv32toXYZ.exit ], [ %i.ax, %bb.d ], [ -1, %bb.c ]
  store i8 %i.ay, ptr %.09, align 1, !tbaa !9
  %20 = extractelement <2 x double> %18, i64 1    ; 3 uses
  %i.az = fcmp ugt double %20, 0.000000e+00
  br i1 %i.az, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ba = fcmp ult double %20, 1.000000e+00
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = tail call double @sqrt(double noundef %20) #16, !tbaa !6
  %i.bc = fmul double %i.bb, 2.560000e+02
  %i.bd = fptosi double %i.bc to i32
  %i.be = trunc i32 %i.bd to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.bf = phi i8 [ 0, %bb.e ], [ %i.be, %bb.g ], [ -1, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.09, i64 1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !9
  %i.bh = fcmp ugt double %i.ar, 0.000000e+00
  br i1 %i.bh, label %bb.i, label %XYZtoRGB24.exit

bb.i:                                             ; preds = %bb.h
  %i.bi = fcmp ult double %i.ar, 1.000000e+00
  br i1 %i.bi, label %bb.j, label %XYZtoRGB24.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call double @sqrt(double noundef %i.ar) #16, !tbaa !6
  %i.bk = fmul double %i.bj, 2.560000e+02
  %i.bl = fptosi double %i.bk to i32
  %i.bm = trunc i32 %i.bl to i8
  br label %XYZtoRGB24.exit

XYZtoRGB24.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %i.bn = phi i8 [ 0, %bb.h ], [ %i.bm, %bb.j ], [ -1, %bb.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.09, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %.09, i64 3
  %i.bq = icmp samesign ugt i64 %.067, 1
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %XYZtoRGB24.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LogL16InitState(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i16, ptr %i.c, align 2, !tbaa !46   ; 2 uses
  %.not = icmp eq i16 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i32
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %i.e) #16
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36   ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i16, ptr %i.i, align 4, !tbaa !47
  %i.k = zext i16 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.n = load i16, ptr %i.m, align 2, !tbaa !48
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
  store i32 %.0.i, ptr %i.f, align 4, !tbaa !36
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
  store i32 %.sink, ptr %i.s, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %i.v = and i32 %i.u, 1024
  %.not33 = icmp eq i32 %i.v, 0
  br i1 %.not33, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !53
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.y, i64 noundef range(i64 0, 4294967296) %i.ab, ptr noundef null) #16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !54
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !55 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = icmp ult i32 %i.af, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !57
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = zext i32 %i.af to i64
  %i.ao = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.an, ptr noundef null) #16 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !54
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ap = zext i32 %i.ah to i64
  %i.aq = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.al, i64 noundef range(i64 0, 4294967296) %i.ap, ptr noundef null) #16 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.ar = phi i64 [ %i.ao, %bb.o ], [ %i.aq, %bb.p ], [ %i.ac, %bb.m ]
  %i.as = tail call i64 @_TIFFMultiplySSize(ptr noundef null, i64 noundef %i.ar, i64 noundef 2, ptr noundef null) #16
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !54
  %i.aw = shl i64 %i.av, 1
  %i.ax = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %i.aw) #16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !49
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogL16InitState.module, ptr noundef nonnull @.str.8) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.k, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.k ], [ 0, %bb.s ], [ 1, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogL16Decode(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %.fr120 = freeze i32 %i.d
  %i.e = sext i32 %.fr120 to i64
  %i.f = sdiv i64 %2, %i.e                        ; 23 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_1
