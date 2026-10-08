Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/jemalloc_cpp?download=true
inline.NumInlined: 56
inline.NumDeleted: 14
begin_hunk_0_@_ZnwmRKSt9nothrow_t:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !28
  br label %_ZL7newImplILb1EEPvm.exit

_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit:  ; preds = %bb.e
  %i.am = tail call fastcc noundef ptr @_ZL15fallbackNewImplILb1EEPvm(i64 noundef %0), !callees !14, !inline_history !0
  br label %_ZL7newImplILb1EEPvm.exit

_ZL7newImplILb1EEPvm.exit:                        ; preds = %bb.b, %.noexc5, %.noexc6, %_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit, %bb.c
  %.2.i = phi ptr [ %i.c, %bb.b ], [ %i.p, %bb.c ], [ %i.z, %.noexc5 ], [ %i.ag, %.noexc6 ], [ %i.am, %_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit ]
  ret ptr %.2.i
}

; Function Attrs: mustprogress nobuiltin nounwind allocsize(0) uwtable
define dso_local noalias noundef ptr @_ZnamRKSt9nothrow_t(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.b = icmp ugt i64 %0, 4096
  br i1 %i.b, label %bb.b, label %.noexc3, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef ptr @_ZL15fallbackNewImplILb1EEPvm(i64 noundef %0), !callees !14, !inline_history !0
  br label %_ZL7newImplILb1EEPvm.exit

.noexc3:                                          ; preds = %bb.a
  %i.d = add nuw nsw i64 %0, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 928 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = add i64 %i.l, %i.j                       ; 3 uses
  %.not.i = icmp ult i64 %i.o, %i.n
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !18

bb.c:                                             ; preds = %.noexc3
  %i.p = tail call fastcc noundef ptr @_ZL15fallbackNewImplILb1EEPvm(i64 noundef %0), !callees !14, !inline_history !0
  br label %_ZL7newImplILb1EEPvm.exit

bb.d:                                             ; preds = %.noexc3
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.r = zext i8 %i.g to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25   ; 5 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %i.x = trunc i64 %i.u to i16
  %.not.i12 = icmp eq i16 %i.w, %i.x
  br i1 %.not.i12, label %bb.e, label %.noexc5, !prof !13

.noexc5:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !27
  store ptr %i.y, ptr %i.s, align 8, !tbaa !25
  store i64 %i.o, ptr %i.k, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !28
  br label %_ZL7newImplILb1EEPvm.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !29
  %.not21.i = icmp eq i16 %i.ae, %i.w
  br i1 %.not21.i, label %_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit, label %.noexc6, !prof !13

.noexc6:                                          ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !27
  store ptr %i.af, ptr %i.s, align 8, !tbaa !25
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = trunc i64 %i.ah to i16
  store i16 %i.ai, ptr %i.v, align 8, !tbaa !26
  store i64 %i.o, ptr %i.k, align 8, !tbaa !17
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !28
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !28
  br label %_ZL7newImplILb1EEPvm.exit

_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit:  ; preds = %bb.e
  %i.am = tail call fastcc noundef ptr @_ZL15fallbackNewImplILb1EEPvm(i64 noundef %0), !callees !14, !inline_history !0
  br label %_ZL7newImplILb1EEPvm.exit

_ZL7newImplILb1EEPvm.exit:                        ; preds = %bb.b, %.noexc5, %.noexc6, %_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit, %bb.c
  %.2.i = phi ptr [ %i.c, %bb.b ], [ %i.p, %bb.c ], [ %i.z, %.noexc5 ], [ %i.ag, %.noexc6 ], [ %i.am, %_ZL20cache_bin_alloc_implP11cache_bin_sPbb.exit ]
  ret ptr %.2.i
}

; Function Attrs: mustprogress nobuiltin allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @aligned_alloc(i64 noundef %1, i64 noundef %0) #15 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 %1) ]
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext false)
  br label %_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit

_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nobuiltin allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @_ZnamSt11align_val_t(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @aligned_alloc(i64 noundef %1, i64 noundef %0) #15 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 %1) ]
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext false)
  br label %_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit

_ZL14alignedNewImplILb0EEPvmSt11align_val_t.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nobuiltin nounwind allocsize(0) uwtable
define dso_local noalias noundef ptr @_ZnwmSt11align_val_tRKSt9nothrow_t(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias ptr @aligned_alloc(i64 noundef %1, i64 noundef %0) #15 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 %1) ]
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = invoke fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext true)
          to label %_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nobuiltin nounwind allocsize(0) uwtable
define dso_local noalias noundef ptr @_ZnamSt11align_val_tRKSt9nothrow_t(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias ptr @aligned_alloc(i64 noundef %1, i64 noundef %0) #15 ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.a, i64 %1) ]
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = invoke fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext true)
          to label %_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable

_ZL14alignedNewImplILb1EEPvmSt11align_val_t.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPv(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !38
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPv(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !41
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPvRKSt9nothrow_t(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !44
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPvRKSt9nothrow_t(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !47
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL15sizedDeleteImplPvm.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = icmp ugt i64 %1, 4096
  br i1 %i.c, label %bb.d, label %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, !prof !13

_ZL28sz_size2index_usize_fastpathmPjPm.exit.i:    ; preds = %bb.b
  %i.d = add nuw nsw i64 %1, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 944 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = add i64 %i.l, %i.j                       ; 2 uses
  %.not26.i.i = icmp ult i64 %i.o, %i.n
  br i1 %.not26.i.i, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 968
  %i.q = zext i8 %i.g to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.v = load i16, ptr %i.u, align 2, !tbaa !35
  %i.w = trunc i64 %i.t to i16
  %i.x = icmp eq i16 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZL13free_fastpathPvmb.exit.i, !prof !13

_ZL13free_fastpathPvmb.exit.i:                    ; preds = %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !25
  store ptr %0, ptr %i.y, align 8, !tbaa !27
  store i64 %i.o, ptr %i.k, align 8, !tbaa !17
  br label %_ZL15sizedDeleteImplPvm.exit

bb.d:                                             ; preds = %bb.b, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, %bb.c
  invoke void @je_sdallocx_default(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0)
          to label %_ZL15sizedDeleteImplPvm.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #16
  unreachable

_ZL15sizedDeleteImplPvm.exit:                     ; preds = %bb.d, %_ZL13free_fastpathPvmb.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL15sizedDeleteImplPvm.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.c = icmp ugt i64 %1, 4096
  br i1 %i.c, label %bb.d, label %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, !prof !13

_ZL28sz_size2index_usize_fastpathmPjPm.exit.i:    ; preds = %bb.b
  %i.d = add nuw nsw i64 %1, 7
  %i.e = lshr i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !15    ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 944 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17
  %i.o = add i64 %i.l, %i.j                       ; 2 uses
  %.not26.i.i = icmp ult i64 %i.o, %i.n
  br i1 %.not26.i.i, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 968
  %i.q = zext i8 %i.g to i64
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 18
  %i.v = load i16, ptr %i.u, align 2, !tbaa !35
  %i.w = trunc i64 %i.t to i16
  %i.x = icmp eq i16 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZL13free_fastpathPvmb.exit.i, !prof !13

_ZL13free_fastpathPvmb.exit.i:                    ; preds = %bb.c
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  store ptr %i.y, ptr %i.r, align 8, !tbaa !25
  store ptr %0, ptr %i.y, align 8, !tbaa !27
  store i64 %i.o, ptr %i.k, align 8, !tbaa !17
  br label %_ZL15sizedDeleteImplPvm.exit

bb.d:                                             ; preds = %bb.b, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, %bb.c
  invoke void @je_sdallocx_default(ptr noundef nonnull %0, i64 noundef %1, i32 noundef 0)
          to label %_ZL15sizedDeleteImplPvm.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #16
  unreachable

_ZL15sizedDeleteImplPvm.exit:                     ; preds = %bb.d, %_ZL13free_fastpathPvmb.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPvSt11align_val_t(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !50
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPvSt11align_val_t(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !53
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPvSt11align_val_tRKSt9nothrow_t(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !56
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPvSt11align_val_tRKSt9nothrow_t(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  %i.c = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.d = lshr i64 %i.c, 30
  %i.e = and i64 %i.d, 15
  %i.f = and i64 %i.c, -1073741824
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !32
  %.not.i.i.not = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.not, label %.noexc, label %.noexc.thread, !prof !18

.noexc:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = lshr i64 %i.c, 12
  %i.l = and i64 %i.k, 262143
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = load atomic ptr, ptr %i.m monotonic, align 8, !noalias !59
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %.noexc2, label %.noexc.thread, !prof !34

.noexc2:                                          ; preds = %.noexc
  %i.q = lshr i64 %i.o, 48                        ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 944 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.w = load i64, ptr %i.v, align 8, !tbaa !17
  %i.x = add i64 %i.u, %i.s                       ; 2 uses
  %.not26.i = icmp ult i64 %i.x, %i.w
  br i1 %.not26.i, label %.noexc3, label %.noexc.thread, !prof !18

.noexc3:                                          ; preds = %.noexc2
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.q ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !35
  %i.ae = trunc i64 %i.ab to i16
  %i.af = icmp eq i16 %i.ad, %i.ae
  br i1 %i.af, label %.noexc.thread, label %bb.b, !prof !13

bb.b:                                             ; preds = %.noexc3
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !25
  store ptr %0, ptr %i.ag, align 8, !tbaa !27
  store i64 %i.x, ptr %i.t, align 8, !tbaa !17
  br label %_ZL12je_free_implPv.exit

.noexc.thread:                                    ; preds = %bb.a, %.noexc, %.noexc2, %.noexc3
  invoke void @je_free_default(ptr noundef %0)
          to label %_ZL12je_free_implPv.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc.thread
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZL12je_free_implPv.exit:                         ; preds = %bb.b, %.noexc.thread
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdlPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 2147483647
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i64 %2, 32                          ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32
  %cttz.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.d, i1 true)
  %.not.i = icmp eq i64 %i.c, 0
  %i.e = or disjoint i32 %cttz.i, 32
  %i.f = select i1 %.not.i, i32 31, i32 %i.e
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %2 to i32
  %cttz6.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true) ; 2 uses
  %.not.i2 = icmp eq i32 %cttz6.i, 0
  br i1 %.not.i2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.i = icmp ugt i64 %1, 4096
  br i1 %i.i, label %.thread, label %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, !prof !13

_ZL28sz_size2index_usize_fastpathmPjPm.exit.i:    ; preds = %bb.f
  %i.j = add nuw nsw i64 %1, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = add i64 %i.r, %i.p                       ; 2 uses
  %.not26.i.i = icmp ult i64 %i.u, %i.t
  br i1 %.not26.i.i, label %bb.g, label %.thread, !prof !18

bb.g:                                             ; preds = %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 968
  %i.w = zext i8 %i.m to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !35
  %i.ac = trunc i64 %i.z to i16
  %i.ad = icmp eq i16 %i.ab, %i.ac
  br i1 %i.ad, label %.thread, label %_ZL13free_fastpathPvmb.exit.i, !prof !13

_ZL13free_fastpathPvmb.exit.i:                    ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !25
  store ptr %0, ptr %i.ae, align 8, !tbaa !27
  store i64 %i.u, ptr %i.q, align 8, !tbaa !17
  br label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit

.thread:                                          ; preds = %bb.g, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, %bb.f, %bb.c, %bb.d, %bb.e
  %i.af = phi i32 [ %cttz6.i, %bb.e ], [ -1, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.f ], [ 0, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i ], [ 0, %bb.g ]
  invoke void @je_sdallocx_default(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.af)
          to label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit unwind label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable

_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit: ; preds = %.thread, %_ZL13free_fastpathPvmb.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nobuiltin nounwind uwtable
define dso_local void @_ZdaPvmSt11align_val_t(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 2147483647
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %.thread, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = lshr i64 %2, 32                          ; 2 uses
  %i.d = trunc nuw i64 %i.c to i32
  %cttz.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.d, i1 true)
  %.not.i = icmp eq i64 %i.c, 0
  %i.e = or disjoint i32 %cttz.i, 32
  %i.f = select i1 %.not.i, i32 31, i32 %i.e
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.g = trunc nuw nsw i64 %2 to i32
  %cttz6.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.g, i1 true) ; 2 uses
  %.not.i2 = icmp eq i32 %cttz6.i, 0
  br i1 %.not.i2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @je_tsd_tls) ; 3 uses
  %i.i = icmp ugt i64 %1, 4096
  br i1 %i.i, label %.thread, label %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, !prof !13

_ZL28sz_size2index_usize_fastpathmPjPm.exit.i:    ; preds = %bb.f
  %i.j = add nuw nsw i64 %1, 7
  %i.k = lshr i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 944 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 952
  %i.t = load i64, ptr %i.s, align 8, !tbaa !17
  %i.u = add i64 %i.r, %i.p                       ; 2 uses
  %.not26.i.i = icmp ult i64 %i.u, %i.t
  br i1 %.not26.i.i, label %bb.g, label %.thread, !prof !18

bb.g:                                             ; preds = %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 968
  %i.w = zext i8 %i.m to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 18
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !35
  %i.ac = trunc i64 %i.z to i16
  %i.ad = icmp eq i16 %i.ab, %i.ac
  br i1 %i.ad, label %.thread, label %_ZL13free_fastpathPvmb.exit.i, !prof !13

_ZL13free_fastpathPvmb.exit.i:                    ; preds = %bb.g
  %i.ae = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !25
  store ptr %0, ptr %i.ae, align 8, !tbaa !27
  store i64 %i.u, ptr %i.q, align 8, !tbaa !17
  br label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit

.thread:                                          ; preds = %bb.g, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i, %bb.f, %bb.c, %bb.d, %bb.e
  %i.af = phi i32 [ %cttz6.i, %bb.e ], [ -1, %bb.c ], [ %i.f, %bb.d ], [ 0, %bb.f ], [ 0, %_ZL28sz_size2index_usize_fastpathmPjPm.exit.i ], [ 0, %bb.g ]
  invoke void @je_sdallocx_default(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %i.af)
          to label %_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit unwind label %bb.h

bb.h:                                             ; preds = %.thread
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #16
  unreachable

_ZL22alignedSizedDeleteImplPvmSt11align_val_t.exit: ; preds = %.thread, %_ZL13free_fastpathPvmb.exit.i, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #17 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

declare void @je_free_default(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare void @je_sdallocx_default(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noundef ptr @_ZL15fallbackNewImplILb0EEPvm(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @je_malloc_default(i64 noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.0
}

declare ptr @je_malloc_default(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define internal fastcc noalias noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext %1) unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @je_opt_experimental_infallible_new, align 1, !tbaa !64, !range !65, !noundef !66
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %0, 1073741823
  %i.d = select i1 %i.c, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ...) @je_safety_check_fail(ptr noundef nonnull @.str.7, i64 noundef %0, ptr noundef nonnull %i.d)
  br label %.thread22

.preheader:                                       ; preds = %bb.a, %bb.g
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL9handleOOMmbE3mtx) #17, !inline_history !60 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #18, !inline_history !61
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.preheader
  %i.f = tail call noundef ptr @_ZSt15set_new_handlerPFvvE(ptr noundef null) #17 ; 3 uses
  %i.g = tail call noundef ptr @_ZSt15set_new_handlerPFvvE(ptr noundef %i.f) #17 ; 0 uses
  %i.h = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL9handleOOMmbE3mtx) #17, !inline_history !62 ; 0 uses
  %i.i = icmp eq ptr %i.f, null
  br i1 %i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void %i.f()
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 1
  %i.l = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #17
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = extractvalue { ptr, i32 } %i.j, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #17 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.p = tail call noalias ptr @malloc(i64 noundef %0) #19 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader, label %.thread22

bb.h:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j

.loopexit:                                        ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %bb.f
  br i1 %1, label %.thread22, label %bb.i

bb.i:                                             ; preds = %.loopexit
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

.thread22:                                        ; preds = %bb.g, %.loopexit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.loopexit ], [ %i.p, %bb.g ]
  ret ptr %.0
}

declare void @je_safety_check_fail(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZSt15set_new_handlerPFvvE(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #10

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define internal fastcc noundef ptr @_ZL15fallbackNewImplILb1EEPvm(i64 noundef %0) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke ptr @je_malloc_default(i64 noundef %0)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.b = invoke fastcc noundef ptr @_ZL9handleOOMmb(i64 noundef %0, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

attributes #0 = { mustprogress nobuiltin allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nobuiltin nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nobuiltin nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind allocsize(1) }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{ptr @_ZL15fallbackNewImplILb0EEPvm, ptr @_ZL15fallbackNewImplILb1EEPvm}
!15 = !{!9, !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"any p2 pointer", !19, i64 0}
!21 = !{!"_ZTS17cache_bin_stats_s", !16, i64 0}
!22 = !{!"short", !9, i64 0}
!23 = !{!"_ZTS16cache_bin_info_s", !22, i64 0}
!24 = !{!"_ZTS11cache_bin_s", !20, i64 0, !21, i64 8, !22, i64 16, !22, i64 18, !22, i64 20, !23, i64 22}
!25 = !{!24, !20, i64 0}
!26 = !{!24, !22, i64 16}
!27 = !{!19, !19, i64 0}
!28 = !{!24, !16, i64 8}
!29 = !{!24, !22, i64 20}
!30 = !{!"p1 _ZTS16rtree_leaf_elm_s", !19, i64 0}
!31 = !{!"_ZTS21rtree_ctx_cache_elm_s", !16, i64 0, !30, i64 8}
!32 = !{!31, !16, i64 0}
!33 = !{!31, !30, i64 8}
!34 = !{!"branch_weights", i32 2146410443, i32 1073205}
!35 = !{!24, !22, i64 18}
!36 = distinct !{!36, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!37 = distinct !{!37, !36, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!38 = !{!37}
!39 = distinct !{!39, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!40 = distinct !{!40, !39, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!41 = !{!40}
!42 = distinct !{!42, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!43 = distinct !{!43, !42, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!44 = !{!43}
!45 = distinct !{!45, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!46 = distinct !{!46, !45, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!47 = !{!46}
!48 = distinct !{!48, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!49 = distinct !{!49, !48, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!50 = !{!49}
!51 = distinct !{!51, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!52 = distinct !{!52, !51, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!53 = !{!52}
!54 = distinct !{!54, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!55 = distinct !{!55, !54, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!56 = !{!55}
!57 = distinct !{!57, i1 false, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb"}
!58 = distinct !{!58, !57, !"_ZL19rtree_leaf_elm_readP6tsdn_sP7rtree_sP16rtree_leaf_elm_sb: argument 0"}
!59 = !{!58}
!60 = distinct !{null, null, null}
!61 = distinct !{null, null}
!62 = distinct !{null, null, null}
!63 = !{!"bool", !9, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
end_hunk_0
