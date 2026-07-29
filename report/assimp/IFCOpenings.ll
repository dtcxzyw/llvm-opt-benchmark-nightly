inline.NumInlined: 3958
inline.NumDeleted: 1464
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp3IFC19CleanupOuterContourERKSt6vectorI10aiVector2tIdESaIS3_EERNS0_8TempMeshE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150, %bb.bh
  %.pn57.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.bh ], [ %.pn57.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150 ], [ %.pn57.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @__cxa_end_catch() #27
  br label %bb.bo

bb.bl:                                            ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %.sroa.20.8 = phi ptr [ %.sroa.20.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.fb, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ]
  %.sroa.0188.8 = phi ptr [ %.sroa.0188.7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ez, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ] ; 3 uses
  %.sroa.20209.10 = phi ptr [ %.sroa.20209.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ey, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ]
  %.sroa.0200.10 = phi ptr [ %.sroa.0200.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ], [ %i.ew, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit92 ] ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %.sroa.0188.8, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lp = ptrtoint ptr %.sroa.20.8 to i64
  %i.lq = ptrtoint ptr %.sroa.0188.8 to i64
  %i.lr = sub i64 %i.lp, %i.lq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.8, i64 noundef %i.lr) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.bl, %bb.bm
  %.not.i.i.i154 = icmp eq ptr %.sroa.0200.10, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.ls = ptrtoint ptr %.sroa.20209.10 to i64
  %i.lt = ptrtoint ptr %.sroa.0200.10 to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.10, i64 noundef %i.lu) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.bn
  ret void

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137
  %.merged = phi { ptr, i32 } [ %.pn57.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152 ], [ %.pn54.pn, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EED2Ev.exit137 ] ; 2 uses
  %.not.i.i.i155 = icmp eq ptr %.sroa.0188.7, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIjSaIjEED2Ev.exit156, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lv = ptrtoint ptr %.sroa.20.7 to i64
  %i.lw = ptrtoint ptr %.sroa.0188.7 to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.7, i64 noundef %i.lx) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit156

_ZNSt6vectorIjSaIjEED2Ev.exit156:                 ; preds = %.thread, %bb.bo, %bb.bp
  %.merged222 = phi { ptr, i32 } [ %i.ai, %.thread ], [ %.merged, %bb.bo ], [ %.merged, %bb.bp ]
  %.sroa.0200.11221 = phi ptr [ %.sroa.0200.0, %.thread ], [ %.sroa.0200.9, %bb.bo ], [ %.sroa.0200.9, %bb.bp ] ; 3 uses
  %.sroa.20209.11220 = phi ptr [ %.sroa.20209.0, %.thread ], [ %.sroa.20209.9, %bb.bo ], [ %.sroa.20209.9, %bb.bp ]
  %.not.i.i.i157 = icmp eq ptr %.sroa.0200.11221, null
  br i1 %.not.i.i.i157, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156
  %i.ly = ptrtoint ptr %.sroa.20209.11220 to i64
  %i.lz = ptrtoint ptr %.sroa.0200.11221 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0200.11221, i64 noundef %i.ma) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit158: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit156, %bb.bq
  resume { ptr, i32 } %.merged222
}

