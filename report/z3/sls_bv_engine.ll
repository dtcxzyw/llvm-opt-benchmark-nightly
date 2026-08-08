inline.NumInlined: 1865
inline.NumDeleted: 726
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN10sls_engine6mk_incEjRK3mpzRS0_:bb.a
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, 1
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.g, align 8, !tbaa !32
  store i32 %i.l, ptr %3, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -2
  store i8 %i.o, ptr %i.m, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.g)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare noundef zeroext i1 @_ZN11mpz_managerILb0EE15is_power_of_twoERK3mpzRj(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10sls_engine6mk_decEjRK3mpzRS0_(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !32
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.e = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6powersclEj(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %1) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.e, align 8, !tbaa !32
  store i32 %i.j, ptr %3, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, -2
  store i8 %i.m, ptr %i.k, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store i32 -1, ptr %4, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = and i8 %i.o, -4
  store i8 %i.p, ptr %i.n, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !38
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  ret void
}

declare void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10sls_engine6mk_invEjRK3mpzRS0_(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN11mpz_managerILb0EE11bitwise_notEjRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10sls_engine7mk_flipEP4sortRK3mpzjRS2_(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.mpz, align 8                 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 8, !tbaa !32
  store i32 %i.g, ptr %4, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4
  %i.j = and i8 %i.i, -2
  store i8 %i.j, ptr %i.h, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.l = tail call noundef zeroext i1 @_ZNK14bv_recognizers10is_bv_sortEPK4sort(ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef %1)
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = and i8 %i.n, -4                          ; 2 uses
  store i8 %i.o, ptr %i.m, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6powersclEj(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i32 noundef %3) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i8, ptr %i.s, align 4
  %i.u = and i8 %i.t, 1
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.r, align 8, !tbaa !32
  store i32 %i.w, ptr %5, align 8, !tbaa !32
  store i8 %i.o, ptr %i.m, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit8

bb.f:                                             ; preds = %bb.d
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit8

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit8:      ; preds = %bb.e, %bb.f
  call void @_ZN11mpz_managerILb0EE11bitwise_xorERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit9

bb.g:                                             ; preds = %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !223, !nonnull !168, !align !169
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 816
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !248
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %2, align 8, !tbaa !32
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ae = select i1 %i.ac, ptr %i.ad, ptr %i.b    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = and i8 %i.ag, 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !32
  store i32 %i.aj, ptr %4, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %i.am = and i8 %i.al, -2
  store i8 %i.am, ptr %i.ak, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit9

bb.j:                                             ; preds = %bb.h
  tail call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ae)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit9

bb.k:                                             ; preds = %bb.g
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 219, ptr noundef nonnull @.str.1)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit9

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit9:      ; preds = %bb.j, %bb.i, %bb.k, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit8
  ret void
}

declare noundef zeroext i1 @_ZNK14bv_recognizers10is_bv_sortEPK4sort(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb0EE11bitwise_xorERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10sls_engine14mk_random_moveER10ptr_vectorI9func_declE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %class.mpz, align 8                 ; 20 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !211    ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit:        ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !202  ; 7 uses
  %i.f = icmp ult i32 %i.e, 16
  br i1 %i.f, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit
  %i.g = icmp ult i32 %i.e, 256
  br i1 %i.g, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %i.e, 4096
  %i.i = icmp ult i32 %i.e, 65536
  %i.j = select i1 %i.i, i32 16, i32 32
  %i.k = select i1 %i.h, i32 12, i32 %i.j
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread: ; preds = %bb.a, %bb.c, %bb.b, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit
  %.0.i191 = phi i32 [ %i.e, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit ], [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.l = phi i32 [ 4, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit ], [ %i.k, %bb.c ], [ 8, %bb.b ], [ 4, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !105  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.d, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread._crit_edge

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread._crit_edge: ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 804
  %.promoted.i.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = mul i32 %i.r, 214013
  %i.t = add i32 %i.s, 2531011                    ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !79
  %i.u = lshr i32 %i.t, 16
  %i.v = and i32 %i.u, 32767
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread._crit_edge, %bb.d
  %.promoted.i = phi i32 [ %i.v, %bb.d ], [ %.promoted.i.pre, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread._crit_edge ]
  %.promoted8.i = phi i32 [ 15, %bb.d ], [ %i.o, %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit.thread._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.y = phi i32 [ %.promoted8.i, %bb.e ], [ %i.al, %bb.h ]
  %i.z = phi i32 [ %.promoted.i, %bb.e ], [ %i.am, %bb.h ] ; 2 uses
  %.in.i = phi i32 [ %i.l, %bb.e ], [ %i.aa, %bb.h ]
  %.07.i = phi i32 [ 0, %bb.e ], [ %i.ac, %bb.h ]
  %i.aa = add i32 %.in.i, -1                      ; 2 uses
  %i.ab = and i32 %i.z, 1
  %spec.select.i = or disjoint i32 %.07.i, %i.ab
  %i.ac = shl i32 %spec.select.i, 1               ; 2 uses
  %i.ad = lshr i32 %i.z, 1
  %i.ae = add i32 %i.y, -1                        ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.x, align 8, !tbaa !79
  %i.ah = mul i32 %i.ag, 214013
  %i.ai = add i32 %i.ah, 2531011                  ; 2 uses
  store i32 %i.ai, ptr %i.x, align 8, !tbaa !79
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = and i32 %i.aj, 32767
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = phi i32 [ 15, %bb.g ], [ %i.ae, %bb.f ] ; 4 uses
  %i.am = phi i32 [ %i.ak, %bb.g ], [ %i.ad, %bb.f ] ; 4 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN11sls_tracker15get_random_uintEj.exit, label %bb.f, !llvm.loop !308

_ZN11sls_tracker15get_random_uintEj.exit:         ; preds = %bb.h
  store i32 %i.am, ptr %i.w, align 4, !tbaa !81
  store i32 %i.al, ptr %i.n, align 8, !tbaa !105
  %i.an = urem i32 %i.ac, %.0.i191
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ao
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !309 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 8, !tbaa !32
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.as = load i8, ptr %i.ar, align 4
  %i.at = and i8 %i.as, -4                        ; 3 uses
  store i8 %i.at, ptr %i.ar, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.au, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !310 ; 3 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !223, !nonnull !168, !align !169
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 816
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !248
  %i.ba = icmp eq ptr %i.aw, %i.az
  br i1 %i.ba, label %bb.i, label %_ZN11sls_tracker15get_random_boolEv.exit

bb.i:                                             ; preds = %_ZN11sls_tracker15get_random_uintEj.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !226 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !135 ; 3 uses
  %i.bh = add i32 %i.bg, -1
  %i.bi = and i32 %i.bh, %i.be                    ; 2 uses
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !141 ; 3 uses
  %i.bk = zext i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bk
  %.not34.i.i.i.i.i = icmp eq i32 %i.bi, %i.bg
  br i1 %.not34.i.i.i.i.i, label %.lr.ph38.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.bm = zext i32 %i.bi to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bm, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.l
  %.035.i.i.i.i.i = phi ptr [ %i.bu, %bb.l ], [ %i.bn, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.bo = load ptr, ptr %.035.i.i.i.i.i, align 8, !tbaa !235 ; 4 uses
  %i.bp = icmp ult ptr %i.bo, inttoptr (i64 2 to ptr)
  br i1 %i.bp, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !226
  %i.bs = icmp eq i32 %i.br, %i.be
  %i.bt = icmp eq ptr %i.bo, %i.aq
  %or.cond.i.i.i.i.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i.i.i.i.i, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bl
  br i1 %.not.i.i.i.i.i, label %.lr.ph38.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !238

.lr.ph38.i.i.i.i.i.preheader:                     ; preds = %bb.l, %bb.i
  br label %.lr.ph38.i.i.i.i.i

.lr.ph38.i.i.i.i.i:                               ; preds = %.lr.ph38.i.i.i.i.i.preheader, %.lr.ph38.backedge.i.i.i.i.i
  %.137.i.i.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph38.backedge.i.i.i.i.i ], [ %i.bj, %.lr.ph38.i.i.i.i.i.preheader ] ; 3 uses
  %i.bv = load ptr, ptr %.137.i.i.i.i.i, align 8, !tbaa !235 ; 4 uses
  %i.bw = icmp ult ptr %i.bv, inttoptr (i64 2 to ptr)
  br i1 %i.bw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph38.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !226
  %i.bz = icmp eq i32 %i.by, %i.be
  %i.ca = icmp eq ptr %i.bv, %i.aq
  %or.cond31.i.i.i.i.i = and i1 %i.ca, %i.bz
  br i1 %or.cond31.i.i.i.i.i, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i, label %.lr.ph38.backedge.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph38.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bv) ]
  br label %.lr.ph38.backedge.i.i.i.i.i

.lr.ph38.backedge.i.i.i.i.i:                      ; preds = %bb.n, %bb.m
  %.pn.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i, i64 16
  br label %.lr.ph38.i.i.i.i.i, !llvm.loop !239

_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i: ; preds = %bb.j, %bb.m
  %.026.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i, %bb.m ], [ %.035.i.i.i.i.i, %bb.j ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !205 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !226 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !122 ; 3 uses
  %i.ci = add i32 %i.ch, -1
  %i.cj = and i32 %i.ci, %i.cf                    ; 2 uses
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !130 ; 3 uses
  %i.cl = zext i32 %i.ch to i64
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %i.ck, i64 %i.cl
  %.not34.i.i.i.i4.i = icmp eq i32 %i.cj, %i.ch
  br i1 %.not34.i.i.i.i4.i, label %.lr.ph38.i.i.i.i11.i.preheader, label %.lr.ph.i.i.i.i5.i.preheader

.lr.ph.i.i.i.i5.i.preheader:                      ; preds = %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i
  %i.cn = zext i32 %i.cj to i64
  %.idx.i.i.i.i3.i = shl nuw nsw i64 %i.cn, 6
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i.i.i3.i
  br label %.lr.ph.i.i.i.i5.i

.lr.ph.i.i.i.i5.i:                                ; preds = %.lr.ph.i.i.i.i5.i.preheader, %bb.q
  %.035.i.i.i.i6.i = phi ptr [ %i.cv, %bb.q ], [ %i.co, %.lr.ph.i.i.i.i5.i.preheader ] ; 3 uses
  %i.cp = load ptr, ptr %.035.i.i.i.i6.i, align 8, !tbaa !227 ; 4 uses
  %i.cq = icmp ult ptr %i.cp, inttoptr (i64 2 to ptr)
  br i1 %i.cq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i5.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !226
  %i.ct = icmp eq i32 %i.cs, %i.cf
  %i.cu = icmp eq ptr %i.cp, %i.cc
  %or.cond.i.i.i.i7.i = and i1 %i.cu, %i.ct
  br i1 %or.cond.i.i.i.i7.i, label %_ZN11sls_tracker9get_valueEP9func_decl.exit, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.i.i5.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cp) ]
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i6.i, i64 64 ; 2 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.cv, %i.cm
  br i1 %.not.i.i.i.i8.i, label %.lr.ph38.i.i.i.i11.i.preheader, label %.lr.ph.i.i.i.i5.i, !llvm.loop !230

