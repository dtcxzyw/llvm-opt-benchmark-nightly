Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_:_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit
  %.sroa.016.019 = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  %i.aa = load i32, ptr %.sroa.016.019, align 4, !tbaa !21375 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 256
  %i.ac = trunc i32 %i.aa to i8
  %i.ad = select i1 %i.ab, i8 %i.ac, i8 63
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !9324 ; 6 uses
  %i.af = add i64 %i.ae, 1                        ; 9 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !9326  ; 6 uses
  %i.ah = icmp eq ptr %i.ag, %i.a                 ; 2 uses
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %.lr.ph
  %i.ai = icmp samesign ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ugt i64 %i.af, 15
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread: ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !9325 ; 2 uses
  %i.al = icmp ugt i64 %i.af, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i9, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i9: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.am = phi i64 [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ] ; 2 uses
  %i.an = icmp slt i64 %i.af, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i9
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i9
  %i.ao = icmp ugt i64 %i.af, %i.am
  br i1 %i.ao, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ap = shl nuw i64 %i.am, 1                    ; 2 uses
  %i.aq = icmp ult i64 %i.af, %i.ap
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %spec.store.select.i.i14 = call i64 @llvm.umin.i64(i64 %i.ap, i64 9223372036854775807)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i10 = phi i64 [ %spec.store.select.i.i14, %bb.h ], [ %i.af, %bb.g ], [ %i.af, %bb.f ] ; 2 uses
  %i.ar = add nuw i64 %.0.i10, 1                  ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i11, !prof !9356

bb.j:                                             ; preds = %bb.i
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i11: ; preds = %bb.i
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #59 ; 4 uses
  switch i64 %i.ae, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i11
  %i.au = load i8, ptr %i.ag, align 1, !tbaa !9325
  store i8 %i.au, ptr %i.at, align 1, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.ag, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i11, %bb.k, %bb.l
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.av = icmp samesign ult i64 %i.ae, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27.i
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !9325
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ax) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i
  store ptr %i.at, ptr %2, align 8, !tbaa !9326
  store i64 %.0.i10, ptr %i.a, align 8, !tbaa !9325
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit
  %i.ay = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.thread ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ae
  store i8 %i.ad, ptr %i.az, align 1, !tbaa !9325
  store i64 %i.af, ptr %i.b, align 8, !tbaa !9324
  %i.ba = load ptr, ptr %2, align 8, !tbaa !9326
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.af
  store i8 0, ptr %i.bb, align 1, !tbaa !9325
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.019, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.n
  br i1 %i.bd, label %._crit_edge.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerISt17basic_string_viewIwSt11char_traitsIwEEvE7convertB5cxx11ES4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string.141", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #49
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !21376
  %i.b = icmp eq ptr %2, null
  %i.c = icmp ne i64 %1, 0
  %or.cond.i = and i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.504) #58
  unreachable

