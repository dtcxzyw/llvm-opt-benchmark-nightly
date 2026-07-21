inline.NumInlined: 329
inline.NumDeleted: 191
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj:bb.a

.lr.ph566:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  %i.my = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  br label %bb.aw

.preheader:                                       ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.mz = phi ptr [ %i.ms, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.pt, %bb.bg ] ; 2 uses
  %.sroa.0387.1.lcssa = phi ptr [ %.sroa.0387.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.0387.3, %bb.bg ] ; 6 uses
  %.sroa.19.1.lcssa = phi ptr [ %.sroa.19.6, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.19.2, %bb.bg ] ; 4 uses
  %.sroa.33.1.lcssa = phi ptr [ %.sroa.33.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.sroa.33.3, %bb.bg ] ; 2 uses
  %i.na = ptrtoint ptr %.sroa.19.1.lcssa to i64
  %i.nb = ptrtoint ptr %.sroa.0387.1.lcssa to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 2                 ; 2 uses
  %.not601 = icmp eq ptr %.sroa.19.1.lcssa, %.sroa.0387.1.lcssa ; 2 uses
  br i1 %.not601, label %._crit_edge577, label %.lr.ph576

.loopexit523:                                     ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %.sroa.0387.2.ph = phi ptr [ %.sroa.0387.0587, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.0387.0587, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ %.sroa.0387.6, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.33.2.ph = phi ptr [ %.sroa.33.0589, %_ZNSt6vectorIjSaIjEE6resizeEm.exit ], [ %.sroa.33.0589, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i ], [ %.sroa.19.5, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit527 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp524:                            ; preds = %bb.an, %bb.at
  %.sroa.0387.2.ph525 = phi ptr [ %.sroa.0387.6, %bb.at ], [ %.sroa.0387.0587, %bb.an ]
  %.sroa.33.2.ph526 = phi ptr [ %.sroa.19.5, %bb.at ], [ %.sroa.33.0589, %bb.an ]
  %lpad.loopexit.split-lp528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.aw:                                            ; preds = %.lr.ph566, %bb.bg
  %i.ne = phi ptr [ %i.ms, %.lr.ph566 ], [ %i.pt, %bb.bg ] ; 5 uses
  %i.nf = phi ptr [ %i.mr, %.lr.ph566 ], [ %i.pu, %bb.bg ] ; 4 uses
  %i.ng = phi i64 [ 0, %.lr.ph566 ], [ %i.pw, %bb.bg ]
  %.0218565 = phi i32 [ 0, %.lr.ph566 ], [ %i.pv, %bb.bg ]
  %.sroa.33.1564 = phi ptr [ %.sroa.33.7, %.lr.ph566 ], [ %.sroa.33.3, %bb.bg ] ; 9 uses
  %.sroa.19.1563 = phi ptr [ %.sroa.19.6, %.lr.ph566 ], [ %.sroa.19.2, %bb.bg ] ; 7 uses
  %.sroa.0387.1562 = phi ptr [ %.sroa.0387.7, %.lr.ph566 ], [ %.sroa.0387.3, %bb.bg ] ; 11 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4            ; 4 uses
  %i.nj = zext i32 %i.ni to i64                   ; 4 uses
  %i.nk = lshr i32 %i.ni, 6
  %.zext515 = zext nneg i32 %i.nk to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0487.0, i64 %.zext515 ; 3 uses
  %i.nm = and i64 %i.nj, 63
  %i.nn = shl nuw i64 1, %i.nm                    ; 2 uses
  %i.no = load i64, ptr %i.nl, align 8
  %i.np = and i64 %i.nn, %i.no
  %.not520 = icmp eq i64 %i.np, 0
  br i1 %.not520, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.nq = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.nj ; 3 uses
  %i.nr = load float, ptr %i.nq, align 4
  %i.ns = load float, ptr %i.ld, align 4
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 4
  %i.nu = load float, ptr %i.nt, align 4
  %i.nv = load float, ptr %i.mt, align 4
  %i.nw = fmul float %i.nu, %i.nv
  %i.nx = call float @llvm.fmuladd.f32(float %i.nr, float %i.ns, float %i.nw)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %i.nz = load float, ptr %i.ny, align 4
  %i.oa = load float, ptr %i.mu, align 4
  %i.ob = call noundef float @llvm.fmuladd.f32(float %i.nz, float %i.oa, float %i.nx)
  %i.oc = fcmp olt float %i.ob, f0x3F7FF972
  br i1 %i.oc, label %bb.bg, label %bb.ay

.loopexit522:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp:                               ; preds = %bb.bd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ay:                                            ; preds = %bb.ax
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.nj ; 3 uses
  %i.oe = load float, ptr %i.od, align 4
  %i.of = load float, ptr %i.lf, align 4
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.oh = load float, ptr %i.og, align 4
  %i.oi = load float, ptr %i.mv, align 4
  %i.oj = fmul float %i.oh, %i.oi
  %i.ok = call float @llvm.fmuladd.f32(float %i.oe, float %i.of, float %i.oj)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.om = load float, ptr %i.ol, align 4
  %i.on = load float, ptr %i.mw, align 4
  %i.oo = call noundef float @llvm.fmuladd.f32(float %i.om, float %i.on, float %i.ok)
  %i.op = fcmp olt float %i.oo, %i.ju
  br i1 %i.op, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.oq = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.nj ; 3 uses
  %i.or = load float, ptr %i.oq, align 4
  %i.os = load float, ptr %i.lh, align 4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.ou = load float, ptr %i.ot, align 4
  %i.ov = load float, ptr %i.mx, align 4
  %i.ow = fmul float %i.ou, %i.ov
  %i.ox = call float @llvm.fmuladd.f32(float %i.or, float %i.os, float %i.ow)
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.oz = load float, ptr %i.oy, align 4
  %i.pa = load float, ptr %i.my, align 4
  %i.pb = call noundef float @llvm.fmuladd.f32(float %i.oz, float %i.pa, float %i.ox)
  %i.pc = fcmp olt float %i.pb, %i.ju
  br i1 %i.pc, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.not.i336 = icmp eq ptr %.sroa.19.1563, %.sroa.33.1564
  br i1 %.not.i336, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 %i.ni, ptr %.sroa.19.1563, align 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345

bb.bc:                                            ; preds = %bb.ba
  %i.pd = ptrtoint ptr %.sroa.33.1564 to i64
  %i.pe = ptrtoint ptr %.sroa.0387.1562 to i64
  %i.pf = sub i64 %i.pd, %i.pe                    ; 6 uses
  %i.pg = icmp eq i64 %i.pf, 9223372036854775804
  br i1 %i.pg, label %bb.bd, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #22
          to label %.noexc343 unwind label %.loopexit.split-lp

.noexc343:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337: ; preds = %bb.bc
  %i.ph = ashr exact i64 %i.pf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.ph, i64 1)
  %i.pi = add nsw i64 %.sroa.speculated.i.i.i338, %i.ph ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %i.ph
  %i.pk = call i64 @llvm.umin.i64(i64 %i.pi, i64 2305843009213693951)
  %i.pl = select i1 %i.pj, i64 2305843009213693951, i64 %i.pk ; 3 uses
  %.not.i.i.i339 = icmp ne i64 %i.pl, 0
  call void @llvm.assume(i1 %.not.i.i.i339)
  %i.pm = shl nuw nsw i64 %i.pl, 2
  %i.pn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pm) #20
          to label %.noexc344 unwind label %.loopexit522 ; 4 uses