.lr.ph38.i.i.i.i11.i.preheader:                   ; preds = %bb.q, %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i
  br label %.lr.ph38.i.i.i.i11.i

.lr.ph38.i.i.i.i11.i:                             ; preds = %.lr.ph38.i.i.i.i11.i.preheader, %.lr.ph38.backedge.i.i.i.i15.i
  %.137.i.i.i.i13.i = phi ptr [ %.pn.i.i16.i, %.lr.ph38.backedge.i.i.i.i15.i ], [ %i.ck, %.lr.ph38.i.i.i.i11.i.preheader ] ; 3 uses
  %i.cw = load ptr, ptr %.137.i.i.i.i13.i, align 8, !tbaa !227 ; 4 uses
  %i.cx = icmp ult ptr %i.cw, inttoptr (i64 2 to ptr)
  br i1 %i.cx, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph38.i.i.i.i11.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !226
  %i.da = icmp eq i32 %i.cz, %i.cf
  %i.db = icmp eq ptr %i.cw, %i.cc
  %or.cond31.i.i.i.i14.i = and i1 %i.db, %i.da
  br i1 %or.cond31.i.i.i.i14.i, label %_ZN11sls_tracker9get_valueEP9func_decl.exit, label %.lr.ph38.backedge.i.i.i.i15.i

bb.s:                                             ; preds = %.lr.ph38.i.i.i.i11.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
  br label %.lr.ph38.backedge.i.i.i.i15.i

.lr.ph38.backedge.i.i.i.i15.i:                    ; preds = %bb.s, %bb.r
  %.pn.i.i16.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i13.i, i64 64
  br label %.lr.ph38.i.i.i.i11.i, !llvm.loop !231

_ZN11sls_tracker9get_valueEP9func_decl.exit:      ; preds = %bb.o, %bb.r
  %.026.i.i.i.i18.i = phi ptr [ %.137.i.i.i.i13.i, %bb.r ], [ %.035.i.i.i.i6.i, %bb.o ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i18.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !32
  %i.de = icmp eq i32 %i.dd, 0
  %.v = select i1 %i.de, i64 712, i64 696
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dh = load i8, ptr %i.dg, align 4
  %i.di = and i8 %i.dh, 1
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN11sls_tracker9get_valueEP9func_decl.exit
  %i.dk = load i32, ptr %i.df, align 8, !tbaa !32
  store i32 %i.dk, ptr %3, align 8, !tbaa !32
  store i8 %i.at, ptr %i.ar, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.u:                                             ; preds = %_ZN11sls_tracker9get_valueEP9func_decl.exit
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.df)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

_ZN11sls_tracker15get_random_boolEv.exit:         ; preds = %_ZN11sls_tracker15get_random_uintEj.exit
  %i.dl = and i32 %i.am, 1
  %.not.i33 = icmp eq i32 %i.dl, 0
  %.v.i = select i1 %.not.i33, i64 48, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 %.v.i ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = and i8 %i.do, 1
  %i.dq = icmp eq i8 %i.dp, 0
  %i.dr = load i32, ptr %i.dm, align 8
  %i.ds = icmp eq i32 %i.dr, 1
  %i.dt = select i1 %i.dq, i1 %i.ds, i1 false     ; 2 uses
  %spec.select = select i1 %i.dt, i32 2, i32 0
  %i.du = icmp eq i32 %i.al, 1
  br i1 %i.du, label %bb.v, label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %_ZN11sls_tracker15get_random_boolEv.exit
  %i.dv = lshr i32 %i.am, 1
  %i.dw = add i32 %i.al, -2
  br label %_ZN11sls_tracker15get_random_boolEv.exit39

