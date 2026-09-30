Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdJInterface?download=true
inline.NumInlined: 216
inline.NumDeleted: 81
begin_hunk_0_@_ZN6Jipopt33get_number_of_nonlinear_variablesEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = tail call noundef i32 (ptr, ptr, ptr, ...) @_ZN7JNIEnv_13CallIntMethodEP8_jobjectP10_jmethodIDz(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.f, ptr noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7JNIEnv_13CallIntMethodEP8_jobjectP10_jmethodIDz(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144
  %i.d = call noundef i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6Jipopt31get_list_of_nonlinear_variablesEiPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.b = load i8, ptr %i.a, align 1, !tbaa !74
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1432
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %1), !inline_history !4 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.n = tail call noundef zeroext i8 (ptr, ptr, ptr, ...) @_ZN7JNIEnv_17CallBooleanMethodEP8_jobjectP10_jmethodIDz(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k, ptr noundef %i.m, i32 noundef %1, ptr noundef %i.h)
  %.not9 = icmp ne i8 %i.n, 0                     ; 2 uses
  %.not10 = icmp ne ptr %2, null
  %or.cond.not = and i1 %.not10, %.not9
  br i1 %or.cond.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1624
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.h, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2), !inline_history !5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not9, %bb.b ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @Java_org_coinor_Ipopt_CreateIpoptProblem(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #12 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !77
  %i.b = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #12 ; 4 uses
  invoke void @_ZN6JipoptC1EP7JNIEnv_P8_jobjectiiiii(ptr noundef nonnull align 8 dereferenceable(232) %i.b, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
          to label %_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit unwind label %bb.b

_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !18
  store ptr %i.b, ptr %i.a, align 8, !tbaa !77
  %i.f = ptrtoint ptr %i.a to i64
  ret i64 %i.f

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 232) #14
  resume { ptr, i32 } %i.g
}

; Function Attrs: mustprogress uwtable
define noundef i32 @Java_org_coinor_Ipopt_OptimizeTNLP(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %"class.Ipopt::SmartPtr.10", align 8 ; 7 uses
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.c, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %1, ptr %i.d, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %3, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %4, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %5, ptr %i.g, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %6, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %7, ptr %i.i, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %8, ptr %i.j, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %9, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %10, ptr %i.l, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %11, ptr %i.m, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(90) %i.o, i1 noundef zeroext false) ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %_ZN5Ipopt8SmartPtrINS_4TNLPEEC2EPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.i

_ZN5Ipopt8SmartPtrINS_4TNLPEEC2EPS1_.exit:        ; preds = %bb.a
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !18
  store ptr %i.b, ptr %12, align 8, !tbaa !148
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(90) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_4TNLPEEC2EPS1_.exit
  %i.ab = load ptr, ptr %12, align 8, !tbaa !148  ; 4 uses
  %.not.i.i32 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i32, label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !18
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.ab) #15, !inline_history !145
  br label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit:           ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  br label %bb.i

bb.f:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_4TNLPEEC2EPS1_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = load ptr, ptr %12, align 8, !tbaa !148  ; 4 uses
  %.not.i.i33 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i33, label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit34, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !18
  %i.an = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.an, ptr %i.al, align 8, !tbaa !18
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit34

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ak) #15, !inline_history !145
  br label %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit34

