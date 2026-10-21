Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/NonStrictTypeChecker?download=true
inline.NumInlined: 2967
inline.NumDeleted: 1562
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4Luau12DenseHashSetINS_7AstNameESt4hashIS1_ESt8equal_toIS1_EE6insertERKS1_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !466 ; 2 uses
  %.02136.i6 = and i64 %i.ad, %i.y                ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02136.i6
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !466 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit
  %.02136.i.lcssa5 = phi i64 [ %.02136.i6, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit ], [ %.02136.i, %bb.h ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02136.i.lcssa5 ; 2 uses
  store i64 %i.aa, ptr %i.ak, align 8, !tbaa !323
  %i.al = load i64, ptr %i.a, align 8, !tbaa !465
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !465
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

.lr.ph:                                           ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit, %bb.h
  %i.an = phi ptr [ %i.as, %bb.h ], [ %i.ai, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit ]
  %.02136.i8 = phi i64 [ %.02136.i, %bb.h ], [ %.02136.i6, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit ] ; 2 uses
  %.02035.i7 = phi i64 [ %i.ap, %bb.h ], [ 0, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE14rehash_if_fullERKS2_.exit ]
  %i.ao = icmp eq ptr %i.an, %i.z
  br i1 %i.ao, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ap = add i64 %.02035.i7, 1                   ; 3 uses
  %i.aq = add i64 %i.ap, %.02136.i8
  %.not.i3 = icmp ule i64 %i.ap, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02136.i = and i64 %i.aq, %i.y                 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02136.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !466 ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ag
  br i1 %i.at, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit: ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02136.i8
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, %._crit_edge
  %i.av = phi ptr [ %i.au, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit ], [ %i.ak, %._crit_edge ]
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !467  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.h = shl i64 %spec.select, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 3 uses
  %.pre.i.i = load i64, ptr %i.e, align 8         ; 3 uses
  %i.j = inttoptr i64 %.pre.i.i to ptr
  %min.iters.check = icmp ult i64 %spec.select, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %spec.select, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.k, align 8, !tbaa !323
  store <2 x i64> %broadcast.splat, ptr %i.l, align 8, !tbaa !323
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !837

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select, %n.vec
  br i1 %cmp.n, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.05.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.o, %.lr.ph.i.i ], [ %.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.05.i.i
  store i64 %.pre.i.i, ptr %i.n, align 8, !tbaa !323
  %i.o = add nuw i64 %.05.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %spec.select
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !838

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit: ; preds = %.lr.ph.i.i, %middle.block
  %.pre = load i64, ptr %i.a, align 8, !tbaa !467
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit, %bb.a
  %i.p = phi ptr [ %i.g, %bb.a ], [ %i.j, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ]
  %i.q = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.i, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit.loopexit ] ; 5 uses
  %.not = icmp eq i64 %i.q, 0
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !840 ; 3 uses
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit
  %i.r = add i64 %spec.select, -1                 ; 3 uses
  br label %bb.c

