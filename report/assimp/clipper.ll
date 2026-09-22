Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
.noexc.i.i.i:                                     ; preds = %bb.i
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bu = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #32
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i, %bb.h
  %i.bv = phi ptr [ null, %bb.h ], [ %i.bu, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.bv, ptr %i.bl, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bx, ptr %i.by, align 8
  %i.bz = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.ca = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.ca
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i ], [ %i.bv, %bb.j ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %i.bz, %bb.j ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bv, %bb.j ], [ %i.cc, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bw, align 8
  %i.cd = load ptr, ptr %i.f, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ce, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

bb.k:                                             ; preds = %bb.g
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.k, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i, %.lr.ph504
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.cf = load ptr, ptr %i.r, align 8
  %i.cg = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %sext655 = shl i64 %i.cj, 29
  %i.ck = ashr i64 %sext655, 32
  %i.cl = icmp slt i64 %indvars.iv.next536, %i.ck
  br i1 %i.cl, label %.lr.ph504, label %.loopexit, !llvm.loop !189

bb.l:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.cm = load double, ptr %0, align 8            ; 3 uses
  %i.cn = fcmp ogt double %i.cm, 2.000000e+00
  %i.co = fmul nnan double %i.cm, %i.cm
  %i.cp = fdiv double 2.000000e+00, %i.co
  %.sink = select i1 %i.cn, double %i.cp, double 5.000000e-01
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %.sink, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load double, ptr %i.cr, align 8         ; 3 uses
  %i.ct = fcmp ugt double %i.cs, 0.000000e+00
  br i1 %i.ct, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cu = fmul double %i.p, 2.500000e-01          ; 2 uses
  %i.cv = fcmp ogt double %i.cs, %i.cu
  %. = select i1 %i.cv, double %i.cu, double %i.cs
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0147 = phi double [ 2.500000e-01, %bb.l ], [ %., %bb.m ]
  %i.cw = fdiv double %.0147, %i.p
  %i.cx = fsub double 1.000000e+00, %i.cw
  %i.cy = tail call double @acos(double noundef %i.cx) #30
  %i.cz = fdiv double f0x400921FB54442D18, %i.cy  ; 2 uses
  %i.da = fmul double %i.p, f0x400921FB54442D18   ; 2 uses
  %i.db = fcmp ogt double %i.cz, %i.da
  %.0146 = select i1 %i.db, double %i.da, double %i.cz ; 4 uses
  %i.dc = fdiv double f0x401921FB54442D18, %.0146 ; 2 uses
  %i.dd = tail call double @sin(double noundef %i.dc) #30 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store double %i.dd, ptr %i.de, align 8
  %i.df = tail call double @cos(double noundef %i.dc) #30
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.df, ptr %i.dg, align 8
  %i.dh = fdiv double %.0146, f0x401921FB54442D18
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.dh, ptr %i.di, align 8
  %i.dj = fcmp olt double %1, 0.000000e+00
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = fneg double %i.dd
  store double %i.dk, ptr %i.de, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = shl i64 %i.dr, 30
  %sext445 = ashr i64 %i.ds, 32                   ; 2 uses
  %i.dt = and i64 %sext445, -2                    ; 3 uses
  %i.du = icmp ugt i64 %sext445, 384307168202282325
  br i1 %i.du, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = load ptr, ptr %i.d, align 8
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64               ; 2 uses
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = sdiv exact i64 %i.ea, 24
  %i.ec = icmp ult i64 %i.eb, %i.dt
  br i1 %i.ec, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit171

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160: ; preds = %bb.r
  %i.ed = ptrtoint ptr %i.e to i64
  %i.ee = sub i64 %i.ed, %i.dz
  %i.ef = mul nuw nsw i64 %i.dt, 24
  %i.eg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #32 ; 4 uses
  %i.eh = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ei = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not10.i.i.i.i161 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not10.i.i.i.i161, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i168, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160, %.lr.ph.i.i.i.i162
  %.012.i.i.i.i163 = phi ptr [ %i.eo, %.lr.ph.i.i.i.i162 ], [ %i.eg, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160 ] ; 3 uses
  %.0911.i.i.i.i164 = phi ptr [ %i.en, %.lr.ph.i.i.i.i162 ], [ %i.eh, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ej = load <2 x ptr>, ptr %.0911.i.i.i.i164, align 8, !alias.scope !238, !noalias !237
  store <2 x ptr> %i.ej, ptr %.012.i.i.i.i163, align 8, !alias.scope !237, !noalias !238
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i163, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i164, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !238, !noalias !237
  store ptr %i.em, ptr %i.ek, align 8, !alias.scope !237, !noalias !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i164, i8 0, i64 24, i1 false), !alias.scope !238, !noalias !237
  %i.en = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i164, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i163, i64 24
  %.not.i.i.i.i165 = icmp eq ptr %i.en, %i.ei
  br i1 %.not.i.i.i.i165, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i166, label %.lr.ph.i.i.i.i162, !llvm.loop !20

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i166: ; preds = %.lr.ph.i.i.i.i162
  %.pr.i167 = load ptr, ptr %i.d, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i168

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i168: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i166, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160
  %i.ep = phi ptr [ %.pr.i167, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exitthread-pre-split.i166 ], [ %i.eh, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE11_M_allocateEm.exit.i160 ] ; 3 uses
  %.not.i8.i169 = icmp eq ptr %i.ep, null
  br i1 %.not.i8.i169, label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i168
  %i.eq = load ptr, ptr %i.dv, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = sub i64 %i.er, %i.es
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.et) #33
  br label %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170

_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170: ; preds = %bb.s, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i168
  store ptr %i.eg, ptr %i.d, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ee
  store ptr %i.eu, ptr %i.f, align 8
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.dt
  store ptr %i.ev, ptr %i.dv, align 8
  %.pre = load ptr, ptr %i.dm, align 8
  %.pre538 = load ptr, ptr %i.dl, align 8         ; 2 uses
  %.pre550 = ptrtoint ptr %.pre to i64
  %.pre552 = ptrtoint ptr %.pre538 to i64
  %.pre554 = sub i64 %.pre550, %.pre552
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit171

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit171: ; preds = %bb.r, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170
  %.pre-phi555 = phi i64 [ %i.dr, %bb.r ], [ %.pre554, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170 ]
  %i.ew = phi ptr [ %i.do, %bb.r ], [ %.pre538, %_ZNSt12_Vector_baseISt6vectorIN10ClipperLib8IntPointESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit.i170 ]
  %i.ex = lshr exact i64 %.pre-phi555, 3
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph502, label %.loopexit

.lr.ph502:                                        ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE7reserveEm.exit171
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fc = fcmp ugt double %1, 0.000000e+00
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 29 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 33 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 23 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 13 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 12 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %i.fk = fcmp ult double %.0146, 1.000000e+00
  %i.fl = insertelement <2 x double> poison, double %1, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph502, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212
  %i.fn = phi ptr [ %i.ew, %.lr.ph502 ], [ %i.aaw, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212 ]
  %indvars.iv532 = phi i64 [ 0, %.lr.ph502 ], [ %indvars.iv.next533, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv532
  %i.fp = load ptr, ptr %i.fo, align 8            ; 9 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.fq) ; 0 uses
  %i.fs = load ptr, ptr %i.fb, align 8
  %i.ft = load ptr, ptr %i.fa, align 8
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv                    ; 2 uses
  %i.fx = lshr exact i64 %i.fw, 4
  %i.fy = trunc i64 %i.fx to i32                  ; 12 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.fc, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ga = icmp slt i32 %i.fy, 3
  br i1 %i.ga, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fp, i64 76
  %i.gc = load i32, ptr %i.gb, align 4
  %.not = icmp eq i32 %i.gc, 0
  br i1 %.not, label %bb.x, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.gd = load ptr, ptr %i.fd, align 8            ; 3 uses
  %i.ge = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not.i.i172 = icmp eq ptr %i.ge, %i.gd
  br i1 %.not.i.i172, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.x
  store ptr %i.gd, ptr %i.fe, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit: ; preds = %bb.x, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.gf = phi ptr [ %i.ge, %bb.x ], [ %i.gd, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.gg = icmp eq i32 %i.fy, 1
  br i1 %i.gg, label %bb.y, label %bb.an

bb.y:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = icmp eq i32 %i.gi, 1
  br i1 %i.gj, label %.preheader, label %.preheader448

.preheader:                                       ; preds = %bb.y
  br i1 %i.fk, label %.loopexit447, label %.lr.ph500

.lr.ph500:                                        ; preds = %.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit
  %i.gk = phi ptr [ %i.hr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ %i.gf, %.preheader ] ; 6 uses
  %.0142499 = phi i64 [ %i.hz, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ 1, %.preheader ]
  %i.gl = phi <2 x double> [ %i.hy, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ <double 1.000000e+00, double 0.000000e+00>, %.preheader ] ; 4 uses
  %i.gm = load ptr, ptr %i.fa, align 8
  %i.gn = load <2 x i64>, ptr %i.gm, align 8
  %i.go = sitofp <2 x i64> %i.gn to <2 x double>
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> %i.fm, <2 x double> %i.go) ; 2 uses
  %i.gq = extractelement <2 x double> %i.gp, i64 0 ; 2 uses
  %i.gr = fcmp olt double %i.gq, 0.000000e+00
  %.0.in.v.i = select i1 %i.gr, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.gq, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64           ; 2 uses
  %i.gs = extractelement <2 x double> %i.gp, i64 1 ; 2 uses
  %i.gt = fcmp olt double %i.gs, 0.000000e+00
  %.0.in.v.i173 = select i1 %i.gt, double -5.000000e-01, double 5.000000e-01
  %.0.in.i174 = fadd double %i.gs, %.0.in.v.i173
  %.0.i175 = fptosi double %.0.in.i174 to i64     ; 2 uses
  %i.gu = load ptr, ptr %i.fj, align 8
  %.not.i.i176 = icmp eq ptr %i.gk, %i.gu
  br i1 %.not.i.i176, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph500
  store i64 %.0.i, ptr %i.gk, align 8
  %.sroa.5442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i64 %.0.i175, ptr %.sroa.5442.0..sroa_idx, align 8
  %i.gv = load ptr, ptr %i.fe, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  store ptr %i.gw, ptr %i.fe, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

