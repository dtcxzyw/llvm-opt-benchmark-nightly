inline.NumInlined: 624
inline.NumDeleted: 357
begin_hunk_0_@_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile14setFrameBufferERKNS_11FrameBufferE:bb.a
  invoke void @_Z13iex_debugTrapv()
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.r
  %i.be = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.s)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull @.str.1, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %bb.s
  %i.bg = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit unwind label %bb.w

_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bg)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull @.str.2, i64 noundef 65)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.w ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %bb.t
  %i.bj = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #24
          to label %bb.ac unwind label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.w:                                             ; preds = %bb.t, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %bb.s, %bb.r, %bb.u, %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile8fileNameEv.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bj) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.w ], [ %i.bm, %bb.x ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.bk, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ab

_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_55SliceESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_55SliceESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j, %bb.o
  %i.bn = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.029.0) #25
  br label %.preheader, !llvm.loop !114

_ZN27OpenImageIO_v3_1_Imf__3_3_511FrameBufferaSERKS0_.exit: ; preds = %bb.d
  %i.bo = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  ret void

bb.aa:                                            ; preds = %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.f, %bb.z, %bb.aa
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.aa ], [ %i.o, %bb.e ], [ %i.p, %bb.f ], [ %.pn.pn, %bb.z ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bq = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

bb.ac:                                            ; preds = %bb.u
  unreachable
}

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer5beginEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer3endEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context11findChannelEiPKc(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_Z13iex_debugTrapv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN7Iex_3_36ArgExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile11frameBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #24
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  ret ptr %i.f
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10isCompleteEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70
  %i.e = tail call noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context15chunkTableValidEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d)
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context15chunkTableValidEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile21isOptimizationEnabledEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70
  %i.e = tail call noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8channelsEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !115
  %i.g = icmp ne i32 %i.f, 2
  ret i1 %i.g
}

declare noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8channelsEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile10readPixelsEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile11frameBufferEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #24
  unreachable

_ZNK27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile11frameBufferEv.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #22 ; 0 uses
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %struct.exr_chunk_info_t, align 8   ; 10 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 6 uses
  %8 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::ProcessGroup", align 8 ; 14 uses
  %9 = alloca %"class.OpenImageIO_v3_1_IlmThread__3_3_5::TaskGroup", align 8 ; 7 uses
  %10 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !70
  %i.e = tail call { i64, i64 } @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context10dataWindowEi(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i32 noundef %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 1, ptr %i.a, align 4, !tbaa !3
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = load i32, ptr %i.c, align 8, !tbaa !70
  %i.j = call i32 @exr_get_scanlines_per_chunk(ptr noundef %i.h, i32 noundef %i.i, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.11, i64 noundef 48)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !24
  %i.n = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_57Context8fileNameEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.n)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.12, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59: ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(128) %6)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #24
          to label %bb.cg unwind label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit59
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn51 = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cf

bb.i:                                             ; preds = %bb.a
  %i.t = extractvalue { i64, i64 } %i.e, 1
  %i.u = extractvalue { i64, i64 } %i.e, 0
  %spec.select = call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 5 uses
  %spec.select97 = call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 8 uses
  %.sroa.0.4.extract.shift = lshr i64 %i.u, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32 ; 2 uses
  %i.v = icmp slt i32 %spec.select, %.sroa.0.4.extract.trunc
  %.sroa.6.12.extract.shift = lshr i64 %i.t, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32 ; 2 uses
  %i.w = icmp sgt i32 %spec.select97, %.sroa.6.12.extract.trunc
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @_Z13iex_debugTrapv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.13, i64 noundef 62)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %bb.j
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.x, i32 noundef %spec.select)
          to label %bb.k unwind label %bb.p       ; 2 uses

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61: ; preds = %bb.k
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %spec.select97)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.15, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62: ; preds = %bb.l
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef %.sroa.0.4.extract.trunc)
          to label %bb.m unwind label %bb.p       ; 2 uses

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62
  %i.ae = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.14, i64 noundef 3)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %bb.m
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.sroa.6.12.extract.trunc)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.ag = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_36ArgExcC1ERNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(128) %7)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN7Iex_3_36ArgExcE, ptr nonnull @_ZN7Iex_3_36ArgExcD1Ev) #24
          to label %bb.cg unwind label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.o, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit62, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit61, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn49 = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.ai, %bb.q ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.cf

