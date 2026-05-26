inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc7Message4OpenESt10shared_ptrINS_6BufferEES4_:bb.a
  store i32 0, ptr %i.i, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !21
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !24
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !13   ; 8 uses
  %.not.i.i8 = icmp eq ptr %i.x, null
  br i1 %.not.i.i8, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !21
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !24
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i9 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i11 = phi i32 [ %i.ab, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i.i.i.i11, 1
  br i1 %i.am, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12, !prof !26

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i10, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !12
  invoke void @_ZN5arrow3ipc7Message11MessageImpl4OpenEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %i.an)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12
  %i.ao = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  store ptr %i.ao, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.thread, label %bb.o, !prof !30

bb.o:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %i.aq = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %.not.i13 = icmp eq ptr %i.aq, null
  br i1 %.not.i13, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i21, label %bb.p, !prof !30

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !31, !range !42, !noundef !43
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i21, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  br label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i21

bb.r:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %bb.s

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit12
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #28
  br label %bb.s

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store ptr null, ptr %0, align 8, !tbaa !27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = ptrtoint ptr %i.a to i64
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !44
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit22

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i21: ; preds = %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit22: ; preds = %.thread, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i21
  ret void

bb.s:                                             ; preds = %bb.r, %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %i.av, %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit ], [ %i.au, %bb.r ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc7Message11MessageImpl4OpenEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %5 = alloca %"class.std::shared_ptr.98", align 16 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = select i1 %i.e, ptr %i.g, ptr null, !prof !30 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !53   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !54
  %.tr.i.i = trunc i64 %i.j to i32
  %i.l = shl i32 %.tr.i.i, 3
  store ptr %i.h, ptr %3, align 8, !tbaa !57, !noalias !54
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.j, ptr %i.m, align 8, !tbaa !61, !noalias !54
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 128, ptr %i.n, align 8, !tbaa !3, !noalias !54
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.l, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !54
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !62, !noalias !54
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !62, !noalias !54
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !63, !noalias !54
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !62, !noalias !54
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !54
  %i.p = icmp ugt i64 %i.j, 11
  br i1 %i.p, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !54 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.q, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = add i64 %i.j, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !54
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.r
  %i.u = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %3), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !54
  br i1 %i.u, label %_ZN5arrow6StatusD2Ev.exit18.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit18.thread:               ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.v = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !54
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !64, !noalias !54
  store ptr null, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
  %.pr = load ptr, ptr %4, align 8, !tbaa !27     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.y = icmp eq ptr %.pr, null
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit._crit_edge, label %bb.u

_ZN5arrow6StatusD2Ev.exit._crit_edge:             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge, %_ZN5arrow6StatusD2Ev.exit18.thread
  %i.z = phi ptr [ %.pre, %_ZN5arrow6StatusD2Ev.exit._crit_edge ], [ %i.x, %_ZN5arrow6StatusD2Ev.exit18.thread ] ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = sext i32 %i.aa to i64
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 4 uses
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !71 ; 2 uses
  %i.af = icmp ugt i16 %i.ae, 4
  br i1 %i.af, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !71 ; 2 uses
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit

_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ai
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !71 ; 3 uses
  %i.al = icmp slt i16 %i.ak, 3
  br i1 %i.al, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21

_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit.thread: ; preds = %bb.d, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit
  call void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(35) @.str.29)
  br label %bb.u

_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit
  %i.am = icmp samesign ugt i16 %i.ak, 4
  br i1 %i.am, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit24, label %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21.thread

_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit24: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i16 %i.ak, ptr %i.a, align 2, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !73
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(37) @.str.30, ptr noundef nonnull align 2 dereferenceable(2) %i.a), !noalias !73
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit24
  %i.an = load ptr, ptr %2, align 8, !tbaa !78, !noalias !73 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN5arrow6Status7InvalidIJRA37_KcsEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !25, !noalias !73
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #29
  br label %_ZN5arrow6Status7InvalidIJRA37_KcsEEES0_DpOT_.exit

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit24
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8, !tbaa !78, !noalias !73 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.f
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !25, !noalias !73
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.bm, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !73
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA37_KcsEEES0_DpOT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.u