bb.aa:                                            ; preds = %.lr.ph500
  %i.gx = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.gy = ptrtoint ptr %i.gk to i64
  %i.gz = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.ha = sub i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775792
  br i1 %i.hb, label %bb.ab, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aa
  %i.hc = ashr exact i64 %i.ha, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.hc ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  %i.hf = tail call i64 @llvm.umin.i64(i64 %i.hd, i64 576460752303423487)
  %i.hg = select i1 %i.he, i64 576460752303423487, i64 %i.hf ; 3 uses
  %.not.i.i.i.i177 = icmp ne i64 %i.hg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i177)
  %i.hh = shl nuw nsw i64 %i.hg, 4
  %i.hi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #32 ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ha ; 2 uses
  store i64 %.0.i, ptr %i.hj, align 8
  %.sroa.5442.0..sroa_idx443 = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store i64 %.0.i175, ptr %.sroa.5442.0..sroa_idx443, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.gx, %i.gk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i178

.lr.ph.i.i.i.i.i.i178:                            ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i178
  %.012.i.i.i.i.i.i = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i178 ], [ %i.hi, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i178 ], [ %i.gx, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !239
  %i.hk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i179 = icmp eq ptr %i.hk, %i.gk
  br i1 %.not.i.i.i.i.i.i179, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i178, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i178, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i180 = phi ptr [ %i.hi, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.hl, %.lr.ph.i.i.i.i.i.i178 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i180, i64 16 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.hn = load ptr, ptr %i.fj, align 8
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.gz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.hp) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.ac, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.hi, ptr %i.fd, align 8
  store ptr %i.hm, ptr %i.fe, align 8
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hg
  store ptr %i.hq, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.z, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.hr = phi ptr [ %i.gw, %bb.z ], [ %i.hm, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %i.hs = load <2 x double>, ptr %i.de, align 8   ; 2 uses
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = fneg <2 x double> %i.gl
  %i.hv = shufflevector <2 x double> %i.hu, <2 x double> %i.gl, <2 x i32> <i32 1, i32 3>
  %i.hw = fmul <2 x double> %i.hs, %i.hv
  %i.hx = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> %i.ht, <2 x double> %i.hw)
  %i.hz = add nuw nsw i64 %.0142499, 1            ; 2 uses
  %i.ia = uitofp nneg i64 %i.hz to double
  %i.ib = fcmp ult double %.0146, %i.ia
  br i1 %i.ib, label %.loopexit447, label %.lr.ph500, !llvm.loop !196

.preheader448:                                    ; preds = %bb.y, %bb.ai
  %i.ic = phi ptr [ %i.jo, %bb.ai ], [ %i.gf, %bb.y ] ; 6 uses
  %.0138496 = phi i32 [ %i.jr, %bb.ai ], [ 0, %bb.y ]
  %.0139495 = phi double [ %.1, %bb.ai ], [ -1.000000e+00, %bb.y ] ; 3 uses
  %.0140494 = phi double [ %.1141, %bb.ai ], [ -1.000000e+00, %bb.y ] ; 2 uses
  %i.id = phi <2 x double> [ %i.jt, %bb.ai ], [ splat (double -1.000000e+00), %bb.y ]
  %i.ie = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load i64, ptr %i.if, align 8
  %i.ih = load i64, ptr %i.ie, align 8
  %i.ii = sitofp i64 %i.ig to double
  %i.ij = sitofp i64 %i.ih to double
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ii, i64 1
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.fm, <2 x double> %i.il) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0 ; 2 uses
  %i.io = fcmp olt double %i.in, 0.000000e+00
  %.0.in.v.i181 = select i1 %i.io, double -5.000000e-01, double 5.000000e-01
  %.0.in.i182 = fadd double %i.in, %.0.in.v.i181
  %.0.i183 = fptosi double %.0.in.i182 to i64     ; 2 uses
  %i.ip = extractelement <2 x double> %i.im, i64 1 ; 2 uses
  %i.iq = fcmp olt double %i.ip, 0.000000e+00
  %.0.in.v.i184 = select i1 %i.iq, double -5.000000e-01, double 5.000000e-01
  %.0.in.i185 = fadd double %i.ip, %.0.in.v.i184
  %.0.i186 = fptosi double %.0.in.i185 to i64     ; 2 uses
  %i.ir = load ptr, ptr %i.fj, align 8
  %.not.i.i187 = icmp eq ptr %i.ic, %i.ir
  br i1 %.not.i.i187, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.preheader448
  store i64 %.0.i183, ptr %i.ic, align 8
  %.sroa.5437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 %.0.i186, ptr %.sroa.5437.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188: ; preds = %bb.ae
  %i.iz = ashr exact i64 %i.ix, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i189 = tail call i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  %i.ja = add nsw i64 %.sroa.speculated.i.i.i.i189, %i.iz ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  %i.jc = tail call i64 @llvm.umin.i64(i64 %i.ja, i64 576460752303423487)
  %i.jd = select i1 %i.jb, i64 576460752303423487, i64 %i.jc ; 3 uses
  %.not.i.i.i.i190 = icmp ne i64 %i.jd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i190)
  %i.je = shl nuw nsw i64 %i.jd, 4
  %i.jf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #32 ; 5 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ix ; 2 uses
  store i64 %.0.i183, ptr %i.jg, align 8
  %.sroa.5437.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %.0.i186, ptr %.sroa.5437.0..sroa_idx438, align 8
  %.not10.i.i.i.i.i.i191 = icmp eq ptr %i.iu, %i.ic
  br i1 %.not10.i.i.i.i.i.i191, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196, label %.lr.ph.i.i.i.i.i.i192

.lr.ph.i.i.i.i.i.i192:                            ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188, %.lr.ph.i.i.i.i.i.i192
  %.012.i.i.i.i.i.i193 = phi ptr [ %i.ji, %.lr.ph.i.i.i.i.i.i192 ], [ %i.jf, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ] ; 2 uses
  %.0911.i.i.i.i.i.i194 = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i.i192 ], [ %i.iu, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i193, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i194, i64 16, i1 false), !alias.scope !240
  %i.jh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i194, i64 16 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i193, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i195 = icmp eq ptr %i.jh, %i.ic
  br i1 %.not.i.i.i.i.i.i195, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196, label %.lr.ph.i.i.i.i.i.i192, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196: ; preds = %.lr.ph.i.i.i.i.i.i192, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188
  %.0.lcssa.i.i.i.i.i.i197 = phi ptr [ %i.jf, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i188 ], [ %i.ji, %.lr.ph.i.i.i.i.i.i192 ]
  %i.jj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i197, i64 16 ; 2 uses
  %.not.i23.i.i.i198 = icmp eq ptr %i.iu, null
  br i1 %.not.i23.i.i.i198, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196
  %i.jk = load ptr, ptr %i.fj, align 8
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = sub i64 %i.jl, %i.iw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.jm) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199: ; preds = %bb.ag, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i196
  store ptr %i.jf, ptr %i.fd, align 8
  store ptr %i.jj, ptr %i.fe, align 8
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jf, i64 %i.jd
  store ptr %i.jn, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200: ; preds = %bb.ad, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199
  %i.jo = phi ptr [ %i.it, %bb.ad ], [ %i.jj, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i199 ] ; 2 uses
  %i.jp = fcmp olt double %.0140494, 0.000000e+00
  br i1 %i.jp, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200
  %i.jq = fcmp olt double %.0139495, 0.000000e+00 ; 2 uses
  %.0140. = select i1 %i.jq, double %.0140494, double -1.000000e+00
  %..0139 = select i1 %i.jq, double 1.000000e+00, double %.0139495
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200
  %.1141 = phi double [ 1.000000e+00, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200 ], [ %.0140., %bb.ah ] ; 2 uses
  %.1 = phi double [ %.0139495, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit200 ], [ %..0139, %bb.ah ] ; 2 uses
  %i.jr = add nuw nsw i32 %.0138496, 1            ; 2 uses
  %exitcond531.not = icmp eq i32 %i.jr, 4
  %i.js = insertelement <2 x double> poison, double %.1141, i64 0
  %i.jt = insertelement <2 x double> %i.js, double %.1, i64 1
  br i1 %exitcond531.not, label %.loopexit447, label %.preheader448, !llvm.loop !200

