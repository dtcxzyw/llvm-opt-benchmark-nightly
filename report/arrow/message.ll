inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc7Message4OpenESt10shared_ptrINS_6BufferEES4_:bb.a
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
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 3 uses
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
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.bi, %bb.h ]
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
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bb = zext i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  invoke void @_ZN5arrow3ipc8internal19GetKeyValueMetadataEPKN22arrow_vendored_private11flatbuffers6VectorINS3_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEEjEEPSt10shared_ptrINS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull %i.bf, ptr noundef nonnull %5)
          to label %_ZN5arrow6StatusD2Ev.exit29 unwind label %bb.h

_ZN5arrow6StatusD2Ev.exit29:                      ; preds = %bb.g
  %i.bg = load ptr, ptr %6, align 8, !tbaa !27    ; 2 uses
  store ptr %i.bg, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.bh = icmp eq ptr %i.bg, null                 ; 2 uses
  br i1 %i.bh, label %_ZN5arrow6StatusD2Ev.exit33, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

_ZN5arrow6StatusD2Ev.exit33:                      ; preds = %_ZN5arrow6StatusD2Ev.exit29
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load <2 x ptr>, ptr %5, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !13 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.bj, align 8, !tbaa !11
  %.not.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bn, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !21
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !79
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !79
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i34 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.l ], [ %i.ca, %bb.m ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.n, label %.critedge, !prof !26

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_ZN5arrow6StatusD2Ev.exit33, %_ZN5arrow6StatusD2Ev.exit29
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !13 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ce, align 8, !tbaa !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !21
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #28, !inline_history !80
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #28, !inline_history !80
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i36 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cq = add nsw i32 %i.ch, -1
  store i32 %i.cq, ptr %i.ce, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cr = atomicrmw volatile add ptr %i.ce, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.ch, %bb.r ], [ %i.cr, %bb.s ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #28
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.critedge, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %i.bh, label %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread, label %bb.u

_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit21.thread, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !81
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit, %_ZNK3org6apache5arrow7flatbuf7Message15custom_metadataEv.exit.thread, %_ZN5arrow6Status7InvalidIJRA37_KcsEEES0_DpOT_.exit, %_ZNK3org6apache5arrow7flatbuf7Message7versionEv.exit.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !27
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !26

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %4)
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
  %i.c = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !25
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !78     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !25
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.m = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc11ReadMessageESt10shared_ptrINS_6BufferEES3_:bb.a
  br label %_ZN5arrow6StatusD2Ev.exit81

_ZN5arrow6StatusD2Ev.exit81:                      ; preds = %_ZN5arrow6Status7InvalidIJRA44_KcEEES0_DpOT_.exit, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bq
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.ch

bb.bu:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i32 %i.cr, ptr %i.f, align 4, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !274
  invoke void @_ZN5arrow8internal12JoinToStringIJRA19_KcNS_3ipc14MessageDecoder5StateEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(19) @.str.14, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc87 unwind label %bb.bz

.noexc87:                                         ; preds = %bb.bu
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %22, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.noexc87
  %i.gk = load ptr, ptr %3, align 8, !tbaa !78, !noalias !274 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %bb.bv
  %i.gn = load i64, ptr %i.gl, align 8, !tbaa !25, !noalias !274
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.go) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i86

bb.bw:                                            ; preds = %.noexc87
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %3, align 8, !tbaa !78, !noalias !274 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i82: ; preds = %bb.bw
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !25, !noalias !274
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i83: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !274
  br label %.body88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i86: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !274
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #28
  %i.gv = load ptr, ptr %22, align 8, !tbaa !27   ; 2 uses
  %.not.i90 = icmp eq ptr %i.gv, null
  br i1 %.not.i90, label %_ZN5arrow6StatusD2Ev.exit91, label %bb.bx, !prof !30

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i86
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !31, !range !42, !noundef !43
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %_ZN5arrow6StatusD2Ev.exit91, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #28
  br label %_ZN5arrow6StatusD2Ev.exit91

_ZN5arrow6StatusD2Ev.exit91:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i86, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bu
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %.body88

