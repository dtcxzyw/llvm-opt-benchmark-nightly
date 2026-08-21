Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/aruco_board?download=true
inline.NumInlined: 1418
inline.NumDeleted: 577
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv5aruco12CharucoBoard16setLegacyPatternEb:bb.a
          cleanup
  call void @_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ak

bb.aj:                                            ; preds = %.split30, %.split, %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.ak:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7 = phi { ptr, i32 } [ %i.cf, %bb.ai ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv5aruco12CharucoBoard16getLegacyPatternEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv5aruco12CharucoBoard16getLegacyPatternEv, ptr noundef nonnull @.str.1, i32 noundef 580) #25
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %1, align 8, !tbaa !8      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !14
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !106, !noalias !292 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 7 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !292
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i32, ptr %i.j, align 4, !tbaa !35, !noalias !292
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !35, !noalias !292
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !292 ; 0 uses
  br label %bb.i

_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.p = load i8, ptr %i.o, align 4, !tbaa !205, !range !206, !noundef !207
  br label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.r = load i8, ptr %i.q, align 4, !tbaa !205, !range !206, !noundef !207 ; 3 uses
  %i.s = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.j, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !109
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !271
  %i.z = load ptr, ptr %i.i, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !271
  br label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.j, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ae = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.l ], [ %i.ae, %bb.m ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.n, label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %.in = phi i8 [ %i.p, %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit ], [ %i.r, %bb.j ], [ %i.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.r, %bb.n ]
  %i.ag = trunc nuw i8 %.in to i1
  ret i1 %i.ag
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv5aruco12CharucoBoard28checkCharucoCornersCollinearERKNS_11_InputArrayE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 27 uses
  %5 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !101
  %.not85 = icmp eq ptr %i.a, null
  br i1 %.not85, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv5aruco12CharucoBoard28checkCharucoCornersCollinearERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 585) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.ax

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.i = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !295
  %i.j = icmp eq i32 %i.i, 65536
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15, !noalias !295
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.l)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.h, %bb.i
  %i.m = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.n = trunc i64 %i.m to i32                    ; 4 uses
  %i.o = icmp ult i32 %i.n, 3
  br i1 %i.o, label %bb.av, label %bb.l

