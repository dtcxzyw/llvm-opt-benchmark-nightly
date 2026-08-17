inline.NumInlined: 216
inline.NumDeleted: 81
begin_hunk_0_@Java_org_coinor_Ipopt_AddIpoptIntOption:bb.a
  %.pn15 = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %.pn, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21 ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !91
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define zeroext range(i8 0, 2) i8 @Java_org_coinor_Ipopt_AddIpoptNumOption(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, ptr noundef %3, double noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.Ipopt::SmartPtr.2", align 8 ; 7 uses
  %i.b = inttoptr i64 %2 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129
  %i.d = load ptr, ptr %0, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef null), !inline_history !139 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !140
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.j, ptr %i.a, align 8, !tbaa !143
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !144
  %i.m = load i64, ptr %i.a, align 8, !tbaa !143
  store i64 %i.m, ptr %i.h, align 8, !tbaa !91
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !91
  store i8 %i.o, ptr %i.n, align 1, !tbaa !91
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !143  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !146
  %i.r = load ptr, ptr %5, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.2") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %i.u)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %6, align 8, !tbaa !147    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %6, align 8, !tbaa !147   ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !8
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ad) #15, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.al = load ptr, ptr %0, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1360
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !149
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef nonnull %i.g)
          to label %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit unwind label %bb.n, !inline_history !150

_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !91
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.as = zext i1 %i.ac to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i8 %i.as

bb.j:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21

bb.k:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.av = load ptr, ptr %6, align 8, !tbaa !147   ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i20, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !8
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !8
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !10
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(112) %i.av) #15, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21: ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %i.au, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.o

bb.n:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21
  %.pn15 = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %.pn, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21 ]
  %i.be = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !91
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn15
}

; Function Attrs: mustprogress uwtable
define zeroext range(i8 0, 2) i8 @Java_org_coinor_Ipopt_AddIpoptStrOption(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.Ipopt::SmartPtr.2", align 8 ; 7 uses
  %i.c = inttoptr i64 %2 to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129  ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !138
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef null), !inline_history !139 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !140
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.k, ptr %i.b, align 8, !tbaa !143
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !144
  %i.n = load i64, ptr %i.b, align 8, !tbaa !143
  store i64 %i.n, ptr %i.i, align 8, !tbaa !91
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !91
  store i8 %i.p, ptr %i.o, align 1, !tbaa !91
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = load i64, ptr %i.b, align 8, !tbaa !143  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !146
  %i.s = load ptr, ptr %5, align 8, !tbaa !144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.u = load ptr, ptr %0, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !138
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef null)
          to label %_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit unwind label %bb.k, !inline_history !139 ; 5 uses

_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !140
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit
  %i.aa = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !143
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i34, label %._crit_edge.i.i33

.noexc.i34:                                       ; preds = %bb.g
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.l   ; 2 uses

.noexc36:                                         ; preds = %.noexc.i34
  store ptr %i.ac, ptr %6, align 8, !tbaa !144
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !143
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !91
  br label %._crit_edge.i.i33