.loopexit447:                                     ; preds = %bb.ai, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit, %.preheader
  %i.ju = phi ptr [ %i.hr, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backEOS1_.exit ], [ %i.gf, %.preheader ], [ %i.jo, %bb.ai ] ; 2 uses
  %i.jv = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.jw = load ptr, ptr %i.dv, align 8
  %.not.i201 = icmp eq ptr %i.jv, %i.jw
  br i1 %.not.i201, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %.loopexit447
  %i.jx = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = ptrtoint ptr %i.jx to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i202 = icmp eq ptr %i.ju, %i.jx
  br i1 %.not.i.i.i.i.i202, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kb = icmp ugt i64 %i.ka, 9223372036854775792
  br i1 %i.kb, label %.noexc.i.i.i211, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203, !prof !49

.noexc.i.i.i211:                                  ; preds = %bb.ak
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203: ; preds = %bb.ak
  %i.kc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ka) #32
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203, %bb.aj
  %i.kd = phi ptr [ null, %bb.aj ], [ %i.kc, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i203 ] ; 5 uses
  store ptr %i.kd, ptr %i.jv, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 2 uses
  store ptr %i.kd, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ka
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store ptr %i.kf, ptr %i.kg, align 8
  %i.kh = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ki = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i204 = icmp eq ptr %i.kh, %i.ki
  br i1 %.not7.i.i.i.i.i.i204, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209, label %.lr.ph.i.i.i.i.i.i205

.lr.ph.i.i.i.i.i.i205:                            ; preds = %bb.al, %.lr.ph.i.i.i.i.i.i205
  %.09.i.i.i.i.i.i206 = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i.i205 ], [ %i.kd, %bb.al ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i207 = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i.i205 ], [ %i.kh, %bb.al ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i206, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i207, i64 16, i1 false)
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i207, i64 16 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i206, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i208 = icmp eq ptr %i.kj, %i.ki
  br i1 %.not.i.i.i.i.i.i208, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209, label %.lr.ph.i.i.i.i.i.i205, !llvm.loop !23

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i209: ; preds = %.lr.ph.i.i.i.i.i.i205, %bb.al
  %.0.lcssa.i.i.i.i.i.i210 = phi ptr [ %i.kd, %bb.al ], [ %i.kk, %.lr.ph.i.i.i.i.i.i205 ]
  store ptr %.0.lcssa.i.i.i.i.i.i210, ptr %i.ke, align 8
  %i.kl = load ptr, ptr %i.f, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  store ptr %i.km, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.am:                                            ; preds = %.loopexit447
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.jv, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.an:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit
  %i.kn = load ptr, ptr %i.ff, align 8            ; 4 uses
  %i.ko = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not.i.i213 = icmp eq ptr %i.ko, %i.kn
  br i1 %.not.i.i213, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.an
  store ptr %i.kn, ptr %i.fg, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit: ; preds = %bb.an, %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.kp = phi ptr [ %i.ko, %bb.an ], [ %i.kn, %_ZSt8_DestroyIPN10ClipperLib11DoublePointES1_EvT_S3_RSaIT0_E.exit.i.i ] ; 2 uses
  %sext = shl i64 %i.fw, 28                       ; 3 uses
  %i.kq = ashr exact i64 %sext, 32                ; 3 uses
  %i.kr = icmp ugt i64 %i.kq, 576460752303423487
  br i1 %i.kr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #31
  unreachable

bb.ap:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE5clearEv.exit
  %i.ks = load ptr, ptr %i.fh, align 8
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kn to i64               ; 2 uses
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = ashr exact i64 %i.kv, 4
  %i.kx = icmp ult i64 %i.kw, %i.kq
  br i1 %i.kx, label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.ap
  %i.ky = ptrtoint ptr %i.kp to i64
  %i.kz = sub i64 %i.ky, %i.ku
  %i.la = ashr exact i64 %sext, 28
  %i.lb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #32 ; 4 uses
  %i.lc = load ptr, ptr %i.ff, align 8            ; 5 uses
  %i.ld = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not10.i.i.i.i214 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not10.i.i.i.i214, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i215

.lr.ph.i.i.i.i215:                                ; preds = %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i215
  %.012.i.i.i.i216 = phi ptr [ %i.lf, %.lr.ph.i.i.i.i215 ], [ %i.lb, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i217 = phi ptr [ %i.le, %.lr.ph.i.i.i.i215 ], [ %i.lc, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i216, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i217, i64 16, i1 false), !alias.scope !241
  %i.le = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i217, i64 16 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i216, i64 16
  %.not.i.i.i.i218 = icmp eq ptr %i.le, %i.ld
  br i1 %.not.i.i.i.i218, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i215, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i215, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i219 = icmp eq ptr %i.lc, null
  br i1 %.not.i8.i219, label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.lg = load ptr, ptr %i.fh, align 8
  %i.lh = ptrtoint ptr %i.lg to i64
  %i.li = ptrtoint ptr %i.lc to i64
  %i.lj = sub i64 %i.lh, %i.li
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef %i.lj) #33
  br label %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.lb, ptr %i.ff, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kz ; 2 uses
  store ptr %i.lk, ptr %i.fg, align 8
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %i.kq
  store ptr %i.ll, ptr %i.fh, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit: ; preds = %bb.ap, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.lm = phi ptr [ %i.kp, %bb.ap ], [ %i.lk, %_ZNSt12_Vector_baseIN10ClipperLib11DoublePointESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %i.ln = add i32 %i.fy, -1                       ; 16 uses
  %i.lo = icmp sgt i32 %i.fy, 1                   ; 3 uses
  br i1 %i.lo, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit
  %wide.trip.count = zext nneg i32 %i.ln to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit
  %i.lp = phi ptr [ %i.lm, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE7reserveEm.exit ], [ %i.nl, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 11 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.fp, i64 76 ; 6 uses
  %i.lr = load i32, ptr %i.lq, align 4
  %switch = icmp ult i32 %i.lr, 2
  br i1 %switch, label %bb.av, label %bb.ba

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit
  %i.ls = phi ptr [ %i.lm, %.lr.ph.preheader ], [ %i.nl, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.lt = load ptr, ptr %i.fa, align 8            ; 2 uses
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %indvars.iv ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %indvars.iv.next ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8            ; 2 uses
  %i.lx = load i64, ptr %i.lu, align 8            ; 2 uses
  %i.ly = icmp eq i64 %i.lw, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %i.ma = load i64, ptr %i.lz, align 8            ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.mc = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.md = icmp eq i64 %i.ma, %i.mc
  %or.cond.i = select i1 %i.ly, i1 %i.md, i1 false
  br i1 %or.cond.i, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %i.me = sub nsw i64 %i.lw, %i.lx
  %i.mf = sitofp i64 %i.me to double              ; 3 uses
  %i.mg = sub nsw i64 %i.ma, %i.mc
  %i.mh = sitofp i64 %i.mg to double              ; 3 uses
  %i.mi = fmul nnan double %i.mh, %i.mh
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.mf, double %i.mi)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.mj)
  %i.mk = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ml = fmul double %i.mk, %i.mh
  %i.mm = fneg double %i.mf
  %i.mn = fmul double %i.mk, %i.mm
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit: ; preds = %.lr.ph, %._crit_edge.i
  %.sroa.3.0.i = phi double [ %i.mn, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %.sroa.0.0.i = phi double [ %i.ml, %._crit_edge.i ], [ 0.000000e+00, %.lr.ph ] ; 2 uses
  %i.mo = load ptr, ptr %i.fh, align 8
  %.not.i.i220 = icmp eq ptr %i.ls, %i.mo
  br i1 %.not.i.i220, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  store double %.sroa.0.0.i, ptr %i.ls, align 8
  %.sroa.5432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx, align 8
  %i.mp = load ptr, ptr %i.fg, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  store ptr %i.mq, ptr %i.fg, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

bb.as:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit
  %i.mr = load ptr, ptr %i.ff, align 8            ; 5 uses
  %i.ms = ptrtoint ptr %i.ls to i64
  %i.mt = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mu = sub i64 %i.ms, %i.mt                    ; 3 uses
  %i.mv = icmp eq i64 %i.mu, 9223372036854775792
  br i1 %i.mv, label %bb.at, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %i.mw = ashr exact i64 %i.mu, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i221 = tail call i64 @llvm.umax.i64(i64 %i.mw, i64 1)
  %i.mx = add nsw i64 %.sroa.speculated.i.i.i.i221, %i.mw ; 2 uses
  %i.my = icmp ult i64 %i.mx, %i.mw
  %i.mz = tail call i64 @llvm.umin.i64(i64 %i.mx, i64 576460752303423487)
  %i.na = select i1 %i.my, i64 576460752303423487, i64 %i.mz ; 3 uses
  %.not.i.i.i.i222 = icmp ne i64 %i.na, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i222)
  %i.nb = shl nuw nsw i64 %i.na, 4
  %i.nc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nb) #32 ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mu ; 2 uses
  store double %.sroa.0.0.i, ptr %i.nd, align 8
  %.sroa.5432.0..sroa_idx433 = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store double %.sroa.3.0.i, ptr %.sroa.5432.0..sroa_idx433, align 8
  %.not10.i.i.i.i.i.i223 = icmp eq ptr %i.mr, %i.ls
  br i1 %.not10.i.i.i.i.i.i223, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224

