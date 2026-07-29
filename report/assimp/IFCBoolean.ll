inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev:bb.a
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.10", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcCartesianPointE, i64 -1) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #22
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x317IfcCartesianPointEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6Assimp3IFC6IsTrueERKNS_4STEP7EXPRESS11ENUMERATIONE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i1 noundef zeroext %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i1 noundef zeroext %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %2, align 8                ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 6 uses
  %.not = icmp eq ptr %i.b, %i.c                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not245 = icmp eq i64 %i.f, 24
  br i1 %.not245, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.h = add nsw i64 %i.g, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bx, %.lr.ph ]
  %i.j = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ] ; 3 uses
  %i.k = add nuw i64 %i.j, 1                      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  %i.m = select i1 %i.l, i64 0, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.p = load double, ptr %i.n, align 8, !noalias !69 ; 2 uses
  %i.q = load double, ptr %i.o, align 8, !noalias !69
  %i.r = fsub double %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load double, ptr %i.s, align 8, !noalias !69 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = load double, ptr %i.u, align 8, !noalias !69
  %i.w = fsub double %i.t, %i.v
  %i.x = add i64 %i.j, 2
  %i.y = urem i64 %i.x, %i.g
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.y ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !noalias !72
  %i.ab = fsub double %i.aa, %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !noalias !72
  %i.ae = fsub double %i.ad, %i.t
  %i.af = fneg double %i.r
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.w, double %i.ab, double %i.ag)
  %i.ai = fadd double %i.i, %i.ah
  %i.aj = fcmp ogt double %i.ai, 0.000000e+00
  %i.ak = select i1 %i.aj, double 1.000000e+00, double -1.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.peel, %bb.a
  %.0.lcssa = phi double [ -1.000000e+00, %bb.a ], [ %i.ak, %.lr.ph.peel ] ; 3 uses
  %i.al = load double, ptr %1, align 8, !noalias !75
  %i.am = load double, ptr %0, align 8, !noalias !75
  %i.an = fsub double %i.al, %i.am                ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !noalias !75
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !noalias !75
  %i.as = fsub double %i.ap, %i.ar                ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load double, ptr %i.at, align 8, !noalias !75
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !noalias !75
  %i.ax = fsub double %i.au, %i.aw                ; 2 uses
  br i1 %.not, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ba = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.0.lcssa)
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %.0217 = phi double [ %i.bx, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader.split ]
  %.086216 = phi i64 [ %i.bb, %.lr.ph ], [ 0, %.lr.ph.preheader.split ] ; 4 uses
  %i.bb = add nuw i64 %.086216, 1                 ; 3 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.086216 ; 2 uses
  %i.be = load double, ptr %i.bc, align 8, !noalias !69 ; 2 uses
  %i.bf = load double, ptr %i.bd, align 8, !noalias !69
  %i.bg = fsub double %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !noalias !69 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load double, ptr %i.bj, align 8, !noalias !69
  %i.bl = fsub double %i.bi, %i.bk
  %i.bm = add i64 %.086216, 2
  %i.bn = urem i64 %i.bm, %i.g
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bn ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !noalias !72
  %i.bq = fsub double %i.bp, %i.be
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load double, ptr %i.br, align 8, !noalias !72
  %i.bt = fsub double %i.bs, %i.bi
  %i.bu = fneg double %i.bg
  %i.bv = fmul double %i.bt, %i.bu
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bq, double %i.bv)
  %i.bx = fadd double %.0217, %i.bw               ; 2 uses
  %exitcond.not = icmp eq i64 %.086216, %i.h
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !78

._crit_edge221:                                   ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, %._crit_edge
  %i.by = load ptr, ptr %4, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = icmp ne ptr %i.by, %i.ca
  ret i1 %i.cb

