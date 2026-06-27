inline.NumInlined: 47242
inline.NumDeleted: 15222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS2_9FloatTypeILm32EEES6_PNS0_4ZoneE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.cp, align 8, !alias.scope !306
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.co, i8 0, i64 9, i1 false)
  call void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE15LeastUpperBoundERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE3SetENS_4base6VectorIKfEEjPNS0_4ZoneE.exit84, %bb.x
  %i.cq = or disjoint i32 %i.cd, %i.aq            ; 3 uses
  %i.cr = load i8, ptr %i.a, align 1              ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ct = load i8, ptr %i.h, align 1
  %i.cu = icmp eq i8 %i.ct, 1
  br i1 %i.cu, label %bb.aa, label %.thread

.thread:                                          ; preds = %bb.z
  %i.cv = load i32, ptr %i.d, align 4
  %i.cw = and i32 %i.cv, 2
  %.not10.i.i129 = icmp eq i32 %i.cw, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cy = load i8, ptr %i.cx, align 2             ; 3 uses
  %i.cz = icmp ult i8 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8
  %.sroa.0.0.i.i3.i.i131 = select i1 %i.cz, ptr %i.da, ptr %i.db ; 3 uses
  %i.dc = load float, ptr %.sroa.0.0.i.i3.i.i131, align 4 ; 2 uses
  br i1 %.not10.i.i129, label %.thread18.i, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSG_, ptr %i.de, align 8
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.dd, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE10ProductSetERKNS2_9FloatTypeILm32EEES8_jPNS0_4ZoneESt8functionIFfffEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cq, ptr noundef %3, ptr noundef nonnull %8)
  %i.df = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #23, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.aa, %bb.ab
  %i.dh = load i8, ptr %0, align 8
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %thread-pre-split, label %bb.aw