declare void @_ZN10ClipperLib11ClipperBase5ClearEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load double, ptr %i.a, align 8           ; 3 uses
  %i.c = load double, ptr %1, align 8             ; 3 uses
  %i.d = fsub double %i.b, %i.c
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp olt double %i.e, f0x3E80000000000000
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load double, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8
  %i.k = fcmp ugt double %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp ult double %i.m, %i.o
  br i1 %i.p, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.q = load double, ptr %0, align 8             ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  %i.t = fsub double %i.q, %i.s
  %i.u = tail call double @llvm.fabs.f64(double %i.t)
  %i.v = fcmp olt double %i.u, f0x3E80000000000000
  br i1 %i.v, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load double, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre32 = load double, ptr %.phi.trans.insert31, align 8
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load double, ptr %i.w, align 8           ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8           ; 3 uses
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load double, ptr %i.ad, align 8
  %i.af = fcmp ult double %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %i.ag = phi double [ %.pre32, %._crit_edge ], [ %i.x, %bb.f ], [ %i.x, %bb.e ]
  %i.ah = phi double [ %.pre, %._crit_edge ], [ %i.z, %bb.f ], [ %i.z, %bb.e ]
  %i.ai = fsub double %i.ah, %i.ag
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp uge double %i.aj, f0x3E80000000000000
  %i.al = fcmp ugt double %i.q, %i.s
  %or.cond = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = fcmp ult double %i.b, %i.c
  %or.cond28 = select i1 %or.cond, i1 true, i1 %i.am
  br i1 %or.cond28, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fsub double %i.ao, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp olt double %i.as, f0x3E80000000000000
  %i.au = fcmp ole double %i.c, %i.b
  %or.cond29.not = select i1 %i.at, i1 %i.au, i1 false
  %i.av = fcmp oge double %i.s, %i.q
  %spec.select = select i1 %or.cond29.not, i1 %i.av, i1 false
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c
  %i.aw = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.c ], [ %spec.select, %bb.h ]
  ret i1 %i.aw
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC24IntersectingLineSegmentsERK10aiVector2tIdES4_S4_S4_RS2_S5_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %5) local_unnamed_addr #10 {
bb.a:
  %i.a = load double, ptr %1, align 8             ; 2 uses
  %i.b = load double, ptr %0, align 8             ; 3 uses
  %i.c = fsub double %i.a, %i.b                   ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8           ; 3 uses
  %i.h = fsub double %i.e, %i.g                   ; 10 uses
  %i.i = load double, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = load double, ptr %3, align 8             ; 2 uses
  %i.m = fsub double %i.l, %i.a                   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load double, ptr %i.n, align 8           ; 2 uses
  %i.p = fsub double %i.o, %i.e                   ; 3 uses
  %i.q = insertelement <2 x double> poison, double %i.l, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.i, i64 1
  %i.s = insertelement <2 x double> poison, double %i.b, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fsub <2 x double> %i.r, %i.t             ; 3 uses
  %i.v = insertelement <2 x double> poison, double %i.o, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.k, i64 1
  %i.x = insertelement <2 x double> poison, double %i.g, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fsub <2 x double> %i.w, %i.y             ; 3 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = extractelement <2 x double> %i.u, i64 1 ; 3 uses
  %i.ad = tail call noundef double @llvm.fmuladd.f64(double %i.ac, double %i.ac, double %i.ab) ; 2 uses
  %i.ae = fcmp olt double %i.ad, f0x3DDB7CDFC28AE400
  br i1 %i.ae, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = fmul double %i.h, %i.aa
  %i.ag = tail call noundef double @llvm.fmuladd.f64(double %i.ac, double %i.c, double %i.af)
  %6 = tail call double @llvm.fabs.f64(double %i.ag)
  %sqrt.i = tail call noundef double @llvm.sqrt.f64(double %i.ad)
  %i.ah = fmul double %i.h, %i.h
  %i.ai = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.ah)
  %sqrt.i27 = tail call noundef double @llvm.sqrt.f64(double %i.ai)
  %7 = fmul double %sqrt.i27, %sqrt.i
  %i.aj = fdiv double %6, %7
  %i.ak = fcmp ogt double %i.aj, 9.999900e-01
  br i1 %i.ak, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.al = fmul double %i.p, %i.p
  %i.am = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.m, double %i.al) ; 2 uses
  %i.an = fcmp olt double %i.am, f0x3DDB7CDFC28AE400
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = fmul double %i.h, %i.p
  %i.ap = tail call noundef double @llvm.fmuladd.f64(double %i.m, double %i.c, double %i.ao)
  %8 = tail call double @llvm.fabs.f64(double %i.ap)
  %sqrt.i28 = tail call noundef double @llvm.sqrt.f64(double %i.am)
  %i.aq = fmul double %i.h, %i.h
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.c, double %i.c, double %i.aq)
  %sqrt.i29 = tail call noundef double @llvm.sqrt.f64(double %i.ar)
  %9 = fmul double %sqrt.i29, %sqrt.i28
  %i.as = fdiv double %8, %9
  %i.at = fcmp ogt double %i.as, 9.999900e-01
  br i1 %i.at, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = tail call double @llvm.fabs.f64(double %i.c)
  %i.av = tail call double @llvm.fabs.f64(double %i.h)
  %i.aw = fcmp ogt double %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ax = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.u, %i.ay           ; 3 uses
  %i.ba = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.az)
  %i.bb = fcmp oeq <2 x double> %i.ba, splat (double +inf) ; 2 uses
  %i.bc = extractelement <2 x i1> %i.bb, i64 1
  %i.bd = extractelement <2 x double> %i.az, i64 1
  %i.be = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.u)
  %i.bf = fcmp olt <2 x double> %i.be, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.bg = extractelement <2 x i1> %i.bf, i64 1
  %or.cond100 = select i1 %i.bc, i1 %i.bg, i1 false
  %.0 = select i1 %or.cond100, double 0.000000e+00, double %i.bd ; 2 uses
  %i.bh = extractelement <2 x i1> %i.bb, i64 0
  %i.bi = extractelement <2 x i1> %i.bf, i64 0
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bj = extractelement <2 x double> %i.az, i64 0
  br i1 %or.cond, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.bk = insertelement <2 x double> poison, double %i.h, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.z, %i.bl           ; 3 uses
  %i.bn = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.bm)
  %i.bo = fcmp oeq <2 x double> %i.bn, splat (double +inf) ; 2 uses
  %i.bp = extractelement <2 x i1> %i.bo, i64 1
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  %i.br = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.z)
  %i.bs = fcmp olt <2 x double> %i.br, splat (double f0x3E112E0BE0000000) ; 2 uses
  %i.bt = extractelement <2 x i1> %i.bs, i64 1
  %or.cond102 = select i1 %i.bp, i1 %i.bt, i1 false
  %.196 = select i1 %or.cond102, double 0.000000e+00, double %i.bq ; 2 uses
  %i.bu = extractelement <2 x i1> %i.bo, i64 0
  %i.bv = extractelement <2 x i1> %i.bs, i64 0
  %or.cond20 = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = extractelement <2 x double> %i.bm, i64 0
  br i1 %or.cond20, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.097 = phi double [ 0.000000e+00, %bb.g ], [ %i.bj, %bb.f ], [ 0.000000e+00, %bb.i ], [ %i.bw, %bb.h ] ; 3 uses
  %.2 = phi double [ %.0, %bb.g ], [ %.0, %bb.f ], [ %.196, %bb.i ], [ %.196, %bb.h ] ; 3 uses
  %i.bx = fcmp olt double %.097, %.2              ; 2 uses
  %.198 = select i1 %i.bx, double %.2, double %.097 ; 2 uses
  %.3 = select i1 %i.bx, double %.097, double %.2 ; 2 uses
  %i.by = fcmp ogt double %.3, 0.000000e+00
  %.sroa.speculated52 = select i1 %i.by, double %.3, double 0.000000e+00 ; 2 uses
  %i.bz = fcmp ogt double %.198, 0.000000e+00
  %.sroa.speculated48 = select i1 %i.bz, double %.198, double 0.000000e+00 ; 2 uses
  %i.ca = fcmp olt double %.sroa.speculated52, 1.000000e+00
  %.sroa.speculated44 = select i1 %i.ca, double %.sroa.speculated52, double 1.000000e+00 ; 3 uses
  %i.cb = fcmp olt double %.sroa.speculated48, 1.000000e+00
  %.sroa.speculated = select i1 %i.cb, double %.sroa.speculated48, double 1.000000e+00 ; 3 uses
  %i.cc = fsub double %.sroa.speculated, %.sroa.speculated44
  %i.cd = tail call double @llvm.fabs.f64(double %i.cc)
  %i.ce = fcmp uge double %i.cd, f0x3EE4F8B580000000
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cf = fmul double %i.c, %.sroa.speculated44
  %i.cg = fmul double %i.h, %.sroa.speculated44
  %i.ch = fadd double %i.b, %i.cf
  %i.ci = fadd double %i.g, %i.cg
  store double %i.ch, ptr %4, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.ci, ptr %.sroa.42.0..sroa_idx, align 8
  %i.cj = fmul double %i.c, %.sroa.speculated
  %i.ck = fmul double %i.h, %.sroa.speculated
  %i.cl = load double, ptr %0, align 8
  %i.cm = fadd double %i.cj, %i.cl
  %i.cn = load double, ptr %i.f, align 8
  %i.co = fadd double %i.ck, %i.cn
  store double %i.cm, ptr %5, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %i.co, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.j ], [ true, %bb.k ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_(ptr %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not192 = icmp eq ptr %i.c, %i.e
  br i1 %.not192, label %._crit_edge197, label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  br label %bb.b

._crit_edge197:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph196, %.loopexit
  %.sroa.0165.0193 = phi ptr [ %i.c, %.lr.ph196 ], [ %i.lx, %.loopexit ] ; 14 uses
  %i.m = load ptr, ptr %.sroa.0165.0193, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %.sroa.0165.0193, %0         ; 2 uses
  br i1 %i.q, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 24
  %i.s = load double, ptr %i.f, align 8           ; 3 uses
  %i.t = load double, ptr %i.r, align 8           ; 3 uses
  %i.u = fsub double %i.s, %i.t
  %i.v = tail call double @llvm.fabs.f64(double %i.u)
  %i.w = fcmp olt double %i.v, f0x3E80000000000000
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load double, ptr %i.g, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.z = load double, ptr %i.y, align 8
  %i.aa = fcmp ugt double %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = load double, ptr %i.h, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fcmp ult double %i.ab, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.af = load double, ptr %i.a, align 8          ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 40
  %i.ah = load double, ptr %i.ag, align 8         ; 3 uses
  %i.ai = fsub double %i.af, %i.ah
  %i.aj = tail call double @llvm.fabs.f64(double %i.ai)
  %i.ak = fcmp olt double %i.aj, f0x3E80000000000000
  br i1 %i.ak, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load double, ptr %i.h, align 8
  %.phi.trans.insert31.i = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %.pre32.i = load double, ptr %.phi.trans.insert31.i, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 32
  %i.am = load double, ptr %i.al, align 8         ; 3 uses
  %i.an = load double, ptr %i.h, align 8          ; 3 uses
  %i.ao = fcmp ugt double %i.am, %i.an
  br i1 %i.ao, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = load double, ptr %i.g, align 8
  %i.as = fcmp ult double %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i
  %i.at = phi double [ %.pre32.i, %._crit_edge.i ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.au = phi double [ %.pre.i, %._crit_edge.i ], [ %i.an, %bb.i ], [ %i.an, %bb.h ]
  %i.av = fsub double %i.au, %i.at
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp uge double %i.aw, f0x3E80000000000000
  %i.ay = fcmp ugt double %i.af, %i.ah
  %or.cond.i = select i1 %i.ax, i1 true, i1 %i.ay
  %i.az = fcmp ult double %i.s, %i.t
  %or.cond28.i = select i1 %or.cond.i, i1 true, i1 %i.az
  br i1 %or.cond28.i, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit, label %_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit.thread

_ZN6Assimp3IFC21BoundingBoxesAdjacentERKSt4pairI10aiVector2tIdES3_ES6_.exit: ; preds = %bb.j
  %i.ba = load double, ptr %i.g, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0165.0193, i64 48
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.at
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.am, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #26
  br label %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.ax, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store ptr %i.ba, ptr %i.as, align 8
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.ai
  store ptr %i.bb, ptr %i.ak, align 8
  %.pre = load ptr, ptr %2, align 8
  %.pre170 = load ptr, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.bc = phi ptr [ %i.am, %bb.g ], [ %i.ax, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.bd = phi ptr [ %i.ad, %bb.g ], [ %.pre170, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  %i.be = phi ptr [ %i.ae, %bb.g ], [ %.pre, %_ZNSt12_Vector_baseI10aiVector2tIdESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.not142 = icmp eq ptr %i.be, %i.bd
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre175 = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit
  %i.bf = extractelement <2 x double> %i.s, i64 1
  %i.bg = extractelement <2 x double> %i.s, i64 0
  %i.bh = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 1, i32 3>
  %i.bi = shufflevector <2 x double> %i.q, <2 x double> %i.r, <2 x i32> <i32 0, i32 2>
  %i.bj = insertelement <2 x double> poison, double %i.l, i64 0
  %i.bk = insertelement <2 x double> %i.bj, double %i.o, i64 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %.pre172 = load ptr, ptr %i.b, align 8
  %.pre173 = load ptr, ptr %2, align 8
  %.pre174 = load ptr, ptr %1, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit, %._crit_edge.loopexit
  %i.bl = phi ptr [ %i.ef, %._crit_edge.loopexit ], [ %.pre175, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.bm = phi ptr [ %.pre174, %._crit_edge.loopexit ], [ %i.bc, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.bn = phi ptr [ %.pre173, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bo = phi ptr [ %.pre172, %._crit_edge.loopexit ], [ %i.bd, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %.0.lcssa = phi double [ %i.cw, %._crit_edge.loopexit ], [ 0.000000e+00, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bp = phi <2 x double> [ %i.dk, %._crit_edge.loopexit ], [ splat (double -1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ]
  %i.bq = phi <2 x double> [ %i.di, %._crit_edge.loopexit ], [ splat (double 1.000000e+10), %_ZNSt6vectorI10aiVector2tIdESaIS1_EE7reserveEm.exit ] ; 5 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 24
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fsub <2 x double> %i.bp, %i.bq          ; 3 uses
  %.not136155 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not136155, label %._crit_edge159, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %._crit_edge
  %i.bx = ptrtoaddr ptr %i.bl to i64
  %i.by = ptrtoaddr ptr %i.bm to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = add i64 %i.bz, -16
  %i.cb = lshr i64 %i.ca, 4                       ; 2 uses
  %min.iters.check = icmp eq i64 %i.cb, 0
  br i1 %min.iters.check, label %.lr.ph158, label %vector.body

vector.body:                                      ; preds = %.lr.ph158.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph158.preheader ] ; 3 uses
  %i.cc = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.bm, i64 %i.cc ; 2 uses
  %wide.load = load <2 x double>, ptr %next.gep, align 8
  %i.cd = fsub <2 x double> %wide.load, %i.bq
  %i.ce = fdiv <2 x double> %i.cd, %i.bw          ; 2 uses
  %i.cf = fcmp olt <2 x double> %i.ce, zeroinitializer
  %i.cg = select <2 x i1> %i.cf, <2 x double> zeroinitializer, <2 x double> %i.ce ; 2 uses
  %i.ch = fcmp ogt <2 x double> %i.cg, splat (double 1.000000e+00)
  %i.ci = select <2 x i1> %i.ch, <2 x double> splat (double 1.000000e+00), <2 x double> %i.cg
  store <2 x double> %i.ci, ptr %next.gep, align 8
  %index.next = add nuw i64 %index, 1
  %i.cj = icmp eq i64 %index, %i.cb
  br i1 %i.cj, label %._crit_edge159, label %vector.body, !llvm.loop !224

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit
  %i.ck = phi ptr [ %i.ef, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %.pre175, %.lr.ph.preheader ] ; 5 uses
  %.0150 = phi double [ %i.cw, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.097.0143 = phi ptr [ %i.eg, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ %i.be, %.lr.ph.preheader ] ; 4 uses
  %i.cl = phi <2 x double> [ %i.dk, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double -1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cm = phi <2 x double> [ %i.di, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit ], [ splat (double 1.000000e+10), %.lr.ph.preheader ] ; 2 uses
  %i.cn = load double, ptr %.sroa.097.0143, align 8, !noalias !225 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 8
  %i.cp = load double, ptr %i.co, align 8, !noalias !225 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !noalias !225 ; 2 uses
  %i.cs = fmul double %i.bf, %i.cp
  %i.ct = call double @llvm.fmuladd.f64(double %i.bg, double %i.cn, double %i.cs)
  %i.cu = call double @llvm.fmuladd.f64(double %i.u, double %i.cr, double %i.ct)
  %i.cv = fadd double %i.cu, 0.000000e+00
  %i.cw = fadd double %.0150, %i.cv               ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.bh, %i.cy
  %i.da = insertelement <2 x double> poison, double %i.cn, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.db, <2 x double> %i.cz)
  %i.dd = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.de, <2 x double> %i.dc) ; 3 uses
  %i.dg = fadd <2 x double> %i.df, zeroinitializer ; 4 uses
  %i.dh = fcmp olt <2 x double> %i.cm, %i.df
  %i.di = select <2 x i1> %i.dh, <2 x double> %i.cm, <2 x double> %i.dg ; 2 uses
  %i.dj = fcmp olt <2 x double> %i.df, %i.cl
  %i.dk = select <2 x i1> %i.dj, <2 x double> %i.cl, <2 x double> %i.dg ; 2 uses
  %i.dl = load ptr, ptr %i.ak, align 8
  %.not.i = icmp eq ptr %i.ck, %i.dl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  store <2 x double> %i.dg, ptr %i.ck, align 8
  %i.dm = load ptr, ptr %.phi.trans.insert, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  store ptr %i.dn, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

bb.j:                                             ; preds = %.lr.ph
  %i.do = load ptr, ptr %1, align 8               ; 5 uses
  %i.dp = ptrtoint ptr %i.ck to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 4 uses
  %i.ds = icmp eq i64 %i.dr, 9223372036854775792
  br i1 %i.ds, label %bb.k, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.dt = ashr exact i64 %i.dr, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dt, i64 1)
  %i.du = add nsw i64 %.sroa.speculated.i.i.i, %i.dt ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %i.dw = call i64 @llvm.umin.i64(i64 %i.du, i64 576460752303423487)
  %i.dx = select i1 %i.dv, i64 576460752303423487, i64 %i.dw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dy = shl nuw nsw i64 %i.dx, 4
  %i.dz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #25 ; 5 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dr
  store <2 x double> %i.dg, ptr %i.ea, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.do, %i.ck
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !228
  %i.eb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %i.ck
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dz, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ec, %.lr.ph.i.i.i.i.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef %i.dr) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.dz, ptr %1, align 8
  store ptr %i.ed, ptr %.phi.trans.insert, align 8
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %i.dx
  store ptr %i.ee, ptr %i.ak, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ef = phi ptr [ %i.dn, %bb.i ], [ %i.ed, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.097.0143, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.bd
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge159:                                   ; preds = %vector.body, %.lr.ph158, %._crit_edge
  %i.eh = fdiv <2 x double> splat (double 1.000000e+00), %i.bw ; 5 uses
  %i.ei = extractelement <2 x double> %i.bq, i64 0
  %i.ej = fneg double %i.ei
  %i.ek = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %i.el = fmul double %i.ek, %i.ej                ; 3 uses
  %i.em = extractelement <2 x double> %i.bq, i64 1
  %i.en = fneg double %i.em
  %i.eo = extractelement <2 x double> %i.eh, i64 1 ; 3 uses
  %i.ep = fmul double %i.eo, %i.en                ; 3 uses
  %i.eq = fneg double %.0.lcssa
  %6 = fdiv double %i.eq, %i.bv                   ; 2 uses
  %i.er = fmul <2 x double> %i.r, zeroinitializer ; 2 uses
  %i.es = fmul double %i.o, 0.000000e+00          ; 2 uses
  %i.et = call double @llvm.fmuladd.f64(double %i.l, double %i.ek, double %i.es)
  %i.eu = call double @llvm.fmuladd.f64(double %i.u, double 0.000000e+00, double %i.et)
  %i.ev = call double @llvm.fmuladd.f64(double %i.el, double 0.000000e+00, double %i.eu)
  %i.ew = extractelement <2 x double> %i.s, i64 0
  %i.ex = fmul double %i.o, %i.eo
  %i.ey = insertelement <2 x double> %i.eh, double %i.l, i64 1
  %i.ez = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ex, i64 1
  %i.fa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> zeroinitializer, <2 x double> %i.ez) ; 2 uses
  %i.fb = extractelement <2 x double> %i.fa, i64 0
  %i.fc = fadd double %i.fb, 0.000000e+00
  %i.fd = fadd double %i.el, %i.fc
  %i.fe = extractelement <2 x double> %i.fa, i64 1
  %i.ff = call double @llvm.fmuladd.f64(double %i.u, double 0.000000e+00, double %i.fe)
  %i.fg = fmul double %i.eo, 0.000000e+00
  %7 = fadd double %i.fg, 0.000000e+00
  %i.fh = fadd double %i.ep, %7
  %8 = insertelement <2 x double> poison, double %i.ep, i64 0
  %9 = insertelement <2 x double> %8, double %i.l, i64 1
  %10 = insertelement <2 x double> poison, double %i.ff, i64 0
  %11 = insertelement <2 x double> %10, double %i.es, i64 1
  %12 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> zeroinitializer, <2 x double> %11) ; 3 uses
  %13 = extractelement <2 x double> %12, i64 1
  %i.fi = fadd double %13, %i.u
  %14 = call double @llvm.fmuladd.f64(double %6, double 0.000000e+00, double %i.fi)
  %i.fj = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> %i.fj, <2 x double> %i.er)
  %i.fl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> zeroinitializer, <2 x double> %i.fk)
  %i.fm = insertelement <2 x double> poison, double %i.el, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> zeroinitializer, <2 x double> %i.fl)
  store <2 x double> %i.fo, ptr %0, align 8
  %.sroa.11123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ev, ptr %.sroa.11123.0..sroa_idx, align 8
  %.sroa.15125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.fd, ptr %.sroa.15125.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fp = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = fmul <2 x double> %i.r, %i.fp
  %i.fr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.fq)
  %i.fs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> zeroinitializer, <2 x double> %i.fr)
  %i.ft = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fu, <2 x double> zeroinitializer, <2 x double> %i.fs)
  store <2 x double> %i.fv, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.27129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %15 = extractelement <2 x double> %12, i64 0
  store double %15, ptr %.sroa.27129.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.fh, ptr %.sroa.31.0..sroa_idx.a, align 8
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %16 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> zeroinitializer, <2 x double> %i.er) ; 3 uses
  %17 = fadd <2 x double> %16, %i.s
  %i.fw = insertelement <2 x double> poison, double %6, i64 0 ; 2 uses
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> zeroinitializer, <2 x double> %17)
  %18 = extractelement <2 x double> %16, i64 0
  %19 = call double @llvm.fmuladd.f64(double %i.ew, double 0.000000e+00, double %18)
  store <2 x double> %i.fy, ptr %.sroa.35.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %14, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fz = insertelement <2 x double> %i.fw, double %19, i64 1
  %20 = fadd <2 x double> %i.fz, zeroinitializer
  store <2 x double> %20, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ga = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gb = insertelement <2 x double> %i.ga, double %i.u, i64 1
  %i.gc = shufflevector <2 x double> %16, <2 x double> %12, <2 x i32> <i32 1, i32 3>
  %i.gd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> zeroinitializer, <2 x double> %i.gc)
  %i.ge = fadd <2 x double> %i.gd, zeroinitializer
  store <2 x double> %i.ge, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double 1.000000e+00, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.m