._crit_edge31:                                    ; preds = %bb.f, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EEC2ERKS2_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !840
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !228
  %.not.i14 = icmp eq ptr %.pre33, null
  br i1 %.not.i14, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge31
  tail call void @_ZdlPv(ptr noundef nonnull %.pre33) #23
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EED2Ev.exit: ; preds = %._crit_edge31, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph30, %bb.f
  %.01129 = phi i64 [ 0, %.lr.ph30 ], [ %i.am, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.pre33, i64 %.01129
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.p
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = lshr i64 %i.v, 4
  %i.x = lshr i64 %i.v, 9
  %i.y = xor i64 %i.w, %i.x
  %.02136.i25 = and i64 %i.y, %i.r                ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i25
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !466 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.02136.i.lcssa24 = phi i64 [ %.02136.i25, %bb.d ], [ %.02136.i, %bb.e ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i.lcssa24 ; 2 uses
  store i64 %i.v, ptr %i.ac, align 8, !tbaa !323
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.ad = phi ptr [ %i.ai, %bb.e ], [ %i.aa, %bb.d ]
  %.02136.i27 = phi i64 [ %.02136.i, %bb.e ], [ %.02136.i25, %bb.d ] ; 2 uses
  %.02035.i26 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ae = icmp eq ptr %i.ad, %i.t
  br i1 %i.ae, label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.af = add i64 %.02035.i26, 1                  ; 3 uses
  %i.ag = add i64 %i.af, %.02136.i27
  %.not.i15 = icmp ule i64 %i.af, %i.r
  tail call void @llvm.assume(i1 %.not.i15)
  %.02136.i = and i64 %i.ag, %i.r                 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !466 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.g
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit: ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0, i64 %.02136.i27
  br label %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit

_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit: ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit, %._crit_edge
  %i.al = phi ptr [ %i.ac, %._crit_edge ], [ %i.ak, %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit.loopexit ]
  store i64 %i.v, ptr %i.al, align 8, !tbaa !323
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_7AstNameES2_S2_NS0_16ItemInterfaceSetIS2_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERKS2_.exit, %bb.c
  %i.am = add nuw i64 %.01129, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.am, %i.q
  br i1 %exitcond.not, label %._crit_edge31, label %bb.c, !llvm.loop !839
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_19AstTypePackExplicitE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !299  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not13 = icmp eq i64 %i.d, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !314  ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %.pre19 = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.014, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.i
  %2 = phi i32 [ %4, %._crit_edge.i ], [ %.pre19, %.preheader.preheader ] ; 2 uses
  %.tr29.i = phi ptr [ %i.q, %._crit_edge.i ], [ %i.g, %.preheader.preheader ] ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 8
  %i.j = load i32, ptr %3, align 8, !tbaa !200    ; 3 uses
  %.not24.i = icmp eq i32 %i.j, %2
  br i1 %.not24.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !298  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !299  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  %.not.i31.i = icmp eq i64 %i.n, 0
  br i1 %.not.i31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.b
  %4 = phi i32 [ %.pre, %._crit_edge.i.loopexit ], [ %2, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.q, null
  br i1 %.not12.i.i, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %.preheader

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.0.i32.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr %.0.i32.i, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %i.r), !inline_history !842
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.o
  br i1 %.not.i.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.preheader
  %i.t = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !24
  %.not26.i = icmp eq i32 %i.j, %i.t
  br i1 %.not26.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !306
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %i.v), !inline_history !841
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.e:                                             ; preds = %bb.c
  %i.w = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not28.i = icmp eq i32 %i.j, %i.w
  br i1 %.not28.i, label %bb.f, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef nonnull %.tr29.i), !inline_history !375
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit: ; preds = %._crit_edge.i, %bb.f, %bb.e, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::optional.752", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.Luau::Variant.300", align 8 ; 8 uses
  %6 = alloca %"struct.Luau::SwappedGenericTypeParameter", align 8 ; 14 uses
  %7 = alloca %"class.Luau::Variant.300", align 8 ; 8 uses
  %8 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 4, !tbaa !24
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !24
  %i.f = tail call noundef ptr @_ZNK4Luau20NonStrictTypeChecker18findInnermostScopeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(772) %0, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !844  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !233
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 %i.k, ptr %i.d, align 8, !tbaa !228
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.m = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc26 unwind label %bb.h   ; 2 uses

.noexc26:                                         ; preds = %.noexc.i
  store ptr %i.m, ptr %2, align 8, !tbaa !151
  %i.n = load i64, ptr %i.d, align 8, !tbaa !228
  store i64 %i.n, ptr %i.i, align 8, !tbaa !153
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc26, %bb.c
  %i.o = phi ptr [ %i.m, %.noexc26 ], [ %i.i, %bb.c ] ; 2 uses
  switch i64 %i.k, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.p = load i8, ptr %i.h, align 1, !tbaa !153
  store i8 %i.p, ptr %i.o, align 1, !tbaa !153
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr nonnull align 1 %i.h, i64 %i.k, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.q = load i64, ptr %i.d, align 8, !tbaa !228  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !152
  %i.s = load ptr, ptr %2, align 8, !tbaa !151
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.u = invoke { ptr, i8 } @_ZNK4Luau5Scope10lookupPackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1040) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = extractvalue { ptr, i8 } %i.u, 1
  %i.w = load ptr, ptr %2, align 8, !tbaa !151    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.i
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.i, align 8, !tbaa !153
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.aa = trunc nuw i8 %i.v to i1
  br i1 %i.aa, label %bb.ao, label %bb.j

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.i
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.i
  %i.af = load i64, ptr %i.i, align 8, !tbaa !153
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %i.ac, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.as

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !844 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ai, ptr %4, align 8, !tbaa !233
  %i.aj = icmp eq ptr %i.ah, null
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.73) #26
          to label %.noexc32 unwind label %bb.ab

