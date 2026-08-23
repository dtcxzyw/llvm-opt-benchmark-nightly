Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmState?download=true
inline.NumInlined: 3327
inline.NumDeleted: 1378
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.66) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.d, ptr %i.a, align 8, !tbaa !162
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !132
  %i.g = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.g, ptr %i.b, align 8, !tbaa !40
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !40
  store i8 %i.i, ptr %i.h, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !38
  %i.l = load ptr, ptr %0, align 8, !tbaa !132
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm7EED2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !132  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !132  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !132 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.ak = load ptr, ptr %0, align 8, !tbaa !132   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.an = load i64, ptr %i.al, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  tail call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN7cmState22CacheEntryTypeToStringB5cxx11EN12cmStateEnums14CacheEntryTypeE(i32 noundef %0) local_unnamed_addr #7 align 2 {
bb.a:
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %0, i32 6)
  %i.a = zext nneg i32 %spec.store.select to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 %i.a
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN7cmState22StringToCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 {
_ZN7cmState22StringToCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN12cmStateEnums14CacheEntryTypeE.exit:
  %i.a = tail call noundef ptr @_ZSt9__find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops16_Iter_equals_valIS6_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef nonnull @_ZL17cmCacheEntryTypesB5cxx11, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 224), ptr nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not.i.not = icmp eq ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 224)
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = sub i64 %i.b, ptrtoint (ptr @_ZL17cmCacheEntryTypesB5cxx11 to i64)
  %i.d = lshr exact i64 %i.c, 5
  %i.e = trunc i64 %i.d to i32
  %.0 = select i1 %.not.i.not, i32 3, i32 %i.e
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cmState22StringToCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN12cmStateEnums14CacheEntryTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZSt9__find_ifIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9__gnu_cxx5__ops16_Iter_equals_valIS6_EEET_SC_SC_T0_St26random_access_iterator_tag(ptr noundef nonnull @_ZL17cmCacheEntryTypesB5cxx11, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 224), ptr nonnull align 8 dereferenceable(32) %0) ; 2 uses
  %.not = icmp ne ptr %i.a, getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 224) ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = sub i64 %i.b, ptrtoint (ptr @_ZL17cmCacheEntryTypesB5cxx11 to i64)
  %i.d = lshr exact i64 %i.c, 5
  %i.e = trunc i64 %i.d to i32
  store i32 %i.e, ptr %1, align 4, !tbaa !163
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38
  %.fr41.i.i.i.i = freeze i64 %i.b                ; 21 uses
  %i.c = icmp eq i64 %.fr41.i.i.i.i, 0
  br i1 %i.c, label %.lr.ph.i.split.us.i.i.i.i.preheader, label %.lr.ph.i.split.split.i.i.i.i.preheader

.lr.ph.i.split.us.i.i.i.i.preheader:              ; preds = %bb.a
  %.029.val46.i.us.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 8), align 8, !tbaa !38
  %i.d = icmp eq i64 %.029.val46.i.us.i.i.i.i, 0
  %.val43.i.us.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 40), align 8
  %i.e = icmp eq i64 %.val43.i.us.i.i.i.i, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  %.val40.i.us.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 72), align 8
  %i.f = icmp eq i64 %.val40.i.us.i.i.i.i, 0
  %or.cond45 = select i1 %or.cond, i1 true, i1 %i.f
  %.val37.i.us.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 104), align 8
  %i.g = icmp eq i64 %.val37.i.us.i.i.i.i, 0
  %or.cond46 = select i1 %or.cond45, i1 true, i1 %i.g
  %.029.val34.i.i.i.i.i26 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 136), align 8
  %i.h = icmp eq i64 %.fr41.i.i.i.i, %.029.val34.i.i.i.i.i26
  %or.cond47 = select i1 %or.cond46, i1 true, i1 %i.h
  %.1.val32.i.i.i.i.i37 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 168), align 8
  %i.i = icmp eq i64 %.fr41.i.i.i.i, %.1.val32.i.i.i.i.i37
  %or.cond48 = select i1 %or.cond47, i1 true, i1 %i.i
  %.2.val30.i.i.i.i.i41 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 200), align 8
  %i.j = icmp eq i64 %.fr41.i.i.i.i, %.2.val30.i.i.i.i.i41
  %or.cond49 = select i1 %or.cond48, i1 true, i1 %i.j
  br i1 %or.cond49, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i"