bb.v:                                             ; preds = %_ZN11sls_tracker15get_random_boolEv.exit
  %i.dx = load i32, ptr %i.x, align 8, !tbaa !79
  %i.dy = mul i32 %i.dx, 214013
  %i.dz = add i32 %i.dy, 2531011                  ; 2 uses
  store i32 %i.dz, ptr %i.x, align 8, !tbaa !79
  %i.ea = lshr i32 %i.dz, 16
  %i.eb = and i32 %i.ea, 32767
  br label %_ZN11sls_tracker15get_random_boolEv.exit39

_ZN11sls_tracker15get_random_boolEv.exit39:       ; preds = %._crit_edge.i34, %bb.v
  %i.ec = phi i32 [ %i.dw, %._crit_edge.i34 ], [ 14, %bb.v ] ; 3 uses
  %i.ed = phi i32 [ %i.dv, %._crit_edge.i34 ], [ %i.eb, %bb.v ] ; 2 uses
  %i.ee = and i32 %i.ed, 1
  %.not.i37 = icmp eq i32 %i.ee, 0
  %i.ef = lshr i32 %i.ed, 1                       ; 2 uses
  store i32 %i.ef, ptr %i.w, align 4, !tbaa !81
  store i32 %i.ec, ptr %i.n, align 8, !tbaa !105
  %.v.i38 = select i1 %.not.i37, i64 48, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 %.v.i38 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i8, ptr %i.eh, align 4
  %i.ej = and i8 %i.ei, 1
  %i.ek = icmp eq i8 %i.ej, 0
  %i.el = load i32, ptr %i.eg, align 8
  %i.em = icmp eq i32 %i.el, 1
  %i.en = select i1 %i.ek, i1 %i.em, i1 false     ; 2 uses
  %i.eo = zext i1 %i.en to i32
  %.1 = or disjoint i32 %spec.select, %i.eo
  %4 = and i1 %i.dt, %i.en
  %spec.store.select = select i1 %4, i32 0, i32 %.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !314
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !315 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !318 ; 4 uses
  switch i32 %spec.store.select, label %default.unreachable304 [
    i32 0, label %bb.w
    i32 1, label %bb.ap
    i32 2, label %bb.be
    i32 3, label %5
  ]

bb.w:                                             ; preds = %_ZN11sls_tracker15get_random_boolEv.exit39
  switch i8 %i.eu, label %bb.x [
    i8 0, label %_ZNK7bv_util11get_bv_sizeEPK4sort.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i
  ], !prof !320

bb.x:                                             ; preds = %bb.w
  %i.ev = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ev, align 8, !tbaa !321
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr @.str.32, ptr %i.ew, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %i.ev, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i:   ; preds = %bb.w
  %i.ex = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ex, align 8, !tbaa !321
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr @.str.31, ptr %i.ey, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK7bv_util11get_bv_sizeEPK4sort.exit:           ; preds = %bb.w
  %i.ez = load i32, ptr %i.es, align 8, !tbaa !202 ; 5 uses
  %i.fa = icmp ult i32 %i.ez, 16
  br i1 %i.fa, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK7bv_util11get_bv_sizeEPK4sort.exit
  %i.fb = icmp ult i32 %i.ez, 256
  br i1 %i.fb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fc = icmp ult i32 %i.ez, 4096
  %i.fd = icmp ult i32 %i.ez, 65536
  %i.fe = select i1 %i.fd, i32 16, i32 32
  %i.ff = select i1 %i.fc, i32 12, i32 %i.fe
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZNK7bv_util11get_bv_sizeEPK4sort.exit
  %i.fg = phi i32 [ 4, %_ZNK7bv_util11get_bv_sizeEPK4sort.exit ], [ %i.ff, %bb.z ], [ 8, %bb.y ]
  %i.fh = icmp eq i32 %i.ec, 0
  br i1 %i.fh, label %bb.ab, label %.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i32, ptr %i.x, align 8, !tbaa !79
  %i.fj = mul i32 %i.fi, 214013
  %i.fk = add i32 %i.fj, 2531011                  ; 2 uses
  store i32 %i.fk, ptr %i.x, align 8, !tbaa !79
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = and i32 %i.fl, 32767
  br label %.preheader

.preheader:                                       ; preds = %bb.ab, %bb.aa
  %.ph = phi i32 [ %i.ec, %bb.aa ], [ 15, %bb.ab ]
  %.ph363 = phi i32 [ %i.ef, %bb.aa ], [ %i.fm, %bb.ab ]
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader, %bb.ae
  %i.fn = phi i32 [ %i.ga, %bb.ae ], [ %.ph, %.preheader ]
  %i.fo = phi i32 [ %i.gb, %bb.ae ], [ %.ph363, %.preheader ] ; 2 uses
  %.in.i42 = phi i32 [ %i.fp, %bb.ae ], [ %i.fg, %.preheader ]
  %.07.i43 = phi i32 [ %i.fr, %bb.ae ], [ 0, %.preheader ]
  %i.fp = add i32 %.in.i42, -1                    ; 2 uses
  %i.fq = and i32 %i.fo, 1
  %spec.select.i44 = or disjoint i32 %.07.i43, %i.fq
  %i.fr = shl i32 %spec.select.i44, 1             ; 2 uses
  %i.fs = lshr i32 %i.fo, 1
  %i.ft = add i32 %i.fn, -1                       ; 2 uses
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fv = load i32, ptr %i.x, align 8, !tbaa !79
  %i.fw = mul i32 %i.fv, 214013
  %i.fx = add i32 %i.fw, 2531011                  ; 2 uses
  store i32 %i.fx, ptr %i.x, align 8, !tbaa !79
  %i.fy = lshr i32 %i.fx, 16
  %i.fz = and i32 %i.fy, 32767
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ga = phi i32 [ 15, %bb.ad ], [ %i.ft, %bb.ac ] ; 2 uses
  %i.gb = phi i32 [ %i.fz, %bb.ad ], [ %i.fs, %bb.ac ] ; 2 uses
  %.not.i45 = icmp eq i32 %i.fp, 0
  br i1 %.not.i45, label %_ZN11sls_tracker15get_random_uintEj.exit47, label %bb.ac, !llvm.loop !308