.lr.ph.i.i.i.i.i.i224:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i224
  %.012.i.i.i.i.i.i225 = phi ptr [ %i.nf, %.lr.ph.i.i.i.i.i.i224 ], [ %i.nc, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i226 = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i.i224 ], [ %i.mr, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i225, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i226, i64 16, i1 false), !alias.scope !242
  %i.ne = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i226, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i225, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i227 = icmp eq ptr %i.ne, %i.ls
  br i1 %.not.i.i.i.i.i.i227, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i224, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i224, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i228 = phi ptr [ %i.nc, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.nf, %.lr.ph.i.i.i.i.i.i224 ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i228, i64 16 ; 2 uses
  %.not.i23.i.i.i229 = icmp eq ptr %i.mr, null
  br i1 %.not.i23.i.i.i229, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.nh = load ptr, ptr %i.fh, align 8
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %i.ni, %i.mt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.mr, i64 noundef %i.nj) #33
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.au, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.nc, ptr %i.ff, align 8
  store ptr %i.ng, ptr %i.fg, align 8
  %i.nk = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %i.na
  store ptr %i.nk, ptr %i.fh, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ar, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.nl = phi ptr [ %i.mq, %bb.ar ], [ %i.ng, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !208

bb.av:                                            ; preds = %._crit_edge
  %i.nm = sext i32 %i.ln to i64
  %i.nn = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %i.nm ; 2 uses
  %i.np = load i64, ptr %i.nn, align 8            ; 2 uses
  %i.nq = load i64, ptr %i.no, align 8            ; 2 uses
  %i.nr = icmp eq i64 %i.np, %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nt = load i64, ptr %i.ns, align 8            ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nv = load i64, ptr %i.nu, align 8            ; 2 uses
  %i.nw = icmp eq i64 %i.nt, %i.nv
  %or.cond.i230 = select i1 %i.nr, i1 %i.nw, i1 false
  br i1 %or.cond.i230, label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237, label %._crit_edge.i231

._crit_edge.i231:                                 ; preds = %bb.av
  %i.nx = sub nsw i64 %i.np, %i.nq
  %i.ny = sitofp i64 %i.nx to double              ; 3 uses
  %i.nz = sub nsw i64 %i.nt, %i.nv
  %i.oa = sitofp i64 %i.nz to double              ; 3 uses
  %i.ob = fmul nnan double %i.oa, %i.oa
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.ny, double %i.ny, double %i.ob)
  %sqrt.i232 = tail call double @llvm.sqrt.f64(double %i.oc)
  %i.od = fdiv double 1.000000e+00, %sqrt.i232    ; 2 uses
  %i.oe = fmul double %i.od, %i.oa
  %i.of = fneg double %i.ny
  %i.og = fmul double %i.od, %i.of
  br label %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237

_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237: ; preds = %bb.av, %._crit_edge.i231
  %.sroa.3.0.i233 = phi double [ %i.og, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %.sroa.0.0.i234 = phi double [ %i.oe, %._crit_edge.i231 ], [ 0.000000e+00, %bb.av ] ; 2 uses
  %i.oh = load ptr, ptr %i.fh, align 8
  %.not.i.i238 = icmp eq ptr %i.lp, %i.oh
  br i1 %.not.i.i238, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  store double %.sroa.0.0.i234, ptr %i.lp, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx, align 8
  %i.oi = load ptr, ptr %i.fg, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store ptr %i.oj, ptr %i.fg, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

bb.ax:                                            ; preds = %_ZN10ClipperLib13GetUnitNormalERKNS_8IntPointES2_.exit237
  %i.ok = load ptr, ptr %i.ff, align 8            ; 5 uses
  %i.ol = ptrtoint ptr %i.lp to i64
  %i.om = ptrtoint ptr %i.ok to i64               ; 2 uses
  %i.on = sub i64 %i.ol, %i.om                    ; 3 uses
  %i.oo = icmp eq i64 %i.on, 9223372036854775792
  br i1 %i.oo, label %bb.ay, label %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i239: ; preds = %bb.ax
  %i.op = ashr exact i64 %i.on, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i240 = tail call i64 @llvm.umax.i64(i64 %i.op, i64 1)
  %i.oq = add nsw i64 %.sroa.speculated.i.i.i.i240, %i.op ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.op
  %i.os = tail call i64 @llvm.umin.i64(i64 %i.oq, i64 576460752303423487)
  %i.ot = select i1 %i.or, i64 576460752303423487, i64 %i.os ; 3 uses
  %.not.i.i.i.i241 = icmp ne i64 %i.ot, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i241)
  %i.ou = shl nuw nsw i64 %i.ot, 4
  %i.ov = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #32 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.on ; 2 uses
  store double %.sroa.0.0.i234, ptr %i.ow, align 8
  %.sroa.5.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store double %.sroa.3.0.i233, ptr %.sroa.5.0..sroa_idx428, align 8
  %.not10.i.i.i.i.i.i242 = icmp eq ptr %i.ok, %i.lp
  br i1 %.not10.i.i.i.i.i.i242, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i247, label %.lr.ph.i.i.i.i.i.i243
end_hunk_1
begin_hunk_2_@_ZN10ClipperLib13ClipperOffset8DoOffsetEd:bb.a
.lr.ph.i.i.i.i.i.i257:                            ; preds = %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253, %.lr.ph.i.i.i.i.i.i257
  %.012.i.i.i.i.i.i258 = phi ptr [ %i.px, %.lr.ph.i.i.i.i.i.i257 ], [ %i.pu, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ] ; 2 uses
  %.0911.i.i.i.i.i.i259 = phi ptr [ %i.pw, %.lr.ph.i.i.i.i.i.i257 ], [ %i.pe, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i259, i64 16, i1 false), !alias.scope !244
  %i.pw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i259, i64 16 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i258, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i260 = icmp eq ptr %i.pw, %i.lp
  br i1 %.not.i.i.i.i.i.i260, label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, label %.lr.ph.i.i.i.i.i.i257, !llvm.loop !204

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264: ; preds = %.lr.ph.i.i.i.i.i.i257, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253
  %.0.lcssa.i.i.i.i.i.i262 = phi ptr [ %i.pu, %_ZNKSt6vectorIN10ClipperLib11DoublePointESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i253 ], [ %i.px, %.lr.ph.i.i.i.i.i.i257 ]
  %i.py = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i262, i64 16
  %i.pz = load ptr, ptr %i.fh, align 8
  %i.qa = ptrtoint ptr %i.pz to i64
  %i.qb = sub i64 %i.qa, %i.pl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.qb) #33
  store ptr %i.pu, ptr %i.ff, align 8
  store ptr %i.py, ptr %i.fg, align 8
  %i.qc = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.ps
  store ptr %i.qc, ptr %i.fh, align 8
  br label %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251

_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251: ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i264, %bb.bb, %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i250, %bb.aw
  %i.qd = load i32, ptr %i.lq, align 4            ; 2 uses
  switch i32 %i.qd, label %bb.bv [
    i32 0, label %bb.be
    i32 1, label %bb.bk
  ]

bb.be:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 %i.ln, ptr %i.a, align 4
  %i.qe = icmp sgt i32 %i.fy, 0
  br i1 %i.qe, label %.lr.ph481, label %._crit_edge482

.lr.ph481:                                        ; preds = %bb.be
  %i.qf = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  br label %bb.bj

._crit_edge482:                                   ; preds = %bb.bj, %bb.be
  %i.qg = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.qh = load ptr, ptr %i.dv, align 8
  %.not.i266 = icmp eq ptr %i.qg, %i.qh
  br i1 %.not.i266, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge482
  %i.qi = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.qj = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = ptrtoint ptr %i.qj to i64
  %i.qm = sub i64 %i.qk, %i.ql                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qg, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i267 = icmp eq ptr %i.qi, %i.qj
  br i1 %.not.i.i.i.i.i267, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qn = icmp ugt i64 %i.qm, 9223372036854775792
  br i1 %i.qn, label %.noexc.i.i.i276, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268, !prof !49

.noexc.i.i.i276:                                  ; preds = %bb.bg
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268: ; preds = %bb.bg
  %i.qo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #32
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268, %bb.bf
  %i.qp = phi ptr [ null, %bb.bf ], [ %i.qo, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i268 ] ; 5 uses
  store ptr %i.qp, ptr %i.qg, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qg, i64 8 ; 2 uses
  store ptr %i.qp, ptr %i.qq, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qp, i64 %i.qm
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store ptr %i.qr, ptr %i.qs, align 8
  %i.qt = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.qu = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i269 = icmp eq ptr %i.qt, %i.qu
  br i1 %.not7.i.i.i.i.i.i269, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, label %.lr.ph.i.i.i.i.i.i270

.lr.ph.i.i.i.i.i.i270:                            ; preds = %bb.bh, %.lr.ph.i.i.i.i.i.i270
  %.09.i.i.i.i.i.i271 = phi ptr [ %i.qw, %.lr.ph.i.i.i.i.i.i270 ], [ %i.qp, %bb.bh ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i272 = phi ptr [ %i.qv, %.lr.ph.i.i.i.i.i.i270 ], [ %i.qt, %bb.bh ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i271, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i272, i64 16, i1 false)
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i272, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i271, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i273 = icmp eq ptr %i.qv, %i.qu
  br i1 %.not.i.i.i.i.i.i273, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, label %.lr.ph.i.i.i.i.i.i270, !llvm.loop !23

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274: ; preds = %.lr.ph.i.i.i.i.i.i270, %bb.bh
  %.0.lcssa.i.i.i.i.i.i275 = phi ptr [ %i.qp, %bb.bh ], [ %i.qw, %.lr.ph.i.i.i.i.i.i270 ]
  store ptr %.0.lcssa.i.i.i.i.i.i275, ptr %i.qq, align 8
  %i.qx = load ptr, ptr %i.f, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store ptr %i.qy, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277

bb.bi:                                            ; preds = %._crit_edge482
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.qg, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit277: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i274, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.bj:                                            ; preds = %.lr.ph481, %bb.bj
  %.0136479 = phi i32 [ 0, %.lr.ph481 ], [ %i.ra, %bb.bj ] ; 2 uses
  %i.qz = load i32, ptr %i.qf, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0136479, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.qz)
  %i.ra = add nuw nsw i32 %.0136479, 1            ; 2 uses
  %exitcond526.not = icmp eq i32 %i.ra, %i.fy
  br i1 %exitcond526.not, label %._crit_edge482, label %bb.bj, !llvm.loop !215

