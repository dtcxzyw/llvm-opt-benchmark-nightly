inline.NumInlined: 1284
inline.NumDeleted: 549
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5faiss15OperatingPoints3addEddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.d, align 1, !tbaa !38
  store i8 %i.m, ptr %i.l, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.f, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  store i64 %4, ptr %i.p, align 8, !tbaa !201
  invoke void @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = fcmp oeq double %1, 0.000000e+00
  br i1 %i.q, label %.critedge, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !219  ; 6 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -56 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !217 ; 2 uses
  %i.x = fcmp ogt double %1, %i.w
  br i1 %i.x, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ab unwind label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.k:                                             ; preds = %bb.h
  %i.z = fcmp oeq double %1, %i.w
  br i1 %i.z, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !196 ; 3 uses
  %.not85 = icmp eq ptr %i.u, %i.aa
  br i1 %.not85, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 56
  br label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -48
  %i.ag = load double, ptr %i.af, align 8, !tbaa !218
  %i.ah = fcmp olt double %2, %i.ag
  br i1 %i.ah, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 16, i1 false)
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN5faiss14OperatingPointaSERKS0_.exit unwind label %bb.j

_ZN5faiss14OperatingPointaSERKS0_.exit:           ; preds = %bb.m
  %i.aj = load i64, ptr %i.p, align 8, !tbaa !201
  %i.ak = getelementptr inbounds i8, ptr %i.u, i64 -8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !201
  br label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %.05878 = phi i64 [ %i.ao, %bb.n ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %.05878 ; 6 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !217 ; 2 uses
  %i.an = fcmp ult double %i.am, %1
  br i1 %i.an, label %bb.n, label %bb.v

bb.n:                                             ; preds = %.lr.ph
  %i.ao = add nuw i64 %.05878, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ao, %i.ae
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !220

._crit_edge:                                      ; preds = %bb.n, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ap, ptr %6, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !36
  store i8 0, ptr %i.ap, align 8, !tbaa !38
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17 ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.at = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.au = add nuw nsw i64 %i.at, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.au)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %6, align 8, !tbaa !39
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !36
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.av, i64 noundef %i.aw, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.at)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.p, %._crit_edge
  %i.az = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss15OperatingPoints3addEddRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm, ptr noundef nonnull @.str.2, i32 noundef 140)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #35
          to label %bb.af unwind label %bb.q

bb.t:                                             ; preds = %bb.r
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.az) #17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.ba, %bb.t ]
  %i.bb = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ap
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bd = load i64, ptr %i.ap, align 8, !tbaa !38
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ae

bb.v:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !218
  %i.bh = fcmp olt double %2, %i.bg
  br i1 %i.bh, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.bi = fcmp oeq double %i.am, %1
  br i1 %i.bi, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_ZN5faiss14OperatingPointaSERKS0_.exit67 unwind label %bb.y

_ZN5faiss14OperatingPointaSERKS0_.exit67:         ; preds = %bb.x
  %i.bk = load i64, ptr %i.p, align 8, !tbaa !201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !201
  br label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.z:                                             ; preds = %bb.w
  %i.bn = invoke ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr nonnull %i.al, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN5faiss14OperatingPointaSERKS0_.exit67, %bb.z, %_ZN5faiss14OperatingPointaSERKS0_.exit, %bb.i
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !196
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = sdiv exact i64 %i.bt, 56                ; 2 uses
  %.05079 = add nsw i64 %i.bu, -1                 ; 2 uses
  %.not80 = icmp eq i64 %.05079, 0
  br i1 %.not80, label %.critedge, label %.lr.ph84

