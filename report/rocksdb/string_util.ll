Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/string_util?download=true
inline.NumInlined: 530
inline.NumDeleted: 224
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb8ParseIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  store i8 0, ptr %i.n, align 1, !tbaa !17
  %i.o = load ptr, ptr %1, align 8, !tbaa !33     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.p = tail call ptr @__errno_location() #32    ; 6 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46   ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !46
  %i.r = call noundef i64 @__isoc23_strtol(ptr noundef %i.o, ptr noundef nonnull %i.a, i32 noundef 10) ; 2 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.39) #28
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %.critedge.i.i, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i32, ptr %i.p, align 4, !tbaa !46
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.k:                                             ; preds = %bb.j
  store i32 %i.q, ptr %i.p, align 4, !tbaa !46
  br label %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.x = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

bb.l:                                             ; preds = %bb.g
  %i.z = load i32, ptr %i.p, align 4, !tbaa !46   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 34
  %i.ab = add i64 %i.r, -2147483648
  %i.ac = icmp ult i64 %i.ab, -4294967296
  %or.cond.i.i = or i1 %i.ac, %i.aa
  br i1 %or.cond.i.i, label %.critedge.i.i, label %bb.n

.critedge.i.i:                                    ; preds = %bb.l
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.39) #28
          to label %bb.m unwind label %bb.j

bb.m:                                             ; preds = %.critedge.i.i
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ad = ptrtoint ptr %i.s to i64
  %i.ae = ptrtoint ptr %i.o to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = icmp eq i32 %i.z, 0
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.q, ptr %i.p, align 4, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ah = trunc nsw i64 %i.r to i32               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ai = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.p
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !17
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ao = icmp ult i64 %i.af, %i.an
  br i1 %i.ao, label %bb.q, label %bb.u

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load ptr, ptr %0, align 8, !tbaa !33
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.af
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = and i8 %i.ar, -33                       ; 2 uses
  switch i8 %i.as, label %bb.t [
    i8 75, label %bb.r
    i8 77, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.at = shl i32 %i.ah, 10
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i
  %i.au = load i64, ptr %i.c, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZZN9__gnu_cxx6__stoaIlicJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.u

bb.s:                                             ; preds = %bb.q
  %i.aw = shl i32 %i.ah, 20
  br label %bb.u

bb.t:                                             ; preds = %bb.q
  %or.cond8 = icmp eq i8 %i.as, 71
  %i.ax = shl i32 %i.ah, 30
  %spec.select = select i1 %or.cond8, i32 %i.ax, i32 %i.ah
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i32 [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.at, %bb.r ], [ %i.aw, %bb.s ], [ %spec.select, %bb.t ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN7rocksdb11ParseDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = tail call ptr @__errno_location() #32    ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !46   ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !46
  %i.e = call noundef double @strtod(ptr noundef %i.b, ptr noundef nonnull %i.a)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.40) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.critedge.i.i, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load i32, ptr %i.c, align 4, !tbaa !46
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.d, ptr %i.c, align 4, !tbaa !46
  br label %_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIddcJEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 4, !tbaa !46
  switch i32 %i.k, label %_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm.exit [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.h
  ]

.critedge.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.40) #28
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %.critedge.i.i
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 %i.d, ptr %i.c, align 4, !tbaa !46
  br label %_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm.exit

_ZNSt7__cxx114stodERKNS_12basic_stringIcSt11char_traitsIcESaIcEEEPm.exit: ; preds = %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret double %i.e
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7rocksdb10ParseSizeTERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZN7rocksdb11ParseUint64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb14ParseVectorIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.5") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55
  %i.g = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ] ; 6 uses
  %i.h = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ] ; 6 uses
  %i.i = phi i64 [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ]
  %.01996 = phi i64 [ 0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ] ; 3 uses
  %i.j = phi ptr [ null, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit.lr.ph ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ] ; 18 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.l = sub nuw i64 %i.i, %.01996                ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.01996 ; 5 uses
  %i.n = call ptr @memchr(ptr noundef %i.m, i32 noundef 58, i64 noundef %i.l) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, -1
  %i.s = or i1 %.not.i, %i.r
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  store ptr %i.j, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !13, !alias.scope !61
  %i.u = icmp ugt i64 %i.l, 15
  br i1 %i.u, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.v = icmp slt i64 %i.l, 0
  br i1 %i.v, label %.noexc10.i.i, label %bb.c

.noexc10.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc10.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.w = add nuw i64 %i.l, 1                      ; 2 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !34

