inline.NumInlined: 872
inline.NumDeleted: 339
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5arrow8internal20RunCompressorBuilder11AppendNullsEl:bb.a
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.c, !prof !66

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i64 %i.c, %2
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.h = load ptr, ptr %1, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 noundef %i.c)
  %i.k = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.l

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !92
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !54, !noalias !93
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !noalias !93
  call void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.n, ptr noundef nonnull align 8 dereferenceable(41) %i.o, i64 noundef 1), !inline_history !96
  %i.s = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !58   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.w, ptr %i.x, align 8, !tbaa !82
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(144) %i.u), !inline_history !83
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !84
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !85
  store ptr null, ptr %i.e, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 8 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !56
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 4294967297
  %i.am = trunc i64 %i.ak to i32                  ; 2 uses
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.aj, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !63
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !81
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18, !inline_history !81
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.h:                                             ; preds = %bb.f
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = add nsw i32 %i.am, -1
  store i32 %i.av, ptr %i.aj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aw = atomicrmw volatile add ptr %i.aj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.am, %bb.i ], [ %i.aw, %bb.j ]
  %i.ax = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ax, label %bb.k, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !66

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %bb.e, %bb.b, %bb.d
  %.sink = phi i64 [ %i.g, %bb.d ], [ %2, %bb.b ], [ %2, %bb.e ], [ %2, %bb.g ], [ %2, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %2, %bb.k ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !74
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit23, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder17AppendEmptyValuesEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.sink.split, label %_ZN5arrow6StatusD2Ev.exit, !prof !66

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = load ptr, ptr %1, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(184) %1)
  %i.e = load ptr, ptr %3, align 8, !tbaa !86     ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit24, label %bb.c

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.g = load ptr, ptr %1, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(184) %1, i64 noundef %2)
  %i.j = load ptr, ptr %4, align 8, !tbaa !86     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit30, label %bb.c

_ZN5arrow6StatusD2Ev.exit30:                      ; preds = %_ZN5arrow6StatusD2Ev.exit24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.m)
  %i.q = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit30
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !58   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load i64, ptr %i.t, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.u, ptr %i.v, align 8, !tbaa !82
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(144) %i.s), !inline_history !83
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !84
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !85
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit30, %_ZN5arrow6StatusD2Ev.exit24, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal20RunCompressorBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.13", align 8 ; 6 uses
  %5 = alloca %"class.arrow::EqualOptions", align 8 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %.sink.split, label %bb.b, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !74   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.g, !prof !66

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !107, !noundef !108
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 0 uses
  call void @_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %.not.i = icmp ne ptr %i.l, null                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %9 = load i8, ptr %8, align 8, !range !107
  %10 = trunc nuw i8 %9 to i1
  %or.cond = select i1 %.not.i, i1 true, i1 %10
  br i1 %or.cond, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.i, label %.critedge2

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 16777472, ptr %i.m, align 8, !alias.scope !109
  store double 1.000000e-05, ptr %5, align 8, !tbaa !112, !alias.scope !109
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !116, !alias.scope !109
  %i.o = call noundef zeroext i1 @_ZNK5arrow6Scalar6EqualsERKS0_RKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(41) %i.l, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.pre40 = load i64, ptr %i.b, align 8, !tbaa !74 ; 2 uses
  br i1 %i.o, label %bb.j, label %_ZN5arrow6StatusD2Ev.exit

.critedge:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.i
  %i.p = phi i64 [ %i.c, %.critedge ], [ %.pre40, %bb.i ]
  %i.q = add nsw i64 %i.p, %3
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.critedge2:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.i, %.critedge2
  %i.r = phi i64 [ %i.c, %.critedge2 ], [ %.pre40, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.s = load ptr, ptr %1, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 noundef %i.r)
  %i.v = load ptr, ptr %6, align 8, !tbaa !86     ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.z

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58   ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !117
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(41) %i.x, i64 noundef 1), !inline_history !96
  br label %_ZN5arrow6StatusD2Ev.exit34

bb.m:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(144) %i.z)
  br label %_ZN5arrow6StatusD2Ev.exit34

_ZN5arrow6StatusD2Ev.exit34:                      ; preds = %bb.m, %bb.l
  %i.af = load ptr, ptr %7, align 8, !tbaa !86    ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.z

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit34
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !82
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(144) %i.ai), !inline_history !83
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !84
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 96
  %i.at = load i64, ptr %i.as, align 8, !tbaa !85
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.at, ptr %i.au, align 8, !tbaa !85
  %i.av = load i8, ptr %8, align 8, !tbaa !97, !range !107, !noundef !108
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !120, !noalias !121 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 8, !noalias !121
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %.06.i.i.i.i.i = phi i32 [ %i.bc, %bb.p ], [ %i.bg, %bb.r ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = add nsw i32 %.06.i.i.i.i.i, 1
  %i.be = cmpxchg weak ptr %i.bb, i32 %.06.i.i.i.i.i, i32 %i.bd acq_rel monotonic, align 8, !noalias !121 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  br i1 %i.bf, label %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit, label %bb.q, !llvm.loop !124

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.q, %bb.o
  %i.bh = call ptr @__cxa_allocate_exception(i64 8) #18, !noalias !121 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.bh, align 8, !tbaa !54, !noalias !121
  call void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #20, !noalias !121
  unreachable

_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit: ; preds = %bb.r
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !125, !noalias !121
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit
  %.sroa.0.0 = phi ptr [ %i.bi, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit ], [ null, %bb.n ]
  %.sroa.6.0 = phi ptr [ %i.az, %_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv.exit ], [ null, %bb.n ]
  store ptr %.sroa.0.0, ptr %i.k, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !56 ; 8 uses
  store ptr %.sroa.6.0, ptr %i.bj, align 8, !tbaa !56
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bl, align 8, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !63
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18, !inline_history !126
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18, !inline_history !126
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.w ], [ %i.by, %bb.x ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.y, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.y, %bb.j, %bb.f
  %.sink = phi i64 [ %i.q, %bb.j ], [ %3, %bb.f ], [ %3, %bb.y ], [ %3, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i ], [ %3, %bb.u ], [ %3, %bb.s ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !74
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit34, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNKSt23enable_shared_from_thisIN5arrow6ScalarEE16shared_from_thisEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !56
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i = icmp eq i32 %.06.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i, i32 %i.g acq_rel monotonic, align 8 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNSt10shared_ptrIKN5arrow6ScalarEEC2IS1_vEERKSt8weak_ptrIT_E.exit, label %bb.c, !llvm.loop !124

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i: ; preds = %bb.c, %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.k, align 8, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #20
  unreachable

_ZNSt10shared_ptrIKN5arrow6ScalarEEC2IS1_vEERKSt8weak_ptrIT_E.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !125
  store ptr %i.l, ptr %0, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt10shared_ptrIKN5arrow6ScalarEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !56   ; 8 uses
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !57
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !63
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !127
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18, !inline_history !127
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #18
  br label %_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit

_ZNSt12__shared_ptrIKN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EEaSEOS5_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret ptr %0
end_hunk_0