bb.s:                                             ; preds = %bb.i
  %i.aj = sext i32 %spec.select97 to i64          ; 2 uses
  %i.ak = sext i32 %spec.select to i64
  %i.al = sub nsw i64 %i.aj, %i.ak
  %i.am = load i32, ptr %i.a, align 4, !tbaa !3
  %i.an = sext i32 %i.am to i64
  %i.ao = sdiv i64 %i.al, %i.an
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %bb.t, label %bb.bb

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !77 ; 6 uses
  %i.as = icmp sgt i32 %i.ar, 1
  br i1 %i.as, label %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.bb

_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59SemaphoreC1Ej(ptr noundef nonnull align 8 dereferenceable(80) %8, i32 noundef %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  %i.au = zext nneg i32 %i.ar to i64              ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, i8 0, i64 40, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ax = mul nuw nsw i64 %i.au, 584
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #21
          to label %.lr.ph.i.i.i33.i.i.i.preheader unwind label %bb.u ; 10 uses

.lr.ph.i.i.i33.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i33.i.i.i.prol.loopexit, label %.lr.ph.i.i.i33.i.i.i.prol

.lr.ph.i.i.i33.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i33.i.i.i.preheader, %.lr.ph.i.i.i33.i.i.i.prol
  %.08.i.i.i34.i.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i33.i.i.i.prol ], [ %i.ay, %.lr.ph.i.i.i33.i.i.i.preheader ] ; 4 uses
  %.057.i.i.i35.i.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.i33.i.i.i.prol ], [ %i.au, %.lr.ph.i.i.i33.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i33.i.i.i.prol ], [ 0, %.lr.ph.i.i.i33.i.i.i.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %.08.i.i.i34.i.i.i.prol, i8 0, i64 584, i1 false)
  store i32 33, ptr %.08.i.i.i34.i.i.i.prol, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i34.i.i.i.prol, i64 4
  store i8 1, ptr %i.az, align 4, !tbaa !129
  %i.ba = add nsw i64 %.057.i.i.i35.i.i.i.prol, -1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i34.i.i.i.prol, i64 584 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i33.i.i.i.prol.loopexit, label %.lr.ph.i.i.i33.i.i.i.prol, !llvm.loop !130

.lr.ph.i.i.i33.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i33.i.i.i.prol, %.lr.ph.i.i.i33.i.i.i.preheader
  %.08.i.i.i34.i.i.i.unr = phi ptr [ %i.ay, %.lr.ph.i.i.i33.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i33.i.i.i.prol ]
  %.057.i.i.i35.i.i.i.unr = phi i64 [ %i.au, %.lr.ph.i.i.i33.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i33.i.i.i.prol ]
  %i.bc = icmp ult i32 %i.ar, 4
  br i1 %i.bc, label %.lr.ph.i.split, label %.lr.ph.i.i.i33.i.i.i

.lr.ph.i.i.i33.i.i.i:                             ; preds = %.lr.ph.i.i.i33.i.i.i.prol.loopexit, %.lr.ph.i.i.i33.i.i.i
  %.08.i.i.i34.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i33.i.i.i ], [ %.08.i.i.i34.i.i.i.unr, %.lr.ph.i.i.i33.i.i.i.prol.loopexit ] ; 10 uses
  %.057.i.i.i35.i.i.i = phi i64 [ %i.bk, %.lr.ph.i.i.i33.i.i.i ], [ %.057.i.i.i35.i.i.i.unr, %.lr.ph.i.i.i33.i.i.i.prol.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %.08.i.i.i34.i.i.i, i8 0, i64 584, i1 false)
  store i32 33, ptr %.08.i.i.i34.i.i.i, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i34.i.i.i, i64 4
  store i8 1, ptr %i.bd, align 4, !tbaa !129
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i.i34.i.i.i, i64 584 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(584) %i.be, i8 0, i64 584, i1 false)
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data10readPixelsERKNS_11FrameBufferEii:bb.a
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %1, ptr %i.dd, align 8, !tbaa !143
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %0, ptr %i.de, align 8, !tbaa !149
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  store i32 %.025115, ptr %i.df, align 8, !tbaa !150
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 36
  store i32 %spec.select97, ptr %i.dg, align 4, !tbaa !151
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59Semaphore4waitEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %.noexc.i unwind label %.loopexit.split-lp.i.loopexit

