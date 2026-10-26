Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/gzip_stream?download=true
inline.NumInlined: 31
inline.NumDeleted: 14
begin_hunk_0_@_ZN6google8protobuf2io16GzipOutputStream4InitEPNS1_20ZeroCopyOutputStreamERKNS2_7OptionsE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = select i1 %i.p, i32 15, i32 31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = tail call i32 @deflateInit2_(ptr noundef nonnull %i.j, i32 noundef %i.r, i32 noundef 8, i32 noundef %i.s, i32 noundef 8, i32 noundef %i.u, ptr noundef nonnull @.str.3, i32 noundef 112)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.v, ptr %i.w, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io16GzipOutputStreamC2EPNS1_20ZeroCopyOutputStreamERKNS2_7OptionsE(ptr noundef nonnull align 8 dereferenceable(168) initializes((0, 28), (32, 44), (48, 68), (72, 88), (96, 120), (152, 168)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf2io16GzipOutputStreamE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !41
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.f, ptr %i.g, align 8, !tbaa !42
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.j, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.o = load i32, ptr %2, align 4, !tbaa !46
  %i.p = icmp eq i32 %i.o, 2
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = select i1 %i.p, i32 15, i32 31
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !48
  %i.v = tail call i32 @deflateInit2_(ptr noundef nonnull %i.j, i32 noundef %i.r, i32 noundef 8, i32 noundef %i.s, i32 noundef 8, i32 noundef %i.u, ptr noundef nonnull @.str.3, i32 noundef 112)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.v, ptr %i.w, align 8, !tbaa !49
  ret void
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io16GzipOutputStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  switch i32 %i.b, label %_ZN6google8protobuf2io16GzipOutputStream5CloseEv.exit [
    i32 0, label %.preheader
    i32 -5, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %.noexc
  %i.c = invoke noundef i32 @_ZN6google8protobuf2io16GzipOutputStream7DeflateEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 4)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.b
  store i32 %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.noexc
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = invoke i32 @deflateEnd(ptr noundef nonnull %i.e)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc1:                                          ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !49
  br label %_ZN6google8protobuf2io16GzipOutputStream5CloseEv.exit

_ZN6google8protobuf2io16GzipOutputStream5CloseEv.exit: ; preds = %.noexc1, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i64, ptr %i.i, align 8, !tbaa !42
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.j) #15
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.b, %bb.c
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %lpad.loopexit.split-lp3, 0
  tail call void @__clang_call_terminate(ptr %i.k) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16GzipOutputStream5CloseEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  switch i32 %i.b, label %bb.d [
    i32 0, label %.preheader
    i32 -5, label %.preheader
  ]

.preheader:                                       ; preds = %bb.a, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %i.c = tail call noundef i32 @_ZN6google8protobuf2io16GzipOutputStream7DeflateEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 4) ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !49
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call i32 @deflateEnd(ptr noundef nonnull %i.e)
  %i.g = icmp eq i32 %i.f, 0
  store i32 1, ptr %i.a, align 8, !tbaa !49
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.0 = phi i1 [ %i.g, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf2io16GzipOutputStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN6google8protobuf2io16GzipOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6google8protobuf2io16GzipOutputStream7DeflateEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !50
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d)
  br i1 %i.o, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.f, !prof !55

.thread:                                          ; preds = %bb.e
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !37
  store ptr %i.r, ptr %i.e, align 8, !tbaa !56
  store i32 %i.p, ptr %i.b, align 8, !tbaa !50
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %i.p to i64
  %i.t = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.s, i64 noundef 0, ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 241, ptr noundef nonnull %i.t) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.f
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  unreachable

bb.h:                                             ; preds = %.thread, %bb.c
  %i.v = tail call i32 @deflate(ptr noundef nonnull %i.f, i32 noundef %1) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.b, align 8, !tbaa !50
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.h, %bb.i
  %.lcssa24 = phi i32 [ %i.v, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %i.z = add i32 %1, -3
  %or.cond = icmp ult i32 %i.z, 2
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %i.ab = load i32, ptr %i.b, align 8, !tbaa !50
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i32 noundef %i.ab)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.j
  %.3.ph = phi i32 [ %.lcssa24, %bb.j ], [ -5, %bb.d ]
  store ptr null, ptr %i.a, align 8, !tbaa !37
  store i32 0, ptr %i.d, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.critedge
  %.3 = phi i32 [ %.lcssa24, %.critedge ], [ %.3.ph, %.sink.split ]
  ret i32 %.3
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16GzipOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 -5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !45
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN6google8protobuf2io16GzipOutputStream7DeflateEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 0) ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !49
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.d, align 8, !tbaa !45
  %i.g = icmp eq i32 %.pr, 0
  br i1 %i.g, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.b, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load i64, ptr %i.j, align 8, !tbaa !42
  %i.l = trunc i64 %i.k to i32                    ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !45
  store ptr %i.i, ptr %1, align 8, !tbaa !30
  store i32 %i.l, ptr %2, align 4, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.d ], [ true, %.thread ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io16GzipOutputStream6BackUpEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %.not.i = icmp ult i32 %i.b, %1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = zext i32 %i.b to i64
  %i.e = zext i32 %1 to i64
  %i.f = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.d, i64 noundef %i.e, ptr noundef nonnull @.str.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull %i.f) #18
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6google8protobuf2io16GzipOutputStream9ByteCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = zext i32 %i.d to i64
  %i.f = add i64 %i.b, %i.e
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16GzipOutputStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6google8protobuf2io16GzipOutputStream7DeflateEi(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef 3) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.a, ptr %i.b, align 8, !tbaa !49
  switch i32 %i.a, label %.fold.split [
    i32 0, label %bb.d
    i32 -5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !45
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.d

.fold.split:                                      ; preds = %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.fold.split, %bb.b, %bb.c
  %i.i = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.h, %bb.c ], [ false, %.fold.split ]
  ret i1 %i.i
}

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZN6google8protobuf2io19ZeroCopyInputStream8ReadCordEPN4absl12lts_202505124CordEi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #8

declare noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream15WriteAliasedRawEPKvi(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6google8protobuf2io20ZeroCopyOutputStream14AllowsAliasingEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN6google8protobuf2io20ZeroCopyOutputStream9WriteCordERKN4absl12lts_202505124CordE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = distinct !{!0, !32}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"_ZTSN6google8protobuf2io19ZeroCopyInputStreamE"}
!11 = !{!"_ZTSN6google8protobuf2io15GzipInputStream6FormatE", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 _ZTS14internal_state", !12, i64 0}
!17 = !{!"_ZTS10z_stream_s", !14, i64 0, !6, i64 8, !15, i64 16, !14, i64 24, !6, i64 32, !15, i64 40, !14, i64 48, !16, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !6, i64 88, !15, i64 96, !15, i64 104}
!18 = !{!"_ZTSN6google8protobuf2io15GzipInputStreamE", !10, i64 0, !11, i64 8, !13, i64 16, !17, i64 24, !6, i64 136, !12, i64 144, !12, i64 152, !15, i64 160, !15, i64 168}
!19 = !{!18, !11, i64 8}
!20 = !{!18, !13, i64 16}
!21 = !{!18, !6, i64 136}
!22 = !{!18, !15, i64 168}
!23 = !{!18, !14, i64 24}
!24 = !{!18, !6, i64 32}
!25 = !{!18, !15, i64 160}
end_hunk_0