_ZN11sls_tracker15get_random_uintEj.exit47:       ; preds = %bb.ae
  store i32 %i.gb, ptr %i.w, align 4, !tbaa !81
  store i32 %i.ga, ptr %i.n, align 8, !tbaa !105
  %i.gc = urem i32 %i.fr, %i.ez
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ge = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !226 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !135 ; 3 uses
  %i.gi = add i32 %i.gh, -1
  %i.gj = and i32 %i.gi, %i.gf                    ; 2 uses
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !141 ; 3 uses
  %i.gl = zext i32 %i.gh to i64
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.gl
  %.not34.i.i.i.i.i49 = icmp eq i32 %i.gj, %i.gh
  br i1 %.not34.i.i.i.i.i49, label %.lr.ph38.i.i.i.i.i56.preheader, label %.lr.ph.i.i.i.i.i50.preheader

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %_ZN11sls_tracker15get_random_uintEj.exit47
  %i.gn = zext i32 %i.gj to i64
  %.idx.i.i.i.i.i48 = shl nuw nsw i64 %i.gn, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i.i.i.i.i48
  br label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader, %bb.ah
  %.035.i.i.i.i.i51 = phi ptr [ %i.gv, %bb.ah ], [ %i.go, %.lr.ph.i.i.i.i.i50.preheader ] ; 3 uses
  %i.gp = load ptr, ptr %.035.i.i.i.i.i51, align 8, !tbaa !235 ; 4 uses
  %i.gq = icmp ult ptr %i.gp, inttoptr (i64 2 to ptr)
  br i1 %i.gq, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i50
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !226
  %i.gt = icmp eq i32 %i.gs, %i.gf
  %i.gu = icmp eq ptr %i.gp, %i.aq
  %or.cond.i.i.i.i.i52 = and i1 %i.gu, %i.gt
  br i1 %or.cond.i.i.i.i.i52, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i63, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i51, i64 16 ; 2 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.gv, %i.gm
  br i1 %.not.i.i.i.i.i53, label %.lr.ph38.i.i.i.i.i56.preheader, label %.lr.ph.i.i.i.i.i50, !llvm.loop !238

.lr.ph38.i.i.i.i.i56.preheader:                   ; preds = %bb.ah, %_ZN11sls_tracker15get_random_uintEj.exit47
  br label %.lr.ph38.i.i.i.i.i56

.lr.ph38.i.i.i.i.i56:                             ; preds = %.lr.ph38.i.i.i.i.i56.preheader, %.lr.ph38.backedge.i.i.i.i.i60
  %.137.i.i.i.i.i58 = phi ptr [ %.pn.i.i.i61, %.lr.ph38.backedge.i.i.i.i.i60 ], [ %i.gk, %.lr.ph38.i.i.i.i.i56.preheader ] ; 3 uses
  %i.gw = load ptr, ptr %.137.i.i.i.i.i58, align 8, !tbaa !235 ; 4 uses
  %i.gx = icmp ult ptr %i.gw, inttoptr (i64 2 to ptr)
  br i1 %i.gx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph38.i.i.i.i.i56
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !226
  %i.ha = icmp eq i32 %i.gz, %i.gf
  %i.hb = icmp eq ptr %i.gw, %i.aq
  %or.cond31.i.i.i.i.i59 = and i1 %i.hb, %i.ha
  br i1 %or.cond31.i.i.i.i.i59, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i63, label %.lr.ph38.backedge.i.i.i.i.i60

bb.aj:                                            ; preds = %.lr.ph38.i.i.i.i.i56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gw) ]
  br label %.lr.ph38.backedge.i.i.i.i.i60

.lr.ph38.backedge.i.i.i.i.i60:                    ; preds = %bb.aj, %bb.ai
  %.pn.i.i.i61 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i58, i64 16
  br label %.lr.ph38.i.i.i.i.i56, !llvm.loop !239

_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i63: ; preds = %bb.af, %bb.ai
  %.026.i.i.i.i.i64 = phi ptr [ %.137.i.i.i.i.i58, %bb.ai ], [ %.035.i.i.i.i.i51, %bb.af ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i64, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !205 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !226 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !122 ; 3 uses
  %i.hj = add i32 %i.hi, -1
  %i.hk = and i32 %i.hj, %i.hg                    ; 2 uses
  %i.hl = load ptr, ptr %i.he, align 8, !tbaa !130 ; 3 uses
  %i.hm = zext i32 %i.hi to i64
  %i.hn = getelementptr inbounds nuw [64 x i8], ptr %i.hl, i64 %i.hm
  %.not34.i.i.i.i4.i66 = icmp eq i32 %i.hk, %i.hi
  br i1 %.not34.i.i.i.i4.i66, label %.lr.ph38.i.i.i.i11.i73.preheader, label %.lr.ph.i.i.i.i5.i67.preheader

.lr.ph.i.i.i.i5.i67.preheader:                    ; preds = %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i63
  %i.ho = zext i32 %i.hk to i64
  %.idx.i.i.i.i3.i65 = shl nuw nsw i64 %i.ho, 6
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx.i.i.i.i3.i65
  br label %.lr.ph.i.i.i.i5.i67

.lr.ph.i.i.i.i5.i67:                              ; preds = %.lr.ph.i.i.i.i5.i67.preheader, %bb.am
  %.035.i.i.i.i6.i68 = phi ptr [ %i.hw, %bb.am ], [ %i.hp, %.lr.ph.i.i.i.i5.i67.preheader ] ; 3 uses
  %i.hq = load ptr, ptr %.035.i.i.i.i6.i68, align 8, !tbaa !227 ; 4 uses
  %i.hr = icmp ult ptr %i.hq, inttoptr (i64 2 to ptr)
  br i1 %i.hr, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i5.i67
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !226
  %i.hu = icmp eq i32 %i.ht, %i.hg
  %i.hv = icmp eq ptr %i.hq, %i.hd
  %or.cond.i.i.i.i7.i69 = and i1 %i.hv, %i.hu
  br i1 %or.cond.i.i.i.i7.i69, label %_ZN11sls_tracker9get_valueEP9func_decl.exit81, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i.i5.i67
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hq) ]
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.hw = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i6.i68, i64 64 ; 2 uses
  %.not.i.i.i.i8.i70 = icmp eq ptr %i.hw, %i.hn
end_hunk_0
begin_hunk_1_@_ZN10sls_engine14mk_random_moveER10ptr_vectorI9func_declE:bb.a
  %i.kx = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.kx, align 8, !tbaa !321
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store ptr @.str.32, ptr %i.ky, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %i.kx, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i118: ; preds = %bb.be
  %i.kz = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.kz, align 8, !tbaa !321
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr @.str.31, ptr %i.la, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %i.kz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK7bv_util11get_bv_sizeEPK4sort.exit119:        ; preds = %bb.be
  %i.lb = load i32, ptr %i.es, align 8, !tbaa !202
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ld = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !226 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !135 ; 3 uses
  %i.lh = add i32 %i.lg, -1
  %i.li = and i32 %i.lh, %i.le                    ; 2 uses
  %i.lj = load ptr, ptr %i.lc, align 8, !tbaa !141 ; 3 uses
  %i.lk = zext i32 %i.lg to i64
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.lj, i64 %i.lk
  %.not34.i.i.i.i.i121 = icmp eq i32 %i.li, %i.lg
  br i1 %.not34.i.i.i.i.i121, label %.lr.ph38.i.i.i.i.i128.preheader, label %.lr.ph.i.i.i.i.i122.preheader

.lr.ph.i.i.i.i.i122.preheader:                    ; preds = %_ZNK7bv_util11get_bv_sizeEPK4sort.exit119
  %i.lm = zext i32 %i.li to i64
  %.idx.i.i.i.i.i120 = shl nuw nsw i64 %i.lm, 4
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 %.idx.i.i.i.i.i120
  br label %.lr.ph.i.i.i.i.i122