_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit34:         ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  resume { ptr, i32 } %i.aj

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ %i.aa, %_ZN5Ipopt8SmartPtrINS_4TNLPEED2Ev.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define zeroext range(i8 0, 2) i8 @Java_org_coinor_Ipopt_GetCurrIterate(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = inttoptr i64 %3 to ptr
  %i.d = inttoptr i64 %4 to ptr
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %6 to i64
  %i.f = icmp slt i32 %6, 0
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.060 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.not66 = icmp eq ptr %8, null                  ; 2 uses
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %6 to i64
  %i.k = icmp slt i32 %6, 0
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.059 = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 4 uses
  %.not67 = icmp eq ptr %9, null                  ; 2 uses
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %6 to i64
  %i.p = icmp slt i32 %6, 0
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.058 = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 4 uses
  %.not68 = icmp eq ptr %11, null                 ; 2 uses
  br i1 %.not68, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %10 to i64
  %i.u = icmp slt i32 %10, 0
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.057 = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.not69 = icmp eq ptr %12, null                 ; 2 uses
  br i1 %.not69, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %10 to i64
  %i.z = icmp slt i32 %10, 0
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi ptr [ %i.ac, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.ad = icmp ne i8 %5, 0
  %i.ae = tail call noundef zeroext i1 @_ZNK5Ipopt4TNLP16get_curr_iterateEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_iS6_S6_(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef %i.c, ptr noundef %i.d, i1 noundef zeroext %i.ad, i32 noundef %6, ptr noundef %.060, ptr noundef %.059, ptr noundef %.058, i32 noundef %10, ptr noundef %.057, ptr noundef %.0) ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %0, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1712
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !65
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %6, ptr noundef %.060), !inline_history !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not66, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %0, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %6, ptr noundef %.059), !inline_history !3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %.not67, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = load ptr, ptr %0, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1712
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %6, ptr noundef %.058), !inline_history !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not68, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = load ptr, ptr %0, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1712
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %10, ptr noundef %.057), !inline_history !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not69, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ar = load ptr, ptr %0, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1712
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %10, ptr noundef %.0), !inline_history !3
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.k
  %i.au = icmp eq ptr %.0, null
  br i1 %i.au, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @_ZdaPv(ptr noundef nonnull %.0) #14
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.av = icmp eq ptr %.057, null
  br i1 %i.av, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZdaPv(ptr noundef nonnull %.057) #14
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.aw = icmp eq ptr %.058, null
  br i1 %i.aw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZdaPv(ptr noundef nonnull %.058) #14
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ax = icmp eq ptr %.059, null
  br i1 %i.ax, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZdaPv(ptr noundef nonnull %.059) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ay = icmp eq ptr %.060, null
  br i1 %i.ay, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %.060) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.az = zext i1 %i.ae to i8
  ret i8 %i.az
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK5Ipopt4TNLP16get_curr_iterateEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_iS6_S6_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define zeroext range(i8 0, 2) i8 @Java_org_coinor_Ipopt_GetCurrViolations(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.c = inttoptr i64 %3 to ptr
  %i.d = inttoptr i64 %4 to ptr
  %.not = icmp eq ptr %7, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i32 %6 to i64
  %i.f = icmp slt i32 %6, 0
  %i.g = shl nuw nsw i64 %i.e, 3
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.080 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 4 uses
  %.not88 = icmp eq ptr %8, null                  ; 2 uses
  br i1 %.not88, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %6 to i64
  %i.k = icmp slt i32 %6, 0
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.079 = phi ptr [ %i.n, %bb.d ], [ null, %bb.c ] ; 4 uses
  %.not89 = icmp eq ptr %9, null                  ; 2 uses
  br i1 %.not89, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %6 to i64
  %i.p = icmp slt i32 %6, 0
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = select i1 %i.p, i64 -1, i64 %i.q
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.078 = phi ptr [ %i.s, %bb.f ], [ null, %bb.e ] ; 4 uses
  %.not90 = icmp eq ptr %10, null                 ; 2 uses
  br i1 %.not90, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %6 to i64
  %i.u = icmp slt i32 %6, 0
  %i.v = shl nuw nsw i64 %i.t, 3
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.w) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.077 = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ] ; 4 uses
  %.not91 = icmp eq ptr %11, null                 ; 2 uses
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %6 to i64
  %i.z = icmp slt i32 %6, 0
  %i.aa = shl nuw nsw i64 %i.y, 3
  %i.ab = select i1 %i.z, i64 -1, i64 %i.aa
  %i.ac = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.076 = phi ptr [ %i.ac, %bb.j ], [ null, %bb.i ] ; 4 uses
  %.not92 = icmp eq ptr %13, null                 ; 2 uses
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = zext nneg i32 %12 to i64
  %i.ae = icmp slt i32 %12, 0
  %i.af = shl nuw nsw i64 %i.ad, 3
  %i.ag = select i1 %i.ae, i64 -1, i64 %i.af
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.075 = phi ptr [ %i.ah, %bb.l ], [ null, %bb.k ] ; 4 uses
  %.not93 = icmp eq ptr %14, null                 ; 2 uses
  br i1 %.not93, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = zext nneg i32 %12 to i64
  %i.aj = icmp slt i32 %12, 0
  %i.ak = shl nuw nsw i64 %i.ai, 3
  %i.al = select i1 %i.aj, i64 -1, i64 %i.ak
  %i.am = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.al) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi ptr [ %i.am, %bb.n ], [ null, %bb.m ] ; 4 uses
  %i.an = icmp ne i8 %5, 0
  %i.ao = tail call noundef zeroext i1 @_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_(ptr noundef nonnull align 8 dereferenceable(12) %i.b, ptr noundef %i.c, ptr noundef %i.d, i1 noundef zeroext %i.an, i32 noundef %6, ptr noundef %.080, ptr noundef %.079, ptr noundef %.078, ptr noundef %.077, ptr noundef %.076, i32 noundef %12, ptr noundef %.075, ptr noundef %.0) ; 2 uses
  br i1 %i.ao, label %bb.p, label %bb.ad

