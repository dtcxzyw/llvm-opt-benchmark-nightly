Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/message_compress?download=true
inline.NumInlined: 62
inline.NumDeleted: 29
begin_hunk_0

$_ZN4absl12lts_2025051212log_internal10LogMessagelsI26grpc_compression_algorithmEERS2_RKT_ = comdat any

@.str = private unnamed_addr constant [71 x i8] c"/opt-bench/work/grpc/grpc/src/core/lib/compression/message_compress.cc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid compression algorithm \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"1.3.1.1-motley\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"r == 0\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"((outbuf).refcount ? (outbuf).data.refcounted.length : (outbuf).data.inlined.length) <= uint_max\00", align 1
@.str.5 = private unnamed_addr constant [127 x i8] c"((input->slices[i]).refcount ? (input->slices[i]).data.refcounted.length : (input->slices[i]).data.inlined.length) <= uint_max\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"zlib error (\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"zlib: not all input consumed\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"zlib: Data error\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"outbuf.refcount\00", align 1
@"_ZZZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iEENK3$_0clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.2" } { ptr @.str, { i32 } { i32 2147483647 }, %"struct.std::atomic.2" zeroinitializer }, align 8
@"_ZZZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iEENK3$_1clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.2" } { ptr @.str, { i32 } { i32 2147483647 }, %"struct.std::atomic.2" zeroinitializer }, align 8
@"_ZZZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iEENK3$_2clEvE4site" = internal global { ptr, { i32 }, %"struct.std::atomic.2" } { ptr @.str, { i32 } { i32 2147483647 }, %"struct.std::atomic.2" zeroinitializer }, align 8

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z17grpc_msg_compress26grpc_compression_algorithmP17grpc_slice_bufferS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  switch i32 %0, label %bb.c [
    i32 0, label %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit.thread
    i32 1, label %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 165) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 30, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i unwind label %bb.e

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i: ; preds = %bb.c
  %i.b = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsI26grpc_compression_algorithmEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit.thread

bb.e:                                             ; preds = %bb.d, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit.i, %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %i.c

_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit.thread: ; preds = %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit: ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = tail call fastcc noundef i32 @_ZL13zlib_compressP17grpc_slice_bufferS0_i(ptr noundef readonly %1, ptr noundef %2, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %_ZL4copyP17grpc_slice_bufferS0_.exit

bb.f:                                             ; preds = %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit.thread, %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZL4copyP17grpc_slice_bufferS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i, %.lr.ph.i
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.05.i ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20   ; 2 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 1 to ptr)
  br i1 %i.k, label %bb.h, label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i

bb.h:                                             ; preds = %bb.g
  %i.l = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i

_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i: ; preds = %bb.h, %bb.g
  call void @grpc_slice_buffer_add(ptr noundef %2, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.i)
  %i.m = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !16
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.g, label %_ZL4copyP17grpc_slice_bufferS0_.exit, !llvm.loop !0

_ZL4copyP17grpc_slice_bufferS0_.exit:             ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i, %bb.f, %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit
  %.0 = phi i32 [ 1, %_ZL14compress_inner26grpc_compression_algorithmP17grpc_slice_bufferS1_.exit ], [ 0, %bb.f ], [ 0, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z19grpc_msg_decompress26grpc_compression_algorithmP17grpc_slice_bufferS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !11
  switch i32 %0, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !16
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZL4copyP17grpc_slice_bufferS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i, %.lr.ph.i
  %.05.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i ] ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %.05.i ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = icmp ugt ptr %i.g, inttoptr (i64 1 to ptr)
  br i1 %i.h, label %bb.d, label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = atomicrmw add ptr %i.g, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i

_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i: ; preds = %bb.d, %bb.c
  tail call void @grpc_slice_buffer_add(ptr noundef %2, ptr noundef nonnull byval(%struct.grpc_slice) align 8 %i.f)
  %i.j = add nuw i64 %.05.i, 1                    ; 2 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !16
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZL4copyP17grpc_slice_bufferS0_.exit, !llvm.loop !0

bb.e:                                             ; preds = %bb.a
  %i.m = tail call fastcc noundef i32 @_ZL15zlib_decompressP17grpc_slice_bufferS0_i(ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %_ZL4copyP17grpc_slice_bufferS0_.exit

bb.f:                                             ; preds = %bb.a
  %i.n = tail call fastcc noundef i32 @_ZL15zlib_decompressP17grpc_slice_bufferS0_i(ptr noundef %1, ptr noundef %2, i32 noundef 1)
  br label %_ZL4copyP17grpc_slice_bufferS0_.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 190) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 30, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit unwind label %bb.i

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit: ; preds = %bb.g
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsI26grpc_compression_algorithmEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.i

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.h
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZL4copyP17grpc_slice_bufferS0_.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi31EEERS2_RAT__Kc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  resume { ptr, i32 } %i.p

