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
  %.not246 = icmp eq i64 %i.f, 24
  br i1 %.not246, label %.lr.ph.peel, label %.lr.ph.preheader.split

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
  %6 = insertelement <2 x double> poison, double %i.as, i64 1
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
  %i.ci = load <2 x double>, ptr %i.ch, align 8, !noalias !80
  %i.cj = load <2 x double>, ptr %i.cd, align 8, !noalias !80 ; 5 uses
  %i.ck = fsub <2 x double> %i.ci, %i.cj          ; 4 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 0 ; 6 uses
  %i.cm = fneg double %i.cl                       ; 2 uses
  %i.cn = extractelement <2 x double> %i.ck, i64 1 ; 7 uses
  %i.co = fmul double %i.an, %i.cn
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.as, double %i.co) ; 3 uses
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp olt double %i.cq, f0x3EB0C6F7A0000000
  br i1 %i.cr, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !noalias !80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !noalias !80 ; 3 uses
  %i.cw = fmul double %i.cn, %i.cn
  %i.cx = load double, ptr %0, align 8            ; 5 uses
  %i.cy = load double, ptr %i.aq, align 8         ; 5 uses
  %i.cz = extractelement <2 x double> %i.cj, i64 1 ; 5 uses
  %i.da = fsub double %i.cz, %i.cy
  %i.db = fneg double %i.da                       ; 2 uses
  %i.dc = fmul double %i.an, %i.db
  %7 = fsub double %i.ct, %i.cv                   ; 4 uses
  %8 = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cl, double %i.cw)
  %9 = insertelement <2 x double> %6, double %7, i64 0
  %i.dd = insertelement <2 x double> poison, double %8, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1
  %10 = load double, ptr %i.av, align 8, !noalias !83
  %11 = load double, ptr %1, align 8              ; 2 uses
  %12 = load double, ptr %i.ao, align 8           ; 2 uses
  %13 = fsub double %12, %i.cz
  %14 = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.df = insertelement <2 x double> %14, double %11, i64 0
  %i.dg = insertelement <2 x double> %i.cj, double %i.cx, i64 1
  %15 = fsub <2 x double> %i.df, %i.dg            ; 2 uses
  %16 = insertelement <2 x double> %15, double %7, i64 0
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %9, <2 x double> %i.de) ; 2 uses
  %18 = insertelement <2 x double> %17, double 1.000000e+00, i64 0
  %19 = insertelement <2 x double> %17, double %i.cp, i64 1
  %20 = fdiv <2 x double> %18, %19                ; 3 uses
  %i.dh = insertelement <2 x double> poison, double %i.db, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %13, i64 1
  %i.dj = fmul <2 x double> %i.ck, %i.di
  %i.dk = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %15, <2 x double> %i.dk) ; 2 uses
  %i.dm = extractelement <2 x double> %i.dl, i64 1
  %i.dn = fdiv double %i.dm, %i.cp                ; 5 uses
  %i.do = fmul double %i.an, %i.dn
  %i.dp = fmul double %i.as, %i.dn
  %i.dq = fmul double %i.ax, %i.dn
  %i.dr = fadd double %i.cx, %i.do                ; 3 uses
  %i.ds = fadd double %i.cy, %i.dp                ; 3 uses
  %i.dt = fadd double %10, %i.dq                  ; 2 uses
  %i.du = extractelement <2 x double> %20, i64 0  ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %20, %i.dl
  %i.dv = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dw = fcmp olt double %i.dv, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.dw, double %i.dv, double 1.000000e+00 ; 2 uses
  %i.dx = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.dx, double %.sroa.speculated138, double 0.000000e+00 ; 3 uses
  %i.dy = fmul double %i.cl, %.sroa.speculated
  %i.dz = fmul double %i.cn, %.sroa.speculated
  %21 = fmul double %7, %.sroa.speculated
  %22 = extractelement <2 x double> %i.cj, i64 0  ; 3 uses
  %i.ea = fadd double %22, %i.dy
  %i.eb = fadd double %i.cz, %i.dz
  %i.ec = fadd double %i.cv, %21                  ; 2 uses
  %i.ed = fsub double %i.ea, %11                  ; 2 uses
  %i.ee = fsub double %i.eb, %12                  ; 2 uses
  %i.ef = fmul double %i.ee, %i.ee
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.ef)
  %i.eh = tail call noundef double @llvm.fmuladd.f64(double %i.ec, double %i.ec, double %i.eg)
  %i.ei = fcmp uge double %i.eh, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.ei
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.ej = fsub double %i.cx, %22
  %i.ek = fsub double %i.cy, %i.cz
  %i.el = fmul double %i.cn, %i.ek
  %i.em = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.ej, double %i.el)
  %i.en = fmul double %i.du, %i.em                ; 2 uses
  %i.eo = fcmp olt double %i.en, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.eo, double %i.en, double 1.000000e+00 ; 2 uses
  %i.ep = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.ep, double %.sroa.speculated159, double 0.000000e+00 ; 3 uses
  %i.eq = fmul double %7, %.sroa.speculated148
  %i.er = fadd double %i.cv, %i.eq                ; 2 uses
  %i.es = fmul double %i.cl, %.sroa.speculated148
  %i.et = fadd double %22, %i.es
  %i.eu = fsub double %i.et, %i.cx                ; 2 uses
  %i.ev = fmul double %i.cn, %.sroa.speculated148
  %i.ew = fadd double %i.cz, %i.ev
  %i.ex = fsub double %i.ew, %i.cy                ; 2 uses
  %i.ey = fmul double %i.ex, %i.ex
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.eu, double %i.ey)
  %i.fa = tail call noundef double @llvm.fmuladd.f64(double %i.er, double %i.er, double %i.ez)
  %i.fb = fcmp olt double %i.fa, f0x3D719799812DEA11
  br i1 %i.fb, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.fc = fmul double %.0.lcssa, %i.cn
  %i.fd = fmul double %.0.lcssa, %i.cm
  %i.fe = fmul double %i.as, %i.fd
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fc, double %i.an, double %i.fe)
  %i.fg = tail call noundef double @llvm.fmuladd.f64(double %i.ba, double %i.ax, double %i.ff)
  %i.fh = fcmp ule double %i.fg, 0.000000e+00
  %i.fi = xor i1 %3, %i.fh
  br i1 %i.fi, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fj = load ptr, ptr %4, align 8               ; 5 uses
  %i.fk = load ptr, ptr %i.ay, align 8            ; 9 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk                ; 2 uses
  br i1 %i.fl, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -32
  %i.fn = load i64, ptr %i.fm, align 8
  %i.fo = add i64 %.0214218, -1
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fq = getelementptr inbounds i8, ptr %i.fk, i64 -24
  %i.fr = load double, ptr %i.fq, align 8, !noalias !86
  %i.fs = fsub double %i.fr, %i.cx                ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fk, i64 -16
  %i.fu = load double, ptr %i.ft, align 8, !noalias !86
  %i.fv = fsub double %i.fu, %i.cy                ; 2 uses
  %i.fw = fmul double %i.fv, %i.fv
  %i.fx = tail call noundef double @llvm.fmuladd.f64(double %i.fs, double %i.fs, double %i.fw)
  %i.fy = fcmp uge double %i.fx, 1.000000e-10
  br i1 %i.fy, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.fz = load ptr, ptr %i.az, align 8
  %.not.i = icmp eq ptr %i.fk, %i.fz
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0214218, ptr %i.fk, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.gb = load ptr, ptr %i.ay, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  store ptr %i.gc, ptr %i.ay, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.gd = ptrtoint ptr %i.fk to i64
  %i.ge = ptrtoint ptr %i.fj to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775776
  br i1 %i.gg, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gh = ashr exact i64 %i.gf, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = tail call i64 @llvm.umin.i64(i64 %i.gi, i64 288230376151711743)
  %i.gl = select i1 %i.gj, i64 288230376151711743, i64 %i.gk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.gm = shl nuw nsw i64 %i.gl, 5
  %i.gn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #23 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gf ; 2 uses
  store i64 %.0214218, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.fl, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i.i.i ], [ %i.gn, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i ], [ %i.fj, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !89
  %i.gq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gq, %i.fk
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gn, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gr, %.lr.ph.i.i.i.i.i ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.gf) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.gn, ptr %4, align 8
  store ptr %i.gs, ptr %i.ay, align 8
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gn, i64 %i.gl
  store ptr %i.gt, ptr %i.az, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.d
  %i.gu = fmul double %i.du, f0xBEB0C6F7A0000000
  %i.gv = extractelement <2 x double> %20, i64 1  ; 2 uses
  %i.gw = fcmp ult double %i.gv, %i.gu
  br i1 %i.gw, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.du, double f0x3EB0C6F7A0000000, double 1.000000e+00)
  %i.gy = fcmp ole double %i.gv, %i.gx
  %i.gz = fcmp oge double %i.dn, 0.000000e+00
  %or.cond4 = and i1 %i.gy, %i.gz
  %i.ha = fcmp ole double %i.dn, 1.000000e+00
  %or.cond6 = or i1 %5, %i.ha
  %or.cond93 = and i1 %or.cond4, %or.cond6
  br i1 %or.cond93, label %bb.p, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.hb = load ptr, ptr %4, align 8               ; 5 uses
  %i.hc = load ptr, ptr %i.ay, align 8            ; 11 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc                ; 2 uses
  br i1 %i.hd, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.he = getelementptr inbounds i8, ptr %i.hc, i64 -32
  %i.hf = load i64, ptr %i.he, align 8
  %i.hg = add i64 %.0214218, -1
  %i.hh = icmp eq i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hi = getelementptr inbounds i8, ptr %i.hc, i64 -24
  %i.hj = load double, ptr %i.hi, align 8, !noalias !94
  %i.hk = fsub double %i.hj, %i.dr                ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.hc, i64 -16
  %i.hm = load double, ptr %i.hl, align 8, !noalias !94
  %i.hn = fsub double %i.hm, %i.ds                ; 2 uses
  %i.ho = fmul double %i.hn, %i.hn
  %i.hp = tail call noundef double @llvm.fmuladd.f64(double %i.hk, double %i.hk, double %i.ho)
  %i.hq = fcmp uge double %i.hp, 1.000000e-10
  br i1 %i.hq, label %bb.s, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.hr = load ptr, ptr %i.az, align 8
  %.not.i97 = icmp eq ptr %i.hc, %i.hr
  br i1 %.not.i97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.0214218, ptr %i.hc, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store double %i.dr, ptr %i.hs, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store double %i.ds, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store double %i.dt, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ht = load ptr, ptr %i.ay, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  store ptr %i.hu, ptr %i.ay, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.hv = ptrtoint ptr %i.hc to i64
  %i.hw = ptrtoint ptr %i.hb to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775776
  br i1 %i.hy, label %bb.v, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.u
  %i.hz = ashr exact i64 %i.hx, 5                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i99, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = tail call i64 @llvm.umin.i64(i64 %i.ia, i64 288230376151711743)
  %i.id = select i1 %i.ib, i64 288230376151711743, i64 %i.ic ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.id, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.ie = shl nuw nsw i64 %i.id, 5
  %i.if = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #23 ; 5 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx ; 4 uses
  store i64 %.0214218, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store double %i.dr, ptr %i.ih, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store double %i.ds, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.8.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store double %i.dt, ptr %.sroa.8.0..sroa_idx170, align 8
  br i1 %i.hd, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i102 ], [ %i.if, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i102 ], [ %i.hb, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i104, i64 32, i1 false), !alias.scope !97
  %i.ii = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 32 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.ii, %i.hc
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !93

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.if, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ], [ %i.ij, %.lr.ph.i.i.i.i.i102 ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 32
  %.not.i34.i.i108 = icmp eq ptr %i.hb, null
  br i1 %.not.i34.i.i108, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hx) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109: ; preds = %bb.w, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  store ptr %i.if, ptr %4, align 8
  store ptr %i.ik, ptr %i.ay, align 8
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.if, i64 %i.id
  store ptr %i.il, ptr %i.az, align 8
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC49ProcessPolygonalBoundedBooleanHalfSpaceDifferenceEPKNS0_10Schema_2x328IfcPolygonalBoundedHalfSpaceERNS0_8TempMeshERKS5_RNS0_14ConversionDataE:bb.a
  %i.aih = getelementptr inbounds nuw [24 x i8], ptr %i.ahr, i64 %.0140 ; 2 uses
  %i.aii = load <2 x double>, ptr %i.aih, align 8 ; 3 uses
  %.sroa.8512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aih, i64 16
  %.sroa.8512.0.copyload = load double, ptr %.sroa.8512.0..sroa_idx, align 8
  %i.aij = getelementptr inbounds nuw [24 x i8], ptr %i.ahr, i64 %i.aig ; 2 uses
  %i.aik = load <2 x double>, ptr %i.aij, align 8 ; 11 uses
  %.sroa.13503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aij, i64 16
  %.sroa.13503.0.copyload = load double, ptr %.sroa.13503.0..sroa_idx, align 8
  %i.ail = insertelement <2 x double> poison, double %.sroa.8512.0.copyload, i64 0
  %i.aim = insertelement <2 x double> %i.ail, double %.sroa.13503.0.copyload, i64 1
  br i1 %i.acd, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ain = shufflevector <2 x double> %i.aii, <2 x double> %i.aik, <2 x i32> <i32 0, i32 2>
  %i.aio = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aip = fsub <2 x double> %i.ain, %i.aio
  %i.aiq = fmul <2 x double> %i.aci, %i.aip
  %i.air = fdiv <2 x double> %i.aiq, %i.ace
  %i.ais = insertelement <2 x double> poison, double %.sroa.17.0, i64 0
  %i.ait = shufflevector <2 x double> %i.ais, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aiu = fadd <2 x double> %i.ait, %i.air
  %i.aiv = shufflevector <2 x double> %i.aii, <2 x double> %i.aik, <2 x i32> <i32 1, i32 3>
  %i.aiw = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aix = fsub <2 x double> %i.aiv, %i.aiw
  %i.aiy = fmul <2 x double> %i.ack, %i.aix
  %i.aiz = fdiv <2 x double> %i.aiy, %i.ace
  %i.aja = fadd <2 x double> %i.aiu, %i.aiz
  br label %bb.dj

