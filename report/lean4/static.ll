inline.NumInlined: 1572
inline.NumDeleted: 309
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 39
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_Z14_mi_os_free_exPvmb10mi_memid_s:bb.a
  %i.p = tail call i32 @munmap(ptr noundef nonnull %.011.i, i64 noundef 1073741824) #55
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %_Z13_mi_prim_freePvm.exit.i.i, label %_Z13_mi_prim_freePvm.exit.thread.i.i

_Z13_mi_prim_freePvm.exit.i.i:                    ; preds = %.lr.ph.i
  %i.r = tail call ptr @__errno_location() #59
  %i.s = load i32, ptr %i.r, align 4, !tbaa !71   ; 3 uses
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_Z13_mi_prim_freePvm.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_Z13_mi_prim_freePvm.exit.i.i
  tail call void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.167, i32 noundef %i.s, i32 noundef %i.s, i64 noundef 1073741824, ptr noundef nonnull %.011.i)
  br label %_Z13_mi_prim_freePvm.exit.thread.i.i

_Z13_mi_prim_freePvm.exit.thread.i.i:             ; preds = %bb.c, %_Z13_mi_prim_freePvm.exit.i.i, %.lr.ph.i
  %i.t = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 72), i64 1073741824 monotonic, align 8
  %i.u = add nsw i64 %i.t, -1073741824            ; 3 uses
  %i.v = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64) monotonic, align 64 ; 2 uses
  %.old3.i.i.i.i.i = icmp slt i64 %i.v, %i.u
  br i1 %.old3.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_Z13_mi_prim_freePvm.exit.thread.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.y, %.preheader.i.i.i.i.i ], [ %i.v, %_Z13_mi_prim_freePvm.exit.thread.i.i ]
  %i.w = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 64), i64 %.0.i.i.i.i.i, i64 %i.u release monotonic, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  %i.z = icmp sge i64 %i.y, %i.u
  %or.cond.not.i.i.i.i.i = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond.not.i.i.i.i.i, label %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !147

_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i:   ; preds = %.preheader.i.i.i.i.i, %_Z13_mi_prim_freePvm.exit.thread.i.i
  %i.aa = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 48), i64 1073741824 monotonic, align 8
  %i.ab = add nsw i64 %i.aa, -1073741824          ; 3 uses
  %i.ac = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40) monotonic, align 8 ; 2 uses
  %.old3.i.i.i16.i.i = icmp slt i64 %i.ac, %i.ab
  br i1 %.old3.i.i.i16.i.i, label %.preheader.i.i.i18.i.i, label %_ZL15mi_os_prim_freePvmm.exit.i

.preheader.i.i.i18.i.i:                           ; preds = %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i, %.preheader.i.i.i18.i.i
  %.0.i.i.i19.i.i = phi i64 [ %i.af, %.preheader.i.i.i18.i.i ], [ %i.ac, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i ]
  %i.ad = cmpxchg weak ptr getelementptr inbounds nuw (i8, ptr @_mi_stats_main, i64 40), i64 %.0.i.i.i19.i.i, i64 %i.ab release monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = icmp sge i64 %i.af, %i.ab
  %or.cond.not.i.i.i20.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.not.i.i.i20.i.i, label %_ZL15mi_os_prim_freePvmm.exit.i, label %.preheader.i.i.i18.i.i, !llvm.loop !147

_ZL15mi_os_prim_freePvmm.exit.i:                  ; preds = %.preheader.i.i.i18.i.i, %_ZL24mi_atomic_maxi64_relaxedPVll.exit.i.i.i.i
  %i.ah = add i64 %.0710.i, -1073741824           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i, i64 1073741824
  %i.aj = icmp ugt i64 %i.ah, 1073741823
  br i1 %i.aj, label %.lr.ph.i, label %_ZL24mi_os_free_huge_os_pagesPvm.exit, !llvm.loop !186

bb.d:                                             ; preds = %_Z22_mi_os_good_alloc_sizem.exit
  %i.ak = select i1 %.not, i64 0, i64 %i.k
  %.119 = sub i64 %i.f, %i.ak
  %i.al = select i1 %2, i64 %.119, i64 0
  tail call fastcc void @_ZL15mi_os_prim_freePvmm(ptr noundef %.017, i64 noundef %.1, i64 noundef %i.al)
  br label %_ZL24mi_os_free_huge_os_pagesPvm.exit

