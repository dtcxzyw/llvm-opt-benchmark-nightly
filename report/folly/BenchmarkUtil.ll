Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/BenchmarkUtil?download=true
inline.NumInlined: 268
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly6detail20bm_llc_size_fallbackEv:bb.a
  %i.j = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !19
  %i.l = load i64, ptr %i.f, align 8, !tbaa !21
  store i64 %i.l, ptr %i.d, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.m = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !20
  store ptr %i.f, ptr %2, align 8, !tbaa !19
  store i64 0, ptr %i.n, align 8, !tbaa !20
  store i8 0, ptr %i.f, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.s) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.g, %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !19     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.v = load i64, ptr %i.d, align 8, !tbaa !21
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #19
  br label %.body

_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit: ; preds = %bb.d
  %i.x = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.f
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit
  %i.z = load i64, ptr %i.f, align 8, !tbaa !21
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114pathC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_6formatE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 0, ptr noundef null)
          to label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit unwind label %bb.am

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ab = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 5 uses
  %.not.i.i.i26 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i26, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, label %bb.h

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !57
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !26, !alias.scope !57
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread

bb.h:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKNS0_4pathE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189: ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !27
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !27
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !58
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !26, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  br label %bb.i

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit: ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 2 uses
  store ptr %i.ab, ptr %4, align 8, !tbaa !56, !alias.scope !58
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !26, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.not.i.i.i29 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i29, label %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread, label %bb.i

bb.i:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %i.am = phi ptr [ %i.aj, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189 ], [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 3 uses
  %.pr192 = phi ptr [ %i.ad, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread189 ], [ %.pr.pre, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ] ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pr192, i64 8 ; 7 uses
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i30 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !27
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !27
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = atomicrmw volatile add ptr %i.an, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.l

_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit
  %.ph = phi ptr [ %i.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit ], [ %i.ae, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !59
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !60
  %i.as = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.an, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %.pr192, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !30
  %i.aw = load ptr, ptr %.pr192, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18, !call_target !37, !inline_history !52
  %i.az = load ptr, ptr %.pr192, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

bb.n:                                             ; preds = %bb.l
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i33 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.an, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

bb.p:                                             ; preds = %bb.n
  %i.be = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i35 = phi i32 [ %i.au, %bb.o ], [ %i.be, %bb.p ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i35, 1
  br i1 %i.bf, label %bb.q, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36, !prof !40

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr192) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34, %bb.q
  %i.bg = phi ptr [ %.ph, %_ZNSt10filesystem7__cxx1118directory_iteratorC2ERKS1_.exit31.thread ], [ %i.am, %bb.q ], [ %i.am, %bb.m ], [ %i.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i34 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %.pre160 = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 9 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.bo, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36
  %.0104 = phi i64 [ 0, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit36 ], [ %.1, %bb.bo ] ; 3 uses
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.pre160
  br i1 %i.bs, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i37 = icmp eq ptr %.pre160, null
  br i1 %.not.i.i.i37, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre160, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bt, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre160, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !30
  %i.by = load ptr, ptr %.pre160, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !37, !inline_history !52
  %i.cb = load ptr, ptr %.pre160, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split

bb.v:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i38 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i40 = phi i32 [ %i.bw, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.ch, label %bb.y, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split, !prof !40

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.u
  %.pr109 = load ptr, ptr %i.bg, align 8, !tbaa !26
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split, %bb.s
  %11 = phi ptr [ %.pr109, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41thread-pre-split ], [ %i.br, %bb.s ] ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not.i.i.i42 = icmp eq ptr %11, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, label %bb.z

bb.z:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41
  %i.ci = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ci, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !30
  %i.cn = load ptr, ptr %11, align 8, !tbaa !32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %11) #18, !call_target !37, !inline_history !52
  %i.cq = load ptr, ptr %11, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %11) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

bb.ab:                                            ; preds = %bb.z
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i43 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i43, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

bb.ad:                                            ; preds = %bb.ab
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i45 = phi i32 [ %i.cl, %bb.ac ], [ %i.cv, %bb.ad ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i45, 1
  br i1 %i.cw, label %bb.ae, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, !prof !40

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cx = load ptr, ptr %i.ac, align 8, !tbaa !26 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i47, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, label %bb.af

bb.af:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cy, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !30
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #18, !call_target !37, !inline_history !52
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #18, !call_target !39, !inline_history !52
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

bb.ah:                                            ; preds = %bb.af
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i48 = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i48, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !27
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

bb.aj:                                            ; preds = %bb.ah
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i50 = phi i32 [ %i.db, %bb.ai ], [ %i.dl, %bb.aj ]
  %i.dm = icmp eq i32 %.0.i.i.i.i.i50, 1
  br i1 %i.dm, label %bb.ak, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, !prof !40

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !23  ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i52, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, label %bb.al

bb.al:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.dn) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53: ; preds = %bb.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  %i.do = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.d
  br i1 %i.dp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !21
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bt

.body:                                            ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ds = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.f
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %.body
  %i.du = load i64, ptr %i.f, align 8, !tbaa !21
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bs

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.an:                                            ; preds = %bb.r
  %i.dx = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.dx)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.dy = load i64, ptr %i.bi, align 8, !tbaa !20
  %.not.i.i.i60 = icmp ult i64 %i.dy, 5
  br i1 %.not.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ao
  %i.dz = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 1
  %i.eb = xor i32 %i.ea, 1701080681
  %i.ec = getelementptr i8, ptr %i.dz, i64 4
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = zext i8 %i.ed to i32
  %i.ef = xor i32 %i.ee, 120
  %i.eg = or i32 %i.eb, %i.ef
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = zext i1 %i.eh to i32
  %i.ej = icmp eq i32 %i.ei, 0
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ao
  %i.ek = phi i1 [ false, %bb.ao ], [ %i.ej, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.el = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i61, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.el) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  %i.em = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.bk
  br i1 %i.en, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62
  %i.eo = load i64, ptr %i.bk, align 8, !tbaa !21
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66

_ZNSt10filesystem7__cxx114pathD2Ev.exit66:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %i.ek, label %bb.aq, label %bb.bo

bb.aq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i8 noundef zeroext 2)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