.body88:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i83, %bb.bz
  %eh.lpad-body89 = phi { ptr, i32 } [ %i.gz, %bb.bz ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.ch

bb.ca:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit74, %_ZN5arrow6StatusD2Ev.exit37, %_ZN5arrow6StatusD2Ev.exit91, %_ZN5arrow6StatusD2Ev.exit81, %_ZN5arrow6StatusD2Ev.exit78, %_ZN5arrow6StatusD2Ev.exit62, %bb.au, %_ZN5arrow6StatusD2Ev.exit51, %_ZN5arrow6StatusD2Ev.exit44, %bb.ai, %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow3ipc14MessageDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.ha = load ptr, ptr %i.g, align 8, !tbaa !13  ; 8 uses
  %.not.i.i92 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i92, label %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.hb, align 8, !tbaa !19
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !21
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #28, !inline_history !172
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !22
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #28, !inline_history !172
  br label %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cd:                                            ; preds = %bb.cb
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i93 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i93, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

bb.cf:                                            ; preds = %bb.cd
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i95 = phi i32 [ %i.he, %bb.ce ], [ %i.ho, %bb.cf ]
  %i.hp = icmp eq i32 %.0.i.i.i.i95, 1
  br i1 %i.hp, label %bb.cg, label %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #28
  br label %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ca, %bb.cc, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i94, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.hq = load ptr, ptr %7, align 8, !tbaa !44    ; 3 uses
  %.not.i96 = icmp eq ptr %i.hq, null
  br i1 %.not.i96, label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.hq) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.ch:                                            ; preds = %.body88, %bb.bt, %bb.bp, %.body59, %.body48, %bb.am, %bb.ag, %.body
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body89, %.body88 ], [ %i.cy, %bb.am ], [ %eh.lpad-body49, %.body48 ], [ %eh.lpad-body60, %.body59 ], [ %i.gc, %bb.bp ], [ %i.co, %bb.ag ], [ %i.gj, %bb.bt ]
  call void @_ZN5arrow3ipc14MessageDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #28
  br label %bb.ci

bb.ci:                                            ; preds = %bb.r, %bb.ch
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.ch ], [ %i.bh, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @_ZNSt12__shared_ptrIN5arrow3ipc28AssignMessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  %.pre = load ptr, ptr %7, align 8, !tbaa !44    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.not.i97 = icmp eq ptr %.pre, null
  br i1 %.not.i97, label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit99, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i98

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i98: ; preds = %bb.ci
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre) #28
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit99

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit99: ; preds = %bb.ci, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn20.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow3ipc14MessageDecoder5stateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !145
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !262
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::ipc::internal::IoRecordedRandomAccessFile", align 8 ; 25 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %11 = alloca %"class.arrow::Result.72", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__shared_ptr", align 16 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %18 = alloca %"class.std::unique_ptr.7", align 8 ; 11 uses
  %19 = alloca %"class.std::shared_ptr.18", align 8 ; 6 uses
  %20 = alloca %"class.arrow::ipc::MessageDecoder", align 8 ; 9 uses
  %21 = alloca %"class.std::shared_ptr.29", align 8 ; 4 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.arrow::Result.32", align 8 ; 13 uses
  %24 = alloca %"class.std::shared_ptr", align 8  ; 7 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %28 = alloca %"class.std::shared_ptr", align 8  ; 4 uses
  %29 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %31 = alloca %"class.std::shared_ptr", align 16 ; 10 uses
  %32 = alloca %"class.arrow::Result.47", align 8 ; 15 uses
  %33 = alloca %"class.std::unique_ptr.51", align 8 ; 7 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 10 uses
  %36 = alloca %"class.arrow::Result.32", align 8 ; 10 uses
  %37 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %38 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %40 = alloca %"class.std::shared_ptr", align 8  ; 5 uses
  %41 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %42 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !63
  store i32 %2, ptr %i.d, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store ptr null, ptr %18, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.k = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  store i32 1, ptr %i.m, align 8, !tbaa !19, !noalias !279
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !21, !noalias !279
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc28AssignMessageDecoderListenerESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !22, !noalias !279
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5arrow3ipc28AssignMessageDecoderListenerE, i64 16), ptr %i.o, align 8, !tbaa !22, !noalias !279
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %18, ptr %i.p, align 8, !tbaa !135, !noalias !279
  store ptr %i.l, ptr %i.k, align 8, !tbaa !13, !alias.scope !279
  store ptr %i.o, ptr %19, align 8, !tbaa !139, !alias.scope !279
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr %i.o, ptr %21, align 8, !tbaa !141
  %i.q = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.q, align 8, !tbaa !13
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.m, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow3ipc22MessageDecoderListenerEEC2INS1_28AssignMessageDecoderListenerEvEERKS_IT_E.exit