_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21.thread: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21
  %i.ay = icmp ugt i16 %i.ae, 12
  br i1 %i.ay, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !71
  %.not.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit

_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bb = load i16, ptr %i.ad, align 2, !tbaa !71
  %i.bc = icmp ugt i16 %i.bb, 12
  br i1 %i.bc, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i25, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i25: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit
  %i.bd = load i16, ptr %i.az, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i26 = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i.i26, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27, label %bb.g

bb.g:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i25
  %i.be = zext i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  br label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27

_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27: ; preds = %bb.g, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i25, %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit
  %i.bj = phi ptr [ %i.bi, %bb.g ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i25 ], [ null, %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit ]
  invoke void @_ZN5arrow3ipc8internal19GetKeyValueMetadataEPKN22arrow_vendored_private11flatbuffers6VectorINS3_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEEjEEPSt10shared_ptrINS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef %i.bj, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit29 unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27
  %i.bk = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bl = icmp eq ptr %i.bk, null                 ; 2 uses
  br i1 %i.bl, label %_ZN5arrow6StatusD2Ev.exit33, label %.critedge

bb.h:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit27
  %i.bm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit29
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load <2 x ptr>, ptr %5, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.bp, ptr %i.bn, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit33
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.br, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !21
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #28, !inline_history !79
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #28, !inline_history !79
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i34 = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i.i.i34, label %bb.m, label %bb.l

end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc12WriteMessageERKNS_6BufferERKNS0_15IpcWriteOptionsEPNS_2io12OutputStreamEPi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit55, label %.critedge

_ZN5arrow6StatusD2Ev.exit55:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.y = sub nsw i32 %i.r, %i.e
  store i32 %i.y, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.z = load ptr, ptr %3, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit61, label %.critedge45

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %_ZN5arrow6StatusD2Ev.exit55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !46, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = select i1 %i.ag, ptr %i.ai, ptr null, !prof !30
  %sext = shl i64 %i.g, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = load ptr, ptr %3, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.aj, i64 noundef %i.ak)
  %i.ao = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  store ptr %i.ao, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit65, label %.critedge45

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %_ZN5arrow6StatusD2Ev.exit61
  %i.aq = icmp sgt i32 %i.s, 0
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit67, label %_ZN5arrow6StatusD2Ev.exit71

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ar = zext nneg i32 %i.s to i64
  %i.as = load ptr, ptr %3, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN5arrow3ipcL13kPaddingBytesE, i64 noundef %i.ar)
  %i.av = load ptr, ptr %8, align 8, !tbaa !27    ; 2 uses
  store ptr %i.av, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN5arrow6StatusD2Ev.exit71, label %.critedge45

_ZN5arrow6StatusD2Ev.exit71:                      ; preds = %_ZN5arrow6StatusD2Ev.exit67, %_ZN5arrow6StatusD2Ev.exit65
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !222
  br label %.critedge45

.critedge45:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit67, %_ZN5arrow6StatusD2Ev.exit61, %_ZN5arrow6StatusD2Ev.exit55, %_ZN5arrow6StatusD2Ev.exit71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge45
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5arrow3ipc7Message6VerifyEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  %i.a = load ptr, ptr %0, align 8, !tbaa !12, !noalias !225 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !noalias !231 ; 9 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !16, !alias.scope !231
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13, !noalias !231 ; 5 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !13, !alias.scope !231
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc7Message8metadataEv.exit.thread, label %bb.b

_ZNK5arrow3ipc7Message8metadataEv.exit.thread:    ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i8, ptr %i.f, align 1, !tbaa !46, !range !42, !noundef !43
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = select i1 %i.h, ptr %i.j, ptr null, !prof !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.b, ptr %4, align 8, !tbaa !16, !alias.scope !232
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !13, !alias.scope !232
  br label %_ZNK5arrow3ipc7Message8metadataEv.exit6

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !231
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5arrow3ipc7Message8metadataEv.exit, label %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24

_ZNK5arrow3ipc7Message8metadataEv.exit.thread24:  ; preds = %bb.b
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3, !noalias !231
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3, !noalias !231
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !46, !range !42, !noundef !43
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = select i1 %i.s, ptr %i.u, ptr null, !prof !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %i.b, ptr %4, align 8, !tbaa !16, !alias.scope !237
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.e, ptr %i.w, align 8, !tbaa !13, !alias.scope !237
  br label %bb.c