.lr.ph.i.split.split.i.i.i.i.preheader:           ; preds = %bb.a
  %.pre.i.i.i.i = load ptr, ptr %0, align 8       ; 4 uses
  %.029.val46.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 8), align 8, !tbaa !38
  %1 = icmp eq i64 %.fr41.i.i.i.i, %.029.val46.i.i.i.i.i
  br i1 %1, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.split.split.i.i.i.i.preheader
  %.029.val45.i.i.i.i.i = load ptr, ptr @_ZL17cmCacheEntryTypesB5cxx11, align 8
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre.i.i.i.i, ptr readonly %.029.val45.i.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.k = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.i.i.i.i": ; preds = %.lr.ph.i.split.split.i.i.i.i.preheader
  %.val43.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 40), align 8, !tbaa !38
  %i.l = icmp eq i64 %.fr41.i.i.i.i, %.val43.i.i.i.i.i
  br i1 %i.l, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.i.i.i.i.i"
  %.val43.i3.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 40), align 8, !tbaa !38
  %i.m = icmp eq i64 %.fr41.i.i.i.i, %.val43.i3.i.i.i.i
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.thread.i.i.i.i"
  %.val42.i46.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 32), align 8
  %bcmp.i.i.i47.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre.i.i.i.i, ptr readonly %.val42.i46.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.n = icmp eq i32 %bcmp.i.i.i47.i.i.i.i.i, 0
  br i1 %i.n, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.thread59.i.i.i.i.i"
  %.val40.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 72), align 8, !tbaa !38
  %i.o = icmp eq i64 %.fr41.i.i.i.i, %.val40.i.i.i.i.i
  br i1 %i.o, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i"
  %.val39.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 64), align 8
  %bcmp.i.i.i49.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre.i.i.i.i, ptr readonly %.val39.i.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.p = icmp eq i32 %bcmp.i.i.i49.i.i.i.i.i, 0
  br i1 %i.p, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.thread.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.thread60.i.i.i.i.i"
  %.val37.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 104), align 8, !tbaa !38
  %i.q = icmp eq i64 %.fr41.i.i.i.i, %.val37.i.i.i.i.i
  br i1 %i.q, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i", label %._crit_edge.loopexit.i.i.i.i.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.thread.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.i.i.i.i.i"
  %.val37.i8.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 104), align 8, !tbaa !38
  %i.r = icmp eq i64 %.fr41.i.i.i.i, %.val37.i8.i.i.i.i
  br i1 %i.r, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i", label %._crit_edge.loopexit.i.i.i.i.i

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.thread.i.i.i.i"
  %.val36.i912.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 96), align 8
  %bcmp.i.i.i51.i.i.i.i.i = tail call i32 @bcmp(ptr %.pre.i.i.i.i, ptr readonly %.val36.i912.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.s = icmp eq i32 %bcmp.i.i.i51.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %._crit_edge.loopexit.i.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.thread61.i.thread.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i"
  %.029.val34.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 136), align 8, !tbaa !38
  %i.t = icmp eq i64 %.fr41.i.i.i.i, %.029.val34.i.i.i.i.i
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.i.i.i.i.i": ; preds = %._crit_edge.loopexit.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 128), align 8
  %i.u = load ptr, ptr %0, align 8, !tbaa !132
  %bcmp.i.i.i53.i.i.i.i.i = tail call i32 @bcmp(ptr %i.u, ptr readonly %.029.val.i.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.v = icmp eq i32 %bcmp.i.i.i53.i.i.i.i.i, 0
  br i1 %i.v, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i": ; preds = %._crit_edge.loopexit.i.i.i.i.i
  %.1.val32.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 168), align 8, !tbaa !38
  %i.w = icmp eq i64 %.fr41.i.i.i.i, %.1.val32.i.i.i.i.i
  br i1 %i.w, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i.thread": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.i.i.i.i.i"
  %.1.val32.i.i.i.i.i30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 168), align 8, !tbaa !38
  %i.x = icmp eq i64 %.fr41.i.i.i.i, %.1.val32.i.i.i.i.i30
  br i1 %i.x, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i.thread"
  %.1.val.i.i.i.i.i3134 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 160), align 8
  %i.y = load ptr, ptr %0, align 8, !tbaa !132
  %bcmp.i.i.i55.i.i.i.i.i = tail call i32 @bcmp(ptr %i.y, ptr readonly %.1.val.i.i.i.i.i3134, i64 %.fr41.i.i.i.i)
  %i.z = icmp eq i32 %bcmp.i.i.i55.i.i.i.i.i, 0
  br i1 %i.z, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i.thread", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.thread63.i.i.i.i.i"
  %.2.val30.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 200), align 8, !tbaa !38
  %i.aa = icmp eq i64 %.fr41.i.i.i.i, %.2.val30.i.i.i.i.i
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i"
  %.2.val.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL17cmCacheEntryTypesB5cxx11, i64 192), align 8
  %i.ab = load ptr, ptr %0, align 8, !tbaa !132
  %bcmp.i.i.i57.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ab, ptr readonly %.2.val.i.i.i.i.i, i64 %.fr41.i.i.i.i)
  %i.ac = icmp eq i32 %bcmp.i.i.i57.i.i.i.i.i, 0
  br i1 %i.ac, label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i": ; preds = %.lr.ph.i.split.us.i.i.i.i.preheader, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.thread64.i.i.i.i.i"
  br label %"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit"