.lr.ph84:                                         ; preds = %bb.ab, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %.05082 = phi i64 [ %.050, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.05079, %bb.ab ] ; 3 uses
  %.050.in81 = phi i64 [ %.05082, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bu, %bb.ab ]
  %i.bv = load ptr, ptr %i.s, align 8, !tbaa !196 ; 2 uses
  %i.bw = getelementptr inbounds nuw [56 x i8], ptr %i.bv, i64 %.05082
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load double, ptr %i.bx, align 8, !tbaa !218
  %7 = getelementptr [56 x i8], ptr %i.bv, i64 %.050.in81 ; 2 uses
  %i.bz = getelementptr i8, ptr %7, i64 -104
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !218
  %i.cb = fcmp ugt double %i.by, %i.ca
  br i1 %i.cb, label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph84
  %i.cc = getelementptr i8, ptr %7, i64 -112
  %i.cd = invoke ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS1_S3_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr nonnull %i.cc)
          to label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %bb.ac, %.lr.ph84
  %.050 = add i64 %.05082, -1                     ; 2 uses
  %.not = icmp eq i64 %.050, 0
  br i1 %.not, label %.critedge, label %.lr.ph84, !llvm.loop !221

.critedge:                                        ; preds = %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, %bb.ab, %bb.l, %bb.v, %bb.f
  %.2 = phi i1 [ false, %bb.f ], [ false, %bb.l ], [ false, %bb.v ], [ true, %bb.ab ], [ true, %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ]
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.c
  br i1 %i.cg, label %_ZN5faiss14OperatingPointD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !38
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #36
  br label %_ZN5faiss14OperatingPointD2Ev.exit

_ZN5faiss14OperatingPointD2Ev.exit:               ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i1 %.2

bb.ae:                                            ; preds = %bb.j, %bb.ad, %bb.aa, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn64.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.ce, %bb.ad ], [ %i.y, %bb.j ], [ %i.bm, %bb.y ], [ %i.bo, %bb.aa ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !39  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.c
  br i1 %i.ck, label %_ZN5faiss14OperatingPointD2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68: ; preds = %bb.ae
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !38
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #36
  br label %_ZN5faiss14OperatingPointD2Ev.exit70

_ZN5faiss14OperatingPointD2Ev.exit70:             ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %.pn64.pn

bb.af:                                            ; preds = %bb.s
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::vector<faiss::OperatingPoint>::_Temporary_value", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !219    ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !199  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !203
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 8 uses
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.q = icmp slt i64 %i.o, 0
  br i1 %i.q, label %.noexc.i.i.i, label %bb.e

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.r = add nuw i64 %i.o, 1                      ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !103

.noexc6.i.i.i:                                    ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.e
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #37 ; 2 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !39
  store i64 %i.o, ptr %i.l, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.u = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.l, %bb.c ] ; 3 uses
  switch i64 %i.o, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt12construct_atIN5faiss14OperatingPointEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = load i8, ptr %i.m, align 1, !tbaa !38
  store i8 %i.v, ptr %i.u, align 1, !tbaa !38
  br label %_ZSt12construct_atIN5faiss14OperatingPointEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.m, i64 %i.o, i1 false)
  br label %_ZSt12construct_atIN5faiss14OperatingPointEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN5faiss14OperatingPointEJRKS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.o, ptr %i.w, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i8 0, ptr %i.x, align 1, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !201
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !201
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !199
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !199
  br label %bb.p

bb.h:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %0, ptr %3, align 8, !tbaa !222
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ae, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 16, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 7 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !33
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !36 ; 8 uses
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %bb.i, label %._crit_edge.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp slt i64 %i.ak, 0
  br i1 %i.am, label %.noexc.i.i.i.i, label %bb.j

.noexc.i.i.i.i:                                   ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #35
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.an = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %.noexc6.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !103

.noexc6.i.i.i.i:                                  ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ap = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #37 ; 2 uses
  store ptr %i.ap, ptr %i.af, align 8, !tbaa !39
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !38
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.h
  %i.aq = phi ptr [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i ], [ %i.ah, %bb.h ] ; 3 uses
  switch i64 %i.ak, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ar = load i8, ptr %i.ai, align 1, !tbaa !38
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !38
  br label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit

_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE16_Temporary_valueC2IJRKS1_EEEPS3_DpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.k, %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ak, ptr %i.as, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak
  store i8 0, ptr %i.at, align 1, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !201
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !201
  invoke void @_ZNSt6vectorIN5faiss14OperatingPointESaIS1_EE13_M_insert_auxIS1_EEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.ae)
          to label %bb.m unwind label %bb.n
end_hunk_0