_ZNK5arrow3ipc7Message8metadataEv.exit:           ; preds = %bb.b
  %i.x = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !231 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %.pre14 = load ptr, ptr %0, align 8, !tbaa !12, !noalias !240 ; 2 uses
  %.pre15 = load ptr, ptr %.pre14, align 8, !tbaa !16, !noalias !242 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre14, i64 8
  %.pre16 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13, !noalias !242 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 9
  %i.z = load i8, ptr %i.y, align 1, !tbaa !46, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = select i1 %i.aa, ptr %i.ac, ptr null, !prof !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  store ptr %.pre15, ptr %4, align 8, !tbaa !16, !alias.scope !242
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %.pre16, ptr %i.ae, align 8, !tbaa !13, !alias.scope !242
  %.not.i.i.i.i.i4 = icmp eq ptr %.pre16, null
  br i1 %.not.i.i.i.i.i4, label %_ZNK5arrow3ipc7Message8metadataEv.exit6, label %bb.c

bb.c:                                             ; preds = %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24, %_ZNK5arrow3ipc7Message8metadataEv.exit
  %i.af = phi ptr [ %i.w, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24 ], [ %i.ae, %_ZNK5arrow3ipc7Message8metadataEv.exit ] ; 2 uses
  %i.ag = phi ptr [ %i.v, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24 ], [ %i.ad, %_ZNK5arrow3ipc7Message8metadataEv.exit ] ; 2 uses
  %i.ah = phi ptr [ %i.u, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24 ], [ %i.ac, %_ZNK5arrow3ipc7Message8metadataEv.exit ] ; 2 uses
  %i.ai = phi ptr [ %i.b, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24 ], [ %.pre15, %_ZNK5arrow3ipc7Message8metadataEv.exit ]
  %i.aj = phi ptr [ %i.e, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread24 ], [ %.pre16, %_ZNK5arrow3ipc7Message8metadataEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !242
  %.not.i.i.i.i.i.i5 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3, !noalias !242
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3, !noalias !242
  br label %_ZNK5arrow3ipc7Message8metadataEv.exit6

bb.e:                                             ; preds = %bb.c
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4, !noalias !242 ; 0 uses
  %.pre17 = load ptr, ptr %4, align 8, !tbaa !16
  br label %_ZNK5arrow3ipc7Message8metadataEv.exit6

_ZNK5arrow3ipc7Message8metadataEv.exit6:          ; preds = %_ZNK5arrow3ipc7Message8metadataEv.exit.thread, %bb.e, %bb.d, %_ZNK5arrow3ipc7Message8metadataEv.exit
  %i.ap = phi ptr [ %i.af, %bb.e ], [ %i.af, %bb.d ], [ %i.ae, %_ZNK5arrow3ipc7Message8metadataEv.exit ], [ %i.l, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread ]
  %i.aq = phi ptr [ %i.ag, %bb.e ], [ %i.ag, %bb.d ], [ %i.ad, %_ZNK5arrow3ipc7Message8metadataEv.exit ], [ %i.k, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread ]
  %i.ar = phi ptr [ %i.ah, %bb.e ], [ %i.ah, %bb.d ], [ %i.ac, %_ZNK5arrow3ipc7Message8metadataEv.exit ], [ %i.j, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread ] ; 2 uses
  %i.as = phi ptr [ %.pre17, %bb.e ], [ %i.ai, %bb.d ], [ %.pre15, %_ZNK5arrow3ipc7Message8metadataEv.exit ], [ %i.b, %_ZNK5arrow3ipc7Message8metadataEv.exit.thread ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !245
  %.tr.i.i = trunc i64 %i.au to i32
  %i.av = shl i32 %.tr.i.i, 3
  store ptr %i.aq, ptr %1, align 8, !tbaa !57, !noalias !245
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !61, !noalias !245
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 128, ptr %i.ax, align 8, !tbaa !3, !noalias !245
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.av, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !245
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !62, !noalias !245
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !62, !noalias !245
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !63, !noalias !245
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !62, !noalias !245
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false), !noalias !245
  %i.az = icmp ugt i64 %i.au, 11
  br i1 %i.az, label %bb.f, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.f:                                             ; preds = %_ZNK5arrow3ipc7Message8metadataEv.exit6
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !3, !noalias !245 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.ba, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.g, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = add i64 %i.au, -1
  %.not.i.i.i.i.i7 = icmp ult i64 %i.bc, %i.bb
  br i1 %.not.i.i.i.i.i7, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.g, %bb.f, %_ZNK5arrow3ipc7Message8metadataEv.exit6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !245
  br label %bb.h

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bb
  %i.be = invoke noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !245
  br i1 %i.be, label %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit.thread, label %bb.h

bb.h:                                             ; preds = %.noexc, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
          to label %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit unwind label %bb.w

_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit.thread: ; preds = %.noexc
  store ptr null, ptr %2, align 8, !tbaa !27, !alias.scope !248
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit: ; preds = %bb.h
  %.pr = load ptr, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.bf = icmp eq ptr %.pr, null
  br i1 %i.bf, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !251

bb.i:                                             ; preds = %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31, !range !42, !noundef !43
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit.thread, %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit, %bb.i, %bb.j
  %i.bj = phi i1 [ true, %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit.thread ], [ true, %_ZN5arrow3ipc8internalL13VerifyMessageEPKhlPPKN3org6apache5arrow7flatbuf7MessageE.exit ], [ false, %bb.i ], [ false, %bb.j ]
  %i.bk = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bl, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !21
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28, !inline_history !24
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.n ], [ %i.by, %bb.o ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !13  ; 8 uses
  %.not.i.i9 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i9, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.cb, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !21
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !inline_history !24
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13

bb.s:                                             ; preds = %bb.q
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i10 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i10, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

bb.u:                                             ; preds = %bb.s
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i12 = phi i32 [ %i.ce, %bb.t ], [ %i.co, %bb.u ]
  %i.cp = icmp eq i32 %.0.i.i.i.i12, 1
  br i1 %i.cp, label %bb.v, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13, !prof !26

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit13: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i11, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i1 %i.bj

bb.w:                                             ; preds = %bb.h, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.cq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow3ipc17FormatMessageTypeB5cxx11ENS0_11MessageTypeE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !252
  switch i32 %1, label %._crit_edge.i.i38 [
    i32 1, label %._crit_edge.i.i
    i32 3, label %._crit_edge.i.i6
    i32 2, label %._crit_edge.i.i14
    i32 4, label %._crit_edge.i.i22
    i32 5, label %._crit_edge.i.i30
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.2, i64 6, i1 false)
  br label %bb.b

._crit_edge.i.i6:                                 ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.3, i64 12, i1 false)
  br label %bb.b