.lr.ph.i.i.i.i.i122:                              ; preds = %.lr.ph.i.i.i.i.i122.preheader, %bb.bi
  %.035.i.i.i.i.i123 = phi ptr [ %i.lu, %bb.bi ], [ %i.ln, %.lr.ph.i.i.i.i.i122.preheader ] ; 3 uses
  %i.lo = load ptr, ptr %.035.i.i.i.i.i123, align 8, !tbaa !235 ; 4 uses
  %i.lp = icmp ult ptr %i.lo, inttoptr (i64 2 to ptr)
  br i1 %i.lp, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i.i122
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !226
  %i.ls = icmp eq i32 %i.lr, %i.le
  %i.lt = icmp eq ptr %i.lo, %i.aq
  %or.cond.i.i.i.i.i124 = and i1 %i.lt, %i.ls
  br i1 %or.cond.i.i.i.i.i124, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i135, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i.i122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lu = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i123, i64 16 ; 2 uses
  %.not.i.i.i.i.i125 = icmp eq ptr %i.lu, %i.ll
  br i1 %.not.i.i.i.i.i125, label %.lr.ph38.i.i.i.i.i128.preheader, label %.lr.ph.i.i.i.i.i122, !llvm.loop !238

.lr.ph38.i.i.i.i.i128.preheader:                  ; preds = %bb.bi, %_ZNK7bv_util11get_bv_sizeEPK4sort.exit119
  br label %.lr.ph38.i.i.i.i.i128

.lr.ph38.i.i.i.i.i128:                            ; preds = %.lr.ph38.i.i.i.i.i128.preheader, %.lr.ph38.backedge.i.i.i.i.i132
  %.137.i.i.i.i.i130 = phi ptr [ %.pn.i.i.i133, %.lr.ph38.backedge.i.i.i.i.i132 ], [ %i.lj, %.lr.ph38.i.i.i.i.i128.preheader ] ; 3 uses
  %i.lv = load ptr, ptr %.137.i.i.i.i.i130, align 8, !tbaa !235 ; 4 uses
  %i.lw = icmp ult ptr %i.lv, inttoptr (i64 2 to ptr)
  br i1 %i.lw, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph38.i.i.i.i.i128
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 12
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !226
  %i.lz = icmp eq i32 %i.ly, %i.le
  %i.ma = icmp eq ptr %i.lv, %i.aq
  %or.cond31.i.i.i.i.i131 = and i1 %i.ma, %i.lz
  br i1 %or.cond31.i.i.i.i.i131, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i135, label %.lr.ph38.backedge.i.i.i.i.i132

bb.bk:                                            ; preds = %.lr.ph38.i.i.i.i.i128
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lv) ]
  br label %.lr.ph38.backedge.i.i.i.i.i132

.lr.ph38.backedge.i.i.i.i.i132:                   ; preds = %bb.bk, %bb.bj
  %.pn.i.i.i133 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i130, i64 16
  br label %.lr.ph38.i.i.i.i.i128, !llvm.loop !239

_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i135: ; preds = %bb.bg, %bb.bj
  %.026.i.i.i.i.i136 = phi ptr [ %.137.i.i.i.i.i130, %bb.bj ], [ %.035.i.i.i.i.i123, %bb.bg ]
  %i.mb = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i136, i64 8
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !205 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !226 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !122 ; 3 uses
  %i.mi = add i32 %i.mh, -1
  %i.mj = and i32 %i.mi, %i.mf                    ; 2 uses
  %i.mk = load ptr, ptr %i.md, align 8, !tbaa !130 ; 3 uses
  %i.ml = zext i32 %i.mh to i64
  %i.mm = getelementptr inbounds nuw [64 x i8], ptr %i.mk, i64 %i.ml
  %.not34.i.i.i.i4.i138 = icmp eq i32 %i.mj, %i.mh
  br i1 %.not34.i.i.i.i4.i138, label %.lr.ph38.i.i.i.i11.i145.preheader, label %.lr.ph.i.i.i.i5.i139.preheader

.lr.ph.i.i.i.i5.i139.preheader:                   ; preds = %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i135
  %i.mn = zext i32 %i.mj to i64
  %.idx.i.i.i.i3.i137 = shl nuw nsw i64 %i.mn, 6
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i.i3.i137
  br label %.lr.ph.i.i.i.i5.i139

.lr.ph.i.i.i.i5.i139:                             ; preds = %.lr.ph.i.i.i.i5.i139.preheader, %bb.bn
  %.035.i.i.i.i6.i140 = phi ptr [ %i.mv, %bb.bn ], [ %i.mo, %.lr.ph.i.i.i.i5.i139.preheader ] ; 3 uses
  %i.mp = load ptr, ptr %.035.i.i.i.i6.i140, align 8, !tbaa !227 ; 4 uses
  %i.mq = icmp ult ptr %i.mp, inttoptr (i64 2 to ptr)
  br i1 %i.mq, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i5.i139
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !226
  %i.mt = icmp eq i32 %i.ms, %i.mf
  %i.mu = icmp eq ptr %i.mp, %i.mc
  %or.cond.i.i.i.i7.i141 = and i1 %i.mu, %i.mt
  br i1 %or.cond.i.i.i.i7.i141, label %_ZN11sls_tracker9get_valueEP9func_decl.exit153, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i5.i139
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mp) ]
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.mv = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i6.i140, i64 64 ; 2 uses
  %.not.i.i.i.i8.i142 = icmp eq ptr %i.mv, %i.mm
  br i1 %.not.i.i.i.i8.i142, label %.lr.ph38.i.i.i.i11.i145.preheader, label %.lr.ph.i.i.i.i5.i139, !llvm.loop !230

.lr.ph38.i.i.i.i11.i145.preheader:                ; preds = %bb.bn, %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i135
  br label %.lr.ph38.i.i.i.i11.i145

.lr.ph38.i.i.i.i11.i145:                          ; preds = %.lr.ph38.i.i.i.i11.i145.preheader, %.lr.ph38.backedge.i.i.i.i15.i149
  %.137.i.i.i.i13.i147 = phi ptr [ %.pn.i.i16.i150, %.lr.ph38.backedge.i.i.i.i15.i149 ], [ %i.mk, %.lr.ph38.i.i.i.i11.i145.preheader ] ; 3 uses
  %i.mw = load ptr, ptr %.137.i.i.i.i13.i147, align 8, !tbaa !227 ; 4 uses
  %i.mx = icmp ult ptr %i.mw, inttoptr (i64 2 to ptr)
  br i1 %i.mx, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph38.i.i.i.i11.i145
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !226
  %i.na = icmp eq i32 %i.mz, %i.mf
  %i.nb = icmp eq ptr %i.mw, %i.mc
  %or.cond31.i.i.i.i14.i148 = and i1 %i.nb, %i.na
  br i1 %or.cond31.i.i.i.i14.i148, label %_ZN11sls_tracker9get_valueEP9func_decl.exit153, label %.lr.ph38.backedge.i.i.i.i15.i149