.noexc.i:                                         ; preds = %.noexc64
  %i.dh = load atomic ptr, ptr %i.cd acquire, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6atomicIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEE21compare_exchange_weakERS3_S3_St12memory_order.exit.i.i, %.noexc.i
  %.0.i.i = phi ptr [ %i.dh, %.noexc.i ], [ %i.ed, %_ZNSt6atomicIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEE21compare_exchange_weakERS3_S3_St12memory_order.exit.i.i ] ; 5 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %bb.ar, label %.noexc15.i

bb.ar:                                            ; preds = %bb.aq
  %i.di = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.19, i64 noundef 29)
          to label %.noexc10.i unwind label %.loopexit.i ; 0 uses

.noexc10.i:                                       ; preds = %bb.ar
  %i.dj = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !22
  %i.dk = getelementptr i8, ptr %i.dj, i64 -24
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 240
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !152 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i, label %bb.as, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.as:                                            ; preds = %.noexc10.i
  invoke void @_ZSt16__throw_bad_castv() #24
          to label %.noexc11.i unwind label %.loopexit.split-lp.i.loopexit.split-lp

.noexc11.i:                                       ; preds = %bb.as
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %.noexc10.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !167
  %.not.i1.i.i.i.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i1.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 67
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !12
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i

bb.au:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.do)
          to label %.noexc12.i unwind label %.loopexit.i

.noexc12.i:                                       ; preds = %bb.au
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef signext i8 %i.dv(ptr noundef nonnull align 8 dereferenceable(570) %i.do, i8 noundef signext 10)
          to label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i unwind label %.loopexit.i, !inline_history !172

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i: ; preds = %.noexc12.i, %bb.at
  %.0.i.i.i.i.i = phi i8 [ %i.ds, %bb.at ], [ %i.dw, %.noexc12.i ]
  %i.dx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i.i.i)
          to label %.noexc14.i unwind label %.loopexit.i

.noexc14.i:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i
  %i.dy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dx)
          to label %.noexc15.i unwind label %.loopexit.i ; 0 uses

.noexc15.i:                                       ; preds = %.noexc14.i, %bb.aq
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 576
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !137
  %i.eb = cmpxchg weak ptr %i.cd, ptr %.0.i.i, ptr %i.ea acquire acquire, align 8 ; 2 uses
  %i.ec = extractvalue { ptr, i1 } %i.eb, 1
  br i1 %i.ec, label %bb.av, label %_ZNSt6atomicIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEE21compare_exchange_weakERS3_S3_St12memory_order.exit.i.i

_ZNSt6atomicIPN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEE21compare_exchange_weakERS3_S3_St12memory_order.exit.i.i: ; preds = %.noexc15.i
  %i.ed = extractvalue { ptr, i1 } %i.eb, 0
  br label %bb.aq

.loopexit.i:                                      ; preds = %.noexc14.i, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit.i.i, %.noexc12.i, %bb.au, %bb.ar
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit:                    ; preds = %.noexc64
  %lpad.loopexit98 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i.loopexit.split-lp:           ; preds = %bb.as
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.i.loopexit, %.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit98, %.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp99, %.loopexit.split-lp.i.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_54TaskD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(56) %i.dc) #22
  br label %.body65

bb.av:                                            ; preds = %.noexc15.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr %.0.i.i, ptr %i.ee, align 8, !tbaa !173
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  store ptr %8, ptr %i.ef, align 8, !tbaa !174
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(64) %5, i64 64, i1 false), !tbaa.struct !175
  invoke void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_510ThreadPool13addGlobalTaskEPNS_4TaskE(ptr noundef nonnull %i.dc)
          to label %bb.aw unwind label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.eh = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ei = load i32, ptr %i.ce, align 8, !tbaa !176
  %i.ej = add i32 %i.ei, %i.eh                    ; 2 uses
  %.not42 = icmp sgt i32 %i.ej, %spec.select97
  br i1 %.not42, label %bb.ab, label %bb.aj, !llvm.loop !177

