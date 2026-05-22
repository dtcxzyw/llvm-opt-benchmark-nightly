inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0_@_ZNK4llvh16FileCheckPattern18EvaluateExpressionENS_9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !43
  store ptr %i.ac, ptr %3, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !43
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !43
  %.not.i15 = icmp eq ptr %i.z, null
  br i1 %.not.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %4, align 8, !tbaa !69
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.au = phi ptr [ %i.z, %bb.k ], [ %i.ad, %bb.l ], [ %i.ac, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !67
  store i8 0, ptr %i.au, align 1, !tbaa !43
  %i.aw = load ptr, ptr %4, align 8, !tbaa !69    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !43
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNK4llvh9StringRef10startswithES0_.exit.thread

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.b, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread, %_ZNK4llvh9StringRef10startswithES0_.exit
  %.1 = phi i1 [ false, %_ZNK4llvh9StringRef12getAsIntegerIiEENSt9enable_ifIXsr3std14numeric_limitsIT_EE9is_signedEbE4typeEjRS3_.exit.thread ], [ false, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh6itostrB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [21 x i8], align 16               ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca [21 x i8], align 16               ; 3 uses
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i64 0, %1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18, !noalias !108
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 21 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.111.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0810.i = phi i64 [ %i.l, %.lr.ph.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.h = urem i64 %.0810.i, 10
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.111.i, i64 -1 ; 2 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !43, !noalias !108
  %i.l = udiv i64 %.0810.i, 10
  %.not.i = icmp samesign ult i64 %.0810.i, 10
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds i8, ptr %.111.i, i64 -2 ; 4 uses
  store i8 45, ptr %i.m, align 1, !tbaa !43, !noalias !108
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !78, !alias.scope !108
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !67, !alias.scope !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18, !noalias !108
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  store i64 %i.r, ptr %i.c, align 8, !tbaa !44, !noalias !108
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %._crit_edge.i
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #18 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !69, !alias.scope !108
  %i.u = load i64, ptr %i.c, align 8, !tbaa !44, !noalias !108
  store i64 %i.u, ptr %i.n, align 8, !tbaa !43, !alias.scope !108
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %._crit_edge.i
  %i.v = phi ptr [ %i.t, %bb.c ], [ %i.n, %._crit_edge.i ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN4llvh6utostrB5cxx11Emb.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.m, align 1, !tbaa !43, !noalias !108
  store i8 %i.w, ptr %i.v, align 1, !tbaa !43
  br label %_ZN4llvh6utostrB5cxx11Emb.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.m, i64 %i.r, i1 false)
  br label %_ZN4llvh6utostrB5cxx11Emb.exit

_ZN4llvh6utostrB5cxx11Emb.exit:                   ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.x = load i64, ptr %i.c, align 8, !tbaa !44, !noalias !108 ; 2 uses
  store i64 %i.x, ptr %i.o, align 8, !tbaa !67, !alias.scope !108
  %i.y = load ptr, ptr %0, align 8, !tbaa !69, !alias.scope !108
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 0, ptr %i.z, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18, !noalias !108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18, !noalias !108
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 21 ; 2 uses
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %.thread.i10, label %.lr.ph.i3

.thread.i10:                                      ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  store i8 48, ptr %i.ac, align 4, !tbaa !43, !noalias !112
  br label %._crit_edge.i7

.lr.ph.i3:                                        ; preds = %bb.f, %.lr.ph.i3
  %.111.i4 = phi ptr [ %i.ag, %.lr.ph.i3 ], [ %i.aa, %bb.f ]
  %.0810.i5 = phi i64 [ %i.ah, %.lr.ph.i3 ], [ %1, %bb.f ] ; 3 uses
  %i.ad = urem i64 %.0810.i5, 10
  %i.ae = trunc nuw nsw i64 %i.ad to i8
  %i.af = or disjoint i8 %i.ae, 48
  %i.ag = getelementptr inbounds i8, ptr %.111.i4, i64 -1 ; 3 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !43, !noalias !112
  %i.ah = udiv i64 %.0810.i5, 10
  %.not.i6 = icmp ult i64 %.0810.i5, 10
  br i1 %.not.i6, label %._crit_edge.i7, label %.lr.ph.i3, !llvm.loop !111

._crit_edge.i7:                                   ; preds = %.lr.ph.i3, %.thread.i10
  %.1.lcssa.i8 = phi ptr [ %i.ac, %.thread.i10 ], [ %i.ag, %.lr.ph.i3 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ai, ptr %0, align 8, !tbaa !78, !alias.scope !112
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.aj, align 8, !tbaa !67, !alias.scope !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !112
  %i.ak = ptrtoint ptr %i.aa to i64
  %i.al = ptrtoint ptr %.1.lcssa.i8 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 4 uses
  store i64 %i.am, ptr %i.a, align 8, !tbaa !44, !noalias !112
  %i.an = icmp ugt i64 %i.am, 15
  br i1 %i.an, label %bb.g, label %._crit_edge.i.i.i9

bb.g:                                             ; preds = %._crit_edge.i7
  %i.ao = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !69, !alias.scope !112
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !112
  store i64 %i.ap, ptr %i.ai, align 8, !tbaa !43, !alias.scope !112
  br label %._crit_edge.i.i.i9

._crit_edge.i.i.i9:                               ; preds = %bb.g, %._crit_edge.i7
  %i.aq = phi ptr [ %i.ao, %bb.g ], [ %i.ai, %._crit_edge.i7 ] ; 2 uses
  switch i64 %i.am, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4llvh6utostrB5cxx11Emb.exit11
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i9
  %i.ar = load i8, ptr %.1.lcssa.i8, align 1, !tbaa !43, !noalias !112
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !43
  br label %_ZN4llvh6utostrB5cxx11Emb.exit11

bb.i:                                             ; preds = %._crit_edge.i.i.i9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr nonnull align 1 %.1.lcssa.i8, i64 %i.am, i1 false)
  br label %_ZN4llvh6utostrB5cxx11Emb.exit11

_ZN4llvh6utostrB5cxx11Emb.exit11:                 ; preds = %._crit_edge.i.i.i9, %bb.h, %bb.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !112 ; 2 uses
  store i64 %i.as, ptr %i.aj, align 8, !tbaa !67, !alias.scope !112
  %i.at = load ptr, ptr %0, align 8, !tbaa !69, !alias.scope !112
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 0, ptr %i.au, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18, !noalias !112
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh6utostrB5cxx11Emb.exit11, %_ZN4llvh6utostrB5cxx11Emb.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK4llvh16FileCheckPattern5MatchENS_9StringRefERmRNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr %1, i64 %2, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(25) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.llvh::SmallVector", align 8 ; 10 uses
  %10 = alloca %"class.llvh::Regex", align 8      ; 5 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !115
  %i.d = icmp eq i32 %i.c, 8
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %3, align 8, !tbaa !44
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %3, align 8, !tbaa !44
  %.sroa.035.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !41
  %.sroa.236.0.copyload = load i64, ptr %i.e, align 8, !tbaa !44
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %.sroa.035.0.copyload, i64 %.sroa.236.0.copyload, i64 noundef 0) #18
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.n, ptr %6, align 8, !tbaa !78
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 0, ptr %i.o, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #18
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !116  ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !116  ; 2 uses
  %.not85 = icmp eq ptr %i.u, %i.v
  br i1 %.not85, label %.critedge52.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %.04587 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %.critedge ] ; 2 uses
  %.sroa.079.086 = phi ptr [ %i.u, %.lr.ph ], [ %16, %.critedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store ptr %i.w, ptr %7, align 8, !tbaa !78
  store i64 0, ptr %i.x, align 8, !tbaa !67
  store i8 0, ptr %i.w, align 8, !tbaa !43
  %i.ab = load ptr, ptr %.sroa.079.086, align 8, !tbaa !71 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.ad = icmp eq i8 %i.ac, 64
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.079.086, i64 8
  %.sroa.221.0.copyload = load i64, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = call noundef zeroext i1 @_ZNK4llvh16FileCheckPattern18EvaluateExpressionENS_9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr nonnull %i.ab, i64 %.sroa.221.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %7)
  br i1 %i.ae, label %bb.l, label %.critedge52

bb.i:                                             ; preds = %bb.g
  %i.af = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr nonnull %i.ab, i64 %.sroa.221.0.copyload) #18 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  %i.ah = load i32, ptr %i.y, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = sext i32 %i.af to i64                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.ai
  %i.al = select i1 %i.ag, i1 true, i1 %i.ak
  br i1 %i.al, label %.critedge52, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %4, align 8
  %.sroa.0.0.i = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.an = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !117 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.016.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !41
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.217.0.copyload = load i64, ptr %.sroa.217.0..sroa_idx, align 8, !tbaa !44
  call void @_ZN4llvh5Regex6escapeB5cxx11ENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr %.sroa.016.0.copyload, i64 %.sroa.217.0.copyload) #18
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !67  ; 2 uses
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !67
  %i.ar = sub i64 4611686018427387903, %i.aq
  %i.as = icmp ult i64 %i.ar, %i.ap
  br i1 %i.as, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %bb.j
  %i.at = load ptr, ptr %8, align 8, !tbaa !69
  %i.au = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.at, i64 noundef %i.ap) #18 ; 0 uses
  %i.av = load ptr, ptr %8, align 8, !tbaa !69    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aa
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ax = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.079.086, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !76
  %i.bb = zext i32 %i.ba to i64
  %i.bc = zext i32 %.04587 to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc            ; 3 uses
  %i.be = load i64, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i64 noundef %i.bd, i64 noundef %i.be) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit: ; preds = %bb.l
  %i.bg = load ptr, ptr %7, align 8, !tbaa !69
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !67
  %i.bi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.bd, i64 noundef 0, ptr noundef %i.bg, i64 noundef %i.bh) #18 ; 0 uses
  %i.bj = load i64, ptr %i.x, align 8, !tbaa !67  ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = add i32 %.04587, %i.bk
  %11 = load ptr, ptr %7, align 8, !tbaa !69      ; 2 uses
  %12 = icmp eq ptr %11, %i.w
  br i1 %12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %13 = icmp ult i64 %i.bj, 16
  call void @llvm.assume(i1 %13)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6insertIN9__gnu_cxx17__normal_iteratorIPcS4_EEvEES9_NS7_IPKcS4_EET_SD_.exit
  %14 = load i64, ptr %i.w, align 8, !tbaa !43
  %15 = add i64 %14, 1
  call void @_ZdlPvm(ptr noundef %11, i64 noundef %15) #21
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.079.086, i64 24 ; 2 uses
  %i.bm = icmp eq ptr %16, %i.v
  br i1 %i.bm, label %.critedge52.a, label %bb.g