.noexc344:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i337
  %i.po = getelementptr inbounds i8, ptr %i.pn, i64 %i.pf ; 2 uses
  store i32 %i.ni, ptr %i.po, align 4
  %i.pp = icmp sgt i64 %i.pf, 0
  br i1 %i.pp, label %bb.be, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340

bb.be:                                            ; preds = %.noexc344
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pn, ptr align 4 %.sroa.0387.1562, i64 %i.pf, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340: ; preds = %bb.be, %.noexc344
  %.not.i17.i.i341 = icmp eq ptr %.sroa.0387.1562, null
  br i1 %.not.i17.i.i341, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.1562, i64 noundef %i.pf) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342: ; preds = %bb.bf, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i340
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pl
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345

_ZNSt6vectorIjSaIjEE9push_backERKj.exit345:       ; preds = %bb.bb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342
  %.sroa.0387.8 = phi ptr [ %i.pn, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.0387.1562, %bb.bb ]
  %.pn521 = phi ptr [ %i.po, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.19.1563, %bb.bb ]
  %.sroa.33.8 = phi ptr [ %i.pq, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i342 ], [ %.sroa.33.1564, %bb.bb ]
  %.sroa.19.7 = getelementptr inbounds nuw i8, ptr %.pn521, i64 4
  %i.pr = load i64, ptr %i.nl, align 8
  %i.ps = or i64 %i.pr, %i.nn
  store i64 %i.ps, ptr %i.nl, align 8
  %.pre = load ptr, ptr %i.jw, align 8
  %.pre645 = load ptr, ptr %4, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345
  %i.pt = phi ptr [ %i.ne, %bb.aw ], [ %i.ne, %bb.ax ], [ %i.ne, %bb.ay ], [ %i.ne, %bb.az ], [ %.pre645, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 3 uses
  %i.pu = phi ptr [ %i.nf, %bb.aw ], [ %i.nf, %bb.ax ], [ %i.nf, %bb.ay ], [ %i.nf, %bb.az ], [ %.pre, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.0387.3 = phi ptr [ %.sroa.0387.1562, %bb.aw ], [ %.sroa.0387.1562, %bb.ax ], [ %.sroa.0387.1562, %bb.ay ], [ %.sroa.0387.1562, %bb.az ], [ %.sroa.0387.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.1563, %bb.aw ], [ %.sroa.19.1563, %bb.ax ], [ %.sroa.19.1563, %bb.ay ], [ %.sroa.19.1563, %bb.az ], [ %.sroa.19.7, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %.sroa.33.3 = phi ptr [ %.sroa.33.1564, %bb.aw ], [ %.sroa.33.1564, %bb.ax ], [ %.sroa.33.1564, %bb.ay ], [ %.sroa.33.1564, %bb.az ], [ %.sroa.33.8, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit345 ] ; 2 uses
  %i.pv = add i32 %.0218565, 1                    ; 2 uses
  %i.pw = zext i32 %i.pv to i64                   ; 2 uses
  %i.px = ptrtoint ptr %i.pu to i64
  %i.py = ptrtoint ptr %i.pt to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = ashr exact i64 %i.pz, 2
  %i.qb = icmp ugt i64 %i.qa, %i.pw
  br i1 %i.qb, label %bb.aw, label %.preheader, !llvm.loop !8

._crit_edge577:                                   ; preds = %.lr.ph576, %.preheader
  %5 = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.qt, %.lr.ph576 ] ; 5 uses
  %6 = phi <4 x float> [ zeroinitializer, %.preheader ], [ %17, %.lr.ph576 ] ; 6 uses
  %foldExtExtBinop745 = fmul <4 x float> %6, %6
  %7 = extractelement <4 x float> %foldExtExtBinop745, i64 1
  %8 = extractelement <4 x float> %6, i64 0       ; 2 uses
  %9 = call float @llvm.fmuladd.f32(float %8, float %8, float %7)
  %i.qc = extractelement <4 x float> %6, i64 2    ; 4 uses
  %i.qd = call noundef float @llvm.fmuladd.f32(float %i.qc, float %i.qc, float %9) ; 2 uses
  %10 = fcmp oeq float %i.qd, 0.000000e+00
  %11 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  br i1 %10, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i350

_ZN10aiVector3tIfEdVEf.exit.i350:                 ; preds = %._crit_edge577
  %sqrt.i.i351 = call noundef float @llvm.sqrt.f32(float %i.qd)
  %i.qe = fdiv float 1.000000e+00, %sqrt.i.i351   ; 2 uses
  %i.qf = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qh = fmul <2 x float> %11, %i.qg
  %i.qi = fmul float %i.qc, %i.qe
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

.lr.ph576:                                        ; preds = %.preheader, %.lr.ph576
  %indvars.iv634 = phi i64 [ %indvars.iv.next635, %.lr.ph576 ], [ 0, %.preheader ] ; 2 uses
  %i.qj = phi <2 x float> [ %i.qt, %.lr.ph576 ], [ zeroinitializer, %.preheader ]
  %12 = phi <4 x float> [ %17, %.lr.ph576 ], [ zeroinitializer, %.preheader ]
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv634
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = zext i32 %i.ql to i64                   ; 2 uses
  %i.qn = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.qm ; 2 uses
  %i.qo = load <2 x float>, ptr %i.qn, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qq = load float, ptr %i.qp, align 4
  %i.qr = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.qm ; 2 uses
  %i.qs = load <2 x float>, ptr %i.qr, align 4
  %i.qt = fadd <2 x float> %i.qj, %i.qs           ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qv = load float, ptr %i.qu, align 4
  %13 = insertelement <4 x float> poison, float %i.qq, i64 2
  %14 = insertelement <4 x float> %13, float %i.qv, i64 3
  %15 = shufflevector <2 x float> %i.qo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %16 = shufflevector <4 x float> %15, <4 x float> %14, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %17 = fadd <4 x float> %12, %16                 ; 2 uses
  %indvars.iv.next635 = add i64 %indvars.iv634, 1 ; 2 uses
  %i.qw = and i64 %indvars.iv.next635, 4294967295
  %i.qx = icmp ugt i64 %i.nd, %i.qw
  br i1 %i.qx, label %.lr.ph576, label %._crit_edge577, !llvm.loop !9

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %_ZN10aiVector3tIfEdVEf.exit.i350, %._crit_edge577
  %.sroa.14370.1 = phi float [ %i.qc, %._crit_edge577 ], [ %i.qi, %_ZN10aiVector3tIfEdVEf.exit.i350 ]
  %i.qy = phi <2 x float> [ %11, %._crit_edge577 ], [ %i.qh, %_ZN10aiVector3tIfEdVEf.exit.i350 ]
  %foldExtExtBinop747 = fmul <2 x float> %5, %5
  %i.qz = extractelement <2 x float> %foldExtExtBinop747, i64 1
  %i.ra = extractelement <2 x float> %5, i64 0    ; 2 uses
  %i.rb = call float @llvm.fmuladd.f32(float %i.ra, float %i.ra, float %i.qz)
  %18 = extractelement <4 x float> %6, i64 3      ; 4 uses
  %i.rc = call noundef float @llvm.fmuladd.f32(float %18, float %18, float %i.rb) ; 2 uses
  %i.rd = fcmp oeq float %i.rc, 0.000000e+00
  br i1 %i.rd, label %_ZN10aiVector3tIfE9NormalizeEv.exit354, label %_ZN10aiVector3tIfEdVEf.exit.i352

_ZN10aiVector3tIfEdVEf.exit.i352:                 ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit
  %sqrt.i.i353 = call noundef float @llvm.sqrt.f32(float %i.rc)
  %i.re = fdiv float 1.000000e+00, %sqrt.i.i353   ; 2 uses
  %i.rf = insertelement <2 x float> poison, float %i.re, i64 0
  %i.rg = shufflevector <2 x float> %i.rf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rh = fmul <2 x float> %5, %i.rg
  %i.ri = fmul float %18, %i.re
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit354

_ZN10aiVector3tIfE9NormalizeEv.exit354:           ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i352
  %.sroa.14.1 = phi float [ %18, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.ri, %_ZN10aiVector3tIfEdVEf.exit.i352 ]
  %i.rj = phi <2 x float> [ %5, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.rh, %_ZN10aiVector3tIfEdVEf.exit.i352 ]
  br i1 %.not601, label %.loopexit, label %.lr.ph586

.lr.ph586:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit354, %.lr.ph586
  %indvars.iv637 = phi i64 [ %indvars.iv.next638, %.lr.ph586 ], [ 0, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ] ; 2 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0387.1.lcssa, i64 %indvars.iv637 ; 2 uses
  %i.rl = load i32, ptr %i.rk, align 4
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.rm ; 2 uses
  store <2 x float> %i.qy, ptr %i.rn, align 4
  %.sroa.14370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store float %.sroa.14370.1, ptr %.sroa.14370.0..sroa_idx, align 4
  %i.ro = load i32, ptr %i.rk, align 4
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.rp ; 2 uses
  store <2 x float> %i.rj, ptr %i.rq, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %indvars.iv.next638 = add i64 %indvars.iv637, 1 ; 2 uses
  %i.rr = and i64 %indvars.iv.next638, 4294967295
  %i.rs = icmp samesign ugt i64 %i.nd, %i.rr
  br i1 %i.rs, label %.lr.ph586, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph586, %_ZN10aiVector3tIfE9NormalizeEv.exit354, %bb.al
  %i.rt = phi ptr [ %i.kt, %bb.al ], [ %i.mz, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %i.mz, %.lr.ph586 ] ; 2 uses
  %.sroa.0387.4 = phi ptr [ %.sroa.0387.0587, %bb.al ], [ %.sroa.0387.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.0387.1.lcssa, %.lr.ph586 ] ; 4 uses
  %.sroa.19.3 = phi ptr [ %.sroa.19.0588, %bb.al ], [ %.sroa.19.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.19.1.lcssa, %.lr.ph586 ]
  %.sroa.33.4 = phi ptr [ %.sroa.33.0589, %bb.al ], [ %.sroa.33.1.lcssa, %_ZN10aiVector3tIfE9NormalizeEv.exit354 ], [ %.sroa.33.1.lcssa, %.lr.ph586 ] ; 2 uses
  %indvars.iv.next642 = add nuw nsw i64 %indvars.iv641, 1 ; 2 uses
  %i.ru = load i32, ptr %i.s, align 4
  %i.rv = zext i32 %i.ru to i64
  %i.rw = icmp samesign ult i64 %indvars.iv.next642, %i.rv
  br i1 %i.rw, label %bb.al, label %._crit_edge593, !llvm.loop !11

bb.bh:                                            ; preds = %.loopexit522, %.loopexit.split-lp, %.loopexit523, %.loopexit.split-lp524
  %.sroa.0387.5 = phi ptr [ %.sroa.0387.2.ph525, %.loopexit.split-lp524 ], [ %.sroa.0387.2.ph, %.loopexit523 ], [ %.sroa.0387.1562, %.loopexit522 ], [ %.sroa.0387.1562, %.loopexit.split-lp ] ; 3 uses
  %.sroa.33.5 = phi ptr [ %.sroa.33.2.ph526, %.loopexit.split-lp524 ], [ %.sroa.33.2.ph, %.loopexit523 ], [ %.sroa.33.1564, %.loopexit522 ], [ %.sroa.33.1564, %.loopexit.split-lp ]
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp528, %.loopexit.split-lp524 ], [ %lpad.loopexit527, %.loopexit523 ], [ %lpad.loopexit, %.loopexit522 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i355 = icmp eq ptr %.sroa.0387.5, null
  br i1 %.not.i.i.i355, label %_ZNSt6vectorIjSaIjEED2Ev.exit356, label %.thread503

.thread503:                                       ; preds = %bb.bh
  %i.rx = ptrtoint ptr %.sroa.33.5 to i64
  %i.ry = ptrtoint ptr %.sroa.0387.5 to i64
  %i.rz = sub i64 %i.rx, %i.ry
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.5, i64 noundef %i.rz) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit356

_ZNSt6vectorIjSaIjEED2Ev.exit356:                 ; preds = %bb.bh, %.thread503
  %i.sa = load ptr, ptr %4, align 8               ; 3 uses
  %.not.i.i.i357 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i.i357, label %_ZNSt6vectorIjSaIjEED2Ev.exit358, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit356
  %i.sb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.sc = load ptr, ptr %i.sb, align 8
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = ptrtoint ptr %i.sa to i64
  %i.sf = sub i64 %i.sd, %i.se
  call void @_ZdlPvm(ptr noundef nonnull %i.sa, i64 noundef %i.sf) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit358

_ZNSt6vectorIjSaIjEED2Ev.exit358:                 ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit356, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit358, %bb.af, %bb.ac
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit358 ], [ %i.jr, %bb.af ], [ %i.ji, %bb.ac ] ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8            ; 3 uses
  %.not.i.i.i.i359 = icmp eq ptr %i.sh, null
  br i1 %.not.i.i.i.i359, label %_ZN6Assimp11SpatialSortD2Ev.exit360, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.si = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = ptrtoint ptr %i.sj to i64
  %i.sl = ptrtoint ptr %i.sh to i64
  %i.sm = sub i64 %i.sk, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %i.sh, i64 noundef %i.sm) #21
  br label %_ZN6Assimp11SpatialSortD2Ev.exit360

