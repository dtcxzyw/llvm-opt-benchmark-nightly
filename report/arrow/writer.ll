inline.NumInlined: 5023
inline.NumDeleted: 1781
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIjEeqES1_:bb.a
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc15WriteIpcPayloadERKNS0_10IpcPayloadERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %3, ptr noundef %4)
  %i.c = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.preheader, label %.critedge.thread

.preheader:                                       ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %.not67 = icmp eq ptr %i.g, %i.h
  br i1 %.not67, label %.critedge.thread.sink.split, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.critedge44
  %i.i = phi ptr [ %i.ae, %.critedge44 ], [ %i.h, %.preheader ]
  %.03466 = phi i64 [ %i.ac, %.critedge44 ], [ 0, %.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %.03466 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.critedge44, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 3 uses
  %i.n = add i64 %i.m, 7
  %i.o = and i64 %i.n, -8
  %i.p = sub nsw i64 %i.o, %i.m                   ; 2 uses
  %i.q = icmp sgt i64 %i.m, 0
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit50, label %_ZN5arrow6StatusD2Ev.exit54

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.r = load ptr, ptr %3, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.u = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge.thread.sink.split

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %bb.a
  %i.w = icmp sgt i64 %i.p, 0
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit56, label %.critedge44

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZN5arrow6StatusD2Ev.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.x = load ptr, ptr %3, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN5arrow3ipcL13kPaddingBytesE, i64 noundef %i.p)
  %i.aa = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge44, label %.critedge.thread.sink.split

.critedge44:                                      ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit56, %_ZN5arrow6StatusD2Ev.exit54
  %i.ac = add nuw i64 %.03466, 1                  ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8, !tbaa !42
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !45  ; 2 uses
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = icmp ult i64 %i.ac, %i.ai
  br i1 %i.aj, label %.lr.ph, label %.critedge.thread.sink.split, !llvm.loop !57

.critedge.thread.sink.split:                      ; preds = %_ZN5arrow6StatusD2Ev.exit50, %_ZN5arrow6StatusD2Ev.exit56, %.critedge44, %.preheader
  %.sink = phi ptr [ null, %.preheader ], [ %i.u, %_ZN5arrow6StatusD2Ev.exit50 ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit56 ], [ null, %.critedge44 ]
  store ptr %.sink, ptr %0, align 8
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16GetSchemaPayloadERKNS_6SchemaERKNS0_15IpcWriteOptionsERKNS0_21DictionaryFieldMapperEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef initializes((0, 4)) %4) local_unnamed_addr #1 {
bb.a:
  store i32 1, ptr %4, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  tail call void @_ZN5arrow3ipc8internal18WriteSchemaMessageERKNS_6SchemaERKNS0_21DictionaryFieldMapperERKNS0_15IpcWriteOptionsEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull %i.a)
  ret void
}

declare void @_ZN5arrow3ipc8internal18WriteSchemaMessageERKNS_6SchemaERKNS0_21DictionaryFieldMapperERKNS0_15IpcWriteOptionsEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20GetDictionaryPayloadElRKSt10shared_ptrINS_5ArrayEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef initializes((0, 4)) %4) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN5arrow3ipc20GetDictionaryPayloadElbRKSt10shared_ptrINS_5ArrayEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i64 noundef %1, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20GetDictionaryPayloadElbRKSt10shared_ptrINS_5ArrayEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef initializes((0, 4)) %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::shared_ptr.48", align 16 ; 8 uses
  %7 = alloca %"class.std::vector.77", align 8    ; 10 uses
  %8 = alloca [1 x %"class.std::shared_ptr.238"], align 16 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.64", align 16 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.58", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.48", align 16 ; 6 uses
  %15 = alloca %"class.std::vector.244", align 8  ; 10 uses
  %16 = alloca [1 x %"class.std::shared_ptr.32"], align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.249", align 8 ; 6 uses
  %18 = alloca %"class.arrow::ipc::(anonymous namespace)::DictionarySerializer", align 8 ; 14 uses
  store i32 2, ptr %5, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %18, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false)
  store ptr %4, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !88
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %i.e, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 120
  store i64 0, ptr %i.i, align 8, !tbaa !100
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_120DictionarySerializerE, i32 0, i32 0, i32 2), ptr %18, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 128
  store i64 %1, ptr %i.j, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 136
  store i8 %i.a, ptr %i.k, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !104
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.l, ptr %9, align 8, !tbaa !107, !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.l, ptr noundef nonnull align 1 dereferenceable(10) @.str.3, i64 10, i1 false), !noalias !104
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 10, ptr %i.m, align 8, !tbaa !109, !noalias !104
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 26
  store i8 0, ptr %i.n, align 2, !tbaa !111, !noalias !104
  %i.o = load ptr, ptr %3, align 8, !tbaa !112, !noalias !104
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115, !noalias !104 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118, !noalias !104 ; 2 uses
  %i.u = load <2 x ptr>, ptr %i.q, align 8, !tbaa !119, !noalias !104
  store <2 x ptr> %i.u, ptr %10, align 16, !tbaa !119, !noalias !104
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3, !noalias !104
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3, !noalias !104
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !104 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !104
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.238") align 8 %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext true, ptr noundef nonnull %11)
          to label %bb.e unwind label %bb.ch, !noalias !104

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !104
  %i.aa = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #29
          to label %.noexc28.i unwind label %bb.ci, !noalias !104 ; 3 uses

.noexc28.i:                                       ; preds = %bb.e
  store ptr %i.aa, ptr %7, align 8, !tbaa !120, !noalias !104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !123, !noalias !104
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118, !noalias !104 ; 2 uses
  %i.af = load <2 x ptr>, ptr %8, align 16, !tbaa !119, !noalias !104
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !119, !noalias !104
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc28.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !104
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3, !noalias !104
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !104 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %.noexc28.i
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.al, align 8, !tbaa !124, !noalias !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !noalias !104
  invoke void @_ZN5arrow6schemaESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.48") align 8 %6, ptr noundef nonnull %7, ptr noundef nonnull %12)
          to label %bb.i unwind label %bb.cj, !noalias !104

bb.i:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !118, !noalias !104 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8, !noalias !104 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ao, align 8, !tbaa !125, !noalias !104
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !127, !noalias !104
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !55, !noalias !104
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !104
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !noalias !104, !inline_history !128
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !55, !noalias !104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !104
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !noalias !104, !inline_history !128
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.l:                                             ; preds = %bb.j
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i29.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i29.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3, !noalias !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4, !noalias !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.bb, %bb.n ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bc, label %bb.o, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #28, !noalias !104
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k, %bb.i
  %i.bd = load ptr, ptr %7, align 8, !tbaa !120, !noalias !104 ; 3 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !124, !noalias !104 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i ], [ %i.bd, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !118, !noalias !104 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8, !noalias !104 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bh, align 8, !tbaa !125, !noalias !104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !127, !noalias !104
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !55, !noalias !104
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !104
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28, !noalias !104, !inline_history !130
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !55, !noalias !104
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !104
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28, !noalias !104, !inline_history !130
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3, !noalias !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4, !noalias !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.s ], [ %i.bu, %bb.t ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.u, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i, !prof !129

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #28, !noalias !104
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc20GetDictionaryPayloadElbRKSt10shared_ptrINS_5ArrayEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE:bb.a
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !118, !noalias !104 ; 8 uses
  %.not.i.i75.i = icmp eq ptr %i.ic, null
  br i1 %.not.i.i75.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 4 uses
  %i.ie = load atomic i64, ptr %i.id acquire, align 8 ; 2 uses
  %i.if = icmp eq i64 %i.ie, 4294967297
  %i.ig = trunc i64 %i.ie to i32                  ; 2 uses
  br i1 %i.if, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.id, align 8, !tbaa !125
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 12
  store i32 0, ptr %i.ih, align 4, !tbaa !127
  %i.ii = load ptr, ptr %i.ic, align 8, !tbaa !55
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #28, !inline_history !167
  %i.il = load ptr, ptr %i.ic, align 8, !tbaa !55
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #28, !inline_history !167
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.io = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i76.i = icmp eq i8 %i.io, 0
  br i1 %.not.i.i.i76.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ip = add nsw i32 %i.ig, -1
  store i32 %i.ip, ptr %i.id, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i

bb.bz:                                            ; preds = %bb.bx
  %i.iq = atomicrmw volatile add ptr %i.id, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i78.i = phi i32 [ %i.ig, %bb.by ], [ %i.iq, %bb.bz ]
  %i.ir = icmp eq i32 %.0.i.i.i.i78.i, 1
  br i1 %i.ir, label %bb.ca, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ic) #28
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i, %bb.bw, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !104
  %i.is = load ptr, ptr %i.ee, align 8, !tbaa !118, !noalias !104 ; 8 uses
  %.not.i.i79.i = icmp eq ptr %i.is, null
  br i1 %.not.i.i79.i, label %bb.cp, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.it, align 8, !tbaa !125
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !127
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !55
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #28, !inline_history !163
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !55
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #28, !inline_history !163
  br label %bb.cp

bb.cd:                                            ; preds = %bb.cb
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !104
  %.not.i.i.i80.i = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i80.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81.i

bb.cf:                                            ; preds = %bb.cd
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i82.i = phi i32 [ %i.iw, %bb.ce ], [ %i.jg, %bb.cf ]
  %i.jh = icmp eq i32 %.0.i.i.i.i82.i, 1
  br i1 %i.jh, label %bb.cg, label %bb.cp, !prof !129

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #28
  br label %bb.cp

bb.ch:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.ci:                                            ; preds = %bb.e
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit.i

bb.cj:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #28, !noalias !104
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #28, !noalias !104
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.cj, %bb.ci
  %.pn.i = phi { ptr, i32 } [ %i.jk, %bb.cj ], [ %i.jj, %bb.ci ]
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28, !noalias !104
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.ch
  %.pn.pn.i = phi { ptr, i32 } [ %i.ji, %bb.ch ], [ %.pn.i, %.loopexit.loopexit.i ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #28, !noalias !104
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #28, !noalias !104
  %i.jl = load ptr, ptr %9, align 8, !tbaa !134, !noalias !104 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.l
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %.loopexit.i
  %i.jn = load i64, ptr %i.l, align 8, !tbaa !111, !noalias !104
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #30, !noalias !104
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %.loopexit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !104
  br label %.body

bb.ck:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5ArrayEEC2ERKS2_.exit.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.i
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6Device9SyncEventELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #28, !noalias !104
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #28, !noalias !104
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn21.i = phi { ptr, i32 } [ %i.jq, %bb.cl ], [ %i.jp, %bb.ck ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #28, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !104
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #28, !noalias !104
  br label %bb.co

bb.cn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.jr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #28
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn23.i = phi { ptr, i32 } [ %i.jr, %bb.cn ], [ %.pn21.i, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !104
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %.body

.body:                                            ; preds = %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i
  %.pn23.pn.i = phi { ptr, i32 } [ %.pn23.i, %bb.co ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !104
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(137) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  resume { ptr, i32 } %.pn23.pn.i

bb.cp:                                            ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i81.i, %bb.cc, %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dereferenceable(137) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc21GetRecordBatchPayloadERKNS_11RecordBatchERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef initializes((0, 4)) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i:
  %4 = alloca %"class.arrow::ipc::(anonymous namespace)::RecordBatchSerializer", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.35", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 3, ptr %3, align 8, !tbaa !59, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !168
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i32 0, i32 0, i32 2), ptr %4, align 8, !tbaa !55, !noalias !168
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !70, !noalias !168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  store ptr %2, ptr %i.c, align 8, !tbaa !87, !noalias !168
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !88, !noalias !168
  %i.g = sext i32 %i.f to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !99, !noalias !168
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 0, ptr %i.h, align 8, !tbaa !100, !noalias !168
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %.body

.body:                                            ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !168
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.i

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc21GetRecordBatchPayloadERKNS_11RecordBatchERKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr noundef initializes((0, 4)) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::ipc::(anonymous namespace)::RecordBatchSerializer", align 8 ; 13 uses
  store i32 3, ptr %4, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val6 = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.d = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !119
  %.not.i.i.i.i = icmp eq ptr %.val6, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val6, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  store ptr %3, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !88
  %i.o = sext i32 %i.n to i64
  store i64 %i.o, ptr %i.l, align 8, !tbaa !99
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.p, align 8, !tbaa !100
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__shared_ptr.362", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.395", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Future", align 16    ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %9 = alloca %"class.arrow::StopToken", align 16 ; 6 uses
  %10 = alloca %"class.arrow::internal::FnOnce.386", align 8 ; 7 uses
  %11 = alloca %"struct.arrow::internal::TaskHints", align 8 ; 5 uses
  %12 = alloca %"class.arrow::StopToken", align 16 ; 7 uses
  %13 = alloca %"class.std::vector.352", align 8  ; 12 uses
  %14 = alloca %"class.arrow::Result.357", align 8 ; 13 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %19 = alloca %"class.std::shared_ptr.32", align 8 ; 7 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %20 = alloca %"struct.std::_Setprecision", align 4 ; 4 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !172
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5clearEv.exit, label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE5clearEv.exit: ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !173
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !174  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !175
  %.not.i.i55 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i55, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN5arrow3ipc8internal14BufferMetadataES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow3ipc8internal14BufferMetadataES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE5clearEv.exit
  store ptr %i.h, ptr %i.i, align 8, !tbaa !175
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE5clearEv.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE5clearEv.exit, %_ZSt8_DestroyIPN5arrow3ipc8internal14BufferMetadataES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42   ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i56, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE5clearEv.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE5clearEv.exit ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.s, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !127
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !176
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #28, !inline_history !176
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE:bb.a

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !182, !noalias !195, !nonnull !183, !align !184
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 56
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !199, !range !187, !noundef !183
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = load ptr, ptr %i.bm, align 8, !tbaa !70, !noalias !195 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !42
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !45
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm                    ; 2 uses
  %i.do = lshr exact i64 %i.dn, 4                 ; 3 uses
  %i.dp = trunc i64 %i.do to i32                  ; 3 uses
  %i.dq = call noundef ptr @_ZN5arrow8internal16GetCpuThreadPoolEv() ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  br i1 %i.df, label %bb.z, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.y
  %i.dr = icmp sgt i32 %i.dp, 0
  br i1 %i.dr, label %_ZN5arrow6StatusD2Ev.exit.preheader.i.i, label %_ZN5arrow6StatusD2Ev.exit73.sink.split

_ZN5arrow6StatusD2Ev.exit.preheader.i.i:          ; preds = %.preheader.i.i
  %wide.trip.count.i.i = and i64 %i.do, 2147483647
  br label %_ZN5arrow6StatusD2Ev.exit.i.i

bb.z:                                             ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28, !noalias !206
  %sext.i = shl i64 %i.dn, 28
  %i.ds = ashr i64 %sext.i, 32                    ; 2 uses
  %i.dt = icmp slt i32 %i.dp, 0
  br i1 %i.dt, label %.noexc.i.i.i, label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #31
  unreachable

_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i.i: ; preds = %bb.z
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit69.thread90, label %.lr.ph.i.i.i

_ZN5arrow6StatusD2Ev.exit69.thread90:             ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !206
  br label %_ZN5arrow6StatusD2Ev.exit73.sink.split

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.i.i.i
  %i.du = shl nuw nsw i64 %i.ds, 4                ; 3 uses
  %i.dv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #29 ; 4 uses
  store ptr %i.dv, ptr %13, align 8, !tbaa !207, !noalias !206
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ds
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dv, i8 0, i64 %i.du, i1 false)
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.dv, i64 %i.du
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !210, !noalias !206
  store ptr %scevgep.i.i.i.i.i.i.i.i, ptr %i.dx, align 8, !tbaa !211, !noalias !206
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 16
  %wide.trip.count.i.i.i = and i64 %i.do, 2147483647
  %i.ef = ptrtoint ptr %1 to i64
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEED2Ev.exit.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.critedge.i.i.i, label %bb.ab, !llvm.loop !212

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !206
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !206
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false), !alias.scope !216, !noalias !219
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !219
  store i32 0, ptr %11, align 8, !noalias !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx.i.i.i.i, i8 -1, i64 24, i1 false), !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !223
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !224, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !227
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.395") align 8 %4)
          to label %bb.ac unwind label %bb.ae, !noalias !228

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !227
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ad unwind label %bb.af, !noalias !228