.loopexit781:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i344
  %lpad.loopexit783 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp782:                            ; preds = %bb.cx
  %lpad.loopexit.split-lp784 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ajb = phi <2 x double> [ %i.aja, %bb.di ], [ %i.aim, %bb.dh ] ; 3 uses
  %i.ajc = fsub <2 x double> %i.aik, %i.aii       ; 3 uses
  %i.ajd = extractelement <2 x double> %i.ajb, i64 0
  %i.aje = extractelement <2 x double> %i.ajb, i64 1 ; 5 uses
  %i.ajf = fsub double %i.aje, %i.ajd             ; 2 uses
  %i.ajg = load double, ptr %i.fn, align 16, !noalias !193 ; 2 uses
  %i.ajh = load double, ptr %i.fm, align 8, !noalias !193
  %i.aji = load <2 x double>, ptr %7, align 16, !noalias !193 ; 2 uses
  %i.ajj = shufflevector <2 x double> %i.aji, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajk = insertelement <2 x double> %i.ajj, double %i.ajg, i64 0
  %i.ajl = fneg <2 x double> %i.ajk
  %i.ajm = fneg double %i.ajh
  %i.ajn = fmul <2 x double> %i.ajc, %i.ajl
  %i.ajo = fmul double %i.ajf, %i.ajm
  %i.ajp = shufflevector <2 x double> %i.ajc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ajq = insertelement <2 x double> %i.ajp, double %i.ajf, i64 0
  %i.ajr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ajq, <2 x double> %i.aji, <2 x double> %i.ajn) ; 5 uses
  %i.ajs = extractelement <2 x double> %i.ajc, i64 1
  %i.ajt = call double @llvm.fmuladd.f64(double %i.ajs, double %i.ajg, double %i.ajo) ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ajr, %i.ajr
  %i.aju = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ajv = call double @llvm.fmuladd.f64(double %i.ajt, double %i.ajt, double %i.aju)
  %i.ajw = extractelement <2 x double> %i.ajr, i64 1 ; 2 uses
  %i.ajx = call noundef double @llvm.fmuladd.f64(double %i.ajw, double %i.ajw, double %i.ajv) ; 2 uses
  %i.ajy = fcmp oeq double %i.ajx, 0.000000e+00
  br i1 %i.ajy, label %bb.dk, label %_ZN10aiVector3tIdEdVEd.exit.i375