bb.b:                                             ; preds = %.lr.ph220, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit
  %.0214218 = phi i64 [ 0, %.lr.ph220 ], [ %i.ce, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit ] ; 8 uses
  %i.cc = load ptr, ptr %2, align 8               ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %.0214218 ; 2 uses
  %i.ce = add nuw i64 %.0214218, 1                ; 4 uses
  %i.cf = icmp eq i64 %i.ce, %i.g
  %i.cg = select i1 %i.cf, i64 0, i64 %i.ce
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cg ; 2 uses
  %6 = load <2 x double>, ptr %i.ch, align 8, !noalias !80
  %7 = load <2 x double>, ptr %i.cd, align 8, !noalias !80 ; 4 uses
  %8 = fsub <2 x double> %6, %7                   ; 4 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 6 uses
  %10 = fneg double %9                            ; 2 uses
  %11 = extractelement <2 x double> %8, i64 1     ; 7 uses
  %i.ci = fmul double %i.an, %11
  %i.cj = tail call double @llvm.fmuladd.f64(double %10, double %i.as, double %i.ci) ; 3 uses
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj)
  %i.cl = fcmp olt double %i.ck, f0x3EB0C6F7A0000000
  br i1 %i.cl, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cn = load double, ptr %i.cm, align 8, !noalias !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cp = load double, ptr %i.co, align 8, !noalias !80 ; 3 uses
  %i.cq = fmul double %11, %11
  %i.cr = load double, ptr %0, align 8            ; 5 uses
  %12 = load double, ptr %i.aq, align 8           ; 5 uses
  %13 = extractelement <2 x double> %7, i64 1     ; 5 uses
  %i.cs = fsub double %13, %12
  %i.ct = fneg double %i.cs                       ; 2 uses
  %14 = fmul double %i.an, %i.ct
  %15 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %i.cq)
  %i.cu = insertelement <2 x double> poison, double %i.cn, i64 0
  %16 = shufflevector <2 x double> %i.cu, <2 x double> %7, <2 x i32> <i32 0, i32 2>
  %17 = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.cv = insertelement <2 x double> %17, double %i.cr, i64 1
  %18 = fsub <2 x double> %16, %i.cv              ; 4 uses
  %i.cw = insertelement <2 x double> %18, double %i.as, i64 1
  %19 = insertelement <2 x double> poison, double %15, i64 0
  %i.cx = insertelement <2 x double> %19, double %14, i64 1
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %i.cw, <2 x double> %i.cx) ; 2 uses
  %21 = insertelement <2 x double> %20, double 1.000000e+00, i64 0
  %22 = insertelement <2 x double> %20, double %i.cj, i64 1
  %23 = fdiv <2 x double> %21, %22                ; 3 uses
  %24 = load double, ptr %i.av, align 8, !noalias !83
  %25 = load double, ptr %1, align 8              ; 2 uses
  %26 = extractelement <2 x double> %7, i64 0     ; 4 uses
  %27 = fsub double %25, %26
  %i.cy = load double, ptr %i.ao, align 8         ; 2 uses
  %28 = fsub double %i.cy, %13
  %29 = insertelement <2 x double> poison, double %i.ct, i64 0
  %30 = insertelement <2 x double> %29, double %28, i64 1
  %31 = fmul <2 x double> %8, %30
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cz = insertelement <2 x double> %18, double %27, i64 0
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %8, <2 x double> %32) ; 2 uses
  %34 = extractelement <2 x double> %33, i64 1
  %35 = fdiv double %34, %i.cj                    ; 5 uses
  %36 = fmul double %i.an, %35
  %37 = fmul double %i.as, %35
  %38 = fmul double %i.ax, %35
  %39 = fadd double %i.cr, %36                    ; 3 uses
  %40 = fadd double %12, %37                      ; 3 uses
  %41 = fadd double %24, %38                      ; 2 uses
  %42 = extractelement <2 x double> %23, i64 0    ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %23, %33
  %43 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.da = fcmp olt double %43, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.da, double %43, double 1.000000e+00 ; 2 uses
  %i.db = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.db, double %.sroa.speculated138, double 0.000000e+00 ; 3 uses
  %i.dc = fmul double %9, %.sroa.speculated
  %i.dd = fmul double %11, %.sroa.speculated
  %i.de = extractelement <2 x double> %18, i64 0  ; 2 uses
  %i.df = fmul double %i.de, %.sroa.speculated
  %i.dg = fadd double %26, %i.dc
  %i.dh = fadd double %13, %i.dd
  %i.di = fadd double %i.cp, %i.df                ; 2 uses
  %i.dj = fsub double %i.dg, %25                  ; 2 uses
  %i.dk = fsub double %i.dh, %i.cy                ; 2 uses
  %i.dl = fmul double %i.dk, %i.dk
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dj, double %i.dl)
  %i.dn = tail call noundef double @llvm.fmuladd.f64(double %i.di, double %i.di, double %i.dm)
  %i.do = fcmp uge double %i.dn, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.do
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.dp = fsub double %i.cr, %26
  %i.dq = fsub double %12, %13
  %i.dr = fmul double %11, %i.dq
  %i.ds = tail call double @llvm.fmuladd.f64(double %9, double %i.dp, double %i.dr)
  %i.dt = fmul double %42, %i.ds                  ; 2 uses
  %i.du = fcmp olt double %i.dt, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.du, double %i.dt, double 1.000000e+00 ; 2 uses
  %i.dv = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.dv, double %.sroa.speculated159, double 0.000000e+00 ; 3 uses
  %i.dw = fmul double %i.de, %.sroa.speculated148
  %i.dx = fadd double %i.cp, %i.dw                ; 2 uses
  %i.dy = fmul double %9, %.sroa.speculated148
  %i.dz = fadd double %26, %i.dy
  %i.ea = fsub double %i.dz, %i.cr                ; 2 uses
  %i.eb = fmul double %11, %.sroa.speculated148
  %i.ec = fadd double %13, %i.eb
  %i.ed = fsub double %i.ec, %12                  ; 2 uses
  %i.ee = fmul double %i.ed, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.ea, double %i.ee)
  %i.eg = tail call noundef double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.ef)
  %i.eh = fcmp olt double %i.eg, f0x3D719799812DEA11
  br i1 %i.eh, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ei = fmul double %.0.lcssa, %11
  %i.ej = fmul double %.0.lcssa, %10
  %i.ek = fmul double %i.as, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.an, double %i.ek)
  %i.em = tail call noundef double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.el)
  %i.en = fcmp ule double %i.em, 0.000000e+00
  %i.eo = xor i1 %3, %i.en
  br i1 %i.eo, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ep = load ptr, ptr %4, align 8               ; 5 uses
  %i.eq = load ptr, ptr %i.ay, align 8            ; 9 uses
  %i.er = icmp eq ptr %i.ep, %i.eq                ; 2 uses
  br i1 %i.er, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.es = getelementptr inbounds i8, ptr %i.eq, i64 -32
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %.0214218, -1
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ew = getelementptr inbounds i8, ptr %i.eq, i64 -24
  %i.ex = load double, ptr %i.ew, align 8, !noalias !86
  %i.ey = fsub double %i.ex, %i.cr                ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.eq, i64 -16
  %i.fa = load double, ptr %i.ez, align 8, !noalias !86
  %i.fb = fsub double %i.fa, %12                  ; 2 uses
  %i.fc = fmul double %i.fb, %i.fb
  %i.fd = tail call noundef double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.fc)
  %i.fe = fcmp uge double %i.fd, 1.000000e-10
  br i1 %i.fe, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ff = load ptr, ptr %i.az, align 8
  %.not.i = icmp eq ptr %i.eq, %i.ff
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0214218, ptr %i.eq, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.fh = load ptr, ptr %i.ay, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %i.fi, ptr %i.ay, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fj = ptrtoint ptr %i.eq to i64
  %i.fk = ptrtoint ptr %i.ep to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 4 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775776
  br i1 %i.fm, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.fn = ashr exact i64 %i.fl, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = tail call i64 @llvm.umin.i64(i64 %i.fo, i64 288230376151711743)
  %i.fr = select i1 %i.fp, i64 288230376151711743, i64 %i.fq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fr, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fs = shl nuw nsw i64 %i.fr, 5
  %i.ft = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #23 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fl ; 2 uses
  store i64 %.0214218, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fv, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.er, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i.i.i ], [ %i.ft, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i.i.i ], [ %i.ep, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !89
  %i.fw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fw, %i.eq
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ft, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fx, %.lr.ph.i.i.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.fl) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.ft, ptr %4, align 8
  store ptr %i.fy, ptr %i.ay, align 8
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.fr
  store ptr %i.fz, ptr %i.az, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.d
  %i.ga = fmul double %42, f0xBEB0C6F7A0000000
  %i.gb = extractelement <2 x double> %23, i64 1  ; 2 uses
  %i.gc = fcmp ult double %i.gb, %i.ga
  br i1 %i.gc, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gd = tail call double @llvm.fmuladd.f64(double %42, double f0x3EB0C6F7A0000000, double 1.000000e+00)
  %i.ge = fcmp ole double %i.gb, %i.gd
  %i.gf = fcmp oge double %35, 0.000000e+00
  %or.cond4 = and i1 %i.ge, %i.gf
  %i.gg = fcmp ole double %35, 1.000000e+00
  %or.cond6 = or i1 %5, %i.gg
  %or.cond93 = and i1 %or.cond4, %or.cond6
  br i1 %or.cond93, label %bb.p, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.gh = load ptr, ptr %4, align 8               ; 5 uses
  %i.gi = load ptr, ptr %i.ay, align 8            ; 11 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi                ; 2 uses
  br i1 %i.gj, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -32
  %i.gl = load i64, ptr %i.gk, align 8
  %i.gm = add i64 %.0214218, -1
  %i.gn = icmp eq i64 %i.gl, %i.gm
  br i1 %i.gn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.go = getelementptr inbounds i8, ptr %i.gi, i64 -24
  %i.gp = load double, ptr %i.go, align 8, !noalias !94
  %i.gq = fsub double %i.gp, %39                  ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gi, i64 -16
  %i.gs = load double, ptr %i.gr, align 8, !noalias !94
  %i.gt = fsub double %i.gs, %40                  ; 2 uses
  %i.gu = fmul double %i.gt, %i.gt
  %i.gv = tail call noundef double @llvm.fmuladd.f64(double %i.gq, double %i.gq, double %i.gu)
  %i.gw = fcmp uge double %i.gv, 1.000000e-10
  br i1 %i.gw, label %bb.s, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.gx = load ptr, ptr %i.az, align 8
  %.not.i97 = icmp eq ptr %i.gi, %i.gx
  br i1 %.not.i97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.0214218, ptr %i.gi, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store double %39, ptr %i.gy, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store double %40, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store double %41, ptr %.sroa.8.0..sroa_idx, align 8
  %i.gz = load ptr, ptr %i.ay, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store ptr %i.ha, ptr %i.ay, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.hb = ptrtoint ptr %i.gi to i64
  %i.hc = ptrtoint ptr %i.gh to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 4 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775776
  br i1 %i.he, label %bb.v, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.u
  %i.hf = ashr exact i64 %i.hd, 5                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i99, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = tail call i64 @llvm.umin.i64(i64 %i.hg, i64 288230376151711743)
  %i.hj = select i1 %i.hh, i64 288230376151711743, i64 %i.hi ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.hj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.hk = shl nuw nsw i64 %i.hj, 5
  %i.hl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #23 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hd ; 4 uses
  store i64 %.0214218, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store double %39, ptr %i.hn, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store double %40, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.8.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store double %41, ptr %.sroa.8.0..sroa_idx170, align 8
  br i1 %i.gj, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.hp, %.lr.ph.i.i.i.i.i102 ], [ %i.hl, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i102 ], [ %i.gh, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i104, i64 32, i1 false), !alias.scope !97
  %i.ho = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 32 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.ho, %i.gi
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !93

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.hl, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ], [ %i.hp, %.lr.ph.i.i.i.i.i102 ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 32
  %.not.i34.i.i108 = icmp eq ptr %i.gh, null
  br i1 %.not.i34.i.i108, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.hd) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109: ; preds = %bb.w, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  store ptr %i.hl, ptr %4, align 8
  store ptr %i.hq, ptr %i.ay, align 8
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hl, i64 %i.hj
  store ptr %i.hr, ptr %i.az, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit: ; preds = %bb.r, %bb.c, %bb.o, %bb.n, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %bb.e, %bb.h, %bb.t, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, %bb.b
  %exitcond226.not = icmp eq i64 %i.ce, %i.g
  br i1 %exitcond226.not, label %._crit_edge221, label %bb.b, !llvm.loop !101
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3IFC11PointInPolyERK10aiVector3tIdERKSt6vectorIS2_SaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.40", align 8    ; 14 uses
  %3 = alloca %class.aiVector3t, align 16         ; 6 uses
  %4 = alloca %class.aiVector3t, align 16         ; 6 uses
  %5 = alloca %class.aiVector3t, align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !noalias !102
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = load <2 x double>, ptr %0, align 8, !noalias !102
  %i.e = fadd <2 x double> %i.d, <double 1.000000e+00, double 0.000000e+00>
  store <2 x double> %i.e, ptr %3, align 16, !alias.scope !102
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.c, ptr %i.f, align 16, !alias.scope !102
  %i.g = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i unwind label %bb.d ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, %i.j
  %spec.store.select = select i1 %.not.i.i, ptr %i.i, ptr %i.j
  store ptr %spec.store.select, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.k = load double, ptr %i.a, align 8, !noalias !105
  %i.l = fadd double %i.k, 0.000000e+00
  %i.m = load <2 x double>, ptr %0, align 8, !noalias !105
  %i.n = fadd <2 x double> %i.m, <double 0.000000e+00, double 1.000000e+00>
  store <2 x double> %i.n, ptr %4, align 16, !alias.scope !105
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.l, ptr %i.o, align 16, !alias.scope !105
  %i.p = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17 unwind label %bb.e ; 0 uses

