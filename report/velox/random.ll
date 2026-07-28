inline.NumInlined: 7096
inline.NumDeleted: 2467
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  %i.cl = add i8 %i.cj, -65
  %or.cond39.i.7 = icmp ult i8 %i.cl, 6
  br i1 %or.cond39.i.7, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cm = add i8 %i.cj, -97
  %or.cond40.i.7 = icmp ult i8 %i.cm, 6
  br i1 %or.cond40.i.7, label %bb.aw, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !3126

bb.aw:                                            ; preds = %bb.av
  %i.cn = zext nneg i8 %i.cj to i32
  %i.co = add nsw i32 %i.cn, -87
  br label %bb.az

bb.ax:                                            ; preds = %bb.au
  %i.cp = zext nneg i8 %i.cj to i32
  %i.cq = add nsw i32 %i.cp, -55
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph.i.7
  %i.cr = zext nneg i8 %i.ck to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.pn.i.7 = phi i32 [ %i.cr, %bb.ay ], [ %i.cq, %bb.ax ], [ %i.co, %bb.aw ]
  %.1.i.7 = or i32 %.pn.i.7, %i.ch
  br label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split

thread-pre-split:                                 ; preds = %bb.b
  %i.cs = icmp eq i8 %i.d, 45
  br i1 %i.cs, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %thread-pre-split
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cu = add i64 %3, -1                          ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.ba, %thread-pre-split
  %i.cw = phi i1 [ true, %bb.ba ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.ct, %bb.ba ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.cu, %bb.ba ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !47
  %i.cy = icmp eq i8 %i.cx, 48
  br i1 %i.cy, label %bb.bc, label %.critedge

bb.bc:                                            ; preds = %bb.bb
  %i.cz = add i64 %.133, -1                       ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.cz, 0
  br i1 %.not, label %.critedge, label %bb.bb, !llvm.loop !3133

.critedge:                                        ; preds = %bb.bc, %bb.bb
  %.125.lcssa = phi ptr [ %scevgep, %bb.bc ], [ %.12532, %bb.bb ]
  %.1.lcssa = phi i64 [ 0, %bb.bc ], [ %.133, %bb.bb ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !19

bb.bd:                                            ; preds = %.critedge
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !56  ; 4 uses
  br i1 %i.cw, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.dd = icmp ugt i32 %i.dc, -2147483648
  br i1 %i.dd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %bb.bf, !prof !57

bb.bf:                                            ; preds = %bb.be
  %i.de = sub i32 0, %i.dc
  br label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split

bb.bg:                                            ; preds = %bb.bd
  %i.df = icmp slt i32 %i.dc, 0
  br i1 %i.df, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, !prof !57

_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.j, %bb.p, %bb.v, %bb.ab, %bb.ah, %bb.an, %bb.at, %bb.az, %bb.bf, %bb.bg
  %storemerge.sink = phi i32 [ %i.dc, %bb.bg ], [ %i.de, %bb.bf ], [ %.pn.i, %bb.j ], [ %.1.i.1, %bb.p ], [ %.1.i.2, %bb.v ], [ %.1.i.3, %bb.ab ], [ %.1.i.4, %bb.ah ], [ %.1.i.5, %bb.an ], [ %.1.i.6, %bb.at ], [ %.1.i.7, %bb.az ]
  store i32 %storemerge.sink, ptr %4, align 4, !tbaa !56
  br label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread: ; preds = %bb.h, %bb.l, %bb.r, %bb.x, %bb.ad, %bb.aj, %bb.ap, %bb.av, %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.bg, %bb.be, %.critedge, %bb.ba, %bb.a
  %.022 = phi i1 [ false, %bb.ba ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.bg ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.be ], [ false, %bb.av ], [ false, %bb.ap ], [ false, %bb.aj ], [ false, %bb.ad ], [ false, %bb.x ], [ false, %bb.r ], [ false, %bb.l ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRKiRA17_S8_SC_EEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2392, !nonnull !46, !align !2402 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %i.i = load i32, ptr %3, align 4, !tbaa !56
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %4) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 noundef %i.k)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.m = load i32, ptr %5, align 4, !tbaa !56
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.m)
          to label %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKiRA17_S8_SC_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKiRA17_S8_SC_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc8
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKiRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.c:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKiRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.o
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !2403

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !789
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow10UInt64TypeE, i64 16), ptr @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !53
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow11IntegerTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_10UInt64TypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, label %bb.e, !prof !57

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ugt i64 %1, 2
  br i1 %i.f, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %0, align 1, !tbaa !47
  %i.h = icmp eq i8 %i.g, 48
  br i1 %i.h, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47
  switch i8 %i.j, label %bb.n [
    i8 120, label %bb.h
    i8 88, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = add i64 %1, -3                           ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit, !prof !19

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.m
  %.03049.i.i = phi i64 [ %i.t, %bb.m ], [ 0, %bb.h ] ; 3 uses
  %.03148.i.i = phi i64 [ %.1.i.i, %bb.m ], [ 0, %bb.h ]
  %i.n = shl i64 %.03148.i.i, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.03049.i.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !47    ; 5 uses
  %i.q = add i8 %i.p, -48                         ; 2 uses
  %or.cond.i.i = icmp ult i8 %i.q, 10
  br i1 %or.cond.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.r = add i8 %i.p, -65
  %or.cond42.i.i = icmp ult i8 %i.r, 6
  br i1 %or.cond42.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %narrow40.i.i = add nuw nsw i8 %i.p, 9
  %3 = and i8 %narrow40.i.i, 31
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.s = add i8 %i.p, -97
  %or.cond43.i.i = icmp ult i8 %i.s, 6
  br i1 %or.cond43.i.i, label %bb.l, label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.l:                                             ; preds = %bb.k
  %narrow.i.i = add nuw nsw i8 %i.p, 9
  %4 = and i8 %narrow.i.i, 31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %.lr.ph.i.i
  %.pn.in.i.i = phi i8 [ %4, %bb.l ], [ %3, %bb.j ], [ %i.q, %.lr.ph.i.i ]
  %.pn.i.i = zext nneg i8 %.pn.in.i.i to i64
  %.1.i.i = or i64 %i.n, %.pn.i.i                 ; 2 uses
  %i.t = add nuw nsw i64 %.03049.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.03049.i.i, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !3134

._crit_edge.i.i:                                  ; preds = %bb.m
  store i64 %.1.i.i, ptr %2, align 8, !tbaa !95
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

bb.n:                                             ; preds = %bb.g, %bb.f, %bb.e
  %scevgep.i = getelementptr i8, ptr %0, i64 %1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %.01722.i = phi i64 [ %1, %bb.n ], [ %i.w, %bb.p ] ; 2 uses
  %.01821.i = phi ptr [ %0, %bb.n ], [ %i.x, %bb.p ] ; 3 uses
  %i.u = load i8, ptr %.01821.i, align 1, !tbaa !47
  %i.v = icmp eq i8 %i.u, 48
  br i1 %i.v, label %bb.p, label %.critedge.i

bb.p:                                             ; preds = %bb.o
  %i.w = add i64 %.01722.i, -1                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01821.i, i64 1
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %.critedge.i, label %bb.o, !llvm.loop !3135

.critedge.i:                                      ; preds = %bb.p, %bb.o
  %.018.lcssa.i = phi ptr [ %scevgep.i, %bb.p ], [ %.01821.i, %bb.o ]
  %.017.lcssa.i = phi i64 [ 0, %bb.p ], [ %.01722.i, %bb.o ]
  %i.y = tail call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.018.lcssa.i, i64 noundef %.017.lcssa.i, ptr noundef %2)
  br label %_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit

