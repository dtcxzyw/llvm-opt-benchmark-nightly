Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/Envelope?download=true
inline.NumInlined: 280
inline.NumDeleted: 126
begin_hunk_0_@_ZNK4geos4geom8Envelope8toStringB5cxx11Ev:bb.a
.noexc7:                                          ; preds = %.noexc6
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !15
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.k, double noundef %i.n)
          to label %.noexc8 unwind label %bb.e

.noexc8:                                          ; preds = %.noexc7
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 1)
          to label %_ZN4geos4geomlsERSoRKNS0_8EnvelopeE.exit unwind label %bb.e ; 0 uses

_ZN4geos4geomlsERSoRKNS0_8EnvelopeE.exit:         ; preds = %.noexc8
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !26, !alias.scope !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !17, !alias.scope !48
  store i8 0, ptr %i.q, align 8, !tbaa !29, !alias.scope !48
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49, !noalias !48 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !48 ; 2 uses
  %i.w = icmp ugt ptr %i.t, %i.v
  %.08.i.i.i = select i1 %i.w, ptr %i.t, ptr %i.v ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN4geos4geomlsERSoRKNS0_8EnvelopeE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53, !noalias !48 ; 2 uses
  %i.z = ptrtoint ptr %.08.i.i.i to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.y, i64 noundef %i.ab)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !48 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.ae) #19
  br label %.body

bb.d:                                             ; preds = %_ZN4geos4geomlsERSoRKNS0_8EnvelopeE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.ah = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !54
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aj = getelementptr i8, ptr %i.ah, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %2, i64 %i.ak
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.am, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.ao) #19
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.am, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #17
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.as) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc4, %.noexc3, %.noexc2, %.noexc, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.e ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ad, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos4geomeqERKNS0_8EnvelopeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load double, ptr %1, align 8, !tbaa !14
  %i.h = load double, ptr %0, align 8, !tbaa !14
  %i.i = fcmp oeq double %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fcmp oeq double %i.k, %i.b
  %or.cond = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.d, label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !16
  %i.q = fcmp oeq double %i.n, %i.p
  br i1 %i.q, label %bb.e, label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !15
  %i.v = fcmp oeq double %i.s, %i.u
  br label %_ZNK4geos4geom8Envelope6equalsEPKS1_.exit