"_ZSt6any_ofIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN7cmState16IsCacheEntryTypeERS6_E3$_0EbT_SB_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.i.i.i.i.i", %.lr.ph.i.split.us.i.i.i.i.preheader, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i"
  %i.ad = phi i1 [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit56.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit50.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit48.i.i.i.i.i" ], [ false, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit58.thread65.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit54.i.i.i.i.i" ], [ true, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN7cmState16IsCacheEntryTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclIPS9_EEbT_.exit52.i.i.i.i.i" ], [ true, %.lr.ph.i.split.us.i.i.i.i.preheader ]
  ret i1 %i.ad
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cmState9LoadCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRSt3setIS5_St4lessIS5_ESaIS5_EESD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = tail call noundef zeroext i1 @_ZN14cmCacheManager9LoadCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRSt3setIS5_St4lessIS5_ESaIS5_EESD_(ptr noundef nonnull align 8 dereferenceable(60) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %4)
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN14cmCacheManager9LoadCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbRSt3setIS5_St4lessIS5_ESaIS5_EESD_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cmState9SaveCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11cmMessenger(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = tail call noundef zeroext i1 @_ZN14cmCacheManager9SaveCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11cmMessenger(ptr noundef nonnull align 8 dereferenceable(60) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN14cmCacheManager9SaveCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11cmMessenger(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7cmState11DeleteCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = tail call noundef zeroext i1 @_ZN14cmCacheManager11DeleteCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(60) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN14cmCacheManager11DeleteCacheERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK7cmState13IsCacheLoadedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i8, ptr %i.c, align 8, !tbaa !165, !range !133, !noundef !134
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7cmState17GetCacheEntryKeysB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  tail call void @_ZNK14cmCacheManager17GetCacheEntryKeysB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK14cmCacheManager17GetCacheEntryKeysB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(60) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !166
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.e, %i.f
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.09.013 = phi ptr [ %i.e, %.lr.ph ], [ %i.ab, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !150  ; 8 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !153
  %.not.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.09.013, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.p, ptr %i.a, align 8, !tbaa !162
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.e
  %i.r = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.r, ptr %i.k, align 8, !tbaa !132
  %i.s = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.s, ptr %i.m, align 8, !tbaa !40
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.e
  %i.t = phi ptr [ %i.r, %.noexc ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %i.p, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !40
  store i8 %i.u, ptr %i.t, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !38
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !150
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.h
  %i.ab = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.09.013) #34 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.f
  br i1 %.not, label %._crit_edge, label %bb.d

bb.i:                                             ; preds = %bb.h, %.noexc.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.i, %bb.c ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK7cmState18GetCacheEntryValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = tail call noundef ptr @_ZNK14cmCacheManager13GetCacheEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(60) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK7cmState22GetSafeCacheEntryValueERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(753) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = tail call noundef ptr @_ZNK14cmCacheManager13GetCacheEntryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(60) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !35
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !132  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !38   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.h, ptr %i.a, align 8, !tbaa !162
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !132
  %i.k = load i64, ptr %i.a, align 8, !tbaa !162
  store i64 %i.k, ptr %i.e, align 8, !tbaa !40
  br label %._crit_edge.i.i
end_hunk_0