_ZN10aiVector3tIdEdVEd.exit.i375:                 ; preds = %bb.dj
  %sqrt.i.i376 = call noundef double @llvm.sqrt.f64(double %i.ajx)
  %i.ajz = fdiv double 1.000000e+00, %sqrt.i.i376 ; 2 uses
  %i.aka = fmul double %i.ajt, %i.ajz
  %i.akb = insertelement <2 x double> poison, double %i.ajz, i64 0
  %i.akc = shufflevector <2 x double> %i.akb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akd = fmul <2 x double> %i.ajr, %i.akc
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZN10aiVector3tIdEdVEd.exit.i375
  %.sroa.0487.0 = phi double [ %i.ajt, %bb.dj ], [ %i.aka, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 2 uses
  %i.ake = phi <2 x double> [ %i.ajr, %bb.dj ], [ %i.akd, %_ZN10aiVector3tIdEdVEd.exit.i375 ] ; 3 uses
  %i.akf = shufflevector <2 x double> %i.ake, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.akg = insertelement <2 x double> %i.akf, double %.sroa.0487.0, i64 1
  %i.akh = fmul <2 x double> %i.akg, %i.acg
  %i.aki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ake, <2 x double> %i.abq, <2 x double> %i.akh) ; 5 uses
  %i.akj = shufflevector <2 x double> %i.ake, <2 x double> %i.aki, <2 x i32> <i32 0, i32 3>
  %i.akk = shufflevector <2 x double> %i.aki, <2 x double> %i.acl, <2 x i32> <i32 3, i32 1>
  %i.akl = fmul <2 x double> %i.akj, %i.akk
  %i.akm = shufflevector <2 x double> %i.aki, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.akn = insertelement <2 x double> %i.akm, double %.sroa.0487.0, i64 0
  %i.ako = insertelement <2 x double> %i.akm, double %i.abr, i64 0
  %i.akp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.akn, <2 x double> %i.ako, <2 x double> %i.akl) ; 2 uses
  %i.akq = extractelement <2 x double> %i.akp, i64 0 ; 4 uses
  %i.akr = extractelement <2 x double> %i.akp, i64 1
  %i.aks = call noundef double @llvm.fmuladd.f64(double %i.akq, double %i.akq, double %i.akr) ; 2 uses
  %i.akt = fcmp oeq double %i.aks, 0.000000e+00
  br i1 %i.akt, label %bb.dl, label %_ZN10aiVector3tIdEdVEd.exit.i378