_ZN5arrow8internal33StringToUnsignedIntConverterMixinINS_10UInt64TypeEE7ConvertERKS2_PKcmPm.exit: ; preds = %bb.k, %bb.d, %bb.h, %._crit_edge.i.i, %.critedge.i
  %.0.i = phi i1 [ %i.y, %.critedge.i ], [ false, %bb.d ], [ false, %bb.h ], [ true, %._crit_edge.i.i ], [ false, %bb.k ]
  ret i1 %.0.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %0, align 1, !tbaa !47
  %i.c = add i8 %i.b, -48                         ; 2 uses
  %i.d = icmp ult i8 %i.c, 10
  %i.e = zext nneg i8 %i.c to i64                 ; 2 uses
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %.not247 = icmp eq i64 %1, 1
  br i1 %.not247, label %bb.aq, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.g = load i8, ptr %i.a, align 1, !tbaa !47
  %i.h = add i8 %i.g, -48                         ; 2 uses
  %i.i = mul nuw nsw i64 %i.e, 10
  %i.j = icmp ult i8 %i.h, 10
  %i.k = zext nneg i8 %i.h to i64
  %i.l = add nuw nsw i64 %i.i, %i.k               ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.not248 = icmp eq i64 %1, 2
  br i1 %.not248, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.f, align 1, !tbaa !47
  %i.o = add i8 %i.n, -48                         ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 10
  %i.q = icmp ult i8 %i.o, 10
  %i.r = zext nneg i8 %i.o to i64
  %i.s = add nuw nsw i64 %i.p, %i.r               ; 2 uses
  br i1 %i.q, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %.not249 = icmp eq i64 %1, 3
  br i1 %.not249, label %bb.aq, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i8, ptr %i.m, align 1, !tbaa !47
  %i.v = add i8 %i.u, -48                         ; 2 uses
  %i.w = mul nuw nsw i64 %i.s, 10
  %i.x = icmp ult i8 %i.v, 10
  %i.y = zext nneg i8 %i.v to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 2 uses
  br i1 %i.x, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not250 = icmp eq i64 %1, 4
  br i1 %.not250, label %bb.aq, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !47
  %i.ac = add i8 %i.ab, -48                       ; 2 uses
  %i.ad = mul nuw nsw i64 %i.z, 10
  %i.ae = icmp ult i8 %i.ac, 10
  %i.af = zext nneg i8 %i.ac to i64
  %i.ag = add nuw nsw i64 %i.ad, %i.af            ; 2 uses
  br i1 %i.ae, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %.not251 = icmp eq i64 %1, 5
  br i1 %.not251, label %bb.aq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !47
  %i.aj = add i8 %i.ai, -48                       ; 2 uses
  %i.ak = mul nuw nsw i64 %i.ag, 10
  %i.al = icmp ult i8 %i.aj, 10
  %i.am = zext nneg i8 %i.aj to i64
  %i.an = add nuw nsw i64 %i.ak, %i.am            ; 2 uses
  br i1 %i.al, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %.not252 = icmp eq i64 %1, 6
  br i1 %.not252, label %bb.aq, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ap = load i8, ptr %i.ah, align 1, !tbaa !47
  %i.aq = add i8 %i.ap, -48                       ; 2 uses
  %i.ar = mul nuw nsw i64 %i.an, 10
  %i.as = icmp ult i8 %i.aq, 10
  %i.at = zext nneg i8 %i.aq to i64
  %i.au = add nuw nsw i64 %i.ar, %i.at            ; 2 uses
  br i1 %i.as, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.not253 = icmp eq i64 %1, 7
  br i1 %.not253, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = mul nuw nsw i64 %i.au, 10
  %i.az = icmp ult i8 %i.ax, 10
  %i.ba = zext nneg i8 %i.ax to i64
  %i.bb = add nuw nsw i64 %i.ay, %i.ba            ; 2 uses
  br i1 %i.az, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %.not254 = icmp eq i64 %1, 8
  br i1 %.not254, label %bb.aq, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !47
  %i.be = add i8 %i.bd, -48                       ; 2 uses
  %i.bf = mul nuw nsw i64 %i.bb, 10
  %i.bg = icmp ult i8 %i.be, 10
  %i.bh = zext nneg i8 %i.be to i64
  %i.bi = add nuw nsw i64 %i.bf, %i.bh            ; 2 uses
  br i1 %i.bg, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %.not255 = icmp eq i64 %1, 9
  br i1 %.not255, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.bk = load i8, ptr %i.bc, align 1, !tbaa !47
  %i.bl = add i8 %i.bk, -48                       ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bi, 10
  %i.bn = icmp ult i8 %i.bl, 10
  %i.bo = zext nneg i8 %i.bl to i64
  %i.bp = add nuw nsw i64 %i.bm, %i.bo            ; 2 uses
  br i1 %i.bn, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %.not256 = icmp eq i64 %1, 10
  br i1 %.not256, label %bb.aq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.br = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bs = add i8 %i.br, -48                       ; 2 uses
  %i.bt = mul nuw nsw i64 %i.bp, 10
  %i.bu = icmp ult i8 %i.bs, 10
  %i.bv = zext nneg i8 %i.bs to i64
  %i.bw = add nuw nsw i64 %i.bt, %i.bv            ; 2 uses
  br i1 %i.bu, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %.not257 = icmp eq i64 %1, 11
  br i1 %.not257, label %bb.aq, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !47
  %i.bz = add i8 %i.by, -48                       ; 2 uses
  %i.ca = mul nuw nsw i64 %i.bw, 10
  %i.cb = icmp ult i8 %i.bz, 10
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal13ParseUnsignedEPKcmPm:bb.a
  %i.cr = add nuw nsw i64 %i.co, %i.cq            ; 2 uses
  br i1 %i.cp, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  %.not260 = icmp eq i64 %1, 14
  br i1 %.not260, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ct = load i8, ptr %i.cl, align 1, !tbaa !47
  %i.cu = add i8 %i.ct, -48                       ; 2 uses
  %i.cv = mul nuw nsw i64 %i.cr, 10
  %i.cw = icmp ult i8 %i.cu, 10
  %i.cx = zext nneg i8 %i.cu to i64
  %i.cy = add nuw nsw i64 %i.cv, %i.cx            ; 2 uses
  br i1 %i.cw, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %.not261 = icmp eq i64 %1, 15
  br i1 %.not261, label %bb.aq, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.da = load i8, ptr %i.cs, align 1, !tbaa !47
  %i.db = add i8 %i.da, -48                       ; 2 uses
  %i.dc = mul nuw nsw i64 %i.cy, 10
  %i.dd = icmp ult i8 %i.db, 10
  %i.de = zext nneg i8 %i.db to i64
  %i.df = add nuw nsw i64 %i.dc, %i.de            ; 2 uses
  br i1 %i.dd, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %.not262 = icmp eq i64 %1, 16
  br i1 %.not262, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !47
  %i.di = add i8 %i.dh, -48                       ; 2 uses
  %i.dj = mul nuw nsw i64 %i.df, 10
  %i.dk = icmp ult i8 %i.di, 10
  %i.dl = zext nneg i8 %i.di to i64
  %i.dm = add nuw nsw i64 %i.dj, %i.dl            ; 2 uses
  br i1 %i.dk, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %.not263 = icmp eq i64 %1, 17
  br i1 %.not263, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !47
  %i.dp = add i8 %i.do, -48                       ; 2 uses
  %i.dq = mul nuw nsw i64 %i.dm, 10
  %i.dr = icmp ult i8 %i.dp, 10
  %i.ds = zext nneg i8 %i.dp to i64
  %i.dt = add nuw nsw i64 %i.dq, %i.ds            ; 2 uses
  br i1 %i.dr, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  %.not264 = icmp eq i64 %1, 18
  br i1 %.not264, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !47
  %i.dw = add i8 %i.dv, -48                       ; 2 uses
  %i.dx = mul i64 %i.dt, 10
  %i.dy = add i64 %1, -19                         ; 2 uses
  %i.dz = icmp ult i8 %i.dw, 10
  %i.ea = zext nneg i8 %i.dw to i64
  %i.eb = add i64 %i.dx, %i.ea                    ; 3 uses
  br i1 %i.dz, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %.not265 = icmp eq i64 %i.dy, 0
  br i1 %.not265, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ec = icmp ugt i64 %i.eb, 1844674407370955161
  br i1 %i.ec, label %.thread, label %bb.ao, !prof !57