bb.bp:                                            ; preds = %.lr.ph38.i.i.i.i11.i145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mw) ]
  br label %.lr.ph38.backedge.i.i.i.i15.i149

.lr.ph38.backedge.i.i.i.i15.i149:                 ; preds = %bb.bp, %bb.bo
  %.pn.i.i16.i150 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i13.i147, i64 64
  br label %.lr.ph38.i.i.i.i11.i145, !llvm.loop !231

_ZN11sls_tracker9get_valueEP9func_decl.exit153:   ; preds = %bb.bl, %bb.bo
  %.026.i.i.i.i18.i152 = phi ptr [ %.137.i.i.i.i13.i147, %bb.bo ], [ %.035.i.i.i.i6.i140, %bb.bl ]
  %i.nc = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i18.i152, i64 16 ; 2 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !32
  %i.ne = icmp eq i32 %i.nd, 0
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br i1 %i.ne, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %_ZN11sls_tracker9get_valueEP9func_decl.exit153
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.nh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6powersclEj(ptr noundef nonnull align 8 dereferenceable(32) %i.ng, i32 noundef %i.lb) ; 3 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %i.nj = load i8, ptr %i.ni, align 4
  %i.nk = and i8 %i.nj, 1
  %i.nl = icmp eq i8 %i.nk, 0
  br i1 %i.nl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.nm = load i32, ptr %i.nh, align 8, !tbaa !32
  store i32 %i.nm, ptr %3, align 8, !tbaa !32
  store i8 %i.at, ptr %i.ar, align 4
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

bb.bs:                                            ; preds = %bb.bq
  call void @_ZN11mpz_managerILb0EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.nh)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i:     ; preds = %bb.bs, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 -1, ptr %2, align 8, !tbaa !32
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 4
  %i.np = and i8 %i.no, -4
  store i8 %i.np, ptr %i.nn, align 4
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.nq, align 8, !tbaa !38
  call void @_ZN11mpz_managerILb0EE3addERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

bb.bt:                                            ; preds = %_ZN11sls_tracker9get_valueEP9func_decl.exit153
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @_ZN11mpz_managerILb0EE3subERK3mpzS3_RS1_(ptr noundef nonnull align 8 dereferenceable(600) %i.nf, ptr noundef nonnull align 8 dereferenceable(16) %i.nc, ptr noundef nonnull align 8 dereferenceable(16) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

5:                                                ; preds = %_ZN11sls_tracker15get_random_boolEv.exit39
  switch i8 %i.eu, label %6 [
    i8 0, label %_ZNK7bv_util11get_bv_sizeEPK4sort.exit155
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i154
  ], !prof !320

6:                                                ; preds = %5
  %7 = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %7, align 8, !tbaa !321
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.32, ptr %8, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.i154: ; preds = %5
  %9 = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %9, align 8, !tbaa !321
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.31, ptr %10, align 8, !tbaa !323
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #23
  unreachable

_ZNK7bv_util11get_bv_sizeEPK4sort.exit155:        ; preds = %5
  %11 = load i32, ptr %i.es, align 8, !tbaa !202
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 936
  %13 = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %14 = load i32, ptr %13, align 4, !tbaa !226    ; 3 uses
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 944
  %16 = load i32, ptr %15, align 8, !tbaa !135    ; 3 uses
  %17 = add i32 %16, -1
  %18 = and i32 %17, %14                          ; 2 uses
  %19 = load ptr, ptr %12, align 8, !tbaa !141    ; 3 uses
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds nuw [16 x i8], ptr %19, i64 %20
  %.not34.i.i.i.i.i157 = icmp eq i32 %18, %16
  br i1 %.not34.i.i.i.i.i157, label %.lr.ph38.i.i.i.i.i164.preheader, label %.lr.ph.i.i.i.i.i158.preheader

.lr.ph.i.i.i.i.i158.preheader:                    ; preds = %_ZNK7bv_util11get_bv_sizeEPK4sort.exit155
  %22 = zext i32 %18 to i64
  %.idx.i.i.i.i.i156 = shl nuw nsw i64 %22, 4
  %23 = getelementptr inbounds nuw i8, ptr %19, i64 %.idx.i.i.i.i.i156
  br label %.lr.ph.i.i.i.i.i158

.lr.ph.i.i.i.i.i158:                              ; preds = %.lr.ph.i.i.i.i.i158.preheader, %32
  %.035.i.i.i.i.i159 = phi ptr [ %33, %32 ], [ %23, %.lr.ph.i.i.i.i.i158.preheader ] ; 3 uses
  %24 = load ptr, ptr %.035.i.i.i.i.i159, align 8, !tbaa !235 ; 4 uses
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %31, label %26

26:                                               ; preds = %.lr.ph.i.i.i.i.i158
  %27 = getelementptr inbounds nuw i8, ptr %24, i64 12
  %28 = load i32, ptr %27, align 4, !tbaa !226
  %29 = icmp eq i32 %28, %14
  %30 = icmp eq ptr %24, %i.aq
  %or.cond.i.i.i.i.i160 = and i1 %30, %29
  br i1 %or.cond.i.i.i.i.i160, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i171, label %32

31:                                               ; preds = %.lr.ph.i.i.i.i.i158
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %24) ]
  br label %32

32:                                               ; preds = %31, %26
  %33 = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i159, i64 16 ; 2 uses
  %.not.i.i.i.i.i161 = icmp eq ptr %33, %21
  br i1 %.not.i.i.i.i.i161, label %.lr.ph38.i.i.i.i.i164.preheader, label %.lr.ph.i.i.i.i.i158, !llvm.loop !238

.lr.ph38.i.i.i.i.i164.preheader:                  ; preds = %32, %_ZNK7bv_util11get_bv_sizeEPK4sort.exit155
  br label %.lr.ph38.i.i.i.i.i164

.lr.ph38.i.i.i.i.i164:                            ; preds = %.lr.ph38.i.i.i.i.i164.preheader, %.lr.ph38.backedge.i.i.i.i.i168
  %.137.i.i.i.i.i166 = phi ptr [ %.pn.i.i.i169, %.lr.ph38.backedge.i.i.i.i.i168 ], [ %19, %.lr.ph38.i.i.i.i.i164.preheader ] ; 3 uses
  %34 = load ptr, ptr %.137.i.i.i.i.i166, align 8, !tbaa !235 ; 4 uses
  %35 = icmp ult ptr %34, inttoptr (i64 2 to ptr)
  br i1 %35, label %41, label %36

36:                                               ; preds = %.lr.ph38.i.i.i.i.i164
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 12
  %38 = load i32, ptr %37, align 4, !tbaa !226
  %39 = icmp eq i32 %38, %14
  %40 = icmp eq ptr %34, %i.aq
  %or.cond31.i.i.i.i.i167 = and i1 %40, %39
  br i1 %or.cond31.i.i.i.i.i167, label %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i171, label %.lr.ph38.backedge.i.i.i.i.i168

41:                                               ; preds = %.lr.ph38.i.i.i.i.i164
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %34) ]
  br label %.lr.ph38.backedge.i.i.i.i.i168

.lr.ph38.backedge.i.i.i.i.i168:                   ; preds = %41, %36
  %.pn.i.i.i169 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i166, i64 16
  br label %.lr.ph38.i.i.i.i.i164, !llvm.loop !239