_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17: ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.q = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.r = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.q, %i.r
  %spec.store.select27 = select i1 %.not.i.i16, ptr %i.q, ptr %i.r
  store ptr %spec.store.select27, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.s = load double, ptr %i.a, align 8, !noalias !108
  %i.t = fadd double %i.s, 0.000000e+00
  %i.u = load <2 x double>, ptr %0, align 8, !noalias !108
  %i.v = fadd <2 x double> %i.u, <double 6.000000e-01, double -6.000000e-01>
  store <2 x double> %i.v, ptr %5, align 16, !alias.scope !108
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.t, ptr %i.w, align 16, !alias.scope !108
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp3IFC25IntersectsBoundaryProfileERK10aiVector3tIdES4_RKSt6vectorIS2_SaIS2_EEbRS5_ISt4pairImS2_ESaISB_EEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = load ptr, ptr %2, align 8                ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit: ; preds = %bb.b, %bb.c
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr i64 %i.ah, 5
  %i.aj = and i64 %i.ai, 1
  %i.ak = ptrtoint ptr %i.q to i64
  %i.al = ptrtoint ptr %i.r to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr i64 %i.am, 5
  %i.ao = and i64 %i.an, 1
  %i.ap = add nuw nsw i64 %i.ao, %i.aj
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = sub i64 %i.aq, %i.aa
  %i.as = lshr i64 %i.ar, 5
  %i.at = and i64 %i.as, 1
  %i.au = add nuw nsw i64 %i.ap, %i.at
  %i.av = icmp samesign ugt i64 %i.au, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %i.av