bb.c:                                             ; preds = %bb.a
  %i.s = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow3ipc22MessageDecoderListenerEEC2INS1_28AssignMessageDecoderListenerEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5arrow3ipc22MessageDecoderListenerEEC2INS1_28AssignMessageDecoderListenerEvEERKS_IT_E.exit: ; preds = %bb.b, %bb.c
  %i.t = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %_ZNSt10shared_ptrIN5arrow3ipc22MessageDecoderListenerEEC2INS1_28AssignMessageDecoderListenerEvEERKS_IT_E.exit
  invoke void @_ZN5arrow3ipc14MessageDecoderC1ESt10shared_ptrINS0_22MessageDecoderListenerEEPNS_10MemoryPoolEb(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %21, ptr noundef %i.t, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !21
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28, !inline_history !144
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28, !inline_history !144
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i72 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i72, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !26

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g, %bb.e
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !145 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !147
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !157
  %i.ar = sub nsw i64 %i.ao, %i.aq                ; 2 uses
  %i.as = sext i32 %i.ak to i64                   ; 2 uses
  %i.at = icmp sgt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 %i.ar, ptr %i.e, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !282
  invoke void @_ZN5arrow8internal12JoinToStringIJRA36_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 1 dereferenceable(36) @.str.8, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %22, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.au = load ptr, ptr %17, align 8, !tbaa !78, !noalias !282 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !25, !noalias !282
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.o:                                             ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %17, align 8, !tbaa !78, !noalias !282 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.o
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !25, !noalias !282
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !282
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !282
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #28
  %i.bf = load ptr, ptr %22, align 8, !tbaa !27   ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.p, !prof !30

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31, !range !42, !noundef !43
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZN5arrow6StatusD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #28
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.fn

bb.r:                                             ; preds = %bb.d, %_ZNSt10shared_ptrIN5arrow3ipc22MessageDecoderListenerEEC2INS1_28AssignMessageDecoderListenerEvEERKS_IT_E.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow3ipc22MessageDecoderListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #28
  br label %bb.fv

bb.s:                                             ; preds = %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.fu

end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE:bb.a
  invoke void @_ZN5arrow8internal12JoinToStringIJRA42_KcRlRA20_S2_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 1 dereferenceable(42) @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 1 dereferenceable(20) @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc96 unwind label %bb.az

.noexc96:                                         ; preds = %bb.au
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %29, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %.noexc96
  %i.eb = load ptr, ptr %15, align 8, !tbaa !78, !noalias !299 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94: ; preds = %bb.av
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !25, !noalias !299
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i95

bb.aw:                                            ; preds = %.noexc96
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %15, align 8, !tbaa !78, !noalias !299 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.aw
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !25, !noalias !299
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !299
  br label %.body97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i95: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28, !noalias !299
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %29) #28
  %i.em = load ptr, ptr %29, align 8, !tbaa !27   ; 2 uses
  %.not.i99 = icmp eq ptr %i.em, null
  br i1 %.not.i99, label %_ZN5arrow6StatusD2Ev.exit100, label %bb.ax, !prof !30

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i95
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !31, !range !42, !noundef !43
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %_ZN5arrow6StatusD2Ev.exit100, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #28
  br label %_ZN5arrow6StatusD2Ev.exit100

_ZN5arrow6StatusD2Ev.exit100:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i95, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.ew

bb.az:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.body97

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
  %43 = load ptr, ptr %13, align 16, !tbaa !317   ; 3 uses
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
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hg ; 4 uses
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3
  %i.hj = sext i32 %i.hi to i64
  %i.hk = sub nsw i64 0, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hh, i64 %i.hk ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !71 ; 2 uses
  %i.hn = icmp ugt i16 %i.hm, 6
  br i1 %i.hn, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc118, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
          to label %_ZN5arrow6StatusD2Ev.exit124.thread unwind label %bb.db

