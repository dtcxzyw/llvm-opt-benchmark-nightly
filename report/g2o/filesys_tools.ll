Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/filesys_tools?download=true
inline.NumInlined: 1006
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN3g2o10fileExistsESt17basic_string_viewIcSt11char_traitsIcEEb:bb.a
bb.e:                                             ; preds = %bb.d
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.k) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !21
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i1 %i.i

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o17getFilesByPatternESt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1111basic_regexIcNS4_12regex_traitsIcEEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 7 uses
  %6 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %7 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 12 uses
  %8 = alloca %"class.std::filesystem::__cxx11::directory_iterator", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i8 noundef zeroext 2)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.ai

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.f = load ptr, ptr %6, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !21
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.k = load ptr, ptr %5, align 8, !tbaa !236    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27   ; 5 uses
  %.not.i.i.i37 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i37, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.d

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  store ptr %i.k, ptr %7, align 8, !tbaa !236, !alias.scope !237
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !27, !alias.scope !237
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit42.thread

bb.d:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread168

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread168: ; preds = %bb.d
  %i.q = load i32, ptr %i.o, align 4, !tbaa !28
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !28
  store ptr %i.k, ptr %7, align 8, !tbaa !236, !alias.scope !238
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.s, align 8, !tbaa !27, !alias.scope !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  br label %bb.e

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.l, align 8, !tbaa !27 ; 2 uses
  store ptr %i.k, ptr %7, align 8, !tbaa !236, !alias.scope !238
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.u, align 8, !tbaa !27, !alias.scope !238
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %.not.i.i.i40 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i40, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit42.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread168, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.v = phi ptr [ %i.s, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread168 ], [ %i.u, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr171 = phi ptr [ %i.m, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread168 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pr171, i64 8 ; 7 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i41 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.w, align 4, !tbaa !28
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !28
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.h

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit42.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.u, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.n, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !239
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false), !alias.scope !240
  %i.ab = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %.pr171, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !31
  %i.af = load ptr, ptr %.pr171, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %.pr171) #18, !inline_history !225
  %i.ai = load ptr, ptr %.pr171, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %.pr171) #18, !inline_history !225
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47

bb.j:                                             ; preds = %bb.h
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i44 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i44, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.w, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

bb.l:                                             ; preds = %bb.j
  %i.an = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i46 = phi i32 [ %i.ad, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i46, 1
  br i1 %i.ao, label %bb.m, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47, !prof !34

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr171) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit42.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45, %bb.m
  %i.ap = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit42.thread ], [ %i.v, %bb.m ], [ %i.v, %bb.i ], [ %i.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i45 ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 11 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !27 ; 9 uses
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit47
  %i.az = load ptr, ptr %i.ap, align 8, !tbaa !27
  %.not = icmp eq ptr %i.az, %.pre
  br i1 %.not, label %bb.o, label %bb.ak

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i48 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i48, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ba, align 8, !tbaa !30
  %i.be = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !31
  %i.bf = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18, !inline_history !225
  %i.bi = load ptr, ptr %.pre, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18, !inline_history !225
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52

bb.r:                                             ; preds = %bb.p
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i49 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i49, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50

bb.t:                                             ; preds = %bb.r
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i51 = phi i32 [ %i.bd, %bb.s ], [ %i.bn, %bb.t ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i51, 1
  br i1 %i.bo, label %bb.u, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52, !prof !34

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i50, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %12 = load ptr, ptr %i.ap, align 8, !tbaa !27   ; 8 uses
  %.not.i.i.i53 = icmp eq ptr %12, null
  br i1 %.not.i.i.i53, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57, label %bb.v

bb.v:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bp, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !31
  %i.bu = load ptr, ptr %12, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %12) #18, !inline_history !225
  %i.bx = load ptr, ptr %12, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %12) #18, !inline_history !225
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57

bb.x:                                             ; preds = %bb.v
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i54 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55

bb.z:                                             ; preds = %bb.x
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i56 = phi i32 [ %i.bs, %bb.y ], [ %i.cc, %bb.z ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i56, 1
  br i1 %i.cd, label %bb.aa, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57, !prof !34

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit52, %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i55, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !27  ; 8 uses
  %.not.i.i.i58 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i58, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit62, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cf, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !31
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !225
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18, !inline_history !225
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit62

bb.ad:                                            ; preds = %bb.ab
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i59 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i59, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

bb.af:                                            ; preds = %bb.ad
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i61 = phi i32 [ %i.ci, %bb.ae ], [ %i.cs, %bb.af ]
  %i.ct = icmp eq i32 %.0.i.i.i.i.i61, 1
  br i1 %i.ct, label %bb.ag, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit62, !prof !34

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit62

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit62: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit57, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.ah:                                            ; preds = %bb.a
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ai:                                            ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ai ], [ %i.cu, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bv

bb.ak:                                            ; preds = %bb.n
  %i.cw = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #18 ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !251 ; 2 uses
  switch i8 %i.cy, label %bb.am [
    i8 0, label %bb.al
    i8 3, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.cz = invoke i64 @_ZNSt10filesystem6statusERKNS_7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(41) %i.cw)
          to label %.noexc unwind label %bb.ax

.noexc:                                           ; preds = %bb.al
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.cz to i8
  br label %bb.am

bb.am:                                            ; preds = %.noexc, %bb.ak
  %.0.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i, %.noexc ], [ %i.cy, %bb.ak ]
  %i.da = icmp eq i8 %.0.i.i, 1
  br i1 %i.da, label %bb.an, label %bb.az

bb.an:                                            ; preds = %bb.am
  %i.db = invoke fastcc noundef zeroext i1 @"_ZZN3g2o17getFilesByPatternESt17basic_string_viewIcSt11char_traitsIcEERKNSt7__cxx1111basic_regexIcNS4_12regex_traitsIcEEEEENK3$_0clERKNSt10filesystem7__cxx114pathE"(ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(40) %i.cw)
          to label %bb.ao unwind label %bb.ax

bb.ao:                                            ; preds = %bb.an
  br i1 %i.db, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  %i.dc = load ptr, ptr %i.cw, align 8, !tbaa !17, !noalias !254 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !18, !noalias !254 ; 5 uses
  store ptr %i.ax, ptr %9, align 8, !tbaa !19, !alias.scope !254
  %i.df = icmp eq ptr %i.dc, null
  %i.dg = icmp ne i64 %i.de, 0
  %or.cond.i.i.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i.i.i, label %.noexc.i, label %bb.aq

.noexc.i:                                         ; preds = %bb.ap
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc63 unwind label %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %.noexc.i
  unreachable

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !254
  store i64 %i.de, ptr %i.b, align 8, !tbaa !20, !noalias !254
  %i.dh = icmp ugt i64 %i.de, 15
  br i1 %i.dh, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.aq
  %i.di = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc64 unwind label %.loopexit.split-lp106.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc64:                                         ; preds = %.noexc.i.i.i
  store ptr %i.di, ptr %9, align 8, !tbaa !17, !alias.scope !254
  %i.dj = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !254
  store i64 %i.dj, ptr %i.ax, align 8, !tbaa !21, !alias.scope !254
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc64, %bb.aq
  %i.dk = phi ptr [ %i.di, %.noexc64 ], [ %i.ax, %bb.aq ] ; 2 uses
  switch i64 %i.de, label %bb.as [
    i64 1, label %bb.ar
    i64 0, label %bb.at
  ]

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !21
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !21
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.dc, i64 %i.de, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i.i.i
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !20, !noalias !254 ; 2 uses
end_hunk_0