.lr.ph158:                                        ; preds = %.lr.ph158.preheader, %.lr.ph158
  %.sroa.078.0156 = phi ptr [ %i.gm, %.lr.ph158 ], [ %i.bm, %.lr.ph158.preheader ] ; 3 uses
  %i.gf = load <2 x double>, ptr %.sroa.078.0156, align 8
  %i.gg = fsub <2 x double> %i.gf, %i.bq
  %i.gh = fdiv <2 x double> %i.gg, %i.bw          ; 2 uses
  %i.gi = fcmp olt <2 x double> %i.gh, zeroinitializer
  %i.gj = select <2 x i1> %i.gi, <2 x double> zeroinitializer, <2 x double> %i.gh ; 2 uses
  %i.gk = fcmp ogt <2 x double> %i.gj, splat (double 1.000000e+00)
  %i.gl = select <2 x i1> %i.gk, <2 x double> splat (double 1.000000e+00), <2 x double> %i.gj
  store <2 x double> %i.gl, ptr %.sroa.078.0156, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.078.0156, i64 16 ; 2 uses
  %.not136 = icmp eq ptr %i.gm, %i.bl
  br i1 %.not136, label %._crit_edge159, label %.lr.ph158, !llvm.loop !232

bb.m:                                             ; preds = %bb.d, %._crit_edge159, %bb.b
  ret void
}