bb.c:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = icmp eq i64 %1, 2305843009213693951
  br i1 %i.f, label %bb.g, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, !prof !9356

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i: ; preds = %bb.f
  %i.g = add nuw nsw i64 %.idx.i, 4
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #59 ; 2 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !21373
  store i64 %1, ptr %i.a, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.c ] ; 4 uses
  switch i64 %1, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.j = load i32, ptr %2, align 4, !tbaa !21375
  store i32 %i.j, ptr %i.i, align 4, !tbaa !21375
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.k = call ptr @wmemcpy(ptr noundef nonnull %i.i, ptr noundef %2, i64 noundef %1) #49 ; 0 uses
  %.pre7.i.i = load ptr, ptr %3, align 8, !tbaa !21373
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.h, %bb.i
  %i.l = phi ptr [ %.pre7.i.i, %bb.i ], [ %i.i, %bb.h ], [ %i.i, %._crit_edge.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.m, align 8, !tbaa !21372
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i
  store i32 0, ptr %i.n, align 4, !tbaa !21375
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.o = load ptr, ptr %3, align 8, !tbaa !21373  ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !9325
  %i.r = shl i64 %i.q, 2
  %i.s = add i64 %i.r, 4
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #60
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2EPKwmRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerIPKwvE7convertB5cxx11ES2_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.141", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i2, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21376
  %i.b = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #62 ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.b, 2               ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %i.b, 2305843009213693951
  br i1 %i.e, label %bb.f, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, !prof !9356

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.f = add nuw nsw i64 %.idx.i, 4
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !21373
  store i64 %i.b, ptr %i.a, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, %bb.b
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 4 uses
  switch i64 %i.b, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.i = load i32, ptr %1, align 4, !tbaa !21375
  store i32 %i.i, ptr %i.h, align 4, !tbaa !21375
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.j = call ptr @wmemcpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.b) #49 ; 0 uses
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !21373
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.k = phi ptr [ %.pre7.i.i, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %._crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !21372
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  store i32 0, ptr %i.m, align 4, !tbaa !21375
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.n = load ptr, ptr %2, align 8, !tbaa !21373  ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !9325
  %i.q = shl i64 %i.p, 2
  %i.r = add i64 %i.q, 4
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #60
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.i

._crit_edge.i.i2:                                 ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @.str.57, i64 13, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.t, align 8, !tbaa !9324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.u, align 1, !tbaa !9325
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i2, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerIPwvE7convertB5cxx11ES1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string.141", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i2, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !21376
  %i.b = call noundef i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1) #62 ; 8 uses
  %.idx.i = shl nuw nsw i64 %i.b, 2               ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.502) #58
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = icmp eq i64 %i.b, 2305843009213693951
  br i1 %i.e, label %bb.f, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, !prof !9356

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #58
  unreachable

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.f = add nuw nsw i64 %.idx.i, 4
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 2 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !21373
  store i64 %i.b, ptr %i.a, align 8, !tbaa !9325
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i, %bb.b
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 4 uses
  switch i64 %i.b, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.i = load i32, ptr %1, align 4, !tbaa !21375
  store i32 %i.i, ptr %i.h, align 4, !tbaa !21375
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.j = call ptr @wmemcpy(ptr noundef nonnull %i.h, ptr noundef nonnull %1, i64 noundef %i.b) #49 ; 0 uses
  %.pre7.i.i = load ptr, ptr %2, align 8, !tbaa !21373
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.k = phi ptr [ %.pre7.i.i, %bb.h ], [ %i.h, %bb.g ], [ %i.h, %._crit_edge.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.b, ptr %i.l, align 8, !tbaa !21372
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  store i32 0, ptr %i.m, align 4, !tbaa !21375
  call void @_ZN5Catch11StringMakerINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEvE7convertERKS6_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.n = load ptr, ptr %2, align 8, !tbaa !21373  ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit
  %i.p = load i64, ptr %i.a, align 8, !tbaa !9325
  %i.q = shl i64 %i.p, 2
  %i.r = add i64 %i.q, 4
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #60
  br label %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit

_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEC2IS3_EEPKwRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %bb.i

._crit_edge.i.i2:                                 ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !9321
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.s, ptr noundef nonnull align 1 dereferenceable(13) @.str.57, i64 13, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.t, align 8, !tbaa !9324
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 0, ptr %i.u, align 1, !tbaa !9325
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i2, %_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerISt4bytevE7convertB5cxx11ES1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i8 %1 to i64
  tail call void @_ZN5Catch11StringMakerIyvE7convertB5cxx11Ey(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerIivE7convertB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  tail call void @_ZN5Catch11StringMakerIxvE7convertB5cxx11Ex(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerIlvE7convertB5cxx11El(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN5Catch11StringMakerIxvE7convertB5cxx11Ex(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5Catch11StringMakerIxvE7convertB5cxx11Ex(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = tail call { i64, ptr } @_ZN5Catch13StringStreams3addB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(425) %i.c) ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 1        ; 17 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %1) #49 ; 0 uses
  %i.g = icmp sgt i64 %1, 255
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.58, i64 noundef 4) #49 ; 0 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !3603
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %i.e, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19193
  %i.o = and i32 %i.n, -75
  %i.p = or disjoint i32 %i.o, 8
  store i32 %i.p, ptr %i.m, align 8, !tbaa !19194
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %1) #49 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !9325
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !3603
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.e, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !9346
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.a, i64 noundef 1) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit

bb.d:                                             ; preds = %bb.b
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext 41) #49 ; 0 uses
  br label %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit

_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIcEERS0_RKT_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !70428)
  call void @llvm.experimental.noalias.scope.decl(metadata !70429)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !9321, !alias.scope !70430
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !9324, !alias.scope !70430
  store i8 0, ptr %i.z, align 8, !tbaa !9325, !alias.scope !70430
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !9334, !noalias !70431 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !70431 ; 2 uses
  %i.af = icmp ugt ptr %i.ac, %i.ae
  %.08.i.i.i.i = select i1 %i.af, ptr %i.ac, ptr %i.ae ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not4.i.i.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9335, !noalias !70431 ; 2 uses
  %i.ai = ptrtoint ptr %.08.i.i.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ah, i64 noundef %i.ak) ; 0 uses
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  br label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit

_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !9321
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8, !tbaa !9324
  store i8 0, ptr %i.an, align 8, !tbaa !9325
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.aq = load ptr, ptr %2, align 8, !tbaa !9326  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.an
  br i1 %i.ar, label %_ZN5Catch20ReusableStringStreamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit
  %i.as = load i64, ptr %i.an, align 8, !tbaa !9325
  %i.at = add i64 %i.as, 1
end_hunk_0