bb.p:                                             ; preds = %bb.o
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %0, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1712
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !65
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7, i32 noundef 0, i32 noundef %6, ptr noundef %.080), !inline_history !3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not88, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = load ptr, ptr %0, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1712
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %8, i32 noundef 0, i32 noundef %6, ptr noundef %.079), !inline_history !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = load ptr, ptr %0, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1712
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !65
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %6, ptr noundef %.078), !inline_history !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %.not90, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %0, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1712
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %6, ptr noundef %.077), !inline_history !3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  br i1 %.not91, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bb = load ptr, ptr %0, align 8, !tbaa !43
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1712
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !65
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %6, ptr noundef %.076), !inline_history !3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  br i1 %.not92, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = load ptr, ptr %0, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1712
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %13, i32 noundef 0, i32 noundef %12, ptr noundef %.075), !inline_history !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %.not93, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = load ptr, ptr %0, align 8, !tbaa !43
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1712
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %14, i32 noundef 0, i32 noundef %12, ptr noundef %.0), !inline_history !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.o
  %i.bk = icmp eq ptr %.0, null
  br i1 %i.bk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZdaPv(ptr noundef nonnull %.0) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bl = icmp eq ptr %.075, null
  br i1 %i.bl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %.075) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bm = icmp eq ptr %.076, null
  br i1 %i.bm, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdaPv(ptr noundef nonnull %.076) #14
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bn = icmp eq ptr %.077, null
  br i1 %i.bn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZdaPv(ptr noundef nonnull %.077) #14
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bo = icmp eq ptr %.078, null
  br i1 %i.bo, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_ZdaPv(ptr noundef nonnull %.078) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bp = icmp eq ptr %.079, null
  br i1 %i.bp, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @_ZdaPv(ptr noundef nonnull %.079) #14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.bq = icmp eq ptr %.080, null
  br i1 %i.bq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZdaPv(ptr noundef nonnull %.080) #14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.br = zext i1 %i.ao to i8
  ret i8 %i.br
}

declare noundef zeroext i1 @_ZNK5Ipopt4TNLP19get_curr_violationsEPKNS_9IpoptDataEPNS_25IpoptCalculatedQuantitiesEbiPdS6_S6_S6_S6_iS6_S6_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @Java_org_coinor_Ipopt_FreeIpoptProblem(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = inttoptr i64 %2 to ptr                   ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 3 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !18
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 8, !tbaa !18
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit, label %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit.thread

_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit.thread: ; preds = %bb.c, %bb.d
  store ptr null, ptr %i.c, align 8, !tbaa !37
  br label %bb.e

_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit: ; preds = %bb.d
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(90) %i.d) #15, !inline_history !149
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !77  ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !37
  %.not.i.i.i4 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i4, label %_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit.thread, %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit
  %i.l = phi ptr [ %i.b, %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit.thread ], [ %.pre, %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !18
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !18
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(232) %i.l) #15, !inline_history !150
  br label %_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit

_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit:          ; preds = %_ZN5Ipopt8SmartPtrINS_16IpoptApplicationEEaSEPS1_.exit, %bb.e, %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Ipopt8SmartPtrI6JipoptEaSEPS1_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define zeroext range(i8 0, 2) i8 @Java_org_coinor_Ipopt_AddIpoptIntOption(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.Ipopt::SmartPtr.2", align 8 ; 7 uses
  %i.b = inttoptr i64 %2 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load ptr, ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef null), !inline_history !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !81
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.j, ptr %i.a, align 8, !tbaa !82
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !84
  %i.m = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.m, ptr %i.h, align 8, !tbaa !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !57
  store i8 %i.o, ptr %i.n, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !85
  %i.r = load ptr, ptr %5, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.2") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %i.u)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %6, align 8, !tbaa !86    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !18
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !18
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ad) #15, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.al = load ptr, ptr %0, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1360
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef nonnull %i.g)
          to label %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit unwind label %bb.n, !inline_history !8