bb.bk:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 %i.ln, ptr %i.b, align 4
  %i.rb = icmp sgt i32 %i.fy, 0                   ; 2 uses
  br i1 %i.rb, label %.lr.ph470, label %._crit_edge471

.lr.ph470:                                        ; preds = %bb.bk
  %i.rc = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  br label %bb.bp

._crit_edge471:                                   ; preds = %bb.bp, %bb.bk
  %i.rd = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.re = load ptr, ptr %i.dv, align 8
  %.not.i278 = icmp eq ptr %i.rd, %i.re
  br i1 %.not.i278, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge471
  %i.rf = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.rg = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.rh = ptrtoint ptr %i.rf to i64
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = sub i64 %i.rh, %i.ri                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rd, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i279 = icmp eq ptr %i.rf, %i.rg
  br i1 %.not.i.i.i.i.i279, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.rk = icmp ugt i64 %i.rj, 9223372036854775792
  br i1 %i.rk, label %.noexc.i.i.i288, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280, !prof !49

.noexc.i.i.i288:                                  ; preds = %bb.bm
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280: ; preds = %bb.bm
  %i.rl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #32
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280, %bb.bl
  %i.rm = phi ptr [ null, %bb.bl ], [ %i.rl, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i280 ] ; 5 uses
  store ptr %i.rm, ptr %i.rd, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rd, i64 8 ; 2 uses
  store ptr %i.rm, ptr %i.rn, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 %i.rj
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  store ptr %i.ro, ptr %i.rp, align 8
  %i.rq = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.rr = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i281 = icmp eq ptr %i.rq, %i.rr
  br i1 %.not7.i.i.i.i.i.i281, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, label %.lr.ph.i.i.i.i.i.i282

.lr.ph.i.i.i.i.i.i282:                            ; preds = %bb.bn, %.lr.ph.i.i.i.i.i.i282
  %.09.i.i.i.i.i.i283 = phi ptr [ %i.rt, %.lr.ph.i.i.i.i.i.i282 ], [ %i.rm, %bb.bn ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i284 = phi ptr [ %i.rs, %.lr.ph.i.i.i.i.i.i282 ], [ %i.rq, %bb.bn ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i283, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i284, i64 16, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i284, i64 16 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i285 = icmp eq ptr %i.rs, %i.rr
  br i1 %.not.i.i.i.i.i.i285, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, label %.lr.ph.i.i.i.i.i.i282, !llvm.loop !23

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286: ; preds = %.lr.ph.i.i.i.i.i.i282, %bb.bn
  %.0.lcssa.i.i.i.i.i.i287 = phi ptr [ %i.rm, %bb.bn ], [ %i.rt, %.lr.ph.i.i.i.i.i.i282 ]
  store ptr %.0.lcssa.i.i.i.i.i.i287, ptr %i.rn, align 8
  %i.ru = load ptr, ptr %i.f, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  store ptr %i.rv, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289

bb.bo:                                            ; preds = %._crit_edge471
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.rd, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i286, %bb.bo
  %i.rw = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.rx = load ptr, ptr %i.fe, align 8
  %.not.i.i290 = icmp eq ptr %i.rx, %i.rw
  br i1 %.not.i.i290, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292, label %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291

_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289
  store ptr %i.rw, ptr %i.fe, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292: ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit289, %_ZSt8_DestroyIPN10ClipperLib8IntPointES1_EvT_S3_RSaIT0_E.exit.i.i291
  %i.ry = sext i32 %i.ln to i64
  %i.rz = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.rz, i64 %i.ry
  %i.sb = load <2 x double>, ptr %i.sa, align 8   ; 2 uses
  br i1 %i.lo, label %.lr.ph473.preheader, label %._crit_edge474

.lr.ph473.preheader:                              ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292
  %2 = zext i32 %i.ln to i64                      ; 4 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph473.prol.loopexit, label %.lr.ph473.preheader.a

.lr.ph473.preheader.a:                            ; preds = %.lr.ph473.preheader
  %indvars.iv.next524.prol = add nsw i64 %2, -1   ; 2 uses
  %3 = load ptr, ptr %i.ff, align 8               ; 2 uses
  %4 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next524.prol
  %5 = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %2
  %6 = load <2 x double>, ptr %4, align 8
  %7 = fneg <2 x double> %6
  store <2 x double> %7, ptr %5, align 8
  br label %.lr.ph473.prol.loopexit

.lr.ph473.prol.loopexit:                          ; preds = %.lr.ph473.preheader.a, %.lr.ph473.preheader
  %indvars.iv523.unr = phi i64 [ %2, %.lr.ph473.preheader ], [ %indvars.iv.next524.prol, %.lr.ph473.preheader.a ]
  %8 = icmp eq i32 %i.ln, 1
  br i1 %8, label %._crit_edge474.thread, label %.lr.ph473

bb.bp:                                            ; preds = %.lr.ph470, %bb.bp
  %.0135468 = phi i32 [ 0, %.lr.ph470 ], [ %i.sd, %bb.bp ] ; 2 uses
  %i.sc = load i32, ptr %i.rc, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0135468, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.sc)
  %i.sd = add nuw nsw i32 %.0135468, 1            ; 2 uses
  %exitcond522.not = icmp eq i32 %i.sd, %i.fy
  br i1 %exitcond522.not, label %._crit_edge471, label %bb.bp, !llvm.loop !216

._crit_edge474.thread:                            ; preds = %.lr.ph473, %.lr.ph473.prol.loopexit
  %.pre539 = load ptr, ptr %i.ff, align 8
  %i.se = fneg <2 x double> %i.sb
  store <2 x double> %i.se, ptr %.pre539, align 8
  store i32 0, ptr %i.b, align 4
  br label %.lr.ph477

._crit_edge474:                                   ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE5clearEv.exit292
  %i.sf = fneg <2 x double> %i.sb
  store <2 x double> %i.sf, ptr %i.rz, align 8
  store i32 0, ptr %i.b, align 4
  br i1 %i.rb, label %.lr.ph477, label %._crit_edge478

.lr.ph477:                                        ; preds = %._crit_edge474.thread, %._crit_edge474
  %i.sg = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  br label %bb.bu

.lr.ph473:                                        ; preds = %.lr.ph473.prol.loopexit, %.lr.ph473
  %indvars.iv523 = phi i64 [ %indvars.iv.next524.a, %.lr.ph473 ], [ %indvars.iv523.unr, %.lr.ph473.prol.loopexit ] ; 4 uses
  %indvars.iv.next524 = add nsw i64 %indvars.iv523, -1 ; 2 uses
  %9 = load ptr, ptr %i.ff, align 8               ; 2 uses
  %10 = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %indvars.iv.next524
  %11 = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %indvars.iv523
  %12 = load <2 x double>, ptr %10, align 8
  %13 = fneg <2 x double> %12
  store <2 x double> %13, ptr %11, align 8
  %indvars.iv.next524.a = add nsw i64 %indvars.iv523, -2 ; 2 uses
  %i.sh = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %indvars.iv.next524.a
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.sh, i64 %indvars.iv.next524
  %i.sk = load <2 x double>, ptr %i.si, align 8
  %i.sl = fneg <2 x double> %i.sk
  store <2 x double> %i.sl, ptr %i.sj, align 8
  %14 = icmp sgt i64 %indvars.iv523, 2
  br i1 %14, label %.lr.ph473, label %._crit_edge474.thread, !llvm.loop !217

._crit_edge478:                                   ; preds = %bb.bu, %._crit_edge474
  %i.sm = load ptr, ptr %i.f, align 8             ; 6 uses
  %i.sn = load ptr, ptr %i.dv, align 8
  %.not.i293 = icmp eq ptr %i.sm, %i.sn
  br i1 %.not.i293, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %._crit_edge478
  %i.so = load ptr, ptr %i.fe, align 8            ; 2 uses
  %i.sp = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = ptrtoint ptr %i.sp to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sm, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i294 = icmp eq ptr %i.so, %i.sp
  br i1 %.not.i.i.i.i.i294, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.st = icmp ugt i64 %i.ss, 9223372036854775792
  br i1 %i.st, label %.noexc.i.i.i303, label %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i295, !prof !49

.noexc.i.i.i303:                                  ; preds = %bb.br
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i295: ; preds = %bb.br
  %i.su = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ss) #32
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i295, %bb.bq
  %i.sv = phi ptr [ null, %bb.bq ], [ %i.su, %_ZNSt15__new_allocatorIN10ClipperLib8IntPointEE8allocateEmPKv.exit.i.i.i.i.i295 ] ; 5 uses
  store ptr %i.sv, ptr %i.sm, align 8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sm, i64 8 ; 2 uses
  store ptr %i.sv, ptr %i.sw, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.ss
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  store ptr %i.sx, ptr %i.sy, align 8
  %i.sz = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ta = load ptr, ptr %i.fe, align 8            ; 2 uses
  %.not7.i.i.i.i.i.i296 = icmp eq ptr %i.sz, %i.ta
  br i1 %.not7.i.i.i.i.i.i296, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i301, label %.lr.ph.i.i.i.i.i.i297