bb.ad:                                            ; preds = %bb.ac
  %i.eg = load ptr, ptr %3, align 8, !tbaa !229, !noalias !227 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !229, !noalias !227
  store ptr %i.eg, ptr %5, align 16, !tbaa !229, !alias.scope !224, !noalias !223
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !118, !noalias !227 ; 2 uses
  store ptr %i.eh, ptr %i.ea, align 8, !tbaa !118, !alias.scope !224, !noalias !223
  %.pre.i.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !229, !noalias !227 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !227
  %.not.i.i.i.i27.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i27.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.ad
  %i.ei = load ptr, ptr %.pre.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !228
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !228
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i.i.i.i.i) #28, !noalias !228, !inline_history !231
  %.val14.pr.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !tbaa !118, !noalias !223
  %.val.pre.i.i.i.i.i = load ptr, ptr %5, align 16, !tbaa !232, !noalias !223
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.en = load ptr, ptr %4, align 8, !tbaa !229, !noalias !227 ; 3 uses
  %.not.i4.i.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i4.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i.i.i.i: ; preds = %bb.af
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !55, !noalias !228
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !228
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(72) %i.en) #28, !noalias !228, !inline_history !231
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i.i.i.i

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i.i.i.i, %bb.af, %bb.ae
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.el, %bb.ae ], [ %i.em, %bb.af ], [ %i.em, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !227
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28, !noalias !234
  br label %.body.i.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i.i.i.i, %bb.ad
  %.val.i.i.i.i.i = phi ptr [ %i.eg, %bb.ad ], [ %.val.pre.i.i.i.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.val14.i.i.i.i.i = phi ptr [ %i.eh, %bb.ad ], [ %.val14.pr.i.i.i.i.i, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !227
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val14.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !235
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ag
  %i.et = load i32, ptr %i.er, align 4, !tbaa !3, !noalias !238
  %i.eu = add nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.er, align 4, !tbaa !3, !noalias !238
  %i.ev = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i.i, i64 12
  br label %bb.ai

_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ew = atomicrmw volatile add ptr %i.er, i32 1 acq_rel, align 4, !noalias !238 ; 0 uses
  %.pre.i.i.i.i.i = load ptr, ptr %5, align 16, !tbaa !232, !noalias !223 ; 3 uses
  %.pre84.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !tbaa !118, !noalias !223 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i67 = icmp eq ptr %.pre84.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i67, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i
  %.pre.i.i.i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !223
  %i.ex = icmp eq i8 %.pre.i.i.i.i, 0
  %i.ey = getelementptr inbounds nuw i8, ptr %.pre84.i.i.i.i.i, i64 12 ; 2 uses
  br i1 %i.ex, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread.i.i.i.i
  %i.ez = phi ptr [ %i.ev, %.thread.i.i.i.i ], [ %i.ey, %bb.ah ] ; 2 uses
  %i.fa = phi ptr [ %.val14.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pre84.i.i.i.i.i, %bb.ah ]
  %i.fb = phi ptr [ %.val.i.i.i.i.i, %.thread.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.ah ]
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !3, !noalias !234
  %i.fd = add nsw i32 %i.fc, 1
  store i32 %i.fd, ptr %i.ez, align 4, !tbaa !3, !noalias !234
  br label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fe = atomicrmw volatile add ptr %i.ey, i32 1 acq_rel, align 4, !noalias !234 ; 0 uses
  br label %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ai, %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i
  %.not.i.i.i.i93.i.i.i.i.i = phi i1 [ false, %bb.aj ], [ true, %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i ], [ false, %bb.ai ], [ true, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ff = phi ptr [ %.pre.i.i.i.i.i, %bb.aj ], [ %.pre.i.i.i.i.i, %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i ], [ %i.fb, %bb.ai ], [ %.val.i.i.i.i.i, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i ]
  %i.fg = phi ptr [ %.pre84.i.i.i.i.i, %bb.aj ], [ null, %_ZSt4bindIN5arrow6detail14ContinueFutureEJRNS0_6FutureINS0_8internal5EmptyEEERZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_RiEENSt12_Bind_helperIXsr15__is_socketlikeIT_EE5valueESF_JDpT0_EE4typeEOSF_DpOSG_.exit.i.i.i.i.i ], [ %i.fa, %bb.ai ], [ null, %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !223
  %i.fh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29
          to label %bb.ak unwind label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.i.i.i.i.i, !noalias !234 ; 6 uses

bb.ak:                                            ; preds = %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEEE, i32 0, i32 0, i32 2), ptr %i.fh, align 8, !tbaa !55, !noalias !234
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  store i32 %i.fj, ptr %i.fi, align 8, !tbaa !3, !noalias !234
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i64 %i.ef, ptr %i.fk, align 8, !tbaa !239, !noalias !234
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %.val.i.i.i.i.i, ptr %i.fl, align 8, !tbaa !232, !noalias !234
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store ptr %.val14.i.i.i.i.i, ptr %i.fm, align 8, !tbaa !118, !noalias !234
  store ptr %i.fh, ptr %8, align 8, !tbaa !241, !noalias !223
  %i.fn = load <2 x ptr>, ptr %12, align 16, !tbaa !119, !noalias !223
  store ptr null, ptr %i.ec, align 8, !tbaa !118, !noalias !223
  store <2 x ptr> %i.fn, ptr %9, align 16, !tbaa !119, !noalias !223
  store ptr null, ptr %12, align 16, !tbaa !243, !noalias !223
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !223
  %i.fo = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.al unwind label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit36.i.i.i.i.i, !noalias !234 ; 4 uses

bb.al:                                            ; preds = %bb.ak
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i32 0, i32 0, i32 2), ptr %i.fo, align 8, !tbaa !55, !noalias !234
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.ff, ptr %i.fp, align 8, !tbaa !246, !noalias !234
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fg, ptr %i.fq, align 8, !tbaa !249, !noalias !234
  store ptr %i.fo, ptr %10, align 8, !tbaa !250, !noalias !223
  %i.fr = load ptr, ptr %i.dq, align 8, !tbaa !55, !noalias !252
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 48
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !234
  invoke void %i.ft(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef nonnull byval(%"struct.arrow::internal::TaskHints") align 8 %11, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i unwind label %bb.av, !noalias !234

_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i:              ; preds = %bb.al
  %i.fu = load ptr, ptr %7, align 8, !tbaa !39, !noalias !223
  store ptr %i.fu, ptr %6, align 8, !tbaa !39, !noalias !223
  store ptr null, ptr %7, align 8, !tbaa !39, !noalias !223
  %i.fv = load ptr, ptr %10, align 8, !tbaa !250, !noalias !223 ; 3 uses
  %.not.i.i25.i.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i25.i.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i.i.i.i", label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !55, !noalias !234
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !234
  call void %i.fy(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fv) #28, !noalias !234, !inline_history !253
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i.i.i.i"

"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i.i.i.i": ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !223
  %i.fz = load ptr, ptr %i.eb, align 8, !tbaa !118, !noalias !223 ; 8 uses
  %.not.i.i.i.i.i.i.i.i63 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i63, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i.i.i.i"
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 4 uses
  %i.gb = load atomic i64, ptr %i.ga acquire, align 8, !noalias !234 ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 4294967297
  %i.gd = trunc i64 %i.gb to i32                  ; 2 uses
  br i1 %i.gc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.ga, align 8, !tbaa !125, !noalias !234
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !127, !noalias !234
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !55, !noalias !234
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !noalias !234
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !noalias !234, !inline_history !254
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !55, !noalias !234
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !noalias !234
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !noalias !234, !inline_history !254
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !223
  %.not.i.i.i.i28.i.i.i.i.i = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i.i28.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i64

bb.aq:                                            ; preds = %bb.ao
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i64: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i.i65 = phi i32 [ %i.gd, %bb.ap ], [ %i.gn, %bb.aq ]
  %i.go = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i65, 1
  br i1 %i.go, label %bb.ar, label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i, !prof !129

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #28, !noalias !234
  br label %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i

_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i:           ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i64, %bb.an, %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit.i.i.i.i.i"
  %i.gp = load ptr, ptr %8, align 8, !tbaa !241, !noalias !223 ; 3 uses
  %.not.i.i29.i.i.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i29.i.i.i.i.i, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !55, !noalias !234
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !234
  call void %i.gs(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gp) #28, !noalias !234, !inline_history !255
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit.i.i.i.i.i

_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i.i.i.i.i.i, %_ZN5arrow9StopTokenD2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !223
  %i.gt = load ptr, ptr %6, align 8, !tbaa !39, !noalias !223
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit61.thread.i.i.i.i.i, label %bb.as, !prof !256

bb.as:                                            ; preds = %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit.i.i.i.i.i
  call void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.gv = load ptr, ptr %6, align 8, !tbaa !39, !noalias !223 ; 2 uses
  %.not.i30.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i30.i.i.i.i.i, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit61.i.i.i.i.i, label %bb.at, !prof !256

bb.at:                                            ; preds = %bb.as
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !257, !range !187, !noundef !183
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit61.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit61.i.i.i.i.i

bb.av:                                            ; preds = %bb.al
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %10, align 8, !tbaa !250, !noalias !223 ; 2 uses
  %.not.i.i34.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i34.i.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i", label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.sink.split.i.i.i.i.i"

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit36.i.i.i.i.i: ; preds = %bb.ak
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i93.i.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i", label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit36.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fg, i64 12 ; 3 uses
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !223
  %.not.i.i.i.i.i38.i.i.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i.i38.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.he = load i32, ptr %i.hc, align 4, !tbaa !3, !noalias !234 ; 2 uses
  %i.hf = add nsw i32 %i.he, -1
  store i32 %i.hf, ptr %i.hc, align 4, !tbaa !3, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.hg = atomicrmw volatile add ptr %i.hc, i32 -1 acq_rel, align 4, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i40.i.i.i.i.i = phi i32 [ %i.he, %bb.ax ], [ %i.hg, %bb.ay ]
  %i.hh = icmp eq i32 %.0.i.i.i.i.i.i40.i.i.i.i.i, 1
  br i1 %i.hh, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.sink.split.i.i.i.i.i", label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i"

"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.sink.split.i.i.i.i.i": ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i, %bb.av
  %.sink101.i.i.i.i.i = phi ptr [ %i.ha, %bb.av ], [ %i.fg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i ] ; 2 uses
  %.sink100.i.i.i.i.i = phi i64 [ 8, %bb.av ], [ 24, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i ]
  %.pn.pn76.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.gz, %bb.av ], [ %i.hb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i ]
  %i.hi = load ptr, ptr %.sink101.i.i.i.i.i, align 8, !tbaa !55, !noalias !234
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sink100.i.i.i.i.i
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !234
  call void %i.hk(ptr noundef nonnull align 8 dereferenceable(8) %.sink101.i.i.i.i.i) #28, !noalias !234, !inline_history !263
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i"

"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i": ; preds = %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.sink.split.i.i.i.i.i", %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit36.i.i.i.i.i, %bb.av
  %.pn.pn76.i.i.i.i.i = phi { ptr, i32 } [ %i.gz, %bb.av ], [ %i.hb, %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit36.i.i.i.i.i ], [ %i.hb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i39.i.i.i.i.i ], [ %.pn.pn76.ph.i.i.i.i.i, %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.sink.split.i.i.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !223
  call void @_ZN5arrow9StopTokenD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28, !noalias !234
  %i.hl = load ptr, ptr %8, align 8, !tbaa !241, !noalias !223 ; 3 uses
  %.not.i.i42.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i42.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.thread.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i43.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i43.i.i.i.i.i: ; preds = %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i"
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !55, !noalias !234
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !234
  call void %i.ho(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hl) #28, !noalias !234, !inline_history !255
  br label %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.thread.i.i.i.i.i

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.thread.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvvEE4ImplEEclEPS5_.exit.i.i43.i.i.i.i.i, %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit41.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !223
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit49.i.i.i.i.i"

_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.i.i.i.i.i: ; preds = %_ZN5arrow10WeakFutureINS_8internal5EmptyEEC2ERKNS_6FutureIS2_EE.exit.i.i.i.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call fastcc void @_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev(ptr %.val14.i.i.i.i.i) #28, !noalias !234
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !223
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !223
  br i1 %.not.i.i.i.i93.i.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit49.i.i.i.i.i", label %bb.az

bb.az:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvvEED2Ev.exit44.i.i.i.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fg, i64 12 ; 3 uses
  %i.hr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !223
  %.not.i.i.i.i.i46.i.i.i.i.i = icmp eq i8 %i.hr, 0
  br i1 %.not.i.i.i.i.i46.i.i.i.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hs = load i32, ptr %i.hq, align 4, !tbaa !3, !noalias !234 ; 2 uses
  %i.ht = add nsw i32 %i.hs, -1
  store i32 %i.ht, ptr %i.hq, align 4, !tbaa !3, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  %i.hu = atomicrmw volatile add ptr %i.hq, i32 -1 acq_rel, align 4, !noalias !234
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i47.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i.i48.i.i.i.i.i = phi i32 [ %i.hs, %bb.ba ], [ %i.hu, %bb.bb ]
  %i.hv = icmp eq i32 %.0.i.i.i.i.i.i48.i.i.i.i.i, 1
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE:bb.a

_ZN5arrow6StatusD2Ev.exit73:                      ; preds = %_ZN5arrow6StatusD2Ev.exit73.sink.split, %_ZN5arrow6StatusD2Ev.exit69, %._crit_edge116
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !100 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.mv = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !42 ; 3 uses
  %i.mz = load ptr, ptr %i.mw, align 8, !tbaa !45 ; 3 uses
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb                    ; 4 uses
  %i.nd = icmp ugt i64 %i.nc, 9223372036854775792
  br i1 %i.nd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit73
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #31
  unreachable

bb.cx:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit73
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !283 ; 2 uses
  %i.ng = load ptr, ptr %i.mu, align 8, !tbaa !174 ; 5 uses
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.nj = sub i64 %i.nh, %i.ni                    ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.nc
  br i1 %i.nk, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.cx
  %i.nl = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !175
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = sub i64 %i.nn, %i.ni                    ; 3 uses
  %i.np = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nc) #29 ; 5 uses
  %i.nq = icmp sgt i64 %i.no, 0
  br i1 %i.nq, label %bb.cy, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

bb.cy:                                            ; preds = %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.np, ptr align 8 %i.ng, i64 %i.no, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %bb.cy, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ng, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.nj) #30
  %.pre.pre = load ptr, ptr %i.bm, align 8, !tbaa !70 ; 3 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 24
  %.pre140.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !180
  %.phi.trans.insert141.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 32
  %.pre142.pre = load ptr, ptr %.phi.trans.insert141.phi.trans.insert, align 8, !tbaa !180
  br label %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.cz, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %.pre142 = phi ptr [ %.pre142.pre, %bb.cz ], [ %i.my, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre140 = phi ptr [ %.pre140.pre, %bb.cz ], [ %i.mz, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  %.pre = phi ptr [ %.pre.pre, %bb.cz ], [ %i.mv, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i ]
  store ptr %i.np, ptr %i.mu, align 8, !tbaa !174
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.no
  store ptr %i.nr, ptr %i.nl, align 8, !tbaa !175
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nc ; 2 uses
  store ptr %i.ns, ptr %i.ne, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit: ; preds = %bb.cx, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %i.nt = phi ptr [ %i.ng, %bb.cx ], [ %i.np, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.nu = phi ptr [ %i.nf, %bb.cx ], [ %i.ns, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.nv = phi ptr [ %i.my, %bb.cx ], [ %.pre142, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.nw = phi ptr [ %i.mz, %bb.cx ], [ %.pre140, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ] ; 2 uses
  %i.nx = phi ptr [ %i.mv, %bb.cx ], [ %.pre, %_ZNSt12_Vector_baseIN5arrow3ipc8internal14BufferMetadataESaIS3_EE13_M_deallocateEPS3_m.exit.i ]
  %i.ny = icmp eq ptr %i.nw, %i.nv
  br i1 %i.ny, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %bb.da

._crit_edge120.loopexit:                          ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit
  %.pre143 = load ptr, ptr %i.bm, align 8, !tbaa !70
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit
  %i.oa = phi ptr [ %i.nx, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %.pre143, %._crit_edge120.loopexit ]
  %.038.lcssa = phi i64 [ %i.mt, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE7reserveEm.exit ], [ %i.pp, %._crit_edge120.loopexit ]
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 48
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.od = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.oc, ptr noundef nonnull align 8 dereferenceable(24) %i.ob) ; 0 uses
  %i.oe = load i64, ptr %i.ms, align 8, !tbaa !100
  %i.of = sub nsw i64 %.038.lcssa, %i.oe
  %i.og = load ptr, ptr %i.bm, align 8, !tbaa !70
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 72
  store i64 %i.of, ptr %i.oh, align 8, !tbaa !284
  %i.oi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !285
  %i.ok = load ptr, ptr %1, align 8, !tbaa !55
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.oj)
  br label %.critedge54

bb.da:                                            ; preds = %.lr.ph119, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit
  %i.on = phi ptr [ %i.nt, %.lr.ph119 ], [ %i.pm, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 5 uses
  %i.oo = phi ptr [ %i.nu, %.lr.ph119 ], [ %i.pn, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.038118 = phi i64 [ %i.mt, %.lr.ph119 ], [ %i.pp, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 3 uses
  %.sroa.080.0117 = phi ptr [ %i.nw, %.lr.ph119 ], [ %i.pq, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.op = load ptr, ptr %.sroa.080.0117, align 8, !tbaa !33 ; 2 uses
  %.not92 = icmp eq ptr %i.op, null
  br i1 %.not92, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 24
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !46 ; 3 uses
  %i.os = add i64 %i.or, 7
  %i.ot = and i64 %i.os, -8
  %i.ou = sub nsw i64 %i.ot, %i.or
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.035 = phi i64 [ %i.or, %bb.db ], [ 0, %bb.da ] ; 3 uses
  %.0 = phi i64 [ %i.ou, %bb.db ], [ 0, %bb.da ]
  %i.ov = load ptr, ptr %i.nz, align 8, !tbaa !175 ; 4 uses
  %.not.i.i74 = icmp eq ptr %i.ov, %i.oo
  br i1 %.not.i.i74, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i64 %.038118, ptr %i.ov, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i64 %.035, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !288
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store ptr %i.ow, ptr %i.nz, align 8, !tbaa !175
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

bb.de:                                            ; preds = %bb.dc
  %i.ox = ptrtoint ptr %i.oo to i64
  %i.oy = ptrtoint ptr %i.on to i64
  %i.oz = sub i64 %i.ox, %i.oy                    ; 6 uses
  %i.pa = icmp eq i64 %i.oz, 9223372036854775792
  br i1 %i.pa, label %bb.df, label %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.df:                                            ; preds = %bb.de
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
  unreachable

_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.de
  %i.pb = ashr exact i64 %i.oz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.pb, i64 1)
  %i.pc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.pb ; 2 uses
  %i.pd = icmp ult i64 %i.pc, %i.pb
  %i.pe = call i64 @llvm.umin.i64(i64 %i.pc, i64 576460752303423487)
  %i.pf = select i1 %i.pd, i64 576460752303423487, i64 %i.pe ; 3 uses
  %.not.i.i.i.i75 = icmp ne i64 %i.pf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i75)
  %i.pg = shl nuw nsw i64 %i.pf, 4
  %i.ph = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pg) #29 ; 5 uses
  %i.pi = getelementptr inbounds i8, ptr %i.ph, i64 %i.oz ; 3 uses
  store i64 %.038118, ptr %i.pi, align 8, !tbaa !288
  %.sroa.5.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  store i64 %.035, ptr %.sroa.5.0..sroa_idx77, align 8, !tbaa !288
  %i.pj = icmp sgt i64 %i.oz, 0
  br i1 %i.pj, label %bb.dg, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.dg:                                            ; preds = %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ph, ptr align 8 %i.on, i64 %i.oz, i1 false)
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.dg, %_ZNKSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %.not.i17.i.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef %i.oz) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.dh, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  store ptr %i.ph, ptr %i.mu, align 8, !tbaa !174
  store ptr %i.pk, ptr %i.nz, align 8, !tbaa !175
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %i.ph, i64 %i.pf ; 2 uses
  store ptr %i.pl, ptr %i.ne, align 8, !tbaa !283
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.dd, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.pm = phi ptr [ %i.on, %bb.dd ], [ %i.ph, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.pn = phi ptr [ %i.oo, %bb.dd ], [ %i.pl, %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ]
  %i.po = add i64 %.035, %.038118
  %i.pp = add i64 %i.po, %.0                      ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.080.0117, i64 16 ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.nv
  br i1 %i.pr, label %._crit_edge120.loopexit, label %bb.da

.critedge54:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit69.thread, %_ZN5arrow6Status7InvalidIJRA49_KcSt13_SetprecisionRdEEES0_DpOT_.exit, %._crit_edge120, %_ZN5arrow6StatusD2Ev.exit69
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !174  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !283
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !291  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !292
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal14BufferMetadataESaIS3_EED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !127
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !293
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !293
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef nonnull align 8 dereferenceable(60) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit:
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"struct.arrow::ipc::IpcPayload", align 8 ; 11 uses
  %11 = alloca %"class.arrow::ipc::(anonymous namespace)::RecordBatchSerializer", align 8 ; 12 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  store i32 0, ptr %10, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i32 0, i32 0, i32 2), ptr %11, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %10, ptr %i.b, align 8, !tbaa !70
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 88, i1 false)
  store ptr %6, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !88
  %i.h = sext i32 %i.g to i64
  store i64 %i.h, ptr %i.e, align 8, !tbaa !99
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i64 %2, ptr %i.i, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias nonnull writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.a

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.j = load ptr, ptr %12, align 8, !tbaa !39    ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit21, label %.critedge

bb.a:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.c

_ZN5arrow6StatusD2Ev.exit21:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.n = load i64, ptr %i.m, align 8, !tbaa !284
  store i64 %i.n, ptr %5, align 8, !tbaa !288
  call void @llvm.experimental.noalias.scope.decl(metadata !294)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !294
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !33, !noalias !294
  invoke void @_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %3, ptr noundef %4)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit21
  %i.p = load ptr, ptr %7, align 8, !tbaa !39, !noalias !294 ; 2 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !39, !alias.scope !294
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !294
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader.i, label %.critedge

.preheader.i:                                     ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !294
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !45, !noalias !294 ; 2 uses
  %.not67.i = icmp eq ptr %i.t, %i.u
  br i1 %.not67.i, label %.critedge.sink.split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.critedge44.i
  %i.v = phi ptr [ %i.ar, %.critedge44.i ], [ %i.u, %.preheader.i ]
  %.03466.i = phi i64 [ %i.ap, %.critedge44.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.03466.i ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33, !noalias !294 ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %.critedge44.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !294 ; 3 uses
  %i.aa = add i64 %i.z, 7
  %i.ab = and i64 %i.aa, -8
  %i.ac = sub nsw i64 %i.ab, %i.z                 ; 2 uses
  %i.ad = icmp sgt i64 %i.z, 0
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit50.i, label %_ZN5arrow6StatusD2Ev.exit54.i

_ZN5arrow6StatusD2Ev.exit50.i:                    ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !294
  %i.ae = load ptr, ptr %3, align 8, !tbaa !55, !noalias !294
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !294
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.w)
          to label %.noexc23 unwind label %.loopexit, !inline_history !297

.noexc23:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit50.i
  %i.ah = load ptr, ptr %8, align 8, !tbaa !39, !noalias !294 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !294
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit54.i, label %.critedge.sink.split

_ZN5arrow6StatusD2Ev.exit54.i:                    ; preds = %.noexc23, %bb.b
  %i.aj = icmp sgt i64 %i.ac, 0
  br i1 %i.aj, label %_ZN5arrow6StatusD2Ev.exit56.i, label %.critedge44.i

_ZN5arrow6StatusD2Ev.exit56.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !294
  %i.ak = load ptr, ptr %3, align 8, !tbaa !55, !noalias !294
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !294
  invoke void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN5arrow3ipcL13kPaddingBytesE, i64 noundef %i.ac)
          to label %.noexc24 unwind label %.loopexit, !inline_history !297

.noexc24:                                         ; preds = %_ZN5arrow6StatusD2Ev.exit56.i
  %i.an = load ptr, ptr %9, align 8, !tbaa !39, !noalias !294 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !294
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.critedge44.i, label %.critedge.sink.split

.critedge44.i:                                    ; preds = %.noexc24, %_ZN5arrow6StatusD2Ev.exit54.i, %.lr.ph.i
  %i.ap = add nuw i64 %.03466.i, 1                ; 2 uses
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !42, !noalias !294
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !45, !noalias !294 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.sink.split, !llvm.loop !57

.loopexit:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit50.i, %_ZN5arrow6StatusD2Ev.exit56.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %_ZN5arrow6StatusD2Ev.exit21
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.critedge.sink.split:                             ; preds = %.noexc23, %.noexc24, %.critedge44.i, %.preheader.i
  %.sink = phi ptr [ null, %.preheader.i ], [ %i.ah, %.noexc23 ], [ %i.an, %.noexc24 ], [ null, %.critedge44.i ]
  store ptr %.sink, ptr %0, align 8, !alias.scope !294
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %.noexc, %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  ret void

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.a
  %.pn15 = phi { ptr, i32 } [ %i.l, %bb.a ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  resume { ptr, i32 } %.pn15
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !125
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !127
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28, !inline_history !298
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #28, !inline_history !298
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4_@_ZN5arrow3ipc22WriteRecordBatchStreamERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE:bb.a
  br i1 %i.o, label %.critedge37, label %.lr.ph

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.051.054, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.n
  br i1 %i.q, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.051.054 = phi ptr [ %i.p, %bb.e ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.r = load ptr, ptr %.sroa.051.054, align 8, !tbaa !164
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.lr.ph
  %i.v = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.e, label %.critedge39

bb.f:                                             ; preds = %.lr.ph
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.n

.critedge37:                                      ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN5arrow6StatusD2Ev.exit45 unwind label %bb.g

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %.critedge37
  %i.ab = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  store ptr %i.ab, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN5arrow6StatusD2Ev.exit49, label %.critedge39

bb.g:                                             ; preds = %.critedge37
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZN5arrow6StatusD2Ev.exit45
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !315
  br label %.critedge39

.critedge39:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit45, %_ZN5arrow6StatusD2Ev.exit49
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge39
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ae, align 8, !tbaa !125
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !127
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !318
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !318
  br label %_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.k ], [ %i.ar, %bb.l ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28
  br label %_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge39, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.n:                                             ; preds = %bb.g, %bb.f
  %.pn31.pn = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.x, %bb.f ]
  call void @_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.w

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.at = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.o, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread.i, !prof !256

bb.o:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ax, align 8, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !127
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !319
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !319
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.s ], [ %i.bk, %bb.t ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.u, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i, !prof !129

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q, %bb.o
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !39   ; 2 uses
  %.not.i.i50 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i50, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread.i, !prof !274

_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.bm = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i ], [ %i.at, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !257, !range !187, !noundef !183
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.w:                                             ; preds = %bb.n, %bb.c
  %.pn35 = phi { ptr, i32 } [ %i.f, %bb.c ], [ %.pn31.pn, %bb.n ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn35
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16MakeStreamWriterEPNS_2io12OutputStreamERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.168", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29, !noalias !320 ; 11 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !320
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !320
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !320 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !119, !noalias !320
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !119, !noalias !320
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !320
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !320
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !320
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !320 ; 0 uses
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !320
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !323, !noalias !320
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !320
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !328, !noalias !320
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal19PayloadStreamWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !320
  %i.r = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc unwind label %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6 ; 6 uses

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !125, !noalias !329
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !127, !noalias !329
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.r, align 8, !tbaa !55, !noalias !329
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !329
  store ptr %i.a, ptr %4, align 8, !tbaa !332, !noalias !329
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %i.u, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f, !noalias !329

bb.e:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %4, align 8, !tbaa !335, !noalias !329 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55, !noalias !329
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !329
  call void %i.y(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #28, !noalias !329, !inline_history !336
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !335, !noalias !329 ; 3 uses
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.body.thread, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55, !noalias !329
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !329
  call void %i.ad(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #28, !noalias !329, !inline_history !336
  br label %.body.thread

.body.thread:                                     ; preds = %bb.f, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 256) #30, !noalias !329
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !329
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ae, align 8, !tbaa !310
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.af, align 8, !tbaa !118
  ret void

_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6: ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJRPNS0_2io12OutputStreamERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow3ipc8internal19PayloadStreamWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef 104) #30
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7: ; preds = %.body.thread, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.z, %.body.thread ], [ %i.ag, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6 ]
  resume { ptr, i32 } %eh.lpad-body15
}

declare noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !127
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !337
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !337
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread, !prof !274

_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !257, !range !187, !noundef !183
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_3ipc17RecordBatchWriterEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc11WriteTensorERKNS_6TensorEPNS_2io12OutputStreamEPiPl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Tensor", align 8     ; 13 uses
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.82") align 8, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_122WriteStridedTensorDataEiliRKNS_6TensorEPhPNS_2io12OutputStreamE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !350
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = sext i32 %1 to i64                       ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !288
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %._crit_edge

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %.preheader
  %i.p = add nsw i32 %1, 1
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = sext i32 %1 to i64                       ; 3 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !289
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.s
  %i.v = load i64, ptr %i.u, align 8, !tbaa !288
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.s
  %i.x = load i64, ptr %i.w, align 8, !tbaa !288  ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %.._crit_edge56_crit_edge

.._crit_edge56_crit_edge:                         ; preds = %bb.b
  %.pre = sext i32 %3 to i64
  br label %._crit_edge56

.lr.ph:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !33  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 9
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !346, !range !187, !noundef !183
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = select i1 %i.ad, ptr %i.af, ptr null, !prof !256
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %2
  %i.ai = sext i32 %3 to i64                      ; 3 uses
  br label %bb.c

._crit_edge56:                                    ; preds = %bb.c, %.._crit_edge56_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge56_crit_edge ], [ %i.ai, %bb.c ]
  %.lcssa = phi i64 [ %i.x, %.._crit_edge56_crit_edge ], [ %i.at, %bb.c ]
  %i.aj = mul nsw i64 %.lcssa, %.pre-phi
  %i.ak = load ptr, ptr %6, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %5, i64 noundef %i.aj)
  br label %.critedge

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03954 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %.04353 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %bb.c ] ; 2 uses
  %i.an = mul nsw i64 %.04353, %i.ai
  %i.ao = getelementptr inbounds i8, ptr %5, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.03954, i64 %i.ai, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.03954, i64 %i.v
  %i.aq = add nuw nsw i64 %.04353, 1              ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.s
  %i.at = load i64, ptr %i.as, align 8, !tbaa !288 ; 2 uses
  %i.au = icmp slt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.c, label %._crit_edge56, !llvm.loop !373

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %_ZN5arrow6StatusD2Ev.exit49
  %.052 = phi i64 [ %2, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.ba, %_ZN5arrow6StatusD2Ev.exit49 ] ; 2 uses
  %.04251 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.bb, %_ZN5arrow6StatusD2Ev.exit49 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_122WriteStridedTensorDataEiliRKNS_6TensorEPhPNS_2io12OutputStreamE(ptr dead_on_unwind noalias writable align 8 %7, i32 noundef %i.p, i64 noundef %.052, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %5, ptr noundef %6)
  %i.av = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit49, label %.critedge

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !289
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.l
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !288
  %i.ba = add nsw i64 %i.az, %.052
  %i.bb = add nuw nsw i64 %.04251, 1              ; 2 uses
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.l
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !288
  %i.bf = icmp slt i64 %i.bb, %i.be
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit, label %._crit_edge, !llvm.loop !374

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit49, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !375
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %._crit_edge, %._crit_edge56
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !351  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #28, !inline_history !378
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !257, !range !187, !noundef !183
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 16) ({ [4 x ptr] }, ptr @_ZTVN5arrow6TensorE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !379  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !134 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !111
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !383

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !379
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !384
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #30
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !290
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIlSaIlEED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !290
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit3

_ZNSt6vectorIlSaIlEED2Ev.exit3:                   ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ag, align 8, !tbaa !125
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !127
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !300
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i4 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.h ], [ %i.at, %bb.i ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit3, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !118 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ax, align 8, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !127
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !342
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !342
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i6 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.o:                                             ; preds = %bb.m
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i8 = phi i32 [ %i.ba, %bb.n ], [ %i.bk, %bb.o ]
  %i.bl = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bl, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16GetTensorMessageERKNS_6TensorEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.94") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.64", align 8 ; 7 uses
  %4 = alloca %"class.arrow::Result.82", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Result.439", align 8 ; 12 uses
  %6 = alloca %"class.std::shared_ptr.229", align 8 ; 8 uses
  %7 = alloca %"class.std::unique_ptr.443", align 8 ; 7 uses
  %8 = alloca %"class.arrow::io::BufferOutputStream", align 8 ; 7 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.std::unique_ptr.98", align 8 ; 6 uses
  %11 = alloca %"class.std::shared_ptr.64", align 16 ; 7 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %14 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 14 uses
  %15 = alloca %"class.std::shared_ptr", align 16 ; 9 uses
  %16 = alloca %"class.arrow::Result.106", align 8 ; 12 uses
  %17 = alloca %"class.std::unique_ptr.110", align 8 ; 6 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5arrow6Tensor13is_contiguousEv(ptr noundef nonnull align 8 dereferenceable(112) %1)
  br i1 %i.a, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_5
begin_hunk_6_@_ZN5arrow3ipc22GetSparseTensorMessageERKNS_12SparseTensorEPNS_10MemoryPoolE:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !119
  store ptr null, ptr %i.o, align 8, !tbaa !118
  store <2 x ptr> %i.p, ptr %7, align 16, !tbaa !119
  store ptr null, ptr %i.n, align 8, !tbaa !33
  invoke void @_ZN5arrow3ipc7MessageC1ESt10shared_ptrINS_6BufferEES4_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit unwind label %bb.t

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = ptrtoint ptr %i.i to i64
  store i64 %i.s, ptr %i.r, align 8, !tbaa !431
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.u, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !127
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !300
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.j ], [ %i.ah, %bb.k ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !118 ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ak, align 8, !tbaa !125
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !127
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !300
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

bb.o:                                             ; preds = %bb.m
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i21 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i21, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.q:                                             ; preds = %bb.o
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i23 = phi i32 [ %i.an, %bb.p ], [ %i.ax, %bb.q ]
  %i.ay = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.ay, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24, !prof !129

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24

bb.s:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 8) #30
  br label %bb.u

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit24: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.n, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit14
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.e
  %.pn10.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.ba, %bb.t ], [ %i.az, %bb.s ]
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN5arrow3ipc7MessageC1ESt10shared_ptrINS_6BufferEES4_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN5arrow3ipc14GetPayloadSizeERKNS0_10IpcPayloadERKNS0_15IpcWriteOptionsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !363, !range !187, !noundef !183
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, i64 4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !46
  %i.i = add i64 %i.d, %i.h
  %sext = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext, 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !365
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = add nsw i64 %i.m, -1
  %i.o = add nsw i64 %i.n, %i.j                   ; 2 uses
  %i.p = srem i64 %i.o, %i.m
  %i.q = sub nsw i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !284
  %sext6 = shl i64 %i.q, 32
  %i.t = ashr exact i64 %sext6, 32
  %i.u = add nsw i64 %i.t, %i.s
  ret i64 %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc18GetRecordBatchSizeERKNS_11RecordBatchEPl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 10 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !451
  store i32 0, ptr %i.a, align 4, !tbaa !3, !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !451
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8, !noalias !451
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8, !noalias !451
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !noalias !451
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8, !tbaa !55, !noalias !451
  store ptr getelementptr inbounds inrange(-24, 64) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 0, i32 3), ptr %3, align 8, !tbaa !55, !noalias !451
  store ptr getelementptr inbounds inrange(-64, 56) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 1, i32 8), ptr %i.c, align 8, !tbaa !55, !noalias !451
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !454, !noalias !451
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.k, align 8, !tbaa !458, !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !451
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %.body, !noalias !451

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.l = load ptr, ptr %4, align 8, !tbaa !39, !noalias !451 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !39, !alias.scope !451
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !451
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit13.i, label %bb.b

.body:                                            ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !451
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !451
  call void @_ZN5arrow3ipc15IpcWriteOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.n

_ZN5arrow6StatusD2Ev.exit13.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.o = load i64, ptr %i.j, align 8, !tbaa !454, !noalias !451
  store i64 %i.o, ptr %2, align 8, !tbaa !288, !noalias !451
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !459
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13.i, %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !451
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.r, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !127
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !372
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28, !inline_history !372
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.u, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.af, label %bb.h, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #28
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit:          ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc18GetRecordBatchSizeERKNS_11RecordBatchERKNS0_15IpcWriteOptionsEPl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 11 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !462
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !55
  store ptr getelementptr inbounds inrange(-24, 64) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 0, i32 3), ptr %4, align 8, !tbaa !55
  store ptr getelementptr inbounds inrange(-64, 56) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 1, i32 8), ptr %i.c, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !454
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.l, align 8, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.m = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit13, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.o

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i64, ptr %i.k, align 8, !tbaa !454
  store i64 %i.p, ptr %3, align 8, !tbaa !288
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !469
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit13
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc13GetTensorSizeERKNS_6TensorEPl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 11 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 0, ptr %i.b, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.e, align 8, !tbaa !462
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8
  %i.h = getelementptr i8, ptr %i.f, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %3, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !55
  store ptr getelementptr inbounds inrange(-24, 64) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 0, i32 3), ptr %3, align 8, !tbaa !55
  store ptr getelementptr inbounds inrange(-64, 56) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 1, i32 8), ptr %i.c, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !454
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.l, align 8, !tbaa !458
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN5arrow3ipc11WriteTensorERKNS_6TensorEPNS_2io12OutputStreamEPiPl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit12, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  resume { ptr, i32 } %i.o

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i64, ptr %i.k, align 8, !tbaa !454
  store i64 %i.p, ptr %2, align 8, !tbaa !288
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !472
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow3ipc17RecordBatchWriterD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow3ipc17RecordBatchWriterD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc17RecordBatchWriter16WriteRecordBatchERKNS_11RecordBatchERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !475
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA56_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(56) @.str.1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc17RecordBatchWriter10WriteTableERKNS_5TableEl(ptr dead_on_unwind noalias nofree writable sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::TableBatchReader", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.58", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow16TableBatchReaderC1ERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit36.peel.begin

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow16TableBatchReader13set_chunksizeEl(ptr noundef nonnull align 8 dereferenceable(120) %4, i64 noundef %3)
          to label %_ZN5arrow6StatusD2Ev.exit36.peel.begin unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN5arrow6StatusD2Ev.exit36.peel.begin:           ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.promoted = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN5arrow16TableBatchReader8ReadNextEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit.peel unwind label %.loopexit.split-lp

_ZN5arrow6StatusD2Ev.exit.peel:                   ; preds = %_ZN5arrow6StatusD2Ev.exit36.peel.begin
  %i.c = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit29.peel, label %.critedge

_ZN5arrow6StatusD2Ev.exit29.peel:                 ; preds = %_ZN5arrow6StatusD2Ev.exit.peel
  %i.e = load ptr, ptr %5, align 8, !tbaa !164    ; 2 uses
  %.not.i30.peel = icmp eq ptr %i.e, null
  br i1 %.not.i30.peel, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit29.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.f = load ptr, ptr %1, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZN5arrow6StatusD2Ev.exit32.peel unwind label %.loopexit.split-lp59

_ZN5arrow6StatusD2Ev.exit32.peel:                 ; preds = %bb.d
  %i.i = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32.peel, %_ZN5arrow6StatusD2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN5arrow16TableBatchReader8ReadNextEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %.loopexit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %i.k = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit29, label %.critedge

.loopexit:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN5arrow6StatusD2Ev.exit36.peel.begin
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.lcssa = phi ptr [ null, %.loopexit ], [ %.promoted, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store ptr %.lcssa, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.n

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.m = load ptr, ptr %5, align 8, !tbaa !164    ; 2 uses
  %.not.i30 = icmp eq ptr %i.m, null
  br i1 %.not.i30, label %.critedge, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.n = load ptr, ptr %1, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_ZN5arrow6StatusD2Ev.exit32 unwind label %.loopexit58

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %bb.f
  %i.q = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge, !llvm.loop !476

.loopexit58:                                      ; preds = %bb.f
  %lpad.loopexit60 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp59:                             ; preds = %bb.d
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp59, %.loopexit58
  %lpad.phi62 = phi { ptr, i32 } [ %lpad.loopexit60, %.loopexit58 ], [ %lpad.loopexit.split-lp61, %.loopexit.split-lp59 ]
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.n

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit29, %_ZN5arrow6StatusD2Ev.exit32.peel, %_ZN5arrow6StatusD2Ev.exit29.peel, %_ZN5arrow6StatusD2Ev.exit.peel
  %storemerge = phi ptr [ %i.c, %_ZN5arrow6StatusD2Ev.exit.peel ], [ null, %_ZN5arrow6StatusD2Ev.exit29.peel ], [ %i.i, %_ZN5arrow6StatusD2Ev.exit32.peel ], [ %i.q, %_ZN5arrow6StatusD2Ev.exit32 ], [ %i.k, %_ZN5arrow6StatusD2Ev.exit ], [ null, %_ZN5arrow6StatusD2Ev.exit29 ]
  store ptr %storemerge, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !127
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !478
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !478
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.k ], [ %i.ah, %bb.l ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.n:                                             ; preds = %bb.g, %bb.e
  %.pn20.pn = phi { ptr, i32 } [ %lpad.phi62, %bb.g ], [ %lpad.phi, %bb.e ]
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.n ], [ %i.b, %bb.c ]
  call void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn20.pn.pn
}