_ZN10aiVector3tIdEdVEd.exit.i378:                 ; preds = %bb.dk
  %sqrt.i.i379 = call noundef double @llvm.sqrt.f64(double %i.aks)
  %i.aku = fdiv double 1.000000e+00, %sqrt.i.i379 ; 2 uses
  %i.akv = insertelement <2 x double> poison, double %i.aku, i64 0
  %i.akw = shufflevector <2 x double> %i.akv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akx = fmul <2 x double> %i.aki, %i.akw
  %i.aky = fmul double %i.akq, %i.aku
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %_ZN10aiVector3tIdEdVEd.exit.i378
  %.sroa.11.0 = phi double [ %i.akq, %bb.dk ], [ %i.aky, %_ZN10aiVector3tIdEdVEd.exit.i378 ]
  %i.akz = phi <2 x double> [ %i.aki, %bb.dk ], [ %i.akx, %_ZN10aiVector3tIdEdVEd.exit.i378 ] ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  %i.alb = fmul double %i.ach, %i.ala             ; 4 uses
  %i.alc = extractelement <2 x double> %i.akz, i64 1
  %i.ald = fmul double %i.ach, %i.alc             ; 4 uses
  %i.ale = fmul double %i.ach, %.sroa.11.0        ; 4 uses
  br i1 %i.acd, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %foldExtExtBinop1363 = fsub <2 x double> %i.aik, %i.ahw
  %i.alf = extractelement <2 x double> %foldExtExtBinop1363, i64 0 ; 2 uses
  %foldExtExtBinop1365 = fsub <2 x double> %i.aik, %i.ahw ; 2 uses
  %i.alg = fsub double %i.aje, %.sroa.17.0        ; 2 uses
  %foldExtExtBinop1367 = fmul <2 x double> %foldExtExtBinop1365, %foldExtExtBinop1365
  %i.alh = extractelement <2 x double> %foldExtExtBinop1367, i64 1
  %i.ali = call double @llvm.fmuladd.f64(double %i.alf, double %i.alf, double %i.alh)
  %i.alj = call noundef double @llvm.fmuladd.f64(double %i.alg, double %i.alg, double %i.ali)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.alj) ; 2 uses
  %i.alk = fcmp olt double %sqrt.i, 1.000000e+10
  %.sroa.speculated = select i1 %i.alk, double %sqrt.i, double 1.000000e+10
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.0750 = phi double [ %.sroa.speculated, %bb.dm ], [ 1.000000e+10, %bb.dl ] ; 3 uses
  %i.all = load double, ptr %9, align 16, !noalias !196 ; 2 uses
  %i.alm = load double, ptr %i.ahv, align 8, !noalias !196 ; 3 uses
  %i.aln = load double, ptr %i.et, align 8, !noalias !196 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.alp = load double, ptr %i.alo, align 8, !noalias !196 ; 3 uses
  %i.alq = fmul double %i.aln, %i.alp
  %i.alr = call double @llvm.fmuladd.f64(double %i.all, double %i.alm, double %i.alq)
  %i.als = load double, ptr %i.eu, align 16, !noalias !196 ; 2 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.ahv, i64 16
  %i.alu = load double, ptr %i.alt, align 8, !noalias !196 ; 3 uses
  %i.alv = call double @llvm.fmuladd.f64(double %i.als, double %i.alu, double %i.alr)
  %i.alw = load double, ptr %i.ev, align 8, !noalias !196 ; 2 uses
  %i.alx = fadd double %i.alv, %i.alw
  %i.aly = load double, ptr %i.ew, align 16, !noalias !196 ; 2 uses
  %i.alz = load double, ptr %i.ex, align 8, !noalias !196 ; 2 uses
  %i.ama = fmul double %i.alp, %i.alz
  %i.amb = call double @llvm.fmuladd.f64(double %i.aly, double %i.alm, double %i.ama)
  %i.amc = load double, ptr %i.ey, align 16, !noalias !196 ; 2 uses
  %i.amd = call double @llvm.fmuladd.f64(double %i.amc, double %i.alu, double %i.amb)
  %i.ame = load double, ptr %i.ez, align 8, !noalias !196 ; 2 uses
  %i.amf = fadd double %i.ame, %i.amd
  %i.amg = load double, ptr %i.fa, align 16, !noalias !196 ; 2 uses
  %i.amh = load double, ptr %i.fb, align 8, !noalias !196 ; 2 uses
  %i.ami = fmul double %i.alp, %i.amh
  %i.amj = call double @llvm.fmuladd.f64(double %i.amg, double %i.alm, double %i.ami)
  %i.amk = load double, ptr %i.fc, align 16, !noalias !196 ; 2 uses
  %i.aml = call double @llvm.fmuladd.f64(double %i.amk, double %i.alu, double %i.amj)
  %i.amm = load double, ptr %i.fd, align 8, !noalias !196 ; 2 uses
  %i.amn = fadd double %i.amm, %i.aml
  %i.amo = extractelement <2 x double> %i.ahw, i64 0 ; 2 uses
  %i.amp = fsub double %i.alx, %i.amo             ; 2 uses
  %i.amq = extractelement <2 x double> %i.ahw, i64 1 ; 2 uses
  %i.amr = fsub double %i.amf, %i.amq             ; 2 uses
  %i.ams = fsub double %i.amn, %.sroa.17.0        ; 2 uses
  %i.amt = fmul double %i.ald, %i.amr
  %i.amu = call double @llvm.fmuladd.f64(double %i.amp, double %i.alb, double %i.amt)
  %i.amv = call noundef double @llvm.fmuladd.f64(double %i.ams, double %i.ale, double %i.amu) ; 6 uses
  %i.amw = fcmp ule double %i.amv, f0xBEB0C6F7A0B5ED8D
  %i.amx = fcmp ugt double %i.amv, %.0750
  %or.cond = or i1 %i.amw, %i.amx
  br i1 %or.cond, label %.critedge8, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.amy = fmul double %i.alb, %i.amv
  %i.amz = fmul double %i.ald, %i.amv
  %i.ana = fmul double %i.ale, %i.amv
  %i.anb = fsub double %i.amp, %i.amy             ; 2 uses
  %i.anc = fsub double %i.amr, %i.amz             ; 2 uses
  %i.and = fsub double %i.ams, %i.ana             ; 2 uses
  %i.ane = fmul double %i.anc, %i.anc
  %i.anf = call double @llvm.fmuladd.f64(double %i.anb, double %i.anb, double %i.ane)
  %i.ang = call noundef double @llvm.fmuladd.f64(double %i.and, double %i.and, double %i.anf)
  %i.anh = fcmp olt double %i.ang, 1.000000e-10
  br i1 %i.anh, label %bb.dp, label %.critedge8

