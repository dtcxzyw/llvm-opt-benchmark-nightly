Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/IFCBoolean?download=true
inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev:bb.a

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
  %.not257 = icmp eq i64 %i.f, 24
  br i1 %.not257, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.h = add nsw i64 %i.g, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ 0, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.j = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bi, %.lr.ph ]
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
  %6 = load double, ptr %1, align 8, !noalias !100
  %7 = load double, ptr %0, align 8, !noalias !100
  %8 = fsub double %6, %7                         ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load double, ptr %9, align 8, !noalias !100
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = load double, ptr %11, align 8, !noalias !100
  %13 = fsub double %10, %12                      ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !noalias !100
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !noalias !100
  %i.al = fsub double %i.ai, %i.ak                ; 2 uses
  br i1 %.not, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ao = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.087.lcssa)
  %14 = insertelement <2 x double> poison, double %8, i64 0
  %i.ap = insertelement <2 x i1> poison, i1 %5, i64 1
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %.086216 = phi i64 [ %i.aq, %.lr.ph ], [ 0, %.lr.ph.preheader.split ] ; 4 uses
  %.087215 = phi double [ %i.bi, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader.split ]
  %i.aq = add nuw i64 %.086216, 1                 ; 3 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.aq
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.086216
  %i.at = load <2 x double>, ptr %i.ar, align 8, !noalias !98 ; 2 uses
  %i.au = load <2 x double>, ptr %i.as, align 8, !noalias !98
  %i.av = fsub <2 x double> %i.at, %i.au          ; 2 uses
  %i.aw = add i64 %.086216, 2
  %i.ax = urem i64 %i.aw, %i.g
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.ax
  %i.az = load <2 x double>, ptr %i.ay, align 8, !noalias !99
  %i.ba = fsub <2 x double> %i.az, %i.at          ; 2 uses
  %i.bb = extractelement <2 x double> %i.av, i64 0
  %i.bc = fneg double %i.bb
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  %i.be = fmul double %i.bd, %i.bc
  %i.bf = extractelement <2 x double> %i.av, i64 1
  %i.bg = extractelement <2 x double> %i.ba, i64 0
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.bg, double %i.be)
  %i.bi = fadd double %.087215, %i.bh             ; 2 uses
  %exitcond.not = icmp eq i64 %.086216, %i.h
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !81

._crit_edge220:                                   ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, %._crit_edge
  %i.bj = load ptr, ptr %4, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp ne ptr %i.bj, %i.bl
  ret i1 %i.bm