declare void @_ZN5arrow16TableBatchReaderC1ERKNS_5TableE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5arrow16TableBatchReader13set_chunksizeEl(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef) local_unnamed_addr #3

declare void @_ZN5arrow16TableBatchReader8ReadNextEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow16TableBatchReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow16TableBatchReaderE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !290
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !479  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !482
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !483  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !487
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #30
  br label %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit

_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.x, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !127
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !488
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28, !inline_history !488
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i3 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.h ], [ %i.ak, %bb.i ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #28
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN5arrow12ChunkedArrayESaIS2_EED2Ev.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  tail call void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc17RecordBatchWriter10WriteTableERKNS_5TableE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef -1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5arrow3ipc8internal16IpcPayloadWriterD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #9 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5arrow3ipc8internal16IpcPayloadWriterD0Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @llvm.trap() #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5arrow3ipc8internal16IpcPayloadWriter5StartEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !489
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc16MakeStreamWriterESt10shared_ptrINS_2io12OutputStreamEERKS1_INS_6SchemaEERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.168", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29, !noalias !492 ; 11 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !119, !noalias !492
  %i.c = load ptr, ptr %1, align 8, !tbaa !495, !noalias !492
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !492
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !492
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !492
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118, !noalias !492 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !119, !noalias !492
  store <2 x ptr> %i.i, ptr %i.e, align 8, !tbaa !119, !noalias !492
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !492
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !492
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !492
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !492 ; 0 uses
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.p, i64 20, i1 false), !noalias !492
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.c, ptr %i.q, align 8, !tbaa !323, !noalias !492
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %i.b, ptr %i.r, align 8, !tbaa !119, !noalias !492
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.s, align 8, !tbaa !328, !noalias !492
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal19PayloadStreamWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !492
  %i.t = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc unwind label %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6 ; 6 uses

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !125, !noalias !496
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 1, ptr %i.v, align 4, !tbaa !127, !noalias !496
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.t, align 8, !tbaa !55, !noalias !496
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !496
  store ptr %i.a, ptr %4, align 8, !tbaa !332, !noalias !496
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %i.w, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f, !noalias !496

bb.e:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %4, align 8, !tbaa !335, !noalias !496 ; 3 uses
  %.not.i.i.i.i.i.i.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i4, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55, !noalias !496
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !496
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #28, !noalias !496, !inline_history !336
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %.noexc
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %4, align 8, !tbaa !335, !noalias !496 ; 3 uses
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.body.thread, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i: ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55, !noalias !496
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !496
  call void %i.af(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ac) #28, !noalias !496, !inline_history !336
  br label %.body.thread

.body.thread:                                     ; preds = %bb.f, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 256) #30, !noalias !496
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !496
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.ag, align 8, !tbaa !310
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !118
  ret void

_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6: ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJSt10shared_ptrINS0_2io12OutputStreamEERKNS1_15IpcWriteOptionsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5arrow3ipc8internal19PayloadStreamWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef 104) #30
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit7: ; preds = %.body.thread, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.ab, %.body.thread ], [ %i.ai, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i6 ]
  resume { ptr, i32 } %eh.lpad-body15
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14MakeFileWriterEPNS_2io12OutputStreamERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsERKS4_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.168", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29, !noalias !499 ; 14 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !499
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !499
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !499 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !119, !noalias !499
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !119, !noalias !499
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !499
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !499
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !499
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !499 ; 0 uses
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !499
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !323, !noalias !499
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !499
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !328, !noalias !499
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal17PayloadFileWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !499
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118, !noalias !499 ; 2 uses
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !119, !noalias !499
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !119, !noalias !499
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !499
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3, !noalias !499
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3, !noalias !499
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !499 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i: ; preds = %bb.g, %bb.f, %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118, !noalias !499 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %4, align 8, !tbaa !119, !noalias !499
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !119, !noalias !499
  %.not.i.i.i5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i5.i.i, label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !499
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !499
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3, !noalias !499
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !499 ; 0 uses
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, %bb.i, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false), !noalias !499
  %i.ak = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc unwind label %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8 ; 6 uses

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !125, !noalias !502
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 1, ptr %i.am, align 4, !tbaa !127, !noalias !502
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.ak, align 8, !tbaa !55, !noalias !502
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !502
  store ptr %i.a, ptr %5, align 8, !tbaa !332, !noalias !502
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %i.an, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.l, !noalias !502

bb.k:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %5, align 8, !tbaa !335, !noalias !502 ; 3 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i6, label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55, !noalias !502
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !502
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ao) #28, !noalias !502, !inline_history !505
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

bb.l:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %5, align 8, !tbaa !335, !noalias !502 ; 3 uses
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.body.thread, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i: ; preds = %bb.l
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55, !noalias !502
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !502
  call void %i.aw(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #28, !noalias !502, !inline_history !505
  br label %.body.thread

.body.thread:                                     ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 256) #30, !noalias !502
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !502
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ax, align 8, !tbaa !310
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.ay, align 8, !tbaa !118
  ret void

_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8: ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEERPNS0_2io12OutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(184) %i.a) #28, !inline_history !506
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9: ; preds = %.body.thread, %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.as, %.body.thread ], [ %i.az, %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8 ]
  resume { ptr, i32 } %eh.lpad-body17
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14MakeFileWriterESt10shared_ptrINS_2io12OutputStreamEERKS1_INS_6SchemaEERKNS0_15IpcWriteOptionsERKS1_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result") align 8 captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr.168", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29, !noalias !507 ; 14 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !119, !noalias !507
  %i.c = load ptr, ptr %1, align 8, !tbaa !495, !noalias !507
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !507
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !507
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !507
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !118, !noalias !507 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !119, !noalias !507
  store <2 x ptr> %i.i, ptr %i.e, align 8, !tbaa !119, !noalias !507
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !507
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !507
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !507
  br label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !507 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.p, i64 20, i1 false), !noalias !507
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.c, ptr %i.q, align 8, !tbaa !323, !noalias !507
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %i.b, ptr %i.r, align 8, !tbaa !119, !noalias !507
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.s, align 8, !tbaa !328, !noalias !507
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal17PayloadFileWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !507
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !118, !noalias !507 ; 2 uses
  %i.w = load <2 x ptr>, ptr %2, align 8, !tbaa !119, !noalias !507
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !119, !noalias !507
  %.not.i.i.i4.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i4.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !507
  %.not.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !507
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !507
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4, !noalias !507 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i: ; preds = %bb.g, %bb.f, %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !118, !noalias !507 ; 2 uses
  %i.af = load <2 x ptr>, ptr %4, align 8, !tbaa !119, !noalias !507
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !119, !noalias !507
  %.not.i.i.i5.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i5.i.i, label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !507
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3, !noalias !507
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3, !noalias !507
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = atomicrmw volatile add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !507 ; 0 uses
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, %bb.i, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 0, i64 48, i1 false), !noalias !507
  %i.am = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #29
          to label %.noexc unwind label %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8 ; 6 uses

.noexc:                                           ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 1, ptr %i.an, align 8, !tbaa !125, !noalias !510
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 1, ptr %i.ao, align 4, !tbaa !127, !noalias !510
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.am, align 8, !tbaa !55, !noalias !510
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !510
  store ptr %i.a, ptr %5, align 8, !tbaa !332, !noalias !510
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %i.ap, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.l, !noalias !510

bb.k:                                             ; preds = %.noexc
  %i.aq = load ptr, ptr %5, align 8, !tbaa !335, !noalias !510 ; 3 uses
  %.not.i.i.i.i.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i6, label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !55, !noalias !510
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !510
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #28, !noalias !510, !inline_history !505
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

bb.l:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = load ptr, ptr %5, align 8, !tbaa !335, !noalias !510 ; 3 uses
  %.not.i6.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i6.i.i.i.i.i.i, label %.body.thread, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i: ; preds = %bb.l
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55, !noalias !510
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !510
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #28, !noalias !510, !inline_history !505
  br label %.body.thread

.body.thread:                                     ; preds = %bb.l, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 256) #30, !noalias !510
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i.i.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !510
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.az, align 8, !tbaa !310
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !118
  ret void

_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8: ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal17PayloadFileWriterEJRKNS1_15IpcWriteOptionsERKSt10shared_ptrINS0_6SchemaEERKS7_IKNS0_16KeyValueMetadataEES7_INS0_2io12OutputStreamEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(184) %i.a) #28, !inline_history !506
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit9: ; preds = %.body.thread, %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8
  %eh.lpad-body17 = phi { ptr, i32 } [ %i.au, %.body.thread ], [ %i.bb, %_ZNKSt14default_deleteIN5arrow3ipc8internal17PayloadFileWriterEEclEPS3_.exit.i8 ]
  resume { ptr, i32 } %eh.lpad-body17
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal21OpenRecordBatchWriterESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS3_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.164") align 8 %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.168", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !135
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.2)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc17RecordBatchWriterESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.b = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  %.not.i8 = icmp eq ptr %i.b, null
  br i1 %.not.i8, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !257, !range !187, !noundef !183
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit21

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = tail call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #29, !noalias !513 ; 8 uses
  %i.g = load i64, ptr %1, align 8, !tbaa !335, !noalias !513
  store i64 %i.g, ptr %4, align 8, !tbaa !335, !noalias !513
  store ptr null, ptr %1, align 8, !tbaa !335, !noalias !513
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %i.f, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext false)
          to label %bb.f unwind label %bb.g, !noalias !513

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %4, align 8, !tbaa !335, !noalias !513 ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZSt11make_uniqueIN5arrow3ipc8internal15IpcFormatWriterEJSt10unique_ptrINS2_16IpcPayloadWriterESt14default_deleteIS5_EERKSt10shared_ptrINS0_6SchemaEERKNS1_15IpcWriteOptionsEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i: ; preds = %bb.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !55, !noalias !513
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !513
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #28, !noalias !513, !inline_history !516
  br label %_ZSt11make_uniqueIN5arrow3ipc8internal15IpcFormatWriterEJSt10unique_ptrINS2_16IpcPayloadWriterESt14default_deleteIS5_EERKSt10shared_ptrINS0_6SchemaEERKNS1_15IpcWriteOptionsEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !335, !noalias !513 ; 3 uses
  %.not.i6.i = icmp eq ptr %i.m, null
  br i1 %.not.i6.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8.i, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i: ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !513
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !513
  call void %i.p(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28, !noalias !513, !inline_history !516
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8.i

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit, %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8.i ], [ %i.w, %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8.i: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i7.i, %bb.g
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 240) #30, !noalias !513
  br label %common.resume

_ZSt11make_uniqueIN5arrow3ipc8internal15IpcFormatWriterEJSt10unique_ptrINS2_16IpcPayloadWriterESt14default_deleteIS5_EERKSt10shared_ptrINS0_6SchemaEERKNS1_15IpcWriteOptionsEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriter5StartEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(240) %i.f)
          to label %_ZN5arrow6StatusD2Ev.exit10 unwind label %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit

_ZN5arrow6StatusD2Ev.exit10:                      ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal15IpcFormatWriterEJSt10unique_ptrINS2_16IpcPayloadWriterESt14default_deleteIS5_EERKSt10shared_ptrINS0_6SchemaEERKNS1_15IpcWriteOptionsEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.q = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  store ptr %i.q, ptr %6, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %bb.h, !prof !256

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit10
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc17RecordBatchWriterESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.s = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %.not.i11 = icmp eq ptr %i.s, null
  br i1 %.not.i11, label %_ZNKSt14default_deleteIN5arrow3ipc8internal15IpcFormatWriterEEclEPS3_.exit.i20, label %bb.i, !prof !256

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !257, !range !187, !noundef !183
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNKSt14default_deleteIN5arrow3ipc8internal15IpcFormatWriterEEclEPS3_.exit.i20, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZNKSt14default_deleteIN5arrow3ipc8internal15IpcFormatWriterEEclEPS3_.exit.i20

_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZSt11make_uniqueIN5arrow3ipc8internal15IpcFormatWriterEJSt10unique_ptrINS2_16IpcPayloadWriterESt14default_deleteIS5_EERKSt10shared_ptrINS0_6SchemaEERKNS1_15IpcWriteOptionsEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(240) %i.f) #28, !inline_history !517
  br label %common.resume

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = ptrtoint ptr %i.f to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !518
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit21

_ZNKSt14default_deleteIN5arrow3ipc8internal15IpcFormatWriterEEclEPS3_.exit.i20: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(240) %i.f) #28, !inline_history !517
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit21

_ZNSt10unique_ptrIN5arrow3ipc8internal15IpcFormatWriterESt14default_deleteIS3_EED2Ev.exit21: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal15IpcFormatWriterEEclEPS3_.exit.i20, %.thread, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc17RecordBatchWriterESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.232", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !129

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !111
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !134    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !111
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriter5StartEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"struct.arrow::ipc::IpcPayload", align 8 ; 8 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i8 1, ptr %i.a, align 8, !tbaa !519
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !335  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.g = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.a, label %bb.f

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !543, !nonnull !183, !align !184
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 1, ptr %4, align 8, !tbaa !59, !noalias !544
  invoke void @_ZN5arrow3ipc8internal18WriteSchemaMessageERKNS_6SchemaERKNS0_21DictionaryFieldMapperERKNS0_15IpcWriteOptionsEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(60) %i.l, ptr noundef nonnull %i.i)
          to label %_ZN5arrow6StatusD2Ev.exit22 unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit22:                      ; preds = %bb.a
  %i.n = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit26, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.e

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZN5arrow6StatusD2Ev.exit22
  call void @llvm.experimental.noalias.scope.decl(metadata !547)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !547
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !335, !noalias !547 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !55, !noalias !547
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !noalias !547
  invoke void %i.t(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %4)
          to label %.noexc unwind label %bb.d, !inline_history !550

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit26
  %i.u = load ptr, ptr %2, align 8, !tbaa !39, !noalias !547 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !39, !alias.scope !547
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !547
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !551, !noalias !547
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !551, !noalias !547
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !552
  br label %.critedge

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit26
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.critedge:                                        ; preds = %bb.c, %.noexc, %_ZN5arrow6StatusD2Ev.exit22
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  %.pn14 = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.p, %bb.b ]
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn14

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal23MakePayloadStreamWriterEPNS_2io12OutputStreamERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.197") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29, !noalias !555 ; 9 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !555
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2, i64 24, i1 false), !noalias !555
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !555 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !119, !noalias !555
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !119, !noalias !555
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !555
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !555
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !555
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !555 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !555
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !323, !noalias !555
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !555
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !328, !noalias !555
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal19PayloadStreamWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !555
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.r, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal21MakePayloadFileWriterEPNS_2io12OutputStreamERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsERKS5_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Result.197") align 8 captures(none) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #29, !noalias !558 ; 12 uses
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !558
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false), !noalias !558
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118, !noalias !558 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !119, !noalias !558
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !119, !noalias !558
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !558
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !558
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3, !noalias !558
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4, !noalias !558 ; 0 uses
  br label %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i

_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.m, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 20, i1 false), !noalias !558
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.o, align 8, !tbaa !323, !noalias !558
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !558
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.q, align 8, !tbaa !328, !noalias !558
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal17PayloadFileWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55, !noalias !558
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !118, !noalias !558 ; 2 uses
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !119, !noalias !558
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !119, !noalias !558
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !558
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3, !noalias !558
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3, !noalias !558
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4, !noalias !558 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i: ; preds = %bb.g, %bb.f, %_ZN5arrow3ipc8internal16StreamBookKeeperC2ERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118, !noalias !558 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %4, align 8, !tbaa !119, !noalias !558
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !119, !noalias !558
  %.not.i.i.i5.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i5.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !558
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i6.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3, !noalias !558
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3, !noalias !558
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4, !noalias !558 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal17PayloadFileWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.j, %bb.i, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false), !noalias !558
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.ak, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchESt10shared_ptrINS_13MemoryManagerEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.106") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 11 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 10 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %7 = alloca %"class.arrow::Result.82", align 8  ; 12 uses
  %8 = alloca %"class.std::shared_ptr", align 16  ; 9 uses
  %9 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Result.207", align 8 ; 13 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %12 = alloca %"class.std::shared_ptr.153", align 16 ; 7 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !561
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !561
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8, !noalias !561
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8, !noalias !561
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8, !noalias !561
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !55, !noalias !561
  store ptr getelementptr inbounds inrange(-24, 64) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 0, i32 3), ptr %3, align 8, !tbaa !55, !noalias !561
  store ptr getelementptr inbounds inrange(-64, 56) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 1, i32 8), ptr %i.e, align 8, !tbaa !55, !noalias !561
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !454, !noalias !561
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !458, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !561
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(60) %5)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %.body, !noalias !561

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8, !tbaa !39, !noalias !561 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !561
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit49, label %bb.b

.body:                                            ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !561
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bx

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !561
  store ptr %i.n, ptr %6, align 8, !tbaa !39
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.q = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  %.not.i44 = icmp eq ptr %i.q, null
  br i1 %.not.i44, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !257, !range !187, !noundef !183
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit45, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit45

_ZN5arrow6StatusD2Ev.exit45:                      ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.bq

_ZN5arrow6StatusD2Ev.exit49:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.u = load i64, ptr %i.l, align 8, !tbaa !454, !noalias !561
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.v = load ptr, ptr %2, align 8, !tbaa !564    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 noundef %i.u)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %i.z = load ptr, ptr %7, align 8, !tbaa !39
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.f, !prof !256

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #28
  br label %bb.bn

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit49
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !351, !noalias !571
  store i64 %i.ad, ptr %9, align 8, !tbaa !351, !alias.scope !571
  store ptr null, ptr %i.ac, align 8, !tbaa !351, !noalias !571
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.t

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.h
  %i.ae = load ptr, ptr %9, align 8, !tbaa !351   ; 3 uses
  %.not.i50 = icmp eq ptr %i.ae, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ae) #28, !inline_history !357
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 2 uses
  %i.al = load <2 x ptr>, ptr %8, align 16, !tbaa !119
  store <2 x ptr> %i.al, ptr %11, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.j, %bb.k
  invoke void @_ZN5arrow6Buffer9GetWriterESt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.207") align 8 %10, ptr noundef nonnull %11)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.as, align 8, !tbaa !125
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !127
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !300
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i51 = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i51, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.p ], [ %i.bf, %bb.q ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  %i.bh = load ptr, ptr %10, align 8, !tbaa !39
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.v, label %bb.s, !prof !256

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %bb.aw

bb.t:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %9, align 8, !tbaa !351   ; 3 uses
  %.not.i52 = icmp eq ptr %i.bk, null
  br i1 %.not.i52, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit54, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i53: ; preds = %bb.t
end_hunk_6
begin_hunk_7_@_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !127
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !600
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !600
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread, !prof !274

_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !257, !range !187, !noundef !183
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_2io12OutputStreamEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc20SerializeRecordBatchERKNS_11RecordBatchERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.106") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(60) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.arrow::io::MockOutputStream", align 8 ; 11 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.arrow::Result.82", align 8  ; 12 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 10 uses
  %8 = alloca %"class.std::unique_ptr.86", align 8 ; 7 uses
  %9 = alloca %"class.arrow::io::FixedSizeBufferWriter", align 8 ; 7 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !601
  store i32 0, ptr %i.c, align 4, !tbaa !3, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !601
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 8), align 8, !noalias !601
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow2io16MockOutputStreamE, i64 16), align 8, !noalias !601
  %i.i = getelementptr i8, ptr %i.g, i64 -24
  %i.j = load i64, ptr %i.i, align 8, !noalias !601
  %i.k = getelementptr inbounds i8, ptr %3, i64 %i.j
  store ptr %i.h, ptr %i.k, align 8, !tbaa !55, !noalias !601
  store ptr getelementptr inbounds inrange(-24, 64) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 0, i32 3), ptr %3, align 8, !tbaa !55, !noalias !601
  store ptr getelementptr inbounds inrange(-64, 56) ({ [11 x ptr], [15 x ptr] }, ptr @_ZTVN5arrow2io16MockOutputStreamE, i32 0, i32 1, i32 8), ptr %i.e, align 8, !tbaa !55, !noalias !601
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !454, !noalias !601
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.m, align 8, !tbaa !458, !noalias !601
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !601
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(60) %2)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.b, !noalias !601

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.a
  %i.n = load ptr, ptr %4, align 8, !tbaa !39, !noalias !601 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !601
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit32, label %bb.c

common.resume:                                    ; preds = %bb.w, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.b ], [ %.pn20.pn.pn, %bb.w ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !601
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !601
  br label %common.resume

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !601
  store ptr %i.n, ptr %5, align 8, !tbaa !39
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.q = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  %.not.i27 = icmp eq ptr %i.q, null
  br i1 %.not.i27, label %_ZN5arrow6StatusD2Ev.exit28, label %bb.d, !prof !256

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !257, !range !187, !noundef !183
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN5arrow6StatusD2Ev.exit28, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %_ZN5arrow6StatusD2Ev.exit28

_ZN5arrow6StatusD2Ev.exit28:                      ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aa

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.u = load i64, ptr %i.l, align 8, !tbaa !454, !noalias !601
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.e) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !601
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !364
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.82") align 8 %6, i64 noundef %i.u, ptr noundef %i.w)
  %i.x = load ptr, ptr %6, align 8, !tbaa !39
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.f, !prof !256

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %bb.x

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !604)
  call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !351, !noalias !610
  store i64 %i.aa, ptr %8, align 8, !tbaa !351, !alias.scope !610
  store ptr null, ptr %i.z, align 8, !tbaa !351, !noalias !610
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit unwind label %bb.l

_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit: ; preds = %bb.g
  %i.ab = load ptr, ptr %8, align 8, !tbaa !351   ; 3 uses
  %.not.i33 = icmp eq ptr %i.ab, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ab) #28, !inline_history !357
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN5arrow2io21FixedSizeBufferWriterC1ERKSt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !611
  store i32 0, ptr %i.a, align 4, !tbaa !3, !noalias !611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !611
  invoke void @_ZN5arrow3ipc16WriteRecordBatchERKNS_11RecordBatchElPNS_2io12OutputStreamEPiPlRKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, ptr noundef nonnull %9, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(60) %2)
          to label %_ZN5arrow6StatusD2Ev.exit35 unwind label %bb.n

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !611
  %i.af = load ptr, ptr %11, align 8, !tbaa !39   ; 2 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit44, label %bb.i, !prof !256

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  %i.ah = load ptr, ptr %10, align 8, !tbaa !39   ; 2 uses
  %.not.i36 = icmp eq ptr %i.ah, null
  br i1 %.not.i36, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.j, !prof !256

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !257, !range !187, !noundef !183
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZN5arrow6StatusD2Ev.exit37, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %_ZN5arrow6StatusD2Ev.exit37

_ZN5arrow6StatusD2Ev.exit37:                      ; preds = %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %8, align 8, !tbaa !351   ; 3 uses
  %.not.i38 = icmp eq ptr %i.am, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i39: ; preds = %bb.l
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #28, !inline_history !357
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i39, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.w

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @_ZN5arrow2io21FixedSizeBufferWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #28
  br label %bb.v

_ZN5arrow6StatusD2Ev.exit44:                      ; preds = %_ZN5arrow6StatusD2Ev.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  store ptr null, ptr %0, align 8, !tbaa !39
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = load <2 x ptr>, ptr %7, align 16, !tbaa !119
  store ptr null, ptr %i.at, align 8, !tbaa !118
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !119
  store ptr null, ptr %7, align 16, !tbaa !33
  br label %bb.o

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit37, %_ZN5arrow6StatusD2Ev.exit44
  call void @_ZN5arrow2io21FixedSizeBufferWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ax, align 8, !tbaa !125
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !127
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !300
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.ba, %bb.s ], [ %i.bk, %bb.t ]
  %i.bl = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bl, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.x

bb.v:                                             ; preds = %bb.n, %bb.m
  %.pn20.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %i.aq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #28
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit40
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %bb.v ], [ %i.al, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.f
  %i.bm = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.y, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !256

bb.y:                                             ; preds = %bb.x
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !351 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.y
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bp) #28, !inline_history !358
  %.pr.pre.i = load ptr, ptr %6, align 8, !tbaa !39 ; 2 uses
  %.not.i.i46 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i46, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.x
  %i.bt = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bm, %bb.x ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !257, !range !187, !noundef !183
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #28
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit28, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit
  ret void
}

declare void @_ZN5arrow2io21FixedSizeBufferWriterC1ERKSt10shared_ptrINS_6BufferEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN5arrow2io21FixedSizeBufferWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc15SerializeSchemaERKNS_6SchemaEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.106") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.222", align 8 ; 13 uses
  %4 = alloca %"class.std::shared_ptr.226", align 16 ; 7 uses
  %5 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 9 uses
  %6 = alloca %"class.arrow::ipc::internal::IpcFormatWriter", align 8 ; 22 uses
  %7 = alloca %"class.std::unique_ptr.145", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5arrow2io18BufferOutputStream6CreateElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.222") align 8 %3, i64 noundef 1024, ptr noundef %2)
  %i.b = load ptr, ptr %3, align 8, !tbaa !39
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b, !prof !256

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %bb.ah

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !119, !noalias !620
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !621, !noalias !620
  store ptr null, ptr %i.f, align 8, !tbaa !118, !noalias !620
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !119, !alias.scope !620
  store ptr null, ptr %i.d, align 8, !tbaa !621, !noalias !620
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %5)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr %i.h, ptr %i.a, align 8, !tbaa !624
  invoke void @_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJPNS0_2io18BufferOutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.145") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %7, align 8, !tbaa !625
  store ptr null, ptr %7, align 8, !tbaa !625
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow3ipc8internal15IpcFormatWriterE, i32 0, i32 0, i32 2), ptr %6, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  store i64 %i.k, ptr %i.j, align 8, !tbaa !335
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %1, ptr %i.m, align 8, !tbaa !627
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  invoke void @_ZN5arrow3ipc21DictionaryFieldMapperC1ERKNS_6SchemaE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i8 0, ptr %i.o, align 8, !tbaa !628
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 104
  store ptr %i.q, ptr %i.p, align 8, !tbaa !629
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 1, ptr %i.r, align 8, !tbaa !630
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.t, align 8, !tbaa !631
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.u, i8 0, i64 18, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.v, ptr noundef nonnull align 8 dereferenceable(60) %5, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118  ; 2 uses
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !119
  store <2 x ptr> %i.aa, ptr %i.w, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !3
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.ab, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !335 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i: ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #28, !inline_history !632
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.am, i64 20, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.an, i8 0, i64 56, i1 false)
  %i.ao = load ptr, ptr %7, align 8, !tbaa !625   ; 3 uses
  %.not.i22 = icmp eq ptr %i.ao, null
  br i1 %.not.i22, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i: ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(104) %i.ao) #28, !inline_history !633
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke void @_ZN5arrow3ipc8internal15IpcFormatWriter5StartEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(240) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.p

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit
  %i.as = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  store ptr %i.as, ptr %8, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit35, label %bb.k, !prof !256

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  %i.au = load ptr, ptr %8, align 8, !tbaa !39    ; 2 uses
  %.not.i24 = icmp eq ptr %i.au, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.l, !prof !256

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !257, !range !187, !noundef !183
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.r

bb.n:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.o:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i, %bb.j
  %i.ba = load ptr, ptr %7, align 8, !tbaa !625   ; 3 uses
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31, label %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i30

_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i30: ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(104) %i.ba) #28, !inline_history !633
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31