_ZL24mi_os_free_huge_os_pagesPvm.exit:            ; preds = %_ZL15mi_os_prim_freePvmm.exit.i, %bb.b, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z19_mi_verbose_messagePKcz(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 72), align 8, !tbaa !111
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %mi_option_is_enabled.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZL14mi_option_initP16mi_option_desc_s(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64)), !inline_history !115
  br label %mi_option_is_enabled.exit

mi_option_is_enabled.exit:                        ; preds = %bb.a, %bb.b
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 64), align 16, !tbaa !116
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %mi_option_is_enabled.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.f, label %bb.e, label %_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit

bb.e:                                             ; preds = %bb.d
  %i.g = call noundef i32 @_Z13_mi_vsnprintfPcmPKcP13__va_list_tag(ptr noundef nonnull %i.a, i64 noundef 511, ptr noundef nonnull readonly %0, ptr noundef nonnull %1) ; 0 uses
  call fastcc void @_ZL20mi_recurse_exit_primv()
  %i.h = call fastcc noundef zeroext i1 @_ZL21mi_recurse_enter_primv()
  br i1 %i.h, label %bb.f, label %_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit

bb.f:                                             ; preds = %bb.e
  %i.i = load atomic ptr, ptr @_ZL10mi_out_arg.0 acquire, align 8 ; 2 uses
  %i.j = load volatile ptr, ptr @_ZL14mi_out_default, align 8, !tbaa !69 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = select i1 %i.k, ptr @_ZL10mi_out_bufPKcPv, ptr %i.j ; 2 uses
  call void %i.l(ptr noundef nonnull @.str.35, ptr noundef %i.i), !inline_history !187
  call void %i.l(ptr noundef nonnull %i.a, ptr noundef %i.i), !inline_history !187
  call fastcc void @_ZL20mi_recurse_exit_primv()
  br label %_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit

_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  br label %bb.g