._crit_edge.i.i14:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.4, i64 10, i1 false)
  br label %bb.b

._crit_edge.i.i22:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.a, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  br label %bb.b

._crit_edge.i.i30:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.6, i64 13, i1 false)
  br label %bb.b

._crit_edge.i.i38:                                ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i38, %._crit_edge.i.i30, %._crit_edge.i.i22, %._crit_edge.i.i14, %._crit_edge.i.i6, %._crit_edge.i.i
  %.sink = phi i64 [ 7, %._crit_edge.i.i38 ], [ 13, %._crit_edge.i.i30 ], [ 6, %._crit_edge.i.i22 ], [ 10, %._crit_edge.i.i14 ], [ 12, %._crit_edge.i.i6 ], [ 6, %._crit_edge.i.i ]
  %.sink51 = phi i64 [ 23, %._crit_edge.i.i38 ], [ 29, %._crit_edge.i.i30 ], [ 22, %._crit_edge.i.i22 ], [ 26, %._crit_edge.i.i14 ], [ 28, %._crit_edge.i.i6 ], [ 22, %._crit_edge.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.b, align 8, !tbaa !253
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink51
  store i8 0, ptr %i.c, align 1, !tbaa !25
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE:bb.a
.body97:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.az
  %eh.lpad-body98 = phi { ptr, i32 } [ %i.eq, %bb.az ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.fd

bb.ba:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  %i.er = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.es = load i64, ptr %i.er, align 8, !tbaa !147
  %i.et = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !157
  %i.ev = sub nsw i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.g, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28, !noalias !304
  invoke void @_ZN5arrow8internal12JoinToStringIJRA17_KclRA24_S2_RlRA20_S2_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 1 dereferenceable(17) @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(24) @.str.20, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc106 unwind label %bb.bf

.noexc106:                                        ; preds = %bb.ba
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %30, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %.noexc106
  %i.ew = load ptr, ptr %14, align 8, !tbaa !78, !noalias !304 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104: ; preds = %bb.bb
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !25, !noalias !304
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i105

bb.bc:                                            ; preds = %.noexc106
  %i.fb = landingpad { ptr, i32 }
          cleanup
  %i.fc = load ptr, ptr %14, align 8, !tbaa !78, !noalias !304 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i101: ; preds = %bb.bc
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !25, !noalias !304
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i102: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !304
  br label %.body107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i105: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28, !noalias !304
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %30) #28
  %i.fh = load ptr, ptr %30, align 8, !tbaa !27   ; 2 uses
  %.not.i109 = icmp eq ptr %i.fh, null
  br i1 %.not.i109, label %_ZN5arrow6StatusD2Ev.exit110, label %bb.bd, !prof !30

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i105
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !31, !range !42, !noundef !43
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %_ZN5arrow6StatusD2Ev.exit110, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #28
  br label %_ZN5arrow6StatusD2Ev.exit110

_ZN5arrow6StatusD2Ev.exit110:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i105, %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.ew

bb.bf:                                            ; preds = %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body107

.body107:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i102, %bb.bf
  %eh.lpad-body108 = phi { ptr, i32 } [ %i.fl, %bb.bf ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %bb.fd

bb.bg:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !309
  %.not.i.i111.not = icmp eq ptr %i.fn, null
  br i1 %.not.i.i111.not, label %bb.dd, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !147
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !157
  %i.fs = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.ft = sub nsw i64 %i.fp, %i.fr
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.47") align 8 %32, i64 noundef %i.ft, ptr noundef %i.fs)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.fu = load ptr, ptr %32, align 8, !tbaa !27
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.bl, label %.critedge67, !prof !30

.critedge67:                                      ; preds = %bb.bj
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %32) #28
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.ee

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.fx = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !317, !noalias !318
  store i64 %i.fy, ptr %33, align 8, !tbaa !317, !alias.scope !318
  store ptr null, ptr %i.fx, align 8, !tbaa !317, !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.bm unwind label %bb.da

bb.bm:                                            ; preds = %bb.bl
  %i.fz = load <2 x ptr>, ptr %13, align 16, !tbaa !11
  store ptr null, ptr %13, align 16, !tbaa !317
  store <2 x ptr> %i.fz, ptr %31, align 16, !tbaa !11
  %.pre = load ptr, ptr %33, align 8, !tbaa !317  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %.not.i114 = icmp eq ptr %.pre, null
  br i1 %.not.i114, label %bb.bn, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.bm
  %i.ga = load ptr, ptr %.pre, align 8, !tbaa !22
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pre) #28, !inline_history !319
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  %i.gd = load i64, ptr %i.c, align 8, !tbaa !63
  %i.ge = load i32, ptr %i.d, align 4, !tbaa !3
  %i.gf = load ptr, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !147
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !157
  %i.gk = sub nsw i64 %i.gh, %i.gj
  %.val = load ptr, ptr %24, align 8, !tbaa !16   ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !320)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !320
  %i.gl = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !46, !range !42, !noalias !320, !noundef !43
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !320
  %i.gq = select i1 %i.gn, ptr %i.gp, ptr null, !prof !30
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !53, !noalias !320 ; 2 uses
  %i.gu = add nsw i64 %i.gt, -8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !323
  %.tr.i.i.i = trunc i64 %i.gu to i32
  %i.gv = shl i32 %.tr.i.i.i, 3
  store ptr %i.gr, ptr %7, align 8, !tbaa !57, !noalias !323
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.gu, ptr %i.gw, align 8, !tbaa !61, !noalias !323
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 128, ptr %i.gx, align 8, !tbaa !3, !noalias !323
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.gv, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 4, !tbaa !3, !noalias !323
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !323
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 1, !tbaa !62, !noalias !323
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !noalias !323
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !323
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i8 0, i64 24, i1 false), !noalias !323
  %i.gz = icmp ugt i64 %i.gu, 11
  br i1 %i.gz, label %bb.bo, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ha = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !326 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.ha, 0
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bp, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.hb = zext nneg i32 %i.ha to i64              ; 2 uses
  %i.hc = add i64 %i.gt, -9
  %.not.i.i.i.i.i.i = icmp ult i64 %i.hc, %i.hb
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i: ; preds = %bb.bp, %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !323
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i: ; preds = %bb.bp
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hb
  %i.he = invoke noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, ptr noundef nonnull align 8 dereferenceable(72) %7)
          to label %.noexc118 unwind label %bb.db