_ZN5arrow6StatusD2Ev.exit124.thread:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !27, !noalias !320, !nonnull !43, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  store ptr %.pr.i, ptr %34, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cx

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.hp = load i16, ptr %i.ho, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i115 = icmp eq i16 %i.hp, 0
  br i1 %.not.i.i.i.i115, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.hq = zext i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !25
  %i.ht = icmp eq i8 %i.hs, 3
  %i.hu = icmp ugt i16 %i.hm, 8
  %or.cond.i.i = and i1 %i.hu, %i.ht
  br i1 %or.cond.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq i16 %i.hw, 0
  br i1 %.not.i.i.i.i.i116, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.hx = zext i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hx ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !320
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false), !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.ic, align 8, !tbaa !22, !noalias !320
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.ie, align 8, !tbaa !327, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %9, align 8, !tbaa !22, !noalias !320
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8))
          to label %bb.bq unwind label %bb.br

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.34)
          to label %_ZN5arrow6StatusD2Ev.exit124 unwind label %bb.db

bb.bq:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 328), ptr %i.ic, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), ptr %9, align 8, !tbaa !22, !noalias !320
  %i.if = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.if, align 8, !tbaa !22, !noalias !320
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.gk, ptr %i.ig, align 8, !tbaa !335, !noalias !320
  %i.ih = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ih, i8 0, i64 33, i1 false), !noalias !320
  invoke void @_ZN5arrow2io9IOContextC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ii)
          to label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.ik = landingpad { ptr, i32 }
          cleanup
  %i.il = load ptr, ptr %i.ih, align 8, !tbaa !358, !noalias !320 ; 3 uses
  %.not.i.i.i.i60.i = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.im = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !359, !noalias !320
  %i.io = ptrtoint ptr %i.in to i64
  %i.ip = ptrtoint ptr %i.il to i64
  %i.iq = sub i64 %i.io, %i.ip
  call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.iq) #29
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bt, %bb.bs
  call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8)) #28
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, %bb.br
  %.pn.i.i = phi { ptr, i32 } [ %i.ik, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i ], [ %i.ij, %bb.br ]
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.ic) #28
  br label %.body121

_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store ptr %i.ib, ptr %i.a, align 8, !tbaa !11, !noalias !360
  store ptr %9, ptr %i.b, align 8, !tbaa !363, !noalias !360
  %i.ir = load ptr, ptr %i.fm, align 8, !tbaa !309, !noalias !360
  %.not.i.i.i117 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i117, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc.i unwind label %bb.bx