_ZNK4geos4geom8Envelope6equalsEPKS1_.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.d ], [ %i.v, %bb.e ], [ false, %bb.c ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4geos4geomltERKNS0_8EnvelopeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp ord double %i.e, 0.000000e+00
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.g, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.i = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.j = fcmp olt double %i.h, %i.i
  br i1 %i.j, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = fcmp ogt double %i.h, %i.i
  br i1 %i.k, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load double, ptr %i.l, align 8, !tbaa !16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !16 ; 2 uses
  %i.p = fcmp olt double %i.m, %i.o
  br i1 %i.p, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = fcmp ogt double %i.m, %i.o
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = fcmp olt double %i.b, %i.e
  br i1 %i.r, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fcmp ogt double %i.b, %i.e
  br i1 %i.s, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load double, ptr %i.v, align 8, !tbaa !15
  %i.x = fcmp olt double %i.u, %i.w
  br i1 %i.x, label %bb.k, label %2

2:                                                ; preds = %bb.j
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %2
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %2 ], [ false, %bb.i ], [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.g ], [ true, %bb.h ], [ true, %bb.j ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZNK4geos4geom8Envelope8hashCodeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.e, ptr %i.d, align 8, !tbaa !33
  %i.f = fcmp une double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %_ZNKSt4hashIdEclEd.exit

bb.b:                                             ; preds = %bb.a
  %i.g = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #20
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double %i.l, ptr %i.c, align 8, !tbaa !33
  %i.m = fcmp une double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %_ZNKSt4hashIdEclEd.exit5

bb.d:                                             ; preds = %_ZNKSt4hashIdEclEd.exit
  %i.n = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit5 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #20
  unreachable

_ZNKSt4hashIdEclEd.exit5:                         ; preds = %_ZNKSt4hashIdEclEd.exit, %bb.d
  %i.q = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.s, ptr %i.b, align 8, !tbaa !33
  %i.t = fcmp une double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.f, label %_ZNKSt4hashIdEclEd.exit6

bb.f:                                             ; preds = %_ZNKSt4hashIdEclEd.exit5
  %i.u = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit6 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

_ZNKSt4hashIdEclEd.exit6:                         ; preds = %_ZNKSt4hashIdEclEd.exit5, %bb.f
  %i.x = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit5 ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load double, ptr %i.y, align 8, !tbaa !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.z, ptr %i.a, align 8, !tbaa !33
  %i.aa = fcmp une double %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.h, label %_ZNKSt4hashIdEclEd.exit7

bb.h:                                             ; preds = %_ZNKSt4hashIdEclEd.exit6
  %i.ab = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #20
  unreachable

_ZNKSt4hashIdEclEd.exit7:                         ; preds = %_ZNKSt4hashIdEclEd.exit6, %bb.h
  %i.ae = phi i64 [ 0, %_ZNKSt4hashIdEclEd.exit6 ], [ %i.ab, %bb.h ]
  %i.af = mul i64 %i.j, 37
  %i.ag = add i64 %i.af, 23273
  %i.ah = add i64 %i.ag, %i.q
  %i.ai = mul i64 %i.ah, 37
  %i.aj = add i64 %i.x, %i.ai
  %i.ak = mul i64 %i.aj, 37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = add i64 %i.ae, %i.ak
  ret i64 %i.al
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Envelope6centreERNS0_10CoordinateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 2 uses
  %i.c = fcmp ord double %i.b, 0.000000e+00       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <1 x double>, ptr %i.d, align 8, !tbaa !33
  %i.f = load <4 x double>, ptr %0, align 8, !tbaa !33
  %i.g = shufflevector <4 x double> %i.f, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.h = shufflevector <1 x double> %i.e, <1 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.i = insertelement <2 x double> %i.h, double %i.b, i64 0
  %i.j = fadd <2 x double> %i.i, %i.g
  %i.k = fmul <2 x double> %i.j, splat (double 5.000000e-01)
  store <2 x double> %i.k, ptr %1, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZNK4geos4geom8Envelope12intersectionERKS1_RS1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
  br i1 %i.c, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 3 uses
  %i.f = fcmp uno double %i.e, 0.000000e+00
  br i1 %i.f, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.h = fcmp ugt double %i.g, %i.b
  %i.i = load double, ptr %0, align 8             ; 2 uses
  %i.j = fcmp ult double %i.e, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !15 ; 2 uses
  %i.o = fcmp ugt double %i.l, %i.n
  br i1 %i.o, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit

_ZNK4geos4geom8Envelope10intersectsERKS1_.exit:   ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load double, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !16 ; 2 uses
  %i.t = fcmp ult double %i.q, %i.s
  br i1 %i.t, label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit
  %i.u = insertelement <2 x double> poison, double %i.i, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.s, i64 1 ; 2 uses
  %i.w = insertelement <2 x double> poison, double %i.g, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.l, i64 1 ; 2 uses
  %i.y = fcmp ogt <2 x double> %i.v, %i.x
  %i.z = insertelement <2 x double> poison, double %i.b, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.n, i64 1 ; 2 uses
  %i.ab = insertelement <2 x double> poison, double %i.e, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.q, i64 1 ; 2 uses
  %i.ad = fcmp olt <2 x double> %i.aa, %i.ac
  %i.ae = select <2 x i1> %i.y, <2 x double> %i.v, <2 x double> %i.x ; 3 uses
  %i.af = select <2 x i1> %i.ad, <2 x double> %i.aa, <2 x double> %i.ac ; 3 uses
  %i.ag = fcmp olt <2 x double> %i.ae, %i.af
  %i.ah = shufflevector <2 x i1> %i.ag, <2 x i1> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ai = shufflevector <2 x double> %i.ae, <2 x double> %i.af, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aj = shufflevector <2 x double> %i.af, <2 x double> %i.ae, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ak = select <4 x i1> %i.ah, <4 x double> %i.ai, <4 x double> %i.aj
  store <4 x double> %i.ak, ptr %2, align 8, !tbaa !33
  br label %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread

_ZNK4geos4geom8Envelope10intersectsERKS1_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %_ZNK4geos4geom8Envelope10intersectsERKS1_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4geos4geom8Envelope9translateEdd(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.c = fcmp uno double %i.b, 0.000000e+00
end_hunk_0