bb.ax:                                            ; preds = %bb.ap
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body65

.body65:                                          ; preds = %.loopexit.split-lp.i, %bb.ax
  %eh.lpad-body66 = phi { ptr, i32 } [ %i.ek, %bb.ax ], [ %lpad.phi.i, %.loopexit.split-lp.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 56) #23
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body65, %bb.an
  %.pn44 = phi { ptr, i32 } [ %eh.lpad-body66, %.body65 ], [ %i.db, %bb.an ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_59TaskGroupD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #22
  br label %bb.az

_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EE16throw_on_failureEv.exit: ; preds = %bb.ab
  call fastcc void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ce

bb.az:                                            ; preds = %bb.ay, %bb.ai
  %.pn44.pn = phi { ptr, i32 } [ %.pn44, %bb.ay ], [ %i.cu, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.body

bb.ba:                                            ; preds = %bb.ac
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i, %bb.az
  %.pn44.pn.pn = phi { ptr, i32 } [ %.pn44.pn, %bb.az ], [ %i.el, %bb.ba ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i ]
  call fastcc void @_ZN33OpenImageIO_v3_1_IlmThread__3_3_512ProcessGroupIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cf

bb.bb:                                            ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.en = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !178 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_system_errori(i32 noundef %i.en) #24, !noalias !178
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.bb
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %.val.i = load ptr, ptr %i.eo, align 8, !noalias !178 ; 3 uses
  %.not.i67 = icmp eq ptr %.val.i, null
  br i1 %.not.i67, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ep = ptrtoint ptr %.val.i to i64
  store i64 %i.ep, ptr %10, align 8, !tbaa !181, !alias.scope !178
  store ptr null, ptr %i.eo, align 8, !tbaa !181, !noalias !178
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit

bb.be:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.eq = invoke noalias noundef nonnull dereferenceable(584) ptr @_Znwm(i64 noundef 584) #21
          to label %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i unwind label %bb.bf, !noalias !178 ; 5 uses

_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i: ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %i.eq, i8 0, i64 584, i1 false), !noalias !185
  store i32 33, ptr %i.eq, align 8, !tbaa !123, !noalias !185
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i8 1, ptr %i.er, align 4, !tbaa !129, !noalias !185
  store ptr %i.eq, ptr %10, align 8, !tbaa !181, !alias.scope !185
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit

bb.bf:                                            ; preds = %bb.be
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !178 ; 0 uses
  br label %common.resume

_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit: ; preds = %bb.bd, %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i
  %.val58 = phi ptr [ %.val.i, %bb.bd ], [ %i.eq, %_ZSt11make_uniqueIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i ] ; 17 uses
  %i.eu = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22, !noalias !178 ; 0 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.val58, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %.val58, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %.val58, i64 168
  %i.fa = getelementptr inbounds nuw i8, ptr %.val58, i64 172 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val58, i64 20
  %i.fc = getelementptr inbounds nuw i8, ptr %.val58, i64 88 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.val58, i64 80
  %i.fe = getelementptr inbounds nuw i8, ptr %.val58, i64 12
  %i.ff = getelementptr inbounds nuw i8, ptr %.val58, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %.val58, i64 144
  %i.fh = getelementptr inbounds nuw i8, ptr %.val58, i64 328
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.bl

bb.bg:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %i.fk = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.em) #22 ; 2 uses
  %.not.i.i.i68 = icmp eq i32 %i.fk, 0
  br i1 %.not.i.i.i68, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.fk) #24
          to label %.noexc71 unwind label %bb.cd

.noexc71:                                         ; preds = %bb.bh
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69:      ; preds = %bb.bg
  %i.fl = load ptr, ptr %i.eo, align 8, !tbaa !181 ; 5 uses
  store ptr %.val58, ptr %i.eo, align 8, !tbaa !181
  %.not.i.i.i.i.i70 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i70, label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i69
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !129, !range !87, !noundef !88
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !186
  %i.fs = invoke i32 @exr_decoding_destroy(ptr noundef %i.fr, ptr noundef nonnull %i.fp)
          to label %_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i unwind label %bb.bk ; 0 uses

