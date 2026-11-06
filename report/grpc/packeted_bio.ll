Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/packeted_bio?download=true
inline.NumInlined: 128
inline.NumDeleted: 88
begin_hunk_0_@_Z17PacketedBioCreateP7timevalSt8functionIFbS0_EES1_IFbjEE:bb.a
  %4 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %.sroa.0 = alloca %"class.std::_Function_base", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = tail call ptr @BIO_new(ptr noundef nonnull @_ZN12_GLOBAL__N_121g_packeted_bio_methodE) ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !14
  %.not = icmp eq ptr %i.a, null
  %i.b = ptrtoint ptr %i.a to i64
  br i1 %.not, label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #17
          to label %bb.c unwind label %bb.h       ; 9 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit

_ZNSt8functionIFbP7timevalEEC2EOS3_.exit:         ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 3 uses
  %.not.i.i.not.i5 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i5, label %_ZNSt8functionIFbjEEC2EOS1_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit
  %.sroa.0.sroa.0.0.copyload = load <2 x i64>, ptr %3, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFbjEEC2EOS1_.exit

_ZNSt8functionIFbjEEC2EOS1_.exit:                 ; preds = %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit, %bb.e
  %.sroa.0.sroa.0.0 = phi <2 x i64> [ zeroinitializer, %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit ], [ %.sroa.0.sroa.0.0.copyload, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 24, i1 false)
  store ptr %i.e, ptr %i.n, align 8, !tbaa !17
  %.not.i.i.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFbjEEC2EOS1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !38
  store ptr %i.g, ptr %i.o, align 8, !tbaa !18
  br label %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit.i

_ZNSt8functionIFbP7timevalEEC2EOS3_.exit.i:       ; preds = %bb.f, %_ZNSt8functionIFbjEEC2EOS1_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  store ptr %i.i, ptr %i.q, align 8, !tbaa !21
  %.not.i.i.not.i2.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.not.i2.i, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store <2 x i64> %.sroa.0.sroa.0.0, ptr %i.p, align 8, !tbaa !19
  store ptr %i.k, ptr %i.r, align 8, !tbaa !18
  br label %_ZNSt14_Function_baseD2Ev.exit7

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt8functionIFbP7timevalEEC2EOS3_.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.c, ptr %i.s, align 8, !tbaa !31
  br label %_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit

bb.h:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.t