.lr.ph.i.i.i.i.i.i297:                            ; preds = %bb.bs, %.lr.ph.i.i.i.i.i.i297
  %.09.i.i.i.i.i.i298 = phi ptr [ %i.tc, %.lr.ph.i.i.i.i.i.i297 ], [ %i.sv, %bb.bs ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i299 = phi ptr [ %i.tb, %.lr.ph.i.i.i.i.i.i297 ], [ %i.sz, %bb.bs ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i298, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i299, i64 16, i1 false)
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i299, i64 16 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i298, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i300 = icmp eq ptr %i.tb, %i.ta
  br i1 %.not.i.i.i.i.i.i300, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i301, label %.lr.ph.i.i.i.i.i.i297, !llvm.loop !23

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i301: ; preds = %.lr.ph.i.i.i.i.i.i297, %bb.bs
  %.0.lcssa.i.i.i.i.i.i302 = phi ptr [ %i.sv, %bb.bs ], [ %i.tc, %.lr.ph.i.i.i.i.i.i297 ]
  store ptr %.0.lcssa.i.i.i.i.i.i302, ptr %i.sw, align 8
  %i.td = load ptr, ptr %i.f, align 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 24
  store ptr %i.te, ptr %i.f, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit304

bb.bt:                                            ; preds = %._crit_edge478
  tail call void @_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %i.sm, ptr noundef nonnull align 8 dereferenceable(24) %i.fd)
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit304

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit304: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EEC2ERKS3_.exit.i301, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE9push_backERKS3_.exit212

bb.bu:                                            ; preds = %.lr.ph477, %bb.bu
  %.0133475 = phi i32 [ %i.ln, %.lr.ph477 ], [ %i.tg, %bb.bu ] ; 3 uses
  %i.tf = load i32, ptr %i.sg, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0133475, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.tf)
  %i.tg = add nsw i32 %.0133475, -1
  %.not676 = icmp eq i32 %.0133475, 0
  br i1 %.not676, label %._crit_edge478, label %bb.bu, !llvm.loop !218

bb.bv:                                            ; preds = %_ZNSt6vectorIN10ClipperLib11DoublePointESaIS1_EE9push_backEOS1_.exit251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 0, ptr %i.c, align 4
  %i.th = icmp sgt i32 %i.fy, 2                   ; 2 uses
  br i1 %i.th, label %.lr.ph485, label %._crit_edge486

.lr.ph485:                                        ; preds = %bb.bv
  %i.ti = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  br label %bb.bw

._crit_edge486.loopexit:                          ; preds = %bb.bw
  %.pre540 = load i32, ptr %i.lq, align 4
  br label %._crit_edge486

._crit_edge486:                                   ; preds = %._crit_edge486.loopexit, %bb.bv
  %i.tj = phi i32 [ %.pre540, %._crit_edge486.loopexit ], [ %i.qd, %bb.bv ]
  %i.tk = icmp eq i32 %i.tj, 2
  br i1 %i.tk, label %bb.bx, label %bb.cg

bb.bw:                                            ; preds = %.lr.ph485, %bb.bw
  %.0132483 = phi i32 [ 1, %.lr.ph485 ], [ %i.tm, %bb.bw ] ; 2 uses
  %i.tl = load i32, ptr %i.ti, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0132483, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.tl)
  %i.tm = add nuw nsw i32 %.0132483, 1            ; 2 uses
  %exitcond527.not = icmp eq i32 %i.tm, %i.ln
  br i1 %exitcond527.not, label %._crit_edge486.loopexit, label %bb.bw, !llvm.loop !219

bb.bx:                                            ; preds = %._crit_edge486
  %i.tn = sext i32 %i.ln to i64                   ; 4 uses
  %i.to = load ptr, ptr %i.fa, align 8
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %i.to, i64 %i.tn
  %i.tq = load ptr, ptr %i.ff, align 8
  %i.tr = getelementptr inbounds nuw [16 x i8], ptr %i.tq, i64 %i.tn
  %i.ts = load <2 x i64>, ptr %i.tp, align 8
  %i.tt = sitofp <2 x i64> %i.ts to <2 x double>
  %i.tu = load <2 x double>, ptr %i.tr, align 8
  %i.tv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.fm, <2 x double> %i.tt) ; 3 uses
  %i.tw = fcmp olt <2 x double> %i.tv, zeroinitializer ; 2 uses
  %i.tx = extractelement <2 x i1> %i.tw, i64 0
  %.0.in.v.i305 = select i1 %i.tx, double -5.000000e-01, double 5.000000e-01
  %i.ty = extractelement <2 x double> %i.tv, i64 0
  %.0.in.i306 = fadd double %i.ty, %.0.in.v.i305
  %.0.i307 = fptosi double %.0.in.i306 to i64     ; 2 uses
  %i.tz = extractelement <2 x i1> %i.tw, i64 1
  %.0.in.v.i308 = select i1 %i.tz, double -5.000000e-01, double 5.000000e-01
  %i.ua = extractelement <2 x double> %i.tv, i64 1
  %.0.in.i309 = fadd double %i.ua, %.0.in.v.i308
  %.0.i310 = fptosi double %.0.in.i309 to i64     ; 2 uses
  %i.ub = load ptr, ptr %i.fe, align 8            ; 6 uses
  %i.uc = load ptr, ptr %i.fj, align 8
  %.not.i311 = icmp eq ptr %i.ub, %i.uc
  br i1 %.not.i311, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i64 %.0.i307, ptr %i.ub, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i64 %.0.i310, ptr %.sroa.15.0..sroa_idx, align 8
  %i.ud = load ptr, ptr %i.fe, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16 ; 2 uses
  store ptr %i.ue, ptr %i.fe, align 8
  %.pre541 = load ptr, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

bb.bz:                                            ; preds = %bb.bx
  %i.uf = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.ug = ptrtoint ptr %i.ub to i64
  %i.uh = ptrtoint ptr %i.uf to i64               ; 2 uses
  %i.ui = sub i64 %i.ug, %i.uh                    ; 3 uses
  %i.uj = icmp eq i64 %i.ui, 9223372036854775792
  br i1 %i.uj, label %bb.ca, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bz
  %i.uk = ashr exact i64 %i.ui, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.uk, i64 1)
  %i.ul = add nsw i64 %.sroa.speculated.i.i.i, %i.uk ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.uk
  %i.un = tail call i64 @llvm.umin.i64(i64 %i.ul, i64 576460752303423487)
  %i.uo = select i1 %i.um, i64 576460752303423487, i64 %i.un ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.uo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.up = shl nuw nsw i64 %i.uo, 4
  %i.uq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.up) #32 ; 5 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.ui ; 2 uses
  store i64 %.0.i307, ptr %i.ur, align 8
  %.sroa.15.0..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  store i64 %.0.i310, ptr %.sroa.15.0..sroa_idx408, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.uf, %i.ub
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ut, %.lr.ph.i.i.i.i.i ], [ %i.uq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.us, %.lr.ph.i.i.i.i.i ], [ %i.uf, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !245
  %i.us = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i312 = icmp eq ptr %i.us, %i.ub
  br i1 %.not.i.i.i.i.i312, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.uq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ut, %.lr.ph.i.i.i.i.i ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.uf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.uv = load ptr, ptr %i.fj, align 8
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = sub i64 %i.uw, %i.uh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.ux) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cb, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.uq, ptr %i.fd, align 8
  store ptr %i.uu, ptr %i.fe, align 8
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.uo ; 2 uses
  store ptr %i.uy, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.by, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.uz = phi ptr [ %.pre541, %bb.by ], [ %i.uy, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.va = phi ptr [ %i.ue, %bb.by ], [ %i.uu, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.vb = load ptr, ptr %i.fa, align 8
  %i.vc = getelementptr inbounds nuw [16 x i8], ptr %i.vb, i64 %i.tn
  %i.vd = load ptr, ptr %i.ff, align 8
  %i.ve = getelementptr inbounds nuw [16 x i8], ptr %i.vd, i64 %i.tn
  %i.vf = load <2 x i64>, ptr %i.vc, align 8
  %i.vg = sitofp <2 x i64> %i.vf to <2 x double>
  %i.vh = load <2 x double>, ptr %i.ve, align 8
  %i.vi = fneg <2 x double> %i.vh
  %i.vj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %i.fm, <2 x double> %i.vg) ; 2 uses
  %i.vk = fcmp olt <2 x double> %i.vj, zeroinitializer
  %i.vl = select <2 x i1> %i.vk, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.vm = fadd <2 x double> %i.vj, %i.vl
  %i.vn = fptosi <2 x double> %i.vm to <2 x i64>  ; 2 uses
  %.not.i319 = icmp eq ptr %i.va, %i.uz
  br i1 %.not.i319, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  store <2 x i64> %i.vn, ptr %i.va, align 8
  %i.vo = load ptr, ptr %i.fe, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store ptr %i.vp, ptr %i.fe, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332

bb.cd:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit
  %i.vq = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.vr = ptrtoint ptr %i.uz to i64
  %i.vs = ptrtoint ptr %i.vq to i64               ; 2 uses
  %i.vt = sub i64 %i.vr, %i.vs                    ; 3 uses
  %i.vu = icmp eq i64 %i.vt, 9223372036854775792
  br i1 %i.vu, label %bb.ce, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320

bb.ce:                                            ; preds = %bb.cd
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320: ; preds = %bb.cd
  %i.vv = ashr exact i64 %i.vt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i321 = tail call i64 @llvm.umax.i64(i64 %i.vv, i64 1)
  %i.vw = add nsw i64 %.sroa.speculated.i.i.i321, %i.vv ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.vv
  %i.vy = tail call i64 @llvm.umin.i64(i64 %i.vw, i64 576460752303423487)
  %i.vz = select i1 %i.vx, i64 576460752303423487, i64 %i.vy ; 3 uses
  %.not.i.i.i322 = icmp ne i64 %i.vz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i322)
  %i.wa = shl nuw nsw i64 %i.vz, 4
  %i.wb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wa) #32 ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.vt
  store <2 x i64> %i.vn, ptr %i.wc, align 8
  %.not10.i.i.i.i.i323 = icmp eq ptr %i.vq, %i.uz
  br i1 %.not10.i.i.i.i.i323, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328, label %.lr.ph.i.i.i.i.i324

