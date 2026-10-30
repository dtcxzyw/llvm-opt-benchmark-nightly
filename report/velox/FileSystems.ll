Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/FileSystems?download=true
inline.NumInlined: 964
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK8facebook5velox11filesystems12_GLOBAL__N_115LocalFileSystem11isDirectoryESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %1, ptr %2) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  store i64 %i.e, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = extractvalue { i64, ptr } %i.d, 1
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  %i.h = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.j) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !29
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.p = and i64 %i.h, 255
  %i.q = icmp eq i64 %i.p, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %i.q

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN8facebook5velox11filesystems12_GLOBAL__N_115LocalFileSystem4listB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.46") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, ptr %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %6 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 7 uses
  %7 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 12 uses
  %8 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, ptr } %i.c(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, ptr %3) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  store i64 %i.e, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = extractvalue { i64, ptr } %i.d, 1
  store ptr %i.g, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(40) %5, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.ag

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.h = load ptr, ptr %6, align 8, !tbaa !204    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.b

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.h, ptr %7, align 8, !tbaa !204, !alias.scope !205
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !27, !alias.scope !205
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit19.thread

bb.b:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread87

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread87: ; preds = %bb.b
  %i.n = load i32, ptr %i.l, align 4, !tbaa !30
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !30
  store ptr %i.h, ptr %7, align 8, !tbaa !204, !alias.scope !206
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.p, align 8, !tbaa !27, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %bb.c

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.b
  %i.q = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.i, align 8, !tbaa !27 ; 2 uses
  store ptr %i.h, ptr %7, align 8, !tbaa !204, !alias.scope !206
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.j, ptr %i.r, align 8, !tbaa !27, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %.not.i.i.i17 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i17, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit19.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread87, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.s = phi ptr [ %i.p, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread87 ], [ %i.r, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr90 = phi ptr [ %i.j, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread87 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pr90, i64 8 ; 7 uses
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i18 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.t, align 4, !tbaa !30
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !30
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = atomicrmw volatile add ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit19.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.r, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.k, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !207
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !208
  %i.y = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr90, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !35
  %i.ac = load ptr, ptr %.pr90, align 8, !tbaa !37
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %.pr90) #18, !inline_history !199
  %i.af = load ptr, ptr %.pr90, align 8, !tbaa !37
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %.pr90) #18, !inline_history !199
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24

bb.h:                                             ; preds = %bb.f
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i21 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.t, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i23 = phi i32 [ %i.aa, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i23, 1
  br i1 %i.al, label %bb.k, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24, !prof !38

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr90) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit19.thread, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22, %bb.k
  %i.am = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit19.thread ], [ %i.s, %bb.k ], [ %i.s, %bb.g ], [ %i.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i22 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !27 ; 9 uses
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit24
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.at = icmp eq ptr %i.as, %.pre
  br i1 %i.at, label %bb.m, label %bb.ah

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i25 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i25, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.au, align 8, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !35
  %i.az = load ptr, ptr %.pre, align 8, !tbaa !37
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18, !inline_history !199
  %i.bc = load ptr, ptr %.pre, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18, !inline_history !199
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29

bb.p:                                             ; preds = %bb.n
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i26 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

bb.r:                                             ; preds = %bb.p
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i28 = phi i32 [ %i.ax, %bb.q ], [ %i.bh, %bb.r ]
  %i.bi = icmp eq i32 %.0.i.i.i.i.i28, 1
  br i1 %i.bi, label %bb.s, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29, !prof !38

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %10 = load ptr, ptr %i.am, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i30 = icmp eq ptr %10, null
  br i1 %.not.i.i.i30, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34, label %bb.t

bb.t:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.bk = load atomic i64, ptr %i.bj acquire, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 4294967297
  %i.bm = trunc i64 %i.bk to i32                  ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bj, align 8, !tbaa !34
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 12
  store i32 0, ptr %i.bn, align 4, !tbaa !35
  %i.bo = load ptr, ptr %10, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %10) #18, !inline_history !199
  %i.br = load ptr, ptr %10, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %10) #18, !inline_history !199
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34

bb.v:                                             ; preds = %bb.t
  %i.bu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i31 = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i31, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bv = add nsw i32 %i.bm, -1
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

bb.x:                                             ; preds = %bb.v
  %i.bw = atomicrmw volatile add ptr %i.bj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i33 = phi i32 [ %i.bm, %bb.w ], [ %i.bw, %bb.x ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i33, 1
  br i1 %i.bx, label %bb.y, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34, !prof !38

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit29, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i32, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.by = load ptr, ptr %i.i, align 8, !tbaa !27  ; 8 uses
  %.not.i.i.i35 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i35, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39, label %bb.z

bb.z:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bz, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !35
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #18, !inline_history !199
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #18, !inline_history !199
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39

bb.ab:                                            ; preds = %bb.z
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !29
  %.not.i.i.i.i36 = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i36, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !30
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37

bb.ad:                                            ; preds = %bb.ab
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i38 = phi i32 [ %i.cc, %bb.ac ], [ %i.cm, %bb.ad ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i38, 1
  br i1 %i.cn, label %bb.ae, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39, !prof !38

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit34, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i37, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i40, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.cp) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.af, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit39
  %i.cq = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !29
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #33
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret void

bb.ag:                                            ; preds = %bb.a
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ah:                                            ; preds = %bb.l
  %i.cw = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  store ptr %i.ao, ptr %9, align 8, !tbaa !66, !alias.scope !209
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !43, !noalias !209 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !65, !noalias !209 ; 8 uses
  %i.da = icmp ugt i64 %i.cz, 15
  br i1 %i.da, label %bb.ai, label %._crit_edge.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.db = icmp slt i64 %i.cz, 0
  br i1 %i.db, label %.noexc.i.i, label %bb.aj

.noexc.i.i:                                       ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.dc = add nuw i64 %i.cz, 1                    ; 2 uses
  %i.dd = icmp slt i64 %i.dc, 0
  br i1 %i.dd, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !38

.noexc6.i.i:                                      ; preds = %bb.aj
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.aj
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #31
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.de, ptr %9, align 8, !tbaa !43, !alias.scope !209
  store i64 %i.cz, ptr %i.ao, align 8, !tbaa !29, !alias.scope !209
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc42, %bb.ah
  %i.df = phi ptr [ %i.de, %.noexc42 ], [ %i.ao, %bb.ah ] ; 3 uses
  switch i64 %i.cz, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i.i
  %i.dg = load i8, ptr %i.cx, align 1, !tbaa !29
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !29
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i.i
  store i64 %i.cz, ptr %i.ap, align 8, !tbaa !65, !alias.scope !209
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cz
  store i8 0, ptr %i.dh, align 1, !tbaa !29
  %i.di = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 6 uses
  %i.dj = load ptr, ptr %i.ar, align 8, !tbaa !79
  %.not.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
end_hunk_0