bb.bk:                                            ; preds = %bb.bj
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #26
  unreachable

_ZNKSt14default_deleteIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 584) #23
  br label %_ZNSt10unique_ptrIN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcessESt14default_deleteIS2_EED2Ev.exit

bb.bl:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit
  %.0114 = phi i32 [ %spec.select, %_ZN27OpenImageIO_v3_1_Imf__3_3_517ScanLineInputFile4Data12checkoutScanEv.exit ], [ %i.iy, %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess10run_unpackEPK19_priv_exr_context_tiPKNS_11FrameBufferEiiRKSt6vectorINS_5SliceESaIS9_EE.exit ] ; 5 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !117
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !121
  %i.fy = load i32, ptr %i.c, align 8, !tbaa !70
  %i.fz = invoke i32 @exr_read_scanline_chunk_info(ptr noundef %i.fx, i32 noundef %i.fy, i32 noundef %.0114, ptr noundef nonnull %5)
          to label %bb.bm unwind label %.loopexit.split-lp102.loopexit

bb.bm:                                            ; preds = %bb.bl
  %.not39 = icmp eq i32 %i.fz, 0
  br i1 %.not39, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ga = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ga, ptr noundef nonnull @.str.16)
          to label %.invoke unwind label %bb.bo

.loopexit101:                                     ; preds = %.lr.ph.i.i
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit:                   ; preds = %bb.cb, %bb.by, %bb.cc, %bb.bl
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

.loopexit.split-lp102.loopexit.split-lp:          ; preds = %.invoke
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.body77

bb.bo:                                            ; preds = %bb.bn
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ga) #22
  br label %.body77

bb.bp:                                            ; preds = %bb.bm
  %i.gc = load i8, ptr %i.ev, align 4, !tbaa !129, !range !87, !noundef !88
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.cc, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ge = load i32, ptr %i.ew, align 8, !tbaa !187
  %i.gf = load i32, ptr %5, align 8, !tbaa !188
  %i.gg = icmp eq i32 %i.ge, %i.gf
  br i1 %i.gg, label %bb.br, label %bb.cc

bb.br:                                            ; preds = %bb.bq
  %i.gh = load i32, ptr %.val58, align 8, !tbaa !123
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.bs, label %bb.cc

bb.bs:                                            ; preds = %bb.br
  %i.gj = load i32, ptr %i.ey, align 8, !tbaa !189 ; 2 uses
  %i.gk = sub nsw i32 %.0114, %i.gj
  store i32 %i.gk, ptr %i.ez, align 8, !tbaa !190
  store i32 0, ptr %i.fa, align 4, !tbaa !191
  %i.gl = sext i32 %i.gj to i64
  %i.gm = load i32, ptr %i.fb, align 4, !tbaa !192
  %i.gn = sext i32 %i.gm to i64
  %i.go = add nsw i64 %i.gl, -1
  %i.gp = add nsw i64 %i.go, %i.gn                ; 2 uses
  %i.gq = icmp sgt i64 %i.gp, %i.aj
  br i1 %i.gq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.gr = trunc i64 %i.gp to i32
  %i.gs = sub i32 %i.gr, %spec.select97
  store i32 %i.gs, ptr %i.fa, align 4, !tbaa !191
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.gt = load i16, ptr %i.fc, align 8, !tbaa !193
  %i.gu = icmp sgt i16 %i.gt, 0
  br i1 %i.gu, label %.lr.ph.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i

.lr.ph.i.i:                                       ; preds = %bb.bu, %bb.bw
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bw ], [ 0, %bb.bu ] ; 2 uses
  %i.gv = load ptr, ptr %i.fd, align 8, !tbaa !194
  %i.gw = getelementptr inbounds nuw [48 x i8], ptr %i.gv, i64 %indvars.iv.i.i ; 7 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !195
  %i.gy = invoke noundef ptr @_ZNK27OpenImageIO_v3_1_Imf__3_3_511FrameBuffer9findSliceEPKc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.gx)
          to label %.noexc74 unwind label %.loopexit101 ; 7 uses