_ZL4copyP17grpc_slice_bufferS0_.exit:             ; preds = %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i, %bb.b, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %bb.f, %bb.e
  %.0 = phi i32 [ 0, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ 1, %bb.b ], [ 1, %_ZN9grpc_core9CSliceRefERK10grpc_sliceNS_13DebugLocationE.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL15zlib_decompressP17grpc_slice_bufferS0_i(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.z_stream_s, align 8         ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @_ZL10zalloc_gprPvjj, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @_ZL9zfree_gprPvS_, ptr %i.f, align 8, !tbaa !27
  %5 = shl nuw nsw i32 %2, 4
  %6 = or disjoint i32 %5, 15
  %i.g = call i32 @inflateInit2_(ptr noundef nonnull %3, i32 noundef %6, ptr noundef nonnull @.str.2, i32 noundef 112)
  %.not25.not = icmp eq i32 %i.g, 0
  br i1 %.not25.not, label %.critedge, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @.str.3) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.i = call fastcc noundef i32 @_ZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iE(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @inflate) ; 2 uses
  %.not26 = icmp eq i32 %i.i, 0
  br i1 %.not26, label %.preheader, label %bb.g

.preheader:                                       ; preds = %.critedge
  %i.j = load i64, ptr %i.a, align 8, !tbaa !16
  %i.k = icmp ult i64 %i.b, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit
  %.027 = phi i64 [ %i.b, %.lr.ph ], [ %i.u, %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.027
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 4 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 1 to ptr)
  br i1 %i.p, label %bb.e, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.e:                                             ; preds = %bb.d
  %i.q = atomicrmw sub ptr %i.o, i64 1 acq_rel, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.o), !inline_history !1
  br label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = add nuw i64 %.027, 1                     ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !16
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !33

._crit_edge:                                      ; preds = %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit, %.preheader
  store i64 %i.b, ptr %i.a, align 8, !tbaa !16
  store i64 %i.d, ptr %i.c, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.critedge
  %i.x = call i32 @inflateEnd(ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsI26grpc_compression_algorithmEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !11
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13zlib_compressP17grpc_slice_bufferS0_i(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.z_stream_s, align 8         ; 8 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr @_ZL10zalloc_gprPvjj, ptr %i.e, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr @_ZL9zfree_gprPvS_, ptr %i.f, align 8, !tbaa !27
  %5 = shl nuw nsw i32 %2, 4
  %6 = or disjoint i32 %5, 15
  %i.g = call i32 @deflateInit2_(ptr noundef nonnull %3, i32 noundef -1, i32 noundef 8, i32 noundef %6, i32 noundef 8, i32 noundef 0, ptr noundef nonnull @.str.2, i32 noundef 112)
  %.not27.not = icmp eq i32 %i.g, 0
  br i1 %.not27.not, label %.critedge, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.3) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #12
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.i = call fastcc noundef i32 @_ZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iE(ptr noundef %3, ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @deflate)
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %.preheader, label %.split

.split:                                           ; preds = %.critedge
  %i.j = load i64, ptr %i.c, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.split, %.critedge
  %i.n = load i64, ptr %i.a, align 8, !tbaa !16
  %i.o = icmp ult i64 %i.b, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit
  %.029 = phi i64 [ %i.b, %.lr.ph ], [ %i.y, %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %.029
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20   ; 4 uses
  %i.t = icmp ugt ptr %i.s, inttoptr (i64 1 to ptr)
  br i1 %i.t, label %bb.e, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.e:                                             ; preds = %bb.d
  %i.u = atomicrmw sub ptr %i.s, i64 1 acq_rel, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.f, label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.s), !inline_history !1
  br label %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit

_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.y = add nuw i64 %.029, 1                     ; 2 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %_ZN9grpc_core11CSliceUnrefERK10grpc_sliceNS_13DebugLocationE.exit, %.preheader
  store i64 %i.b, ptr %i.a, align 8, !tbaa !16
  store i64 %i.d, ptr %i.c, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %.split, %._crit_edge
  %i.ab = phi i32 [ 1, %.split ], [ 0, %._crit_edge ]
  %i.ac = call i32 @deflateEnd(ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %i.ab
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL10zalloc_gprPvjj(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = mul i32 %2, %1
  %i.b = zext i32 %i.a to i64
  %i.c = tail call ptr @gpr_malloc(i64 noundef %i.b)
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL9zfree_gprPvS_(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  tail call void @gpr_free(ptr noundef %1)
  ret void
}

declare i32 @deflateInit2_(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL9zlib_bodyP10z_stream_sP17grpc_slice_bufferS2_PFiS0_iE(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.grpc_slice, align 8         ; 17 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %7 = alloca %struct.grpc_slice, align 8         ; 8 uses
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %9 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %10 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %11 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 7 uses
  %12 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @grpc_slice_malloc(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %4, i64 noundef 1024)
  %i.b = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ugt i64 %i.d, 4294967295
  %.not95 = select i1 %.not, i1 %i.e, i1 false
  br i1 %.not95, label %bb.b, label %.critedge, !prof !39

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str, i32 noundef 43, ptr noundef nonnull @.str.4) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #12
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #12
  unreachable

.critedge:                                        ; preds = %bb.a
  %.not96 = icmp eq ptr %i.b, null                ; 2 uses
  %i.g = and i64 %i.d, 255
  %i.h = select i1 %.not96, i64 %i.g, i64 %i.d
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 9 ; 3 uses
  %i.n = select i1 %.not96, ptr %i.m, ptr %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %.not158 = icmp eq i64 %i.q, 0
  br i1 %.not158, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = icmp eq i32 %i.i, 0
  br label %bb.e

bb.d:                                             ; preds = %.loopexit163
  %i.u = add nuw i64 %.088157, 1                  ; 2 uses
  %i.v = load i64, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %._crit_edge, !llvm.loop !37

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.pr = phi i1 [ %i.t, %.lr.ph ], [ false, %bb.d ]
  %i.x = phi i64 [ %i.q, %.lr.ph ], [ %i.v, %bb.d ]
  %.088157 = phi i64 [ 0, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %.089156 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.y = add i64 %i.x, -1
  %i.z = icmp eq i64 %.088157, %i.y
  %spec.select = select i1 %i.z, i32 4, i32 %.089156 ; 3 uses
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.088157 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  %.not100 = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  br i1 %.not100, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.af = icmp ugt i64 %i.ae, 4294967295
  br i1 %i.af, label %bb.g, label %.critedge111, !prof !39

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @.str.5) #10
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit133 unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit133: ; preds = %bb.g
end_hunk_0