_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i171: ; preds = %26, %36
  %.026.i.i.i.i.i172 = phi ptr [ %.137.i.i.i.i.i166, %36 ], [ %.035.i.i.i.i.i159, %26 ]
  %42 = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i172, i64 8
  %43 = load ptr, ptr %42, align 8, !tbaa !205    ; 3 uses
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 888
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 12
  %46 = load i32, ptr %45, align 4, !tbaa !226    ; 3 uses
  %47 = getelementptr inbounds nuw i8, ptr %0, i64 896
  %48 = load i32, ptr %47, align 8, !tbaa !122    ; 3 uses
  %49 = add i32 %48, -1
  %50 = and i32 %49, %46                          ; 2 uses
  %51 = load ptr, ptr %44, align 8, !tbaa !130    ; 3 uses
  %52 = zext i32 %48 to i64
  %53 = getelementptr inbounds nuw [64 x i8], ptr %51, i64 %52
  %.not34.i.i.i.i4.i174 = icmp eq i32 %50, %48
  br i1 %.not34.i.i.i.i4.i174, label %.lr.ph38.i.i.i.i11.i181.preheader, label %.lr.ph.i.i.i.i5.i175.preheader

.lr.ph.i.i.i.i5.i175.preheader:                   ; preds = %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i171
  %54 = zext i32 %50 to i64
  %.idx.i.i.i.i3.i173 = shl nuw nsw i64 %54, 6
  %55 = getelementptr inbounds nuw i8, ptr %51, i64 %.idx.i.i.i.i3.i173
  br label %.lr.ph.i.i.i.i5.i175

.lr.ph.i.i.i.i5.i175:                             ; preds = %.lr.ph.i.i.i.i5.i175.preheader, %64
  %.035.i.i.i.i6.i176 = phi ptr [ %65, %64 ], [ %55, %.lr.ph.i.i.i.i5.i175.preheader ] ; 3 uses
  %56 = load ptr, ptr %.035.i.i.i.i6.i176, align 8, !tbaa !227 ; 4 uses
  %57 = icmp ult ptr %56, inttoptr (i64 2 to ptr)
  br i1 %57, label %63, label %58

58:                                               ; preds = %.lr.ph.i.i.i.i5.i175
  %59 = getelementptr inbounds nuw i8, ptr %56, i64 12
  %60 = load i32, ptr %59, align 4, !tbaa !226
  %61 = icmp eq i32 %60, %46
  %62 = icmp eq ptr %56, %43
  %or.cond.i.i.i.i7.i177 = and i1 %62, %61
  br i1 %or.cond.i.i.i.i7.i177, label %_ZN11sls_tracker9get_valueEP9func_decl.exit189, label %64

63:                                               ; preds = %.lr.ph.i.i.i.i5.i175
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %56) ]
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i6.i176, i64 64 ; 2 uses
  %.not.i.i.i.i8.i178 = icmp eq ptr %65, %53
  br i1 %.not.i.i.i.i8.i178, label %.lr.ph38.i.i.i.i11.i181.preheader, label %.lr.ph.i.i.i.i5.i175, !llvm.loop !230

.lr.ph38.i.i.i.i11.i181.preheader:                ; preds = %64, %_ZN11sls_tracker15get_entry_pointEP9func_decl.exit.i171
  br label %.lr.ph38.i.i.i.i11.i181

.lr.ph38.i.i.i.i11.i181:                          ; preds = %.lr.ph38.i.i.i.i11.i181.preheader, %.lr.ph38.backedge.i.i.i.i15.i185
  %.137.i.i.i.i13.i183 = phi ptr [ %.pn.i.i16.i186, %.lr.ph38.backedge.i.i.i.i15.i185 ], [ %51, %.lr.ph38.i.i.i.i11.i181.preheader ] ; 3 uses
  %66 = load ptr, ptr %.137.i.i.i.i13.i183, align 8, !tbaa !227 ; 4 uses
  %67 = icmp ult ptr %66, inttoptr (i64 2 to ptr)
  br i1 %67, label %73, label %68

68:                                               ; preds = %.lr.ph38.i.i.i.i11.i181
  %69 = getelementptr inbounds nuw i8, ptr %66, i64 12
  %70 = load i32, ptr %69, align 4, !tbaa !226
  %71 = icmp eq i32 %70, %46
  %72 = icmp eq ptr %66, %43
  %or.cond31.i.i.i.i14.i184 = and i1 %72, %71
  br i1 %or.cond31.i.i.i.i14.i184, label %_ZN11sls_tracker9get_valueEP9func_decl.exit189, label %.lr.ph38.backedge.i.i.i.i15.i185

73:                                               ; preds = %.lr.ph38.i.i.i.i11.i181
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %66) ]
  br label %.lr.ph38.backedge.i.i.i.i15.i185

.lr.ph38.backedge.i.i.i.i15.i185:                 ; preds = %73, %68
  %.pn.i.i16.i186 = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i13.i183, i64 64
  br label %.lr.ph38.i.i.i.i11.i181, !llvm.loop !231