.noexc32:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !228
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.l
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc33 unwind label %bb.ab  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i31
  store ptr %i.am, ptr %4, align 8, !tbaa !151
  %i.an = load i64, ptr %i.c, align 8, !tbaa !228
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !153
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc33, %bb.l
  %i.ao = phi ptr [ %i.am, %.noexc33 ], [ %i.ai, %bb.l ] ; 2 uses
  switch i64 %i.ak, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %._crit_edge.i.i30
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !153
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !153
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr nonnull align 1 %i.ah, i64 %i.ak, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge.i.i30
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !228 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !152
  %i.as = load ptr, ptr %4, align 8, !tbaa !151
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZNK4Luau5Scope10lookupTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.752") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1040) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !470, !range !177, !noundef !178
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  store i8 0, ptr %i.au, align 8, !tbaa !470
  br i1 %i.aw, label %bb.q, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !256 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.r
end_hunk_0
begin_hunk_1_@_ZN4Luau20NonStrictTypeChecker5visitEPNS_13AstStatAssignE:bb.a
_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.01726, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge31:                                    ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit24, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ac, ptr %0, align 8, !tbaa !146
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.af, align 8, !tbaa !182
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  ret void

bb.d:                                             ; preds = %.lr.ph30, %_ZN4Luau16NonStrictContextD2Ev.exit24
  %.028 = phi ptr [ %i.j, %.lr.ph30 ], [ %i.ar, %_ZN4Luau16NonStrictContextD2Ev.exit24 ] ; 2 uses
  %i.ah = load ptr, ptr %.028, align 8, !tbaa !206
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.ah, i32 noundef 1)
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !144 ; 2 uses
  %.not5.i.i.i.i.i19 = icmp eq ptr %i.ai, null
  br i1 %.not5.i.i.i.i.i19, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i23, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i20
  %.06.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i20 ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %.06.i.i.i.i.i21, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i21, i64 noundef 24) #25
  %.not.i.i.i.i.i22 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i22, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i23, label %.lr.ph.i.i.i.i.i20, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i23: ; preds = %.lr.ph.i.i.i.i.i20, %bb.d
  %i.ak = load ptr, ptr %4, align 8, !tbaa !146
  %i.al = load i64, ptr %i.o, align 8, !tbaa !147
  %i.am = shl i64 %i.al, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.am, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.an = load ptr, ptr %4, align 8, !tbaa !146   ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.p
  br i1 %i.ao, label %_ZN4Luau16NonStrictContextD2Ev.exit24, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i23
  %i.ap = load i64, ptr %i.o, align 8, !tbaa !147
  %i.aq = shl i64 %i.ap, 3
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit24

_ZN4Luau16NonStrictContextD2Ev.exit24:            ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i23, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %.not18 = icmp eq ptr %i.ar, %i.m
  br i1 %.not18, label %._crit_edge31, label %bb.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_21AstStatCompoundAssignE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Luau::NonStrictContext", align 8 ; 6 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !893
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %3, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.b, i32 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #25
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !147
  %i.i = shl i64 %i.h, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %3, align 8, !tbaa !146    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN4Luau16NonStrictContextD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !147
  %i.n = shl i64 %i.m, 3
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit

_ZN4Luau16NonStrictContextD2Ev.exit:              ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !894
  call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstExprENS_12ValueContextE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.p, i32 noundef 1)
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i3 = icmp eq ptr %i.r, null
  br i1 %.not5.i.i.i.i.i3, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i7, label %.lr.ph.i.i.i.i.i4