_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i30, %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28, %bb.o
  %.pn = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.ag, %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit28 ], [ %i.ag, %_ZNKSt14default_deleteIN5arrow3ipc8internal19PayloadStreamWriterEEclEPS3_.exit.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.af

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.ae

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bf = load ptr, ptr %4, align 16, !tbaa !621
  invoke void @_ZN5arrow2io18BufferOutputStream6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.106") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %i.bf)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit25, %_ZN5arrow6StatusD2Ev.exit35
  call void @_ZN5arrow3ipc8internal15IpcFormatWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bi, align 8, !tbaa !125
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !127
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28, !inline_history !372
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28, !inline_history !372
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i = phi i32 [ %i.bl, %bb.v ], [ %i.bv, %bb.w ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.x, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, !prof !129

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit:          ; preds = %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !118 ; 8 uses
  %.not.i.i36 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i36, label %_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.by, align 8, !tbaa !125
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !127
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !634
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28, !inline_history !634
  br label %_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i37 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.cb, %bb.ab ], [ %i.cl, %bb.ac ]
  %i.cm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cm, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #28
  br label %_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ah

bb.ae:                                            ; preds = %bb.q, %bb.p
  %.pn17 = phi { ptr, i32 } [ %i.bg, %bb.q ], [ %i.be, %bb.p ]
  call void @_ZN5arrow3ipc8internal15IpcFormatWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %6) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.ae ], [ %.pn, %_ZNSt10unique_ptrIN5arrow3ipc8internal19PayloadStreamWriterESt14default_deleteIS3_EED2Ev.exit31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN5arrow3ipc15IpcWriteOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.af ], [ %i.ay, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn17.pn.pn

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.cn = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.ai, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread.i, !prof !256

bb.ai:                                            ; preds = %bb.ah
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i38, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cr, align 8, !tbaa !125
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !127
  %i.cw = load ptr, ptr %i.cq, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #28, !inline_history !635
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !55
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #28, !inline_history !635
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i

bb.al:                                            ; preds = %bb.aj
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i39 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i.i.i39, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cu, %bb.am ], [ %i.de, %bb.an ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.df, label %bb.ao, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i, !prof !129

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ak, %bb.ai
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !39   ; 2 uses
  %.not.i.i40 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i40, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread.i, !prof !274

_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i, %bb.ah
  %i.dg = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i ], [ %i.cn, %bb.ah ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !257, !range !187, !noundef !183
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

declare void @_ZN5arrow2io18BufferOutputStream6CreateElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.222") align 8, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5arrow3ipc8internal19PayloadStreamWriterEJPNS0_2io18BufferOutputStreamEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.145") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::ipc::IpcWriteOptions", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29 ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !624
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZN5arrow3ipc15IpcWriteOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcWriteOptions") align 8 %2)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal16IpcPayloadWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(60) %2, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 3 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !119
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !119
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !118
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.n = phi ptr [ %.pre, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.p, i64 20, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.b, ptr %i.q, align 8, !tbaa !323
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 -1, ptr %i.s, align 8, !tbaa !328
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal19PayloadStreamWriterE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55
  store ptr %i.a, ptr %0, align 8, !tbaa !625
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.t, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !127
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !372
  %i.ab = load ptr, ptr %i.n, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28, !inline_history !372
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.l, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, !prof !129

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #28
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit:          ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.m:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #30
  resume { ptr, i32 } %i.ai
}

declare void @_ZN5arrow2io18BufferOutputStream6FinishEv(ptr dead_on_unwind writable sret(%"class.arrow::Result.106") align 8, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow3ipc8internal15IpcFormatWriterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !372
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !372
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit

_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit:          ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow5ArrayEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.r) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5arrow3ipc21DictionaryFieldMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.s) #28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.v, align 8, !tbaa !125
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !127
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28, !inline_history !636
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28, !inline_history !636
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i1 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.k ], [ %i.ai, %bb.l ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc15IpcWriteOptionsD2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !335 ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.al) #28, !inline_history !637
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow2io18BufferOutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit.thread, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_2io18BufferOutputStreamEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !127
end_hunk_7
begin_hunk_8_@_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayE:bb.a

bb.ah:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.di = atomicrmw volatile add ptr %i.de, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i36 = load ptr, ptr %i.cy, align 8, !tbaa !42
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.dj = phi ptr [ %i.cz, %bb.ag ], [ %i.cz, %bb.ai ], [ %.pre.i36, %bb.aj ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.cy, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.ak:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr %i.cz, ptr noundef nonnull align 8 dereferenceable(16) @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer10VisitArrayERKNS_5ArrayEE11kNullBuffer)
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.ak, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorIN5arrow3ipc8internal13FieldMetadataESaIS3_EE9push_backEOS3_.exit
  call fastcc void @_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(128) %1), !inline_history !661
  br label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %bb.l, %bb.j, %bb.f
  ret void

bb.am:                                            ; preds = %bb.ae, %bb.g
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.ae ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350
  %i.c = load ptr, ptr %1, align 8, !tbaa !289    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !290
  %i.i = load ptr, ptr %0, align 8, !tbaa !289    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !129

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #31
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !256

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !288
  store i64 %i.r, ptr %i.o, align 8, !tbaa !288
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #30
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !289
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !290
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !350  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !256

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !288
  store i64 %i.z, ptr %i.i, align 8, !tbaa !288
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !256

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !289
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !350 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !289
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !350
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !288
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !288
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !256

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !288
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !288
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !289
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !350
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !33
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29, !noalias !662 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !125
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.a, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !3
  %i.f = sext i32 %i.e to i64
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef null, i64 noundef %i.f)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ISaIvEJDniEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i: ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #30
  resume { ptr, i32 } %i.g

_ZNSt10shared_ptrIN5arrow6BufferEEC2ISaIvEJDniEEESt20_Sp_alloc_shared_tagIT_EDpOT0_.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.h, align 8, !tbaa !118
  store ptr %i.d, ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #19

declare noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5arrow3ipc8internal17HasValidityBitmapENS_4Type4typeENS0_15MetadataVersionE(i32 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBitmapEllRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 noundef %1, i64 noundef %2, ptr %.0.val, ptr %.8.val, ptr noundef %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Result.106", align 8 ; 12 uses
  %.not2 = icmp eq ptr %.0.val, null
  br i1 %.not2, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.8.val, %i.b
  br i1 %.not.i.i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not7.i.i.i = icmp eq ptr %.8.val, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 3 uses
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.g = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.e ], [ %.pr.pre.i.i.i, %bb.f ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.i, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !127
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !665
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !665
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.j ], [ %i.v, %bb.k ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !129

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %.8.val, ptr %i.a, align 8, !tbaa !118
  br label %.sink.split

bb.m:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = ashr i64 %2, 3
  %i.y = and i64 %2, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i64
  %i.ab = add nsw i64 %i.x, 63
  %i.ac = add nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = srem i64 %i.ac, 64
  %i.ae = sub nsw i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !46
  %i.ah = icmp slt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.val, i64 9
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !346, !range !187, !noundef !183
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = select i1 %i.ak, ptr %i.am, ptr null, !prof !256
  call void @_ZN5arrow8internal10CopyBitmapEPNS_10MemoryPoolEPKhlll(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.106") align 8 %5, ptr noundef %3, ptr noundef %i.an, i64 noundef %1, i64 noundef %2, i64 noundef 0)
  %i.ao = load ptr, ptr %5, align 8, !tbaa !39
  %i.ap = icmp eq ptr %i.ao, null                 ; 2 uses
  br i1 %i.ap, label %bb.r, label %bb.p, !prof !256

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.aq

bb.r:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !119, !noalias !666
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !118 ; 8 uses
  store <2 x ptr> %i.at, ptr %4, align 8, !tbaa !119
  %.not.i.i.i.i19 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i19, label %_ZN5arrow6StatusC2ERKS0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.av, align 8, !tbaa !125
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !127
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !427
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #28, !inline_history !427
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.u:                                             ; preds = %bb.s
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_8
begin_hunk_9_@_ZN5arrow3ipc12_GLOBAL__N_118GetTruncatedBitmapEllRKSt10shared_ptrINS_6BufferEEPNS_10MemoryPoolEPS4_:bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cp, align 8, !tbaa !125
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4, !tbaa !127
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !55
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #28, !inline_history !665
  %i.cx = load ptr, ptr %i.co, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #28, !inline_history !665
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i31

bb.an:                                            ; preds = %bb.al
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i.i.i28 = icmp eq i8 %i.da, 0
  br i1 %.not.i9.i.i.i28, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.db = add nsw i32 %i.cs, -1
  store i32 %i.db, ptr %i.cp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

bb.ap:                                            ; preds = %bb.an
  %i.dc = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i30 = phi i32 [ %i.cs, %bb.ao ], [ %i.dc, %bb.ap ]
  %i.dd = icmp eq i32 %.0.i.i.i.i.i30, 1
  br i1 %i.dd, label %bb.aq, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i31, !prof !129

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i31

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i31: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29, %bb.am, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i26
  store ptr %.8.val, ptr %i.ch, align 8, !tbaa !118
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, %bb.ag, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i31, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !39
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store ptr null, ptr %i.f, align 8, !tbaa !118
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !119
  store ptr null, ptr %1, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !42
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !180
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16
  ret ptr %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !299
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !119
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !42
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.m = phi ptr [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ %.pre, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !42
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.pre3 = load ptr, ptr %i.a, align 8, !tbaa !180
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit
  %i.o = phi ptr [ %.pre3, %bb.f ], [ %i.n, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit ]
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -16
  ret ptr %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #28, !inline_history !671
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.12", align 16 ; 5 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !674
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !346
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !675
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !676
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !677
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.12") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !118  ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !127
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !678
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !678
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !564
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !579 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !582, !range !187, !noundef !183
  store i8 %i.af, ptr %i.b, align 1, !tbaa !346
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !679

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !677
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !118 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !125
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !127
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28, !inline_history !680
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28, !inline_history !680
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void

bb.p:                                             ; preds = %bb.a
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.12") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow6BufferE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !680
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !680
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !125
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !127
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !300
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i2 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.249") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA28_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(28) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !681
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !681
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !684, !noalias !681, !nonnull !183, !align !184
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %2) #28, !noalias !681
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !681 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !681
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !681
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !111
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA28_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

end_hunk_9
begin_hunk_10_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i: ; preds = %bb.nn
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !55, !noalias !890
  %i.bao = getelementptr inbounds nuw i8, ptr %i.ban, i64 8
  %i.bap = load ptr, ptr %i.bao, align 8, !noalias !890
  call void %i.bap(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bam) #28, !noalias !890, !inline_history !914
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i, %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28, !noalias !890
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.ne
  %i.baq = load ptr, ptr %154, align 8, !tbaa !39, !noalias !890 ; 2 uses
  %i.bar = icmp eq ptr %i.baq, null
  br i1 %i.bar, label %bb.no, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !256

bb.no:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.bas = getelementptr inbounds nuw i8, ptr %154, i64 8
  %i.bat = load ptr, ptr %i.bas, align 8, !tbaa !351, !noalias !890 ; 3 uses
  %.not.i.i.i.i67.i.i = icmp eq ptr %i.bat, null
  br i1 %.not.i.i.i.i67.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.no
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !55, !noalias !884
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bau, i64 8
  %i.baw = load ptr, ptr %i.bav, align 8, !noalias !884
  call void %i.baw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bat) #28, !noalias !884, !inline_history !915
  %.pr.pre.i.i.i = load ptr, ptr %154, align 8, !tbaa !39, !noalias !890 ; 2 uses
  %.not.i.i68.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not.i.i68.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.bax = phi ptr [ %.pr.pre.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.baq, %_ZN5arrow6StatusC2ERKS0_.exit.i.i ]
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 1
  %i.baz = load i8, ptr %i.bay, align 1, !tbaa !257, !range !187, !noalias !884, !noundef !183
  %i.bba = trunc nuw i8 %i.baz to i1
  br i1 %i.bba, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i, label %bb.np

bb.np:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %154) #28, !noalias !884
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i: ; preds = %bb.np, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #28, !noalias !890
  br i1 %i.axz, label %_ZN5arrow6StatusD2Ev.exit.thread92.i, label %_ZN5arrow6StatusD2Ev.exit.i395

bb.nq:                                            ; preds = %._crit_edge.i.i
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  %i.bbc = load ptr, ptr %155, align 8, !tbaa !351, !noalias !890 ; 3 uses
  %.not.i69.i.i = icmp eq ptr %i.bbc, null
  br i1 %.not.i69.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i: ; preds = %bb.nq
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !55, !noalias !890
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 8
  %i.bbf = load ptr, ptr %i.bbe, align 8, !noalias !890
  call void %i.bbf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bbc) #28, !noalias !890, !inline_history !914
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i, %bb.nq
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #28, !noalias !890
  br label %bb.nr

bb.nr:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i, %bb.nf
  %.pn51.i.i = phi { ptr, i32 } [ %i.aya, %bb.nf ], [ %i.bbb, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %154) #28, !noalias !884
  call void @llvm.lifetime.end.p0(ptr nonnull %154) #28, !noalias !890
  br label %bb.pm

bb.ns:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.axm, i64 32
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !647, !noalias !890
  %i.bbi = icmp slt i64 %i.bbh, 1
  br i1 %i.bbi, label %bb.nt, label %.critedge55.thread.i.i

bb.nt:                                            ; preds = %bb.ns
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.axm, i64 40
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !45, !noalias !916 ; 2 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbk, i64 16
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !33, !noalias !916 ; 2 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbk, i64 24
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !118, !noalias !916 ; 8 uses
  %.not.i.i.i.i72.i.i = icmp eq ptr %i.bbo, null
  br i1 %.not.i.i.i.i72.i.i, label %bb.nx, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 8 ; 7 uses
  %i.bbq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !916
  %.not.i.i.i.i.i73.i.i = icmp eq i8 %i.bbq, 0
  br i1 %.not.i.i.i.i.i73.i.i, label %bb.nw, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bbr = load i32, ptr %i.bbp, align 4, !tbaa !3, !noalias !916
  %i.bbs = add nsw i32 %i.bbr, 1
  store i32 %i.bbs, ptr %i.bbp, align 4, !tbaa !3, !noalias !916
  br label %bb.ny

bb.nw:                                            ; preds = %bb.nu
  %i.bbt = atomicrmw volatile add ptr %i.bbp, i32 1 acq_rel, align 4, !noalias !916 ; 0 uses
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nt
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbm, i64 24
  %i.bbv = load i64, ptr %i.bbu, align 8, !tbaa !46, !noalias !890
  %i.bbw = icmp sgt i64 %i.bbv, %i.axb
  br i1 %i.bbw, label %.critedge55.thread.i.i, label %bb.pc

bb.ny:                                            ; preds = %bb.nw, %bb.nv
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbm, i64 24
  %i.bby = load i64, ptr %i.bbx, align 8, !tbaa !46, !noalias !890
  %i.bbz = icmp sgt i64 %i.bby, %i.axb            ; 3 uses
  %i.bca = load atomic i64, ptr %i.bbp acquire, align 8, !noalias !890 ; 2 uses
  %i.bcb = icmp eq i64 %i.bca, 4294967297
  %i.bcc = trunc i64 %i.bca to i32                ; 2 uses
  br i1 %i.bcb, label %bb.nz, label %bb.oa

bb.nz:                                            ; preds = %bb.ny
  store i32 0, ptr %i.bbp, align 8, !tbaa !125, !noalias !890
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbo, i64 12
  store i32 0, ptr %i.bcd, align 4, !tbaa !127, !noalias !890
  %i.bce = load ptr, ptr %i.bbo, align 8, !tbaa !55, !noalias !890
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 16
  %i.bcg = load ptr, ptr %i.bcf, align 8, !noalias !890
  call void %i.bcg(ptr noundef nonnull align 8 dereferenceable(16) %i.bbo) #28, !noalias !890, !inline_history !919
  %i.bch = load ptr, ptr %i.bbo, align 8, !tbaa !55, !noalias !890
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 24
  %i.bcj = load ptr, ptr %i.bci, align 8, !noalias !890
  call void %i.bcj(ptr noundef nonnull align 8 dereferenceable(16) %i.bbo) #28, !noalias !890, !inline_history !919
  br i1 %i.bbz, label %.critedge55.thread.i.i, label %bb.pc

bb.oa:                                            ; preds = %bb.ny
  %i.bck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i76.i.i = icmp eq i8 %i.bck, 0
  br i1 %.not.i.i.i76.i.i, label %bb.oc, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bcl = add nsw i32 %i.bcc, -1
  store i32 %i.bcl, ptr %i.bbp, align 8, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

bb.oc:                                            ; preds = %bb.oa
  %i.bcm = atomicrmw volatile add ptr %i.bbp, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i: ; preds = %bb.oc, %bb.ob
  %.0.i.i.i.i78.i.i = phi i32 [ %i.bcc, %bb.ob ], [ %i.bcm, %bb.oc ]
  %i.bcn = icmp eq i32 %.0.i.i.i.i78.i.i, 1
  br i1 %i.bcn, label %bb.od, label %.critedge55.i.i, !prof !129

bb.od:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bbo) #28, !noalias !890
  br i1 %i.bbz, label %.critedge55.thread.i.i, label %bb.pc

.critedge55.i.i:                                  ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i
  br i1 %i.bbz, label %.critedge55.thread.i.i, label %bb.pc

.critedge55.thread.i.i:                           ; preds = %.critedge55.i.i, %bb.od, %bb.nz, %bb.nx, %bb.ns
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.bco = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !923
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bco, i64 40
  %i.bcq = load ptr, ptr %i.bcp, align 8, !tbaa !45, !noalias !923 ; 2 uses
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bcq, i64 16
  %i.bcs = getelementptr inbounds nuw i8, ptr %156, i64 8 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bcq, i64 24
  %i.bcu = load ptr, ptr %i.bct, align 8, !tbaa !118, !noalias !923 ; 2 uses
  %i.bcv = load <2 x ptr>, ptr %i.bcr, align 8, !tbaa !119, !noalias !923
  store <2 x ptr> %i.bcv, ptr %156, align 16, !tbaa !119, !alias.scope !920, !noalias !890
  %.not.i.i.i.i80.i.i = icmp eq ptr %i.bcu, null
  br i1 %.not.i.i.i.i80.i.i, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i, label %bb.oe

bb.oe:                                            ; preds = %.critedge55.thread.i.i
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcu, i64 8 ; 3 uses
  %i.bcx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !923
  %.not.i.i.i.i.i81.i.i = icmp eq i8 %i.bcx, 0
  br i1 %.not.i.i.i.i.i81.i.i, label %bb.og, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.bcy = load i32, ptr %i.bcw, align 4, !tbaa !3, !noalias !923
  %i.bcz = add nsw i32 %i.bcy, 1
  store i32 %i.bcz, ptr %i.bcw, align 4, !tbaa !3, !noalias !923
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i

bb.og:                                            ; preds = %bb.oe
  %i.bda = atomicrmw volatile add ptr %i.bcw, i32 1 acq_rel, align 4, !noalias !923 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i: ; preds = %bb.og, %bb.of, %.critedge55.thread.i.i
  %i.bdb = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !890
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 32
  %i.bdd = load i64, ptr %i.bdc, align 8, !tbaa !647, !noalias !890
  %i.bde = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i unwind label %bb.pb, !noalias !890 ; 6 uses

.noexc83.i.i:                                     ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.bdf = shl i64 %i.bdd, 2
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  store i32 1, ptr %i.bdg, align 8, !tbaa !125, !noalias !924
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bde, i64 12
  store i32 1, ptr %i.bdh, align 4, !tbaa !127, !noalias !924
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.bde, align 8, !tbaa !55, !noalias !924
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bde, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %151), !noalias !924
  %i.bdj = load <2 x ptr>, ptr %156, align 16, !tbaa !119, !noalias !924
  store ptr null, ptr %i.bcs, align 8, !tbaa !118, !noalias !924
  store <2 x ptr> %i.bdj, ptr %151, align 16, !tbaa !119, !noalias !924
  store ptr null, ptr %156, align 16, !tbaa !33, !noalias !924
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.bdi, ptr noundef nonnull %151, i64 noundef %i.bdf, i64 noundef %i.axb)
          to label %bb.oh unwind label %.body.i80.i, !noalias !924

bb.oh:                                            ; preds = %.noexc83.i.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %151, i64 8
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !118, !noalias !924 ; 8 uses
  %.not.i.i.i.i81.i = icmp eq ptr %i.bdl, null
  br i1 %.not.i.i.i.i81.i, label %bb.oo, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 8 ; 4 uses
  %i.bdn = load atomic i64, ptr %i.bdm acquire, align 8, !noalias !924 ; 2 uses
  %i.bdo = icmp eq i64 %i.bdn, 4294967297
  %i.bdp = trunc i64 %i.bdn to i32                ; 2 uses
  br i1 %i.bdo, label %bb.oj, label %bb.ok

bb.oj:                                            ; preds = %bb.oi
  store i32 0, ptr %i.bdm, align 8, !tbaa !125, !noalias !924
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 12
  store i32 0, ptr %i.bdq, align 4, !tbaa !127, !noalias !924
  %i.bdr = load ptr, ptr %i.bdl, align 8, !tbaa !55, !noalias !924
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  %i.bdt = load ptr, ptr %i.bds, align 8, !noalias !924
  call void %i.bdt(ptr noundef nonnull align 8 dereferenceable(16) %i.bdl) #28, !noalias !924, !inline_history !929
  %i.bdu = load ptr, ptr %i.bdl, align 8, !tbaa !55, !noalias !924
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdu, i64 24
  %i.bdw = load ptr, ptr %i.bdv, align 8, !noalias !924
  call void %i.bdw(ptr noundef nonnull align 8 dereferenceable(16) %i.bdl) #28, !noalias !924, !inline_history !929
  br label %bb.oo

bb.ok:                                            ; preds = %bb.oi
  %i.bdx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !924
  %.not.i.i.i.i.i82.i = icmp eq i8 %i.bdx, 0
  br i1 %.not.i.i.i.i.i82.i, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bdy = add nsw i32 %i.bdp, -1
  store i32 %i.bdy, ptr %i.bdm, align 8, !tbaa !3, !noalias !924
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i

bb.om:                                            ; preds = %bb.ok
  %i.bdz = atomicrmw volatile add ptr %i.bdm, i32 -1 acq_rel, align 4, !noalias !924
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i: ; preds = %bb.om, %bb.ol
  %.0.i.i.i.i.i.i84.i = phi i32 [ %i.bdp, %bb.ol ], [ %i.bdz, %bb.om ]
  %i.bea = icmp eq i32 %.0.i.i.i.i.i.i84.i, 1
  br i1 %i.bea, label %bb.on, label %bb.oo, !prof !129

bb.on:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bdl) #28, !noalias !924
  br label %bb.oo

.body.i80.i:                                      ; preds = %.noexc83.i.i
  %i.beb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %151) #28, !noalias !924
  call void @_ZdlPvm(ptr noundef nonnull %i.bde, i64 noundef 96) #30, !noalias !924
  br label %.body.i.i

bb.oo:                                            ; preds = %bb.on, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i, %bb.oj, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %151), !noalias !924
  store ptr %i.bdi, ptr %157, align 16, !tbaa !351, !noalias !890
  %i.bec = getelementptr inbounds nuw i8, ptr %157, i64 8 ; 2 uses
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !118, !noalias !890 ; 8 uses
  store ptr %i.bde, ptr %i.bec, align 8, !tbaa !118, !noalias !890
  %.not.i.i.i.i84.i.i = icmp eq ptr %i.bed, null
  br i1 %.not.i.i.i.i84.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 8 ; 4 uses
  %i.bef = load atomic i64, ptr %i.bee acquire, align 8, !noalias !890 ; 2 uses
  %i.beg = icmp eq i64 %i.bef, 4294967297
  %i.beh = trunc i64 %i.bef to i32                ; 2 uses
  br i1 %i.beg, label %bb.oq, label %bb.or

bb.oq:                                            ; preds = %bb.op
  store i32 0, ptr %i.bee, align 8, !tbaa !125, !noalias !890
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bed, i64 12
  store i32 0, ptr %i.bei, align 4, !tbaa !127, !noalias !890
  %i.bej = load ptr, ptr %i.bed, align 8, !tbaa !55, !noalias !890
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 16
  %i.bel = load ptr, ptr %i.bek, align 8, !noalias !890
  call void %i.bel(ptr noundef nonnull align 8 dereferenceable(16) %i.bed) #28, !noalias !890, !inline_history !894
  %i.bem = load ptr, ptr %i.bed, align 8, !tbaa !55, !noalias !890
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bem, i64 24
  %i.beo = load ptr, ptr %i.ben, align 8, !noalias !890
  call void %i.beo(ptr noundef nonnull align 8 dereferenceable(16) %i.bed) #28, !noalias !890, !inline_history !894
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i

bb.or:                                            ; preds = %bb.op
  %i.bep = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i.i.i85.i.i = icmp eq i8 %i.bep, 0
  br i1 %.not.i.i.i.i.i85.i.i, label %bb.ot, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.beq = add nsw i32 %i.beh, -1
  store i32 %i.beq, ptr %i.bee, align 8, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i

bb.ot:                                            ; preds = %bb.or
  %i.ber = atomicrmw volatile add ptr %i.bee, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i: ; preds = %bb.ot, %bb.os
  %.0.i.i.i.i.i.i87.i.i = phi i32 [ %i.beh, %bb.os ], [ %i.ber, %bb.ot ]
  %i.bes = icmp eq i32 %.0.i.i.i.i.i.i87.i.i, 1
  br i1 %i.bes, label %bb.ou, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i, !prof !129

bb.ou:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bed) #28, !noalias !890
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i: ; preds = %bb.ou, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i, %bb.oq, %bb.oo
  %i.bet = load ptr, ptr %i.bcs, align 8, !tbaa !118, !noalias !890 ; 8 uses
  %.not.i.i94.i.i = icmp eq ptr %i.bet, null
  br i1 %.not.i.i94.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread92.i, label %bb.ov

bb.ov:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 8 ; 4 uses
  %i.bev = load atomic i64, ptr %i.beu acquire, align 8, !noalias !890 ; 2 uses
  %i.bew = icmp eq i64 %i.bev, 4294967297
  %i.bex = trunc i64 %i.bev to i32                ; 2 uses
  br i1 %i.bew, label %bb.ow, label %bb.ox

bb.ow:                                            ; preds = %bb.ov
  store i32 0, ptr %i.beu, align 8, !tbaa !125, !noalias !890
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bet, i64 12
  store i32 0, ptr %i.bey, align 4, !tbaa !127, !noalias !890
  %i.bez = load ptr, ptr %i.bet, align 8, !tbaa !55, !noalias !890
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.bez, i64 16
  %i.bfb = load ptr, ptr %i.bfa, align 8, !noalias !890
  call void %i.bfb(ptr noundef nonnull align 8 dereferenceable(16) %i.bet) #28, !noalias !890, !inline_history !919
  %i.bfc = load ptr, ptr %i.bet, align 8, !tbaa !55, !noalias !890
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfc, i64 24
  %i.bfe = load ptr, ptr %i.bfd, align 8, !noalias !890
  call void %i.bfe(ptr noundef nonnull align 8 dereferenceable(16) %i.bet) #28, !noalias !890, !inline_history !919
  br label %_ZN5arrow6StatusD2Ev.exit.thread92.i

bb.ox:                                            ; preds = %bb.ov
  %i.bff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !890
  %.not.i.i.i95.i.i = icmp eq i8 %i.bff, 0
  br i1 %.not.i.i.i95.i.i, label %bb.oz, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bfg = add nsw i32 %i.bex, -1
  store i32 %i.bfg, ptr %i.beu, align 8, !tbaa !3, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i

bb.oz:                                            ; preds = %bb.ox
  %i.bfh = atomicrmw volatile add ptr %i.beu, i32 -1 acq_rel, align 4, !noalias !890
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i: ; preds = %bb.oz, %bb.oy
  %.0.i.i.i.i97.i.i = phi i32 [ %i.bex, %bb.oy ], [ %i.bfh, %bb.oz ]
  %i.bfi = icmp eq i32 %.0.i.i.i.i97.i.i, 1
  br i1 %i.bfi, label %bb.pa, label %_ZN5arrow6StatusD2Ev.exit.thread92.i, !prof !129

bb.pa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bet) #28, !noalias !890
  br label %_ZN5arrow6StatusD2Ev.exit.thread92.i

bb.pb:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.pb, %.body.i80.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bfj, %bb.pb ], [ %i.beb, %.body.i80.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %156) #28, !noalias !890
  br label %bb.pm

bb.pc:                                            ; preds = %.critedge55.i.i, %bb.od, %bb.nz, %bb.nx
  %i.bfk = load ptr, ptr %i.avv, align 8, !tbaa !115, !noalias !930
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfk, i64 40
  %i.bfm = load ptr, ptr %i.bfl, align 8, !tbaa !45, !noalias !930 ; 2 uses
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfm, i64 16
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfm, i64 24
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !118, !noalias !930 ; 2 uses
  %i.bfq = load <2 x ptr>, ptr %i.bfn, align 8, !tbaa !119, !noalias !930
  %.not.i.i.i.i99.i.i = icmp eq ptr %i.bfp, null
  br i1 %.not.i.i.i.i99.i.i, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.bfr = getelementptr inbounds nuw i8, ptr %i.bfp, i64 8 ; 3 uses
  %i.bfs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !930
  %.not.i.i.i.i.i100.i.i = icmp eq i8 %i.bfs, 0
  br i1 %.not.i.i.i.i.i100.i.i, label %bb.pf, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bft = load i32, ptr %i.bfr, align 4, !tbaa !3, !noalias !930
  %i.bfu = add nsw i32 %i.bft, 1
  store i32 %i.bfu, ptr %i.bfr, align 4, !tbaa !3, !noalias !930
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i
end_hunk_10
begin_hunk_11_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i517: ; preds = %bb.sb
  %i.bqi = load ptr, ptr %i.bqh, align 8, !tbaa !55, !noalias !954
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8
  %i.bqk = load ptr, ptr %i.bqj, align 8, !noalias !954
  call void %i.bqk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqh) #28, !noalias !954, !inline_history !971
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i517, %bb.sb
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28, !noalias !954
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i494