_ZN11sls_tracker9get_valueEP9func_decl.exit189:   ; preds = %58, %68
  %.026.i.i.i.i18.i188 = phi ptr [ %.137.i.i.i.i13.i183, %68 ], [ %.035.i.i.i.i6.i176, %58 ]
  %74 = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i18.i188, i64 16
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN11mpz_managerILb0EE11bitwise_notEjRK3mpzRS1_(ptr noundef nonnull align 8 dereferenceable(600) %75, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(16) %74, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit

default.unreachable304:                           ; preds = %_ZN11sls_tracker15get_random_boolEv.exit39
  unreachable

_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit:       ; preds = %bb.bt, %_ZN11mpz_managerILb0EE3setER3mpzRKS1_.exit.i, %bb.u, %bb.t, %_ZN11sls_tracker9get_valueEP9func_decl.exit81, %_ZN10sls_engine6mk_incEjRK3mpzRS0_.exit, %_ZN11sls_tracker9get_valueEP9func_decl.exit189
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 1168
  call void @_ZN13sls_evaluator14serious_updateEP9func_declRK3mpz(ptr noundef nonnull align 8 dereferenceable(264) %i.ns, ptr noundef nonnull %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZN11mpz_managerILb0EE3delEPS0_R3mpz(ptr noundef nonnull align 8 dereferenceable(600) %i.nt, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef double @_ZN10sls_engine14find_best_moveER10ptr_vectorI9func_declEdRjR3mpzS4_RNS_9move_typeE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, double noundef %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.mpz, align 8                 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %class.mpz, align 8                 ; 15 uses
  %9 = alloca %class.mpz, align 8                 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i32 0, ptr %8, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 5 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  store i32 0, ptr %9, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 10 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !38
  %i.j = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !202
  br label %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit

_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit:        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.o = load i32, ptr %i.n, align 8, !tbaa !196
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIP9func_declLb0EjE4sizeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !105  ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !79
  %i.u = mul i32 %i.t, 214013
  %i.v = add i32 %i.u, 2531011                    ; 2 uses
  store i32 %i.v, ptr %i.s, align 8, !tbaa !79
  %i.w = lshr i32 %i.v, 16                        ; 2 uses
  %i.x = and i32 %i.w, 32767                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 804
  store i32 %i.x, ptr %i.y, align 4, !tbaa !81
  store i32 15, ptr %i.p, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 804
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.ab = lshr i32 %i.x, 1
  br label %.thread154

bb.d:                                             ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 804
  %.promoted.i.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !81 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 804 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 7 uses
  %i.ae = icmp eq i32 %i.q, 1
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !79
  %i.ag = mul i32 %i.af, 214013
  %i.ah = add i32 %i.ag, 2531011                  ; 2 uses
  store i32 %i.ah, ptr %i.ad, align 8, !tbaa !79
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = and i32 %i.ai, 32767
  br label %.thread154

.thread154:                                       ; preds = %bb.e, %.thread
  %.ph.in.in = phi i32 [ %i.w, %.thread ], [ %.promoted.i.pre, %bb.e ]
  %.ph150 = phi ptr [ %i.aa, %.thread ], [ %i.ad, %bb.e ]
  %.ph151 = phi ptr [ %i.z, %.thread ], [ %i.ac, %bb.e ]
  %.ph152 = phi i32 [ 13, %.thread ], [ 14, %bb.e ]
  %.ph153 = phi i32 [ %i.ab, %.thread ], [ %i.aj, %bb.e ] ; 2 uses
  %.ph.in = shl i32 %.ph.in.in, 1
  %.ph = and i32 %.ph.in, 2
  %i.ak = and i32 %.ph153, 1
  %spec.select.i.1155 = or disjoint i32 %.ph, %i.ak
  %i.al = lshr i32 %.ph153, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %trunc = trunc i32 %.promoted.i.pre to i2
  %rev = tail call i2 @llvm.bitreverse.i2(i2 %trunc)
  %spec.select.i.1 = zext i2 %rev to i32          ; 2 uses
  %i.am = lshr i32 %.promoted.i.pre, 2
  %i.an = add i32 %i.q, -2                        ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !79
  %i.aq = mul i32 %i.ap, 214013
  %i.ar = add i32 %i.aq, 2531011                  ; 2 uses
  store i32 %i.ar, ptr %i.ad, align 8, !tbaa !79
  %i.as = lshr i32 %i.ar, 16
  %i.at = and i32 %i.as, 32767
  br label %bb.h

bb.h:                                             ; preds = %.thread154, %bb.g, %bb.f
  %spec.select.i.1156 = phi i32 [ %spec.select.i.1, %bb.g ], [ %spec.select.i.1, %bb.f ], [ %spec.select.i.1155, %.thread154 ]
  %i.au = phi ptr [ %i.ac, %bb.g ], [ %i.ac, %bb.f ], [ %.ph151, %.thread154 ]
  %i.av = phi ptr [ %i.ad, %bb.g ], [ %i.ad, %bb.f ], [ %.ph150, %.thread154 ] ; 28 uses
  %i.aw = phi i32 [ 15, %bb.g ], [ %i.an, %bb.f ], [ %.ph152, %.thread154 ] ; 2 uses
  %i.ax = phi i32 [ %i.at, %bb.g ], [ %i.am, %bb.f ], [ %i.al, %.thread154 ] ; 3 uses
  %i.ay = shl nuw nsw i32 %spec.select.i.1156, 2
  %i.az = shl nuw nsw i32 %i.ax, 1
  %i.ba = and i32 %i.az, 2
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = icmp eq i32 %i.aw, 1
  br i1 %i.bc, label %.thread157, label %bb.i

.thread157:                                       ; preds = %bb.h
  %i.bd = load i32, ptr %i.av, align 4, !tbaa !79
  %i.be = mul i32 %i.bd, 214013
  %i.bf = add i32 %i.be, 2531011                  ; 3 uses
  store i32 %i.bf, ptr %i.av, align 4, !tbaa !79
  %i.bg = lshr i32 %i.bf, 16
  %i.bh = lshr i32 %i.bf, 17
  %i.bi = and i32 %i.bh, 16383
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bj = lshr i32 %i.ax, 1                       ; 2 uses
  %i.bk = lshr i32 %i.ax, 2
  %i.bl = add i32 %i.aw, -2                       ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = load i32, ptr %i.av, align 4, !tbaa !79
  %i.bo = mul i32 %i.bn, 214013
  %i.bp = add i32 %i.bo, 2531011                  ; 2 uses
  store i32 %i.bp, ptr %i.av, align 4, !tbaa !79
  %i.bq = lshr i32 %i.bp, 16
  %i.br = and i32 %i.bq, 32767
  br label %bb.k

bb.k:                                             ; preds = %.thread157, %bb.j, %bb.i
  %.pn.in = phi i32 [ %i.bj, %bb.j ], [ %i.bj, %bb.i ], [ %i.bg, %.thread157 ]
  %i.bs = phi i32 [ 15, %bb.j ], [ %i.bl, %bb.i ], [ 14, %.thread157 ] ; 2 uses
  %i.bt = phi i32 [ %i.br, %bb.j ], [ %i.bk, %bb.i ], [ %i.bi, %.thread157 ] ; 3 uses
  %.pn = and i32 %.pn.in, 1
  %spec.select.i.3159 = or disjoint i32 %i.bb, %.pn
  %i.bu = shl nuw nsw i32 %spec.select.i.3159, 2
  %i.bv = shl nuw nsw i32 %i.bt, 1
  %i.bw = and i32 %i.bv, 2
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = icmp eq i32 %i.bs, 1
  br i1 %i.by, label %.thread160, label %bb.l

.thread160:                                       ; preds = %bb.k
  %i.bz = load i32, ptr %i.av, align 4, !tbaa !79
  %i.ca = mul i32 %i.bz, 214013
  %i.cb = add i32 %i.ca, 2531011                  ; 3 uses
  store i32 %i.cb, ptr %i.av, align 4, !tbaa !79
  %i.cc = lshr i32 %i.cb, 16
  %i.cd = lshr i32 %i.cb, 17
  %i.ce = and i32 %i.cd, 16383
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cf = lshr i32 %i.bt, 1                       ; 2 uses
  %i.cg = lshr i32 %i.bt, 2
  %i.ch = add i32 %i.bs, -2                       ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cj = load i32, ptr %i.av, align 4, !tbaa !79
  %i.ck = mul i32 %i.cj, 214013
  %i.cl = add i32 %i.ck, 2531011                  ; 2 uses
  store i32 %i.cl, ptr %i.av, align 4, !tbaa !79
  %i.cm = lshr i32 %i.cl, 16
  %i.cn = and i32 %i.cm, 32767
  br label %bb.n

bb.n:                                             ; preds = %.thread160, %bb.m, %bb.l
  %.pn183.in = phi i32 [ %i.cf, %bb.m ], [ %i.cf, %bb.l ], [ %i.cc, %.thread160 ]
  %i.co = phi i32 [ 15, %bb.m ], [ %i.ch, %bb.l ], [ 14, %.thread160 ] ; 2 uses
  %i.cp = phi i32 [ %i.cn, %bb.m ], [ %i.cg, %bb.l ], [ %i.ce, %.thread160 ] ; 3 uses
  %.pn183 = and i32 %.pn183.in, 1
end_hunk_1