.lr.ph.i.i.i.i.i4:                                ; preds = %_ZN4Luau16NonStrictContextD2Ev.exit, %.lr.ph.i.i.i.i.i4
  %.06.i.i.i.i.i5 = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i4 ], [ %i.r, %_ZN4Luau16NonStrictContextD2Ev.exit ] ; 2 uses
  %i.s = load ptr, ptr %.06.i.i.i.i.i5, align 8, !tbaa !145 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i5, i64 noundef 24) #25
  %.not.i.i.i.i.i6 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i6, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i7, label %.lr.ph.i.i.i.i.i4, !llvm.loop !1

_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i7: ; preds = %.lr.ph.i.i.i.i.i4, %_ZN4Luau16NonStrictContextD2Ev.exit
  %i.t = load ptr, ptr %4, align 8, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !147
  %i.w = shl i64 %i.v, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.w, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %4, align 8, !tbaa !146    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4Luau16NonStrictContextD2Ev.exit8, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i7
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !147
  %i.ab = shl i64 %i.aa, 3
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #25
  br label %_ZN4Luau16NonStrictContextD2Ev.exit8

_ZN4Luau16NonStrictContextD2Ev.exit8:             ; preds = %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i7, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ad, ptr %0, align 8, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ae, align 8, !tbaa !147
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ag, align 8, !tbaa !182
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_16AstStatTypeAliasE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !370
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !371
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !228
  tail call void @_ZN4Luau20NonStrictTypeChecker13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEENS1_IPNS_18AstGenericTypePackEEE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !896
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %0, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.g, align 8, !tbaa !147
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_22AstStatDeclareFunctionE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !370
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !371
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !228
  tail call void @_ZN4Luau20NonStrictTypeChecker13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEENS1_IPNS_18AstGenericTypePackEEE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load i64, ptr %i.e, align 8, !tbaa !299  ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %.not.i18 = icmp eq i64 %i.f, 0
  br i1 %.not.i18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !302  ; 2 uses
  %.not12.i = icmp eq ptr %i.i, null
  br i1 %.not12.i, label %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %.pre35 = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0.i19 = phi ptr [ %i.k, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.j = load ptr, ptr %.0.i19, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.j), !inline_history !897
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.g
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.i
  %3 = phi i32 [ %5, %._crit_edge.i ], [ %.pre35, %.preheader.preheader ] ; 2 uses
  %.tr29.i = phi ptr [ %i.s, %._crit_edge.i ], [ %i.i, %.preheader.preheader ] ; 6 uses
  %4 = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 8
  %i.l = load i32, ptr %4, align 8, !tbaa !200    ; 3 uses
  %.not24.i = icmp eq i32 %i.l, %3
  br i1 %.not24.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !298  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !299  ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.p, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not.i31.i = icmp eq i64 %i.p, 0
  br i1 %.not.i31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.b
  %5 = phi i32 [ %.pre, %._crit_edge.i.loopexit ], [ %3, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !314  ; 2 uses
  %.not12.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i, label %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit, label %.preheader

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.0.i32.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.n, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.0.i32.i, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.t), !inline_history !898
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i32.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.q
  br i1 %.not.i.i, label %._crit_edge.i.loopexit, label %.lr.ph.i

bb.c:                                             ; preds = %.preheader
  %i.v = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !24
  %.not26.i = icmp eq i32 %i.l, %i.v
  br i1 %.not26.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.tr29.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !306
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.x), !inline_history !899
  br label %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not28.i = icmp eq i32 %i.l, %i.y
  br i1 %.not28.i, label %bb.f, label %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %.tr29.i), !inline_history !900
  br label %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit

_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit: ; preds = %._crit_edge.i, %bb.f, %bb.e, %bb.d, %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !904 ; 7 uses
  %.not.i7 = icmp eq ptr %i.aa, null
  br i1 %.not.i7, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !200 ; 3 uses
  %i.ad = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !24
  %.not = icmp eq i32 %i.ac, %i.ad
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !298 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !299 ; 2 uses
  %.idx25 = shl nuw nsw i64 %i.ah, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx25
  %.not.i1020 = icmp eq i64 %i.ah, 0
  br i1 %.not.i1020, label %._crit_edge24, label %.lr.ph23