.noexc11.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29
          to label %.noexc28 unwind label %bb.m   ; 2 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.y, ptr %2, align 8, !tbaa !33, !alias.scope !61
  store i64 %i.l, ptr %i.t, align 8, !tbaa !17, !alias.scope !61
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.z = phi ptr [ %i.y, %.noexc28 ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.l, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.m, align 1, !tbaa !17
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.m, i64 %i.l, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.ab, align 8, !tbaa !16, !alias.scope !61
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.l
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  %i.ad = invoke noundef i32 @_ZN7rocksdb8ParseIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.n       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.ad, ptr %i.h, align 4, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.ae, ptr %i.e, align 8, !tbaa !49
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.i:                                             ; preds = %bb.g
  %i.af = ptrtoint ptr %i.g to i64
  %i.ag = ptrtoint ptr %i.j to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc29 unwind label %bb.n

.noexc29:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #29
          to label %.noexc30 unwind label %bb.n   ; 4 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store i32 %i.ad, ptr %i.aq, align 4, !tbaa !46
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %i.j, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc30
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ah) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !50
  store ptr %i.as, ptr %i.e, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.f, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

_ZNSt6vectorIiSaIiEE9push_backEOi.exit:           ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.h
  %i.au = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.t
  br i1 %i.av, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.aw = load i64, ptr %i.t, align 8, !tbaa !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %.thread

.thread:                                          ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ac

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc10.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.j, %bb.f
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.t
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.n
  %i.bc = load i64, ptr %i.t, align 8, !tbaa !17
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.m
  %.pn23 = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.az, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.be = sub i64 %i.q, %.01996
  store ptr %i.c, ptr %3, align 8, !tbaa !13, !alias.scope !63
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.l) ; 8 uses
  %i.bf = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bf, label %bb.o, label %._crit_edge.i.i.i35

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i34
  %i.bg = icmp slt i64 %spec.select.i.i.i, 0
  br i1 %i.bg, label %.noexc10.i.i38, label %bb.p

.noexc10.i.i38:                                   ; preds = %bb.o
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #28
          to label %.noexc40 unwind label %.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc10.i.i38
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.bh = add nuw i64 %spec.select.i.i.i, 1       ; 2 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %.noexc11.i.i37, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i36, !prof !34

.noexc11.i.i37:                                   ; preds = %bb.p
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc41 unwind label %.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc11.i.i37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i36: ; preds = %bb.p
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #29
          to label %.noexc42 unwind label %.loopexit65 ; 2 uses

.noexc42:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i36
  store ptr %i.bj, ptr %3, align 8, !tbaa !33, !alias.scope !63
  store i64 %spec.select.i.i.i, ptr %i.c, align 8, !tbaa !17, !alias.scope !63
  br label %._crit_edge.i.i.i35

._crit_edge.i.i.i35:                              ; preds = %.noexc42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i34
  %i.bk = phi ptr [ %i.bj, %.noexc42 ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i34 ] ; 3 uses
  switch i64 %spec.select.i.i.i, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i35
  %i.bl = load i8, ptr %i.m, align 1, !tbaa !17
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !17
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr align 1 %i.m, i64 %spec.select.i.i.i, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i35
  store i64 %spec.select.i.i.i, ptr %i.d, align 8, !tbaa !16, !alias.scope !63
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %spec.select.i.i.i
  store i8 0, ptr %i.bm, align 1, !tbaa !17
  %i.bn = invoke noundef i32 @_ZN7rocksdb8ParseIntERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.t unwind label %.loopexit66 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not.i.i44 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i44, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.bn, ptr %i.h, align 4, !tbaa !46
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !49
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53

bb.v:                                             ; preds = %bb.t
  %i.bo = ptrtoint ptr %i.g to i64
  %i.bp = ptrtoint ptr %i.j to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 6 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775804
  br i1 %i.br, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45

bb.w:                                             ; preds = %bb.v
  store ptr %i.j, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #28
          to label %.noexc51 unwind label %.loopexit.split-lp67

.noexc51:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45: ; preds = %bb.v
  %i.bs = ashr exact i64 %i.bq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i46 = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i46, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 2305843009213693951)
  %i.bw = select i1 %i.bu, i64 2305843009213693951, i64 %i.bv ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.bx = shl nuw nsw i64 %i.bw, 2
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #29
          to label %.noexc52 unwind label %.loopexit66 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bq ; 2 uses
  store i32 %i.bn, ptr %i.bz, align 4, !tbaa !46
  %i.ca = icmp sgt i64 %i.bq, 0
  br i1 %i.ca, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48

bb.x:                                             ; preds = %.noexc52
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.by, ptr align 4 %i.j, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48: ; preds = %bb.x, %.noexc52
  %5 = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i17.i.i.i49 = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i49, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.bq) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i48
  store ptr %5, ptr %i.e, align 8, !tbaa !49
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bw ; 2 uses
  store ptr %i.cb, ptr %i.f, align 8, !tbaa !62
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53

_ZNSt6vectorIiSaIiEE9push_backEOi.exit53:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50, %bb.u
  %i.cc = phi ptr [ %i.cb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50 ], [ %i.g, %bb.u ]
  %i.cd = phi ptr [ %5, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50 ], [ %4, %bb.u ]
  %i.ce = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i50 ], [ %i.j, %bb.u ] ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.c
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55

.loopexit65:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

.loopexit.split-lp:                               ; preds = %.noexc10.i.i38, %.noexc11.i.i37
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

.loopexit66:                                      ; preds = %bb.s, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i45
  %lpad.loopexit68 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.j, ptr %0, align 8
  br label %bb.z

