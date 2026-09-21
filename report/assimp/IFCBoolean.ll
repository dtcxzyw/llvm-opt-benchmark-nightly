Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev:bb.a
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x312IfcDirectionE, i64 -1) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #22
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x312IfcDirectionEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
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
  %.not253 = icmp eq i64 %i.f, 24
  br i1 %.not253, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.h = add nsw i64 %i.g, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ay, %.lr.ph ] ; 3 uses
  %i.j = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bq, %.lr.ph ]
  %i.k = add nuw i64 %i.i, 1                      ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.g
  %i.m = select i1 %i.l, i64 0, i64 %i.k
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.m
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.i
  %i.p = load <2 x double>, ptr %i.n, align 8, !noalias !98 ; 2 uses
  %i.q = load <2 x double>, ptr %i.o, align 8, !noalias !98
  %i.r = fsub <2 x double> %i.p, %i.q             ; 2 uses
  %i.s = add i64 %i.i, 2
  %i.t = urem i64 %i.s, %i.g
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.t
  %i.v = load <2 x double>, ptr %i.u, align 8, !noalias !99
  %i.w = fsub <2 x double> %i.v, %i.p             ; 2 uses
  %i.x = extractelement <2 x double> %i.r, i64 0
  %i.y = fneg double %i.x
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = fmul double %i.z, %i.y
  %i.ab = extractelement <2 x double> %i.r, i64 1
  %i.ac = extractelement <2 x double> %i.w, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ac, double %i.aa)
  %i.ae = fadd double %i.j, %i.ad
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  %i.ag = select i1 %i.af, double 1.000000e+00, double -1.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.peel, %bb.a
  %.087.lcssa = phi double [ -1.000000e+00, %bb.a ], [ %i.ag, %.lr.ph.peel ] ; 3 uses
  %i.ah = load double, ptr %1, align 8, !noalias !100
  %i.ai = load double, ptr %0, align 8, !noalias !100
  %i.aj = fsub double %i.ah, %i.ai                ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load double, ptr %i.ak, align 8, !noalias !100
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load double, ptr %i.am, align 8, !noalias !100
  %i.ao = fsub double %i.al, %i.an                ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !noalias !100
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !noalias !100
  %i.at = fsub double %i.aq, %i.as                ; 2 uses
  br i1 %.not, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.aw = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.087.lcssa)
  %i.ax = insertelement <2 x double> poison, double %i.aj, i64 0
  %6 = insertelement <2 x i1> poison, i1 %5, i64 1
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %.086216 = phi i64 [ %i.ay, %.lr.ph ], [ 0, %.lr.ph.preheader.split ] ; 4 uses
  %.087215 = phi double [ %i.bq, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader.split ]
  %i.ay = add nuw i64 %.086216, 1                 ; 3 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ay
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.086216
  %i.bb = load <2 x double>, ptr %i.az, align 8, !noalias !98 ; 2 uses
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !noalias !98
  %i.bd = fsub <2 x double> %i.bb, %i.bc          ; 2 uses
  %i.be = add i64 %.086216, 2
  %i.bf = urem i64 %i.be, %i.g
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load <2 x double>, ptr %i.bg, align 8, !noalias !99
  %i.bi = fsub <2 x double> %i.bh, %i.bb          ; 2 uses
  %i.bj = extractelement <2 x double> %i.bd, i64 0
  %i.bk = fneg double %i.bj
  %i.bl = extractelement <2 x double> %i.bi, i64 1
  %i.bm = fmul double %i.bl, %i.bk
  %i.bn = extractelement <2 x double> %i.bd, i64 1
  %i.bo = extractelement <2 x double> %i.bi, i64 0
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bo, double %i.bm)
  %i.bq = fadd double %.087215, %i.bp             ; 2 uses
  %exitcond.not = icmp eq i64 %.086216, %i.h
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !81

._crit_edge220:                                   ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, %._crit_edge
  %i.br = load ptr, ptr %4, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = icmp ne ptr %i.br, %i.bt
  ret i1 %i.bu