bb.k:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.q = load ptr, ptr %0, align 8, !tbaa !101, !noalias !298 ; 3 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !269, !alias.scope !298
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !106, !noalias !298 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !106, !alias.scope !298
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !298
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = load i32, ptr %i.u, align 4, !tbaa !35, !noalias !298
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !35, !noalias !298
  br label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.o:                                             ; preds = %bb.m
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !298 ; 0 uses
  %.pre = load ptr, ptr %5, align 8, !tbaa !269
  br label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.l, %bb.n, %bb.o
  %i.z = phi ptr [ %i.q, %bb.l ], [ %i.q, %bb.n ], [ %.pre, %bb.o ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 304 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !122
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !49
  %i.ae = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 12
  %.not = icmp ult i64 %i.ai, %i.ae
  br i1 %.not, label %bb.r, label %bb.w

bb.q:                                             ; preds = %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv5aruco12CharucoBoard28checkCharucoCornersCollinearERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 594) #25
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.v:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !8     ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.v
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !14
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.u
  %.pn33 = phi { ptr, i32 } [ %i.ak, %bb.u ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.al, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.au

bb.w:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !30
  %i.at = icmp slt i32 %i.as, 2                   ; 2 uses
  br i1 %i.at, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load i32, ptr %4, align 8, !tbaa !23
  %i.av = and i32 %i.au, 16384
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, 1
  %or.cond.i = select i1 %i.aw, i1 true, i1 %i.az
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !36 ; 10 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !35
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 6 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.bd
  %i.bg = load <2 x float>, ptr %i.bf, align 4, !tbaa !53 ; 3 uses
  br i1 %or.cond.i, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !35
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bl
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %.fr = freeze i32 %i.bo                         ; 3 uses
  %i.bp = add i32 %.fr, 1
  %i.bq = icmp ult i32 %i.bp, 3
  %i.br = select i1 %i.bq, i32 %.fr, i32 0        ; 2 uses
  %i.bs = mul nsw i32 %i.br, %.fr
  %i.bt = sub nsw i32 1, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !34
  %i.bw = sext i32 %i.br to i64
  %i.bx = mul i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bx
  %i.bz = sext i32 %i.bt to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bz
  br label %bb.ad

bb.ab:                                            ; preds = %bb.w
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !36 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !35
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 3 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load <2 x float>, ptr %i.cg, align 4, !tbaa !53
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !35
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.ck
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !220
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !220
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  br label %bb.ag

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %.0.i54.ph.ph = phi ptr [ %i.bm, %bb.z ], [ %i.ca, %bb.aa ]
  %i.ct = load i32, ptr %.0.i54.ph.ph, align 4, !tbaa !35
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.be, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !220 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !35
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.db = load i64, ptr %i.da, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.db
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %.fr86 = freeze i32 %i.de                       ; 3 uses
  %i.df = add i32 %.fr86, 1
  %i.dg = icmp ult i32 %i.df, 3
  %i.dh = select i1 %i.dg, i32 %.fr86, i32 0      ; 2 uses
  %i.di = mul nsw i32 %i.dh, %.fr86
  %i.dj = sub nsw i32 1, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !34
  %i.dm = sext i32 %i.dh to i64
  %i.dn = mul i64 %i.dl, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dn
  %i.dp = sext i32 %i.dj to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.af
  %i.dr = phi ptr [ %i.cc, %bb.ab ], [ %i.bb, %bb.ac ], [ %i.bb, %bb.ae ], [ %i.bb, %bb.af ] ; 6 uses
  %i.ds = phi float [ %i.cm, %bb.ab ], [ %i.cr, %bb.ac ], [ %i.cw, %bb.ae ], [ %i.cw, %bb.af ]
  %i.dt = phi ptr [ %i.cf, %bb.ab ], [ %i.be, %bb.ac ], [ %i.be, %bb.ae ], [ %i.be, %bb.af ] ; 5 uses
  %.0.i57 = phi ptr [ %i.ci, %bb.ab ], [ %i.cs, %bb.ac ], [ %i.dc, %bb.ae ], [ %i.dq, %bb.af ]
  %i.du = phi <2 x float> [ %i.ch, %bb.ab ], [ %i.bg, %bb.ac ], [ %i.bg, %bb.ae ], [ %i.bg, %bb.af ] ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 1
  %i.dw = fpext float %i.dv to double             ; 2 uses
  %i.dx = extractelement <2 x float> %i.du, i64 0
  %i.dy = fpext float %i.dx to double             ; 2 uses
  %i.dz = fpext float %i.ds to double             ; 2 uses
  %i.ea = load i32, ptr %.0.i57, align 4, !tbaa !35
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !221
  %i.ef = fpext float %i.ee to double             ; 2 uses
  %i.eg = fsub double %i.dw, %i.ef                ; 3 uses
  %i.eh = fsub double %i.dz, %i.dy                ; 3 uses
  %i.ei = fmul double %i.eh, %i.eh
  %i.ej = call double @llvm.fmuladd.f64(double %i.eg, double %i.eg, double %i.ei) ; 2 uses
  %i.ek = fcmp une double %i.ej, 0.000000e+00
  br i1 %i.ek, label %.lr.ph, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.29, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv5aruco12CharucoBoard28checkCharucoCornersCollinearERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 607) #25
          to label %bb.aj unwind label %bb.al

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