._crit_edge.i.i33:                                ; preds = %.noexc36, %bb.g
  %i.ae = phi ptr [ %i.ac, %.noexc36 ], [ %i.y, %bb.g ] ; 2 uses
  switch i64 %i.aa, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i33
  %i.af = load i8, ptr %i.x, align 1, !tbaa !91
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !91
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.x, i64 %i.aa, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i33
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !143 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !146
  %i.ai = load ptr, ptr %6, align 8, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !91
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !146
  switch i64 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61 [
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.al = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.am = load i128, ptr %i.al, align 1
  %i.an = xor i128 %i.am, 145433485429597685843989991877518779752
  %i.ao = getelementptr i8, ptr %i.al, i64 5
  %i.ap = load i128, ptr %i.ao, align 1
  %i.aq = xor i128 %i.ap, 146793563361265663903372398153632280161
  %i.ar = or i128 %i.an, %i.aq
  %i.as = icmp ne i128 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  %i.av = load i64, ptr %i.ah, align 8
  %i.aw = icmp eq i64 %i.av, 14
  %or.cond = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = xor i64 %i.ay, 3270850780037212524
  %i.ba = getelementptr i8, ptr %i.ax, i64 6
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 8751179541578067300
  %i.bd = or i64 %i.az, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

bb.k:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %.noexc.i34, %bb.f
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41: ; preds = %bb.j
  %i.bj = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.bk = load i128, ptr %i.bj, align 1
  %i.bl = xor i128 %i.bk, 138844075185987090357910052522351946862
  %i.bm = getelementptr i8, ptr %i.bj, i64 16
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = zext i16 %i.bn to i128
  %i.bp = xor i128 %i.bo, 25711
  %i.bq = or i128 %i.bl, %i.bp
  %i.br = icmp ne i128 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = load i64, ptr %i.ah, align 8
  %i.bv = icmp eq i64 %i.bu, 12
  %or.cond75 = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond75, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  %i.bw = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 7017579283403338613
  %i.bz = getelementptr i8, ptr %i.bw, i64 8
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = xor i64 %i.cb, 1735289196
  %i.cd = or i64 %i.by, %i.cc
  %i.ce = icmp ne i64 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  %.sink76 = phi i64 [ 129, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39 ], [ 128, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink76
  store i8 1, ptr %i.ch, align 1, !tbaa !91
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39, %bb.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.2") align 8 %7, ptr noundef nonnull align 8 dereferenceable(90) %i.cj)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61
  %i.cn = load ptr, ptr %7, align 8, !tbaa !147   ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.cs = load ptr, ptr %7, align 8, !tbaa !147   ; 4 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !8
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !8
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(112) %i.cs) #15, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit:   ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.da = load ptr, ptr %0, align 8, !tbaa !50
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1360
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !149
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef nonnull %i.h)
          to label %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit unwind label %bb.u, !inline_history !150

_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.dd = load ptr, ptr %0, align 8, !tbaa !50
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1360
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !149
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef nonnull %i.x)
          to label %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit46 unwind label %bb.u, !inline_history !150

_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit46: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit
  %i.dg = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.y
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit46
  %i.di = load i64, ptr %i.y, align 8, !tbaa !91
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.dk = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.i
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = load i64, ptr %i.i, align 8, !tbaa !91
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  %i.do = zext i1 %i.cr to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret i8 %i.do

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51

bb.r:                                             ; preds = %bb.m
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.dr = load ptr, ptr %7, align 8, !tbaa !147   ; 4 uses
  %.not.i.i50 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i50, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !8
  %i.du = add nsw i32 %i.dt, -1                   ; 2 uses
  store i32 %i.du, ptr %i.ds, align 8, !tbaa !8
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.t, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51

bb.t:                                             ; preds = %bb.s
  %i.dw = load ptr, ptr %i.dr, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(112) %i.dr) #15, !inline_history !148
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.q ], [ %i.dq, %bb.r ], [ %i.dq, %bb.s ], [ %i.dq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.v

bb.u:                                             ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51, %bb.u
  %.pn25.pn = phi { ptr, i32 } [ %.pn, %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit51 ], [ %i.dz, %bb.u ] ; 2 uses
  %i.ea = load ptr, ptr %6, align 8, !tbaa !144   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.y
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.v
  %i.ec = load i64, ptr %i.y, align 8, !tbaa !91
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.l
  %.pn25.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %.pn25.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %.pn25.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %bb.k
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %i.bh, %bb.k ]
  %i.ee = load ptr, ptr %5, align 8, !tbaa !144   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.i
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.w
  %i.eg = load i64, ptr %i.i, align 8, !tbaa !91
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @Java_org_coinor_Ipopt_GetVersion(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 6 uses
  %i.b = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @_ZN5Ipopt16IpoptApplication7VersionERiS1_S1_(ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.e = load <2 x i32>, ptr %i.a, align 8, !tbaa !94
  store <2 x i32> %i.e, ptr %i.b, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.d, align 8, !tbaa !94
  store i32 %i.g, ptr %i.f, align 8, !tbaa !94
  %i.h = load ptr, ptr %0, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1688
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %2, i32 noundef 0, i32 noundef 3, ptr noundef nonnull %i.b), !inline_history !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare void @_ZN5Ipopt16IpoptApplication7VersionERiS1_S1_(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6JipoptD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTV6Jipopt, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !8
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(90) %i.b) #15, !inline_history !93
  br label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEED2Ev.exit
end_hunk_0
