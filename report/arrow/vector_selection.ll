inline.NumInlined: 3034
inline.NumDeleted: 1650
begin_hunk_0_@_ZN5arrow14NumericBuilderINS_10UInt64TypeEED0Ev:bb.a

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !313
  br label %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i

_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i:     ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !86   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !89
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !314
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !90
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !314
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !313
  br label %_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit

_ZN5arrow14NumericBuilderINS_10UInt64TypeEED2Ev.exit: ; preds = %_ZN5arrow18TypedBufferBuilderImvED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  tail call void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(216) %0) #24, !inline_history !313
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK5arrow12ArrayBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !593
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE6ResizeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !tbaa !357, !noalias !642
  %i.b = icmp slt i64 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(46) @.str.25, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(2) @.str.26)
  br label %_ZN5arrow6StatusD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !593, !noalias !642
  %i.e = icmp slt i64 %2, %i.d
  br i1 %i.e, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit15.thread, !prof !37

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status7InvalidIJRA36_KcRlRA19_S2_S5_RA2_S2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 1 dereferenceable(36) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(19) @.str.28, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(2) @.str.26)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit15.thread:               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.d
  %.pr = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit17, label %bb.f

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit15.thread, %_ZN5arrow6StatusD2Ev.exit
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %2, i64 32) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.h = shl i64 %.sroa.speculated, 3
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 noundef %i.h, i1 noundef zeroext true)
  %i.i = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17
  call void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit17, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.a, align 8, !tbaa !645
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !89
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !646
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24, !inline_history !646
  br label %_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #24
  br label %_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit

_ZN5arrow18TypedBufferBuilderImvE5ResetEv.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE10AppendNullEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !306, !noalias !647 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90, !noalias !647
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !647
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !647, !inline_history !310
  %3 = add nsw i64 %i.f, 1                        ; 2 uses
  %.not.i = icmp sgt i64 %3, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit9.thread

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %3, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !90, !noalias !647
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !647
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !310
  %.pr = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !301
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !358
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  store i64 0, ptr %i.p, align 1
  %i.q = load i64, ptr %i.n, align 8, !tbaa !358
  %i.r = add nsw i64 %i.q, 8
  store i64 %i.r, ptr %i.n, align 8, !tbaa !358
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !301
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !356  ; 2 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40
  %i.z = srem i64 %i.v, 8
  %i.aa = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.y, %i.ac
  store i8 %i.ad, ptr %i.x, align 1, !tbaa !40
  %i.ae = load <2 x i64>, ptr %i.u, align 8, !tbaa !357
  %i.af = add nsw <2 x i64> %i.ae, splat (i64 1)
  store <2 x i64> %i.af, ptr %i.u, align 8, !tbaa !357
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !357
  %i.ai = add nsw <2 x i64> %i.ah, splat (i64 1)
  store <2 x i64> %i.ai, ptr %i.ag, align 8, !tbaa !357
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !650
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE11AppendNullsEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !306, !noalias !653 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90, !noalias !653
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !653
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !653, !inline_history !310
  %i.g = add nsw i64 %i.f, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !90, !noalias !653
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !653
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !310
  %.pr = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit12.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !358  ; 2 uses
  %i.q = shl i64 %2, 3                            ; 2 uses
  %i.r = add nsw i64 %i.p, %i.q
  store i64 %i.r, ptr %i.o, align 8, !tbaa !358
  %.not5.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not5.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.s = lshr i64 %i.p, 3
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %i.s
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.q, i1 false), !tbaa !357
  br label %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit

_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.b
  call void @_ZN5arrow12ArrayBuilder13UnsafeSetNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !656
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE16AppendEmptyValueEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !306, !noalias !659 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90, !noalias !659
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !659
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !659, !inline_history !310
  %3 = add nsw i64 %i.f, 1                        ; 2 uses
  %.not.i = icmp sgt i64 %3, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit9.thread

_ZN5arrow6StatusD2Ev.exit9.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.g = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %3, i64 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !90, !noalias !659
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !noalias !659
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !310
  %.pr = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.k = icmp eq ptr %.pr, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit9.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !301
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !358
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  store i64 0, ptr %i.p, align 1
  %i.q = load i64, ptr %i.n, align 8, !tbaa !358
  %i.r = add nsw i64 %i.q, 8
  store i64 %i.r, ptr %i.n, align 8, !tbaa !358
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !301
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !356  ; 2 uses
  %i.w = sdiv i64 %i.v, 8
  %i.x = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !40
  %i.z = srem i64 %i.v, 8
  %i.aa = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !40
  %i.ac = or i8 %i.ab, %i.y
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !40
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !356
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.u, align 8, !tbaa !356
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !357
  %i.ah = add nsw i64 %i.ag, 1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !357
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !662
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE17AppendEmptyValuesEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !306, !noalias !665 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !90, !noalias !665
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !665
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !665, !inline_history !310
  %i.g = add nsw i64 %i.f, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit12.thread

_ZN5arrow6StatusD2Ev.exit12.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !90, !noalias !665
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !665
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !310
  %.pr = load ptr, ptr %3, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit12.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !301
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !358  ; 2 uses
  %i.q = shl i64 %2, 3                            ; 2 uses
  %i.r = add nsw i64 %i.p, %i.q
  store i64 %i.r, ptr %i.o, align 8, !tbaa !358
  %.not5.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not5.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.s = lshr i64 %i.p, 3
  %i.t = getelementptr [8 x i8], ptr %i.n, i64 %i.s
  call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.q, i1 false), !tbaa !357
  br label %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit

_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !668
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow18TypedBufferBuilderImvE12UnsafeAppendElm.exit
  ret void
}

declare void @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(41), i64 noundef) unnamed_addr #5

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !344
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.b
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %3
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !344
  %i.i = add nsw i64 %i.b, %3
  tail call void @_ZN5arrow14NumericBuilderINS_10UInt64TypeEE12AppendValuesEPKmlPKhl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.g, i64 noundef %4, ptr noundef %i.h, i64 noundef %i.i)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow14NumericBuilderINS_10UInt64TypeEE4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.54") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !72
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

declare void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA46_KcRlRA2_S2_EEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !671
  call void @_ZN5arrow8internal12JoinToStringIJRA46_KcRlRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(46) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3), !noalias !671
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !38, !noalias !671 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40, !noalias !671
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #26
  br label %_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 8, !tbaa !38, !noalias !671 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40, !noalias !671
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !671
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA46_KcRlRA2_S2_EEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24, !noalias !671
end_hunk_0