.loopexit.split-lp67:                             ; preds = %bb.w
  %lpad.loopexit.split-lp69 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp67, %.loopexit66
  %lpad.phi70 = phi { ptr, i32 } [ %lpad.loopexit68, %.loopexit66 ], [ %lpad.loopexit.split-lp69, %.loopexit.split-lp67 ] ; 2 uses
  %i.cj = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.c
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !17
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %.loopexit65, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %.pn = phi { ptr, i32 } [ %lpad.phi70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit65 ], [ %lpad.phi70, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55: ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.cn = add nuw i64 %i.q, 1                     ; 2 uses
  %i.co = load i64, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, label %.loopexit

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = ptrtoint ptr %i.g to i64
  %i.cr = ptrtoint ptr %i.j to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.cs) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aa, %bb.ab
  resume { ptr, i32 } %.pn23.pn

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55, %bb.a
  %.lcssa = phi ptr [ null, %bb.a ], [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i55 ]
  store ptr %.lcssa, ptr %0, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb18SerializeIntVectorERKSt6vectorIiSaIiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull @.str.27, i64 noundef 0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = load ptr, ptr %0, align 8, !tbaa !50     ; 2 uses
  %.not24 = icmp eq ptr %i.e, %i.f
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = phi ptr [ %i.f, %.lr.ph ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.023 = phi i64 [ 0, %.lr.ph ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not = icmp eq i64 %.023, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #28
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.c
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !33     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.p = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = load i64, ptr %i.g, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.r
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 58, ptr %i.s, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.e, %bb.f
  store i64 %i.m, ptr %i.a, align 8, !tbaa !16
  %i.t = load ptr, ptr %1, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.m
  store i8 0, ptr %i.u, align 1, !tbaa !17
  %.pre = load ptr, ptr %0, align 8, !tbaa !50
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  %i.v = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.023
  %i.x = load i32, ptr %i.w, align 4, !tbaa !46   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.y = call i32 @llvm.abs.i32(i32 %i.x, i1 false) ; 5 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.m
  %.030.i.i = phi i32 [ %i.ah, %bb.m ], [ 1, %bb.g ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.ag, %bb.m ], [ %i.y, %bb.g ] ; 5 uses
  %i.aa = icmp ult i32 %.02329.i.i, 100
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ab = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ac = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ag = udiv i32 %.02329.i.i, 10000
  %i.ah = add i32 %.030.i.i, 4                    ; 2 uses
  %i.ai = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.ai, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !66

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g
  %.022.i.i = phi i32 [ %i.af, %bb.l ], [ %i.ab, %bb.h ], [ %i.ad, %bb.j ], [ 1, %bb.g ], [ %i.ah, %bb.m ] ; 2 uses
  %.lobit.i = lshr i32 %i.x, 31                   ; 2 uses
  %i.aj = add i32 %.022.i.i, %.lobit.i            ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 5 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !13, !alias.scope !69
  %i.al = icmp ugt i32 %i.aj, 15
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.am = add nuw nsw i64 %i.ak, 1
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #29
          to label %.noexc.i unwind label %bb.u   ; 2 uses

.noexc.i:                                         ; preds = %bb.n
  store ptr %i.an, ptr %2, align 8, !tbaa !33, !alias.scope !69
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !17, !alias.scope !69
  br label %bb.q

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.aj, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  store i8 45, ptr %i.h, align 8, !tbaa !17, !alias.scope !69
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %.noexc.i
  %i.ao = phi ptr [ %i.an, %.noexc.i ], [ %i.h, %bb.o ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ao, i8 45, i64 %i.ak, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ap = phi ptr [ %i.h, %bb.o ], [ %i.ao, %bb.q ], [ %i.h, %bb.p ]
  store i64 %i.ak, ptr %i.i, align 8, !tbaa !16, !alias.scope !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  %i.ar = zext nneg i32 %.lobit.i to i64
  %i.as = load ptr, ptr %2, align 8, !tbaa !33, !alias.scope !69
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ar ; 4 uses
  %i.au = icmp ugt i32 %i.y, 99
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %i.av = add i32 %.022.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.ay, %.lr.ph.i11.i ], [ %i.y, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bj, %.lr.ph.i11.i ], [ %i.av, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aw = urem i32 %.020.i.i, 100
  %i.ax = shl nuw nsw i32 %i.aw, 1
  %i.ay = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !17, !noalias !69
  %i.bd = zext i32 %.01819.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bd
  store i8 %i.bc, ptr %i.be, align 1, !tbaa !17
  %i.bf = load i8, ptr %i.ba, align 2, !tbaa !17, !noalias !69
  %i.bg = add i32 %.01819.i.i, -1
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bh
  store i8 %i.bf, ptr %i.bi, align 1, !tbaa !17
  %i.bj = add i32 %.01819.i.i, -2
  %i.bk = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.bk, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %i.y, %bb.r ], [ %i.ay, %.lr.ph.i11.i ] ; 3 uses
  %i.bl = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i
end_hunk_0