.critedge52:                                      ; preds = %bb.i, %bb.h
  %17 = load ptr, ptr %7, align 8, !tbaa !69      ; 2 uses
  %18 = icmp eq ptr %17, %i.w
  br i1 %18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %.critedge52
  %i.bn = load i64, ptr %i.w, align 8, !tbaa !43
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %17, i64 noundef %i.bo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %.critedge52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.critedge54

.critedge52.a:                                    ; preds = %.critedge, %bb.f
  %i.bp = load ptr, ptr %6, align 8, !tbaa !69
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !67
  br label %bb.n

bb.n:                                             ; preds = %.critedge52.a, %bb.e
  %.sroa.082.0 = phi ptr [ %i.k, %bb.e ], [ %i.bp, %.critedge52.a ]
  %.sroa.6.0 = phi i64 [ %i.m, %bb.e ], [ %i.bq, %.critedge52.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.br, ptr %9, align 8, !tbaa !119
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !121
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 4, ptr %i.bt, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN4llvh5RegexC1ENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %.sroa.082.0, i64 %.sroa.6.0, i32 noundef 2) #18
  %i.bu = call noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr %1, i64 %2, ptr noundef nonnull %9) #18
  call void @_ZN4llvh5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre92 = load ptr, ptr %9, align 8, !tbaa !119 ; 4 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.066.0.copyload = load ptr, ptr %.pre92, align 8, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pre92, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !123 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not8388 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not8388, label %._crit_edge, label %.lr.ph90