bb.b:                                             ; preds = %.lr.ph219, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit
  %.0217 = phi i64 [ 0, %.lr.ph219 ], [ %i.bx, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit ] ; 8 uses
  %i.bv = load ptr, ptr %2, align 8               ; 2 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %.0217 ; 2 uses
  %i.bx = add nuw i64 %.0217, 1                   ; 4 uses
  %i.by = icmp eq i64 %i.bx, %i.g
  %i.bz = select i1 %i.by, i64 0, i64 %i.bx
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bv, i64 %i.bz ; 2 uses
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !noalias !102
  %i.cc = load <2 x double>, ptr %i.bw, align 8, !noalias !102 ; 6 uses
  %i.cd = fsub <2 x double> %i.cb, %i.cc          ; 11 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.cf = fneg double %i.ce                       ; 2 uses
  %i.cg = extractelement <2 x double> %i.cd, i64 1 ; 2 uses
  %i.ch = fmul double %i.aj, %i.cg
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ao, double %i.ch) ; 2 uses
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci)
  %i.ck = fcmp olt double %i.cj, f0x3EB0C6F7A0000000
  br i1 %i.ck, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cm = load double, ptr %i.cl, align 8, !noalias !102
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.co = load double, ptr %i.cn, align 8, !noalias !102 ; 3 uses
  %i.cp = fsub double %i.cm, %i.co                ; 4 uses
  %i.cq = load <2 x double>, ptr %0, align 8      ; 6 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 0 ; 2 uses
  %i.cs = extractelement <2 x double> %i.cq, i64 1 ; 2 uses
  %7 = fsub <2 x double> %i.cc, %i.cq             ; 2 uses
  %8 = shufflevector <2 x double> %i.ax, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %9 = fneg <2 x double> %7
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ct = fmul <2 x double> %8, %10
  %11 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x double> %i.cd, double %i.ao, i64 0
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> %i.cu, <2 x double> %i.ct)
  %13 = insertelement <2 x double> poison, double %i.ci, i64 0
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = fdiv <2 x double> %12, %14                ; 3 uses
  %i.cv = extractelement <2 x double> %15, i64 1  ; 4 uses
  %16 = fmul double %i.aj, %i.cv
  %17 = fmul double %i.ao, %i.cv
  %18 = fmul double %i.at, %i.cv
  %19 = fadd double %i.cr, %16                    ; 3 uses
  %20 = fadd double %i.cs, %17                    ; 3 uses
  %21 = load double, ptr %i.ar, align 8, !noalias !103
  %22 = fadd double %21, %18                      ; 2 uses
  %23 = load <2 x double>, ptr %1, align 8        ; 3 uses
  %24 = fsub <2 x double> %23, %i.cc              ; 2 uses
  %25 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %26 = shufflevector <2 x double> %i.cd, <2 x double> %24, <2 x i32> <i32 1, i32 3>
  %27 = fmul <2 x double> %25, %26
  %28 = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = shufflevector <2 x double> %i.cd, <2 x double> %24, <2 x i32> <i32 0, i32 2>
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %29, <2 x double> %27) ; 2 uses
  %i.cw = extractelement <2 x double> %30, i64 0
  %31 = tail call noundef double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double %i.cw)
  %32 = fdiv double 1.000000e+00, %31             ; 4 uses
  %i.cx = extractelement <2 x double> %30, i64 1
  %33 = fmul double %32, %i.cx                    ; 2 uses
  %i.cy = fcmp olt double %33, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.cy, double %33, double 1.000000e+00 ; 2 uses
  %i.cz = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.cz, double %.sroa.speculated138, double 0.000000e+00 ; 2 uses
  %i.da = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fmul <2 x double> %i.cd, %i.db
  %i.dd = fmul double %i.cp, %.sroa.speculated
  %i.de = fadd <2 x double> %i.cc, %i.dc          ; 2 uses
  %i.df = fadd double %i.co, %i.dd                ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.de, %23
  %34 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x double> %i.de, %23 ; 2 uses
  %foldExtExtBinop244 = fmul <2 x double> %foldExtExtBinop242, %foldExtExtBinop242
  %35 = extractelement <2 x double> %foldExtExtBinop244, i64 1
  %i.dg = tail call double @llvm.fmuladd.f64(double %34, double %34, double %35)
  %i.dh = tail call noundef double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.dg)
  %i.di = fcmp uge double %i.dh, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.di
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.dj = fsub <2 x double> %i.cq, %i.cc          ; 2 uses
  %foldExtExtBinop242.a = fmul <2 x double> %i.cd, %i.dj
  %i.dk = extractelement <2 x double> %foldExtExtBinop242.a, i64 1
  %i.dl = extractelement <2 x double> %i.dj, i64 0
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.dl, double %i.dk)
  %i.dn = fmul double %32, %i.dm                  ; 2 uses
  %i.do = fcmp olt double %i.dn, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.do, double %i.dn, double 1.000000e+00 ; 2 uses
  %i.dp = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.dp, double %.sroa.speculated159, double 0.000000e+00 ; 2 uses
  %i.dq = fmul double %i.cp, %.sroa.speculated148
  %i.dr = fadd double %i.co, %i.dq                ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %.sroa.speculated148, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul <2 x double> %i.cd, %i.dt
  %i.dv = fadd <2 x double> %i.cc, %i.du          ; 2 uses
  %foldExtExtBinop244.a = fsub <2 x double> %i.dv, %i.cq
  %i.dw = extractelement <2 x double> %foldExtExtBinop244.a, i64 0 ; 2 uses
  %foldExtExtBinop246 = fsub <2 x double> %i.dv, %i.cq ; 2 uses
  %foldExtExtBinop248 = fmul <2 x double> %foldExtExtBinop246, %foldExtExtBinop246
  %i.dx = extractelement <2 x double> %foldExtExtBinop248, i64 1
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dw, double %i.dx)
  %i.dz = tail call noundef double @llvm.fmuladd.f64(double %i.dr, double %i.dr, double %i.dy)
  %i.ea = fcmp olt double %i.dz, f0x3D719799812DEA11
  br i1 %i.ea, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.eb = fmul double %.087.lcssa, %i.cg
  %i.ec = fmul double %.087.lcssa, %i.cf
  %i.ed = fmul double %i.ao, %i.ec
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.aj, double %i.ed)
  %i.ef = tail call noundef double @llvm.fmuladd.f64(double %i.aw, double %i.at, double %i.ee)
  %i.eg = fcmp ule double %i.ef, 0.000000e+00
  %i.eh = xor i1 %3, %i.eg
  br i1 %i.eh, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ei = load ptr, ptr %4, align 8               ; 5 uses
  %i.ej = load ptr, ptr %i.au, align 8            ; 9 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej                ; 2 uses
  br i1 %i.ek, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -32
  %i.em = load i64, ptr %i.el, align 8
  %i.en = add i64 %.0217, -1
  %i.eo = icmp eq i64 %i.em, %i.en
  br i1 %i.eo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ep = getelementptr inbounds i8, ptr %i.ej, i64 -24
  %i.eq = load double, ptr %i.ep, align 8, !noalias !104
  %i.er = fsub double %i.eq, %i.cr                ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %i.et = load double, ptr %i.es, align 8, !noalias !104
  %i.eu = fsub double %i.et, %i.cs                ; 2 uses
  %i.ev = fmul double %i.eu, %i.eu
  %i.ew = tail call noundef double @llvm.fmuladd.f64(double %i.er, double %i.er, double %i.ev)
  %i.ex = fcmp uge double %i.ew, 1.000000e-10
  br i1 %i.ex, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ey = load ptr, ptr %i.av, align 8
  %.not.i = icmp eq ptr %i.ej, %i.ey
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0217, ptr %i.ej, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.fa = load ptr, ptr %i.au, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.fb, ptr %i.au, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fc = ptrtoint ptr %i.ej to i64
  %i.fd = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.fe = sub i64 %i.fc, %i.fd                    ; 3 uses
  %i.ff = icmp eq i64 %i.fe, 9223372036854775776
  br i1 %i.ff, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.fg = ashr exact i64 %i.fe, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 288230376151711743)
  %i.fk = select i1 %i.fi, i64 288230376151711743, i64 %i.fj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fl = shl nuw nsw i64 %i.fk, 5
  %i.fm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #23 ; 5 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe ; 2 uses
  store i64 %.0217, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.ek, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.fm, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i ], [ %i.ei, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !105
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fp, %i.ej
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fm, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fq, %.lr.ph.i.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %i.fs = load ptr, ptr %i.av, align 8
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = sub i64 %i.ft, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fu) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.fm, ptr %4, align 8
  store ptr %i.fr, ptr %i.au, align 8
  %i.fv = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.fv, ptr %i.av, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.d
  %i.fw = fmul double %32, f0xBEB0C6F7A0000000
  %i.fx = extractelement <2 x double> %15, i64 0
  %i.fy = fcmp ult double %i.fx, %i.fw
  br i1 %i.fy, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %36 = fcmp oge double %i.cv, 0.000000e+00
  %37 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %32, i64 0
  %38 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %37, <2 x double> <double f0x3EB0C6F7A0000000, double 0.000000e+00>, <2 x double> splat (double 1.000000e+00))
  %39 = fcmp ole <2 x double> %15, %38            ; 2 uses
  %40 = insertelement <2 x i1> %6, i1 %36, i64 0  ; 2 uses
  %41 = and <2 x i1> %40, %39
  %42 = or <2 x i1> %40, %39
  %43 = shufflevector <2 x i1> %41, <2 x i1> %42, <2 x i32> <i32 0, i32 3>
  %44 = bitcast <2 x i1> %43 to i2
  %45 = icmp eq i2 %44, -1
  br i1 %45, label %bb.p, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.fz = load ptr, ptr %4, align 8               ; 5 uses
  %i.ga = load ptr, ptr %i.au, align 8            ; 11 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga                ; 2 uses
  br i1 %i.gb, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 -32
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = add i64 %.0217, -1
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gg = getelementptr inbounds i8, ptr %i.ga, i64 -24
  %i.gh = load double, ptr %i.gg, align 8, !noalias !106
  %i.gi = fsub double %i.gh, %19                  ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %i.gk = load double, ptr %i.gj, align 8, !noalias !106
  %i.gl = fsub double %i.gk, %20                  ; 2 uses
  %i.gm = fmul double %i.gl, %i.gl
  %i.gn = tail call noundef double @llvm.fmuladd.f64(double %i.gi, double %i.gi, double %i.gm)
  %i.go = fcmp uge double %i.gn, 1.000000e-10
  br i1 %i.go, label %bb.s, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.gp = load ptr, ptr %i.av, align 8
  %.not.i97 = icmp eq ptr %i.ga, %i.gp
  br i1 %.not.i97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.0217, ptr %i.ga, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store double %19, ptr %i.gq, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store double %20, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store double %22, ptr %.sroa.8.0..sroa_idx, align 8
  %i.gr = load ptr, ptr %i.au, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store ptr %i.gs, ptr %i.au, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.gt = ptrtoint ptr %i.ga to i64
  %i.gu = ptrtoint ptr %i.fz to i64               ; 2 uses
  %i.gv = sub i64 %i.gt, %i.gu                    ; 3 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775776
  br i1 %i.gw, label %bb.v, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.u
  %i.gx = ashr exact i64 %i.gv, 5                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i99, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = tail call i64 @llvm.umin.i64(i64 %i.gy, i64 288230376151711743)
  %i.hb = select i1 %i.gz, i64 288230376151711743, i64 %i.ha ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.hb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.hc = shl nuw nsw i64 %i.hb, 5
  %i.hd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #23 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gv ; 4 uses
  store i64 %.0217, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store double %19, ptr %i.hf, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  store double %20, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.8.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store double %22, ptr %.sroa.8.0..sroa_idx170, align 8
  br i1 %i.gb, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i.i102 ], [ %i.hd, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i.i102 ], [ %i.fz, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i104, i64 32, i1 false), !alias.scope !107
  %i.hg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.hg, %i.ga
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.hd, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ], [ %i.hh, %.lr.ph.i.i.i.i.i102 ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 32
  %.not.i34.i.i108 = icmp eq ptr %i.fz, null
  br i1 %.not.i34.i.i108, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  %i.hj = load ptr, ptr %i.av, align 8
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = sub i64 %i.hk, %i.gu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.hl) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109: ; preds = %bb.w, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  store ptr %i.hd, ptr %4, align 8
  store ptr %i.hi, ptr %i.au, align 8
  %i.hm = getelementptr inbounds nuw [32 x i8], ptr %i.hd, i64 %i.hb
  store ptr %i.hm, ptr %i.av, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit: ; preds = %bb.r, %bb.c, %bb.o, %bb.n, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %bb.e, %bb.h, %bb.t, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, %bb.b
  %exitcond225.not = icmp eq i64 %i.bx, %i.g
  br i1 %exitcond225.not, label %._crit_edge220, label %bb.b, !llvm.loop !97
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !noalias !114
  %i.c = fadd double %i.b, 0.000000e+00
  %i.d = load <2 x double>, ptr %0, align 8, !noalias !114
  %i.e = fadd <2 x double> %i.d, <double 1.000000e+00, double 0.000000e+00>
  store <2 x double> %i.e, ptr %3, align 16, !alias.scope !114
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.c, ptr %i.f, align 16, !alias.scope !114
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.k = load double, ptr %i.a, align 8, !noalias !115
  %i.l = fadd double %i.k, 0.000000e+00
  %i.m = load <2 x double>, ptr %0, align 8, !noalias !115
  %i.n = fadd <2 x double> %i.m, <double 0.000000e+00, double 1.000000e+00>
  store <2 x double> %i.n, ptr %4, align 16, !alias.scope !115
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double %i.l, ptr %i.o, align 16, !alias.scope !115
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.s = load double, ptr %i.a, align 8, !noalias !116
  %i.t = fadd double %i.s, 0.000000e+00
  %i.u = load <2 x double>, ptr %0, align 8, !noalias !116
  %i.v = fadd <2 x double> %i.u, <double 6.000000e-01, double -6.000000e-01>
  store <2 x double> %i.v, ptr %5, align 16, !alias.scope !116
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.t, ptr %i.w, align 16, !alias.scope !116
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
  %4 = alloca %class.aiVector3t, align 16         ; 8 uses
  %5 = alloca %class.aiVector3t, align 16         ; 12 uses
  %6 = alloca %"class.Assimp::STEP::EXPRESS::ENUMERATION", align 8 ; 11 uses
  %7 = alloca %class.aiVector3t, align 16         ; 8 uses
  %8 = alloca %class.aiMatrix4x4t, align 8        ; 16 uses
  %9 = alloca %class.aiMatrix4x4t, align 16       ; 21 uses
  %10 = alloca %"class.std::vector", align 8      ; 12 uses
  %11 = alloca %"class.std::vector", align 8      ; 21 uses
  %12 = alloca %class.aiVector3t, align 16        ; 6 uses
  %13 = alloca %class.aiVector3t, align 16        ; 6 uses
  %14 = alloca %"class.std::vector.40", align 8   ; 13 uses
  %15 = alloca %class.aiVector3t, align 16        ; 6 uses
  %16 = alloca %class.aiVector3t, align 16        ; 6 uses
  %17 = alloca %class.aiVector3t, align 16        ; 6 uses
  %18 = alloca %"class.std::vector", align 8      ; 18 uses
  %.sroa.0547 = alloca %"struct.std::_Tuple_impl.81", align 8 ; 5 uses
end_hunk_0