declare void @_ZN6Assimp3IFC26DerivePlaneCoordinateSpaceERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind writable sret(%class.aiMatrix3x3t) align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC16GenerateOpeningsERSt6vectorINS0_11TempOpeningESaIS2_EERNS0_8TempMeshEbbRK10aiVector3tIdE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::vector.91", align 8    ; 14 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 10 uses
  %7 = alloca %class.aiVector3t, align 8          ; 9 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %9 = alloca %class.aiMatrix4x4t, align 8        ; 10 uses
  %10 = alloca %class.aiMatrix4x4t, align 8       ; 5 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 22 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 21 uses
  %.sroa.0419 = alloca ptr, align 8               ; 8 uses
  %.sroa.11424 = alloca ptr, align 8              ; 8 uses
  %.sroa.18 = alloca ptr, align 8                 ; 9 uses
  %13 = alloca %"struct.std::pair.3", align 16    ; 13 uses
  %14 = alloca %"class.std::vector.96", align 8   ; 11 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 19 uses
  %16 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  %17 = alloca %"class.__gnu_cxx::__normal_iterator.101", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i8 1, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %..sroa.gep412 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 10 uses
  %..sroa.gep418 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  invoke void @_ZN6Assimp3IFC16ProjectOntoPlaneERSt6vectorI10aiVector2tIdESaIS3_EERKNS0_8TempMeshERbR10aiVector3tIdE(ptr dead_on_unwind nonnull writable sret(%class.aiMatrix4x4t) align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.c, align 1, !range !143, !noundef !144
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.de

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %10, ptr noundef nonnull align 8 dereferenceable(128) %8, i64 128, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN12aiMatrix4x4tIdE7InverseEv(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %_ZN10aiVector3tIdE9NormalizeEv.exit unwind label %bb.e

_ZN10aiVector3tIdE9NormalizeEv.exit:              ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %9, ptr noundef nonnull align 8 dereferenceable(128) %i.h, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11424)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  store ptr null, ptr %.sroa.0419, align 8
  store ptr null, ptr %.sroa.11424, align 8
  store ptr null, ptr %.sroa.18, align 8
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not456651 = icmp eq ptr %i.i, %i.k
  br i1 %.not456651, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EED2Ev.exit, label %.lr.ph654

.lr.ph654:                                        ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.11360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.dd

bb.f:                                             ; preds = %bb.cv, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit254

bb.g:                                             ; preds = %.lr.ph654, %bb.cj
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420759 = phi ptr [ null, %.lr.ph654 ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.420760, %bb.cj ] ; 2 uses
  %.sroa.11424.0..sroa.11424.0..sroa.11424.8. = phi ptr [ null, %.lr.ph654 ], [ %.sroa.11424.0..sroa.11424.0..sroa.11424.8.756, %bb.cj ] ; 3 uses
  %.sroa.0419.0..sroa.0419.0..sroa.0419.0. = phi ptr [ null, %.lr.ph654 ], [ %.sroa.0419.0..sroa.0419.0..sroa.0419.0.753, %bb.cj ] ; 3 uses
  %.0653 = phi i1 [ undef, %.lr.ph654 ], [ %.8, %bb.cj ] ; 6 uses
  %.sroa.0406.0652 = phi ptr [ %i.i, %.lr.ph654 ], [ %i.tq, %bb.cj ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 8
  %.sroa.0385.0.copyload = load double, ptr %i.ab, align 8 ; 3 uses
  %.sroa.10390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 16
  %.sroa.10390.0.copyload = load double, ptr %.sroa.10390.0..sroa_idx, align 8 ; 3 uses
  %.sroa.15396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 24
  %.sroa.15396.0.copyload = load double, ptr %.sroa.15396.0..sroa_idx, align 8 ; 3 uses
  %i.ac = fmul double %.sroa.10390.0.copyload, %.sroa.10390.0.copyload
  %i.ad = call double @llvm.fmuladd.f64(double %.sroa.0385.0.copyload, double %.sroa.0385.0.copyload, double %i.ac)
  %i.ae = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0.copyload, double %.sroa.15396.0.copyload, double %i.ad) ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-10
  br i1 %i.af, label %_ZN10aiVector3tIdEdVEd.exit.i180, label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdEdVEd.exit.i180:                 ; preds = %bb.g
  %sqrt.i.i181 = call noundef double @llvm.sqrt.f64(double %i.ae)
  %i.ag = fdiv double 1.000000e+00, %sqrt.i.i181  ; 3 uses
  %i.ah = fmul double %.sroa.0385.0.copyload, %i.ag
  %i.ai = fmul double %.sroa.10390.0.copyload, %i.ag
  %i.aj = fmul double %.sroa.15396.0.copyload, %i.ag
  br label %_ZN10aiVector3tIdE9NormalizeEv.exit182

_ZN10aiVector3tIdE9NormalizeEv.exit182:           ; preds = %bb.g, %_ZN10aiVector3tIdEdVEd.exit.i180
  %.sroa.0385.0 = phi double [ %i.ah, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.10390.0 = phi double [ %i.ai, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %.sroa.15396.0 = phi double [ %i.aj, %_ZN10aiVector3tIdEdVEd.exit.i180 ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 32
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0406.0652, i64 48
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not457 = icmp eq ptr %i.an, null
  br i1 %.not457, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %i.ao = fmul double %.sroa.10390.0, %.sroa.10390.0
  %i.ap = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %.sroa.0385.0, double %i.ao)
  %i.aq = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %.sroa.15396.0, double %i.ap)
  %i.ar = fcmp ogt double %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.as = load double, ptr %7, align 8
  %i.at = load double, ptr %i.l, align 8
  %i.au = fmul double %.sroa.10390.0, %i.at
  %i.av = call double @llvm.fmuladd.f64(double %.sroa.0385.0, double %i.as, double %i.au)
  %i.aw = load double, ptr %i.m, align 8
  %i.ax = call noundef double @llvm.fmuladd.f64(double %.sroa.15396.0, double %i.aw, double %i.av)
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp ogt double %i.ay, 9.000000e-01
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h, %_ZN10aiVector3tIdE9NormalizeEv.exit182
  %.0144 = phi i1 [ true, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 2 uses
  %.0143 = phi ptr [ %i.an, %bb.j ], [ %i.al, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %_ZN10aiVector3tIdE9NormalizeEv.exit182 ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0143, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  %i.bc = load ptr, ptr %.0143, align 8           ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i.i.i.i, label %.noexc183, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, 384307168202282325
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger5errorIJPKcRA55_S2_EEEvDpOT_:bb.a

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.d ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #27
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA55_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(55) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.l = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.l)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.r, ptr %4, align 8
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.t = getelementptr i8, ptr %i.r, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %4, i64 %i.u
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.w, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ae) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.g:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IPKcEERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %3, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.ag, %bb.h ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA55_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(55) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(55) %3) #27
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(55) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !699)
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !711
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !711
  store i8 0, ptr %i.c, align 8, !alias.scope !711
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !711 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !711 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !711 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !711 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !711
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #27
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #27
  resume { ptr, i32 } %i.p
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!6, !8}
!6 = distinct !{!6, !7, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!7 = distinct !{!7, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!8 = distinct !{!8, !7, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!9 = distinct !{!9, !4}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!12 = distinct !{!12, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!13 = distinct !{!13, !12, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!17 = distinct !{!17, !16, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!18 = !{!19, !21}
!19 = distinct !{!19, !20, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!20 = distinct !{!20, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!21 = distinct !{!21, !20, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!22 = distinct !{!22, !4}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!25 = distinct !{!25, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!26 = distinct !{!26, !25, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!29 = distinct !{!29, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!31 = !{!32, !34}
!32 = distinct !{!32, !33, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!34 = distinct !{!34, !33, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!37 = distinct !{!37, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!38 = distinct !{!38, !37, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!41 = distinct !{!41, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!42 = distinct !{!42, !41, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!46 = distinct !{!46, !45, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!53 = distinct !{!53, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!54 = distinct !{!54, !53, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!58 = distinct !{!58, !57, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!59 = distinct !{!59, !4}
!60 = distinct !{!60, !4}
!61 = !{!62, !64}
!62 = distinct !{!62, !63, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!63 = distinct !{!63, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!64 = distinct !{!64, !63, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!65 = distinct !{!65, !4}
!66 = distinct !{!66, !4}
!67 = !{!68, !70}
!68 = distinct !{!68, !69, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!69 = distinct !{!69, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNSt6vectorI10aiVector3tIdESaIS1_EE6rbeginEv: argument 0"}
!73 = distinct !{!73, !"_ZNSt6vectorI10aiVector3tIdESaIS1_EE6rbeginEv"}
!74 = distinct !{!74, !4}
!75 = distinct !{!75, !4}
!76 = distinct !{!76, !4}
!77 = distinct !{!77, !4}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!80 = distinct !{!80, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!81 = distinct !{!81, !80, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!82 = distinct !{!82, !4}
!83 = distinct !{!83, !4}
!84 = !{!85, !87}
!85 = distinct !{!85, !86, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!86 = distinct !{!86, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!87 = distinct !{!87, !86, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!88 = distinct !{!88, !4}
!89 = !{!90, !92}
!90 = distinct !{!90, !91, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!91 = distinct !{!91, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!92 = distinct !{!92, !91, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!93 = !{!94, !96}
!94 = distinct !{!94, !95, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!95 = distinct !{!95, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!96 = distinct !{!96, !95, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!99 = distinct !{!99, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!100 = distinct !{!100, !99, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!102, !104}
!102 = distinct !{!102, !103, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!104 = distinct !{!104, !103, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!105 = !{!106, !108}
!106 = distinct !{!106, !107, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!107 = distinct !{!107, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!108 = distinct !{!108, !107, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!111 = distinct !{!111, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_"}
!112 = distinct !{!112, !111, !"_ZSt19__relocate_object_aIN10ClipperLib8IntPointES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!113 = !{!114, !116}
!114 = distinct !{!114, !115, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!115 = distinct !{!115, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!116 = distinct !{!116, !115, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!117 = distinct !{!117, !4}
!118 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!119 = !{!120, !122}
!120 = distinct !{!120, !121, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!121 = distinct !{!121, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!122 = distinct !{!122, !121, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!123 = distinct !{!123, !124}
!124 = !{!"llvm.loop.unroll.disable"}
!125 = !{!126, !128}
!126 = distinct !{!126, !127, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!128 = distinct !{!128, !127, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!131 = distinct !{!131, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!132 = distinct !{!132, !131, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!133 = distinct !{!133, !124}
!134 = !{!135, !137}
!135 = distinct !{!135, !136, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!136 = distinct !{!136, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!137 = distinct !{!137, !136, !"_ZSt19__relocate_object_aI10aiVector2tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!138 = distinct !{!138, !4}
!139 = distinct !{!139, !4}
!140 = distinct !{!140, !4, !141}
!141 = !{!"llvm.loop.peeled.count", i32 1}
!142 = distinct !{!142, !4, !141}
!143 = !{i8 0, i8 2}
!144 = !{}
!145 = !{!146, !148}
!146 = distinct !{!146, !147, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!147 = distinct !{!147, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_"}
!148 = distinct !{!148, !147, !"_ZSt19__relocate_object_aI10aiVector3tIdES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!151 = distinct !{!151, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!152 = !{!153}
!153 = distinct !{!153, !154}
!154 = distinct !{!154, !"LVerDomain"}
!155 = !{!156}
!156 = distinct !{!156, !154}
!157 = distinct !{!157, !4, !158, !159}
!158 = !{!"llvm.loop.isvectorized", i32 1}
!159 = !{!"llvm.loop.unroll.runtime.disable"}
!160 = distinct !{!160, !4, !158}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_: argument 0"}
!163 = distinct !{!163, !"_ZmlIdE10aiVector3tIT_ERK12aiMatrix4x4tIS1_ERKS2_"}
!164 = !{!165}
end_hunk_2