thread-pre-split:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pr = load i8, ptr %i.a, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split, %bb.y
  %i.dj = phi i8 [ %.pr, %thread-pre-split ], [ %i.cr, %bb.y ]
  %i.dk = load i32, ptr %i.d, align 4
  %i.dl = and i32 %i.dk, 2
  %.not10.i.i = icmp eq i32 %i.dl, 0              ; 3 uses
  switch i8 %i.dj, label %bb.af [
    i8 2, label %bb.ag
    i8 0, label %bb.ad
    i8 1, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = load float, ptr %i.dm, align 8          ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.ah

.thread.i:                                        ; preds = %bb.ad
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dp = load float, ptr %i.do, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dr = load i8, ptr %i.dq, align 2             ; 3 uses
  %i.ds = icmp ult i8 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.ds, ptr %i.dt, ptr %i.du ; 3 uses
  %i.dv = load float, ptr %.sroa.0.0.i.i3.i.i, align 4 ; 2 uses
  br i1 %.not10.i.i, label %.thread18.i, label %bb.ai

.thread18.i:                                      ; preds = %.thread, %bb.ae
  %i.dw = phi float [ %i.dc, %.thread ], [ %i.dv, %bb.ae ]
  %.sroa.0.0.i.i3.i.i133 = phi ptr [ %.sroa.0.0.i.i3.i.i131, %.thread ], [ %.sroa.0.0.i.i3.i.i, %bb.ae ]
  %i.dx = phi i8 [ %i.cy, %.thread ], [ %i.dr, %bb.ae ]
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i133, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4
  %i.eb = load float, ptr %i.ea, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.af:                                            ; preds = %bb.ac
  unreachable

bb.ag:                                            ; preds = %bb.ac
  %..i.i = select i1 %.not10.i.i, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.ah:                                            ; preds = %bb.ad
  %i.ec = fcmp olt float %i.dn, -0.000000e+00
  %.sroa.speculated5.i.i = select i1 %i.ec, float %i.dn, float -0.000000e+00
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ee = load float, ptr %i.ed, align 4          ; 2 uses
  %i.ef = fcmp ogt float %i.ee, -0.000000e+00
  %.sroa.speculated5.i5.i = select i1 %i.ef, float %i.ee, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.ai:                                            ; preds = %.thread, %bb.ae
  %i.eg = phi float [ %i.dc, %.thread ], [ %i.dv, %bb.ae ] ; 2 uses
  %.sroa.0.0.i.i3.i.i132 = phi ptr [ %.sroa.0.0.i.i3.i.i131, %.thread ], [ %.sroa.0.0.i.i3.i.i, %bb.ae ]
  %i.eh = phi i8 [ %i.cy, %.thread ], [ %i.dr, %bb.ae ]
  %i.ei = fcmp olt float %i.eg, -0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ei, float %i.eg, float -0.000000e+00
  %i.ej = zext i8 %i.eh to i64
  %i.ek = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i132, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -4
  %i.em = load float, ptr %i.el, align 4          ; 2 uses
  %i.en = fcmp ogt float %i.em, -0.000000e+00
  %.sroa.speculated.i3.i = select i1 %i.en, float %i.em, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit: ; preds = %.thread.i, %.thread18.i, %bb.ag, %bb.ah, %bb.ai
  %.0.i10.i = phi float [ %..i.i, %bb.ag ], [ %i.dn, %.thread.i ], [ %.sroa.speculated5.i.i, %bb.ah ], [ %.sroa.speculated.i.i, %bb.ai ], [ %i.dw, %.thread18.i ] ; 5 uses
  %.0.i4.i = phi float [ %..i.i, %bb.ag ], [ %i.dp, %.thread.i ], [ %.sroa.speculated5.i5.i, %bb.ah ], [ %.sroa.speculated.i3.i, %bb.ai ], [ %i.eb, %.thread18.i ] ; 4 uses
  %i.eo = load i8, ptr %i.h, align 1
  %i.ep = load i32, ptr %i.k, align 4
  %i.eq = and i32 %i.ep, 2
  %.not10.i.i63 = icmp eq i32 %i.eq, 0            ; 3 uses
  switch i8 %i.eo, label %bb.al [
    i8 2, label %bb.am
    i8 0, label %bb.aj
    i8 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load float, ptr %i.er, align 8          ; 3 uses
  br i1 %.not10.i.i63, label %.thread.i74, label %bb.an

.thread.i74:                                      ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.eu = load float, ptr %i.et, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.ak:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ew = load i8, ptr %i.ev, align 2             ; 3 uses
  %i.ex = icmp ult i8 %i.ew, 3
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8
  %.sroa.0.0.i.i3.i.i64 = select i1 %i.ex, ptr %i.ey, ptr %i.ez ; 3 uses
  %i.fa = load float, ptr %.sroa.0.0.i.i3.i.i64, align 4 ; 3 uses
  br i1 %.not10.i.i63, label %.thread18.i71, label %bb.ao

.thread18.i71:                                    ; preds = %bb.ak
  %i.fb = zext i8 %i.ew to i64
  %i.fc = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i64, i64 %i.fb
  %i.fd = getelementptr i8, ptr %i.fc, i64 -4
  %i.fe = load float, ptr %i.fd, align 4
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  unreachable

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %..i.i75 = select i1 %.not10.i.i63, float +qnan, float -0.000000e+00 ; 2 uses
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.an:                                            ; preds = %bb.aj
  %i.ff = fcmp olt float %i.es, -0.000000e+00
  %.sroa.speculated5.i.i72 = select i1 %i.ff, float %i.es, float -0.000000e+00
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.fh = load float, ptr %i.fg, align 4          ; 2 uses
  %i.fi = fcmp ogt float %i.fh, -0.000000e+00
  %.sroa.speculated5.i5.i73 = select i1 %i.fi, float %i.fh, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

bb.ao:                                            ; preds = %bb.ak
  %i.fj = fcmp olt float %i.fa, -0.000000e+00
  %.sroa.speculated.i.i65 = select i1 %i.fj, float %i.fa, float -0.000000e+00
  %i.fk = zext i8 %i.ew to i64
  %i.fl = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i64, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 -4
  %i.fn = load float, ptr %i.fm, align 4          ; 2 uses
  %i.fo = fcmp ogt float %i.fn, -0.000000e+00
  %.sroa.speculated.i3.i66 = select i1 %i.fo, float %i.fn, float -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76: ; preds = %.thread.i74, %.thread18.i71, %bb.am, %bb.an, %bb.ao
  %.0.i10.i67 = phi float [ %..i.i75, %bb.am ], [ %i.es, %.thread.i74 ], [ %.sroa.speculated5.i.i72, %bb.an ], [ %.sroa.speculated.i.i65, %bb.ao ], [ %i.fa, %.thread18.i71 ] ; 5 uses
  %.0.i4.i68 = phi float [ %..i.i75, %bb.am ], [ %i.eu, %.thread.i74 ], [ %.sroa.speculated5.i5.i73, %bb.an ], [ %.sroa.speculated.i3.i66, %bb.ao ], [ %i.fe, %.thread18.i71 ] ; 4 uses
  %i.fp = fmul float %.0.i10.i, %.0.i10.i67       ; 5 uses
  %i.fq = fmul float %.0.i10.i, %.0.i4.i68        ; 5 uses
  %10 = fmul float %.0.i4.i, %.0.i10.i67          ; 5 uses
  %i.fr = fmul float %.0.i4.i, %.0.i4.i68         ; 5 uses
  %11 = fcmp uno float %i.fp, 0.000000e+00
  %i.fs = fcmp uno float %i.fq, 0.000000e+00
  %or.cond169 = select i1 %11, i1 true, i1 %i.fs
  %i.ft = fcmp uno float %10, 0.000000e+00
  %or.cond170 = select i1 %or.cond169, i1 true, i1 %i.ft
  %i.fu = fcmp uno float %i.fr, 0.000000e+00
  %or.cond171 = select i1 %or.cond170, i1 true, i1 %i.fu
  br i1 %or.cond171, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76
  %i.fv = fcmp olt float %i.fp, %i.fq
  %.1.1.i = select i1 %i.fv, float %i.fp, float %i.fq ; 2 uses
  %i.fw = fcmp olt float %.1.1.i, %10
  %.1.2.i = select i1 %i.fw, float %.1.1.i, float %10 ; 2 uses
  %i.fx = fcmp olt float %.1.2.i, %i.fr
  %.1.3.i = select i1 %i.fx, float %.1.2.i, float %i.fr ; 2 uses
  %i.fy = fcmp oeq float %.1.3.i, 0.000000e+00
  %i.fz = select i1 %i.fy, float 0.000000e+00, float %.1.3.i ; 4 uses
  %i.ga = fcmp olt float %i.fq, %i.fp
  %.1.1.i78 = select i1 %i.ga, float %i.fp, float %i.fq ; 2 uses
  %i.gb = fcmp olt float %10, %.1.1.i78
  %.1.2.i79 = select i1 %i.gb, float %.1.1.i78, float %10 ; 2 uses
  %i.gc = fcmp olt float %i.fr, %.1.2.i79
  %.1.3.i80 = select i1 %i.gc, float %.1.2.i79, float %i.fr ; 2 uses
  %i.gd = fcmp oeq float %.1.3.i80, 0.000000e+00
  %i.ge = select i1 %i.gd, float 0.000000e+00, float %.1.3.i80 ; 4 uses
  %i.gf = fcmp ugt float %i.fz, 0.000000e+00
  %i.gg = fcmp ult float %i.ge, 0.000000e+00
  %or.cond = or i1 %i.gf, %i.gg
  br i1 %or.cond, label %bb.as, label %bb.aq

bb.ap:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit76
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.aw

bb.aq:                                            ; preds = %.critedge
  %i.gh = fcmp olt float %.0.i10.i, 0.000000e+00
  %i.gi = fcmp olt float %.0.i10.i67, 0.000000e+00
  %or.cond139 = or i1 %i.gh, %i.gi
  br i1 %or.cond139, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gj = or disjoint i32 %i.aq, 2
  %i.gk = fadd float %i.fz, 0.000000e+00
  %i.gl = fadd float %i.ge, 0.000000e+00
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %.critedge
  %.039 = phi i32 [ %i.gj, %bb.ar ], [ %i.cq, %bb.aq ], [ %i.cq, %.critedge ] ; 2 uses
  %.037 = phi float [ %i.gk, %bb.ar ], [ %i.fz, %bb.aq ], [ %i.fz, %.critedge ]
  %.0 = phi float [ %i.gl, %bb.ar ], [ %i.ge, %bb.aq ], [ %i.ge, %.critedge ]
  %i.gm = fcmp une float %.0.i10.i, -inf
  %i.gn = fcmp une float %.0.i4.i, +inf
  %or.cond140.not151 = select i1 %i.gm, i1 %i.gn, i1 false
  %i.go = fcmp ugt float %.0.i10.i67, 0.000000e+00
  %or.cond141 = or i1 %or.cond140.not151, %i.go
  %i.gp = fcmp ult float %.0.i4.i68, 0.000000e+00
  %or.cond142 = select i1 %or.cond141, i1 true, i1 %i.gp
  br i1 %or.cond142, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.gq = fcmp une float %.0.i10.i67, -inf
  %i.gr = fcmp une float %.0.i4.i68, +inf
  %or.cond143.not154 = select i1 %i.gq, i1 %i.gr, i1 false
  %i.gs = fcmp ugt float %.0.i10.i, 0.000000e+00
  %or.cond144 = select i1 %or.cond143.not154, i1 true, i1 %i.gs
  %i.gt = fcmp ult float %.0.i4.i, 0.000000e+00
  %or.cond145 = select i1 %or.cond144, i1 true, i1 %i.gt
  br i1 %or.cond145, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.gu = or i32 %.039, 1
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %.1 = phi i32 [ %i.gu, %bb.au ], [ %.039, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %9, float noundef %.037, float noundef %.0, i32 noundef %.1, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap, %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4
  %i.b = load float, ptr %2, align 4
  %i.c = fmul float %i.a, %i.b
  ret float %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE8MultiplyENS4_9FloatTypeILm32EEES8_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS2_9FloatTypeILm32EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.466", align 8   ; 7 uses
  %5 = alloca %"class.std::function.461", align 8 ; 6 uses
  %6 = alloca %"struct.std::array", align 16      ; 5 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 9 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8183.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 4, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7182.0..sroa_idx, align 4
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.b, 1
  %i.p = icmp eq i8 %i.i, 1
  %or.cond184 = and i1 %i.o, %i.p
  br i1 %or.cond184, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSI_, ptr %i.r, align 8
  store ptr @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE10ProductSetERKNS2_9FloatTypeILm32EEES8_jPNS0_4ZoneESt8functionIFfffEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5)
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #23, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  %i.u = load i8, ptr %0, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_ZNSt14_Function_baseD2Ev.exit._crit_edge, label %bb.av

_ZNSt14_Function_baseD2Ev.exit._crit_edge:        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre = load i8, ptr %i.a, align 1
  %.pre201 = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre201, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.b, %bb.d ]
  %i.y = and i32 %i.w, 2
  %.not10.i.i = icmp eq i32 %i.y, 0               ; 3 uses
  switch i8 %i.x, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 8           ; 2 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = load float, ptr %i.ab, align 4
  %10 = insertelement <2 x float> poison, float %i.aa, i64 0
  %11 = insertelement <2 x float> %10, float %i.ac, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %i.ai = load float, ptr %.sroa.0.0.i.i3.i.i, align 4 ; 2 uses
  br i1 %.not10.i.i, label %.thread18.i, label %bb.m

.thread18.i:                                      ; preds = %bb.i
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -4
  %i.am = load float, ptr %i.al, align 4
  %12 = insertelement <2 x float> poison, float %i.ai, i64 0
  %13 = insertelement <2 x float> %12, float %i.am, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %..i.i = select i1 %.not10.i.i, float +qnan, float -0.000000e+00
  %14 = insertelement <2 x float> poison, float %..i.i, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.l:                                             ; preds = %bb.h
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %17 = load float, ptr %16, align 4              ; 2 uses
  %18 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.aa, i64 0 ; 2 uses
  %19 = insertelement <2 x float> <float -0.000000e+00, float poison>, float %17, i64 1
  %20 = fcmp olt <2 x float> %18, %19
  %21 = insertelement <2 x float> %18, float %17, i64 1
  %22 = select <2 x i1> %20, <2 x float> %21, <2 x float> splat (float -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -4
  %i.aq = load float, ptr %i.ap, align 4          ; 2 uses
  %23 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.ai, i64 0 ; 2 uses
  %24 = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.aq, i64 1
  %25 = fcmp olt <2 x float> %23, %24
  %26 = insertelement <2 x float> %23, float %i.aq, i64 1
  %27 = select <2 x i1> %25, <2 x float> %26, <2 x float> splat (float -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit: ; preds = %.thread.i, %.thread18.i, %bb.k, %bb.l, %bb.m
  %28 = phi <2 x float> [ %15, %bb.k ], [ %11, %.thread.i ], [ %22, %bb.l ], [ %27, %bb.m ], [ %13, %.thread18.i ] ; 7 uses
  %29 = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ar = load i8, ptr %i.h, align 1
  %i.as = load i32, ptr %i.k, align 4             ; 2 uses
  %i.at = and i32 %i.as, 2
  %.not10.i.i81 = icmp eq i32 %i.at, 0            ; 3 uses
  switch i8 %i.ar, label %bb.p [
    i8 2, label %bb.q
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load float, ptr %i.au, align 8          ; 2 uses
  br i1 %.not10.i.i81, label %.thread.i92, label %bb.r

.thread.i92:                                      ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = load float, ptr %i.aw, align 4
  %30 = insertelement <2 x float> poison, float %i.av, i64 0
  %31 = insertelement <2 x float> %30, float %i.ax, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.az = load i8, ptr %i.ay, align 2             ; 3 uses
  %i.ba = icmp ult i8 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.sroa.0.0.i.i3.i.i82 = select i1 %i.ba, ptr %i.bb, ptr %i.bc ; 3 uses
  %i.bd = load float, ptr %.sroa.0.0.i.i3.i.i82, align 4 ; 2 uses
  br i1 %.not10.i.i81, label %.thread18.i89, label %bb.s

.thread18.i89:                                    ; preds = %bb.o
  %i.be = zext i8 %i.az to i64
  %i.bf = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  %i.bh = load float, ptr %i.bg, align 4
  %32 = insertelement <2 x float> poison, float %i.bd, i64 0
  %33 = insertelement <2 x float> %32, float %i.bh, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit
  %..i.i93 = select i1 %.not10.i.i81, float +qnan, float -0.000000e+00
  %34 = insertelement <2 x float> poison, float %..i.i93, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.r:                                             ; preds = %bb.n
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 12
  %37 = load float, ptr %36, align 4              ; 2 uses
  %38 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.av, i64 0 ; 2 uses
  %39 = insertelement <2 x float> <float -0.000000e+00, float poison>, float %37, i64 1
  %40 = fcmp olt <2 x float> %38, %39
  %41 = insertelement <2 x float> %38, float %37, i64 1
  %42 = select <2 x i1> %40, <2 x float> %41, <2 x float> splat (float -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %i.bi = zext i8 %i.az to i64
  %i.bj = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load float, ptr %i.bk, align 4          ; 2 uses
  %43 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.bd, i64 0 ; 2 uses
  %44 = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.bl, i64 1
  %45 = fcmp olt <2 x float> %43, %44
  %46 = insertelement <2 x float> %43, float %i.bl, i64 1
  %47 = select <2 x i1> %45, <2 x float> %46, <2 x float> splat (float -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread18.i89, %bb.q, %bb.r, %bb.s
  %48 = phi <2 x float> [ %35, %bb.q ], [ %31, %.thread.i92 ], [ %42, %bb.r ], [ %47, %bb.s ], [ %33, %.thread18.i89 ] ; 6 uses
  %49 = shufflevector <2 x float> %48, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = trunc i32 %i.w to i1
  %i.bn = and i32 %i.as, 3
  %or.cond.not.i = icmp ne i32 %i.bn, 0
  %or.cond186.not = select i1 %i.bm, i1 true, i1 %or.cond.not.i
  br i1 %or.cond186.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94
  %i.bo = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef 0.000000e+00) #23
  br i1 %i.bo, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit
  %50 = extractelement <2 x float> %28, i64 0
  %i.bp = fcmp oeq float %50, -inf
  %51 = extractelement <2 x float> %28, i64 1
  %i.bq = fcmp oeq float %51, +inf
  %or.cond187 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond187, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %52 = extractelement <2 x float> %48, i64 0
  %i.br = fcmp oeq float %52, -inf
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %53 = extractelement <2 x float> %48, i64 1
  %i.bs = fcmp oeq float %53, +inf
  %i.bt = zext i1 %i.bs to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94
  %i.bu = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.bt, %bb.v ] ; 2 uses
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = and i32 %i.bv, 2
  %i.bx = icmp ne i32 %i.bw, 0
  %54 = extractelement <2 x float> %48, i64 1     ; 4 uses
  %i.by = fcmp ogt float %54, 0.000000e+00
  %or.cond188 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond188, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread
  %i.bz = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %55 = extractelement <2 x float> %48, i64 0     ; 3 uses
  %i.ca = fcmp olt float %55, 0.000000e+00
  %or.cond189 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond189, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %56 = extractelement <2 x float> %28, i64 0     ; 3 uses
  %i.cc = fcmp olt float %56, 0.000000e+00
  %or.cond190 = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = fcmp ogt float %54, 1.000000e+00
  %or.cond191 = select i1 %or.cond190, i1 %i.cd, i1 false
  br i1 %or.cond191, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %1, float noundef 0.000000e+00) #23
  %57 = extractelement <2 x float> %28, i64 1     ; 3 uses
  %i.cf = fcmp oge float %57, 0.000000e+00
  %or.cond193.not196 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp olt float %55, -1.000000e+00
  %or.cond194 = select i1 %or.cond193.not196, i1 %i.cg, i1 false
  br i1 %or.cond194, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = fcmp olt float %57, 0.000000e+00
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = fdiv float %57, %54
  %i.cj = fpext float %i.ci to double
  %i.ck = call noundef i1 @llvm.is.fpclass.f64(double %i.cj, i32 32)
  br i1 %i.ck, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cl = fcmp ogt float %56, 0.000000e+00
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cm = fdiv float %56, %55
  %i.cn = fpext float %i.cm to double
  %i.co = call noundef i1 @llvm.is.fpclass.f64(double %i.cn, i32 32)
  %i.cp = select i1 %i.co, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.cq = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread ], [ 0, %bb.ab ], [ %i.cp, %bb.ac ]
  %i.cr = or disjoint i32 %i.cq, %i.bu            ; 7 uses
  %58 = extractelement <2 x float> %48, i64 0     ; 2 uses
  %i.cs = fcmp oge float %58, 0.000000e+00
  %i.ct = load i32, ptr %i.k, align 4
  %i.cu = and i32 %i.ct, 2
  %.not197 = icmp eq i32 %i.cu, 0                 ; 2 uses
  %i.cv = select i1 %i.cs, i1 %.not197, i1 false  ; 3 uses
  %i.cw = fcmp olt float %54, 0.000000e+00
  %or.cond = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond, label %bb.ae, label %bb.au

bb.ae:                                            ; preds = %bb.ad
  %i.cx = fcmp ogt float %58, 0.000000e+00
  %brmerge.not = select i1 %i.cx, i1 %.not197, i1 false
  br i1 %brmerge.not, label %.critedge, label %bb.ah

.critedge:                                        ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cy = fdiv <4 x float> %29, %49
  %.fr = freeze <4 x float> %i.cy                 ; 2 uses
  store <4 x float> %.fr, ptr %6, align 16
  %59 = fcmp uno <4 x float> %.fr, zeroinitializer
  %60 = bitcast <4 x i1> %59 to i4
  %.not = icmp eq i4 %60, 0
  br i1 %.not, label %.critedge80, label %bb.af

.critedge80:                                      ; preds = %.critedge
  %i.cz = call noundef float @_ZN2v88internal8compiler10turboshaft9array_minIfLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.da = call noundef float @_ZN2v88internal8compiler10turboshaft9array_maxIfLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %7, float noundef %i.cz, float noundef %i.da, i32 noundef %i.cr, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.af:                                            ; preds = %.critedge
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7125.0..sroa_idx, align 4
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8126.0..sroa_idx, align 8
  %.sroa.10128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10128.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.av

bb.ah:                                            ; preds = %bb.ae
  %61 = extractelement <2 x float> %28, i64 1
  %i.db = fcmp olt float %61, 0.000000e+00
  br i1 %i.db, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.cv, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dc = call noundef float @nextafterf(float noundef 0.000000e+00, float noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dd = fcmp oeq float %i.dc, -inf
  br i1 %i.dd, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.de = call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #25, !noalias !309 ; 3 uses
  store ptr %i.de, ptr %4, align 8, !noalias !309
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !noalias !309
  store float -inf, ptr %i.de, align 4, !noalias !309
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !noalias !309
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE3SetESt6vectorIfSaIfEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.cr, ptr noundef %3)
  %i.di = load ptr, ptr %4, align 8, !noalias !309 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.dg, align 8, !noalias !309
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit

bb.am:                                            ; preds = %bb.aj
  %i.dn = fpext float %i.dc to double
  %i.do = call noundef i1 @llvm.is.fpclass.f64(double %i.dn, i32 32)
  br i1 %i.do, label %bb.an, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i, !prof !5

bb.an:                                            ; preds = %bb.am
  %i.dp = or disjoint i32 %i.bu, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i: ; preds = %bb.am, %bb.an
  %.015.i.i = phi float [ 0.000000e+00, %bb.an ], [ %i.dc, %bb.am ]
  %.0.i4.i.i = phi i32 [ %i.dp, %bb.an ], [ %i.cr, %bb.am ]
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !312
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.dq, align 4, !alias.scope !312
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float -inf, ptr %i.dr, align 8, !alias.scope !312
  %.sroa_idx6.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %.015.i.i, ptr %.sroa_idx6.i.i95, align 4, !alias.scope !312
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 0, ptr %i.ds, align 8, !alias.scope !312
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit: ; preds = %bb.ak, %bb.al, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm32EE17IdentifyMinusZeroERf.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.av

bb.ao:                                            ; preds = %bb.ai
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cr, ptr %.sroa.7117.0..sroa_idx, align 4
  %.sroa.8118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float 0.000000e+00, float +inf>, ptr %.sroa.8118.0..sroa_idx, align 8
  %.sroa.10120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10120.0..sroa_idx, align 8
  br label %bb.av

bb.ap:                                            ; preds = %bb.ah
  %62 = extractelement <2 x float> %28, i64 0
  %i.dt = fcmp ult float %62, 0.000000e+00
  br i1 %i.dt, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.du = load i32, ptr %i.d, align 4
  %i.dv = and i32 %i.du, 2
  %.not199 = icmp eq i32 %i.dv, 0
  br i1 %.not199, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.cv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cr, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float 0.000000e+00, float +inf>, ptr %.sroa.8110.0..sroa_idx, align 8
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10112.0..sroa_idx, align 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.dw = call noundef float @nextafterf(float noundef 0.000000e+00, float noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %9, float noundef -inf, float noundef %i.dw, i32 noundef %i.cr, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.av

bb.au:                                            ; preds = %bb.aq, %bb.ap, %bb.ad
  store <4 x i8> <i8 4, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cr, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> <float -inf, float +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.au, %bb.at, %bb.as, %bb.ao, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE5RangeEffjPNS0_4ZoneE.exit, %bb.ag, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E9_M_invokeERKSt9_Any_dataOfSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4              ; 6 uses
  %i.b = load float, ptr %2, align 4              ; 4 uses
  %i.c = tail call float @llvm.fabs.f32(float %i.a)
  %i.d = fcmp ueq float %i.c, +inf
  %i.e = tail call float @llvm.fabs.f32(float %i.b)
  %i.f = fcmp ueq float %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !315

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = fpext float %i.b to double
  %i.h = tail call noundef i1 @llvm.is.fpclass.f64(double %i.g, i32 32)
  br i1 %i.h, label %bb.b, label %bb.d, !prof !5

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq float %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp ogt float %i.a, 0.000000e+00
  %i.j = select i1 %i.i, float -inf, float +inf
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.k = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.g, !prof !5

bb.e:                                             ; preds = %bb.d
  %or.cond15.i.i.i = fcmp ueq float %i.a, 0.000000e+00
  br i1 %or.cond15.i.i.i, label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = fcmp ogt float %i.a, 0.000000e+00
  %i.m = select i1 %i.l, float +inf, float -inf
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.g:                                             ; preds = %bb.d
  %i.n = fdiv float %i.a, %i.b
  br label %_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

_ZSt10__invoke_rIfRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS3_9FloatTypeILm32EEES9_PNS1_4ZoneEEUlffE_JffEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi float [ %i.n, %bb.g ], [ +qnan, %bb.a ], [ %i.j, %bb.c ], [ +qnan, %bb.b ], [ %i.m, %bb.f ], [ +qnan, %bb.e ]
  ret float %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFfffEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE6DivideERKNS4_9FloatTypeILm32EEESA_PNS2_4ZoneEEUlffE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @nextafterf(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE7ModulusENS2_9FloatTypeILm32EEES6_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %1, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::FloatType") align 8 %2, ptr noundef %3) local_unnamed_addr #17 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 8 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 8 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.466", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8102.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 4, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7101.0..sroa_idx, align 4
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.o = trunc i32 %i.e to i1
  %i.p = and i32 %i.l, 3
  %or.cond.not.i = icmp ne i32 %i.p, 0
  %or.cond.not = select i1 %i.o, i1 true, i1 %or.cond.not.i
  br i1 %or.cond.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit: ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE8ContainsEf(ptr noundef nonnull align 8 dereferenceable(24) %2, float noundef 0.000000e+00) #23
  %.pre = load i8, ptr %i.a, align 1              ; 5 uses
  %.pre126 = load i32, ptr %i.d, align 4          ; 5 uses
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm32EE9IsZeroishERKNS2_9FloatTypeILm32EEE.exit
  %i.r = and i32 %.pre126, 2
  %.not10.i = icmp eq i32 %i.r, 0                 ; 5 uses
  switch i8 %.pre, label %bb.h [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread.thread
    i8 0, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load float, ptr %i.s, align 8            ; 2 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  %or.cond121 = select i1 %.not10.i, i1 true, i1 %i.u
  br i1 %or.cond121, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit.thread130, label %.thread

.thread:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load float, ptr %i.v, align 4
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 2               ; 2 uses
  %i.z = icmp ult i8 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %.sroa.0.0.i.i3.i = select i1 %i.z, ptr %i.aa, ptr %i.ab ; 2 uses
  %i.ac = load float, ptr %.sroa.0.0.i.i3.i, align 4 ; 2 uses
  %i.ad = fcmp olt float %i.ac, 0.000000e+00
  %or.cond122 = select i1 %.not10.i, i1 true, i1 %i.ad
  br i1 %or.cond122, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm32EE3minEv.exit, label %.thread119

.thread119:                                       ; preds = %bb.g
  %i.ae = zext i8 %i.y to i64
  %i.af = getelementptr [4 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS2_9FloatTypeILm64EEES6_PNS0_4ZoneE:bb.a
bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit: ; preds = %bb.f, %bb.g
  %.0.i = phi double [ %i.ad, %bb.g ], [ %i.w, %bb.f ]
  %i.af = fcmp oeq double %.0.i, -inf
  br i1 %i.af, label %bb.k, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread: ; preds = %bb.g, %bb.f, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit
  %i.ag = call noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ah = fcmp oeq double %i.ag, +inf
  br i1 %i.ah, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %i.ai = load i32, ptr %i.k, align 4
  %i.aj = and i32 %i.ai, 3
  %or.cond.not.i44 = icmp eq i32 %i.aj, 0
  br i1 %or.cond.not.i44, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45: ; preds = %bb.i
  %i.ak = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread, label %bb.k

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread: ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45
  %i.al = call noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.am = fcmp oeq double %i.al, -inf
  br i1 %i.am, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread
  %i.an = call noundef double @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3maxEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ao = fcmp oeq double %i.an, +inf
  %i.ap = zext i1 %i.ao to i32
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45, %bb.j, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, %bb.d
  %i.aq = phi i32 [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit ], [ %i.ap, %bb.j ], [ 1, %bb.d ], [ 0, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45 ], [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit45.thread ] ; 2 uses
  %i.ar = load i32, ptr %i.d, align 4             ; 2 uses
  %i.as = and i32 %i.ar, 2
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.at = load i32, ptr %i.k, align 4             ; 2 uses
  %i.au = and i32 %i.at, 2
  %.not129 = icmp eq i32 %i.au, 0
  br i1 %.not129, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.av = and i32 %i.ar, 1
  %or.cond.not.i46 = icmp eq i32 %i.av, 0
  br i1 %or.cond.not.i46, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47: ; preds = %bb.m
  %i.aw = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %.pre142 = load i32, ptr %i.k, align 4          ; 3 uses
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47._ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread_crit_edge, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47._ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread_crit_edge: ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47
  %.pre143 = and i32 %.pre142, 2
  %i.ax = icmp eq i32 %.pre143, 0
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread: ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47._ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread_crit_edge, %bb.m
  %.pre-phi = phi i1 [ %i.ax, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47._ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread_crit_edge ], [ true, %bb.m ] ; 2 uses
  %i.ay = phi i32 [ %.pre142, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47._ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread_crit_edge ], [ %i.at, %bb.m ] ; 4 uses
  %i.az = load i8, ptr %i.h, align 1
  switch i8 %i.az, label %bb.p [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = fcmp olt double %i.bb, 0.000000e+00
  %or.cond120 = select i1 %.pre-phi, i1 true, i1 %i.bc
  br i1 %or.cond120, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = icmp ult i8 %i.be, 3
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.sroa.0.0.i.i3.i49 = select i1 %i.bf, ptr %i.bg, ptr %i.bh
  %i.bi = load double, ptr %.sroa.0.0.i.i3.i49, align 8 ; 2 uses
  %i.bj = fcmp olt double %i.bi, 0.000000e+00
  %or.cond121 = select i1 %.pre-phi, i1 true, i1 %i.bj
  br i1 %or.cond121, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread

bb.p:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54: ; preds = %bb.n, %bb.o
  %.0.i51 = phi double [ %i.bi, %bb.o ], [ %i.bb, %bb.n ]
  %i.bk = fcmp olt double %.0.i51, 0.000000e+00
  br i1 %i.bk, label %bb.w, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread: ; preds = %bb.o, %bb.n, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47
  %i.bl = phi i32 [ %i.ay, %bb.o ], [ %i.ay, %bb.n ], [ %i.ay, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47.thread ], [ %i.ay, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54 ], [ %.pre142, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit47 ]
  %i.bm = and i32 %i.bl, 3
  %or.cond.not.i55 = icmp eq i32 %i.bm, 0
  br i1 %or.cond.not.i55, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread
  %i.bn = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.bn, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread, label %bb.w

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54.thread, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56
  %i.bo = load i8, ptr %i.a, align 1
  %i.bp = load i32, ptr %i.d, align 4
  %i.bq = and i32 %i.bp, 2
  %.not10.i57 = icmp eq i32 %i.bq, 0              ; 3 uses
  switch i8 %i.bo, label %bb.v [
    i8 2, label %bb.q
    i8 0, label %bb.r
    i8 1, label %bb.t
  ]

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread
  %..i62 = select i1 %.not10.i57, double +qnan, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63

bb.r:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load double, ptr %i.br, align 8         ; 3 uses
  br i1 %.not10.i57, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = fcmp olt double %i.bs, -0.000000e+00
  %.sroa.speculated5.i61 = select i1 %i.bt, double %i.bs, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = icmp ult i8 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.sroa.0.0.i.i3.i58 = select i1 %i.bw, ptr %i.bx, ptr %i.by
  %i.bz = load double, ptr %.sroa.0.0.i.i3.i58, align 8 ; 3 uses
  br i1 %.not10.i57, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = fcmp olt double %i.bz, -0.000000e+00
  %.sroa.speculated.i59 = select i1 %i.ca, double %i.bz, double -0.000000e+00
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56.thread
  unreachable

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  %.0.i60 = phi double [ %..i62, %bb.q ], [ %i.bs, %bb.r ], [ %.sroa.speculated5.i61, %bb.s ], [ %.sroa.speculated.i59, %bb.u ], [ %i.bz, %bb.t ]
  %i.cb = fcmp olt double %.0.i60, 0.000000e+00
  %i.cc = select i1 %i.cb, i32 2, i32 0
  br label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54, %bb.l, %bb.k
  %i.cd = phi i32 [ 2, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit54 ], [ 2, %bb.l ], [ 2, %bb.k ], [ 0, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit56 ], [ %i.cc, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit63 ]
  %i.ce = load i32, ptr %i.d, align 4
  %i.cf = and i32 %i.ce, 2
  %.not130 = icmp eq i32 %i.cf, 0
  br i1 %.not130, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store <4 x i8> <i8 5, i8 1, i8 1, i8 0>, ptr %5, align 8, !alias.scope !391
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.cg, align 4, !alias.scope !391
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 0.000000e+00, ptr %i.ch, align 8, !alias.scope !391
  call void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE15LeastUpperBoundERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = load i32, ptr %i.k, align 4
  %i.cj = and i32 %i.ci, 2
  %.not131 = icmp eq i32 %i.cj, 0
  br i1 %.not131, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <4 x i8> <i8 5, i8 1, i8 1, i8 0>, ptr %7, align 8, !alias.scope !396
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.ck, align 4, !alias.scope !396
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double 0.000000e+00, ptr %i.cl, align 8, !alias.scope !396
  call void @_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE15LeastUpperBoundERKS4_S6_PNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cm = or disjoint i32 %i.cd, %i.aq            ; 2 uses
  %i.cn = load i8, ptr %i.a, align 1              ; 2 uses
  %i.co = icmp eq i8 %i.cn, 1
  br i1 %i.co, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr %i.h, align 1
  %i.cq = icmp eq i8 %i.cp, 1
  br i1 %i.cq, label %bb.ac, label %.thread

.thread:                                          ; preds = %bb.ab
  %i.cr = load i32, ptr %i.d, align 4
  %i.cs = and i32 %i.cr, 2
  %.not10.i.i112 = icmp eq i32 %i.cs, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cu = load i8, ptr %i.ct, align 2             ; 3 uses
  %i.cv = icmp ult i8 %i.cu, 3
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %.sroa.0.0.i.i3.i.i114 = select i1 %i.cv, ptr %i.cw, ptr %i.cx ; 3 uses
  %i.cy = load double, ptr %.sroa.0.0.i.i3.i.i114, align 8 ; 2 uses
  br i1 %.not10.i.i112, label %.thread17.i, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSG_, ptr %i.da, align 8
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.cz, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE10ProductSetERKNS2_9FloatTypeILm64EEES8_jPNS0_4ZoneESt8functionIFdddEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.cm, ptr noundef %3, ptr noundef nonnull %8)
  %i.db = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dc = call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #23, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ac, %bb.ad
  %i.dd = load i8, ptr %0, align 8
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %thread-pre-split, label %bb.av

thread-pre-split:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pr = load i8, ptr %i.a, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %thread-pre-split, %bb.aa
  %i.df = phi i8 [ %.pr, %thread-pre-split ], [ %i.cn, %bb.aa ]
  %i.dg = load i32, ptr %i.d, align 4
  %i.dh = and i32 %i.dg, 2
  %.not10.i.i = icmp eq i32 %i.dh, 0              ; 3 uses
  switch i8 %i.df, label %bb.ah [
    i8 2, label %bb.ai
    i8 0, label %bb.af
    i8 1, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dj = load double, ptr %i.di, align 8         ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dl = load double, ptr %i.dk, align 8
  %10 = insertelement <2 x double> poison, double %i.dj, i64 0
  %11 = insertelement <2 x double> %10, double %i.dl, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.ag:                                            ; preds = %bb.ae
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.dn = load i8, ptr %i.dm, align 2             ; 3 uses
  %i.do = icmp ult i8 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.do, ptr %i.dp, ptr %i.dq ; 3 uses
  %i.dr = load double, ptr %.sroa.0.0.i.i3.i.i, align 8 ; 2 uses
  br i1 %.not10.i.i, label %.thread17.i, label %bb.ak

.thread17.i:                                      ; preds = %.thread, %bb.ag
  %i.ds = phi double [ %i.cy, %.thread ], [ %i.dr, %bb.ag ]
  %.sroa.0.0.i.i3.i.i116 = phi ptr [ %.sroa.0.0.i.i3.i.i114, %.thread ], [ %.sroa.0.0.i.i3.i.i, %bb.ag ]
  %i.dt = phi i8 [ %i.cu, %.thread ], [ %i.dn, %bb.ag ]
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i116, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load double, ptr %i.dw, align 8
  %12 = insertelement <2 x double> poison, double %i.ds, i64 0
  %13 = insertelement <2 x double> %12, double %i.dx, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.ah:                                            ; preds = %bb.ae
  unreachable

bb.ai:                                            ; preds = %bb.ae
  %..i.i = select i1 %.not10.i.i, double +qnan, double -0.000000e+00
  %14 = insertelement <2 x double> poison, double %..i.i, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.aj:                                            ; preds = %bb.af
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = load double, ptr %16, align 8
  %18 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dj, i64 0
  %19 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %17, i64 1 ; 2 uses
  %20 = fcmp olt <2 x double> %18, %19
  %21 = insertelement <2 x double> %19, double %i.dj, i64 0
  %22 = select <2 x i1> %20, <2 x double> %21, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.ak:                                            ; preds = %.thread, %bb.ag
  %i.dy = phi double [ %i.cy, %.thread ], [ %i.dr, %bb.ag ] ; 2 uses
  %.sroa.0.0.i.i3.i.i115 = phi ptr [ %.sroa.0.0.i.i3.i.i114, %.thread ], [ %.sroa.0.0.i.i3.i.i, %bb.ag ]
  %i.dz = phi i8 [ %i.cu, %.thread ], [ %i.dn, %bb.ag ]
  %23 = zext i8 %i.dz to i64
  %24 = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i115, i64 %23
  %25 = getelementptr i8, ptr %24, i64 -8
  %26 = load double, ptr %25, align 8
  %27 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.dy, i64 0
  %28 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %26, i64 1 ; 2 uses
  %29 = fcmp olt <2 x double> %27, %28
  %30 = insertelement <2 x double> %28, double %i.dy, i64 0
  %31 = select <2 x i1> %29, <2 x double> %30, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.ai, %bb.aj, %bb.ak
  %32 = phi <2 x double> [ %15, %bb.ai ], [ %11, %.thread.i ], [ %22, %bb.aj ], [ %31, %bb.ak ], [ %13, %.thread17.i ] ; 4 uses
  %33 = shufflevector <2 x double> %32, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = load i8, ptr %i.h, align 1
  %i.eb = load i32, ptr %i.k, align 4
  %i.ec = and i32 %i.eb, 2
  %.not10.i.i64 = icmp eq i32 %i.ec, 0            ; 3 uses
  switch i8 %i.ea, label %bb.an [
    i8 2, label %bb.ao
    i8 0, label %bb.al
    i8 1, label %bb.am
  ]

bb.al:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load double, ptr %i.ed, align 8         ; 3 uses
  br i1 %.not10.i.i64, label %.thread.i75, label %bb.ap

.thread.i75:                                      ; preds = %bb.al
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eg = load double, ptr %i.ef, align 8
  %34 = insertelement <2 x double> poison, double %i.ee, i64 0
  %35 = insertelement <2 x double> %34, double %i.eg, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.am:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ei = load i8, ptr %i.eh, align 2             ; 3 uses
  %i.ej = icmp ult i8 %i.ei, 3
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8
  %.sroa.0.0.i.i3.i.i65 = select i1 %i.ej, ptr %i.ek, ptr %i.el ; 3 uses
  %i.em = load double, ptr %.sroa.0.0.i.i3.i.i65, align 8 ; 3 uses
  br i1 %.not10.i.i64, label %.thread17.i72, label %bb.aq

.thread17.i72:                                    ; preds = %bb.am
  %i.en = zext i8 %i.ei to i64
  %i.eo = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i65, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load double, ptr %i.ep, align 8
  %36 = insertelement <2 x double> poison, double %i.em, i64 0
  %37 = insertelement <2 x double> %36, double %i.eq, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.an:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  unreachable

bb.ao:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %..i.i76 = select i1 %.not10.i.i64, double +qnan, double -0.000000e+00
  %38 = insertelement <2 x double> poison, double %..i.i76, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.ap:                                            ; preds = %bb.al
  %40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %41 = load double, ptr %40, align 8
  %42 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ee, i64 0
  %43 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %41, i64 1 ; 2 uses
  %44 = fcmp olt <2 x double> %42, %43
  %45 = insertelement <2 x double> %43, double %i.ee, i64 0
  %46 = select <2 x i1> %44, <2 x double> %45, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

bb.aq:                                            ; preds = %bb.am
  %i.er = zext i8 %i.ei to i64
  %i.es = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i65, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -8
  %i.eu = load double, ptr %i.et, align 8
  %47 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.em, i64 0
  %48 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.eu, i64 1 ; 2 uses
  %49 = fcmp olt <2 x double> %47, %48
  %50 = insertelement <2 x double> %48, double %i.em, i64 0
  %51 = select <2 x i1> %49, <2 x double> %50, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77: ; preds = %.thread.i75, %.thread17.i72, %bb.ao, %bb.ap, %bb.aq
  %52 = phi <2 x double> [ %39, %bb.ao ], [ %35, %.thread.i75 ], [ %46, %bb.ap ], [ %51, %bb.aq ], [ %37, %.thread17.i72 ] ; 4 uses
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %54 = fmul <4 x double> %33, %53
  %.fr = freeze <4 x double> %54                  ; 5 uses
  %55 = fcmp uno <4 x double> %.fr, zeroinitializer
  %56 = bitcast <4 x i1> %55 to i4
  %.not155 = icmp eq i4 %56, 0
  br i1 %.not155, label %.critedge, label %bb.ar

.critedge:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77
  %57 = extractelement <4 x double> %.fr, i64 0   ; 4 uses
  %58 = extractelement <4 x double> %.fr, i64 2   ; 4 uses
  %i.ev = fcmp olt double %57, %58
  %.1.1.i = select i1 %i.ev, double %57, double %58 ; 2 uses
  %59 = extractelement <4 x double> %.fr, i64 1   ; 4 uses
  %i.ew = fcmp olt double %.1.1.i, %59
  %.1.2.i = select i1 %i.ew, double %.1.1.i, double %59 ; 2 uses
  %60 = extractelement <4 x double> %.fr, i64 3   ; 4 uses
  %i.ex = fcmp olt double %.1.2.i, %60
  %.1.3.i = select i1 %i.ex, double %.1.2.i, double %60 ; 2 uses
  %i.ey = fcmp oeq double %.1.3.i, 0.000000e+00
  %i.ez = select i1 %i.ey, double 0.000000e+00, double %.1.3.i ; 3 uses
  %i.fa = fcmp olt double %58, %57
  %.1.1.i79 = select i1 %i.fa, double %57, double %58 ; 2 uses
  %i.fb = fcmp olt double %59, %.1.1.i79
  %.1.2.i80 = select i1 %i.fb, double %.1.1.i79, double %59 ; 2 uses
  %i.fc = fcmp olt double %60, %.1.2.i80
  %.1.3.i81 = select i1 %i.fc, double %.1.2.i80, double %60 ; 2 uses
  %i.fd = fcmp oeq double %.1.3.i81, 0.000000e+00
  %i.fe = select i1 %i.fd, double 0.000000e+00, double %.1.3.i81 ; 3 uses
  %i.ff = fcmp ole double %i.ez, 0.000000e+00
  %i.fg = fcmp oge double %i.fe, 0.000000e+00
  %or.cond = and i1 %i.ff, %i.fg
  %61 = extractelement <2 x double> %32, i64 0
  %62 = fcmp olt double %61, 0.000000e+00
  %63 = extractelement <2 x double> %52, i64 0
  %64 = fcmp olt double %63, 0.000000e+00
  %or.cond122 = or i1 %62, %64
  %or.cond159 = select i1 %or.cond, i1 %or.cond122, i1 false ; 3 uses
  %65 = or disjoint i32 %i.aq, 2
  %66 = fadd double %i.ez, 0.000000e+00
  %67 = fadd double %i.fe, 0.000000e+00
  %.040 = select i1 %or.cond159, i32 %65, i32 %i.cm ; 2 uses
  %.038 = select i1 %or.cond159, double %66, double %i.ez
  %.0 = select i1 %or.cond159, double %67, double %i.fe
  %68 = extractelement <2 x double> %32, i64 0    ; 2 uses
  %69 = fcmp une double %68, -inf
  %70 = extractelement <2 x double> %32, i64 1    ; 2 uses
  %71 = fcmp une double %70, +inf
  %or.cond123.not134 = select i1 %69, i1 %71, i1 false
  %72 = extractelement <2 x double> %52, i64 0    ; 2 uses
  %73 = fcmp ugt double %72, 0.000000e+00
  %or.cond124 = or i1 %or.cond123.not134, %73
  %74 = extractelement <2 x double> %52, i64 1    ; 2 uses
  %75 = fcmp ult double %74, 0.000000e+00
  %or.cond125 = select i1 %or.cond124, i1 true, i1 %75
  br i1 %or.cond125, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit77
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.av

bb.as:                                            ; preds = %.critedge
  %i.fh = fcmp une double %72, -inf
  %i.fi = fcmp une double %74, +inf
  %or.cond126.not137.a = select i1 %i.fh, i1 %i.fi, i1 false
  %i.fj = fcmp ugt double %68, 0.000000e+00
  %or.cond127.a = or i1 %or.cond126.not137.a, %i.fj
  %i.fk = fcmp ult double %70, 0.000000e+00
  %or.cond128.a = select i1 %or.cond127.a, i1 true, i1 %i.fk
  br i1 %or.cond128.a, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge
  %i.fl = or i32 %.040, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.1 = phi i32 [ %i.fl, %bb.at ], [ %.040, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef %.038, double noundef %.0, i32 noundef %.1, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.ar, %_ZNSt14_Function_baseD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8
  %i.b = load double, ptr %2, align 8
  %i.c = fmul double %i.a, %i.b
  ret double %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE8MultiplyENS4_9FloatTypeILm64EEES8_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS2_9FloatTypeILm64EEES8_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::vector.513", align 8   ; 7 uses
  %5 = alloca %"class.std::function.507", align 8 ; 6 uses
  %6 = alloca %"struct.std::array.512", align 8   ; 8 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 8 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 3 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.8158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8158.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.7157.0..sroa_idx, align 4
  br label %bb.av

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i8 %i.b, 1
  %i.p = icmp eq i8 %i.i, 1
  %or.cond159 = and i1 %i.o, %i.p
  br i1 %or.cond159, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_, ptr %i.r, align 8
  store ptr @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.q, align 8
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE10ProductSetERKNS2_9FloatTypeILm64EEES8_jPNS0_4ZoneESt8functionIFdddEE(ptr dead_on_unwind writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %5)
  %i.s = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #23, !inline_history !40 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.e, %bb.f
  %i.u = load i8, ptr %0, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %_ZNSt14_Function_baseD2Ev.exit._crit_edge, label %bb.av

_ZNSt14_Function_baseD2Ev.exit._crit_edge:        ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %.pre = load i8, ptr %i.a, align 1
  %.pre176 = load i32, ptr %i.d, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre176, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.e, %bb.d ] ; 2 uses
  %i.x = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit._crit_edge ], [ %i.b, %bb.d ]
  %i.y = and i32 %i.w, 2
  %.not10.i.i = icmp eq i32 %i.y, 0               ; 3 uses
  switch i8 %i.x, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.h
    i8 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load double, ptr %i.z, align 8          ; 3 uses
  br i1 %.not10.i.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load double, ptr %i.ab, align 8
  %10 = insertelement <2 x double> poison, double %i.aa, i64 0
  %11 = insertelement <2 x double> %10, double %i.ac, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 2             ; 3 uses
  %i.af = icmp ult i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %.sroa.0.0.i.i3.i.i = select i1 %i.af, ptr %i.ag, ptr %i.ah ; 3 uses
  %i.ai = load double, ptr %.sroa.0.0.i.i3.i.i, align 8 ; 3 uses
  br i1 %.not10.i.i, label %.thread17.i, label %bb.m

.thread17.i:                                      ; preds = %bb.i
  %i.aj = zext i8 %i.ae to i64
  %i.ak = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load double, ptr %i.al, align 8
  %12 = insertelement <2 x double> poison, double %i.ai, i64 0
  %13 = insertelement <2 x double> %12, double %i.am, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.j:                                             ; preds = %bb.g
  unreachable

bb.k:                                             ; preds = %bb.g
  %..i.i = select i1 %.not10.i.i, double +qnan, double -0.000000e+00
  %14 = insertelement <2 x double> poison, double %..i.i, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.l:                                             ; preds = %bb.h
  %16 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %17 = load double, ptr %16, align 8
  %18 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.aa, i64 0
  %19 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %17, i64 1 ; 2 uses
  %20 = fcmp olt <2 x double> %18, %19
  %21 = insertelement <2 x double> %19, double %i.aa, i64 0
  %22 = select <2 x i1> %20, <2 x double> %21, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

bb.m:                                             ; preds = %bb.i
  %i.an = zext i8 %i.ae to i64
  %i.ao = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load double, ptr %i.ap, align 8
  %23 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.ai, i64 0
  %24 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.aq, i64 1 ; 2 uses
  %25 = fcmp olt <2 x double> %23, %24
  %26 = insertelement <2 x double> %24, double %i.ai, i64 0
  %27 = select <2 x i1> %25, <2 x double> %26, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit: ; preds = %.thread.i, %.thread17.i, %bb.k, %bb.l, %bb.m
  %28 = phi <2 x double> [ %15, %bb.k ], [ %11, %.thread.i ], [ %22, %bb.l ], [ %27, %bb.m ], [ %13, %.thread17.i ] ; 7 uses
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ar = load i8, ptr %i.h, align 1
  %i.as = load i32, ptr %i.k, align 4             ; 2 uses
  %i.at = and i32 %i.as, 2
  %.not10.i.i81 = icmp eq i32 %i.at, 0            ; 3 uses
  switch i8 %i.ar, label %bb.p [
    i8 2, label %bb.q
    i8 0, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load double, ptr %i.au, align 8         ; 3 uses
  br i1 %.not10.i.i81, label %.thread.i92, label %bb.r

.thread.i92:                                      ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load double, ptr %i.aw, align 8
  %30 = insertelement <2 x double> poison, double %i.av, i64 0
  %31 = insertelement <2 x double> %30, double %i.ax, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.o:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.az = load i8, ptr %i.ay, align 2             ; 3 uses
  %i.ba = icmp ult i8 %i.az, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.sroa.0.0.i.i3.i.i82 = select i1 %i.ba, ptr %i.bb, ptr %i.bc ; 3 uses
  %i.bd = load double, ptr %.sroa.0.0.i.i3.i.i82, align 8 ; 3 uses
  br i1 %.not10.i.i81, label %.thread17.i89, label %bb.s

.thread17.i89:                                    ; preds = %bb.o
  %i.be = zext i8 %i.az to i64
  %i.bf = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load double, ptr %i.bg, align 8
  %32 = insertelement <2 x double> poison, double %i.bd, i64 0
  %33 = insertelement <2 x double> %32, double %i.bh, i64 1
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.p:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  unreachable

bb.q:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit
  %..i.i93 = select i1 %.not10.i.i81, double +qnan, double -0.000000e+00
  %34 = insertelement <2 x double> poison, double %..i.i93, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.r:                                             ; preds = %bb.n
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %37 = load double, ptr %36, align 8
  %38 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.av, i64 0
  %39 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %37, i64 1 ; 2 uses
  %40 = fcmp olt <2 x double> %38, %39
  %41 = insertelement <2 x double> %39, double %i.av, i64 0
  %42 = select <2 x i1> %40, <2 x double> %41, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

bb.s:                                             ; preds = %bb.o
  %i.bi = zext i8 %i.az to i64
  %i.bj = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i.i82, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load double, ptr %i.bk, align 8
  %43 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bd, i64 0
  %44 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.bl, i64 1 ; 2 uses
  %45 = fcmp olt <2 x double> %43, %44
  %46 = insertelement <2 x double> %44, double %i.bd, i64 0
  %47 = select <2 x i1> %45, <2 x double> %46, <2 x double> splat (double -0.000000e+00)
  br label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94

_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94: ; preds = %.thread.i92, %.thread17.i89, %bb.q, %bb.r, %bb.s
  %48 = phi <2 x double> [ %35, %bb.q ], [ %31, %.thread.i92 ], [ %42, %bb.r ], [ %47, %bb.s ], [ %33, %.thread17.i89 ] ; 6 uses
  %49 = shufflevector <2 x double> %48, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bm = trunc i32 %i.w to i1
  %i.bn = and i32 %i.as, 3
  %or.cond.not.i = icmp ne i32 %i.bn, 0
  %or.cond161.not = select i1 %i.bm, i1 true, i1 %or.cond.not.i
  br i1 %or.cond161.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.bo = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  br i1 %i.bo, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %50 = extractelement <2 x double> %28, i64 0
  %i.bp = fcmp oeq double %50, -inf
  %51 = extractelement <2 x double> %28, i64 1
  %i.bq = fcmp oeq double %51, +inf
  %or.cond162 = select i1 %i.bp, i1 true, i1 %i.bq
  br i1 %or.cond162, label %bb.u, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

bb.u:                                             ; preds = %bb.t
  %52 = extractelement <2 x double> %48, i64 0
  %i.br = fcmp oeq double %52, -inf
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %53 = extractelement <2 x double> %48, i64 1
  %i.bs = fcmp oeq double %53, +inf
  %i.bt = zext i1 %i.bs to i32
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread: ; preds = %bb.t, %bb.v, %bb.u, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94
  %i.bu = phi i32 [ 1, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit ], [ 1, %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE6minmaxEv.exit94 ], [ 0, %bb.t ], [ 1, %bb.u ], [ %i.bt, %bb.v ] ; 2 uses
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = and i32 %i.bv, 2
  %i.bx = icmp ne i32 %i.bw, 0
  %54 = extractelement <2 x double> %48, i64 1    ; 4 uses
  %i.by = fcmp ogt double %54, 0.000000e+00
  %or.cond163 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond163, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread
  %i.bz = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %55 = extractelement <2 x double> %48, i64 0    ; 3 uses
  %i.ca = fcmp olt double %55, 0.000000e+00
  %or.cond164 = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %or.cond164, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cb = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %56 = extractelement <2 x double> %28, i64 0    ; 3 uses
  %i.cc = fcmp olt double %56, 0.000000e+00
  %or.cond165 = select i1 %i.cb, i1 %i.cc, i1 false
  %i.cd = fcmp ogt double %54, 1.000000e+00
  %or.cond166 = select i1 %or.cond165, i1 %i.cd, i1 false
  br i1 %or.cond166, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef 0.000000e+00) #23
  %57 = extractelement <2 x double> %28, i64 1    ; 3 uses
  %i.cf = fcmp oge double %57, 0.000000e+00
  %or.cond168.not171 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = fcmp olt double %55, -1.000000e+00
  %or.cond169 = select i1 %or.cond168.not171, i1 %i.cg, i1 false
  br i1 %or.cond169, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = fcmp olt double %57, 0.000000e+00
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ci = fdiv double %57, %54
  %i.cj = call noundef i1 @llvm.is.fpclass.f64(double %i.ci, i32 32)
  br i1 %i.cj, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ck = fcmp ogt double %56, 0.000000e+00
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cl = fdiv double %56, %55
  %i.cm = call noundef i1 @llvm.is.fpclass.f64(double %i.cl, i32 32)
  %i.cn = select i1 %i.cm, i32 2, i32 0
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.x, %bb.w, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, %bb.ab, %bb.ac, %bb.aa
  %i.co = phi i32 [ 2, %bb.aa ], [ 2, %bb.y ], [ 2, %bb.x ], [ 2, %bb.w ], [ 2, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread ], [ 0, %bb.ab ], [ %i.cn, %bb.ac ]
  %i.cp = or disjoint i32 %i.co, %i.bu            ; 7 uses
  %58 = extractelement <2 x double> %48, i64 0    ; 2 uses
  %i.cq = fcmp oge double %58, 0.000000e+00
  %i.cr = load i32, ptr %i.k, align 4
  %i.cs = and i32 %i.cr, 2
  %.not172 = icmp eq i32 %i.cs, 0                 ; 2 uses
  %i.ct = select i1 %i.cq, i1 %.not172, i1 false  ; 3 uses
  %i.cu = fcmp olt double %54, 0.000000e+00
  %or.cond = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond, label %bb.ae, label %bb.au

bb.ae:                                            ; preds = %bb.ad
  %i.cv = fcmp ogt double %58, 0.000000e+00
  %brmerge.not = select i1 %i.cv, i1 %.not172, i1 false
  br i1 %brmerge.not, label %.critedge, label %bb.ah

.critedge:                                        ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %59 = fdiv <4 x double> %29, %49
  %.fr = freeze <4 x double> %59                  ; 5 uses
  %60 = extractelement <4 x double> %.fr, i64 0
  store double %60, ptr %6, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %61 = extractelement <4 x double> %.fr, i64 1
  store double %61, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %62 = extractelement <4 x double> %.fr, i64 2
  store double %62, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 24
  %63 = extractelement <4 x double> %.fr, i64 3
  store double %63, ptr %i.cy, align 8
  %64 = fcmp uno <4 x double> %.fr, zeroinitializer
  %65 = bitcast <4 x i1> %64 to i4
  %.not = icmp eq i4 %65, 0
  br i1 %.not, label %.critedge80, label %bb.af

.critedge80:                                      ; preds = %.critedge
  %i.cz = call noundef double @_ZN2v88internal8compiler10turboshaft9array_minIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  %i.da = call noundef double @_ZN2v88internal8compiler10turboshaft9array_maxIdLm4EEET_RKSt5arrayIS4_XT0_EE(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %7, double noundef %i.cz, double noundef %i.da, i32 noundef %i.cp, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ag

bb.af:                                            ; preds = %.critedge
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 3, ptr %.sroa.7123.0..sroa_idx, align 4
  %.sroa.8124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8124.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.av

bb.ah:                                            ; preds = %bb.ae
  %66 = extractelement <2 x double> %28, i64 1
  %i.db = fcmp olt double %66, 0.000000e+00
  br i1 %i.db, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.ct, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.dc = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dd = fcmp oeq double %i.dc, -inf
  br i1 %i.dd, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.de = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25, !noalias !401 ; 3 uses
  store ptr %i.de, ptr %4, align 8, !noalias !401
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !noalias !401
  store double -inf, ptr %i.de, align 8, !noalias !401
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.df, ptr %i.dh, align 8, !noalias !401
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE3SetESt6vectorIdSaIdEEjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %8, ptr noundef nonnull %4, i32 noundef %i.cp, ptr noundef %3)
  %i.di = load ptr, ptr %4, align 8, !noalias !401 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.dg, align 8, !noalias !401
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.di to i64
  %i.dm = sub i64 %i.dk, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dm) #26
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

bb.am:                                            ; preds = %bb.aj
  %i.dn = call noundef i1 @llvm.is.fpclass.f64(double %i.dc, i32 32)
  br i1 %i.dn, label %bb.an, label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i, !prof !5

bb.an:                                            ; preds = %bb.am
  %i.do = or disjoint i32 %i.bu, 2
  br label %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i

_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i: ; preds = %bb.am, %bb.an
  %.014.i.i = phi double [ 0.000000e+00, %bb.an ], [ %i.dc, %bb.am ]
  %.0.i4.i.i = phi i32 [ %i.do, %bb.an ], [ %i.cp, %bb.am ]
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %8, align 8, !alias.scope !404
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %.0.i4.i.i, ptr %i.dp, align 4, !alias.scope !404
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double -inf, ptr %i.dq, align 8, !alias.scope !404
  %.sroa.4.0..sroa_idx.i.i95 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store double %.014.i.i, ptr %.sroa.4.0..sroa_idx.i.i95, align 8, !alias.scope !404
  br label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit: ; preds = %bb.ak, %bb.al, %_ZN2v88internal8compiler10turboshaft9FloatTypeILm64EE17IdentifyMinusZeroERd.exit5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.av

bb.ao:                                            ; preds = %bb.ai
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cp, ptr %.sroa.7116.0..sroa_idx, align 4
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8117.0..sroa_idx, align 8
  br label %bb.av

bb.ap:                                            ; preds = %bb.ah
  %67 = extractelement <2 x double> %28, i64 0
  %i.dr = fcmp ult double %67, 0.000000e+00
  br i1 %i.dr, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = load i32, ptr %i.d, align 4
  %i.dt = and i32 %i.ds, 2
  %.not174 = icmp eq i32 %i.dt, 0
  br i1 %.not174, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.ct, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cp, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr %.sroa.8110.0..sroa_idx, align 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.du = call noundef double @nextafter(double noundef 0.000000e+00, double noundef -inf) #23
  call void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %9, double noundef -inf, double noundef %i.du, i32 noundef %i.cp, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.av

bb.au:                                            ; preds = %bb.aq, %bb.ap, %bb.ad
  store <4 x i8> <i8 5, i8 0, i8 0, i8 0>, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cp, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> <double -inf, double +inf>, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.au, %bb.at, %bb.as, %bb.ao, %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE5RangeEddjPNS0_4ZoneE.exit, %bb.ag, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef double @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E9_M_invokeERKSt9_Any_dataOdSI_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 6 uses
  %i.b = load double, ptr %2, align 8             ; 4 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.a)
  %i.d = fcmp ueq double %i.c, +inf
  %i.e = tail call double @llvm.fabs.f64(double %i.b)
  %i.f = fcmp ueq double %i.e, +inf
  %or.cond17.i.i.i = and i1 %i.d, %i.f
  br i1 %or.cond17.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %.critedge.i.i.i, !prof !315

.critedge.i.i.i:                                  ; preds = %bb.a
  %i.g = tail call noundef i1 @llvm.is.fpclass.f64(double %i.b, i32 32)
  br i1 %i.g, label %bb.b, label %bb.d, !prof !5

bb.b:                                             ; preds = %.critedge.i.i.i
  %or.cond.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = fcmp ogt double %i.a, 0.000000e+00
  %i.i = select i1 %i.h, double -inf, double +inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.d:                                             ; preds = %.critedge.i.i.i
  %i.j = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.g, !prof !5

bb.e:                                             ; preds = %bb.d
  %or.cond15.i.i.i = fcmp ueq double %i.a, 0.000000e+00
  br i1 %or.cond15.i.i.i, label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = fcmp ogt double %i.a, 0.000000e+00
  %i.l = select i1 %i.k, double +inf, double -inf
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

bb.g:                                             ; preds = %bb.d
  %i.m = fdiv double %i.a, %i.b
  br label %_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit

_ZSt10__invoke_rIdRZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS3_9FloatTypeILm64EEES9_PNS1_4ZoneEEUlddE_JddEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g
  %.0.i.i.i = phi double [ %i.m, %bb.g ], [ +qnan, %bb.a ], [ %i.i, %bb.c ], [ +qnan, %bb.b ], [ %i.l, %bb.f ], [ +qnan, %bb.e ]
  ret double %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFdddEZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  br label %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE6DivideERKNS4_9FloatTypeILm64EEESA_PNS2_4ZoneEEUlddE_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @nextafter(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE7ModulusENS2_9FloatTypeILm64EEES6_PNS0_4ZoneE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %0, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %1, ptr noundef byval(%"class.v8::internal::compiler::turboshaft::FloatType.451") align 8 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 6 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 6 uses
  %8 = alloca %"class.v8::internal::compiler::turboshaft::FloatType.451", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.513", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp eq i8 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 3 uses
  %i.f = icmp eq i32 %i.e, 1
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.898.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.898.0..sroa_idx, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 5, i8 2, i8 0, i8 0>, ptr %0, align 8
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.797.0..sroa_idx, align 4
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.o = trunc i32 %i.e to i1
  %i.p = and i32 %i.l, 3
  %or.cond.not.i = icmp ne i32 %i.p, 0
  %or.cond.not = select i1 %i.o, i1 true, i1 %or.cond.not.i
  br i1 %or.cond.not, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit

_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit: ; preds = %bb.d
  %i.q = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE8ContainsEd(ptr noundef nonnull align 8 dereferenceable(24) %2, double noundef 0.000000e+00) #23
  %.pre = load i8, ptr %i.a, align 1              ; 5 uses
  %.pre120 = load i32, ptr %i.d, align 4          ; 5 uses
  br i1 %i.q, label %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19FloatOperationTyperILm64EE9IsZeroishERKNS2_9FloatTypeILm64EEE.exit
  %i.r = and i32 %.pre120, 2
  %.not10.i = icmp eq i32 %i.r, 0                 ; 5 uses
  switch i8 %.pre, label %bb.h [
    i8 2, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread.thread
    i8 0, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load double, ptr %i.s, align 8           ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %or.cond115 = select i1 %.not10.i, i1 true, i1 %i.u
  br i1 %or.cond115, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit.thread124, label %.thread

.thread:                                          ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load double, ptr %i.v, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.y = load i8, ptr %i.x, align 2               ; 2 uses
  %i.z = icmp ult i8 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.sroa.0.0.i.i3.i = select i1 %i.z, ptr %i.aa, ptr %i.ab ; 2 uses
  %i.ac = load double, ptr %.sroa.0.0.i.i3.i, align 8 ; 2 uses
  %i.ad = fcmp olt double %i.ac, 0.000000e+00
  %or.cond116 = select i1 %.not10.i, i1 true, i1 %i.ad
  br i1 %or.cond116, label %_ZNK2v88internal8compiler10turboshaft9FloatTypeILm64EE3minEv.exit, label %.thread113

.thread113:                                       ; preds = %bb.g
  %i.ae = zext i8 %i.y to i64
  %i.af = getelementptr [8 x i8], ptr %.sroa.0.0.i.i3.i, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load double, ptr %i.ag, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  unreachable
end_hunk_1
