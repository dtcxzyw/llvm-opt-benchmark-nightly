inline.NumInlined: 1995
inline.NumDeleted: 840
begin_hunk_0_@_ZN4llvh16FileCheckPattern15AddRegExToRegExENS_9StringRefERjRNS_9SourceMgrE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.e = load ptr, ptr %6, align 8, !tbaa !69, !noalias !79
  %i.f = load i64, ptr %i.c, align 8, !tbaa !67, !noalias !79 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.g, ptr %8, align 8, !tbaa !78, !alias.scope !82
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.h, align 8, !tbaa !67, !alias.scope !82
  store i8 0, ptr %i.g, align 8, !tbaa !43, !alias.scope !82
  %i.i = add i64 %i.f, 15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.i) #18
  %i.j = load i64, ptr %i.h, align 8, !tbaa !67, !alias.scope !82
  %i.k = add i64 %i.j, -4611686018427387889
  %i.l = icmp ult i64 %i.k, 15
  br i1 %i.l, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.b
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.14, i64 noundef 15) #18 ; 0 uses
  %i.n = load i64, ptr %i.h, align 8, !tbaa !67, !alias.scope !82
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %i.f
  br i1 %i.p, label %bb.d, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.q = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.e, i64 noundef %i.f) #18 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 4, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.s, align 1, !tbaa !53
  store ptr %8, ptr %7, align 8, !tbaa !43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %7, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %9, i1 noundef zeroext true) #18
  %i.t = load ptr, ptr %8, align 8, !tbaa !69     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.g
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.v = load i64, ptr %i.g, align 8, !tbaa !43
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %.not.i = icmp eq ptr %1, null
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.x, ptr %10, align 8, !tbaa !78, !alias.scope !85
  br i1 %.not.i, label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread, label %bb.f