bb.ao:                                            ; preds = %bb.an
  %i.ed = load i8, ptr %i.du, align 1, !tbaa !47
  %i.ee = add i8 %i.ed, -48                       ; 2 uses
  %.not266 = icmp ne i64 %i.dy, 1
  %i.ef = icmp ugt i8 %i.ee, 9
  %or.cond = or i1 %.not266, %i.ef
  br i1 %or.cond, label %.thread, label %bb.ap, !prof !3124

bb.ap:                                            ; preds = %bb.ao
  %i.eg = mul nuw i64 %i.eb, 10                   ; 3 uses
  %i.eh = zext nneg i8 %i.ee to i64
  %i.ei = add i64 %i.eg, %i.eh                    ; 2 uses
  %.not270 = icmp ult i64 %i.ei, %i.eg
  %.267 = tail call i64 @llvm.umax.i64(i64 %i.ei, i64 %i.eg)
  br i1 %.not270, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.20205 = phi i64 [ %.267, %bb.ap ], [ %i.eb, %bb.am ], [ %i.dt, %bb.ak ], [ %i.dm, %bb.ai ], [ %i.df, %bb.ag ], [ %i.cy, %bb.ae ], [ %i.cr, %bb.ac ], [ %i.ck, %bb.aa ], [ %i.cd, %bb.y ], [ %i.bw, %bb.w ], [ %i.bp, %bb.u ], [ %i.bi, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i64 %.20205, ptr %2, align 8, !tbaa !95
  br label %.thread

.thread:                                          ; preds = %bb.ao, %bb.an, %bb.ap, %bb.al, %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.aq
  %.20 = phi i1 [ false, %bb.b ], [ true, %bb.aq ], [ false, %bb.ap ], [ false, %bb.al ], [ false, %bb.aj ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.z ], [ false, %bb.x ], [ false, %bb.v ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.an ], [ false, %bb.ao ]
  ret i1 %.20
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRKmRA17_S8_SC_EEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2392, !nonnull !46, !align !2402 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %i.i = load i64, ptr %3, align 8, !tbaa !95
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %4) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 noundef %i.k)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.m = load i64, ptr %5, align 8, !tbaa !95
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.m)
          to label %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKmRA17_S8_SC_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKmRA17_S8_SC_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc8
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKmRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.c:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKmRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int64TypeEE7ConvertERKS2_PKcmPl(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !95
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %3, 2
  %i.d = load i8, ptr %2, align 1, !tbaa !47      ; 2 uses
  %i.e = icmp eq i8 %i.d, 48
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47
  switch i8 %i.g, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.i = add i64 %3, -3                           ; 2 uses
  %i.j = icmp ult i64 %i.i, 16
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !19

.lr.ph.i:                                         ; preds = %bb.d, %bb.i
  %.03049.i = phi i64 [ %i.q, %bb.i ], [ 0, %bb.d ] ; 3 uses
  %.03148.i = phi i64 [ %.1.i, %bb.i ], [ 0, %bb.d ]
  %i.k = shl i64 %.03148.i, 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.03049.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47    ; 5 uses
  %i.n = add i8 %i.m, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = add i8 %i.m, -65
  %or.cond42.i = icmp ult i8 %i.o, 6
  br i1 %or.cond42.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %narrow40.i = add nuw nsw i8 %i.m, 9
  %5 = and i8 %narrow40.i, 31
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = add i8 %i.m, -97
  %or.cond43.i = icmp ult i8 %i.p, 6
  br i1 %or.cond43.i, label %bb.h, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !3126

bb.h:                                             ; preds = %bb.g
  %narrow.i = add nuw nsw i8 %i.m, 9
  %6 = and i8 %narrow.i, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %.pn.in.i = phi i8 [ %6, %bb.h ], [ %5, %bb.f ], [ %i.n, %.lr.ph.i ]
  %.pn.i = zext nneg i8 %.pn.in.i to i64
  %.1.i = or i64 %i.k, %.pn.i                     ; 2 uses
  %i.q = add nuw nsw i64 %.03049.i, 1
  %exitcond.not.i = icmp eq i64 %.03049.i, %i.i
  br i1 %exitcond.not.i, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, label %.lr.ph.i, !llvm.loop !3134

thread-pre-split:                                 ; preds = %bb.b
  %i.r = icmp eq i8 %i.d, 45
  br i1 %i.r, label %bb.j, label %.thread

bb.j:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.t = add i64 %3, -1                           ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %thread-pre-split
  %i.v = phi i1 [ true, %bb.j ], [ false, %thread-pre-split ], [ false, %bb.c ]
  %.024 = phi ptr [ %i.s, %bb.j ], [ %2, %thread-pre-split ], [ %2, %bb.c ] ; 2 uses
  %.023 = phi i64 [ %i.t, %bb.j ], [ %3, %thread-pre-split ], [ %3, %bb.c ] ; 2 uses
  %scevgep = getelementptr i8, ptr %.024, i64 %.023
  br label %bb.k

bb.k:                                             ; preds = %.thread, %bb.l
  %.133 = phi i64 [ %.023, %.thread ], [ %i.y, %bb.l ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.z, %bb.l ] ; 3 uses
  %i.w = load i8, ptr %.12532, align 1, !tbaa !47
  %i.x = icmp eq i8 %i.w, 48
  br i1 %i.x, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.y = add i64 %.133, -1                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.12532, i64 1
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %.critedge, label %bb.k, !llvm.loop !3136

.critedge:                                        ; preds = %bb.l, %bb.k
  %.125.lcssa = phi ptr [ %scevgep, %bb.l ], [ %.12532, %bb.k ]
  %.1.lcssa = phi i64 [ 0, %bb.l ], [ %.133, %bb.k ]
  %i.aa = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPm(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.aa, label %bb.m, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, !prof !19

bb.m:                                             ; preds = %.critedge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  br i1 %i.v, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ac = icmp ugt i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %bb.o, !prof !57

bb.o:                                             ; preds = %bb.n
  %i.ad = sub i64 0, %i.ab
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split

bb.p:                                             ; preds = %bb.m
  %i.ae = icmp slt i64 %i.ab, 0
  br i1 %i.ae, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread, label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, !prof !57

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split: ; preds = %bb.i, %bb.o, %bb.p
  %storemerge.sink = phi i64 [ %i.ab, %bb.p ], [ %i.ad, %bb.o ], [ %.1.i, %bb.i ]
  store i64 %storemerge.sink, ptr %4, align 8, !tbaa !95
  br label %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread

_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread: ; preds = %bb.g, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split, %bb.d, %bb.p, %bb.n, %.critedge, %bb.j, %bb.a
  %.022 = phi i1 [ false, %bb.j ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.p ], [ false, %.critedge ], [ true, %_ZN5arrow8internal8ParseHexImEEbPKcmPT_.exit.thread.sink.split ], [ false, %bb.n ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRKlRA17_S8_SC_EEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2392, !nonnull !46, !align !2402 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %i.i = load i64, ptr %3, align 8, !tbaa !95
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.i)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %4) #25
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 noundef %i.k)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.m = load i64, ptr %5, align 8, !tbaa !95
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.m)
          to label %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKlRA17_S8_SC_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKlRA17_S8_SC_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc8
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKlRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.c:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKlRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZN5arrow17FloatingPointTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #6