_ZN6Assimp11SpatialSortD2Ev.exit360:              ; preds = %bb.bk, %bb.bj, %bb.ab
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jh, %bb.ab ], [ %.pn.pn.pn.pn, %bb.bj ], [ %.pn.pn.pn.pn, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN6Assimp11SpatialSortD2Ev.exit360, %bb.l
  %.pn273.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.l ], [ %.pn.pn.pn.pn.pn, %_ZN6Assimp11SpatialSortD2Ev.exit360 ]
  %.not.i.i361 = icmp eq ptr %.sroa.0487.0, null
  br i1 %.not.i.i361, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit362, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.sn = ptrtoint ptr %.sroa.17495.0 to i64
  %i.so = ptrtoint ptr %.sroa.0487.0 to i64
  %i.sp = sub i64 %i.sn, %i.so                    ; 2 uses
  %i.sq = ashr exact i64 %i.sp, 3
  %i.sr = sub nsw i64 0, %i.sq
  %i.ss = getelementptr inbounds [8 x i8], ptr %.sroa.17495.0, i64 %i.sr
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sp) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit362

_ZNSt13_Bvector_baseISaIbEED2Ev.exit362:          ; preds = %bb.bm, %bb.bl
  resume { ptr, i32 } %.pn273.pn.pn

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ak, %_ZN6Assimp11SpatialSortD2Ev.exit, %bb.a, %bb.h, %bb.e, %bb.c
  %.0219 = phi i1 [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.a ], [ true, %_ZN6Assimp11SpatialSortD2Ev.exit ], [ true, %bb.ak ]
  ret i1 %.0219
}

declare void @_ZN6Assimp6Logger4infoEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA52_KcRjEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(52) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %1) #19
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(52) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #19
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS6_S7_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #19
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA52_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
end_hunk_0