_ZN5arrow6StatusC2ERKS0_.exit.i.i494:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i518, %bb.rs
  %i.bql = load ptr, ptr %143, align 8, !tbaa !39, !noalias !954 ; 2 uses
  %i.bqm = icmp eq ptr %i.bql, null
  br i1 %i.bqm, label %bb.sc, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, !prof !256

bb.sc:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i494
  %i.bqn = getelementptr inbounds nuw i8, ptr %143, i64 8
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !351, !noalias !954 ; 3 uses
  %.not.i.i.i.i67.i.i497 = icmp eq ptr %i.bqo, null
  br i1 %.not.i.i.i.i67.i.i497, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498: ; preds = %bb.sc
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !55, !noalias !948
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqp, i64 8
  %i.bqr = load ptr, ptr %i.bqq, align 8, !noalias !948
  call void %i.bqr(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqo) #28, !noalias !948, !inline_history !972
  %.pr.pre.i.i.i499 = load ptr, ptr %143, align 8, !tbaa !39, !noalias !954 ; 2 uses
  %.not.i.i68.i.i500 = icmp eq ptr %.pr.pre.i.i.i499, null
  br i1 %.not.i.i68.i.i500, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498, %_ZN5arrow6StatusC2ERKS0_.exit.i.i494
  %i.bqs = phi ptr [ %.pr.pre.i.i.i499, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498 ], [ %i.bql, %_ZN5arrow6StatusC2ERKS0_.exit.i.i494 ]
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqs, i64 1
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !257, !range !187, !noalias !948, !noundef !183
  %i.bqv = trunc nuw i8 %i.bqu to i1
  br i1 %i.bqv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496, label %bb.sd

bb.sd:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %143) #28, !noalias !948
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i496: ; preds = %bb.sd, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i495, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i498, %bb.sc
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #28, !noalias !954
  br i1 %i.bnu, label %_ZN5arrow6StatusD2Ev.exit.thread92.i432, label %_ZN5arrow6StatusD2Ev.exit.i490

bb.se:                                            ; preds = %._crit_edge.i.i507
  %i.bqw = landingpad { ptr, i32 }
          cleanup
  %i.bqx = load ptr, ptr %144, align 8, !tbaa !351, !noalias !954 ; 3 uses
  %.not.i69.i.i508 = icmp eq ptr %i.bqx, null
  br i1 %.not.i69.i.i508, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i510, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i509

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i509: ; preds = %bb.se
  %i.bqy = load ptr, ptr %i.bqx, align 8, !tbaa !55, !noalias !954
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqy, i64 8
  %i.bra = load ptr, ptr %i.bqz, align 8, !noalias !954
  call void %i.bra(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bqx) #28, !noalias !954, !inline_history !971
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i510

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i510: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i509, %bb.se
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #28, !noalias !954
  br label %bb.sf

bb.sf:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i510, %bb.rt
  %.pn51.i.i493 = phi { ptr, i32 } [ %i.bnv, %bb.rt ], [ %i.bqw, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i510 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %143) #28, !noalias !948
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #28, !noalias !954
  br label %bb.ua

bb.sg:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i409
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bnh, i64 32
  %i.brc = load i64, ptr %i.brb, align 8, !tbaa !647, !noalias !954
  %i.brd = icmp slt i64 %i.brc, 1
  br i1 %i.brd, label %bb.sh, label %.critedge55.thread.i.i410

bb.sh:                                            ; preds = %bb.sg
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bnh, i64 40
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !45, !noalias !973 ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 16
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !33, !noalias !973 ; 2 uses
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brf, i64 24
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !118, !noalias !973 ; 8 uses
  %.not.i.i.i.i72.i.i477 = icmp eq ptr %i.brj, null
  br i1 %.not.i.i.i.i72.i.i477, label %bb.sl, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 8 ; 7 uses
  %i.brl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !973
  %.not.i.i.i.i.i73.i.i478 = icmp eq i8 %i.brl, 0
  br i1 %.not.i.i.i.i.i73.i.i478, label %bb.sk, label %bb.sj

bb.sj:                                            ; preds = %bb.si
  %i.brm = load i32, ptr %i.brk, align 4, !tbaa !3, !noalias !973
  %i.brn = add nsw i32 %i.brm, 1
  store i32 %i.brn, ptr %i.brk, align 4, !tbaa !3, !noalias !973
  br label %bb.sm

bb.sk:                                            ; preds = %bb.si
  %i.bro = atomicrmw volatile add ptr %i.brk, i32 1 acq_rel, align 4, !noalias !973 ; 0 uses
  br label %bb.sm

bb.sl:                                            ; preds = %bb.sh
  %i.brp = getelementptr inbounds nuw i8, ptr %i.brh, i64 24
  %i.brq = load i64, ptr %i.brp, align 8, !tbaa !46, !noalias !954
  %i.brr = icmp sgt i64 %i.brq, %i.bmw
  br i1 %i.brr, label %.critedge55.thread.i.i410, label %bb.tq

bb.sm:                                            ; preds = %bb.sk, %bb.sj
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brh, i64 24
  %i.brt = load i64, ptr %i.brs, align 8, !tbaa !46, !noalias !954
  %i.bru = icmp sgt i64 %i.brt, %i.bmw            ; 3 uses
  %i.brv = load atomic i64, ptr %i.brk acquire, align 8, !noalias !954 ; 2 uses
  %i.brw = icmp eq i64 %i.brv, 4294967297
  %i.brx = trunc i64 %i.brv to i32                ; 2 uses
  br i1 %i.brw, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  store i32 0, ptr %i.brk, align 8, !tbaa !125, !noalias !954
  %i.bry = getelementptr inbounds nuw i8, ptr %i.brj, i64 12
  store i32 0, ptr %i.bry, align 4, !tbaa !127, !noalias !954
  %i.brz = load ptr, ptr %i.brj, align 8, !tbaa !55, !noalias !954
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 16
  %i.bsb = load ptr, ptr %i.bsa, align 8, !noalias !954
  call void %i.bsb(ptr noundef nonnull align 8 dereferenceable(16) %i.brj) #28, !noalias !954, !inline_history !976
  %i.bsc = load ptr, ptr %i.brj, align 8, !tbaa !55, !noalias !954
  %i.bsd = getelementptr inbounds nuw i8, ptr %i.bsc, i64 24
  %i.bse = load ptr, ptr %i.bsd, align 8, !noalias !954
  call void %i.bse(ptr noundef nonnull align 8 dereferenceable(16) %i.brj) #28, !noalias !954, !inline_history !976
  br i1 %i.bru, label %.critedge55.thread.i.i410, label %bb.tq

bb.so:                                            ; preds = %bb.sm
  %i.bsf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i76.i.i479 = icmp eq i8 %i.bsf, 0
  br i1 %.not.i.i.i76.i.i479, label %bb.sq, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.bsg = add nsw i32 %i.brx, -1
  store i32 %i.bsg, ptr %i.brk, align 8, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i480

bb.sq:                                            ; preds = %bb.so
  %i.bsh = atomicrmw volatile add ptr %i.brk, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i480

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i480: ; preds = %bb.sq, %bb.sp
  %.0.i.i.i.i78.i.i481 = phi i32 [ %i.brx, %bb.sp ], [ %i.bsh, %bb.sq ]
  %i.bsi = icmp eq i32 %.0.i.i.i.i78.i.i481, 1
  br i1 %i.bsi, label %bb.sr, label %.critedge55.i.i482, !prof !129

bb.sr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i480
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.brj) #28, !noalias !954
  br i1 %i.bru, label %.critedge55.thread.i.i410, label %bb.tq

.critedge55.i.i482:                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i480
  br i1 %i.bru, label %.critedge55.thread.i.i410, label %bb.tq

.critedge55.thread.i.i410:                        ; preds = %.critedge55.i.i482, %bb.sr, %bb.sn, %bb.sl, %bb.sg
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.bsj = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !980
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsj, i64 40
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !45, !noalias !980 ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 16
  %i.bsn = getelementptr inbounds nuw i8, ptr %145, i64 8 ; 2 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsl, i64 24
  %i.bsp = load ptr, ptr %i.bso, align 8, !tbaa !118, !noalias !980 ; 2 uses
  %i.bsq = load <2 x ptr>, ptr %i.bsm, align 8, !tbaa !119, !noalias !980
  store <2 x ptr> %i.bsq, ptr %145, align 16, !tbaa !119, !alias.scope !977, !noalias !954
  %.not.i.i.i.i80.i.i411 = icmp eq ptr %i.bsp, null
  br i1 %.not.i.i.i.i80.i.i411, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413, label %bb.ss

bb.ss:                                            ; preds = %.critedge55.thread.i.i410
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsp, i64 8 ; 3 uses
  %i.bss = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !980
  %.not.i.i.i.i.i81.i.i412 = icmp eq i8 %i.bss, 0
  br i1 %.not.i.i.i.i.i81.i.i412, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  %i.bst = load i32, ptr %i.bsr, align 4, !tbaa !3, !noalias !980
  %i.bsu = add nsw i32 %i.bst, 1
  store i32 %i.bsu, ptr %i.bsr, align 4, !tbaa !3, !noalias !980
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413

bb.su:                                            ; preds = %bb.ss
  %i.bsv = atomicrmw volatile add ptr %i.bsr, i32 1 acq_rel, align 4, !noalias !980 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413: ; preds = %bb.su, %bb.st, %.critedge55.thread.i.i410
  %i.bsw = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !954
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 32
  %i.bsy = load i64, ptr %i.bsx, align 8, !tbaa !647, !noalias !954
  %i.bsz = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i417 unwind label %bb.tp, !noalias !954 ; 6 uses

.noexc83.i.i417:                                  ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413
  %i.bta = shl i64 %i.bsy, 2
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  store i32 1, ptr %i.btb, align 8, !tbaa !125, !noalias !981
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bsz, i64 12
  store i32 1, ptr %i.btc, align 4, !tbaa !127, !noalias !981
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.bsz, align 8, !tbaa !55, !noalias !981
  %i.btd = getelementptr inbounds nuw i8, ptr %i.bsz, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %140), !noalias !981
  %i.bte = load <2 x ptr>, ptr %145, align 16, !tbaa !119, !noalias !981
  store ptr null, ptr %i.bsn, align 8, !tbaa !118, !noalias !981
  store <2 x ptr> %i.bte, ptr %140, align 16, !tbaa !119, !noalias !981
  store ptr null, ptr %145, align 16, !tbaa !33, !noalias !981
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.btd, ptr noundef nonnull %140, i64 noundef %i.bta, i64 noundef %i.bmw)
          to label %bb.sv unwind label %.body.i80.i418, !noalias !981

bb.sv:                                            ; preds = %.noexc83.i.i417
  %i.btf = getelementptr inbounds nuw i8, ptr %140, i64 8
  %i.btg = load ptr, ptr %i.btf, align 8, !tbaa !118, !noalias !981 ; 8 uses
  %.not.i.i.i.i81.i419 = icmp eq ptr %i.btg, null
  br i1 %.not.i.i.i.i81.i419, label %bb.tc, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btg, i64 8 ; 4 uses
  %i.bti = load atomic i64, ptr %i.bth acquire, align 8, !noalias !981 ; 2 uses
  %i.btj = icmp eq i64 %i.bti, 4294967297
  %i.btk = trunc i64 %i.bti to i32                ; 2 uses
  br i1 %i.btj, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  store i32 0, ptr %i.bth, align 8, !tbaa !125, !noalias !981
  %i.btl = getelementptr inbounds nuw i8, ptr %i.btg, i64 12
  store i32 0, ptr %i.btl, align 4, !tbaa !127, !noalias !981
  %i.btm = load ptr, ptr %i.btg, align 8, !tbaa !55, !noalias !981
  %i.btn = getelementptr inbounds nuw i8, ptr %i.btm, i64 16
  %i.bto = load ptr, ptr %i.btn, align 8, !noalias !981
  call void %i.bto(ptr noundef nonnull align 8 dereferenceable(16) %i.btg) #28, !noalias !981, !inline_history !986
  %i.btp = load ptr, ptr %i.btg, align 8, !tbaa !55, !noalias !981
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 24
  %i.btr = load ptr, ptr %i.btq, align 8, !noalias !981
  call void %i.btr(ptr noundef nonnull align 8 dereferenceable(16) %i.btg) #28, !noalias !981, !inline_history !986
  br label %bb.tc

bb.sy:                                            ; preds = %bb.sw
  %i.bts = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !981
  %.not.i.i.i.i.i82.i420 = icmp eq i8 %i.bts, 0
  br i1 %.not.i.i.i.i.i82.i420, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.btt = add nsw i32 %i.btk, -1
  store i32 %i.btt, ptr %i.bth, align 8, !tbaa !3, !noalias !981
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i421

bb.ta:                                            ; preds = %bb.sy
  %i.btu = atomicrmw volatile add ptr %i.bth, i32 -1 acq_rel, align 4, !noalias !981
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i421

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i421: ; preds = %bb.ta, %bb.sz
  %.0.i.i.i.i.i.i84.i422 = phi i32 [ %i.btk, %bb.sz ], [ %i.btu, %bb.ta ]
  %i.btv = icmp eq i32 %.0.i.i.i.i.i.i84.i422, 1
  br i1 %i.btv, label %bb.tb, label %bb.tc, !prof !129

bb.tb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i421
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.btg) #28, !noalias !981
  br label %bb.tc

.body.i80.i418:                                   ; preds = %.noexc83.i.i417
  %i.btw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %140) #28, !noalias !981
  call void @_ZdlPvm(ptr noundef nonnull %i.bsz, i64 noundef 96) #30, !noalias !981
  br label %.body.i.i414

bb.tc:                                            ; preds = %bb.tb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i83.i421, %bb.sx, %bb.sv
  call void @llvm.lifetime.end.p0(ptr nonnull %140), !noalias !981
  store ptr %i.btd, ptr %146, align 16, !tbaa !351, !noalias !954
  %i.btx = getelementptr inbounds nuw i8, ptr %146, i64 8 ; 2 uses
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !118, !noalias !954 ; 8 uses
  store ptr %i.bsz, ptr %i.btx, align 8, !tbaa !118, !noalias !954
  %.not.i.i.i.i84.i.i423 = icmp eq ptr %i.bty, null
  br i1 %.not.i.i.i.i84.i.i423, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bty, i64 8 ; 4 uses
  %i.bua = load atomic i64, ptr %i.btz acquire, align 8, !noalias !954 ; 2 uses
  %i.bub = icmp eq i64 %i.bua, 4294967297
  %i.buc = trunc i64 %i.bua to i32                ; 2 uses
  br i1 %i.bub, label %bb.te, label %bb.tf

bb.te:                                            ; preds = %bb.td
  store i32 0, ptr %i.btz, align 8, !tbaa !125, !noalias !954
  %i.bud = getelementptr inbounds nuw i8, ptr %i.bty, i64 12
  store i32 0, ptr %i.bud, align 4, !tbaa !127, !noalias !954
  %i.bue = load ptr, ptr %i.bty, align 8, !tbaa !55, !noalias !954
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 16
  %i.bug = load ptr, ptr %i.buf, align 8, !noalias !954
  call void %i.bug(ptr noundef nonnull align 8 dereferenceable(16) %i.bty) #28, !noalias !954, !inline_history !958
  %i.buh = load ptr, ptr %i.bty, align 8, !tbaa !55, !noalias !954
  %i.bui = getelementptr inbounds nuw i8, ptr %i.buh, i64 24
  %i.buj = load ptr, ptr %i.bui, align 8, !noalias !954
  call void %i.buj(ptr noundef nonnull align 8 dereferenceable(16) %i.bty) #28, !noalias !954, !inline_history !958
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427

bb.tf:                                            ; preds = %bb.td
  %i.buk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i.i.i85.i.i424 = icmp eq i8 %i.buk, 0
  br i1 %.not.i.i.i.i.i85.i.i424, label %bb.th, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.bul = add nsw i32 %i.buc, -1
  store i32 %i.bul, ptr %i.btz, align 8, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i425

bb.th:                                            ; preds = %bb.tf
  %i.bum = atomicrmw volatile add ptr %i.btz, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i425

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i425: ; preds = %bb.th, %bb.tg
  %.0.i.i.i.i.i.i87.i.i426 = phi i32 [ %i.buc, %bb.tg ], [ %i.bum, %bb.th ]
  %i.bun = icmp eq i32 %.0.i.i.i.i.i.i87.i.i426, 1
  br i1 %i.bun, label %bb.ti, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427, !prof !129

bb.ti:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i425
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bty) #28, !noalias !954
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427: ; preds = %bb.ti, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i425, %bb.te, %bb.tc
  %i.buo = load ptr, ptr %i.bsn, align 8, !tbaa !118, !noalias !954 ; 8 uses
  %.not.i.i94.i.i428 = icmp eq ptr %i.buo, null
  br i1 %.not.i.i94.i.i428, label %_ZN5arrow6StatusD2Ev.exit.thread92.i432, label %bb.tj

bb.tj:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i427
  %i.bup = getelementptr inbounds nuw i8, ptr %i.buo, i64 8 ; 4 uses
  %i.buq = load atomic i64, ptr %i.bup acquire, align 8, !noalias !954 ; 2 uses
  %i.bur = icmp eq i64 %i.buq, 4294967297
  %i.bus = trunc i64 %i.buq to i32                ; 2 uses
  br i1 %i.bur, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  store i32 0, ptr %i.bup, align 8, !tbaa !125, !noalias !954
  %i.but = getelementptr inbounds nuw i8, ptr %i.buo, i64 12
  store i32 0, ptr %i.but, align 4, !tbaa !127, !noalias !954
  %i.buu = load ptr, ptr %i.buo, align 8, !tbaa !55, !noalias !954
  %i.buv = getelementptr inbounds nuw i8, ptr %i.buu, i64 16
  %i.buw = load ptr, ptr %i.buv, align 8, !noalias !954
  call void %i.buw(ptr noundef nonnull align 8 dereferenceable(16) %i.buo) #28, !noalias !954, !inline_history !976
  %i.bux = load ptr, ptr %i.buo, align 8, !tbaa !55, !noalias !954
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 24
  %i.buz = load ptr, ptr %i.buy, align 8, !noalias !954
  call void %i.buz(ptr noundef nonnull align 8 dereferenceable(16) %i.buo) #28, !noalias !954, !inline_history !976
  br label %_ZN5arrow6StatusD2Ev.exit.thread92.i432

bb.tl:                                            ; preds = %bb.tj
  %i.bva = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !954
  %.not.i.i.i95.i.i429 = icmp eq i8 %i.bva, 0
  br i1 %.not.i.i.i95.i.i429, label %bb.tn, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.bvb = add nsw i32 %i.bus, -1
  store i32 %i.bvb, ptr %i.bup, align 8, !tbaa !3, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430

bb.tn:                                            ; preds = %bb.tl
  %i.bvc = atomicrmw volatile add ptr %i.bup, i32 -1 acq_rel, align 4, !noalias !954
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430: ; preds = %bb.tn, %bb.tm
  %.0.i.i.i.i97.i.i431 = phi i32 [ %i.bus, %bb.tm ], [ %i.bvc, %bb.tn ]
  %i.bvd = icmp eq i32 %.0.i.i.i.i97.i.i431, 1
  br i1 %i.bvd, label %bb.to, label %_ZN5arrow6StatusD2Ev.exit.thread92.i432, !prof !129

bb.to:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i430
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.buo) #28, !noalias !954
  br label %_ZN5arrow6StatusD2Ev.exit.thread92.i432

bb.tp:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit82.i.i413
  %i.bve = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i414

.body.i.i414:                                     ; preds = %bb.tp, %.body.i80.i418
  %eh.lpad-body.i.i415 = phi { ptr, i32 } [ %i.bve, %bb.tp ], [ %i.btw, %.body.i80.i418 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %145) #28, !noalias !954
  br label %bb.ua

bb.tq:                                            ; preds = %.critedge55.i.i482, %bb.sr, %bb.sn, %bb.sl
  %i.bvf = load ptr, ptr %i.blq, align 8, !tbaa !115, !noalias !987
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 40
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !45, !noalias !987 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.bvh, i64 16
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvh, i64 24
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !118, !noalias !987 ; 2 uses
  %i.bvl = load <2 x ptr>, ptr %i.bvi, align 8, !tbaa !119, !noalias !987
  %.not.i.i.i.i99.i.i483 = icmp eq ptr %i.bvk, null
  br i1 %.not.i.i.i.i99.i.i483, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8 ; 3 uses
  %i.bvn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !987
  %.not.i.i.i.i.i100.i.i484 = icmp eq i8 %i.bvn, 0
  br i1 %.not.i.i.i.i.i100.i.i484, label %bb.tt, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bvo = load i32, ptr %i.bvm, align 4, !tbaa !3, !noalias !987
  %i.bvp = add nsw i32 %i.bvo, 1
  store i32 %i.bvp, ptr %i.bvm, align 4, !tbaa !3, !noalias !987
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE13value_offsetsEv.exit101.i.i485
end_hunk_11
begin_hunk_12_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i602: ; preds = %bb.wp
  %i.cfa = load ptr, ptr %i.cez, align 8, !tbaa !55, !noalias !1011
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8
  %i.cfc = load ptr, ptr %i.cfb, align 8, !noalias !1011
  call void %i.cfc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cez) #28, !noalias !1011, !inline_history !1028
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i602, %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #28, !noalias !1011
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i580

_ZN5arrow6StatusC2ERKS0_.exit.i.i580:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i603, %bb.wg
  %i.cfd = load ptr, ptr %132, align 8, !tbaa !39, !noalias !1011 ; 2 uses
  %i.cfe = icmp eq ptr %i.cfd, null
  br i1 %i.cfe, label %bb.wq, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, !prof !256

bb.wq:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i580
  %i.cff = getelementptr inbounds nuw i8, ptr %132, i64 8
  %i.cfg = load ptr, ptr %i.cff, align 8, !tbaa !351, !noalias !1011 ; 3 uses
  %.not.i.i.i.i67.i.i583 = icmp eq ptr %i.cfg, null
  br i1 %.not.i.i.i.i67.i.i583, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584: ; preds = %bb.wq
  %i.cfh = load ptr, ptr %i.cfg, align 8, !tbaa !55, !noalias !1005
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 8
  %i.cfj = load ptr, ptr %i.cfi, align 8, !noalias !1005
  call void %i.cfj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cfg) #28, !noalias !1005, !inline_history !1029
  %.pr.pre.i.i.i585 = load ptr, ptr %132, align 8, !tbaa !39, !noalias !1011 ; 2 uses
  %.not.i.i68.i.i586 = icmp eq ptr %.pr.pre.i.i.i585, null
  br i1 %.not.i.i68.i.i586, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584, %_ZN5arrow6StatusC2ERKS0_.exit.i.i580
  %i.cfk = phi ptr [ %.pr.pre.i.i.i585, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584 ], [ %i.cfd, %_ZN5arrow6StatusC2ERKS0_.exit.i.i580 ]
  %i.cfl = getelementptr inbounds nuw i8, ptr %i.cfk, i64 1
  %i.cfm = load i8, ptr %i.cfl, align 1, !tbaa !257, !range !187, !noalias !1005, !noundef !183
  %i.cfn = trunc nuw i8 %i.cfm to i1
  br i1 %i.cfn, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582, label %bb.wr

bb.wr:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %132) #28, !noalias !1005
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i582: ; preds = %bb.wr, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i581, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i584, %bb.wq
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #28, !noalias !1011
  br i1 %i.cdp, label %_ZN5arrow6StatusD2Ev.exit.thread91.i, label %_ZN5arrow6StatusD2Ev.exit.i577

bb.ws:                                            ; preds = %._crit_edge.i.i592
  %i.cfo = landingpad { ptr, i32 }
          cleanup
  %i.cfp = load ptr, ptr %133, align 8, !tbaa !351, !noalias !1011 ; 3 uses
  %.not.i69.i.i593 = icmp eq ptr %i.cfp, null
  br i1 %.not.i69.i.i593, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594: ; preds = %bb.ws
  %i.cfq = load ptr, ptr %i.cfp, align 8, !tbaa !55, !noalias !1011
  %i.cfr = getelementptr inbounds nuw i8, ptr %i.cfq, i64 8
  %i.cfs = load ptr, ptr %i.cfr, align 8, !noalias !1011
  call void %i.cfs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cfp) #28, !noalias !1011, !inline_history !1028
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i594, %bb.ws
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #28, !noalias !1011
  br label %bb.wt

bb.wt:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595, %bb.wh
  %.pn51.i.i579 = phi { ptr, i32 } [ %i.cdq, %bb.wh ], [ %i.cfo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i595 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %132) #28, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #28, !noalias !1011
  br label %bb.yo

bb.wu:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i535
  %i.cft = getelementptr inbounds nuw i8, ptr %i.cdc, i64 32
  %i.cfu = load i64, ptr %i.cft, align 8, !tbaa !647, !noalias !1011
  %i.cfv = icmp slt i64 %i.cfu, 1
  br i1 %i.cfv, label %bb.wv, label %.critedge55.thread.i.i536

bb.wv:                                            ; preds = %bb.wu
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cdc, i64 40
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !45, !noalias !1030 ; 2 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 16
  %i.cfz = load ptr, ptr %i.cfy, align 8, !tbaa !33, !noalias !1030 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfx, i64 24
  %i.cgb = load ptr, ptr %i.cga, align 8, !tbaa !118, !noalias !1030 ; 8 uses
  %.not.i.i.i.i72.i.i565 = icmp eq ptr %i.cgb, null
  br i1 %.not.i.i.i.i72.i.i565, label %bb.wz, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.cgb, i64 8 ; 7 uses
  %i.cgd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1030
  %.not.i.i.i.i.i73.i.i566 = icmp eq i8 %i.cgd, 0
  br i1 %.not.i.i.i.i.i73.i.i566, label %bb.wy, label %bb.wx

bb.wx:                                            ; preds = %bb.ww
  %i.cge = load i32, ptr %i.cgc, align 4, !tbaa !3, !noalias !1030
  %i.cgf = add nsw i32 %i.cge, 1
  store i32 %i.cgf, ptr %i.cgc, align 4, !tbaa !3, !noalias !1030
  br label %bb.xa

bb.wy:                                            ; preds = %bb.ww
  %i.cgg = atomicrmw volatile add ptr %i.cgc, i32 1 acq_rel, align 4, !noalias !1030 ; 0 uses
  br label %bb.xa

bb.wz:                                            ; preds = %bb.wv
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.cfz, i64 24
  %i.cgi = load i64, ptr %i.cgh, align 8, !tbaa !46, !noalias !1011
  %i.cgj = icmp sgt i64 %i.cgi, %i.ccr
  br i1 %i.cgj, label %.critedge55.thread.i.i536, label %bb.ye

bb.xa:                                            ; preds = %bb.wy, %bb.wx
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cfz, i64 24
  %i.cgl = load i64, ptr %i.cgk, align 8, !tbaa !46, !noalias !1011
  %i.cgm = icmp sgt i64 %i.cgl, %i.ccr            ; 3 uses
  %i.cgn = load atomic i64, ptr %i.cgc acquire, align 8, !noalias !1011 ; 2 uses
  %i.cgo = icmp eq i64 %i.cgn, 4294967297
  %i.cgp = trunc i64 %i.cgn to i32                ; 2 uses
  br i1 %i.cgo, label %bb.xb, label %bb.xc