bb.b:                                             ; preds = %.lr.ph219, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit
  %.0217 = phi i64 [ 0, %.lr.ph219 ], [ %i.bp, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit ] ; 8 uses
  %i.bn = load ptr, ptr %2, align 8               ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.0217 ; 2 uses
  %i.bp = add nuw i64 %.0217, 1                   ; 4 uses
  %i.bq = icmp eq i64 %i.bp, %i.g
  %i.br = select i1 %i.bq, i64 0, i64 %i.bp
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.br ; 2 uses
  %i.bt = load <2 x double>, ptr %i.bs, align 8, !noalias !102
  %i.bu = load <2 x double>, ptr %i.bo, align 8, !noalias !102 ; 6 uses
  %i.bv = fsub <2 x double> %i.bt, %i.bu          ; 11 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.bx = fneg double %i.bw                       ; 2 uses
  %i.by = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.bz = fmul double %8, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bx, double %13, double %i.bz) ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp olt double %i.cb, f0x3EB0C6F7A0000000
  br i1 %i.cc, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !noalias !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cg = load double, ptr %i.cf, align 8, !noalias !102 ; 3 uses
  %i.ch = fsub double %i.ce, %i.cg                ; 4 uses
  %i.ci = load <2 x double>, ptr %0, align 8      ; 6 uses
  %15 = extractelement <2 x double> %i.ci, i64 0  ; 2 uses
  %16 = extractelement <2 x double> %i.ci, i64 1  ; 2 uses
  %i.cj = fsub <2 x double> %i.bu, %i.ci          ; 2 uses
  %i.ck = shufflevector <2 x double> %14, <2 x double> %i.bv, <2 x i32> <i32 0, i32 2>
  %i.cl = fneg <2 x double> %i.cj
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> %i.bv, double %13, i64 0
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %17, <2 x double> %i.cn)
  %i.cq = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fdiv <2 x double> %i.cp, %i.cr          ; 3 uses
  %18 = extractelement <2 x double> %i.cs, i64 1  ; 4 uses
  %19 = fmul double %8, %18
  %20 = fmul double %13, %18
  %i.ct = fmul double %i.al, %18
  %21 = fadd double %15, %19                      ; 3 uses
  %22 = fadd double %16, %20                      ; 3 uses
  %i.cu = load double, ptr %i.aj, align 8, !noalias !103
  %i.cv = fadd double %i.cu, %i.ct                ; 2 uses
  %i.cw = load <2 x double>, ptr %1, align 8      ; 3 uses
  %i.cx = fsub <2 x double> %i.cw, %i.bu          ; 2 uses
  %i.cy = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cz = shufflevector <2 x double> %i.bv, <2 x double> %i.cx, <2 x i32> <i32 1, i32 3>
  %i.da = fmul <2 x double> %i.cy, %i.cz
  %i.db = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = shufflevector <2 x double> %i.bv, <2 x double> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dc, <2 x double> %i.da) ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0
  %i.df = tail call noundef double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.de)
  %i.dg = fdiv double 1.000000e+00, %i.df         ; 4 uses
  %i.dh = extractelement <2 x double> %i.dd, i64 1
  %i.di = fmul double %i.dg, %i.dh                ; 2 uses
  %i.dj = fcmp olt double %i.di, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.dj, double %i.di, double 1.000000e+00 ; 2 uses
  %i.dk = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.dk, double %.sroa.speculated138, double 0.000000e+00 ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %.sroa.speculated, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.bv, %i.dm
  %23 = fmul double %i.ch, %.sroa.speculated
  %i.do = fadd <2 x double> %i.bu, %i.dn          ; 2 uses
  %i.dp = fadd double %i.cg, %23                  ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.do, %i.cw
  %i.dq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop242 = fsub <2 x double> %i.do, %i.cw ; 2 uses
  %foldExtExtBinop244 = fmul <2 x double> %foldExtExtBinop242, %foldExtExtBinop242
  %i.dr = extractelement <2 x double> %foldExtExtBinop244, i64 1
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dq, double %i.dr)
  %i.dt = tail call noundef double @llvm.fmuladd.f64(double %i.dp, double %i.dp, double %i.ds)
  %i.du = fcmp uge double %i.dt, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.du
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.dv = fsub <2 x double> %i.ci, %i.bu          ; 2 uses
  %foldExtExtBinop246 = fmul <2 x double> %i.bv, %i.dv
  %i.dw = extractelement <2 x double> %foldExtExtBinop246, i64 1
  %i.dx = extractelement <2 x double> %i.dv, i64 0
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.dx, double %i.dw)
  %i.dz = fmul double %i.dg, %i.dy                ; 2 uses
  %i.ea = fcmp olt double %i.dz, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.ea, double %i.dz, double 1.000000e+00 ; 2 uses
  %i.eb = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.eb, double %.sroa.speculated159, double 0.000000e+00 ; 2 uses
  %i.ec = fmul double %i.ch, %.sroa.speculated148
  %i.ed = fadd double %i.cg, %i.ec                ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %.sroa.speculated148, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x double> %i.bv, %i.ef
  %i.eh = fadd <2 x double> %i.bu, %i.eg          ; 2 uses
  %foldExtExtBinop248 = fsub <2 x double> %i.eh, %i.ci
  %i.ei = extractelement <2 x double> %foldExtExtBinop248, i64 0 ; 2 uses
  %foldExtExtBinop250 = fsub <2 x double> %i.eh, %i.ci ; 2 uses
  %foldExtExtBinop252 = fmul <2 x double> %foldExtExtBinop250, %foldExtExtBinop250
  %i.ej = extractelement <2 x double> %foldExtExtBinop252, i64 1
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ej)
  %i.el = tail call noundef double @llvm.fmuladd.f64(double %i.ed, double %i.ed, double %i.ek)
  %i.em = fcmp olt double %i.el, f0x3D719799812DEA11
  br i1 %i.em, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.en = fmul double %.087.lcssa, %i.by
  %i.eo = fmul double %.087.lcssa, %i.bx
  %i.ep = fmul double %13, %i.eo
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.en, double %8, double %i.ep)
  %i.er = tail call noundef double @llvm.fmuladd.f64(double %i.ao, double %i.al, double %i.eq)
  %i.es = fcmp ule double %i.er, 0.000000e+00
  %i.et = xor i1 %3, %i.es
  br i1 %i.et, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eu = load ptr, ptr %4, align 8               ; 5 uses
  %i.ev = load ptr, ptr %i.am, align 8            ; 9 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev                ; 2 uses
  br i1 %i.ew, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 -32
  %i.ey = load i64, ptr %i.ex, align 8
  %i.ez = add i64 %.0217, -1
  %i.fa = icmp eq i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fb = getelementptr inbounds i8, ptr %i.ev, i64 -24
  %i.fc = load double, ptr %i.fb, align 8, !noalias !104
  %i.fd = fsub double %i.fc, %15                  ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %i.ev, i64 -16
  %i.ff = load double, ptr %i.fe, align 8, !noalias !104
  %i.fg = fsub double %i.ff, %16                  ; 2 uses
  %i.fh = fmul double %i.fg, %i.fg
  %i.fi = tail call noundef double @llvm.fmuladd.f64(double %i.fd, double %i.fd, double %i.fh)
  %i.fj = fcmp uge double %i.fi, 1.000000e-10
  br i1 %i.fj, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.fk = load ptr, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.ev, %i.fk
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0217, ptr %i.ev, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.fm = load ptr, ptr %i.am, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  store ptr %i.fn, ptr %i.am, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.fo = ptrtoint ptr %i.ev to i64
  %i.fp = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775776
  br i1 %i.fr, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.fs = ashr exact i64 %i.fq, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i.i, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = tail call i64 @llvm.umin.i64(i64 %i.ft, i64 288230376151711743)
  %i.fw = select i1 %i.fu, i64 288230376151711743, i64 %i.fv ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fx = shl nuw nsw i64 %i.fw, 5
  %i.fy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #23 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq ; 2 uses
  store i64 %.0217, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %i.ew, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i ], [ %i.fy, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i ], [ %i.eu, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !105
  %i.gb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gb, %i.ev
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fy, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.gc, %.lr.ph.i.i.i.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i34.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  %i.ge = load ptr, ptr %i.an, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = sub i64 %i.gf, %i.fp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.gg) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i
  store ptr %i.fy, ptr %4, align 8
  store ptr %i.gd, ptr %i.am, align 8
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gh, ptr %i.an, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.n:                                             ; preds = %bb.d
  %i.gi = fmul double %i.dg, f0xBEB0C6F7A0000000
  %i.gj = extractelement <2 x double> %i.cs, i64 0
  %i.gk = fcmp ult double %i.gj, %i.gi
  br i1 %i.gk, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gl = fcmp oge double %18, 0.000000e+00
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.dg, double f0x3EB0C6F7A0000000, double 1.000000e+00)
  %i.gm = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.scalar, i64 0
  %i.gn = fcmp ole <2 x double> %i.cs, %i.gm      ; 2 uses
  %i.go = insertelement <2 x i1> %i.ap, i1 %i.gl, i64 0 ; 2 uses
  %i.gp = and <2 x i1> %i.go, %i.gn
  %i.gq = or <2 x i1> %i.go, %i.gn
  %i.gr = shufflevector <2 x i1> %i.gp, <2 x i1> %i.gq, <2 x i32> <i32 0, i32 3>
  %i.gs = bitcast <2 x i1> %i.gr to i2
  %i.gt = icmp eq i2 %i.gs, -1
  br i1 %i.gt, label %bb.p, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.gu = load ptr, ptr %4, align 8               ; 5 uses
  %i.gv = load ptr, ptr %i.am, align 8            ; 11 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv                ; 2 uses
  br i1 %i.gw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -32
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = add i64 %.0217, -1
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hb = getelementptr inbounds i8, ptr %i.gv, i64 -24
  %i.hc = load double, ptr %i.hb, align 8, !noalias !106
  %i.hd = fsub double %i.hc, %21                  ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.gv, i64 -16
  %i.hf = load double, ptr %i.he, align 8, !noalias !106
  %i.hg = fsub double %i.hf, %22                  ; 2 uses
  %i.hh = fmul double %i.hg, %i.hg
  %i.hi = tail call noundef double @llvm.fmuladd.f64(double %i.hd, double %i.hd, double %i.hh)
  %i.hj = fcmp uge double %i.hi, 1.000000e-10
  br i1 %i.hj, label %bb.s, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.hk = load ptr, ptr %i.an, align 8
  %.not.i97 = icmp eq ptr %i.gv, %i.hk
  br i1 %.not.i97, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %.0217, ptr %i.gv, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store double %21, ptr %i.hl, align 8
  %.sroa.6167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store double %22, ptr %.sroa.6167.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store double %i.cv, ptr %.sroa.8.0..sroa_idx, align 8
  %i.hm = load ptr, ptr %i.am, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  store ptr %i.hn, ptr %i.am, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.ho = ptrtoint ptr %i.gv to i64
  %i.hp = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.hq = sub i64 %i.ho, %i.hp                    ; 3 uses
  %i.hr = icmp eq i64 %i.hq, 9223372036854775776
  br i1 %i.hr, label %bb.v, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98: ; preds = %bb.u
  %i.hs = ashr exact i64 %i.hq, 5                 ; 3 uses
  %.sroa.speculated.i.i.i99 = tail call i64 @llvm.umax.i64(i64 %i.hs, i64 1)
  %i.ht = add nsw i64 %.sroa.speculated.i.i.i99, %i.hs ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.hs
  %i.hv = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 288230376151711743)
  %i.hw = select i1 %i.hu, i64 288230376151711743, i64 %i.hv ; 3 uses
  %.not.i.i.i100 = icmp ne i64 %i.hw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i100)
  %i.hx = shl nuw nsw i64 %i.hw, 5
  %i.hy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hx) #23 ; 5 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hq ; 4 uses
  store i64 %.0217, ptr %24, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %24, i64 8
  store double %21, ptr %i.hz, align 8
  %.sroa.6167.0..sroa_idx168 = getelementptr inbounds nuw i8, ptr %24, i64 16
  store double %22, ptr %.sroa.6167.0..sroa_idx168, align 8
  %.sroa.8.0..sroa_idx170 = getelementptr inbounds nuw i8, ptr %24, i64 24
  store double %i.cv, ptr %.sroa.8.0..sroa_idx170, align 8
  br i1 %i.gw, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102