.noexc118:                                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !323
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %.noexc118
  %i.hf = load i32, ptr %i.gr, align 4, !tbaa !3, !noalias !326
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hg
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  br label %_ZN5arrow6StatusD2Ev.exit59.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc118, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
          to label %.noexc119 unwind label %bb.db

.noexc119:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !27, !noalias !320 ; 3 uses
  store ptr %.pr.i, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  %i.hi = icmp eq ptr %.pr.i, null
  br i1 %i.hi, label %_ZN5arrow6StatusD2Ev.exit59.i, label %_ZN5arrow6StatusD2Ev.exit124.thread

_ZN5arrow6StatusD2Ev.exit124.thread:              ; preds = %.noexc119
  store ptr %.pr.i, ptr %34, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cx

_ZN5arrow6StatusD2Ev.exit59.i:                    ; preds = %.noexc119, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %.05.i = phi ptr [ %i.hh, %_ZN5arrow6StatusD2Ev.exit.thread.i ], [ null, %.noexc119 ] ; 4 uses
  %i.hj = load i32, ptr %.05.i, align 4, !tbaa !3
  %i.hk = sext i32 %i.hj to i64
  %i.hl = sub nsw i64 0, %i.hk
  %i.hm = getelementptr inbounds i8, ptr %.05.i, i64 %i.hl ; 3 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !71 ; 2 uses
  %i.ho = icmp ugt i16 %i.hn, 6
  br i1 %i.ho, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit59.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 6
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i115 = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i.i.i115, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %.05.i, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !25
  %i.hu = icmp eq i8 %i.ht, 3
  %i.hv = icmp ugt i16 %i.hn, 8
  %or.cond.i.i = and i1 %i.hv, %i.hu
  br i1 %or.cond.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq i16 %i.hx, 0
  br i1 %.not.i.i.i.i.i116, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i, i64 %i.hy ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !3
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !320
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ie, i8 0, i64 16, i1 false), !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.id, align 8, !tbaa !22, !noalias !320
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.if, align 8, !tbaa !327, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %9, align 8, !tbaa !22, !noalias !320
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8))
          to label %bb.bq unwind label %bb.br

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit59.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.34)
          to label %_ZN5arrow6StatusD2Ev.exit124 unwind label %bb.db