bb.g:                                             ; preds = %mi_option_is_enabled.exit, %_ZL11mi_vfprintfPFvPKcPvES1_S0_S0_P13__va_list_tag.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @mi_manage_os_memory(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.mi_memid_s, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %4 to i8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.b, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !93
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 %i.a, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !93
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i8 %i.c, ptr %.sroa.6.0..sroa_idx.i, align 2, !tbaa !93
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 19
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 1, ptr %.sroa.78.0..sroa_idx.i, align 4, !tbaa !137
  %i.d = tail call fastcc noundef zeroext i1 @_ZL23mi_manage_os_memory_ex2Pvmbib10mi_memid_sPi(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %3, i32 noundef %5, i1 noundef zeroext false, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %6, ptr noundef null) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 13) i32 @mi_reserve_os_memory(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @mi_reserve_os_memory_ex(i64 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext false, ptr noundef null) #55
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_debug_show_arenas() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [65 x i8], align 16               ; 6 uses
  %i.b = alloca [65 x i8], align 16               ; 6 uses
  %i.c = load atomic i64, ptr @_ZL14mi_arena_count monotonic, align 64 ; 2 uses
  %.not64 = icmp eq i64 %i.c, 0
  br i1 %.not64, label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47
  %.061 = phi i64 [ 0, %.lr.ph ], [ %i.aj, %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47 ] ; 2 uses
  %.01960 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZL9mi_arenas, i64 %.01960
  %i.g = load atomic ptr, ptr %i.f monotonic, align 8 ; 6 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !149, !range !91, !noundef !92
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, ptr @.str.13, ptr @.str.11
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.12, i64 noundef %.01960, i64 noundef %i.i, i64 noundef 32, i64 noundef %i.k, ptr noundef nonnull %i.o)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.r = load i64, ptr %i.j, align 8, !tbaa !110  ; 2 uses
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.d
  %.not7.i = icmp eq i64 %i.r, 0
  br i1 %.not7.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc24, %.noexc
  %.023.lcssa.i = phi i64 [ 0, %.noexc ], [ %.3.i.1, %.noexc24 ] ; 2 uses
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.14, i64 noundef %.023.lcssa.i)
          to label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.lr.ph.i:                                         ; preds = %.noexc, %.noexc24
  %.06.i = phi i64 [ %0, %.noexc24 ], [ 0, %.noexc ] ; 2 uses
  %.0235.i = phi i64 [ %.3.i.1, %.noexc24 ], [ 0, %.noexc ]
  %.0254.i = phi i64 [ %i.u, %.noexc24 ], [ 0, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0254.i
  %i.t = load atomic i64, ptr %i.s monotonic, align 8 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.j
  store i8 0, ptr %i.d, align 16, !tbaa !27
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %bb.e
  %0 = add i64 %.06.i, 64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  %i.u = add nuw i64 %.0254.i, 1                  ; 2 uses
  %exitcond8.not.i = icmp eq i64 %i.u, %i.r
  br i1 %exitcond8.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !188

bb.f:                                             ; preds = %bb.j, %.lr.ph.i
  %.13.i = phi i64 [ %.06.i, %.lr.ph.i ], [ %i.ai, %bb.j ] ; 3 uses
  %.0222.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %bb.j ] ; 5 uses
  %.1241.i = phi i64 [ %.0235.i, %.lr.ph.i ], [ %.3.i.1, %bb.j ] ; 2 uses
  %i.v = icmp ult i64 %.13.i, %i.p
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = shl nuw i64 1, %.0222.i
  %i.x = and i64 %i.w, %i.t
  %.not.i = icmp ne i64 %i.x, 0                   ; 2 uses
  %spec.select.i = select i1 %.not.i, i8 120, i8 46
  %i.y = zext i1 %.not.i to i64
  %spec.select26.i = add i64 %.1241.i, %i.y
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i8 [ %spec.select.i, %bb.g ], [ 32, %bb.f ]
  %.3.i = phi i64 [ %spec.select26.i, %bb.g ], [ %.1241.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0222.i
  store i8 %.sink.i, ptr %i.z, align 2, !tbaa !27
  %i.aa = or disjoint i64 %.13.i, 1
  %i.ab = icmp ult i64 %i.aa, %i.p
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = shl nuw i64 2, %.0222.i
  %i.ad = and i64 %i.ac, %i.t
  %.not.i.1 = icmp ne i64 %i.ad, 0                ; 2 uses
  %spec.select.i.1 = select i1 %.not.i.1, i8 120, i8 46
  %i.ae = zext i1 %.not.i.1 to i64
  %spec.select26.i.1 = add i64 %.3.i, %i.ae
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i.1 = phi i8 [ %spec.select.i.1, %bb.i ], [ 32, %bb.h ]
  %.3.i.1 = phi i64 [ %spec.select26.i.1, %bb.i ], [ %.3.i, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0222.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store i8 %.sink.i.1, ptr %i.ag, align 1, !tbaa !27
  %i.ah = add nuw nsw i64 %.0222.i, 2             ; 2 uses
  %i.ai = add i64 %.13.i, 2
  %exitcond.not.i.1 = icmp eq i64 %i.ah, 64
  br i1 %exitcond.not.i.1, label %bb.e, label %bb.f, !llvm.loop !189

_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit: ; preds = %._crit_edge.i
  %i.aj = add i64 %.023.lcssa.i, %.061            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !150 ; 2 uses
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47, label %bb.k

bb.k:                                             ; preds = %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit
  %i.am = load i64, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %i.an = load i64, ptr %i.j, align 8, !tbaa !110 ; 2 uses
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc42:                                         ; preds = %bb.k
  %.not7.i25 = icmp eq i64 %i.an, 0
  br i1 %.not7.i25, label %._crit_edge.i37, label %.lr.ph.i26

._crit_edge.i37:                                  ; preds = %.noexc44, %.noexc42
  %.023.lcssa.i38 = phi i64 [ 0, %.noexc42 ], [ %.3.i34.1, %.noexc44 ]
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.14, i64 noundef %.023.lcssa.i38)
          to label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.lr.ph.i26:                                       ; preds = %.noexc42, %.noexc44
  %.06.i27 = phi i64 [ %1, %.noexc44 ], [ 0, %.noexc42 ] ; 2 uses
  %.0235.i28 = phi i64 [ %.3.i34.1, %.noexc44 ], [ 0, %.noexc42 ]
  %.0254.i29 = phi i64 [ %i.aq, %.noexc44 ], [ 0, %.noexc42 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.0254.i29
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.q
  store i8 0, ptr %i.e, align 16, !tbaa !27
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a)
          to label %.noexc44 unwind label %.loopexit

.noexc44:                                         ; preds = %bb.l
  %1 = add i64 %.06.i27, 64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  %i.aq = add nuw i64 %.0254.i29, 1               ; 2 uses
  %exitcond8.not.i36 = icmp eq i64 %i.aq, %i.an
  br i1 %exitcond8.not.i36, label %._crit_edge.i37, label %.lr.ph.i26, !llvm.loop !188

bb.m:                                             ; preds = %bb.q, %.lr.ph.i26
  %.13.i30 = phi i64 [ %.06.i27, %.lr.ph.i26 ], [ %i.be, %bb.q ] ; 3 uses
  %.0222.i31 = phi i64 [ 0, %.lr.ph.i26 ], [ %i.bd, %bb.q ] ; 5 uses
  %.1241.i32 = phi i64 [ %.0235.i28, %.lr.ph.i26 ], [ %.3.i34.1, %bb.q ] ; 2 uses
  %i.ar = icmp ult i64 %.13.i30, %i.am
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = shl nuw i64 1, %.0222.i31
  %i.at = and i64 %i.as, %i.ap
  %.not.i39 = icmp ne i64 %i.at, 0                ; 2 uses
  %spec.select.i40 = select i1 %.not.i39, i8 120, i8 46
  %i.au = zext i1 %.not.i39 to i64
  %spec.select26.i41 = add i64 %.1241.i32, %i.au
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.i33 = phi i8 [ %spec.select.i40, %bb.n ], [ 32, %bb.m ]
  %.3.i34 = phi i64 [ %spec.select26.i41, %bb.n ], [ %.1241.i32, %bb.m ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0222.i31
  store i8 %.sink.i33, ptr %i.av, align 2, !tbaa !27
  %i.aw = or disjoint i64 %.13.i30, 1
  %i.ax = icmp ult i64 %i.aw, %i.am
  br i1 %i.ax, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ay = shl nuw i64 2, %.0222.i31
  %i.az = and i64 %i.ay, %i.ap
  %.not.i39.1 = icmp ne i64 %i.az, 0              ; 2 uses
  %spec.select.i40.1 = select i1 %.not.i39.1, i8 120, i8 46
  %i.ba = zext i1 %.not.i39.1 to i64
  %spec.select26.i41.1 = add i64 %.3.i34, %i.ba
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i33.1 = phi i8 [ %spec.select.i40.1, %bb.p ], [ 32, %bb.o ]
  %.3.i34.1 = phi i64 [ %spec.select26.i41.1, %bb.p ], [ %.3.i34, %bb.o ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0222.i31
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store i8 %.sink.i33.1, ptr %i.bc, align 1, !tbaa !27
  %i.bd = add nuw nsw i64 %.0222.i31, 2           ; 2 uses
  %i.be = add i64 %.13.i30, 2
  %exitcond.not.i35.1 = icmp eq i64 %i.bd, 64
  br i1 %exitcond.not.i35.1, label %bb.l, label %bb.m, !llvm.loop !189

_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47: ; preds = %._crit_edge.i37, %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit
  %i.bf = add nuw i64 %.01960, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bf, %i.c
  br i1 %exitcond.not, label %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread, label %bb.b, !llvm.loop !190

_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread: ; preds = %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47, %bb.b, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.061, %bb.b ], [ %i.aj, %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread47 ]
  invoke void (ptr, ...) @_Z11_mi_messagePKcz(ptr noundef nonnull @.str.17, i64 noundef %.0.lcssa)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread
  ret void

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.e
  %lpad.loopexit50 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.c, %bb.d, %._crit_edge.i, %bb.k, %._crit_edge.i37
  %lpad.loopexit53 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZL20mi_debug_show_bitmapPKcS0_mPSt6atomicImEm.exit45.thread
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit50, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit53, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bg = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bg) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z11_mi_messagePKcz(ptr nofree noundef readonly captures(address_is_null) %0, ...) local_unnamed_addr #6 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #55
  call void @llvm.va_start.p0(ptr nonnull %1)
  call fastcc void @_ZL18mi_vfprintf_threadPFvPKcPvES1_S0_S0_P13__va_list_tag(ptr noundef nonnull @.str.35, ptr noundef %0, ptr noundef %1)
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @mi_arenas_print() local_unnamed_addr #3 {
bb.a:
  tail call void @mi_debug_show_arenas() #55
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 13) i32 @mi_reserve_huge_os_pages_at_ex(i64 noundef %0, i32 noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.mi_memid_s, align 8         ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %4, align 4, !tbaa !71
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 -1) ; 2 uses
  %i.d = icmp sgt i32 %1, -1
  br i1 %i.d, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.e = load atomic i64, ptr @_mi_numa_node_count monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.f, label %_ZL22_mi_os_numa_node_countv.exit, !prof !19

