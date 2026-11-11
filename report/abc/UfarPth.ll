Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/UfarPth?download=true
inline.NumInlined: 220
inline.NumDeleted: 143
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4LogTC2Ej:bb.a
  store ptr %i.ag, ptr %2, align 8, !tbaa !100
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.af, i8 noundef signext 32) #15
  %i.ah = load ptr, ptr %2, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !21
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ah, i64 noundef %i.aj) #15 ; 0 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ag
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !101
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !100, !alias.scope !136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !136
  store i8 0, ptr %i.a, align 8, !tbaa !101, !alias.scope !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137, !noalias !136 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !136 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138, !noalias !136 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l) #15 ; 0 uses
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #15
  br label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  %i.p = load i64, ptr %i.b, align 8, !tbaa !21
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.o, i64 noundef %i.p) #15 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !139  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZSt16__throw_bad_castv() #17
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i8, ptr %i.x, align 8, !tbaa !144
  %.not.i1.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 67
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !101
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.w) #15
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef signext i8 %i.ad(ptr noundef nonnull align 8 dereferenceable(570) %i.w, i8 noundef signext 10) #15, !inline_history !133
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ae, %bb.f ]
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef signext %.0.i.i.i) #15
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #15 ; 0 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !22    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.a
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !101
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.al = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !24
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.an = getelementptr i8, ptr %i.al, i64 -24
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %i.ao
  store ptr %i.am, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !22 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !101
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aq, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ax) #15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ay) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noreturn nounwind uwtable
define noalias noundef nonnull ptr @_ZN4UFAR5TimerEPv(ptr noundef %0) #3 {
bb.a:
  %1 = alloca %class.LogT, align 8                ; 5 uses
  %2 = alloca %class.LogT, align 8                ; 5 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN4UFAR7g_mutexE) #15 ; 0 uses
  %i.b = tail call i32 @pthread_cond_timedwait(ptr noundef nonnull @_ZN4UFAR6g_condE, ptr noundef nonnull @_ZN4UFAR7g_mutexE, ptr noundef %0) #15
  %i.c = icmp eq i32 %i.b, 110
  %i.d = load i32, ptr @_ZN4LogT8loglevelE, align 4, !tbaa !8
  %i.e = icmp ult i32 %i.d, 2                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @_ZN4LogTC2Ej(ptr noundef nonnull align 8 dereferenceable(376) %1, i32 noundef 2)
  %i.f = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull @.str.7, i64 noundef 22) #15 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = call i32 @pthread_cond_signal(ptr noundef nonnull @_ZN4UFAR6g_condE) #15 ; 0 uses
  %i.h = load volatile i32, ptr @_ZL9g_nRunIds, align 4, !tbaa !8
  %i.i = add nsw i32 %i.h, 1
  store volatile i32 %i.i, ptr @_ZL9g_nRunIds, align 4, !tbaa !8
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4LogTC2Ej(ptr noundef nonnull align 8 dereferenceable(376) %2, i32 noundef 2)
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull @.str.8, i64 noundef 20) #15 ; 0 uses
  call void @_ZN4LogTD2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.k = call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN4UFAR7g_mutexE) #15 ; 0 uses
  call void @pthread_exit(ptr noundef null) #17
  unreachable
}

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN4UFAR19RunConcurrentSolverEP10Wlc_Ntk_t_RKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEPP10Abc_Cex_t_P8timespec(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !151    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 5                   ; 7 uses
  %i.i = icmp ugt i64 %i.h, 192153584101141162
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i

_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i: ; preds = %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.j = mul nuw nsw i64 %i.h, 48
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #16 ; 6 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ] ; 5 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ]
  store i32 -1, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.m, align 8, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !16
  %i.o = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !145

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ], [ %i.p, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.k, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ], [ %i.p, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.h, %_ZNSt12_Vector_baseIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit.i ], [ %i.o, %.lr.ph.i.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.h, 4
  br i1 %i.q, label %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store i32 -1, ptr %.08.i.i.i.i.i, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.s, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store ptr null, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store i32 -1, ptr %i.u, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.w, align 8, !tbaa !32
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 88
  store ptr null, ptr %i.x, align 8, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store i32 -1, ptr %i.y, align 8, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.aa, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  store ptr null, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store i32 -1, ptr %i.ac, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  store i32 -1, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 184
  store ptr null, ptr %i.af, align 8, !tbaa !16
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !146

_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa.a = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %4 = getelementptr inbounds nuw [48 x i8], ptr %i.k, i64 %i.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %.pre62 = load ptr, ptr %1, align 8, !tbaa !151 ; 2 uses
  %.pre63 = ptrtoint ptr %.pre to i64
  %.pre64 = ptrtoint ptr %.pre62 to i64
  %i.ai = ptrtoint ptr %4 to i64                  ; 3 uses
  %i.aj = sub i64 %.pre63, %.pre64                ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 5                 ; 3 uses
  %i.al = icmp ugt i64 %i.ak, 1152921504606846975
  br i1 %i.al, label %bb.c, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EEC2EmRKS2_.exit
  %i.am = icmp eq ptr %.pre, %.pre62
  br i1 %i.am, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.an = ashr exact i64 %i.aj, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #16 ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ak ; 2 uses
  store i64 0, ptr %i.ao, align 8, !tbaa !154
  %i.aq = add nsw i64 %i.ak, -1                   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.d
  %i.as = getelementptr i8, ptr %i.ao, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aq, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !154
  br label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %bb.d, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.sroa.11.07988 = phi i64 [ %i.ai, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ai, %bb.d ], [ %i.ai, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ 0, %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.sroa.042.08087 = phi ptr [ %i.k, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.k, %bb.d ], [ %i.k, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 6 uses
  %.0.lcssa.i.i.i.i.i8186 = phi ptr [ %.lcssa.a, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %.lcssa.a, %bb.d ], [ %.lcssa.a, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 2 uses
  %.sroa.038.0 = phi ptr [ %i.ao, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ao, %bb.d ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ] ; 5 uses
  %.sroa.9.0 = phi ptr [ %i.ap, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %bb.d ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ null, %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.at = tail call noundef ptr @_ZN4UFAR8BitBlastEP10Wlc_Ntk_t_(ptr noundef %0) #15 ; 2 uses
  %i.au = call i32 @pthread_create(ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN4UFAR5TimerEPv, ptr noundef %3) #15 ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.aw = load ptr, ptr %1, align 8, !tbaa !151   ; 2 uses
  %.not60 = icmp eq ptr %i.av, %i.aw
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !154
  %i.ay = call i32 @pthread_join(i64 noundef %i.ax, ptr noundef null) #15 ; 0 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.ba = load ptr, ptr %1, align 8, !tbaa !151
  %.not61 = icmp eq ptr %i.az, %i.ba
  br i1 %.not61, label %._crit_edge52, label %.lr.ph51

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit, %.lr.ph
  %i.bb = phi ptr [ %i.bn, %.lr.ph ], [ %i.aw, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ]
  %.02848 = phi i64 [ %i.bl, %.lr.ph ], [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.042.08087, i64 %.02848 ; 6 uses
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.bb, i64 %.02848
  %i.be = load volatile i32, ptr @_ZL9g_nRunIds, align 4, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !16
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %0, ptr %i.bg, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.at, ptr %i.bh, align 8, !tbaa !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %2, ptr %i.bi, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.0, i64 %.02848
  %i.bk = call i32 @pthread_create(ptr noundef nonnull %i.bj, ptr noundef null, ptr noundef nonnull @_ZN4UFAR9RunSolverEPv, ptr noundef nonnull %i.bc) #15 ; 0 uses
  %i.bl = add nuw i64 %.02848, 1                  ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.bn = load ptr, ptr %1, align 8, !tbaa !151   ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 5
  %i.bs = icmp ult i64 %i.bl, %i.br
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !147

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge
  call void @Gia_ManStop(ptr noundef %i.at) #15
  %.not4753 = icmp eq ptr %.sroa.042.08087, %.0.lcssa.i.i.i.i.i8186
  br i1 %.not4753, label %._crit_edge57, label %.lr.ph56

.lr.ph51:                                         ; preds = %._crit_edge, %.lr.ph51
  %.02749 = phi i64 [ %i.bw, %.lr.ph51 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.038.0, i64 %.02749
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !154
  %i.bv = call i32 @pthread_join(i64 noundef %i.bu, ptr noundef null) #15 ; 0 uses
  %i.bw = add nuw i64 %.02749, 1                  ; 2 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !150
  %i.by = load ptr, ptr %1, align 8, !tbaa !151
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 5
  %i.cd = icmp ult i64 %i.bw, %i.cc
  br i1 %i.cd, label %.lr.ph51, label %._crit_edge52, !llvm.loop !148

bb.e:                                             ; preds = %.lr.ph56
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.034.054, i64 48 ; 2 uses
  %.not47 = icmp eq ptr %i.ce, %.0.lcssa.i.i.i.i.i8186
  br i1 %.not47, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %._crit_edge52, %bb.e
  %.sroa.034.054 = phi ptr [ %i.ce, %bb.e ], [ %.sroa.042.08087, %._crit_edge52 ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.034.054, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq i32 %i.cg, -1
  br i1 %.not, label %bb.e, label %._crit_edge57

._crit_edge57:                                    ; preds = %.lr.ph56, %bb.e, %._crit_edge52
  %spec.select = phi i32 [ -1, %._crit_edge52 ], [ -1, %bb.e ], [ %i.cg, %.lr.ph56 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not.i.i.i = icmp eq ptr %.sroa.038.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge57
  %i.ch = ptrtoint ptr %.sroa.9.0 to i64
  %i.ci = ptrtoint ptr %.sroa.038.0 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.038.0, i64 noundef %i.cj) #20
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge57, %bb.f
  %.not.i.i.i33 = icmp eq ptr %.sroa.042.08087, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ck = ptrtoint ptr %.sroa.042.08087 to i64
  %i.cl = sub i64 %.sroa.11.07988, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.042.08087, i64 noundef %i.cl) #20
  br label %_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EED2Ev.exit

_ZNSt6vectorIN4UFAR10Pth_Data_tESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.g
  ret i32 %spec.select
}

declare noundef ptr @_ZN4UFAR8BitBlastEP10Wlc_Ntk_t_(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #7

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #7

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #7

declare void @Pdr_ManSetDefaultParams(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR3PDRD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR3PDRE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @Aig_ManStop(ptr noundef %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR3PDRD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR3PDRE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @Aig_ManStop(ptr noundef %i.b) #15, !inline_history !155
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4UFAR3PDR5SolveEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call i32 @Pdr_ManSolve(ptr noundef %i.b, ptr noundef nonnull %i.c) #15
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR3PDR6SetCexEPP10Abc_Cex_t_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  store ptr %i.d, ptr %1, align 8, !tbaa !103
  store ptr null, ptr %i.c, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i32 @Pdr_ManSolve(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4PDRAD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR4PDRAE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @Aig_ManStop(ptr noundef %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4PDRAD0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR4PDRAE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @Aig_ManStop(ptr noundef %i.b) #15, !inline_history !156
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4UFAR4PDRA5SolveEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call i32 @Pdr_ManSolve(ptr noundef %i.b, ptr noundef nonnull %i.c) #15
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4PDRA6SetCexEPP10Abc_Cex_t_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  store ptr %i.d, ptr %1, align 8, !tbaa !103
  store ptr null, ptr %i.c, align 8, !tbaa !102
  ret void
}

declare ptr @Abc_NtkFromAigPhase(ptr noundef) local_unnamed_addr #7

declare void @Saig_ParBmcSetDefaultParams(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4BMC3D2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR4BMC3E, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  tail call void @Abc_NtkDelete(ptr noundef %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4BMC3D0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR4BMC3E, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  tail call void @Abc_NtkDelete(ptr noundef %i.b) #15, !inline_history !157
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4UFAR4BMC35SolveEv(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call i32 @Abc_NtkDarBmc3(ptr noundef %i.b, ptr noundef nonnull %i.c, i32 noundef 0) #15
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR4BMC36SetCexEPP10Abc_Cex_t_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !158
  store ptr %i.d, ptr %1, align 8, !tbaa !103
  store ptr null, ptr %i.c, align 8, !tbaa !158
  ret void
}

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #7

declare i32 @Abc_NtkDarBmc3(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Wlc_ManSetDefaultParams(ptr noundef) local_unnamed_addr #7

declare ptr @Wla_ManStart(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR6PDRWLAD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR6PDRWLAE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @Wla_ManStop(ptr noundef %i.b) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4UFAR6PDRWLAD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4UFAR6PDRWLAE, i64 16), ptr %0, align 8, !tbaa !24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  tail call void @Wla_ManStop(ptr noundef %i.b) #15, !inline_history !159
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4UFAR6PDRWLA5SolveEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
bb.a:
end_hunk_0