.noexc.i:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !365, !noalias !360
  invoke void %i.it(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5arrow6StatusD2Ev.exit63.i unwind label %bb.bx, !inline_history !367

_ZN5arrow6StatusD2Ev.exit63.i:                    ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %i.iu = load ptr, ptr %10, align 8, !tbaa !27, !noalias !320 ; 2 uses
  store ptr %i.iu, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN5arrow6StatusD2Ev.exit67.i, label %.critedge51.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  br label %bb.cw

_ZN5arrow6StatusD2Ev.exit67.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit63.i
  %i.ix = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow3ipc8internal26IoRecordedRandomAccessFile13GetReadRangesEv(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !368 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !368 ; 2 uses
  %i.jb = icmp eq ptr %i.iy, %i.ja
  br i1 %i.jb, label %.critedge55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by
  %i.jc = sext i32 %i.ge to i64
  %i.jd = add nsw i64 %i.gd, %i.jc
  %44 = getelementptr inbounds nuw i8, ptr %43, i64 9
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 8
  %46 = getelementptr inbounds nuw i8, ptr %43, i64 16
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ca:                                            ; preds = %bb.cn, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %i.iy, %.lr.ph.i ], [ %i.lc, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !320
  %i.jf = load i64, ptr %.sroa.01.06.i, align 8, !tbaa !369 ; 2 uses
  %i.jg = add nsw i64 %i.jd, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !371
  %i.jj = load i8, ptr %44, align 1, !tbaa !46, !range !42, !noundef !43
  %i.jk = trunc nuw i8 %i.jj to i1
  %i.jl = load i8, ptr %45, align 8, !range !42
  %i.jm = trunc nuw i8 %i.jl to i1
  %i.jn = select i1 %i.jk, i1 %i.jm, i1 false, !prof !30
  %i.jo = load ptr, ptr %46, align 8
  %i.jp = select i1 %i.jn, ptr %i.jo, ptr null, !prof !30
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 %i.jf
  %i.jr = load ptr, ptr %3, align 8, !tbaa !22, !noalias !320
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 80
  %i.jt = load ptr, ptr %i.js, align 8
  invoke void %i.jt(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.jg, i64 noundef %i.ji, ptr noundef %i.jq)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.ju = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %bb.cn, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28, !noalias !320
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.cd unwind label %bb.cj

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !372
  invoke void @_ZN5arrow8internal12JoinToStringIJRA36_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 1 dereferenceable(36) @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %.noexc68.i unwind label %bb.ck

.noexc68.i:                                       ; preds = %bb.cd
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %35, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.ce unwind label %bb.cf

bb.ce:                                            ; preds = %.noexc68.i
  %i.jw = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  br i1 %i.jy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ce
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !25, !noalias !372
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.ka) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.cf:                                            ; preds = %.noexc68.i
  %i.kb = landingpad { ptr, i32 }
          cleanup
  %i.kc = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.cf
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !25, !noalias !372
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  %i.kh = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !25, !noalias !320
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.km = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i69.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i69.i, label %bb.co, label %bb.cg, !prof !30

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !31, !range !42, !noundef !43
  %i.kp = trunc nuw i8 %i.ko to i1
  br i1 %i.kp, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %bb.co

bb.ci:                                            ; preds = %bb.ca
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cj:                                            ; preds = %bb.cc
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

bb.ck:                                            ; preds = %bb.cd
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ks, %bb.ck ], [ %i.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ] ; 2 uses
  %i.kt = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %.body.i
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !25, !noalias !320
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %bb.cj
  %.pn44.i = phi { ptr, i32 } [ %i.kr, %bb.cj ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %eh.lpad-body.i, %.body.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.ky = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i73.i, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cl, !prof !30

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !31, !range !42, !noundef !43
  %i.lb = trunc nuw i8 %i.la to i1
  br i1 %i.lb, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cn:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, %i.ja
  br i1 %i.ld, label %.critedge55.i, label %bb.ca

_ZN5arrow6ResultIlED2Ev.exit74.i:                 ; preds = %bb.cm, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %bb.ci
  %.pn44.pn.i = phi { ptr, i32 } [ %i.kq, %bb.ci ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ], [ %.pn44.i, %bb.cl ], [ %.pn44.i, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %bb.cw

bb.co:                                            ; preds = %bb.ch, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %.critedge51.i

.critedge55.i:                                    ; preds = %bb.cn, %bb.by
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !377
  br label %.critedge51.i

.critedge51.i:                                    ; preds = %.critedge55.i, %bb.co, %_ZN5arrow6StatusD2Ev.exit63.i
  %i.le = load ptr, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, align 8, !noalias !320 ; 2 uses
  store ptr %i.le, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.lf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 56), align 8, !noalias !320
  %i.lg = getelementptr i8, ptr %i.le, i64 -56
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds i8, ptr %9, i64 %i.lh
  store ptr %i.lf, ptr %i.li, align 8, !tbaa !22, !noalias !320
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), align 8, !noalias !320
  %i.lk = load ptr, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.ll = getelementptr i8, ptr %i.lk, i64 -64
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds i8, ptr %9, i64 %i.lm
  store ptr %i.lj, ptr %i.ln, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.if, align 8, !tbaa !22, !noalias !320
  %i.lo = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !13, !noalias !320 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge51.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 4 uses
  %i.lr = load atomic i64, ptr %i.lq acquire, align 8 ; 2 uses
  %i.ls = icmp eq i64 %i.lr, 4294967297
  %i.lt = trunc i64 %i.lr to i32                  ; 2 uses
  br i1 %i.ls, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.lq, align 8, !tbaa !19
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 12
  store i32 0, ptr %i.lu, align 4, !tbaa !21
  %i.lv = load ptr, ptr %i.lp, align 8, !tbaa !22
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = load ptr, ptr %i.lw, align 8
  call void %i.lx(ptr noundef nonnull align 8 dereferenceable(16) %i.lp) #28, !inline_history !380
  %i.ly = load ptr, ptr %i.lp, align 8, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8
  call void %i.ma(ptr noundef nonnull align 8 dereferenceable(16) %i.lp) #28, !inline_history !380
  br label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.mb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !320
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.mb, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mc = add nsw i32 %i.lt, -1
  store i32 %i.mc, ptr %i.lq, align 8, !tbaa !3
end_hunk_2