.lr.ph.i.i.i.i.i324:                              ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320, %.lr.ph.i.i.i.i.i324
  %.012.i.i.i.i.i325 = phi ptr [ %i.we, %.lr.ph.i.i.i.i.i324 ], [ %i.wb, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320 ] ; 2 uses
  %.0911.i.i.i.i.i326 = phi ptr [ %i.wd, %.lr.ph.i.i.i.i.i324 ], [ %i.vq, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i325, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i326, i64 16, i1 false), !alias.scope !246
  %i.wd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i326, i64 16 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i325, i64 16 ; 2 uses
  %.not.i.i.i.i.i327 = icmp eq ptr %i.wd, %i.uz
  br i1 %.not.i.i.i.i.i327, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328, label %.lr.ph.i.i.i.i.i324, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328: ; preds = %.lr.ph.i.i.i.i.i324, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320
  %.0.lcssa.i.i.i.i.i329 = phi ptr [ %i.wb, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i320 ], [ %i.we, %.lr.ph.i.i.i.i.i324 ]
  %i.wf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i329, i64 16
  %.not.i23.i.i330 = icmp eq ptr %i.vq, null
  br i1 %.not.i23.i.i330, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i331, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328
  %i.wg = load ptr, ptr %i.fj, align 8
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = sub i64 %i.wh, %i.vs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef %i.wi) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i331

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i331: ; preds = %bb.cf, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i328
  store ptr %i.wb, ptr %i.fd, align 8
  store ptr %i.wf, ptr %i.fe, align 8
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.wb, i64 %i.vz
  store ptr %i.wj, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332

bb.cg:                                            ; preds = %._crit_edge486
  %i.wk = add nsw i32 %i.fy, -2                   ; 2 uses
  store double 0.000000e+00, ptr %i.fi, align 8
  %i.wl = sext i32 %i.ln to i64
  %i.wm = load ptr, ptr %i.ff, align 8
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.wm, i64 %i.wl ; 2 uses
  %i.wo = load <2 x double>, ptr %i.wn, align 8
  %i.wp = fneg <2 x double> %i.wo
  store <2 x double> %i.wp, ptr %i.wn, align 8
  %i.wq = load i32, ptr %i.lq, align 4
  %i.wr = icmp eq i32 %i.wq, 3
  br i1 %i.wr, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @_ZN10ClipperLib13ClipperOffset8DoSquareEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ln, i32 noundef %i.wk)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332

bb.ci:                                            ; preds = %bb.cg
  tail call void @_ZN10ClipperLib13ClipperOffset7DoRoundEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %i.ln, i32 noundef %i.wk)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i331, %bb.cc, %bb.ch, %bb.ci
  br i1 %i.lo, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332.a, label %._crit_edge489

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332.a: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332
  %15 = zext i32 %i.ln to i64                     ; 4 uses
  %xtraiter715 = and i64 %15, 1
  %lcmp.mod716.not = icmp eq i64 %xtraiter715, 0
  br i1 %lcmp.mod716.not, label %.lr.ph488.prol.loopexit, label %.lr.ph488.preheader

.lr.ph488.preheader:                              ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332.a
  %indvars.iv.next529.prol = add nsw i64 %15, -1  ; 2 uses
  %16 = load ptr, ptr %i.ff, align 8              ; 2 uses
  %17 = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %indvars.iv.next529.prol
  %18 = getelementptr inbounds nuw [16 x i8], ptr %16, i64 %15
  %19 = load <2 x double>, ptr %17, align 8
  %20 = fneg <2 x double> %19
  store <2 x double> %20, ptr %18, align 8
  br label %.lr.ph488.prol.loopexit

.lr.ph488.prol.loopexit:                          ; preds = %.lr.ph488.preheader, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332.a
  %indvars.iv528.unr = phi i64 [ %15, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332.a ], [ %indvars.iv.next529.prol, %.lr.ph488.preheader ]
  %21 = icmp eq i32 %i.ln, 1
  br i1 %21, label %._crit_edge489, label %.lr.ph488

._crit_edge489:                                   ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit332
  %i.ws = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load <2 x double>, ptr %i.wt, align 8
  %i.wv = fneg <2 x double> %i.wu
  store <2 x double> %i.wv, ptr %i.ws, align 8
  store i32 %i.ln, ptr %i.c, align 4
  br i1 %i.th, label %.lr.ph492, label %._crit_edge493

.lr.ph492:                                        ; preds = %._crit_edge489
  %i.ww = add nsw i32 %i.fy, -2
  %i.wx = getelementptr inbounds nuw i8, ptr %i.fp, i64 72
  br label %bb.cj

.lr.ph488:                                        ; preds = %.lr.ph488.prol.loopexit, %.lr.ph488
  %indvars.iv528 = phi i64 [ %indvars.iv.next529.a, %.lr.ph488 ], [ %indvars.iv528.unr, %.lr.ph488.prol.loopexit ] ; 4 uses
  %indvars.iv.next529 = add nsw i64 %indvars.iv528, -1 ; 2 uses
  %22 = load ptr, ptr %i.ff, align 8              ; 2 uses
  %23 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %indvars.iv.next529
  %24 = getelementptr inbounds nuw [16 x i8], ptr %22, i64 %indvars.iv528
  %25 = load <2 x double>, ptr %23, align 8
  %26 = fneg <2 x double> %25
  store <2 x double> %26, ptr %24, align 8
  %indvars.iv.next529.a = add nsw i64 %indvars.iv528, -2 ; 2 uses
  %i.wy = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.wz = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %indvars.iv.next529.a
  %i.xa = getelementptr inbounds nuw [16 x i8], ptr %i.wy, i64 %indvars.iv.next529
  %i.xb = load <2 x double>, ptr %i.wz, align 8
  %i.xc = fneg <2 x double> %i.xb
  store <2 x double> %i.xc, ptr %i.xa, align 8
  %27 = icmp sgt i64 %indvars.iv528, 2
  br i1 %27, label %.lr.ph488, label %._crit_edge489, !llvm.loop !226

._crit_edge493:                                   ; preds = %bb.cj, %._crit_edge489
  %i.xd = load i32, ptr %i.lq, align 4
  %i.xe = icmp eq i32 %i.xd, 2
  br i1 %i.xe, label %bb.ck, label %bb.ct

bb.cj:                                            ; preds = %.lr.ph492, %bb.cj
  %.0490 = phi i32 [ %i.ww, %.lr.ph492 ], [ %i.xg, %bb.cj ] ; 3 uses
  %i.xf = load i32, ptr %i.wx, align 8
  call void @_ZN10ClipperLib13ClipperOffset11OffsetPointEiRiNS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef %.0490, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.xf)
  %i.xg = add nsw i32 %.0490, -1
  %i.xh = icmp samesign ugt i32 %.0490, 1
  br i1 %i.xh, label %bb.cj, label %._crit_edge493, !llvm.loop !227

bb.ck:                                            ; preds = %._crit_edge493
  %i.xi = load ptr, ptr %i.fa, align 8
  %i.xj = load ptr, ptr %i.ff, align 8
  %i.xk = load <2 x i64>, ptr %i.xi, align 8
  %i.xl = sitofp <2 x i64> %i.xk to <2 x double>
  %i.xm = load <2 x double>, ptr %i.xj, align 8
  %i.xn = fneg <2 x double> %i.xm
  %i.xo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.xn, <2 x double> %i.fm, <2 x double> %i.xl) ; 2 uses
  %i.xp = fcmp olt <2 x double> %i.xo, zeroinitializer
  %i.xq = select <2 x i1> %i.xp, <2 x double> splat (double -5.000000e-01), <2 x double> splat (double 5.000000e-01)
  %i.xr = fadd <2 x double> %i.xo, %i.xq
  %i.xs = fptosi <2 x double> %i.xr to <2 x i64>  ; 2 uses
  %i.xt = load ptr, ptr %i.fe, align 8            ; 5 uses
  %i.xu = load ptr, ptr %i.fj, align 8
  %.not.i339 = icmp eq ptr %i.xt, %i.xu
  br i1 %.not.i339, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  store <2 x i64> %i.xs, ptr %i.xt, align 8
  %i.xv = load ptr, ptr %i.fe, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16 ; 2 uses
  store ptr %i.xw, ptr %i.fe, align 8
  %.pre542 = load ptr, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit352