declare noundef zeroext i1 @_ZN5arrow8internal13StringToFloatEPKcmcPf(ptr noundef, i64 noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA7_KcRKfRA17_S8_SC_EEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(17) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2392, !nonnull !46, !align !2402 ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(7) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) %2, i64 noundef %i.g)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc
  %i.i = load float, ptr %3, align 4, !tbaa !594
  %i.j = fpext float %i.i to double
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.j)
          to label %.noexc7 unwind label %bb.c    ; 0 uses

.noexc7:                                          ; preds = %.noexc6
  %i.l = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(17) %4) #25
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(17) %4, i64 noundef %i.l)
          to label %.noexc8 unwind label %bb.c    ; 0 uses

.noexc8:                                          ; preds = %.noexc7
  %i.n = load float, ptr %5, align 4, !tbaa !594
  %i.o = fpext float %i.n to double
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, double noundef %i.o)
          to label %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKfRA17_S8_SC_EEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKfRA17_S8_SC_EEEvRSoOT_DpOT0_.exit: ; preds = %.noexc8
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKfRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

bb.c:                                             ; preds = %.noexc8, %.noexc7, %.noexc6, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA7_KcRKfRA17_S8_SC_EEEvRSoOT_DpOT0_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA3_KcRA16_S8_RA14_S8_dSA_dRA12_S8_RKdEEES7_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(14) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(3) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10)
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2392, !nonnull !46, !align !2402 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !785
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, i64 noundef %i.e)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %2) #25
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %2, i64 noundef %i.g)
          to label %.noexc10 unwind label %bb.c   ; 0 uses

.noexc10:                                         ; preds = %.noexc
  invoke void @_ZN5arrow4util22StringBuilderRecursiveIRA16_KcJRA14_S2_dRA3_S2_dRA12_S2_RKdEEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(14) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(3) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA3_KcRA16_S8_RA14_S8_dSA_dRA12_S8_RKdEEEvRSoOT_DpOT0_.exit unwind label %bb.c

_ZN5arrow4util22StringBuilderRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA3_KcRA16_S8_RA14_S8_dSA_dRA12_S8_RKdEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc10
end_hunk_1