bb.xb:                                            ; preds = %bb.xa
  store i32 0, ptr %i.cgc, align 8, !tbaa !125, !noalias !1011
  %i.cgq = getelementptr inbounds nuw i8, ptr %i.cgb, i64 12
  store i32 0, ptr %i.cgq, align 4, !tbaa !127, !noalias !1011
  %i.cgr = load ptr, ptr %i.cgb, align 8, !tbaa !55, !noalias !1011
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 16
  %i.cgt = load ptr, ptr %i.cgs, align 8, !noalias !1011
  call void %i.cgt(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011, !inline_history !1033
  %i.cgu = load ptr, ptr %i.cgb, align 8, !tbaa !55, !noalias !1011
  %i.cgv = getelementptr inbounds nuw i8, ptr %i.cgu, i64 24
  %i.cgw = load ptr, ptr %i.cgv, align 8, !noalias !1011
  call void %i.cgw(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011, !inline_history !1033
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

bb.xc:                                            ; preds = %bb.xa
  %i.cgx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i76.i.i567 = icmp eq i8 %i.cgx, 0
  br i1 %.not.i.i.i76.i.i567, label %bb.xe, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.cgy = add nsw i32 %i.cgp, -1
  store i32 %i.cgy, ptr %i.cgc, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568

bb.xe:                                            ; preds = %bb.xc
  %i.cgz = atomicrmw volatile add ptr %i.cgc, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568: ; preds = %bb.xe, %bb.xd
  %.0.i.i.i.i78.i.i569 = phi i32 [ %i.cgp, %bb.xd ], [ %i.cgz, %bb.xe ]
  %i.cha = icmp eq i32 %.0.i.i.i.i78.i.i569, 1
  br i1 %i.cha, label %bb.xf, label %.critedge55.i.i570, !prof !129

bb.xf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb) #28, !noalias !1011
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

.critedge55.i.i570:                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i568
  br i1 %i.cgm, label %.critedge55.thread.i.i536, label %bb.ye

.critedge55.thread.i.i536:                        ; preds = %.critedge55.i.i570, %bb.xf, %bb.xb, %bb.wz, %bb.wu
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.chb = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1037
  %i.chc = getelementptr inbounds nuw i8, ptr %i.chb, i64 40
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !45, !noalias !1037 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chd, i64 16
  %i.chf = getelementptr inbounds nuw i8, ptr %134, i64 8 ; 2 uses
  %i.chg = getelementptr inbounds nuw i8, ptr %i.chd, i64 24
  %i.chh = load ptr, ptr %i.chg, align 8, !tbaa !118, !noalias !1037 ; 2 uses
  %i.chi = load <2 x ptr>, ptr %i.che, align 8, !tbaa !119, !noalias !1037
  store <2 x ptr> %i.chi, ptr %134, align 16, !tbaa !119, !alias.scope !1034, !noalias !1011
  %.not.i.i.i.i80.i.i537 = icmp eq ptr %i.chh, null
  br i1 %.not.i.i.i.i80.i.i537, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i, label %bb.xg

bb.xg:                                            ; preds = %.critedge55.thread.i.i536
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chh, i64 8 ; 3 uses
  %i.chk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1037
  %.not.i.i.i.i.i81.i.i538 = icmp eq i8 %i.chk, 0
  br i1 %.not.i.i.i.i.i81.i.i538, label %bb.xi, label %bb.xh

bb.xh:                                            ; preds = %bb.xg
  %i.chl = load i32, ptr %i.chj, align 4, !tbaa !3, !noalias !1037
  %i.chm = add nsw i32 %i.chl, 1
  store i32 %i.chm, ptr %i.chj, align 4, !tbaa !3, !noalias !1037
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i

bb.xi:                                            ; preds = %bb.xg
  %i.chn = atomicrmw volatile add ptr %i.chj, i32 1 acq_rel, align 4, !noalias !1037 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i: ; preds = %bb.xi, %bb.xh, %.critedge55.thread.i.i536
  %i.cho = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1011
  %i.chp = getelementptr inbounds nuw i8, ptr %i.cho, i64 32
  %i.chq = load i64, ptr %i.chp, align 8, !tbaa !647, !noalias !1011
  %i.chr = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i542 unwind label %bb.yd, !noalias !1011 ; 6 uses

.noexc83.i.i542:                                  ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.chs = shl i64 %i.chq, 3
  %i.cht = getelementptr inbounds nuw i8, ptr %i.chr, i64 8
  store i32 1, ptr %i.cht, align 8, !tbaa !125, !noalias !1038
  %i.chu = getelementptr inbounds nuw i8, ptr %i.chr, i64 12
  store i32 1, ptr %i.chu, align 4, !tbaa !127, !noalias !1038
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.chr, align 8, !tbaa !55, !noalias !1038
  %i.chv = getelementptr inbounds nuw i8, ptr %i.chr, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %129), !noalias !1038
  %i.chw = load <2 x ptr>, ptr %134, align 16, !tbaa !119, !noalias !1038
  store ptr null, ptr %i.chf, align 8, !tbaa !118, !noalias !1038
  store <2 x ptr> %i.chw, ptr %129, align 16, !tbaa !119, !noalias !1038
  store ptr null, ptr %134, align 16, !tbaa !33, !noalias !1038
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.chv, ptr noundef nonnull %129, i64 noundef %i.chs, i64 noundef %i.ccr)
          to label %bb.xj unwind label %.body.i79.i, !noalias !1038

bb.xj:                                            ; preds = %.noexc83.i.i542
  %i.chx = getelementptr inbounds nuw i8, ptr %129, i64 8
  %i.chy = load ptr, ptr %i.chx, align 8, !tbaa !118, !noalias !1038 ; 8 uses
  %.not.i.i.i.i80.i = icmp eq ptr %i.chy, null
  br i1 %.not.i.i.i.i80.i, label %bb.xq, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %i.chz = getelementptr inbounds nuw i8, ptr %i.chy, i64 8 ; 4 uses
  %i.cia = load atomic i64, ptr %i.chz acquire, align 8, !noalias !1038 ; 2 uses
  %i.cib = icmp eq i64 %i.cia, 4294967297
  %i.cic = trunc i64 %i.cia to i32                ; 2 uses
  br i1 %i.cib, label %bb.xl, label %bb.xm

bb.xl:                                            ; preds = %bb.xk
  store i32 0, ptr %i.chz, align 8, !tbaa !125, !noalias !1038
  %i.cid = getelementptr inbounds nuw i8, ptr %i.chy, i64 12
  store i32 0, ptr %i.cid, align 4, !tbaa !127, !noalias !1038
  %i.cie = load ptr, ptr %i.chy, align 8, !tbaa !55, !noalias !1038
  %i.cif = getelementptr inbounds nuw i8, ptr %i.cie, i64 16
  %i.cig = load ptr, ptr %i.cif, align 8, !noalias !1038
  call void %i.cig(ptr noundef nonnull align 8 dereferenceable(16) %i.chy) #28, !noalias !1038, !inline_history !1043
  %i.cih = load ptr, ptr %i.chy, align 8, !tbaa !55, !noalias !1038
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cih, i64 24
  %i.cij = load ptr, ptr %i.cii, align 8, !noalias !1038
  call void %i.cij(ptr noundef nonnull align 8 dereferenceable(16) %i.chy) #28, !noalias !1038, !inline_history !1043
  br label %bb.xq

bb.xm:                                            ; preds = %bb.xk
  %i.cik = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1038
  %.not.i.i.i.i.i81.i = icmp eq i8 %i.cik, 0
  br i1 %.not.i.i.i.i.i81.i, label %bb.xo, label %bb.xn

bb.xn:                                            ; preds = %bb.xm
  %i.cil = add nsw i32 %i.cic, -1
  store i32 %i.cil, ptr %i.chz, align 8, !tbaa !3, !noalias !1038
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i

bb.xo:                                            ; preds = %bb.xm
  %i.cim = atomicrmw volatile add ptr %i.chz, i32 -1 acq_rel, align 4, !noalias !1038
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i: ; preds = %bb.xo, %bb.xn
  %.0.i.i.i.i.i.i83.i = phi i32 [ %i.cic, %bb.xn ], [ %i.cim, %bb.xo ]
  %i.cin = icmp eq i32 %.0.i.i.i.i.i.i83.i, 1
  br i1 %i.cin, label %bb.xp, label %bb.xq, !prof !129

bb.xp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.chy) #28, !noalias !1038
  br label %bb.xq

.body.i79.i:                                      ; preds = %.noexc83.i.i542
  %i.cio = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %129) #28, !noalias !1038
  call void @_ZdlPvm(ptr noundef nonnull %i.chr, i64 noundef 96) #30, !noalias !1038
  br label %.body.i.i539

bb.xq:                                            ; preds = %bb.xp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i, %bb.xl, %bb.xj
  call void @llvm.lifetime.end.p0(ptr nonnull %129), !noalias !1038
  store ptr %i.chv, ptr %135, align 16, !tbaa !351, !noalias !1011
  %i.cip = getelementptr inbounds nuw i8, ptr %135, i64 8 ; 2 uses
  %i.ciq = load ptr, ptr %i.cip, align 8, !tbaa !118, !noalias !1011 ; 8 uses
  store ptr %i.chr, ptr %i.cip, align 8, !tbaa !118, !noalias !1011
  %.not.i.i.i.i84.i.i543 = icmp eq ptr %i.ciq, null
  br i1 %.not.i.i.i.i84.i.i543, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.cir = getelementptr inbounds nuw i8, ptr %i.ciq, i64 8 ; 4 uses
  %i.cis = load atomic i64, ptr %i.cir acquire, align 8, !noalias !1011 ; 2 uses
  %i.cit = icmp eq i64 %i.cis, 4294967297
  %i.ciu = trunc i64 %i.cis to i32                ; 2 uses
  br i1 %i.cit, label %bb.xs, label %bb.xt

bb.xs:                                            ; preds = %bb.xr
  store i32 0, ptr %i.cir, align 8, !tbaa !125, !noalias !1011
  %i.civ = getelementptr inbounds nuw i8, ptr %i.ciq, i64 12
  store i32 0, ptr %i.civ, align 4, !tbaa !127, !noalias !1011
  %i.ciw = load ptr, ptr %i.ciq, align 8, !tbaa !55, !noalias !1011
  %i.cix = getelementptr inbounds nuw i8, ptr %i.ciw, i64 16
  %i.ciy = load ptr, ptr %i.cix, align 8, !noalias !1011
  call void %i.ciy(ptr noundef nonnull align 8 dereferenceable(16) %i.ciq) #28, !noalias !1011, !inline_history !1015
  %i.ciz = load ptr, ptr %i.ciq, align 8, !tbaa !55, !noalias !1011
  %i.cja = getelementptr inbounds nuw i8, ptr %i.ciz, i64 24
  %i.cjb = load ptr, ptr %i.cja, align 8, !noalias !1011
  call void %i.cjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ciq) #28, !noalias !1011, !inline_history !1015
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547

bb.xt:                                            ; preds = %bb.xr
  %i.cjc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i.i.i85.i.i544 = icmp eq i8 %i.cjc, 0
  br i1 %.not.i.i.i.i.i85.i.i544, label %bb.xv, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.cjd = add nsw i32 %i.ciu, -1
  store i32 %i.cjd, ptr %i.cir, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i545

bb.xv:                                            ; preds = %bb.xt
  %i.cje = atomicrmw volatile add ptr %i.cir, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i545

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i545: ; preds = %bb.xv, %bb.xu
  %.0.i.i.i.i.i.i87.i.i546 = phi i32 [ %i.ciu, %bb.xu ], [ %i.cje, %bb.xv ]
  %i.cjf = icmp eq i32 %.0.i.i.i.i.i.i87.i.i546, 1
  br i1 %i.cjf, label %bb.xw, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547, !prof !129

bb.xw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i545
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ciq) #28, !noalias !1011
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547: ; preds = %bb.xw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i545, %bb.xs, %bb.xq
  %i.cjg = load ptr, ptr %i.chf, align 8, !tbaa !118, !noalias !1011 ; 8 uses
  %.not.i.i94.i.i548 = icmp eq ptr %i.cjg, null
  br i1 %.not.i.i94.i.i548, label %_ZN5arrow6StatusD2Ev.exit.thread91.i, label %bb.xx

bb.xx:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i547
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 8 ; 4 uses
  %i.cji = load atomic i64, ptr %i.cjh acquire, align 8, !noalias !1011 ; 2 uses
  %i.cjj = icmp eq i64 %i.cji, 4294967297
  %i.cjk = trunc i64 %i.cji to i32                ; 2 uses
  br i1 %i.cjj, label %bb.xy, label %bb.xz

bb.xy:                                            ; preds = %bb.xx
  store i32 0, ptr %i.cjh, align 8, !tbaa !125, !noalias !1011
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cjg, i64 12
  store i32 0, ptr %i.cjl, align 4, !tbaa !127, !noalias !1011
  %i.cjm = load ptr, ptr %i.cjg, align 8, !tbaa !55, !noalias !1011
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjm, i64 16
  %i.cjo = load ptr, ptr %i.cjn, align 8, !noalias !1011
  call void %i.cjo(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #28, !noalias !1011, !inline_history !1033
  %i.cjp = load ptr, ptr %i.cjg, align 8, !tbaa !55, !noalias !1011
  %i.cjq = getelementptr inbounds nuw i8, ptr %i.cjp, i64 24
  %i.cjr = load ptr, ptr %i.cjq, align 8, !noalias !1011
  call void %i.cjr(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #28, !noalias !1011, !inline_history !1033
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i

bb.xz:                                            ; preds = %bb.xx
  %i.cjs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1011
  %.not.i.i.i95.i.i549 = icmp eq i8 %i.cjs, 0
  br i1 %.not.i.i.i95.i.i549, label %bb.yb, label %bb.ya

bb.ya:                                            ; preds = %bb.xz
  %i.cjt = add nsw i32 %i.cjk, -1
  store i32 %i.cjt, ptr %i.cjh, align 8, !tbaa !3, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i550

bb.yb:                                            ; preds = %bb.xz
  %i.cju = atomicrmw volatile add ptr %i.cjh, i32 -1 acq_rel, align 4, !noalias !1011
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i550

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i550: ; preds = %bb.yb, %bb.ya
  %.0.i.i.i.i97.i.i551 = phi i32 [ %i.cjk, %bb.ya ], [ %i.cju, %bb.yb ]
  %i.cjv = icmp eq i32 %.0.i.i.i.i97.i.i551, 1
  br i1 %i.cjv, label %bb.yc, label %_ZN5arrow6StatusD2Ev.exit.thread91.i, !prof !129

bb.yc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i550
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cjg) #28, !noalias !1011
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i

bb.yd:                                            ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i
  %i.cjw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i539

.body.i.i539:                                     ; preds = %bb.yd, %.body.i79.i
  %eh.lpad-body.i.i540 = phi { ptr, i32 } [ %i.cjw, %bb.yd ], [ %i.cio, %.body.i79.i ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %134) #28, !noalias !1011
  br label %bb.yo

bb.ye:                                            ; preds = %.critedge55.i.i570, %bb.xf, %bb.xb, %bb.wz
  %i.cjx = load ptr, ptr %i.cbl, align 8, !tbaa !115, !noalias !1044
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cjx, i64 40
  %i.cjz = load ptr, ptr %i.cjy, align 8, !tbaa !45, !noalias !1044 ; 2 uses
  %i.cka = getelementptr inbounds nuw i8, ptr %i.cjz, i64 16
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cjz, i64 24
  %i.ckc = load ptr, ptr %i.ckb, align 8, !tbaa !118, !noalias !1044 ; 2 uses
  %i.ckd = load <2 x ptr>, ptr %i.cka, align 8, !tbaa !119, !noalias !1044
  %.not.i.i.i.i99.i.i571 = icmp eq ptr %i.ckc, null
  br i1 %.not.i.i.i.i99.i.i571, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i, label %bb.yf

bb.yf:                                            ; preds = %bb.ye
  %i.cke = getelementptr inbounds nuw i8, ptr %i.ckc, i64 8 ; 3 uses
  %i.ckf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1044
  %.not.i.i.i.i.i100.i.i572 = icmp eq i8 %i.ckf, 0
  br i1 %.not.i.i.i.i.i100.i.i572, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.ckg = load i32, ptr %i.cke, align 4, !tbaa !3, !noalias !1044
  %i.ckh = add nsw i32 %i.ckg, 1
  store i32 %i.ckh, ptr %i.cke, align 4, !tbaa !3, !noalias !1044
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i
end_hunk_12
begin_hunk_13_@_ZN5arrow16VisitArrayInlineINS_3ipc12_GLOBAL__N_121RecordBatchSerializerEJEEENS_6StatusERKNS_5ArrayEPT_DpOT0_:bb.a
_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i731: ; preds = %bb.abc
  %i.ctq = load ptr, ptr %i.ctp, align 8, !tbaa !55, !noalias !1068
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.ctq, i64 8
  %i.cts = load ptr, ptr %i.ctr, align 8, !noalias !1068
  call void %i.cts(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ctp) #28, !noalias !1068, !inline_history !1083
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i731, %bb.abc
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28, !noalias !1068
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i.i708

_ZN5arrow6StatusC2ERKS0_.exit.i.i708:             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i732, %bb.aat
  %i.ctt = load ptr, ptr %121, align 8, !tbaa !39, !noalias !1068 ; 2 uses
  %i.ctu = icmp eq ptr %i.ctt, null
  br i1 %i.ctu, label %bb.abd, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, !prof !256

bb.abd:                                           ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i708
  %i.ctv = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.ctw = load ptr, ptr %i.ctv, align 8, !tbaa !351, !noalias !1068 ; 3 uses
  %.not.i.i.i.i67.i.i711 = icmp eq ptr %i.ctw, null
  br i1 %.not.i.i.i.i67.i.i711, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712: ; preds = %bb.abd
  %i.ctx = load ptr, ptr %i.ctw, align 8, !tbaa !55, !noalias !1062
  %i.cty = getelementptr inbounds nuw i8, ptr %i.ctx, i64 8
  %i.ctz = load ptr, ptr %i.cty, align 8, !noalias !1062
  call void %i.ctz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ctw) #28, !noalias !1062, !inline_history !1084
  %.pr.pre.i.i.i713 = load ptr, ptr %121, align 8, !tbaa !39, !noalias !1068 ; 2 uses
  %.not.i.i68.i.i714 = icmp eq ptr %.pr.pre.i.i.i713, null
  br i1 %.not.i.i68.i.i714, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712, %_ZN5arrow6StatusC2ERKS0_.exit.i.i708
  %i.cua = phi ptr [ %.pr.pre.i.i.i713, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712 ], [ %i.ctt, %_ZN5arrow6StatusC2ERKS0_.exit.i.i708 ]
  %i.cub = getelementptr inbounds nuw i8, ptr %i.cua, i64 1
  %i.cuc = load i8, ptr %i.cub, align 1, !tbaa !257, !range !187, !noalias !1062, !noundef !183
  %i.cud = trunc nuw i8 %i.cuc to i1
  br i1 %i.cud, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710, label %bb.abe

bb.abe:                                           ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %121) #28, !noalias !1062
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit.i.i710: ; preds = %bb.abe, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i709, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i712, %bb.abd
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28, !noalias !1068
  br i1 %i.csf, label %_ZN5arrow6StatusD2Ev.exit.thread91.i646, label %_ZN5arrow6StatusD2Ev.exit.i704

bb.abf:                                           ; preds = %._crit_edge.i.i721
  %i.cue = landingpad { ptr, i32 }
          cleanup
  %i.cuf = load ptr, ptr %122, align 8, !tbaa !351, !noalias !1068 ; 3 uses
  %.not.i69.i.i722 = icmp eq ptr %i.cuf, null
  br i1 %.not.i69.i.i722, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723: ; preds = %bb.abf
  %i.cug = load ptr, ptr %i.cuf, align 8, !tbaa !55, !noalias !1068
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.cug, i64 8
  %i.cui = load ptr, ptr %i.cuh, align 8, !noalias !1068
  call void %i.cui(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cuf) #28, !noalias !1068, !inline_history !1083
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i70.i.i723, %bb.abf
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #28, !noalias !1068
  br label %bb.abg

bb.abg:                                           ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724, %bb.aau
  %.pn51.i.i707 = phi { ptr, i32 } [ %i.csg, %bb.aau ], [ %i.cue, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit71.i.i724 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %121) #28, !noalias !1062
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28, !noalias !1068
  br label %bb.adb

bb.abh:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit61.i.i623
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.crs, i64 32
  %i.cuk = load i64, ptr %i.cuj, align 8, !tbaa !647, !noalias !1068
  %i.cul = icmp slt i64 %i.cuk, 1
  br i1 %i.cul, label %bb.abi, label %.critedge55.thread.i.i624

bb.abi:                                           ; preds = %bb.abh
  %i.cum = getelementptr inbounds nuw i8, ptr %i.crs, i64 40
  %i.cun = load ptr, ptr %i.cum, align 8, !tbaa !45, !noalias !1085 ; 2 uses
  %i.cuo = getelementptr inbounds nuw i8, ptr %i.cun, i64 16
  %i.cup = load ptr, ptr %i.cuo, align 8, !tbaa !33, !noalias !1085 ; 2 uses
  %i.cuq = getelementptr inbounds nuw i8, ptr %i.cun, i64 24
  %i.cur = load ptr, ptr %i.cuq, align 8, !tbaa !118, !noalias !1085 ; 8 uses
  %.not.i.i.i.i72.i.i691 = icmp eq ptr %i.cur, null
  br i1 %.not.i.i.i.i72.i.i691, label %bb.abm, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cur, i64 8 ; 7 uses
  %i.cut = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1085
  %.not.i.i.i.i.i73.i.i692 = icmp eq i8 %i.cut, 0
  br i1 %.not.i.i.i.i.i73.i.i692, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.cuu = load i32, ptr %i.cus, align 4, !tbaa !3, !noalias !1085
  %i.cuv = add nsw i32 %i.cuu, 1
  store i32 %i.cuv, ptr %i.cus, align 4, !tbaa !3, !noalias !1085
  br label %bb.abn

bb.abl:                                           ; preds = %bb.abj
  %i.cuw = atomicrmw volatile add ptr %i.cus, i32 1 acq_rel, align 4, !noalias !1085 ; 0 uses
  br label %bb.abn

bb.abm:                                           ; preds = %bb.abi
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cup, i64 24
  %i.cuy = load i64, ptr %i.cux, align 8, !tbaa !46, !noalias !1068
  %i.cuz = icmp sgt i64 %i.cuy, %i.crh
  br i1 %i.cuz, label %.critedge55.thread.i.i624, label %bb.acr

bb.abn:                                           ; preds = %bb.abl, %bb.abk
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cup, i64 24
  %i.cvb = load i64, ptr %i.cva, align 8, !tbaa !46, !noalias !1068
  %i.cvc = icmp sgt i64 %i.cvb, %i.crh            ; 3 uses
  %i.cvd = load atomic i64, ptr %i.cus acquire, align 8, !noalias !1068 ; 2 uses
  %i.cve = icmp eq i64 %i.cvd, 4294967297
  %i.cvf = trunc i64 %i.cvd to i32                ; 2 uses
  br i1 %i.cve, label %bb.abo, label %bb.abp

bb.abo:                                           ; preds = %bb.abn
  store i32 0, ptr %i.cus, align 8, !tbaa !125, !noalias !1068
  %i.cvg = getelementptr inbounds nuw i8, ptr %i.cur, i64 12
  store i32 0, ptr %i.cvg, align 4, !tbaa !127, !noalias !1068
  %i.cvh = load ptr, ptr %i.cur, align 8, !tbaa !55, !noalias !1068
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.cvh, i64 16
  %i.cvj = load ptr, ptr %i.cvi, align 8, !noalias !1068
  call void %i.cvj(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068, !inline_history !1088
  %i.cvk = load ptr, ptr %i.cur, align 8, !tbaa !55, !noalias !1068
  %i.cvl = getelementptr inbounds nuw i8, ptr %i.cvk, i64 24
  %i.cvm = load ptr, ptr %i.cvl, align 8, !noalias !1068
  call void %i.cvm(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068, !inline_history !1088
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

bb.abp:                                           ; preds = %bb.abn
  %i.cvn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i76.i.i693 = icmp eq i8 %i.cvn, 0
  br i1 %.not.i.i.i76.i.i693, label %bb.abr, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.cvo = add nsw i32 %i.cvf, -1
  store i32 %i.cvo, ptr %i.cus, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694

bb.abr:                                           ; preds = %bb.abp
  %i.cvp = atomicrmw volatile add ptr %i.cus, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694: ; preds = %bb.abr, %bb.abq
  %.0.i.i.i.i78.i.i695 = phi i32 [ %i.cvf, %bb.abq ], [ %i.cvp, %bb.abr ]
  %i.cvq = icmp eq i32 %.0.i.i.i.i78.i.i695, 1
  br i1 %i.cvq, label %bb.abs, label %.critedge55.i.i696, !prof !129

bb.abs:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cur) #28, !noalias !1068
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

.critedge55.i.i696:                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i77.i.i694
  br i1 %i.cvc, label %.critedge55.thread.i.i624, label %bb.acr

.critedge55.thread.i.i624:                        ; preds = %.critedge55.i.i696, %bb.abs, %bb.abo, %bb.abm, %bb.abh
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %i.cvr = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1092
  %i.cvs = getelementptr inbounds nuw i8, ptr %i.cvr, i64 40
  %i.cvt = load ptr, ptr %i.cvs, align 8, !tbaa !45, !noalias !1092 ; 2 uses
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 16
  %i.cvv = getelementptr inbounds nuw i8, ptr %123, i64 8 ; 2 uses
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvt, i64 24
  %i.cvx = load ptr, ptr %i.cvw, align 8, !tbaa !118, !noalias !1092 ; 2 uses
  %i.cvy = load <2 x ptr>, ptr %i.cvu, align 8, !tbaa !119, !noalias !1092
  store <2 x ptr> %i.cvy, ptr %123, align 16, !tbaa !119, !alias.scope !1089, !noalias !1068
  %.not.i.i.i.i80.i.i625 = icmp eq ptr %i.cvx, null
  br i1 %.not.i.i.i.i80.i.i625, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627, label %bb.abt

bb.abt:                                           ; preds = %.critedge55.thread.i.i624
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvx, i64 8 ; 3 uses
  %i.cwa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1092
  %.not.i.i.i.i.i81.i.i626 = icmp eq i8 %i.cwa, 0
  br i1 %.not.i.i.i.i.i81.i.i626, label %bb.abv, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.cwb = load i32, ptr %i.cvz, align 4, !tbaa !3, !noalias !1092
  %i.cwc = add nsw i32 %i.cwb, 1
  store i32 %i.cwc, ptr %i.cvz, align 4, !tbaa !3, !noalias !1092
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627

bb.abv:                                           ; preds = %bb.abt
  %i.cwd = atomicrmw volatile add ptr %i.cvz, i32 1 acq_rel, align 4, !noalias !1092 ; 0 uses
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627

_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627: ; preds = %bb.abv, %bb.abu, %.critedge55.thread.i.i624
  %i.cwe = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1068
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cwe, i64 32
  %i.cwg = load i64, ptr %i.cwf, align 8, !tbaa !647, !noalias !1068
  %i.cwh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc83.i.i631 unwind label %bb.acq, !noalias !1068 ; 6 uses

.noexc83.i.i631:                                  ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627
  %i.cwi = shl i64 %i.cwg, 3
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cwh, i64 8
  store i32 1, ptr %i.cwj, align 8, !tbaa !125, !noalias !1093
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cwh, i64 12
  store i32 1, ptr %i.cwk, align 4, !tbaa !127, !noalias !1093
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.cwh, align 8, !tbaa !55, !noalias !1093
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwh, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118), !noalias !1093
  %i.cwm = load <2 x ptr>, ptr %123, align 16, !tbaa !119, !noalias !1093
  store ptr null, ptr %i.cvv, align 8, !tbaa !118, !noalias !1093
  store <2 x ptr> %i.cwm, ptr %118, align 16, !tbaa !119, !noalias !1093
  store ptr null, ptr %123, align 16, !tbaa !33, !noalias !1093
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.cwl, ptr noundef nonnull %118, i64 noundef %i.cwi, i64 noundef %i.crh)
          to label %bb.abw unwind label %.body.i79.i632, !noalias !1093

bb.abw:                                           ; preds = %.noexc83.i.i631
  %i.cwn = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.cwo = load ptr, ptr %i.cwn, align 8, !tbaa !118, !noalias !1093 ; 8 uses
  %.not.i.i.i.i80.i633 = icmp eq ptr %i.cwo, null
  br i1 %.not.i.i.i.i80.i633, label %bb.acd, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cwo, i64 8 ; 4 uses
  %i.cwq = load atomic i64, ptr %i.cwp acquire, align 8, !noalias !1093 ; 2 uses
  %i.cwr = icmp eq i64 %i.cwq, 4294967297
  %i.cws = trunc i64 %i.cwq to i32                ; 2 uses
  br i1 %i.cwr, label %bb.aby, label %bb.abz

bb.aby:                                           ; preds = %bb.abx
  store i32 0, ptr %i.cwp, align 8, !tbaa !125, !noalias !1093
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cwo, i64 12
  store i32 0, ptr %i.cwt, align 4, !tbaa !127, !noalias !1093
  %i.cwu = load ptr, ptr %i.cwo, align 8, !tbaa !55, !noalias !1093
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cwu, i64 16
  %i.cww = load ptr, ptr %i.cwv, align 8, !noalias !1093
  call void %i.cww(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #28, !noalias !1093, !inline_history !1098
  %i.cwx = load ptr, ptr %i.cwo, align 8, !tbaa !55, !noalias !1093
  %i.cwy = getelementptr inbounds nuw i8, ptr %i.cwx, i64 24
  %i.cwz = load ptr, ptr %i.cwy, align 8, !noalias !1093
  call void %i.cwz(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #28, !noalias !1093, !inline_history !1098
  br label %bb.acd

bb.abz:                                           ; preds = %bb.abx
  %i.cxa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1093
  %.not.i.i.i.i.i81.i634 = icmp eq i8 %i.cxa, 0
  br i1 %.not.i.i.i.i.i81.i634, label %bb.acb, label %bb.aca

bb.aca:                                           ; preds = %bb.abz
  %i.cxb = add nsw i32 %i.cws, -1
  store i32 %i.cxb, ptr %i.cwp, align 8, !tbaa !3, !noalias !1093
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i635

bb.acb:                                           ; preds = %bb.abz
  %i.cxc = atomicrmw volatile add ptr %i.cwp, i32 -1 acq_rel, align 4, !noalias !1093
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i635

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i635: ; preds = %bb.acb, %bb.aca
  %.0.i.i.i.i.i.i83.i636 = phi i32 [ %i.cws, %bb.aca ], [ %i.cxc, %bb.acb ]
  %i.cxd = icmp eq i32 %.0.i.i.i.i.i.i83.i636, 1
  br i1 %i.cxd, label %bb.acc, label %bb.acd, !prof !129

bb.acc:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i635
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cwo) #28, !noalias !1093
  br label %bb.acd

.body.i79.i632:                                   ; preds = %.noexc83.i.i631
  %i.cxe = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %118) #28, !noalias !1093
  call void @_ZdlPvm(ptr noundef nonnull %i.cwh, i64 noundef 96) #30, !noalias !1093
  br label %.body.i.i628