bb.cm:                                            ; preds = %bb.ck
  %i.xx = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.xy = ptrtoint ptr %i.xt to i64
  %i.xz = ptrtoint ptr %i.xx to i64               ; 2 uses
  %i.ya = sub i64 %i.xy, %i.xz                    ; 3 uses
  %i.yb = icmp eq i64 %i.ya, 9223372036854775792
  br i1 %i.yb, label %bb.cn, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340

bb.cn:                                            ; preds = %bb.cm
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340: ; preds = %bb.cm
  %i.yc = ashr exact i64 %i.ya, 4                 ; 3 uses
  %.sroa.speculated.i.i.i341 = tail call i64 @llvm.umax.i64(i64 %i.yc, i64 1)
  %i.yd = add nsw i64 %.sroa.speculated.i.i.i341, %i.yc ; 2 uses
  %i.ye = icmp ult i64 %i.yd, %i.yc
  %i.yf = tail call i64 @llvm.umin.i64(i64 %i.yd, i64 576460752303423487)
  %i.yg = select i1 %i.ye, i64 576460752303423487, i64 %i.yf ; 3 uses
  %.not.i.i.i342 = icmp ne i64 %i.yg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i342)
  %i.yh = shl nuw nsw i64 %i.yg, 4
  %i.yi = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yh) #32 ; 5 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.ya
  store <2 x i64> %i.xs, ptr %i.yj, align 8
  %.not10.i.i.i.i.i343 = icmp eq ptr %i.xx, %i.xt
  br i1 %.not10.i.i.i.i.i343, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348, label %.lr.ph.i.i.i.i.i344

.lr.ph.i.i.i.i.i344:                              ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340, %.lr.ph.i.i.i.i.i344
  %.012.i.i.i.i.i345 = phi ptr [ %i.yl, %.lr.ph.i.i.i.i.i344 ], [ %i.yi, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340 ] ; 2 uses
  %.0911.i.i.i.i.i346 = phi ptr [ %i.yk, %.lr.ph.i.i.i.i.i344 ], [ %i.xx, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i345, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i346, i64 16, i1 false), !alias.scope !247
  %i.yk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i346, i64 16 ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i345, i64 16 ; 2 uses
  %.not.i.i.i.i.i347 = icmp eq ptr %i.yk, %i.xt
  br i1 %.not.i.i.i.i.i347, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348, label %.lr.ph.i.i.i.i.i344, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348: ; preds = %.lr.ph.i.i.i.i.i344, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340
  %.0.lcssa.i.i.i.i.i349 = phi ptr [ %i.yi, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i340 ], [ %i.yl, %.lr.ph.i.i.i.i.i344 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i349, i64 16 ; 2 uses
  %.not.i23.i.i350 = icmp eq ptr %i.xx, null
  br i1 %.not.i23.i.i350, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348
  %i.yn = load ptr, ptr %i.fj, align 8
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = sub i64 %i.yo, %i.xz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.xx, i64 noundef %i.yp) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351: ; preds = %bb.co, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i348
  store ptr %i.yi, ptr %i.fd, align 8
  store ptr %i.ym, ptr %i.fe, align 8
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.yi, i64 %i.yg ; 2 uses
  store ptr %i.yq, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit352

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit352: ; preds = %bb.cl, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351
  %i.yr = phi ptr [ %.pre542, %bb.cl ], [ %i.yq, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351 ] ; 4 uses
  %i.ys = phi ptr [ %i.xw, %bb.cl ], [ %i.ym, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i351 ] ; 3 uses
  %i.yt = load ptr, ptr %i.fa, align 8
  %i.yu = load ptr, ptr %i.ff, align 8
  %i.yv = load <2 x i64>, ptr %i.yt, align 8
  %i.yw = sitofp <2 x i64> %i.yv to <2 x double>
  %i.yx = load <2 x double>, ptr %i.yu, align 8
  %i.yy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yx, <2 x double> %i.fm, <2 x double> %i.yw) ; 3 uses
  %i.yz = fcmp olt <2 x double> %i.yy, zeroinitializer ; 2 uses
  %i.za = extractelement <2 x i1> %i.yz, i64 0
  %.0.in.v.i353 = select i1 %i.za, double -5.000000e-01, double 5.000000e-01
  %i.zb = extractelement <2 x double> %i.yy, i64 0
  %.0.in.i354 = fadd double %i.zb, %.0.in.v.i353
  %.0.i355 = fptosi double %.0.in.i354 to i64     ; 2 uses
  %i.zc = extractelement <2 x i1> %i.yz, i64 1
  %.0.in.v.i356 = select i1 %i.zc, double -5.000000e-01, double 5.000000e-01
  %i.zd = extractelement <2 x double> %i.yy, i64 1
  %.0.in.i357 = fadd double %i.zd, %.0.in.v.i356
  %.0.i358 = fptosi double %.0.in.i357 to i64     ; 2 uses
  %.not.i359 = icmp eq ptr %i.ys, %i.yr
  br i1 %.not.i359, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit352
  store i64 %.0.i355, ptr %i.ys, align 8
  %.sroa.15.0..sroa_idx418 = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i64 %.0.i358, ptr %.sroa.15.0..sroa_idx418, align 8
  %i.ze = load ptr, ptr %i.fe, align 8
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 16
  store ptr %i.zf, ptr %i.fe, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit372

bb.cq:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit352
  %i.zg = load ptr, ptr %i.fd, align 8            ; 5 uses
  %i.zh = ptrtoint ptr %i.yr to i64
  %i.zi = ptrtoint ptr %i.zg to i64               ; 2 uses
  %i.zj = sub i64 %i.zh, %i.zi                    ; 3 uses
  %i.zk = icmp eq i64 %i.zj, 9223372036854775792
  br i1 %i.zk, label %bb.cr, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360

bb.cr:                                            ; preds = %bb.cq
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #31
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360: ; preds = %bb.cq
  %i.zl = ashr exact i64 %i.zj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i361 = tail call i64 @llvm.umax.i64(i64 %i.zl, i64 1)
  %i.zm = add nsw i64 %.sroa.speculated.i.i.i361, %i.zl ; 2 uses
  %i.zn = icmp ult i64 %i.zm, %i.zl
  %i.zo = tail call i64 @llvm.umin.i64(i64 %i.zm, i64 576460752303423487)
  %i.zp = select i1 %i.zn, i64 576460752303423487, i64 %i.zo ; 3 uses
  %.not.i.i.i362 = icmp ne i64 %i.zp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i362)
  %i.zq = shl nuw nsw i64 %i.zp, 4
  %i.zr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zq) #32 ; 5 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 %i.zj ; 2 uses
  store i64 %.0.i355, ptr %i.zs, align 8
  %.sroa.15.0..sroa_idx420 = getelementptr inbounds nuw i8, ptr %i.zs, i64 8
  store i64 %.0.i358, ptr %.sroa.15.0..sroa_idx420, align 8
  %.not10.i.i.i.i.i363 = icmp eq ptr %i.zg, %i.yr
  br i1 %.not10.i.i.i.i.i363, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368, label %.lr.ph.i.i.i.i.i364

.lr.ph.i.i.i.i.i364:                              ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360, %.lr.ph.i.i.i.i.i364
  %.012.i.i.i.i.i365 = phi ptr [ %i.zu, %.lr.ph.i.i.i.i.i364 ], [ %i.zr, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360 ] ; 2 uses
  %.0911.i.i.i.i.i366 = phi ptr [ %i.zt, %.lr.ph.i.i.i.i.i364 ], [ %i.zg, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i365, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i366, i64 16, i1 false), !alias.scope !248
  %i.zt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i366, i64 16 ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i365, i64 16 ; 2 uses
  %.not.i.i.i.i.i367 = icmp eq ptr %i.zt, %i.yr
  br i1 %.not.i.i.i.i.i367, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368, label %.lr.ph.i.i.i.i.i364, !llvm.loop !22

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368: ; preds = %.lr.ph.i.i.i.i.i364, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360
  %.0.lcssa.i.i.i.i.i369 = phi ptr [ %i.zr, %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i360 ], [ %i.zu, %.lr.ph.i.i.i.i.i364 ]
  %i.zv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i369, i64 16
  %.not.i23.i.i370 = icmp eq ptr %i.zg, null
  br i1 %.not.i23.i.i370, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368
  %i.zw = load ptr, ptr %i.fj, align 8
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = sub i64 %i.zx, %i.zi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.zg, i64 noundef %i.zy) #33
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i371: ; preds = %bb.cs, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i368
  store ptr %i.zr, ptr %i.fd, align 8
  store ptr %i.zv, ptr %i.fe, align 8
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %i.zr, i64 %i.zp
  store ptr %i.zz, ptr %i.fj, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit372

bb.ct:                                            ; preds = %._crit_edge493
  store double 0.000000e+00, ptr %i.fi, align 8
  %i.aaa = load i32, ptr %i.lq, align 4
  %i.aab = icmp eq i32 %i.aaa, 3
  br i1 %i.aab, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  tail call void @_ZN10ClipperLib13ClipperOffset8DoSquareEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 0, i32 noundef 1)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit372

bb.cv:                                            ; preds = %bb.ct
  tail call void @_ZN10ClipperLib13ClipperOffset7DoRoundEii(ptr noundef nonnull align 8 dereferenceable(256) %0, i32 noundef 0, i32 noundef 1)
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE9push_backERKS1_.exit372
end_hunk_2