bb.bq:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 328), ptr %i.id, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), ptr %9, align 8, !tbaa !22, !noalias !320
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.ig, align 8, !tbaa !22, !noalias !320
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.gk, ptr %i.ih, align 8, !tbaa !335, !noalias !320
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ii, i8 0, i64 33, i1 false), !noalias !320
  invoke void @_ZN5arrow2io9IOContextC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ij)
          to label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = load ptr, ptr %i.ii, align 8, !tbaa !358, !noalias !320 ; 3 uses
  %.not.i.i.i.i60.i = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.in = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !359, !noalias !320
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = ptrtoint ptr %i.im to i64
  %i.ir = sub i64 %i.ip, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef %i.ir) #29
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bt, %bb.bs
  call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8)) #28
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, %bb.br
  %.pn.i.i = phi { ptr, i32 } [ %i.il, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i ], [ %i.ik, %bb.br ]
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.id) #28
  br label %.body121

_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store ptr %i.ic, ptr %i.a, align 8, !tbaa !11, !noalias !360
  store ptr %9, ptr %i.b, align 8, !tbaa !363, !noalias !360
  %i.is = load ptr, ptr %i.fm, align 8, !tbaa !309, !noalias !360
  %.not.i.i.i117 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i117, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc.i unwind label %bb.bx