bb.al:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %8, align 8, !tbaa !8     ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.al
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !14
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %bb.ak
  %.pn35 = phi { ptr, i32 } [ %i.el, %bb.ak ], [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.em, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.au

.lr.ph:                                           ; preds = %bb.ag
  %sqrt = call double @llvm.sqrt.f64(double %i.ej)
  %i.es = fneg double %i.dz
  %i.et = fmul double %i.es, %i.dw
  %i.eu = call double @llvm.fmuladd.f64(double %i.dy, double %i.ef, double %i.et)
  %i.ev = fdiv double 1.000000e+00, %sqrt         ; 3 uses
  %i.ew = fmul double %i.eg, %i.ev                ; 3 uses
  %i.ex = fmul double %i.eh, %i.ev                ; 3 uses
  %i.ey = fmul double %i.eu, %i.ev                ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = icmp eq i32 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fd = load i32, ptr %i.fc, align 4            ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ff = load i64, ptr %i.fe, align 8            ; 4 uses
  br i1 %i.at, label %_ZN2cv3Mat2atIiEERT_i.exit67.us, label %.lr.ph.split

_ZN2cv3Mat2atIiEERT_i.exit67.us:                  ; preds = %.lr.ph, %_ZN2cv3Mat2atIiEERT_i.exit67.us
  %.090.us = phi i32 [ %11, %_ZN2cv3Mat2atIiEERT_i.exit67.us ], [ 2, %.lr.ph ] ; 2 uses
  %10 = sext i32 %.090.us to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %10
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !35
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.fi
  %i.fk = load <2 x float>, ptr %i.fj, align 4, !tbaa !53
  %i.fl = fpext <2 x float> %i.fk to <2 x double> ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 0
  %i.fn = call double @llvm.fmuladd.f64(double %i.fm, double %i.ew, double 0.000000e+00)
  %i.fo = extractelement <2 x double> %i.fl, i64 1
  %i.fp = call double @llvm.fmuladd.f64(double %i.fo, double %i.ex, double %i.fn)
  %i.fq = fadd double %i.ey, %i.fp
  %i.fr = call noundef double @llvm.fabs.f64(double %i.fq)
  %i.fs = fcmp ule double %i.fr, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %11 = add nuw i32 %.090.us, 1                   ; 2 uses
  %exitcond136.not = icmp ne i32 %11, %i.n
  %or.cond.not = select i1 %i.fs, i1 %exitcond136.not, i1 false
  br i1 %or.cond.not, label %_ZN2cv3Mat2atIiEERT_i.exit67.us, label %.critedge, !llvm.loop !301

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ft = load i32, ptr %4, align 8
  %i.fu = and i32 %i.ft, 16384
  %i.fv = icmp ne i32 %i.fu, 0
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = icmp eq i32 %i.fx, 1
  %or.cond.i65 = select i1 %i.fv, i1 true, i1 %i.fy
  br i1 %or.cond.i65, label %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us, label %.lr.ph.split.split.split

_ZN2cv3Mat2atIiEERT_i.exit67.us97.us:             ; preds = %.lr.ph.split, %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us
  %.090.us95.us = phi i32 [ %13, %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us ], [ 2, %.lr.ph.split ] ; 2 uses
  %12 = sext i32 %.090.us95.us to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %12
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !35
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.gb
  %i.gd = load <2 x float>, ptr %i.gc, align 4, !tbaa !53
  %i.ge = fpext <2 x float> %i.gd to <2 x double> ; 2 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 0
  %i.gg = call double @llvm.fmuladd.f64(double %i.gf, double %i.ew, double 0.000000e+00)
  %i.gh = extractelement <2 x double> %i.ge, i64 1
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.ex, double %i.gg)
  %i.gj = fadd double %i.ey, %i.gi
  %i.gk = call noundef double @llvm.fabs.f64(double %i.gj)
  %i.gl = fcmp ule double %i.gk, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %13 = add nuw i32 %.090.us95.us, 1              ; 2 uses
  %exitcond134.not = icmp ne i32 %13, %i.n
  %or.cond172.not = select i1 %i.gl, i1 %exitcond134.not, i1 false
  br i1 %or.cond172.not, label %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us, label %.critedge, !llvm.loop !301

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split, %_ZN2cv3Mat2atIiEERT_i.exit67
  %.090 = phi i32 [ %20, %_ZN2cv3Mat2atIiEERT_i.exit67 ], [ 2, %.lr.ph.split ] ; 7 uses
  br i1 %i.fb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.split.split.split
  %14 = sext i32 %.090 to i64
  %i.gm = mul i64 %i.ff, %14
  %i.gn = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.gm
  %15 = sext i32 %.090 to i64
  %i.go = mul i64 %i.ff, %15
  %i.gp = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.go
  br label %_ZN2cv3Mat2atIiEERT_i.exit67

bb.an:                                            ; preds = %.lr.ph.split.split.split
  %i.gq = sdiv i32 %.090, %i.fd                   ; 2 uses
  %i.gr = mul nsw i32 %i.gq, %i.fd
  %16 = sub nsw i32 %.090, %i.gr
  %i.gs = sext i32 %i.gq to i64
  %i.gt = mul i64 %i.ff, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.gt
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %17
  %i.gv = sdiv i32 %.090, %i.fd                   ; 2 uses
  %i.gw = mul nsw i32 %i.gv, %i.fd                ; 0 uses
  %.recomposed = srem i32 %.090, %i.fd
  %i.gx = sext i32 %i.gv to i64
  %i.gy = mul i64 %i.ff, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.gy
  %19 = sext i32 %.recomposed to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %19
  br label %_ZN2cv3Mat2atIiEERT_i.exit67