bb.d:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.g

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.g

bb.f:                                             ; preds = %_ZSt8_DestroyIPSt4pairIm10aiVector3tIdEES3_EvT_S5_RSaIT0_E.exit.i.i17
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.f ], [ %i.ax, %bb.e ], [ %i.aw, %bb.d ]
  %i.az = load ptr, ptr %2, align 8               ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EED2Ev.exit20: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(392) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %class.aiVector3t, align 8          ; 9 uses
  %5 = alloca %class.aiVector3t, align 16         ; 12 uses
  %6 = alloca %"class.Assimp::STEP::EXPRESS::ENUMERATION", align 8 ; 11 uses
  %7 = alloca %class.aiVector3t, align 16         ; 8 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 16 uses
  %9 = alloca %class.aiMatrix4x4t, align 16       ; 21 uses
  %10 = alloca %"class.std::vector", align 8      ; 12 uses
  %11 = alloca %"class.std::vector", align 8      ; 21 uses
  %12 = alloca %class.aiVector3t, align 8         ; 7 uses
  %13 = alloca %class.aiVector3t, align 16        ; 6 uses
  %14 = alloca %"class.std::vector.40", align 8   ; 13 uses
  %15 = alloca %class.aiVector3t, align 16        ; 6 uses
  %16 = alloca %class.aiVector3t, align 16        ; 6 uses
  %17 = alloca %class.aiVector3t, align 8         ; 7 uses
  %18 = alloca %"class.std::vector", align 8      ; 18 uses
  %.sroa.0547 = alloca %"struct.std::_Tuple_impl.81", align 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = tail call noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x310IfcSurfaceEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
end_hunk_0