._crit_edge24:                                    ; preds = %.lr.ph23, %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !314 ; 2 uses
  %.not12.i11 = icmp eq ptr %i.ak, null
  br i1 %.not12.i11, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit, label %bb.i

.lr.ph23:                                         ; preds = %bb.h, %.lr.ph23
  %.0.i921 = phi ptr [ %i.am, %.lr.ph23 ], [ %i.af, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %.0.i921, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.al), !inline_history !374
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i921, i64 8 ; 2 uses
  %.not.i10 = icmp eq ptr %i.am, %i.ai
  br i1 %.not.i10, label %._crit_edge24, label %.lr.ph23

bb.i:                                             ; preds = %._crit_edge24
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.ak), !inline_history !374
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.j:                                             ; preds = %bb.g
  %i.an = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !24
  %.not15 = icmp eq i32 %i.ac, %i.an
  br i1 %.not15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !306
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.ap), !inline_history !10
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !24
  %.not17 = icmp eq i32 %i.ac, %i.aq
  br i1 %.not17, label %bb.m, label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_18AstTypePackGenericE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef nonnull %i.aa), !inline_history !375
  br label %_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit

_ZN4Luau20NonStrictTypeChecker5visitEPNS_11AstTypePackE.exit: ; preds = %bb.i, %._crit_edge24, %_ZN4Luau20NonStrictTypeChecker5visitERNS_11AstTypeListE.exit, %bb.k, %bb.l, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.as, ptr %0, align 8, !tbaa !146
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.at, align 8, !tbaa !147
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ar, align 8, !tbaa !182
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_24AstStatDeclareExternTypeE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !908  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !294
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.c)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !908
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !909  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !910  ; 2 uses
  %.idx = mul nuw nsw i64 %i.j, 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not1213 = icmp eq i64 %i.j, 0
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.m, ptr %0, align 8, !tbaa !146
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.n, align 8, !tbaa !147
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.p, align 8, !tbaa !182
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  ret void

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.h, %bb.c ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !303
  tail call void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %.sroa.3.0.copyload)
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 56 ; 2 uses
  %.not12 = icmp eq ptr %i.r, %i.k
  br i1 %.not12, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_12AstStatClassE(ptr dead_on_unwind noalias writable sret(%"struct.Luau::NonStrictContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Luau::Variant.784", align 8 ; 8 uses
  %4 = alloca %"struct.Luau::NonStrictContext", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !913  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !914  ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 80
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not26 = icmp eq i64 %i.d, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.gep21 = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4Luau7VariantIJNS_16AstClassPropertyENS_14AstClassMethodEEED2Ev.exit20, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %0, align 8, !tbaa !146
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !147
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.n, align 8, !tbaa !182
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4Luau7VariantIJNS_16AstClassPropertyENS_14AstClassMethodEEED2Ev.exit20
  %.01427 = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZN4Luau7VariantIJNS_16AstClassPropertyENS_14AstClassMethodEEED2Ev.exit20 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.p = load i32, ptr %.01427, align 8, !tbaa !916 ; 2 uses
  store i32 %i.p, ptr %3, align 8, !tbaa !916
  %i.q = getelementptr inbounds nuw i8, ptr %.01427, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  switch i32 %i.p, label %_ZN4Luau16NonStrictContextD2Ev.exit [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %.sroa.gep21, align 8, !tbaa !918
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.r)
          to label %_ZN4Luau16NonStrictContextD2Ev.exit unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %.sroa.gep21, align 8, !tbaa !921
  invoke void @_ZN4Luau20NonStrictTypeChecker5visitEPNS_15AstExprFunctionE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::NonStrictContext") align 8 %4, ptr noundef nonnull align 8 dereferenceable(772) %1, ptr noundef %i.s)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !144  ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4Luau3DefESt4pairIKS3_PKNS0_4TypeEESaIS9_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.t, %bb.e ] ; 2 uses
end_hunk_1
