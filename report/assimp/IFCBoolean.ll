inline.NumInlined: 1663
inline.NumDeleted: 638
begin_hunk_0_@_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEcvRKS4_Ev:bb.a

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
  %i.g = sdiv exact i64 %i.f, 24                  ; 7 uses
  %.not = icmp eq ptr %i.b, %i.c                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not245 = icmp eq i64 %i.f, 24
  br i1 %.not245, label %.lr.ph.peel, label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.preheader
  %i.h = add nsw i64 %i.g, -2
  br label %.lr.ph

.lr.ph.peel:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.bu, %.lr.ph ]
  %i.j = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ay, %.lr.ph ] ; 3 uses
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
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load <2 x double>, ptr %i.ao, align 8, !noalias !75
  %i.ar = load <2 x double>, ptr %i.ap, align 8, !noalias !75
  %i.as = fsub <2 x double> %i.aq, %i.ar          ; 3 uses
  br i1 %.not, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %._crit_edge
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.av = tail call double @llvm.copysign.f64(double 0.000000e+00, double %.0.lcssa)
  %i.aw = extractelement <2 x double> %i.as, i64 0 ; 3 uses
  %i.ax = extractelement <2 x double> %i.as, i64 1
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader.split, %.lr.ph
  %.0217 = phi double [ %i.bu, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader.split ]
  %.086216 = phi i64 [ %i.ay, %.lr.ph ], [ 0, %.lr.ph.preheader.split ] ; 4 uses
  %i.ay = add nuw i64 %.086216, 1                 ; 4 uses
  %6 = icmp eq i64 %i.ay, %i.g
  %7 = select i1 %6, i64 0, i64 %i.ay
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %7 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.086216 ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !noalias !69 ; 2 uses
  %i.bc = load double, ptr %i.ba, align 8, !noalias !69
  %i.bd = fsub double %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load double, ptr %i.be, align 8, !noalias !69 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !noalias !69
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = add i64 %.086216, 2
  %i.bk = urem i64 %i.bj, %i.g
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !noalias !72
  %i.bn = fsub double %i.bm, %i.bb
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load double, ptr %i.bo, align 8, !noalias !72
  %i.bq = fsub double %i.bp, %i.bf
  %i.br = fneg double %i.bd
  %i.bs = fmul double %i.bq, %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bn, double %i.bs)
  %i.bu = fadd double %.0217, %i.bt               ; 2 uses
  %exitcond.not = icmp eq i64 %.086216, %i.h
  br i1 %exitcond.not, label %.lr.ph.peel, label %.lr.ph, !llvm.loop !78

._crit_edge221:                                   ; preds = %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, %._crit_edge
  %i.bv = load ptr, ptr %4, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp ne ptr %i.bv, %i.bx
  ret i1 %i.by