_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !57
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
  %i.av = load ptr, ptr %6, align 8, !tbaa !86    ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i20, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !18
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(112) %i.av) #15, !inline_history !7
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
  %i.be = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !57
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.d = load ptr, ptr %0, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1352
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef null), !inline_history !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !81
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.j, ptr %i.a, align 8, !tbaa !82
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %5, align 8, !tbaa !84
  %i.m = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.m, ptr %i.h, align 8, !tbaa !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.g, align 1, !tbaa !57
  store i8 %i.o, ptr %i.n, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.g, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !85
  %i.r = load ptr, ptr %5, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.2") align 8 %6, ptr noundef nonnull align 8 dereferenceable(90) %i.u)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(112) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef %4, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %6, align 8, !tbaa !86    ; 4 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !18
  %i.ag = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !18
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(112) %i.ad) #15, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit:   ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.al = load ptr, ptr %0, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1360
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !87
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef nonnull %i.g)
          to label %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit unwind label %bb.n, !inline_history !8

_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit
  %i.ao = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7JNIEnv_21ReleaseStringUTFCharsEP8_jstringPKc.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !57
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
  %i.av = load ptr, ptr %6, align 8, !tbaa !86    ; 4 uses
  %.not.i.i20 = icmp eq ptr %i.av, null
  br i1 %.not.i.i20, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !18
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !18
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.m, label %_ZN5Ipopt8SmartPtrINS_11OptionsListEED2Ev.exit21

bb.m:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(112) %i.av) #15, !inline_history !7
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
  %i.be = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.o
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !57
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1352
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3, ptr noundef null), !inline_history !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !81
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.27) #13
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #15 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.k, ptr %i.b, align 8, !tbaa !82
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !84
  %i.n = load i64, ptr %i.b, align 8, !tbaa !82
  store i64 %i.n, ptr %i.i, align 8, !tbaa !57
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.o = phi ptr [ %i.m, %.noexc.i ], [ %i.i, %bb.b ] ; 2 uses
  switch i64 %i.k, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !57
  store i8 %i.p, ptr %i.o, align 1, !tbaa !57
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.q = load i64, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !85
  %i.s = load ptr, ptr %5, align 8, !tbaa !84
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.u = load ptr, ptr %0, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1352
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !78
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef null)
          to label %_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit unwind label %bb.k, !inline_history !6 ; 5 uses

_ZN7JNIEnv_17GetStringUTFCharsEP8_jstringPh.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.y, ptr %6, align 8, !tbaa !81
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
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !82
  %i.ab = icmp ugt i64 %i.aa, 15
  br i1 %i.ab, label %.noexc.i34, label %._crit_edge.i.i33

.noexc.i34:                                       ; preds = %bb.g
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc36 unwind label %bb.l   ; 2 uses

.noexc36:                                         ; preds = %.noexc.i34
  store ptr %i.ac, ptr %6, align 8, !tbaa !84
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 %i.ad, ptr %i.y, align 8, !tbaa !57
  br label %._crit_edge.i.i33

._crit_edge.i.i33:                                ; preds = %.noexc36, %bb.g
  %i.ae = phi ptr [ %i.ac, %.noexc36 ], [ %i.y, %bb.g ] ; 2 uses
  switch i64 %i.aa, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i33
  %i.af = load i8, ptr %i.x, align 1, !tbaa !57
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !57
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i33
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.x, i64 %i.aa, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i33
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !85
  %i.ai = load ptr, ptr %6, align 8, !tbaa !84
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ak = load i64, ptr %i.r, align 8, !tbaa !85
  switch i64 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61 [
    i64 21, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.j
  %i.al = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
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
  %i.ax = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 1
  %i.az = xor i64 %i.ay, 3270850780037212524
  %i.ba = getelementptr i8, ptr %i.ax, i64 6
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = xor i64 %i.bb, 8751179541578067300
  %i.bd = or i64 %i.az, %i.bc
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit39
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 129
  store i8 1, ptr %i.bh, align 1, !tbaa !74
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

bb.k:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %.noexc.i34, %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41: ; preds = %bb.j
  %i.bk = load ptr, ptr %5, align 8, !tbaa !84    ; 2 uses
  %i.bl = load i128, ptr %i.bk, align 1
  %i.bm = xor i128 %i.bl, 138844075185987090357910052522351946862
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i128
  %i.bq = xor i128 %i.bp, 25711
  %i.br = or i128 %i.bm, %i.bq
  %i.bs = icmp ne i128 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = load i64, ptr %i.ah, align 8
  %i.bw = icmp eq i64 %i.bv, 12
  %or.cond75 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond75, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41.thread61

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit43: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit41
  %i.bx = load ptr, ptr %6, align 8, !tbaa !84    ; 2 uses
  %i.by = load i64, ptr %i.bx, align 1
  %i.bz = xor i64 %i.by, 7017579283403338613
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = xor i64 %i.cc, 1735289196
  %i.ce = or i64 %i.bz, %i.cd
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = zext i1 %i.cf to i32
  %i.ch = icmp eq i32 %i.cg, 0
end_hunk_0