bb.acd:                                           ; preds = %bb.acc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i82.i635, %bb.aby, %bb.abw
  call void @llvm.lifetime.end.p0(ptr nonnull %118), !noalias !1093
  store ptr %i.cwl, ptr %124, align 16, !tbaa !351, !noalias !1068
  %i.cxf = getelementptr inbounds nuw i8, ptr %124, i64 8 ; 2 uses
  %i.cxg = load ptr, ptr %i.cxf, align 8, !tbaa !118, !noalias !1068 ; 8 uses
  store ptr %i.cwh, ptr %i.cxf, align 8, !tbaa !118, !noalias !1068
  %.not.i.i.i.i84.i.i637 = icmp eq ptr %i.cxg, null
  br i1 %.not.i.i.i.i84.i.i637, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641, label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cxg, i64 8 ; 4 uses
  %i.cxi = load atomic i64, ptr %i.cxh acquire, align 8, !noalias !1068 ; 2 uses
  %i.cxj = icmp eq i64 %i.cxi, 4294967297
  %i.cxk = trunc i64 %i.cxi to i32                ; 2 uses
  br i1 %i.cxj, label %bb.acf, label %bb.acg

bb.acf:                                           ; preds = %bb.ace
  store i32 0, ptr %i.cxh, align 8, !tbaa !125, !noalias !1068
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cxg, i64 12
  store i32 0, ptr %i.cxl, align 4, !tbaa !127, !noalias !1068
  %i.cxm = load ptr, ptr %i.cxg, align 8, !tbaa !55, !noalias !1068
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cxm, i64 16
  %i.cxo = load ptr, ptr %i.cxn, align 8, !noalias !1068
  call void %i.cxo(ptr noundef nonnull align 8 dereferenceable(16) %i.cxg) #28, !noalias !1068, !inline_history !1072
  %i.cxp = load ptr, ptr %i.cxg, align 8, !tbaa !55, !noalias !1068
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cxp, i64 24
  %i.cxr = load ptr, ptr %i.cxq, align 8, !noalias !1068
  call void %i.cxr(ptr noundef nonnull align 8 dereferenceable(16) %i.cxg) #28, !noalias !1068, !inline_history !1072
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641

bb.acg:                                           ; preds = %bb.ace
  %i.cxs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i.i.i85.i.i638 = icmp eq i8 %i.cxs, 0
  br i1 %.not.i.i.i.i.i85.i.i638, label %bb.aci, label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.cxt = add nsw i32 %i.cxk, -1
  store i32 %i.cxt, ptr %i.cxh, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i639

bb.aci:                                           ; preds = %bb.acg
  %i.cxu = atomicrmw volatile add ptr %i.cxh, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i639

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i639: ; preds = %bb.aci, %bb.ach
  %.0.i.i.i.i.i.i87.i.i640 = phi i32 [ %i.cxk, %bb.ach ], [ %i.cxu, %bb.aci ]
  %i.cxv = icmp eq i32 %.0.i.i.i.i.i.i87.i.i640, 1
  br i1 %i.cxv, label %bb.acj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641, !prof !129

bb.acj:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i639
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cxg) #28, !noalias !1068
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641: ; preds = %bb.acj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i86.i.i639, %bb.acf, %bb.acd
  %i.cxw = load ptr, ptr %i.cvv, align 8, !tbaa !118, !noalias !1068 ; 8 uses
  %.not.i.i94.i.i642 = icmp eq ptr %i.cxw, null
  br i1 %.not.i.i94.i.i642, label %_ZN5arrow6StatusD2Ev.exit.thread91.i646, label %bb.ack

bb.ack:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit93.i.i641
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cxw, i64 8 ; 4 uses
  %i.cxy = load atomic i64, ptr %i.cxx acquire, align 8, !noalias !1068 ; 2 uses
  %i.cxz = icmp eq i64 %i.cxy, 4294967297
  %i.cya = trunc i64 %i.cxy to i32                ; 2 uses
  br i1 %i.cxz, label %bb.acl, label %bb.acm

bb.acl:                                           ; preds = %bb.ack
  store i32 0, ptr %i.cxx, align 8, !tbaa !125, !noalias !1068
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cxw, i64 12
  store i32 0, ptr %i.cyb, align 4, !tbaa !127, !noalias !1068
  %i.cyc = load ptr, ptr %i.cxw, align 8, !tbaa !55, !noalias !1068
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cyc, i64 16
  %i.cye = load ptr, ptr %i.cyd, align 8, !noalias !1068
  call void %i.cye(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #28, !noalias !1068, !inline_history !1088
  %i.cyf = load ptr, ptr %i.cxw, align 8, !tbaa !55, !noalias !1068
  %i.cyg = getelementptr inbounds nuw i8, ptr %i.cyf, i64 24
  %i.cyh = load ptr, ptr %i.cyg, align 8, !noalias !1068
  call void %i.cyh(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #28, !noalias !1068, !inline_history !1088
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i646

bb.acm:                                           ; preds = %bb.ack
  %i.cyi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1068
  %.not.i.i.i95.i.i643 = icmp eq i8 %i.cyi, 0
  br i1 %.not.i.i.i95.i.i643, label %bb.aco, label %bb.acn

bb.acn:                                           ; preds = %bb.acm
  %i.cyj = add nsw i32 %i.cya, -1
  store i32 %i.cyj, ptr %i.cxx, align 8, !tbaa !3, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i644

bb.aco:                                           ; preds = %bb.acm
  %i.cyk = atomicrmw volatile add ptr %i.cxx, i32 -1 acq_rel, align 4, !noalias !1068
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i644

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i644: ; preds = %bb.aco, %bb.acn
  %.0.i.i.i.i97.i.i645 = phi i32 [ %i.cya, %bb.acn ], [ %i.cyk, %bb.aco ]
  %i.cyl = icmp eq i32 %.0.i.i.i.i97.i.i645, 1
  br i1 %i.cyl, label %bb.acp, label %_ZN5arrow6StatusD2Ev.exit.thread91.i646, !prof !129

bb.acp:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96.i.i644
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cxw) #28, !noalias !1068
  br label %_ZN5arrow6StatusD2Ev.exit.thread91.i646

bb.acq:                                           ; preds = %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit82.i.i627
  %i.cym = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i628

.body.i.i628:                                     ; preds = %bb.acq, %.body.i79.i632
  %eh.lpad-body.i.i629 = phi { ptr, i32 } [ %i.cym, %bb.acq ], [ %i.cxe, %.body.i79.i632 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %123) #28, !noalias !1068
  br label %bb.adb

bb.acr:                                           ; preds = %.critedge55.i.i696, %bb.abs, %bb.abo, %bb.abm
  %i.cyn = load ptr, ptr %i.cqb, align 8, !tbaa !115, !noalias !1099
  %i.cyo = getelementptr inbounds nuw i8, ptr %i.cyn, i64 40
  %i.cyp = load ptr, ptr %i.cyo, align 8, !tbaa !45, !noalias !1099 ; 2 uses
  %i.cyq = getelementptr inbounds nuw i8, ptr %i.cyp, i64 16
  %i.cyr = getelementptr inbounds nuw i8, ptr %i.cyp, i64 24
  %i.cys = load ptr, ptr %i.cyr, align 8, !tbaa !118, !noalias !1099 ; 2 uses
  %i.cyt = load <2 x ptr>, ptr %i.cyq, align 8, !tbaa !119, !noalias !1099
  %.not.i.i.i.i99.i.i697 = icmp eq ptr %i.cys, null
  br i1 %.not.i.i.i.i99.i.i697, label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699, label %bb.acs

bb.acs:                                           ; preds = %bb.acr
  %i.cyu = getelementptr inbounds nuw i8, ptr %i.cys, i64 8 ; 3 uses
  %i.cyv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1099
  %.not.i.i.i.i.i100.i.i698 = icmp eq i8 %i.cyv, 0
  br i1 %.not.i.i.i.i.i100.i.i698, label %bb.acu, label %bb.act

bb.act:                                           ; preds = %bb.acs
  %i.cyw = load i32, ptr %i.cyu, align 4, !tbaa !3, !noalias !1099
  %i.cyx = add nsw i32 %i.cyw, 1
  store i32 %i.cyx, ptr %i.cyu, align 4, !tbaa !3, !noalias !1099
  br label %_ZNK5arrow15BaseBinaryArrayINS_15LargeBinaryTypeEE13value_offsetsEv.exit101.i.i699
end_hunk_13
begin_hunk_14_@_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer5VisitERKNS_15BinaryViewArrayE:bb.a
  %.not.i.i.i19 = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #29
          to label %.noexc21 unwind label %bb.aa  ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %i.bu ; 2 uses
  store i64 %i.bl, ptr %i.cd, align 8, !tbaa !288
  %i.ce = icmp sgt i64 %i.bu, 0
  br i1 %i.ce, label %bb.q, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cc, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc21
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.not.i17.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #30
  %.pre33.pre = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre33.pre, i64 48
  %.pre34.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !42
  %.phi.trans.insert35.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre33.pre, i64 40
  %.pre36.pre = load ptr, ptr %.phi.trans.insert35.phi.trans.insert, align 8, !tbaa !45 ; 2 uses
  %.pre45 = ptrtoint ptr %.pre34.pre to i64
  %.pre46 = ptrtoint ptr %.pre36.pre to i64
  %.pre47 = sub i64 %.pre45, %.pre46
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %.pre43.pre-phi = phi i64 [ %.pre47, %bb.r ], [ %i.bj, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i ]
  %.pre36 = phi ptr [ %.pre36.pre, %bb.r ], [ %i.bg, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i ]
  store ptr %i.cc, ptr %i.bb, align 8, !tbaa !289
  store ptr %i.cf, ptr %i.bm, align 8, !tbaa !350
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.cg, ptr %i.bo, align 8, !tbaa !290
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit

_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.n
  %.pre-phi44 = phi i64 [ %.pre43.pre-phi, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.bj, %bb.n ]
  %i.ch = phi ptr [ %.pre36, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.bg, %bb.n ]
  %i.ci = icmp ugt i64 %.pre-phi44, 32
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1607
  %i.cj = load ptr, ptr %i.z, align 8, !tbaa !118 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ck, align 8, !tbaa !125
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !127
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !300
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

bb.u:                                             ; preds = %bb.s
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i23 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i23, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

bb.w:                                             ; preds = %bb.u
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i25 = phi i32 [ %i.cn, %bb.v ], [ %i.cx, %bb.w ]
  %i.cy = icmp eq i32 %.0.i.i.i.i25, 1
  br i1 %i.cy, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26, !prof !129

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit26: ; preds = %._crit_edge, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i24, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.m
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i, %bb.p
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit
  %i.dc = phi ptr [ %i.dz, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ %i.ch, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit ]
  %.031 = phi i64 [ %i.du, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit ], [ 2, %_ZNSt6vectorIlSaIlEE12emplace_backIJmEEERlDpOT_.exit ] ; 2 uses
  %i.dd = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 3 uses
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %.031 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !42 ; 5 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !299
  %.not.i27 = icmp eq ptr %i.dg, %i.di
  br i1 %.not.i27, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !118 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %i.de, align 8, !tbaa !119
  store <2 x ptr> %i.dl, ptr %i.dg, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.dp = add nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dq = atomicrmw volatile add ptr %i.dm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i28 = load ptr, ptr %i.df, align 8, !tbaa !42
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.dr = phi ptr [ %i.dg, %bb.ab ], [ %i.dg, %bb.ad ], [ %.pre.i28, %bb.ae ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store ptr %i.ds, ptr %i.df, align 8, !tbaa !42
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit

bb.af:                                            ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.de)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit unwind label %bb.ag

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12emplace_backIJRS3_EEES7_DpOT_.exit: ; preds = %bb.af, %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i
  %i.du = add nuw i64 %.031, 1                    ; 2 uses
  %i.dv = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !42
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !45 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 4
  %i.ee = icmp ult i64 %i.du, %i.ed
  br i1 %i.ee, label %.lr.ph, label %._crit_edge, !llvm.loop !1610

bb.ag:                                            ; preds = %bb.af
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.z, %bb.aa, %bb.ag, %bb.y, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i
  %.sink = phi ptr [ %4, %bb.y ], [ %4, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %3, %bb.ag ], [ %3, %bb.aa ], [ %3, %bb.z ]
  %.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.y ], [ %i.y, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i ], [ %i.ef, %bb.ag ], [ %i.db, %bb.aa ], [ %i.da, %bb.z ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %.sink) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !125
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  store ptr null, ptr %i.d, align 8, !tbaa !118
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !119
  store ptr null, ptr %1, align 8, !tbaa !33
  %i.f = load i64, ptr %2, align 8, !tbaa !288
  %i.g = load i64, ptr %3, align 8, !tbaa !288
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %4, i64 noundef %i.f, i64 noundef %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !1611
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !1611
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.12", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !675
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2
  tail call void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !118  ; 8 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !119
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !127
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !427
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !427
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !564  ; 3 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !564
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !118 ; 4 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !118
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i4 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !564
  %.pre7 = load ptr, ptr %i.aa, align 8, !tbaa !118
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, %bb.i, %bb.j
  %i.ai = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.ac, %bb.i ], [ %.pre7, %bb.j ]
  %i.aj = phi ptr [ %i.z, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.z, %bb.i ], [ %.pre, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1612
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !118 ; 8 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !118
  %.not.i.i.i.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i5, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.an, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !127
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !678
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #28, !inline_history !678
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
end_hunk_14
begin_hunk_15_@_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell:bb.a

bb.t:                                             ; preds = %bb.r
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i6 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i6, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.br, %bb.u ], [ %i.cb, %bb.v ]
  %i.cc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cc, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #28
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  ret void

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #28
  resume { ptr, i32 } %i.cd
}

declare void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow6BufferEEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr13is_assignableIRSt12__shared_ptrIS1_LN9__gnu_cxx12_Lock_policyE2EESt10unique_ptrIT_T0_EEE5valueERS2_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %i.c = load <2 x ptr>, ptr %0, align 8, !tbaa !119
  %i.d = load <2 x ptr>, ptr %2, align 16, !tbaa !119
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !119
  store <2 x ptr> %i.c, ptr %2, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !125
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !127
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !1613
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !1613
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEaSIS1_St14default_deleteIS1_EEENSt9enable_ifIXsr6__and_ISt20__sp_compatible_withIPT_PS1_ESt14is_convertibleINSt10unique_ptrISA_T0_E7pointerESC_ESt21is_move_constructibleISG_EEE5valueERS4_E4typeEOSH_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1614
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1614
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !684, !noalias !1614, !nonnull !183, !align !184
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #28, !noalias !1614
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1614 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1614
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1614
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !111
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !351    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !351
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1617
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !129

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !125
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1620 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #28, !inline_history !1622
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !672  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare void @_ZNK5arrow5Array5SliceEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.32") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIN5arrow5ArrayEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !127
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
end_hunk_15
begin_hunk_16_@_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvENKUlmE_clEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1667
  %i.y = add i64 %i.w, 8
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !182, !noalias !1667, !nonnull !183, !align !184
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !364, !noalias !1667
  call void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.439") align 8 %3, i64 noundef %i.y, ptr noundef %i.ab), !noalias !1667
  %i.ac = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1667
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %9, align 8, !tbaa !39, !alias.scope !1667
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1667
  call void @llvm.experimental.noalias.scope.decl(metadata !1671)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !404, !noalias !1677 ; 2 uses
  store i64 %i.ag, ptr %4, align 8, !tbaa !404, !alias.scope !1678, !noalias !1667
  store ptr null, ptr %i.af, align 8, !tbaa !404, !noalias !1677
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1667
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !46, !noalias !1667
  %i.ai = load i8, ptr %i.n, align 1, !tbaa !346, !range !187, !noalias !1667, !noundef !183
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = load ptr, ptr %i.q, align 8, !noalias !1667
  %i.al = select i1 %i.aj, ptr %i.ak, ptr null, !prof !256
  %i.am = inttoptr i64 %i.ag to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1667
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !55, !noalias !1667
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1667
  invoke void %i.as(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.451") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.ah, ptr noundef %i.al, i64 noundef %i.w, ptr noundef nonnull %i.ap)
          to label %bb.f unwind label %bb.h, !noalias !1667

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1667
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.j, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %9, align 8, !tbaa !39, !alias.scope !1667
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.critedge.i unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.j:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !288, !noalias !1667 ; 4 uses
  %i.az = load i64, ptr %i.g, align 8, !tbaa !46, !noalias !1667 ; 4 uses
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !182, !noalias !1667 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !186, !range !187, !noalias !1667, !noundef !183
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.i, label %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.thread.i

_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.i: ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.be = sitofp i64 %i.ay to double
  %i.bf = sitofp i64 %i.az to double
  %i.bg = fdiv double %i.be, %i.bf
  %i.bh = fsub double 1.000000e+00, %i.bg
  %i.bi = load double, ptr %i.bd, align 8, !tbaa !188, !noalias !1667
  %i.bj = fcmp ult double %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.thread.i

bb.k:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.i
  %i.bk = icmp slt i64 %i.az, %i.ay
  %i.bl = icmp sgt i64 %i.az, %i.w
  %or.cond.i = or i1 %i.bk, %i.bl
  %.pre93.i = load ptr, ptr %4, align 8, !tbaa !404, !noalias !1667 ; 3 uses
  br i1 %or.cond.i, label %bb.l, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1667
  %i.bm = add i64 %i.az, 8
  %i.bn = load ptr, ptr %.pre93.i, align 8, !tbaa !55, !noalias !1667
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1667
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(80) %.pre93.i, i64 noundef %i.bm, i1 noundef zeroext false)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.m, !noalias !1667

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.l
  %i.bq = load ptr, ptr %6, align 8, !tbaa !39, !noalias !1667 ; 2 uses
  store ptr %i.bq, ptr %9, align 8, !tbaa !39, !alias.scope !1667
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1667
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN5arrow6StatusD2Ev.exit69.i, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1667
  br label %bb.an

_ZN5arrow6StatusD2Ev.exit69.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.bt = load ptr, ptr %4, align 8, !tbaa !404, !noalias !1667 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !676, !noalias !1667 ; 2 uses
  %.not.i70.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i70.i, label %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit69.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !346, !range !187, !noalias !1667, !noundef !183
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.ca = load i8, ptr %i.bz, align 8, !range !187, !noalias !1667
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false, !prof !256
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1667
  %i.cf = select i1 %i.cc, ptr %i.ce, ptr null, !prof !256
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !46, !noalias !1667 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch
  %i.cj = sub nsw i64 %i.bv, %i.ch
  call void @llvm.memset.p0.i64(ptr align 1 %i.ci, i8 0, i64 %i.cj, i1 false), !noalias !1667
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !404, !noalias !1667
  br label %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i

_ZN5arrow6Buffer11ZeroPaddingEv.exit.i:           ; preds = %bb.n, %_ZN5arrow6StatusD2Ev.exit69.i, %bb.k
  %i.ck = phi ptr [ %.pre93.i, %bb.k ], [ %.pre.i, %bb.n ], [ %i.bt, %_ZN5arrow6StatusD2Ev.exit69.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !1667
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.n, align 1, !tbaa !346, !range !187, !noalias !1667, !noundef !183
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = load ptr, ptr %i.q, align 8, !noalias !1667
  %i.cr = select i1 %i.cp, ptr %i.cq, ptr null, !prof !256
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !46, !noalias !1667
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.cr, i64 %i.cs, i1 false), !noalias !1667
  %i.ct = load i64, ptr %i.g, align 8, !tbaa !46, !noalias !1667
  br label %_ZN5arrow6StatusD2Ev.exit76.i

_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.thread.i: ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1667
  %i.cu = load ptr, ptr %4, align 8, !tbaa !404, !noalias !1667 ; 2 uses
  %i.cv = add i64 %i.ay, 8
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !55, !noalias !1667
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !1667
  invoke void %i.cy(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(80) %i.cu, i64 noundef %i.cv, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit72.i unwind label %bb.o, !noalias !1667

_ZN5arrow6StatusD2Ev.exit72.i:                    ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.thread.i
  %i.cz = load ptr, ptr %7, align 8, !tbaa !39, !noalias !1667 ; 2 uses
  store ptr %i.cz, ptr %9, align 8, !tbaa !39, !alias.scope !1667
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1667
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i, label %.critedge.i

_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i: ; preds = %_ZN5arrow6StatusD2Ev.exit72.i
  %.pre94.i = load ptr, ptr %4, align 8, !tbaa !404, !noalias !1667
  br label %_ZN5arrow6StatusD2Ev.exit76.i

bb.o:                                             ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer14ShouldCompressEll.exit.thread.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1667
  br label %bb.an

_ZN5arrow6StatusD2Ev.exit76.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i, %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i
  %i.dc = phi ptr [ %i.ck, %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i ], [ %.pre94.i, %_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i ]
  %.039.i = phi i64 [ %i.ct, %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i ], [ %i.ay, %_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i ]
  %.0.i = phi i64 [ -1, %_ZN5arrow6Buffer11ZeroPaddingEv.exit.i ], [ %i.x, %_ZN5arrow6StatusD2Ev.exit72._ZN5arrow6StatusD2Ev.exit76_crit_edge.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !1667
  store i64 %.0.i, ptr %i.de, align 1, !noalias !1667
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2INS0_15ResizableBufferESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferESt14default_deleteIS4_EvEEOSt10unique_ptrIT_T0_E.exit.i unwind label %bb.aj, !noalias !1667

_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferESt14default_deleteIS4_EvEEOSt10unique_ptrIT_T0_E.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  %i.df = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #29
          to label %.noexc.i unwind label %bb.ak, !noalias !1667 ; 6 uses

.noexc.i:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferESt14default_deleteIS4_EvEEOSt10unique_ptrIT_T0_E.exit.i
  %i.dg = add i64 %.039.i, 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 1, ptr %i.dh, align 8, !tbaa !125, !noalias !1679
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 1, ptr %i.di, align 4, !tbaa !127, !noalias !1679
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.df, align 8, !tbaa !55, !noalias !1679
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !1679
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dl = load <2 x ptr>, ptr %8, align 16, !tbaa !119, !noalias !1679
  store ptr null, ptr %i.dk, align 8, !tbaa !118, !noalias !1679
  store <2 x ptr> %i.dl, ptr %2, align 16, !tbaa !119, !noalias !1679
  store ptr null, ptr %8, align 16, !tbaa !33, !noalias !1679
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.dj, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %i.dg)
          to label %bb.p unwind label %.body.i12, !noalias !1679

bb.p:                                             ; preds = %.noexc.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !118, !noalias !1679 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  %i.dp = load atomic i64, ptr %i.do acquire, align 8, !noalias !1679 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4294967297
  %i.dr = trunc i64 %i.dp to i32                  ; 2 uses
  br i1 %i.dq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.do, align 8, !tbaa !125, !noalias !1679
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  store i32 0, ptr %i.ds, align 4, !tbaa !127, !noalias !1679
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !55, !noalias !1679
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !1679
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #28, !noalias !1679, !inline_history !1684
  %i.dw = load ptr, ptr %i.dn, align 8, !tbaa !55, !noalias !1679
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !1679
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #28, !noalias !1679, !inline_history !1684
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.dz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1679
  %.not.i.i.i.i.i13 = icmp eq i8 %i.dz, 0
  br i1 %.not.i.i.i.i.i13, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = add nsw i32 %i.dr, -1
  store i32 %i.ea, ptr %i.do, align 8, !tbaa !3, !noalias !1679
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.eb = atomicrmw volatile add ptr %i.do, i32 -1 acq_rel, align 4, !noalias !1679
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.t ], [ %i.eb, %bb.u ]
  %i.ec = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ec, label %bb.v, label %bb.w, !prof !129

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #28, !noalias !1679
  br label %bb.w

.body.i12:                                        ; preds = %.noexc.i
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #28, !noalias !1679
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 96) #30, !noalias !1679
  br label %.body.i

bb.w:                                             ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.r, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !1679
  store ptr %i.dj, ptr %i.e, align 8, !tbaa !351, !noalias !1667
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !118, !noalias !1667 ; 8 uses
  store ptr %i.df, ptr %i.ee, align 8, !tbaa !118, !noalias !1667
  %.not.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8, !noalias !1667 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.eg, align 8, !tbaa !125, !noalias !1667
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !127, !noalias !1667
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !55, !noalias !1667
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !noalias !1667
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !noalias !1667, !inline_history !1685
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !55, !noalias !1667
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !1667
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !noalias !1667, !inline_history !1685
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.z:                                             ; preds = %bb.x
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1667
  %.not.i.i.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3, !noalias !1667
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4, !noalias !1667
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.aa ], [ %i.et, %bb.ab ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.ac, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !noalias !1667
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.y, %bb.w
  %i.ev = load ptr, ptr %i.dk, align 8, !tbaa !118, !noalias !1667 ; 8 uses
  %.not.i.i77.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i77.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 4 uses
  %i.ex = load atomic i64, ptr %i.ew acquire, align 8, !noalias !1667 ; 2 uses
  %i.ey = icmp eq i64 %i.ex, 4294967297
  %i.ez = trunc i64 %i.ex to i32                  ; 2 uses
  br i1 %i.ey, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.ew, align 8, !tbaa !125, !noalias !1667
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 0, ptr %i.fa, align 4, !tbaa !127, !noalias !1667
  %i.fb = load ptr, ptr %i.ev, align 8, !tbaa !55, !noalias !1667
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !1667
  call void %i.fd(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #28, !noalias !1667, !inline_history !1686
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !55, !noalias !1667
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !1667
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #28, !noalias !1667, !inline_history !1686
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i

bb.af:                                            ; preds = %bb.ad
  %i.fh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1667
  %.not.i.i.i78.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i78.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = add nsw i32 %i.ez, -1
  store i32 %i.fi, ptr %i.ew, align 8, !tbaa !3, !noalias !1667
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i

bb.ah:                                            ; preds = %bb.af
  %i.fj = atomicrmw volatile add ptr %i.ew, i32 -1 acq_rel, align 4, !noalias !1667
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i80.i = phi i32 [ %i.ez, %bb.ag ], [ %i.fj, %bb.ah ]
  %i.fk = icmp eq i32 %.0.i.i.i.i80.i, 1
  br i1 %i.fk, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i, !prof !129

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev) #28, !noalias !1667
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i: ; preds = %bb.ai, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79.i, %bb.ae, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store ptr null, ptr %9, align 8, !tbaa !39, !alias.scope !1687
  br label %.critedge.i

bb.aj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit76.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferESt14default_deleteIS4_EvEEOSt10unique_ptrIT_T0_E.exit.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ak, %.body.i12
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.fm, %bb.ak ], [ %i.ed, %.body.i12 ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28, !noalias !1667
  br label %bb.an

.critedge.i:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81.i, %_ZN5arrow6StatusD2Ev.exit72.i, %_ZN5arrow6StatusD2Ev.exit.i, %bb.g
  %i.fn = load ptr, ptr %5, align 8, !tbaa !39, !noalias !1667 ; 2 uses
  %.not.i.i82.i = icmp eq ptr %i.fn, null
  br i1 %.not.i.i82.i, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.al, !prof !256

bb.al:                                            ; preds = %.critedge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !257, !range !187, !noundef !183
  %i.fq = trunc nuw i8 %i.fp to i1
  br i1 %i.fq, label %_ZN5arrow6ResultIlED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
end_hunk_16
begin_hunk_17_@_ZN5arrow9StopTokenD2Ev:bb.a
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !1698
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !1698
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev(ptr %.32.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i.i = icmp eq ptr %.32.val, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt11_Tuple_implILm0EJN5arrow6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !125
  %i.e = getelementptr inbounds nuw i8, ptr %.32.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !127
  %i.f = load ptr, ptr %.32.val, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.32.val) #28, !inline_history !1699
  %i.i = load ptr, ptr %.32.val, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.32.val) #28, !inline_history !1699
  br label %_ZNSt11_Tuple_implILm0EJN5arrow6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt11_Tuple_implILm0EJN5arrow6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.32.val) #28
  br label %_ZNSt11_Tuple_implILm0EJN5arrow6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit

_ZNSt11_Tuple_implILm0EJN5arrow6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_6FutureINS_8internal5EmptyEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.232", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !129

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !111
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !134    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !111
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !134    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !111
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #32
  unreachable
}

declare void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.395") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !229    ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !232
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.x       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !229
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1700
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !129

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !125
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %bb.p, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !249 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i: ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %bb.p
  store ptr %i.a, ptr %i.al, align 8, !tbaa !246
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i3.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i3.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !249
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i
  %i.ax = phi ptr [ %.pre.i.i.i, %bb.s ], [ %i.an, %bb.r ], [ %i.an, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.thread.i.i.i ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 3 uses
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i7.i.i.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i7.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !3  ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bc = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.u ], [ %i.bc, %bb.v ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bd, label %bb.w, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28, !inline_history !1702
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !249
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %bb.a, %_ZNKSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void

bb.x:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  resume { ptr, i32 } %i.bh
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1703 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) #28, !inline_history !1705
  br label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow10FutureImplESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !672  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow10FutureImplEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(41) @_ZTSSt14default_deleteIN5arrow10FutureImplEE) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.g = load ptr, ptr %.val, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28, !inline_history !1706
  %i.j = load ptr, ptr %.val, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28, !inline_history !1706
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit

_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEEE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #28, !inline_history !1707
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #28, !inline_history !1707
  br label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #28, !inline_history !1708
  br label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplISt5_BindIFNS_6detail14ContinueFutureENS_6FutureINS0_5EmptyEEEZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEE6invokeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %2 = alloca %"class.arrow::Future", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i.i = load ptr, ptr %i.d, align 8, !tbaa !118 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !119
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !119
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i: ; preds = %bb.d, %bb.c, %bb.a
  %.val.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !1709
  %.val5.i.i.i.i = load i32, ptr %i.a, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.l = sext i32 %.val5.i.i.i.i to i64
  invoke fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvENKUlmE_clEm(ptr dead_on_unwind noalias writable align 8 %1, ptr readonly %.val.i.i.i.i, i64 noundef %i.l)
          to label %.noexc.i.i.i.i unwind label %bb.r

.noexc.i.i.i.i:                                   ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.m = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.f, !prof !256

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !257, !range !187, !noundef !183
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  br label %bb.k

bb.h:                                             ; preds = %.noexc.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %.not.i3.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i3.i.i.i.i.i, label %.body.i.i.i.i, label %bb.i, !prof !256

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !257, !range !187, !noundef !183
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.body.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #28
  br label %.body.i.i.i.i

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !118  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEclIJEvEET0_DpOT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.w, align 8, !tbaa !125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !127
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28, !inline_history !1711
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28, !inline_history !1711
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEclIJEvEET0_DpOT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i6.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i6.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.o ], [ %i.aj, %bb.p ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.q, label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEclIJEvEET0_DpOT_.exit, !prof !129

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #28
  br label %_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEclIJEvEET0_DpOT_.exit

bb.r:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.r, %bb.j, %bb.i, %bb.h
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.al, %bb.r ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.h ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i

_ZNSt5_BindIFN5arrow6detail14ContinueFutureENS0_6FutureINS0_8internal5EmptyEEEZNS0_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_iEEclIJEvEET0_DpOT_.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.429", align 8 ; 7 uses
end_hunk_17
begin_hunk_18_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm:bb.a
  %i.l = select i1 %i.i, i64 15, i64 %i.k
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.e, label %bb.k, !prof !256

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %i.u, align 1, !tbaa !111
  store i8 %i.v, ptr %i.t, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.h, %bb.g, %bb.e
  switch i64 %4, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !111
  store i8 %i.w, ptr %i.m, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.j, %bb.i, %bb.k, %bb.l
  store i64 %i.f, ptr %i.a, align 8, !tbaa !109
  %i.x = load ptr, ptr %0, align 8, !tbaa !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !111
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109  ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !134    ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 3 uses
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a, %bb.b
  %i.k = load i64, ptr %i.h, align 8              ; 2 uses
  %i.l = select i1 %i.i, i64 15, i64 %i.k         ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #31
  unreachable

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0 = phi i64 [ %spec.store.select.i, %bb.f ], [ %i.f, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !129

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #31
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.g
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #29 ; 5 uses
  switch i64 %1, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !111
  store i8 %i.t, ptr %i.s, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.j, %bb.i
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !111
  store i8 %i.x, ptr %i.w, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !111
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !111
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !134
  store i64 %.0, ptr %i.h, align 8, !tbaa !111
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !249 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.h = load ptr, ptr %.val, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #28, !inline_history !1715
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit"

"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0D2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED0Ev"(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0EE", i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !249 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 12 ; 3 uses
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.f = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  %i.g = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.g, label %bb.e, label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.h = load ptr, ptr %.val.i, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #28, !inline_history !1716
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0ED2Ev.exit": ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEE6FnImplIZNS0_8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_E3$_0E6invokeES4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Future", align 8     ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249, !noalias !1720 ; 5 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 8, !noalias !1720
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.g = cmpxchg weak ptr %i.d, i32 %.06.i.i.i.i.i.i.i, i32 %i.f acq_rel monotonic, align 8, !noalias !1720 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0
  br i1 %i.h, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.c, !llvm.loop !1723

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.j = load atomic i32, ptr %i.d monotonic, align 8, !noalias !1720
  %.fr.i.i.i.i.i = freeze i32 %i.j
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i, label %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %bb.a
  %.sroa.3.1.i.ph.i = phi ptr [ null, %bb.a ], [ %i.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i ], [ null, %bb.c ] ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !232, !alias.scope !1717
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.1.i.ph.i, ptr %i.k, align 8, !tbaa !118, !alias.scope !1717
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !noalias !1720 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !232, !alias.scope !1717
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.c, ptr %i.m, align 8, !tbaa !118, !alias.scope !1717
  %.not.i.i.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i
  store ptr null, ptr %3, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.e
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.n = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !257, !range !187, !noundef !183
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i

bb.i:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit6.i

bb.j:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %.not.i5.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i, label %_ZN5arrow6StatusD2Ev.exit6.i, label %bb.k, !prof !256

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !257, !range !187, !noundef !183
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit6.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  br label %_ZN5arrow6StatusD2Ev.exit6.i

_ZN5arrow6StatusD2Ev.exitthread-pre-split.i:      ; preds = %bb.h, %bb.g, %bb.f
  %.pr.i = load ptr, ptr %i.m, align 8, !tbaa !118
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i
  %i.x = phi ptr [ %.pr.i, %_ZN5arrow6StatusD2Ev.exitthread-pre-split.i ], [ %.sroa.3.1.i.ph.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.thread.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", label %_ZN5arrow6StatusD2Ev.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i
  %i.y = phi ptr [ %i.x, %_ZN5arrow6StatusD2Ev.exit.i ], [ %i.c, %_ZN5arrow10WeakFutureINS_8internal5EmptyEE3getEv.exit.i ] ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  store i32 0, ptr %i.z, align 8, !tbaa !125
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !127
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1724
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28, !inline_history !1724
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit"

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i7.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.o ], [ %i.am, %bb.p ]
  %i.an = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.an, label %bb.q, label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit", !prof !129

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #28
  br label %"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit"

_ZN5arrow6StatusD2Ev.exit6.i:                     ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.i

"_ZZN5arrow8internal8Executor6SubmitIRZNS_3ipc12_GLOBAL__N_121RecordBatchSerializer19CompressBodyBuffersEvEUlmE_JRiENS_6FutureINS0_5EmptyEEEEENS_6ResultIT1_EENS0_9TaskHintsENS_9StopTokenEOT_DpOT0_EN3$_0clERKNS_6StatusE.exit": ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

declare void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

declare void @_ZN5arrow23AllocateResizableBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.439") align 8, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !39     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !256

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !404  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(80) %i.d) #28, !inline_history !1725
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !39 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !274

_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !257, !range !187, !noundef !183
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2INS0_15ResizableBufferESt14default_deleteIS6_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !404    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !404
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1726
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !129

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !125
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1728 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #28, !inline_history !1730
  br label %_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow15ResizableBufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !672  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(46) @_ZTSSt14default_deleteIN5arrow15ResizableBufferEE) #28
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6TensorD0Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6TensorD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #30
  ret void
}

declare void @_ZN5arrow2io18BufferOutputStreamC1ERKSt10shared_ptrINS_15ResizableBufferEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt11make_uniqueIN5arrow6TensorEJSt10shared_ptrINS0_8DataTypeEERS2_INS0_15ResizableBufferEERKSt6vectorIlSaIlEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.98") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !119
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit: ; preds = %bb.a, %bb.c, %bb.d
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit
  store ptr %i.a, ptr %0, align 8, !tbaa !413
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.l, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !127
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !300
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28, !inline_history !300
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.i ], [ %i.y, %bb.j ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2INS0_15ResizableBufferEvEERKS_IT_E.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 112) #30
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nounwind
declare void @_ZN5arrow2io18BufferOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !404    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !1731
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !118
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !404
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !125
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !127
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1726
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !118 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !127
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28, !inline_history !1619
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !129

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #28
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !118
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !125
  store i32 0, ptr %i.f, align 4, !tbaa !127
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  resume { ptr, i32 } %i.al
}

declare noundef ptr @_ZN5arrow19default_memory_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal22SparseTensorSerializer16VisitSparseIndexERKNS_11SparseIndexE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1733
  switch i32 %i.b, label %bb.b [
    i32 0, label %_ZN5arrow6StatusD2Ev.exit
    i32 1, label %_ZN5arrow6StatusD2Ev.exit41
    i32 2, label %_ZN5arrow6StatusD2Ev.exit47
    i32 3, label %_ZN5arrow6StatusD2Ev.exit53
  ]

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5arrow3ipc8internal22SparseTensorSerializer19VisitSparseCOOIndexERKNS_14SparseCOOIndexE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(33) %2)
  %i.c = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.p

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow3ipc8internal22SparseTensorSerializer19VisitSparseCSRIndexERKNS_14SparseCSRIndexE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.e = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.o, label %bb.p

_ZN5arrow6StatusD2Ev.exit47:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc8internal22SparseTensorSerializer19VisitSparseCSCIndexERKNS_14SparseCSCIndexE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(48) %2)
  %i.g = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.o, label %bb.p

_ZN5arrow6StatusD2Ev.exit53:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN5arrow3ipc8internal22SparseTensorSerializer19VisitSparseCSFIndexERKNS_14SparseCSFIndexE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.i = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.o, label %bb.p

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7)
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.22, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.m = load ptr, ptr %2, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(12) %2)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.p = load ptr, ptr %8, align 8, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !109
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.p, i64 noundef %i.r)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !55
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1736 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !1742
  %.not.i1.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 67
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !111
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.y)
          to label %.noexc67 unwind label %bb.l

.noexc67:                                         ; preds = %bb.f
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = invoke noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.y, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.l, !inline_history !1747

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc67, %bb.e
  %.0.i.i.i = phi i8 [ %i.ac, %bb.e ], [ %i.ag, %.noexc67 ]
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef signext %.0.i.i.i)
          to label %.noexc69 unwind label %bb.l

.noexc69:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.l ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc69
  %i.aj = load ptr, ptr %8, align 8, !tbaa !134   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !111
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEPFRSoS_E.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ao, ptr %9, align 8, !tbaa !107, !alias.scope !1754
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ap, align 8, !tbaa !109, !alias.scope !1754
  store i8 0, ptr %i.ao, align 8, !tbaa !111, !alias.scope !1754
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1755, !noalias !1754 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ar, null
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1754 ; 2 uses
  %i.au = icmp ugt ptr %i.ar, %i.at
  %.08.i.i.i = select i1 %i.au, ptr %i.ar, ptr %i.at ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1757, !noalias !1754 ; 2 uses
  %i.ax = ptrtoint ptr %.08.i.i.i to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef %i.aw, i64 noundef %i.az)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load ptr, ptr %9, align 8, !tbaa !134, !alias.scope !1754 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.ao
  br i1 %i.bd, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  invoke void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit unwind label %bb.m

_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bf = load ptr, ptr %9, align 8, !tbaa !134   ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.ao
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.bj = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bj, ptr %7, align 8, !tbaa !55
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %7, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !55
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !55
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i32 0, i32 0, i32 2), ptr %i.bp, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !134 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !111
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds inrange(-16, 112) ({ [16 x ptr] }, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i32 0, i32 0, i32 2), ptr %i.bp, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #28
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bx, ptr %7, align 8, !tbaa !55
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %7, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cc, align 8, !tbaa !1758
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cd) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.p

bb.j:                                             ; preds = %bb.b
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.l:                                             ; preds = %.noexc69, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc67, %bb.f, %bb.d, %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %8, align 8, !tbaa !134   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.l
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !111
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.k ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.cg, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.n

bb.m:                                             ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %9, align 8, !tbaa !134   ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ao
  br i1 %i.co, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.m, %bb.h
  %.sink = phi ptr [ %i.bc, %bb.h ], [ %i.cn, %bb.m ]
  %.pn29.ph = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.cm, %bb.m ]
  %i.cp = load i64, ptr %i.ao, align 8, !tbaa !111
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.cq) #30
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.m, %bb.h
  %.pn29 = phi { ptr, i32 } [ %i.bb, %bb.h ], [ %i.cm, %bb.m ], [ %.pn29.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.n

bb.n:                                             ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %bb.j
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.ce, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn29.pn

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit53, %_ZN5arrow6StatusD2Ev.exit47, %_ZN5arrow6StatusD2Ev.exit41, %_ZN5arrow6StatusD2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !1760
  br label %bb.p

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit53, %_ZN5arrow6StatusD2Ev.exit47, %_ZN5arrow6StatusD2Ev.exit41, %_ZN5arrow6StatusD2Ev.exit, %bb.o, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal22SparseTensorSerializer17SerializeMetadataERKNS_12SparseTensorE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.106", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = load ptr, ptr %1, align 8, !tbaa !436
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i64, ptr %i.b, align 8, !tbaa !284
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.106") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(60) %i.e)
  %i.f = load ptr, ptr %1, align 8, !tbaa !436    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  %i.g = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1763
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv.exit.i

_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv.exit.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE6statusEv.exit.i
  %i.i = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1769
  %i.j = load ptr, ptr %0, align 8, !tbaa !39, !alias.scope !1769 ; 2 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !39, !noalias !1769
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !119, !noalias !1770
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !noalias !1763
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !118, !noalias !1763 ; 8 uses
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !119, !noalias !1763
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %thread-pre-split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8, !noalias !1763 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.p, align 8, !tbaa !125, !noalias !1763
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !127, !noalias !1763
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !55, !noalias !1763
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1763
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !noalias !1763, !inline_history !1773
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !55, !noalias !1763
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1763
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !noalias !1763, !inline_history !1773
  br label %thread-pre-split

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1763
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3, !noalias !1763
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4, !noalias !1763
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.s, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.h, label %thread-pre-split, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #28, !noalias !1763
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %3, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %thread-pre-split, %.noexc
  %i.ae = phi ptr [ %.pr, %thread-pre-split ], [ %i.j, %.noexc ] ; 2 uses
  %storemerge.i = phi ptr [ null, %thread-pre-split ], [ %i.i, %.noexc ]
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !39, !alias.scope !1763
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !256

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i3, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ai, align 8, !tbaa !125
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !127
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #28, !inline_history !371
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #28, !inline_history !371
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

end_hunk_18
begin_hunk_19_@_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !125
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !127
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !171
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN5arrow17RecordBatchReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare void @_ZN5arrow3ipc21DictionaryFieldMapperC1ERKNS_6SchemaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc8internal15IpcFormatWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriter16WriteRecordBatchERKNS_11RecordBatchE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !125
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !127
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !293
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28, !inline_history !293
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #28
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.i:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriter16WriteRecordBatchERKNS_11RecordBatchERKSt10shared_ptrIKNS_16KeyValueMetadataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::ipc::(anonymous namespace)::RecordBatchSerializer", align 8 ; 13 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"struct.arrow::ipc::IpcPayload", align 8 ; 10 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1814, !range !187, !noundef !183
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(27) @.str.23)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !543, !nonnull !183, !align !184
  %i.h = tail call noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i1 noundef zeroext false)
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow6Status8FromArgsIJRA50_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(50) @.str.24)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load i8, ptr %i.i, align 8, !tbaa !519, !range !187, !noalias !1815, !noundef !183
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit38.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit38.thread:               ; preds = %bb.e
  store ptr null, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit40

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.e
  call void @_ZN5arrow3ipc8internal15IpcFormatWriter5StartEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(240) %1)
  %.pr = load ptr, ptr %6, align 8, !tbaa !39     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit40, label %bb.l

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %_ZN5arrow6StatusD2Ev.exit38.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN5arrow3ipc8internal15IpcFormatWriter17WriteDictionariesERKNS_11RecordBatchE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.m = load ptr, ptr %7, align 8, !tbaa !39     ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.l

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 3, ptr %8, align 8, !tbaa !59, !noalias !1818
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1818
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerE, i32 0, i32 0, i32 2), ptr %5, align 8, !tbaa !55, !noalias !1818
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %8, ptr %i.r, align 8, !tbaa !70, !noalias !1818
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val6.i = load ptr, ptr %i.q, align 8, !tbaa !118, !noalias !1818 ; 2 uses
  %i.t = load <2 x ptr>, ptr %3, align 8, !tbaa !119, !noalias !1818
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !119, !noalias !1818
  %.not.i.i.i.i.i = icmp eq ptr %.val6.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111, !noalias !1818
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3, !noalias !1818
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3, !noalias !1818
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i

bb.i:                                             ; preds = %bb.g
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4, !noalias !1818 ; 0 uses
  br label %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i

_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, i8 0, i64 72, i1 false), !noalias !1818
  store ptr %i.p, ptr %i.aa, align 8, !tbaa !87, !noalias !1818
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !88, !noalias !1818
  %i.ae = sext i32 %i.ad to i64
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !99, !noalias !1818
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 0, ptr %i.af, align 8, !tbaa !100, !noalias !1818
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializer8AssembleERKNS_11RecordBatchE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN5arrow6StatusD2Ev.exit46 unwind label %.body

.body:                                            ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1818
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerC2ElRKSt10shared_ptrIKNS_16KeyValueMetadataEERKNS0_15IpcWriteOptionsEPNS0_10IpcPayloadE.exit.i
  call void @_ZN5arrow3ipc12_GLOBAL__N_121RecordBatchSerializerD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1818
  %i.ah = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit50, label %.critedge

_ZN5arrow6StatusD2Ev.exit50:                      ; preds = %_ZN5arrow6StatusD2Ev.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1821
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !335, !noalias !1821 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !55, !noalias !1821
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1821
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(88) %8)
          to label %.noexc unwind label %bb.j, !inline_history !550

.noexc:                                           ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.ao = load ptr, ptr %4, align 8, !tbaa !39, !noalias !1821 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1821
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit56, label %.critedge.sink.split

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit50
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %.noexc
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !tbaa !288
  %i.at = add nsw <2 x i64> %i.as, splat (i64 1)
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !288
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.aw = load <2 x i64>, ptr %i.av, align 8, !tbaa !288
  %i.ax = shufflevector <2 x i64> %i.aw, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = load <2 x i64>, ptr %i.au, align 8, !tbaa !288
  %i.az = add nsw <2 x i64> %i.ay, %i.ax
  store <2 x i64> %i.az, ptr %i.au, align 8, !tbaa !288
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.noexc, %_ZN5arrow6StatusD2Ev.exit56
  %.sink = phi ptr [ null, %_ZN5arrow6StatusD2Ev.exit56 ], [ %i.ao, %.noexc ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %_ZN5arrow6StatusD2Ev.exit46
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %.body
  %.pn28.pn = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.ag, %.body ]
  call void @_ZN5arrow3ipc10IpcPayloadD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %.pn28.pn

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6StatusD2Ev.exit, %.critedge, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriter10WriteTableERKNS_5TableEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.516", align 8 ; 13 uses
  %5 = alloca %"class.std::shared_ptr.129", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !628, !range !187, !noundef !183
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 178
  %i.e = load i8, ptr %i.d, align 2, !range !187
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1824
  call void @_ZN5arrow17DictionaryUnifier10UnifyTableERKNS_5TableEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.516") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.h)
  %i.i = load ptr, ptr %4, align 8, !tbaa !39
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.c, !prof !256

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1825)
  call void @llvm.experimental.noalias.scope.decl(metadata !1828)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1831, !noalias !1834 ; 2 uses
  store ptr %i.m, ptr %5, align 8, !tbaa !1831, !alias.scope !1834
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118, !noalias !1834 ; 9 uses
  store ptr null, ptr %i.o, align 8, !tbaa !118, !noalias !1834
  store ptr %i.p, ptr %i.n, align 8, !tbaa !118, !alias.scope !1834
  store ptr null, ptr %i.l, align 8, !tbaa !1831, !noalias !1834
  invoke void @_ZN5arrow3ipc17RecordBatchWriter10WriteTableERKNS_5TableEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.q, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !127
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !488
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !488
  br label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

end_hunk_19
begin_hunk_20_@_ZN5arrow3ipc8internal19PayloadStreamWriter12WritePayloadERKNS0_10IpcPayloadE:bb.a
_ZN5arrow6StatusD2Ev.exit8.thread.i:              ; preds = %_ZN5arrow6StatusD2Ev.exit19
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !288, !noalias !1922
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !288, !noalias !1922
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1911
  br label %_ZN5arrow6StatusD2Ev.exit25

bb.c:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i
  %i.bb = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1926 ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !39, !alias.scope !1927, !noalias !1911 ; 3 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !39, !noalias !1926
  store ptr %i.bb, ptr %4, align 8, !tbaa !39, !alias.scope !1928, !noalias !1911
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !1929

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !257, !range !187, !noalias !1911, !noundef !183
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28, !noalias !1911
  %.pr.pre.i = load ptr, ptr %4, align 8, !tbaa !39, !noalias !1911
  br label %_ZN5arrow6StatusD2Ev.exit.i

bb.f:                                             ; preds = %_ZNO5arrow6ResultIlE6statusEv.exit.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1917 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i2.i.i, label %_ZN5arrow6ResultIlED2Ev.exit3.i.i, label %bb.g, !prof !256

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !257, !range !187, !noalias !1911, !noundef !183
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %_ZN5arrow6ResultIlED2Ev.exit3.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #28, !noalias !1911
  br label %_ZN5arrow6ResultIlED2Ev.exit3.i.i

_ZN5arrow6ResultIlED2Ev.exit3.i.i:                ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1917
  resume { ptr, i32 } %i.bg

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  %i.bl = phi ptr [ %i.bb, %bb.c ], [ %.pr.pre.i, %bb.e ], [ %i.bb, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1917
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1911
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit25, label %.critedge

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit8.thread.i
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit56.i, %_ZN5arrow6StatusD2Ev.exit50.i, %_ZN5arrow6StatusD2Ev.exit.i, %bb.a, %_ZN5arrow6StatusD2Ev.exit25
  %.sink = phi ptr [ %i.bl, %_ZN5arrow6StatusD2Ev.exit.i ], [ null, %_ZN5arrow6StatusD2Ev.exit25 ], [ %i.g, %bb.a ], [ %i.ae, %_ZN5arrow6StatusD2Ev.exit56.i ], [ %i.y, %_ZN5arrow6StatusD2Ev.exit50.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal19PayloadStreamWriter5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1930)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !1930
  store i32 0, ptr %i.a, align 4, !tbaa !3, !noalias !1930
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i8, ptr %i.b, align 4, !tbaa !1933, !range !187, !noalias !1930, !noundef !183
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !1934
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !323, !noalias !1934 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55, !noalias !1934
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1934
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @_ZN5arrow3ipc8internalL21kIpcContinuationTokenE, i64 noundef 4), !noalias !1934, !inline_history !1937
  %i.j = load ptr, ptr %3, align 8, !tbaa !39, !noalias !1934 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1934
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit8.i, label %.critedge.sink.split.i

_ZN5arrow6StatusD2Ev.exit8.i:                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !328, !noalias !1934
  %i.n = add nsw i64 %i.m, 4
  store i64 %i.n, ptr %i.l, align 8, !tbaa !328, !noalias !1934
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit8.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !1941
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !323, !noalias !1941 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !55, !noalias !1941
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !1941
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.a, i64 noundef 4), !noalias !1941, !inline_history !1937
  %i.t = load ptr, ptr %2, align 8, !tbaa !39, !noalias !1941 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !39, !alias.scope !1941
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !1941
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %_ZN5arrow3ipc8internal16StreamBookKeeper8WriteEOSEv.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !328, !noalias !1941
  %i.x = add nsw i64 %i.w, 4
  store i64 %i.x, ptr %i.v, align 8, !tbaa !328, !noalias !1941
  br label %.critedge.sink.split.i

.critedge.sink.split.i:                           ; preds = %bb.d, %bb.b
  %.sink.i = phi ptr [ null, %bb.d ], [ %i.j, %bb.b ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !39, !alias.scope !1930
  br label %_ZN5arrow3ipc8internal16StreamBookKeeper8WriteEOSEv.exit

_ZN5arrow3ipc8internal16StreamBookKeeper8WriteEOSEv.exit: ; preds = %bb.c, %.critedge.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !1930
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc8internal15IpcFormatWriterEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(240) %i.a) #28, !inline_history !1942
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(256) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 256) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc8internal15IpcFormatWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !672  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !111
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal15IpcFormatWriterC2ESt10unique_ptrINS1_16IpcPayloadWriterESt14default_deleteIS4_EERKSt10shared_ptrINS_6SchemaEERKNS0_15IpcWriteOptionsEb(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(60) %3, i1 noundef zeroext %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !335
  store ptr null, ptr %1, align 8, !tbaa !335
  %i.b = load ptr, ptr %2, align 8, !tbaa !135    ; 2 uses
  store ptr getelementptr inbounds inrange(-16, 56) ({ [9 x ptr] }, ptr @_ZTVN5arrow3ipc8internal15IpcFormatWriterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.a, ptr %i.c, align 8, !tbaa !335
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.e, align 8, !tbaa !627
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_ZN5arrow3ipc21DictionaryFieldMapperC1ERKNS_6SchemaE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = zext i1 %4 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.g, ptr %i.h, align 8, !tbaa !628
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.j, ptr %i.i, align 8, !tbaa !629
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.k, align 8, !tbaa !630
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !631
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.n, i8 0, i64 18, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.o, ptr noundef nonnull align 8 dereferenceable(60) %3, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !118  ; 2 uses
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !119
  store <2 x ptr> %i.t, ptr %i.p, align 8, !tbaa !119
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #28
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !335 ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8, label %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aa) #28, !inline_history !632
  br label %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, ptr noundef nonnull align 8 dereferenceable(20) %i.af, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, i8 0, i64 56, i1 false)
  %i.ah = load ptr, ptr %2, align 8, !tbaa !135
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !135
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118 ; 4 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !118 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit
  %.not7.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !118
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.ar = phi ptr [ %i.al, %bb.g ], [ %i.al, %bb.i ], [ %.pr.pre.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.as, align 8, !tbaa !125
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !127
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !1943
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !55
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !1943
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i9.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.av, %bb.n ], [ %i.bf, %bb.o ]
  %i.bg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bg, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !129

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !118
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEaSERKS2_.exit:  ; preds = %_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  ret void

_ZNSt10unique_ptrIN5arrow3ipc8internal16IpcPayloadWriterESt14default_deleteIS3_EED2Ev.exit8: ; preds = %_ZNKSt14default_deleteIN5arrow3ipc8internal16IpcPayloadWriterEEclEPS3_.exit.i.i, %bb.f
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow3ipc8internal17PayloadFileWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVN5arrow3ipc8internal17PayloadFileWriterE, i32 0, i32 0, i32 2), ptr %0, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1944 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1947
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1944 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1947
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit2

_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !118  ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.q, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !127
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !293
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28, !inline_history !293
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i3 = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.ad, %bb.h ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.i, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #28
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIN5arrow3ipc8internal9FileBlockESaIS3_EED2Ev.exit2, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !118 ; 8 uses
  %.not.i.i4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i4, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ah, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !127
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #28, !inline_history !636
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #28, !inline_history !636
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i5 = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

bb.n:                                             ; preds = %bb.l
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i7 = phi i32 [ %i.ak, %bb.m ], [ %i.au, %bb.n ]
  %i.av = icmp eq i32 %.0.i.i.i.i7, 1
  br i1 %i.av, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !129

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #28
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i6, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i8 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i8, label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ay, align 8, !tbaa !125
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !127
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28, !inline_history !1906
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28, !inline_history !1906
  br label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bb, %bb.s ], [ %i.bl, %bb.t ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !129

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #28
  br label %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.q, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !118 ; 8 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i1.i, label %_ZN5arrow3ipc8internal16StreamBookKeeperD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow2io12OutputStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bp, align 8, !tbaa !125
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !127
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !55
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  tail call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #28, !inline_history !1907
end_hunk_20