bb.dp:                                            ; preds = %bb.do
  br label %.critedge8

bb.dq:                                            ; preds = %.noexc388, %.noexc387, %bb.dy, %bb.dx
  %i.ani = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.critedge8:                                       ; preds = %bb.dn, %bb.dp, %bb.do
  %.1751 = phi double [ %.0750, %bb.do ], [ %i.amv, %bb.dp ], [ %.0750, %bb.dn ]
  %.1 = phi i64 [ -1, %bb.do ], [ %i.ahq, %bb.dp ], [ -1, %bb.dn ] ; 2 uses
  br i1 %.not985, label %._crit_edge968, label %.lr.ph967.preheader

.lr.ph967.preheader:                              ; preds = %.critedge8
  %i.anj = insertelement <2 x double> poison, double %i.amk, i64 0
  %i.ank = insertelement <2 x double> poison, double %i.alb, i64 1
  br label %.lr.ph967

._crit_edge968:                                   ; preds = %.critedge10, %.critedge8
  %.2139.lcssa = phi i64 [ %.1, %.critedge8 ], [ %.3, %.critedge10 ] ; 4 uses
  %i.anl = icmp eq i64 %.2139.lcssa, -1
  br i1 %i.anl, label %bb.dt, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.lr.ph967:                                        ; preds = %.lr.ph967.preheader, %.critedge10
  %.0966 = phi i64 [ %i.aot, %.critedge10 ], [ 0, %.lr.ph967.preheader ] ; 3 uses
  %.2139965 = phi i64 [ %.3, %.critedge10 ], [ %.1, %.lr.ph967.preheader ] ; 2 uses
  %.2752964 = phi double [ %.3753, %.critedge10 ], [ %.1751, %.lr.ph967.preheader ] ; 3 uses
  %i.anm = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0611.0.lcssa, i64 %.0966 ; 3 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 8
  %i.ano = load double, ptr %i.ann, align 8, !noalias !199 ; 3 uses
  %i.anp = getelementptr inbounds nuw i8, ptr %i.anm, i64 16
  %i.anq = load double, ptr %i.anp, align 8, !noalias !199 ; 3 uses
  %i.anr = fmul double %i.aln, %i.anq
  %i.ans = call double @llvm.fmuladd.f64(double %i.all, double %i.ano, double %i.anr)
  %i.ant = getelementptr inbounds nuw i8, ptr %i.anm, i64 24
  %i.anu = load double, ptr %i.ant, align 8, !noalias !199 ; 3 uses
  %19 = call double @llvm.fmuladd.f64(double %i.als, double %i.anu, double %i.ans)
  %i.anv = fadd double %i.alw, %19
  %i.anw = fmul double %i.alz, %i.anq
  %20 = call double @llvm.fmuladd.f64(double %i.aly, double %i.ano, double %i.anw)
  %21 = call double @llvm.fmuladd.f64(double %i.amc, double %i.anu, double %20)
  %22 = fadd double %i.ame, %21
  %23 = fmul double %i.amh, %i.anq
  %24 = fsub double %i.anv, %i.amo                ; 2 uses
  %i.anx = fsub double %22, %i.amq                ; 2 uses
  %25 = fmul double %i.ald, %i.anx
  %26 = call double @llvm.fmuladd.f64(double %i.amg, double %i.ano, double %23)
  %i.any = insertelement <2 x double> %i.anj, double %24, i64 1
  %i.anz = insertelement <2 x double> %i.ank, double %i.anu, i64 0
  %27 = insertelement <2 x double> poison, double %26, i64 0
  %i.aoa = insertelement <2 x double> %27, double %25, i64 1
  %i.aob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.any, <2 x double> %i.anz, <2 x double> %i.aoa) ; 2 uses
  %i.aoc = extractelement <2 x double> %i.aob, i64 0
  %i.aod = fadd double %i.amm, %i.aoc
  %i.aoe = fsub double %i.aod, %.sroa.17.0        ; 2 uses
  %i.aof = extractelement <2 x double> %i.aob, i64 1
  %i.aog = call noundef double @llvm.fmuladd.f64(double %i.aoe, double %i.ale, double %i.aof) ; 6 uses
  %i.aoh = fcmp ule double %i.aog, f0xBEB0C6F7A0B5ED8D
  %i.aoi = fcmp ugt double %i.aog, %.2752964
  %or.cond241 = select i1 %i.aoh, i1 true, i1 %i.aoi
  br i1 %or.cond241, label %.critedge10, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph967
  %i.aoj = fmul double %i.alb, %i.aog
  %i.aok = fmul double %i.ald, %i.aog
  %i.aol = fmul double %i.ale, %i.aog
  %i.aom = fsub double %24, %i.aoj                ; 2 uses
  %i.aon = fsub double %i.anx, %i.aok             ; 2 uses
  %i.aoo = fsub double %i.aoe, %i.aol             ; 2 uses
  %i.aop = fmul double %i.aon, %i.aon
  %i.aoq = call double @llvm.fmuladd.f64(double %i.aom, double %i.aom, double %i.aop)
  %i.aor = call noundef double @llvm.fmuladd.f64(double %i.aoo, double %i.aoo, double %i.aoq)
  %i.aos = fcmp olt double %i.aor, 1.000000e-10
  br i1 %i.aos, label %bb.ds, label %.critedge10