.noexc.i:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !365, !noalias !360
  invoke void %i.iu(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5arrow6StatusD2Ev.exit63.i unwind label %bb.bx, !inline_history !367

_ZN5arrow6StatusD2Ev.exit63.i:                    ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %i.iv = load ptr, ptr %10, align 8, !tbaa !27, !noalias !320 ; 2 uses
  store ptr %i.iv, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %_ZN5arrow6StatusD2Ev.exit67.i, label %.critedge51.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  br label %bb.cw

_ZN5arrow6StatusD2Ev.exit67.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit63.i
  %i.iy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow3ipc8internal26IoRecordedRandomAccessFile13GetReadRangesEv(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !368 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !368 ; 2 uses
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %.critedge55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by
  %i.jd = sext i32 %i.ge to i64
  %i.je = add nsw i64 %i.gd, %i.jd
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ca:                                            ; preds = %bb.cn, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %i.iz, %.lr.ph.i ], [ %i.lh, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !320
  %i.jg = load i64, ptr %.sroa.01.06.i, align 8, !tbaa !369 ; 2 uses
  %i.jh = add nsw i64 %i.je, %i.jg
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl15ConsumeMetadataEv:bb.a
  %i.l = tail call noundef ptr @_ZN5arrow19default_memory_poolEv(), !noalias !654
  call void @_ZNK5arrow6Buffer9CopySliceEllPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 noundef 0, i64 noundef %i.k, ptr noundef %i.l), !noalias !654
  %i.m = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654
  %i.n = icmp eq ptr %i.m, null                   ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.c, !prof !30

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %5, align 8, !tbaa !27, !alias.scope !654
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.d

common.resume:                                    ; preds = %bb.ae, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.di, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.ea, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !654
  br label %common.resume

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !11, !noalias !657
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false), !noalias !654
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !13, !noalias !654 ; 8 uses
  store <2 x ptr> %i.r, ptr %i.a, align 8, !tbaa !11, !noalias !654
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6StatusC2ERKS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !654 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 8, !tbaa !19, !noalias !654
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !21, !noalias !654
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !22, !noalias !654
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !654
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654, !inline_history !662
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !22, !noalias !654
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !654
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654, !inline_history !662
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !654
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3, !noalias !654
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4, !noalias !654
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.i ], [ %i.ag, %bb.j ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.k, label %_ZN5arrow6StatusC2ERKS0_.exit.i, !prof !26

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #28, !noalias !654
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c
  %i.ai = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.l, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !30

bb.l:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13, !noalias !654 ; 8 uses
  %.not.i.i.i.i.i12.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i12.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.am, align 8, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !21
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !663
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !663
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !654
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ba, label %bb.r, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !26

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %bb.l
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !27, !noalias !654 ; 2 uses
  %.not.i.i13.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i13.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.bb = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.ai, %_ZN5arrow6StatusC2ERKS0_.exit.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !31, !range !42, !noundef !43
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i: ; preds = %bb.s, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !654
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit23.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit23.thread:               ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.t

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit.i
  %.pr = load ptr, ptr %5, align 8, !tbaa !27     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.bf = icmp eq ptr %.pr, null
  br i1 %i.bf, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit23.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !16  ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !664
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !46, !range !42, !noalias !664, !noundef !43
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !664 ; 4 uses
  %i.bm = select i1 %i.bj, ptr %i.bl, ptr null, !prof !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !53, !noalias !664 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !667
  %.tr.i.i.i = trunc i64 %i.bo to i32
  %i.bp = shl i32 %.tr.i.i.i, 3
  store ptr %i.bm, ptr %2, align 8, !tbaa !57, !noalias !667
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !61, !noalias !667
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 128, ptr %i.br, align 8, !tbaa !3, !noalias !667
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.bp, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 4, !tbaa !3, !noalias !667
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !667
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 1, !tbaa !62, !noalias !667
  %.sroa.75.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i.i, align 8, !tbaa !63, !noalias !667
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !tbaa !62, !noalias !667
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false), !noalias !667
  %i.bt = icmp ugt i64 %i.bo, 11
  br i1 %i.bt, label %bb.u, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !667 ; 2 uses
  %or.cond.i.i.i.i.i.i = icmp sgt i32 %i.bu, 0
  br i1 %or.cond.i.i.i.i.i.i, label %bb.v, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i