bb.f:                                             ; preds = %bb.e
  %i.f = invoke noundef i64 @_Z26_mi_os_numa_node_count_getv()
          to label %_ZL22_mi_os_numa_node_countv.exit unwind label %bb.n

_ZL22_mi_os_numa_node_countv.exit:                ; preds = %bb.e, %bb.f
  %.0.i = phi i64 [ %i.e, %bb.e ], [ %i.f, %bb.f ]
  %i.g = zext nneg i32 %spec.store.select to i64
  %i.h = urem i64 %i.g, %.0.i
  %i.i = trunc nuw nsw i64 %i.h to i32
  br label %bb.g

bb.g:                                             ; preds = %_ZL22_mi_os_numa_node_countv.exit, %bb.d
  %.019 = phi i32 [ %i.i, %_ZL22_mi_os_numa_node_countv.exit ], [ %spec.store.select, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #55
  store i64 0, ptr %i.a, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #55
  store i64 0, ptr %i.b, align 8, !tbaa !74
  %i.j = invoke noundef ptr @_Z26_mi_os_alloc_huge_os_pagesmilPmS_P10mi_memid_s(i64 noundef %0, i32 noundef %.019, i64 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
          to label %bb.h unwind label %bb.n       ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.k = icmp eq ptr %i.j, null
  %i.l = load i64, ptr %i.b, align 8              ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.m
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_Z19_mi_warning_messagePKcz(ptr noundef nonnull @.str.18, i64 noundef %0)
          to label %_Z11_mi_os_freePvm10mi_memid_s.exit unwind label %bb.n

bb.j:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_Z19_mi_verbose_messagePKcz(ptr noundef nonnull @.str.19, i32 noundef %.019, i64 noundef %i.l, i64 noundef %0)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.n = load i64, ptr %i.a, align 8, !tbaa !74
  %i.o = call fastcc noundef zeroext i1 @_ZL23mi_manage_os_memory_ex2Pvmbib10mi_memid_sPi(ptr noundef nonnull %i.j, i64 noundef %i.n, i1 noundef zeroext true, i32 noundef %.019, i1 noundef zeroext %3, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5, ptr noundef %4) #55
  br i1 %i.o, label %_Z11_mi_os_freePvm10mi_memid_s.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_Z14_mi_os_free_exPvmb10mi_memid_s(ptr noundef nonnull %i.j, i64 poison, i1 noundef zeroext true, ptr noundef nonnull byval(%struct.mi_memid_s) align 8 %5)
          to label %_Z11_mi_os_freePvm10mi_memid_s.exit unwind label %bb.n

_Z11_mi_os_freePvm10mi_memid_s.exit:              ; preds = %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ 12, %bb.i ], [ 0, %bb.k ], [ 12, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #55
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_Z11_mi_os_freePvm10mi_memid_s.exit
  %.1 = phi i32 [ %.0, %_Z11_mi_os_freePvm10mi_memid_s.exit ], [ 0, %bb.c ]
  ret i32 %.1

bb.n:                                             ; preds = %bb.l, %bb.f, %bb.j, %bb.i, %bb.g
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #56
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z26_mi_os_alloc_huge_os_pagesmilPmS_P10mi_memid_s(i64 noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %5) local_unnamed_addr #6 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
end_hunk_0