bb.ds:                                            ; preds = %bb.dr
  br label %.critedge10

.critedge10:                                      ; preds = %.lr.ph967, %bb.dr, %bb.ds
  %.3753 = phi double [ %.2752964, %bb.dr ], [ %i.aog, %bb.ds ], [ %.2752964, %.lr.ph967 ]
  %.3 = phi i64 [ %.2139965, %bb.dr ], [ %.0966, %bb.ds ], [ %.2139965, %.lr.ph967 ] ; 2 uses
  %i.aot = add nuw i64 %.0966, 2                  ; 2 uses
  %i.aou = icmp ult i64 %i.aot, %i.ahq
  br i1 %i.aou, label %.lr.ph967, label %._crit_edge968, !llvm.loop !202

bb.dt:                                            ; preds = %._crit_edge968
  %i.aov = extractelement <2 x double> %i.aik, i64 1
  %i.aow = extractelement <2 x double> %i.aik, i64 0
  %i.aox = load <8 x double>, ptr %8, align 8, !noalias !203 ; 4 uses
  %i.aoy = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aoz = shufflevector <8 x double> %i.aox, <8 x double> poison, <2 x i32> <i32 1, i32 5>
  %i.apa = fmul <2 x double> %i.aoy, %i.aoz
  %i.apb = shufflevector <8 x double> %i.aox, <8 x double> poison, <2 x i32> <i32 0, i32 4>
  %i.apc = shufflevector <2 x double> %i.aik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.apb, <2 x double> %i.apc, <2 x double> %i.apa)
  %i.ape = shufflevector <8 x double> %i.aox, <8 x double> poison, <2 x i32> <i32 2, i32 6>
  %i.apf = shufflevector <2 x double> %i.ajb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.apg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ape, <2 x double> %i.apf, <2 x double> %i.apd)
  %i.aph = shufflevector <8 x double> %i.aox, <8 x double> poison, <2 x i32> <i32 3, i32 7>
  %i.api = fadd <2 x double> %i.aph, %i.apg       ; 2 uses
  %i.apj = load double, ptr %i.fi, align 8, !noalias !203
  %i.apk = load double, ptr %i.fj, align 8, !noalias !203
  %i.apl = fmul double %i.aov, %i.apk
  %i.apm = call double @llvm.fmuladd.f64(double %i.apj, double %i.aow, double %i.apl)
  %i.apn = load double, ptr %i.cl, align 8, !noalias !203
  %i.apo = call double @llvm.fmuladd.f64(double %i.apn, double %i.aje, double %i.apm)
  %i.app = load double, ptr %i.cm, align 8, !noalias !203
  %i.apq = fadd double %i.app, %i.apo             ; 2 uses
  %.not.i.i381 = icmp eq ptr %i.ahu, %i.aht
  br i1 %.not.i.i381, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store <2 x double> %i.api, ptr %i.ahu, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahu, i64 16
  store double %i.apq, ptr %.sroa.7.0..sroa_idx, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ahu, i64 24 ; 2 uses
  store ptr %i.apr, ptr %i.fo, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.aps = ptrtoint ptr %i.aht to i64
  %i.apt = ptrtoint ptr %i.ahv to i64
  %i.apu = sub i64 %i.aps, %i.apt                 ; 4 uses
  %i.apv = icmp eq i64 %i.apu, 9223372036854775800
  br i1 %i.apv, label %bb.dw, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
          to label %.noexc384 unwind label %.loopexit.split-lp