bb.v:                                             ; preds = %bb.u
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = add i64 %i.bo, -1
  %.not.i.i.i.i.i.i24 = icmp ult i64 %i.bw, %i.bv
  br i1 %.not.i.i.i.i.i.i24, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i: ; preds = %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !667
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i: ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bv
  %i.by = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.bx, ptr noundef nonnull align 8 dereferenceable(72) %2), !noalias !667
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !667
  br i1 %i.by, label %_ZN5arrow6StatusD2Ev.exit.thread.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.thread.i:               ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  %i.bz = load i32, ptr %i.bl, align 4, !tbaa !3, !noalias !667
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca
  store ptr null, ptr %6, align 8, !tbaa !27, !alias.scope !664
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  br label %_ZN5arrow6StatusD2Ev.exit11.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31), !noalias !664
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !27, !noalias !664 ; 3 uses
  store ptr %.pr.i, ptr %6, align 8, !tbaa !27, !alias.scope !664
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  %i.cc = icmp eq ptr %.pr.i, null
  br i1 %i.cc, label %_ZN5arrow6StatusD2Ev.exit11.i, label %_ZN5arrow6StatusD2Ev.exit26.thread43

_ZN5arrow6StatusD2Ev.exit26.thread43:             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %.pr.i, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge

_ZN5arrow6StatusD2Ev.exit11.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %.013.i = phi ptr [ %i.cb, %_ZN5arrow6StatusD2Ev.exit.thread.i ], [ null, %_ZN5arrow6StatusD2Ev.exit.i ] ; 3 uses
  %i.cd = load i32, ptr %.013.i, align 4, !tbaa !3, !noalias !664
  %i.ce = sext i32 %i.cd to i64
  %i.cf = sub nsw i64 0, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.013.i, i64 %i.cf ; 2 uses
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !71, !noalias !664
  %i.ci = icmp ugt i16 %i.ch, 10
  br i1 %i.ci, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit11.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 10
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !71, !noalias !664 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread, label %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.cl = zext i16 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !63, !noalias !664 ; 3 uses
  %i.co = icmp slt i64 %i.cn, 0
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit26, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZN5arrow6StatusD2Ev.exit26.thread:               ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit11.i
  %.0 = phi i64 [ %i.cn, %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit11.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(41) @.str.38)
  %.pr40 = load ptr, ptr %6, align 8, !tbaa !27   ; 2 uses
  store ptr %.pr40, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cp = icmp eq ptr %.pr40, null
  br i1 %i.cp, label %_ZN5arrow6StatusD2Ev.exit32, label %.critedge

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit26.thread
  %.142 = phi i64 [ %.0, %_ZN5arrow6StatusD2Ev.exit26.thread ], [ %i.cn, %_ZN5arrow6StatusD2Ev.exit26 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 3, ptr %i.cq, align 8, !tbaa !262
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !512, !range !42, !noundef !43
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = select i1 %i.ct, i64 0, i64 %.142
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cw = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %i.da = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.dc = load i64, ptr %i.cv, align 8, !tbaa !147
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.de = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !673 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 1, ptr %i.df, align 8, !tbaa !19, !noalias !670
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 1, ptr %i.dg, align 4, !tbaa !21, !noalias !670
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.de, align 8, !tbaa !22, !noalias !670
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.dh, ptr noundef null, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !670

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 96) #29, !noalias !670
  br label %common.resume

_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.de, ptr %i.dj, align 8, !tbaa !13, !alias.scope !670
  store ptr %i.dh, ptr %8, align 8, !tbaa !317, !alias.scope !670
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dl, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !21
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #28, !inline_history !24
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i37 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.do, %bb.ab ], [ %i.dy, %bb.ac ]
  %i.dz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dz, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

bb.ae:                                            ; preds = %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit36
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !676
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.af, %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit26.thread43, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result", align 8     ; 12 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %5 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %7 = alloca %"class.std::unique_ptr.7", align 8 ; 4 uses
end_hunk_3