._crit_edge.loopexit:                             ; preds = %.lr.ph90
  %.pre.pre = load ptr, ptr %9, align 8, !tbaa !119
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %.pre = phi ptr [ %.pre.pre, %._crit_edge.loopexit ], [ %.pre92, %bb.o ]
  %i.by = load i32, ptr %i.b, align 8, !tbaa !115
  %i.bz = icmp eq i32 %i.by, 7
  %i.ca = zext i1 %i.bz to i64                    ; 2 uses
  %i.cb = sub i64 %.sroa.4.0.copyload, %i.ca
  store i64 %i.cb, ptr %3, align 8, !tbaa !44
  %i.cc = ptrtoint ptr %.sroa.066.0.copyload to i64
  %i.cd = ptrtoint ptr %1 to i64
  %i.ce = add i64 %i.ca, %i.cc
  %i.cf = sub i64 %i.ce, %i.cd
  br label %bb.p

.lr.ph90:                                         ; preds = %bb.o, %.lr.ph90
  %.sroa.063.089 = phi ptr [ %i.cp, %.lr.ph90 ], [ %i.bw, %bb.o ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.063.089, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.063.089, i64 48
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !124
  %i.cj = zext i32 %i.ci to i64
  %i.ck = load ptr, ptr %9, align 8, !tbaa !119
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cj
  %.sroa.0.0.copyload = load ptr, ptr %i.cg, align 8, !tbaa !41
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.063.089, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !44
  %i.cm = call { ptr, i8 } @_ZN4llvh9StringMapINS_9StringRefENS_15MallocAllocatorEE11try_emplaceIJEEESt4pairINS_17StringMapIteratorIS1_EEbES1_DpOT_(ptr noundef nonnull align 8 dereferenceable(25) %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cm, 0
  %i.cn = load ptr, ptr %.fca.0.extract.i, align 8, !tbaa !117
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !tbaa.struct !68
  %i.cp = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.063.089) #20 ; 2 uses
  %.not83 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not83, label %._crit_edge.loopexit, label %.lr.ph90

bb.p:                                             ; preds = %bb.n, %._crit_edge
  %i.cq = phi ptr [ %.pre, %._crit_edge ], [ %.pre92, %bb.n ] ; 2 uses
  %.5 = phi i64 [ %i.cf, %._crit_edge ], [ -1, %bb.n ]
  %i.cr = icmp eq ptr %i.cq, %i.br
  br i1 %i.cr, label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef %i.cq) #18
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit

_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.critedge54

.critedge54:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit
  %.6 = phi i64 [ %.5, %_ZN4llvh11SmallVectorINS_9StringRefELj4EED2Ev.exit ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  %i.cs = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.n
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %.critedge54
  %i.cu = load i64, ptr %i.n, align 8, !tbaa !43
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %.critedge54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.d, %bb.b
  %.7 = phi i64 [ %2, %bb.b ], [ %.6, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.i, %bb.d ]
  ret i64 %.7
}

declare noundef zeroext i1 @_ZN4llvh5Regex5matchENS_9StringRefEPNS_15SmallVectorImplIS1_EE(ptr noundef nonnull align 8 dereferenceable(12), ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZNK4llvh16FileCheckPattern20ComputeMatchDistanceENS_9StringRefERKNS_9StringMapIS1_NS_15MallocAllocatorEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr %1, i64 %2, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(25) %3) local_unnamed_addr #0 align 2 {
_ZNK4llvh9StringRef5splitEc.exit:
  %i.a = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.07.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !41
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !44 ; 2 uses
  %i.c = icmp eq i64 %.sroa.58.0.copyload, 0      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.58.0 = select i1 %i.c, i64 %i.g, i64 %.sroa.58.0.copyload ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %.sroa.speculated16 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.58.0)
  store ptr %1, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %.sroa.speculated16, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !43, !noalias !126
  %i.i = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull %i.a, i64 1, i64 noundef 0) #18, !noalias !129 ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  %.sroa.5.0.copyload5 = load i64, ptr %i.h, align 8, !tbaa !44 ; 2 uses
  %i.k = call i64 @llvm.umin.i64(i64 %.sroa.5.0.copyload5, i64 %i.i)
  %.sroa.5.0 = select i1 %i.j, i64 %.sroa.5.0.copyload5, i64 %i.k
  %.sroa.07.0 = select i1 %i.c, ptr %i.e, ptr %.sroa.07.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.5.0, ptr %i.h, align 8, !tbaa !44
  %i.l = call noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr %.sroa.07.0, i64 %.sroa.58.0, i1 noundef zeroext true, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i32 %i.l
}

declare noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4llvh16FileCheckPattern17PrintVariableUsesERKNS_9SourceMgrENS_9StringRefERKNS_9StringMapIS4_NS_15MallocAllocatorEEENS_7SMRangeE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(25) %4, ptr noundef readonly byval(%"class.llvh::SMRange") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.llvh::SmallString", align 8 ; 8 uses
  %7 = alloca %"class.llvh::raw_svector_ostream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %11 = alloca [1 x %"class.llvh::SMRange"], align 8 ; 4 uses
  %12 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %15 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 17
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 17
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit
  %.sroa.066.072 = phi ptr [ %i.b, %.preheader ], [ %i.ej, %_ZN4llvh11SmallVectorIcLj256EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store ptr %i.f, ptr %6, align 8, !tbaa !119
  store i32 0, ptr %i.g, align 8, !tbaa !121
  store i32 256, ptr %i.h, align 4, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i32 1, ptr %i.i, align 8, !tbaa !132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh19raw_svector_ostreamE, i64 16), ptr %7, align 8, !tbaa !135
  store ptr %6, ptr %i.k, align 8, !tbaa !137
  call void @_ZN4llvh11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %.sroa.059.0.copyload = load ptr, ptr %.sroa.066.072, align 8, !tbaa !41 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.066.072, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !44 ; 6 uses
  %i.w = load i8, ptr %.sroa.059.0.copyload, align 1, !tbaa !43
  %i.x = icmp eq i8 %i.w, 64
end_hunk_0