.noexc384:                                        ; preds = %bb.dw
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dv
  %i.apw = sdiv exact i64 %i.apu, 24              ; 3 uses
  %.sroa.speculated.i.i.i.i382 = call i64 @llvm.umax.i64(i64 %i.apw, i64 1)
  %i.apx = add nsw i64 %.sroa.speculated.i.i.i.i382, %i.apw ; 2 uses
  %i.apy = icmp ult i64 %i.apx, %i.apw
  %i.apz = call i64 @llvm.umin.i64(i64 %i.apx, i64 384307168202282325)
  %i.aqa = select i1 %i.apy, i64 384307168202282325, i64 %i.apz ; 3 uses
  %.not.i.i.i.i383 = icmp ne i64 %i.aqa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i383)
  %i.aqb = mul nuw nsw i64 %i.aqa, 24
  %i.aqc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqb) #23
          to label %.noexc385 unwind label %.loopexit ; 6 uses

.noexc385:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 %i.apu ; 2 uses
  store <2 x double> %i.api, ptr %i.aqd, align 8
  %.sroa.7.0..sroa_idx434 = getelementptr inbounds nuw i8, ptr %i.aqd, i64 16
  store double %i.apq, ptr %.sroa.7.0..sroa_idx434, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ahv, %i.aht
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc385, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.aqf, %.lr.ph.i.i.i.i.i.i ], [ %i.aqc, %.noexc385 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.aqe, %.lr.ph.i.i.i.i.i.i ], [ %i.ahv, %.noexc385 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !alias.scope !206
  %i.aqe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aqe, %i.aht
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc385
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aqc, %.noexc385 ], [ %i.aqf, %.lr.ph.i.i.i.i.i.i ]
  %i.aqg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.ahv, i64 noundef %i.apu) #24
  store ptr %i.aqc, ptr %18, align 8
  store ptr %i.aqg, ptr %i.fo, align 8
  %i.aqh = getelementptr inbounds nuw [24 x i8], ptr %i.aqc, i64 %i.aqa ; 2 uses
  store ptr %i.aqh, ptr %i.fp, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp:                               ; preds = %bb.dw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.du, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %._crit_edge968
  %i.aqi = phi ptr [ %i.aht, %._crit_edge968 ], [ %i.aqh, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aht, %bb.du ]
  %i.aqj = phi ptr [ %i.ahu, %._crit_edge968 ], [ %i.aqg, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.apr, %bb.du ] ; 4 uses
  %i.aqk = phi ptr [ %i.ahv, %._crit_edge968 ], [ %i.aqc, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ahv, %bb.du ] ; 2 uses
  %.sroa.17.1 = phi double [ %.sroa.17.0, %._crit_edge968 ], [ %i.aje, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aje, %bb.du ]
  %.1141 = phi i64 [ %.0140, %._crit_edge968 ], [ %i.aig, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aig, %bb.du ]
  %i.aql = phi <2 x double> [ %i.ahw, %._crit_edge968 ], [ %i.aik, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.aik, %bb.du ]
  %i.aqm = ptrtoint ptr %i.aqj to i64
  %i.aqn = ptrtoint ptr %i.aqk to i64
  %i.aqo = sub i64 %i.aqm, %i.aqn
  %i.aqp = sdiv exact i64 %i.aqo, 24
  %i.aqq = load ptr, ptr %.sroa.gep712, align 8
  %i.aqr = load ptr, ptr %11, align 8
  %i.aqs = ptrtoint ptr %i.aqq to i64
  %i.aqt = ptrtoint ptr %i.aqr to i64
  %i.aqu = sub i64 %i.aqs, %i.aqt
  %i.aqv = sdiv exact i64 %i.aqu, 24
  %i.aqw = load ptr, ptr %i.cc, align 8           ; 2 uses
  %i.aqx = load ptr, ptr %i.bt, align 8           ; 2 uses
  %i.aqy = ptrtoint ptr %i.aqw to i64
  %i.aqz = ptrtoint ptr %i.aqx to i64
  %i.ara = sub i64 %i.aqy, %i.aqz
  %i.arb = sdiv exact i64 %i.ara, 24
  %i.arc = add nsw i64 %i.arb, %i.aqv
  %i.ard = icmp ugt i64 %i.aqp, %i.arc
  br i1 %i.ard, label %bb.dx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit

bb.dx:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE9push_backEOS1_.exit
  %i.are = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc386 unwind label %bb.dq

.noexc386:                                        ; preds = %bb.dx
  br i1 %i.are, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %.noexc386
  %i.arf = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc387 unwind label %bb.dq

.noexc387:                                        ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.arg = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
          to label %.noexc388 unwind label %bb.dq

.noexc388:                                        ; preds = %.noexc387
  store ptr %i.arg, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger5errorIJPKcRA81_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.arf, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(81) @.str.4)
          to label %.noexc389 unwind label %bb.dq

.noexc389:                                        ; preds = %.noexc388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit, %.noexc389, %.noexc386
  %i.arh = phi ptr [ %i.aqj, %.noexc389 ], [ %i.aqj, %.noexc386 ], [ %i.ahu, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ]
  %.4 = phi i64 [ %.2139.lcssa, %.noexc389 ], [ %.2139.lcssa, %.noexc386 ], [ %.0138, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit ] ; 2 uses
  %.not209 = icmp ult i64 %.4, %i.ahq
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br i1 %.not209, label %bb.cn, label %bb.ea

bb.dz:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit781, %.loopexit.split-lp782, %.loopexit770, %.loopexit.split-lp771, %.loopexit776, %.loopexit.split-lp777, %bb.dq
  %.pn216.pn = phi { ptr, i32 } [ %i.ani, %bb.dq ], [ %lpad.loopexit.split-lp784, %.loopexit.split-lp782 ], [ %lpad.loopexit.split-lp779, %.loopexit.split-lp777 ], [ %lpad.loopexit.split-lp773, %.loopexit.split-lp771 ], [ %lpad.loopexit778, %.loopexit776 ], [ %lpad.loopexit772, %.loopexit770 ], [ %lpad.loopexit783, %.loopexit781 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0547)
  br label %bb.ee

bb.ea:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA81_KcEEEvDpOT_.exit.thread
  invoke void @_ZN6Assimp3IFC12WritePolygonERSt6vectorI10aiVector3tIdESaIS3_EERNS0_8TempMeshE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.eb unwind label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  %i.ari = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i390 = icmp eq ptr %i.ari, null
  br i1 %.not.i.i.i390, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.arj = load ptr, ptr %i.fp, align 8
  %i.ark = ptrtoint ptr %i.arj to i64
  %i.arl = ptrtoint ptr %i.ari to i64
  %i.arm = sub i64 %i.ark, %i.arl
  call void @_ZdlPvm(ptr noundef nonnull %i.ari, i64 noundef %i.arm) #24
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %bb.eb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br i1 %.not985, label %.critedge244, label %bb.cm, !llvm.loop !210

end_hunk_1