.noexc74:                                         ; preds = %.lr.ph.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !197
  %i.hb = icmp ne i32 %i.ha, 0
  %i.hc = icmp ne ptr %i.gy, null
  %or.cond.i.i = and i1 %i.hc, %i.hb
  br i1 %or.cond.i.i, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %.noexc74
  %i.hd = load i32, ptr %i.gy, align 8, !tbaa !198 ; 2 uses
  %i.he = icmp eq i32 %i.hd, 1
  %i.hf = select i1 %i.he, i16 2, i16 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gw, i64 28
  store i16 %i.hf, ptr %i.hg, align 4, !tbaa !199
  %i.hh = trunc i32 %i.hd to i16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gw, i64 30
  store i16 %i.hh, ptr %i.hi, align 2, !tbaa !200
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !201 ; 2 uses
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !202 ; 2 uses
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !203
  %i.hr = load i32, ptr %i.fe, align 4, !tbaa !204
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !110
  %i.hu = sdiv i32 %i.hr, %i.ht
  %i.hv = sext i32 %i.hu to i64
  %i.hw = mul nsw i64 %i.hk, %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.hq, i64 %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gy, i64 36
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !113
  %i.ia = sdiv i32 %.0114, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul nsw i64 %i.hn, %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.hx, i64 %i.ic
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.noexc74
  %.sink40.i.i = phi i32 [ %i.hl, %bb.bv ], [ 0, %.noexc74 ]
  %.sink39.i.i = phi i32 [ %i.ho, %bb.bv ], [ 0, %.noexc74 ]
  %.sink.i.i = phi ptr [ %i.id, %bb.bv ], [ null, %.noexc74 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store i32 %.sink40.i.i, ptr %i.ie, align 8, !tbaa !205
  %i.if = getelementptr inbounds nuw i8, ptr %i.gw, i64 36
  store i32 %.sink39.i.i, ptr %i.if, align 4, !tbaa !206
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  store ptr %.sink.i.i, ptr %i.ig, align 8, !tbaa !12
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ih = load i16, ptr %i.fc, align 8, !tbaa !193
  %i.ii = sext i16 %i.ih to i64
  %i.ij = icmp slt i64 %indvars.iv.next.i.i, %i.ii
  br i1 %i.ij, label %.lr.ph.i.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i, !llvm.loop !207

_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i: ; preds = %bb.bw, %bb.bu
  %i.ik = load i64, ptr %i.fg, align 8, !tbaa !208
  %.not.i72 = icmp eq i64 %i.ik, 0
  br i1 %.not.i72, label %bb.cb, label %bb.bx

bb.bx:                                            ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_512_GLOBAL__N_115ScanLineProcess15update_pointersEPKNS_11FrameBufferEii.exit.i
  %i.il = load ptr, ptr %i.fh, align 8, !tbaa !209 ; 2 uses
  %.not8.i = icmp eq ptr %i.il, null
  br i1 %.not8.i, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.im = invoke noundef i32 %i.il(ptr noundef nonnull %i.ff)
          to label %.noexc75 unwind label %.loopexit.split-lp102.loopexit, !inline_history !210 ; 2 uses

.noexc75:                                         ; preds = %bb.by
  store i32 %i.im, ptr %.val58, align 8, !tbaa !123
  %.not9.i = icmp eq i32 %i.im, 0
  br i1 %.not9.i, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %.noexc75
  %i.in = call ptr @__cxa_allocate_exception(i64 72) #22 ; 3 uses
  invoke void @_ZN7Iex_3_35IoExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull @.str.23)
          to label %.invoke unwind label %bb.ca

.invoke:                                          ; preds = %bb.bn, %bb.bz
  %i.io = phi ptr [ %i.in, %bb.bz ], [ %i.ga, %bb.bn ]
  %i.ip = phi ptr [ @_ZTIN7Iex_3_35IoExcE, %bb.bz ], [ @_ZTIN7Iex_3_38InputExcE, %bb.bn ]
  %i.iq = phi ptr [ @_ZN7Iex_3_35IoExcD1Ev, %bb.bz ], [ @_ZN7Iex_3_38InputExcD1Ev, %bb.bn ]
  invoke void @__cxa_throw(ptr nonnull %i.io, ptr nonnull %i.ip, ptr nonnull %i.iq) #24
          to label %.cont unwind label %.loopexit.split-lp102.loopexit.split-lp
end_hunk_1