_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread:     ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !67, !alias.scope !85
  store i8 0, ptr %i.x, align 8, !tbaa !43, !alias.scope !85
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !85
  store i64 %2, ptr %i.a, align 8, !tbaa !44, !noalias !85
  %i.z = icmp ugt i64 %2, 15
  br i1 %i.z, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.aa, ptr %10, align 8, !tbaa !69, !alias.scope !85
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !85
  store i64 %i.ab, ptr %i.x, align 8, !tbaa !43, !alias.scope !85
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ac = phi ptr [ %i.aa, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  switch i64 %2, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %1, align 1, !tbaa !43
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !43
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNK4llvh9StringRef3strB5cxx11Ev.exit

_ZNK4llvh9StringRef3strB5cxx11Ev.exit:            ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !44, !noalias !85 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !67, !alias.scope !85
  %i.ag = load ptr, ptr %10, align 8, !tbaa !69, !alias.scope !85
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !85
  %.pre = load i64, ptr %i.af, align 8, !tbaa !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67
  %i.ak = sub i64 4611686018427387903, %i.aj
  %i.al = icmp ult i64 %i.ak, %.pre
  br i1 %i.al, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit

bb.j:                                             ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #19
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit
  %i.am = phi i64 [ 0, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit.thread ], [ %.pre, %_ZNK4llvh9StringRef3strB5cxx11Ev.exit ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %10, align 8, !tbaa !69
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef %i.ao, i64 noundef %i.am) #18 ; 0 uses
  %i.aq = load ptr, ptr %10, align 8, !tbaa !69   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %i.av = call noundef i32 @_ZNK4llvh5Regex13getNumMatchesEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #18
  %i.aw = load i32, ptr %3, align 4, !tbaa !3
  %i.ax = add i32 %i.aw, %i.av
  store i32 %i.ax, ptr %3, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.k
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !43
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %.0 = xor i1 %i.d, true
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN4llvh5RegexD1Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN4llvh16FileCheckPattern15FindRegexVarEndENS_9StringRefERNS_9SourceMgrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(120) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::ArrayRef.22", align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.025.0 = phi ptr [ %1, %bb.a ], [ %.sroa.025.1, %bb.j ] ; 5 uses
  %.sroa.9.0 = phi i64 [ %2, %bb.a ], [ %.sroa.9.1, %bb.j ] ; 4 uses
  %.013 = phi i64 [ 0, %bb.a ], [ %.2, %bb.j ]    ; 6 uses
  %.012 = phi i64 [ 0, %bb.a ], [ %i.q, %bb.j ]   ; 2 uses
  switch i64 %.sroa.9.0, label %_ZNK4llvh9StringRef10startswithES0_.exit [
    i64 0, label %bb.k
    i64 1, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread
  ]

_ZNK4llvh9StringRef10startswithES0_.exit.thread:  ; preds = %bb.b
  %i.a = icmp eq i64 %.013, 0
  br label %bb.c

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.b
  %i.b = load i16, ptr %.sroa.025.0, align 1
  %i.c = icmp ne i16 %i.b, 23901
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp eq i64 %.013, 0                     ; 2 uses
  %or.cond = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread, %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.g = phi i1 [ %i.a, %_ZNK4llvh9StringRef10startswithES0_.exit.thread ], [ %i.f, %_ZNK4llvh9StringRef10startswithES0_.exit ]
  %i.h = load i8, ptr %.sroa.025.0, align 1, !tbaa !43
  switch i8 %i.h, label %bb.i [
    i8 92, label %bb.d
    i8 91, label %bb.e
    i8 93, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.9.0, i64 2) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 %.sroa.speculated
  %i.j = sub i64 %.sroa.9.0, %.sroa.speculated
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = add i64 %.013, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.m, align 1, !tbaa !53
  store ptr @.str.25, ptr %4, align 8, !tbaa !43
  store i8 3, ptr %i.l, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZNK4llvh9SourceMgr12PrintMessageENS_5SMLocENS0_8DiagKindERKNS_5TwineENS_8ArrayRefINS_7SMRangeEEENS6_INS_7SMFixItEEEb(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr nonnull %.sroa.025.0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(18) %4, ptr null, i64 0, ptr noundef nonnull byval(%"class.llvh::ArrayRef.22") align 8 %5, i1 noundef zeroext true) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @exit(i32 noundef 1) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = add i64 %.013, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %bb.e
  %.114 = phi i64 [ %.013, %bb.c ], [ %i.k, %bb.e ], [ %i.n, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 1
  %i.p = add i64 %.sroa.9.0, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.sink = phi i64 [ 1, %bb.i ], [ 2, %bb.d ]
  %.sroa.025.1 = phi ptr [ %i.o, %bb.i ], [ %i.i, %bb.d ]
  %.sroa.9.1 = phi i64 [ %i.p, %bb.i ], [ %i.j, %bb.d ]
  %.2 = phi i64 [ %.114, %bb.i ], [ %.013, %bb.d ]
  %i.q = add i64 %.012, %.sink
  br label %bb.b, !llvm.loop !88

bb.k:                                             ; preds = %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit
  %.0 = phi i64 [ %.012, %_ZNK4llvh9StringRef10startswithES0_.exit ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE4findERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.not13.i.i = icmp eq ptr %i.b, null
  br i1 %.not13.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !44 ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %1, align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %.1.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i ] ; 5 uses
  %.0814.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %.19.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i ]
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.22.0.copyload.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i) #20
  %.fr.i.i.i.i = freeze i32 %i.f                  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %.thread.i.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %bb.b
  %i.g = icmp ult i64 %.sroa.22.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i.i
  br i1 %i.g, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %.inv.i.i.i.i.i = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %.inv.i.i.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i, %.thread.i.i.i.i
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i, %.thread.i.i.i.i
  %.sink.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i ], [ 16, %.thread.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i ]
  %.19.i.i = phi ptr [ %.0814.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i ], [ %.015.i.i, %.thread.i.i.i.i ], [ %.015.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 %.sink.i.i
  %.1.i.i = load ptr, ptr %i.h, align 8, !tbaa !90 ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i, label %bb.b, !llvm.loop !91

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i
  %i.i = icmp eq ptr %.19.i.i, %i.c
  br i1 %i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 40
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.j, label %.thread.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.l = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #20
  %.fr.i.i.i = freeze i32 %i.l                    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.i.not.i.i.i, label %.thread.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i

.thread.i.i.i:                                    ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.m = icmp ult i64 %.sroa.2.0.copyload.i.i.i, %.sroa.2.0.copyload.i.i
  br i1 %i.m, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %.inv.i.i.i.i = icmp slt i32 %.fr.i.i.i, 0
  br i1 %.inv.i.i.i.i, label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i, %.thread.i.i.i
  br label %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit

_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE4findERS3_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i, %.thread.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i
  %.sroa.0.0.i = phi ptr [ %.19.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i ], [ %i.c, %bb.a ], [ %i.c, %_ZNSt8_Rb_treeIN4llvh9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS3_.exit.i ], [ %i.c, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i ], [ %i.c, %.thread.i.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEEixERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.105", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.108", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not13.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not13.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !44 ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %1, align 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i ] ; 5 uses
  %.0814.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i ]
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 40
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #20
  %.fr.i.i.i.i.i = freeze i32 %i.f                ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.g = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.g, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i: ; preds = %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %.inv.i.i.i.i.i.i = icmp slt i32 %.fr.i.i.i.i.i, 0
  br i1 %.inv.i.i.i.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i
  br label %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i

_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i, %.thread.i.i.i.i.i
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ 16, %.thread.i.i.i.i.i ], [ 16, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0814.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread11.i.i.i ], [ %.015.i.i.i, %.thread.i.i.i.i.i ], [ %.015.i.i.i, %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.i.i.i ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !90 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !91

_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %_ZNKSt4lessIN4llvh9StringRefEEclERKS1_S4_.exit.thread.i.i.i
  %i.i = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIN4llvh9StringRefEjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.j, label %.thread.i.i, label %_ZN4llvh9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

end_hunk_0