_ZN2cv3Mat2atIiEERT_i.exit67:                     ; preds = %bb.an, %bb.am
  %.pn165.in.in = phi ptr [ %18, %bb.an ], [ %i.gn, %bb.am ]
  %.0.i66 = phi ptr [ %i.ha, %bb.an ], [ %i.gp, %bb.am ]
  %.pn165.in = load i32, ptr %.pn165.in.in, align 4, !tbaa !35
  %.pn165 = sext i32 %.pn165.in to i64
  %.in164 = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %.pn165
  %i.hb = load float, ptr %.in164, align 4, !tbaa !220
  %i.hc = fpext float %i.hb to double
  %i.hd = load i32, ptr %.0.i66, align 4, !tbaa !35
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [12 x i8], ptr %i.dt, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !221
  %i.hi = fpext float %i.hh to double
  %i.hj = call double @llvm.fmuladd.f64(double %i.hc, double %i.ew, double 0.000000e+00)
  %i.hk = call double @llvm.fmuladd.f64(double %i.hi, double %i.ex, double %i.hj)
  %i.hl = fadd double %i.ey, %i.hk
  %i.hm = call noundef double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ule double %i.hm, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %20 = add nuw i32 %.090, 1                      ; 2 uses
  %exitcond.not = icmp ne i32 %20, %i.n
  %or.cond174.not = select i1 %i.hn, i1 %exitcond.not, i1 false
  br i1 %or.cond174.not, label %.lr.ph.split.split.split, label %.critedge, !llvm.loop !301

.critedge:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit67, %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us, %_ZN2cv3Mat2atIiEERT_i.exit67.us
  %.not46.lcssa = phi i1 [ %i.gl, %_ZN2cv3Mat2atIiEERT_i.exit67.us97.us ], [ %i.fs, %_ZN2cv3Mat2atIiEERT_i.exit67.us ], [ %i.hn, %_ZN2cv3Mat2atIiEERT_i.exit67 ]
  %i.ho = load ptr, ptr %i.r, align 8, !tbaa !106 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.critedge
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.hp, align 8, !tbaa !107
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !109
  %i.hu = load ptr, ptr %i.ho, align 8, !tbaa !110
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #24, !inline_history !271
  %i.hx = load ptr, ptr %i.ho, align 8, !tbaa !110
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #24, !inline_history !271
  br label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i = phi i32 [ %i.hs, %bb.ar ], [ %i.ic, %bb.as ]
  %i.id = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.id, label %bb.at, label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ho) #24
  br label %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.av

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.q
  %.pn37.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.q ], [ %.pn33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aw

bb.av:                                            ; preds = %bb.j, %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.229 = phi i1 [ %.not46.lcssa, %_ZNSt12__shared_ptrIN2cv5aruco16CharucoBoardImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ true, %bb.j ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.229

bb.aw:                                            ; preds = %bb.au, %bb.k
  %.pn37.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn.pn, %bb.au ], [ %i.p, %bb.k ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn37.pn.pn.pn.pn.pn.pn, %bb.aw ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn37.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv5aruco12CharucoBoard20getChessboardCornersEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !101    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv5aruco12CharucoBoard20getChessboardCornersEv, ptr noundef nonnull @.str.1, i32 noundef 629) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  store ptr %i.a, ptr %4, align 8, !tbaa !269, !alias.scope !302
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !106, !noalias !302 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !106, !alias.scope !302
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14, !noalias !302
  %.not.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.l, align 4, !tbaa !35, !noalias !302
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.l, align 4, !tbaa !35, !noalias !302
  br label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit

bb.j:                                             ; preds = %bb.h
  %i.p = atomicrmw volatile add ptr %i.l, i32 1 acq_rel, align 4, !noalias !302 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !269
  br label %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit

_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit: ; preds = %bb.g, %bb.i, %bb.j
  %i.q = phi ptr [ %i.a, %bb.g ], [ %i.a, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 304
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !122  ; 3 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i7 = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i7, label %.noexc9.thread, label %bb.k

.noexc9.thread:                                   ; preds = %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr null, i64 %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !123
  br label %.loopexit

bb.k:                                             ; preds = %_ZSt19static_pointer_castIN2cv5aruco16CharucoBoardImplENS1_5Board4ImplEESt10shared_ptrIT_ERKS5_IT0_E.exit
  %i.ab = sdiv exact i64 %i.x, 12
  %i.ac = icmp ugt i64 %i.ab, 768614336404564650
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !113

.noexc.i.i:                                       ; preds = %bb.k
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.k
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #27
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %bb.r ; 4 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt15__new_allocatorIN2cv7Point3_IfEEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !122
end_hunk_0