.lr.ph.i.i.i.i.i102:                              ; preds = %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98, %.lr.ph.i.i.i.i.i102
  %.012.i.i.i.i.i103 = phi ptr [ %i.ib, %.lr.ph.i.i.i.i.i102 ], [ %i.hy, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  %.0911.i.i.i.i.i104 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i102 ], [ %i.gu, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i103, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i104, i64 32, i1 false), !alias.scope !107
  %i.ia = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i104, i64 32 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i103, i64 32 ; 2 uses
  %.not.i.i.i.i.i105 = icmp eq ptr %i.ia, %i.gv
  br i1 %.not.i.i.i.i.i105, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106, label %.lr.ph.i.i.i.i.i102, !llvm.loop !91

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106: ; preds = %.lr.ph.i.i.i.i.i102, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.hy, %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i98 ], [ %i.ib, %.lr.ph.i.i.i.i.i102 ]
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i107, i64 32
  %.not.i34.i.i108 = icmp eq ptr %i.gu, null
  br i1 %.not.i34.i.i108, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  %i.id = load ptr, ptr %i.an, align 8
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = sub i64 %i.ie, %i.hp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.if) #24
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109: ; preds = %bb.w, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit33.i.i106
  store ptr %i.hy, ptr %4, align 8
  store ptr %i.ic, ptr %i.am, align 8
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.hy, i64 %i.hw
  store ptr %i.ig, ptr %i.an, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit: ; preds = %bb.r, %bb.c, %bb.o, %bb.n, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.j, %bb.e, %bb.h, %bb.t, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE17_M_realloc_insertIJRmRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i109, %bb.b
  %exitcond225.not = icmp eq i64 %i.bp, %i.g
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
  %17 = alloca %class.aiVector3t, align 8         ; 6 uses
  %18 = alloca %"class.std::vector", align 8      ; 18 uses
end_hunk_0