_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev.exit: ; preds = %bb.a, %_ZNSt14_Function_baseD2Ev.exit7
  %storemerge = phi i64 [ %i.b, %_ZNSt14_Function_baseD2Ev.exit7 ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrI6bio_stN4bssl8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = invoke i32 @BIO_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit unwind label %bb.c ; 0 uses

_ZN4bssl8internal7DeleterclI6bio_stEEvPT_.exit:   ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_Z23PacketedBioAdvanceClockP6bio_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.a, @_ZN12_GLOBAL__N_121g_packeted_bio_methodE
  br i1 %.not.i, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread

_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit
  %.val = load i64, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val13 = load i64, ptr %i.e, align 8           ; 2 uses
  %.not.i14 = icmp ne i64 %.val, 0
  %i.f = icmp ne i64 %.val13, 0
  %i.g = select i1 %.not.i14, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !34
  %i.l = add nsw i64 %i.k, %.val13                ; 2 uses
  %i.m = sdiv i64 %i.l, 1000000
  %i.n = load i64, ptr %i.i, align 8, !tbaa !35
  %i.o = add nsw i64 %i.n, %i.m                   ; 2 uses
  store i64 %i.o, ptr %i.i, align 8, !tbaa !35
  %i.p = srem i64 %i.l, 1000000
  store i64 %i.p, ptr %i.j, align 8, !tbaa !34
  %i.q = load i64, ptr %i.c, align 8, !tbaa !33
  %i.r = add nsw i64 %i.q, %i.o
  store i64 %i.r, ptr %i.i, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread

_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread:   ; preds = %bb.a, %bb.b, %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit, %bb.c
  %.0 = phi i1 [ false, %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_Z19PacketedBioGetClockP6bio_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.a, @_ZN12_GLOBAL__N_121g_packeted_bio_methodE
  br i1 %.not.i, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread

_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  br label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread

_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit.thread:   ; preds = %bb.a, %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN12_GLOBAL__N_113PacketedWriteEP6bio_stPKci(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @BIO_clear_retry_flags(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i8 80, ptr %i.a, align 1, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.e, align 1, !tbaa !19
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.g = call i32 @BIO_write(ptr noundef %i.f, ptr noundef nonnull %i.a, i32 noundef 5) ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.j = call i32 @BIO_write(ptr noundef %i.i, ptr noundef %1, i32 noundef %2) ; 5 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %2, 0
  %i.m = icmp eq i32 %i.j, 0
  %or.cond = and i1 %i.l, %i.m
  br i1 %or.cond, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.b
  %.0.ph = phi i32 [ %i.g, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ %.0.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN12_GLOBAL__N_112PacketedReadEP6bio_stPci(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %3 = alloca %struct.timeval, align 8            ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.h, @_ZN12_GLOBAL__N_121g_packeted_bio_methodE
  br i1 %.not.i, label %bb.b, label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  br label %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit

_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit:          ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_17GetDataEP6bio_st.exit
  tail call void @BIO_clear_retry_flags(ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  br label %bb.d

bb.d:                                             ; preds = %bb.au, %bb.c
  %.066 = phi i32 [ undef, %bb.c ], [ %.11, %bb.au ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.015.i = phi ptr [ %i.c, %bb.d ], [ %i.aa, %bb.f ] ; 2 uses
  %.014.i = phi i64 [ 1, %bb.d ], [ %i.ab, %bb.f ] ; 4 uses
  %.not.i91 = icmp eq i64 %.014.i, 0
  br i1 %.not.i91, label %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp ult i64 %.014.i, 2147483648
  %i.w = trunc nuw nsw i64 %.014.i to i32
  %spec.select.i = select i1 %i.v, i32 %i.w, i32 2147483647
  %i.x = call i32 @BIO_read(ptr noundef %i.u, ptr noundef %.015.i, i32 noundef %spec.select.i) ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i, i64 %i.z
  %i.ab = sub i64 %.014.i, %i.z
  br i1 %i.y, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %.thread155

_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit:       ; preds = %bb.e
  %i.ac = load i8, ptr %i.c, align 1, !tbaa !19   ; 2 uses
  switch i8 %i.ac, label %bb.ai [
    i8 84, label %bb.h
    i8 77, label %bb.p
    i8 69, label %bb.w
    i8 80, label %bb.aj
  ]

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit
  %.val = load i64, ptr %.0.i, align 8, !tbaa !33
  %i.ad = getelementptr i8, ptr %.0.i, i64 8      ; 2 uses
  %.val90 = load i64, ptr %i.ad, align 8
  %.not.i92 = icmp ne i64 %.val, 0
  %i.ae = icmp ne i64 %.val90, 0
  %i.af = select i1 %.not.i92, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !43
  %fwrite88 = call i64 @fwrite(ptr nonnull @.str.1, i64 21, i64 1, ptr %i.ag) #19 ; 0 uses
  br label %.thread155

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.015.i93 = phi ptr [ %i.d, %bb.j ], [ %i.an, %bb.l ] ; 2 uses
  %.014.i94 = phi i64 [ 8, %bb.j ], [ %i.ao, %bb.l ] ; 4 uses
  %.not.i95 = icmp eq i64 %.014.i94, 0
  br i1 %.not.i95, label %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit98, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = icmp ult i64 %.014.i94, 2147483648
  %i.aj = trunc nuw nsw i64 %.014.i94 to i32
  %spec.select.i96 = select i1 %i.ai, i32 %i.aj, i32 2147483647
  %i.ak = call i32 @BIO_read(ptr noundef %i.ah, ptr noundef %.015.i93, i32 noundef %spec.select.i96) ; 3 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i93, i64 %i.am
  %i.ao = sub i64 %.014.i94, %i.am
  br i1 %i.al, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %bb.o

_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit98:     ; preds = %bb.k
  %.0.copyload.i = load i64, ptr %i.d, align 8
  %i.ap = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i) ; 2 uses
  %i.aq = udiv i64 %i.ap, 1000
  %i.ar = urem i64 %i.aq, 1000000
  store i64 %i.ar, ptr %i.ad, align 8, !tbaa !44
  %i.as = udiv i64 %i.ap, 1000000000
  store i64 %i.as, ptr %.0.i, align 8, !tbaa !33
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !36
  %i.au = call i32 @BIO_write(ptr noundef %i.at, ptr noundef nonnull @_ZN12_GLOBAL__N_117kOpcodeTimeoutAckE, i32 noundef 1) ; 2 uses
  %i.av = icmp slt i32 %i.au, 1
  br i1 %i.av, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit98
  call void @BIO_set_retry_read(ptr noundef nonnull %0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit98, %bb.m
  %.268 = phi i32 [ %i.ak, %bb.m ], [ -1, %bb.n ], [ %i.au, %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %.thread155

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.aw = load ptr, ptr %i.k, align 8, !tbaa !36
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.015.i99 = phi ptr [ %i.e, %bb.p ], [ %i.bc, %bb.r ] ; 2 uses
  %.014.i100 = phi i64 [ 4, %bb.p ], [ %i.bd, %bb.r ] ; 4 uses
  %.not.i101 = icmp eq i64 %.014.i100, 0
  br i1 %.not.i101, label %_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit104, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = icmp ult i64 %.014.i100, 2147483648
  %i.ay = trunc nuw nsw i64 %.014.i100 to i32
  %spec.select.i102 = select i1 %i.ax, i32 %i.ay, i32 2147483647
  %i.az = call i32 @BIO_read(ptr noundef %i.aw, ptr noundef %.015.i99, i32 noundef %spec.select.i102) ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %i.bb = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.015.i99, i64 %i.bb
  %i.bd = sub i64 %.014.i100, %i.bb
  br i1 %i.ba, label %bb.q, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @BIO_copy_next_retry(ptr noundef nonnull %0)
  br label %bb.v

_ZN12_GLOBAL__N_17ReadAllEP6bio_stPhm.exit104:    ; preds = %bb.q
  %.0.copyload.i105 = load i32, ptr %i.e, align 4
  %i.be = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i105)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.be, ptr %i.b, align 4, !tbaa !45
  %i.bf = load ptr, ptr %i.r, align 8, !tbaa !18
end_hunk_0