bb.b:                                             ; preds = %.lr.ph220, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit
  %.0214218 = phi i64 [ 0, %.lr.ph220 ], [ %i.cb, %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit ] ; 8 uses
  %i.bz = load ptr, ptr %2, align 8               ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.0214218 ; 3 uses
  %i.cb = add nuw i64 %.0214218, 1                ; 4 uses
  %i.cc = icmp eq i64 %i.cb, %i.g
  %i.cd = select i1 %i.cc, i64 0, i64 %i.cb
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.cd ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8, !noalias !80
  %i.cg = load double, ptr %i.ca, align 8, !noalias !80 ; 6 uses
  %i.ch = fsub double %i.cf, %i.cg                ; 8 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load double, ptr %i.ci, align 8, !noalias !80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cl = load double, ptr %i.ck, align 8, !noalias !80 ; 6 uses
  %i.cm = fsub double %i.cj, %i.cl                ; 9 uses
  %i.cn = fneg double %i.ch                       ; 2 uses
  %i.co = fmul double %i.an, %i.cm
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.aw, double %i.co) ; 3 uses
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = fcmp olt double %i.cq, f0x3EB0C6F7A0000000
  br i1 %i.cr, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !noalias !80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cv = load double, ptr %i.cu, align 8, !noalias !80 ; 3 uses
  %i.cw = fsub double %i.ct, %i.cv                ; 4 uses
  %i.cx = fmul double %i.cm, %i.cm
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.ch, double %i.cx)
  %i.cz = tail call noundef double @llvm.fmuladd.f64(double %i.cw, double %i.cw, double %i.cy)
  %i.da = fdiv double 1.000000e+00, %i.cz         ; 4 uses
  %i.db = load double, ptr %0, align 8            ; 5 uses
  %i.dc = fsub double %i.cg, %i.db                ; 2 uses
  %i.dd = load <2 x double>, ptr %i.ap, align 8   ; 2 uses
  %i.de = extractelement <2 x double> %i.dd, i64 0 ; 4 uses
  %i.df = fsub double %i.cl, %i.de
  %i.dg = fneg double %i.df                       ; 2 uses
  %i.dh = fmul double %i.an, %i.dg
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.aw, double %i.dh)
  %i.dj = fdiv double %i.di, %i.cp                ; 2 uses
  %i.dk = fmul double %i.ch, %i.dg
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dc, double %i.cm, double %i.dk)
  %i.dm = fdiv double %i.dl, %i.cp                ; 4 uses
  %i.dn = fmul double %i.an, %i.dm
  %i.do = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x double> %i.as, %i.dp
  %i.dr = fadd double %i.db, %i.dn                ; 3 uses
  %i.ds = fadd <2 x double> %i.dd, %i.dq          ; 3 uses
  %i.dt = load double, ptr %1, align 8            ; 2 uses
  %i.du = fsub double %i.dt, %i.cg
  %i.dv = load double, ptr %i.ao, align 8         ; 2 uses
  %i.dw = fsub double %i.dv, %i.cl
  %i.dx = fmul double %i.cm, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.du, double %i.dx)
  %i.dz = fmul double %i.da, %i.dy                ; 2 uses
  %i.ea = fcmp olt double %i.dz, 1.000000e+00
  %.sroa.speculated138 = select i1 %i.ea, double %i.dz, double 1.000000e+00 ; 2 uses
  %i.eb = fcmp ogt double %.sroa.speculated138, 0.000000e+00
  %.sroa.speculated = select i1 %i.eb, double %.sroa.speculated138, double 0.000000e+00 ; 3 uses
  %i.ec = fmul double %i.ch, %.sroa.speculated
  %i.ed = fmul double %i.cm, %.sroa.speculated
  %i.ee = fmul double %i.cw, %.sroa.speculated
  %i.ef = fadd double %i.cg, %i.ec
  %i.eg = fadd double %i.cl, %i.ed
  %i.eh = fadd double %i.cv, %i.ee                ; 2 uses
  %i.ei = fsub double %i.ef, %i.dt                ; 2 uses
  %i.ej = fsub double %i.eg, %i.dv                ; 2 uses
  %i.ek = fmul double %i.ej, %i.ej
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.ek)
  %i.em = tail call noundef double @llvm.fmuladd.f64(double %i.eh, double %i.eh, double %i.el)
  %i.en = fcmp uge double %i.em, f0x3D719799812DEA11
  %or.cond = or i1 %5, %i.en
  br i1 %or.cond, label %bb.d, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.eo = fsub double %i.db, %i.cg
  %i.ep = fsub double %i.de, %i.cl
  %i.eq = fmul double %i.cm, %i.ep
  %i.er = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.eo, double %i.eq)
  %i.es = fmul double %i.da, %i.er                ; 2 uses
  %i.et = fcmp olt double %i.es, 1.000000e+00
  %.sroa.speculated159 = select i1 %i.et, double %i.es, double 1.000000e+00 ; 2 uses
  %i.eu = fcmp ogt double %.sroa.speculated159, 0.000000e+00
  %.sroa.speculated148 = select i1 %i.eu, double %.sroa.speculated159, double 0.000000e+00 ; 3 uses
  %i.ev = fmul double %i.cw, %.sroa.speculated148
  %i.ew = fadd double %i.cv, %i.ev                ; 2 uses
  %i.ex = fmul double %i.ch, %.sroa.speculated148
  %i.ey = fadd double %i.cg, %i.ex
  %i.ez = fsub double %i.ey, %i.db                ; 2 uses
  %i.fa = fmul double %i.cm, %.sroa.speculated148
  %i.fb = fadd double %i.cl, %i.fa
  %i.fc = fsub double %i.fb, %i.de                ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ez, double %i.fd)
  %i.ff = tail call noundef double @llvm.fmuladd.f64(double %i.ew, double %i.ew, double %i.fe)
  %i.fg = fcmp olt double %i.ff, f0x3D719799812DEA11
  br i1 %i.fg, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.fh = fmul double %.0.lcssa, %i.cm
  %i.fi = fmul double %.0.lcssa, %i.cn
  %i.fj = fmul double %i.aw, %i.fi
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.an, double %i.fj)
  %i.fl = tail call noundef double @llvm.fmuladd.f64(double %i.av, double %i.ax, double %i.fk)
  %i.fm = fcmp ule double %i.fl, 0.000000e+00
  %i.fn = xor i1 %3, %i.fm
  br i1 %i.fn, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fo = load ptr, ptr %4, align 8               ; 5 uses
  %i.fp = load ptr, ptr %i.at, align 8            ; 9 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp                ; 2 uses
  br i1 %i.fq, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 -32
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = add i64 %.0214218, -1
  %i.fu = icmp eq i64 %i.fs, %i.ft
  br i1 %i.fu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fv = getelementptr inbounds i8, ptr %i.fp, i64 -24
  %i.fw = load double, ptr %i.fv, align 8, !noalias !83
  %i.fx = fsub double %i.fw, %i.db                ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fp, i64 -16
  %i.fz = load double, ptr %i.fy, align 8, !noalias !83
  %i.ga = fsub double %i.fz, %i.de                ; 2 uses
  %i.gb = fmul double %i.ga, %i.ga
  %i.gc = tail call noundef double @llvm.fmuladd.f64(double %i.fx, double %i.fx, double %i.gb)
  %i.gd = fcmp uge double %i.gc, 1.000000e-10
  br i1 %i.gd, label %bb.i, label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.ge = load ptr, ptr %i.au, align 8
  %.not.i = icmp eq ptr %i.fp, %i.ge
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.0214218, ptr %i.fp, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.gg = load ptr, ptr %i.at, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  store ptr %i.gh, ptr %i.at, align 8
  br label %_ZNSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12emplace_backIJRmRKS2_EEERS3_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.gi = ptrtoint ptr %i.fp to i64
  %i.gj = ptrtoint ptr %i.fo to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 4 uses
  %i.gl = icmp eq i64 %i.gk, 9223372036854775776
  br i1 %i.gl, label %bb.l, label %_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #22
  unreachable

_ZNKSt6vectorISt4pairIm10aiVector3tIdEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.gm = ashr exact i64 %i.gk, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gm, i64 1)
  %i.gn = add nsw i64 %.sroa.speculated.i.i.i, %i.gm ; 2 uses
  %i.go = icmp ult i64 %i.gn, %i.gm
  %i.gp = tail call i64 @llvm.umin.i64(i64 %i.gn, i64 288230376151711743)
  %i.gq = select i1 %i.go, i64 288230376151711743, i64 %i.gp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.gq, 0
end_hunk_0
