inline.NumInlined: 3211
inline.NumDeleted: 1159
begin_hunk_0_@_ZN5arrow3ipc11ReadMessageESt10shared_ptrINS_6BufferEES3_:bb.a
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
define noundef i32 @_ZNK5arrow3ipc14MessageDecoder5stateEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
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
  %13 = alloca %"class.std::__shared_ptr", align 16 ; 5 uses
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
  %31 = alloca %"class.std::shared_ptr", align 16 ; 11 uses
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

bb.t:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !63
  %i.bm = load ptr, ptr %3, align 8, !tbaa !22
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc11ReadMessageEliPNS_2io16RandomAccessFileERKSt8functionIFNS_6StatusEPKvS3_EE:bb.a
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
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.hg ; 4 uses
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  %43 = load i32, ptr %i.hh, align 4, !tbaa !3
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %i.hh, i64 %45 ; 3 uses
  %47 = load i16, ptr %46, align 2, !tbaa !71     ; 2 uses
  %48 = icmp ugt i16 %47, 6
  br i1 %48, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc118, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31)
          to label %.noexc119 unwind label %bb.db

.noexc119:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !27, !noalias !320, !nonnull !43, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !320
  store ptr %.pr.i, ptr %34, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.cx

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.hi = getelementptr inbounds nuw i8, ptr %46, i64 6
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i115 = icmp eq i16 %i.hj, 0
  br i1 %.not.i.i.i.i115, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.hk = zext i16 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !25
  %i.hn = icmp eq i8 %i.hm, 3
  %i.ho = icmp ugt i16 %47, 8
  %or.cond.i.i = and i1 %i.ho, %i.hn
  br i1 %or.cond.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !71 ; 2 uses
  %.not.i.i.i.i.i116 = icmp eq i16 %i.hq, 0
  br i1 %.not.i.i.i.i.i116, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, label %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !320
  %i.hw = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %9, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 0, i64 16, i1 false), !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow2io13FileInterfaceE, i64 16), ptr %i.hw, align 8, !tbaa !22, !noalias !320
  %i.hy = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.hy, align 8, !tbaa !327, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5arrow2io8ReadableE, i64 16), ptr %9, align 8, !tbaa !22, !noalias !320
  invoke void @_ZN5arrow2io16RandomAccessFileC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8))
          to label %bb.bq unwind label %bb.br

_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  invoke void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %35, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(62) @.str.34)
          to label %_ZN5arrow6StatusD2Ev.exit124 unwind label %bb.db

bb.bq:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  store ptr getelementptr inbounds nuw inrange(-64, 56) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 328), ptr %i.hw, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-64, 160) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), ptr %9, align 8, !tbaa !22, !noalias !320
  %i.hz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.hz, align 8, !tbaa !22, !noalias !320
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.gk, ptr %i.ia, align 8, !tbaa !335, !noalias !320
  %i.ib = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.ib, i8 0, i64 33, i1 false), !noalias !320
  invoke void @_ZN5arrow2io9IOContextC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ic)
          to label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i unwind label %bb.bs

bb.br:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.ie = landingpad { ptr, i32 }
          cleanup
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !358, !noalias !320 ; 3 uses
  %.not.i.i.i.i60.i = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i60.i, label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ig = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !359, !noalias !320
  %i.ii = ptrtoint ptr %i.ih to i64
  %i.ij = ptrtoint ptr %i.if to i64
  %i.ik = sub i64 %i.ii, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.if, i64 noundef %i.ik) #29
  br label %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i: ; preds = %bb.bt, %bb.bs
  call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8)) #28
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i, %bb.br
  %.pn.i.i = phi { ptr, i32 } [ %i.ie, %_ZNSt6vectorIN5arrow2io9ReadRangeESaIS2_EED2Ev.exit.i.i ], [ %i.id, %bb.br ]
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.hw) #28
  br label %.body121

_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !320
  store ptr %i.hv, ptr %i.a, align 8, !tbaa !11, !noalias !360
  store ptr %9, ptr %i.b, align 8, !tbaa !363, !noalias !360
  %i.il = load ptr, ptr %i.fm, align 8, !tbaa !309, !noalias !360
  %.not.i.i.i117 = icmp eq ptr %i.il, null
  br i1 %.not.i.i.i117, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  invoke void @_ZSt25__throw_bad_function_callv() #31
          to label %.noexc.i unwind label %bb.bx

.noexc.i:                                         ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileC1El.exit.i
  %i.im = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !365, !noalias !360
  invoke void %i.in(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5arrow6StatusD2Ev.exit63.i unwind label %bb.bx, !inline_history !367

_ZN5arrow6StatusD2Ev.exit63.i:                    ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !320
  %i.io = load ptr, ptr %10, align 8, !tbaa !27, !noalias !320 ; 2 uses
  store ptr %i.io, ptr %35, align 8, !tbaa !27, !alias.scope !320
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZN5arrow6StatusD2Ev.exit67.i, label %.critedge51.i

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !320
  br label %bb.cw

_ZN5arrow6StatusD2Ev.exit67.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit63.i
  %i.ir = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow3ipc8internal26IoRecordedRandomAccessFile13GetReadRangesEv(ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %bb.by unwind label %bb.bz     ; 2 uses

bb.by:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !368 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !368 ; 2 uses
  %i.iv = icmp eq ptr %i.is, %i.iu
  br i1 %i.iv, label %.critedge55.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.by
  %i.iw = sext i32 %i.ge to i64
  %i.ix = add nsw i64 %i.gd, %i.iw
  br label %bb.ca

bb.bz:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ca:                                            ; preds = %bb.cn, %.lr.ph.i
  %.sroa.01.06.i = phi ptr [ %i.is, %.lr.ph.i ], [ %i.la, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !320
  %i.iz = load i64, ptr %.sroa.01.06.i, align 8, !tbaa !369 ; 2 uses
  %i.ja = add nsw i64 %i.ix, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 8
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !371
  %i.jd = load ptr, ptr %31, align 16, !tbaa !16, !noalias !320 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 9
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !46, !range !42, !noundef !43
  %i.jg = trunc nuw i8 %i.jf to i1
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.ji = load i8, ptr %i.jh, align 8, !range !42
  %i.jj = trunc nuw i8 %i.ji to i1
  %i.jk = select i1 %i.jg, i1 %i.jj, i1 false, !prof !30
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = select i1 %i.jk, ptr %i.jm, ptr null, !prof !30
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.iz
  %i.jp = load ptr, ptr %3, align 8, !tbaa !22, !noalias !320
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 80
  %i.jr = load ptr, ptr %i.jq, align 8
  invoke void %i.jr(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ja, i64 noundef %i.jc, ptr noundef %i.jo)
          to label %bb.cb unwind label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.js = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.cn, label %bb.cc

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
  %i.ju = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ce
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !25, !noalias !372
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.cf:                                            ; preds = %.noexc68.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  %i.ka = load ptr, ptr %6, align 8, !tbaa !78, !noalias !372 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.cf
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !25, !noalias !372
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !372
  %i.kf = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !25, !noalias !320
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.kk = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i69.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i69.i, label %bb.co, label %bb.cg, !prof !30

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !31, !range !42, !noundef !43
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.co, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %bb.co

bb.ci:                                            ; preds = %bb.ca
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cj:                                            ; preds = %bb.cc
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

bb.ck:                                            ; preds = %bb.cd
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.kq, %bb.ck ], [ %i.jz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ] ; 2 uses
  %i.kr = load ptr, ptr %12, align 8, !tbaa !78, !noalias !320 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i: ; preds = %.body.i
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !25, !noalias !320
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i, %bb.cj
  %.pn44.i = phi { ptr, i32 } [ %i.kp, %bb.cj ], [ %eh.lpad-body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.i ], [ %eh.lpad-body.i, %.body.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !320
  %i.kw = load ptr, ptr %11, align 8, !tbaa !27, !noalias !320 ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.kw, null
  br i1 %.not.i.i73.i, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cl, !prof !30

bb.cl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !31, !range !42, !noundef !43
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %_ZN5arrow6ResultIlED2Ev.exit74.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %_ZN5arrow6ResultIlED2Ev.exit74.i

bb.cn:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.la, %i.iu
  br i1 %i.lb, label %.critedge55.i, label %bb.ca

_ZN5arrow6ResultIlED2Ev.exit74.i:                 ; preds = %bb.cm, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i, %bb.ci
  %.pn44.pn.i = phi { ptr, i32 } [ %i.ko, %bb.ci ], [ %.pn44.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72.i ], [ %.pn44.i, %bb.cl ], [ %.pn44.i, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %bb.cw

bb.co:                                            ; preds = %bb.ch, %bb.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !320
  br label %.critedge51.i

.critedge55.i:                                    ; preds = %bb.cn, %bb.by
  store ptr null, ptr %35, align 8, !tbaa !27, !alias.scope !377
  br label %.critedge51.i

.critedge51.i:                                    ; preds = %.critedge55.i, %bb.co, %_ZN5arrow6StatusD2Ev.exit63.i
  %i.lc = load ptr, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, align 8, !noalias !320 ; 2 uses
  store ptr %i.lc, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.ld = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 56), align 8, !noalias !320
  %i.le = getelementptr i8, ptr %i.lc, i64 -56
  %i.lf = load i64, ptr %i.le, align 8
  %i.lg = getelementptr inbounds i8, ptr %9, i64 %i.lf
  store ptr %i.ld, ptr %i.lg, align 8, !tbaa !22, !noalias !320
  %i.lh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 64), align 8, !noalias !320
  %i.li = load ptr, ptr %9, align 8, !tbaa !22, !noalias !320
  %i.lj = getelementptr i8, ptr %i.li, i64 -64
  %i.lk = load i64, ptr %i.lj, align 8
  %i.ll = getelementptr inbounds i8, ptr %9, i64 %i.lk
  store ptr %i.lh, ptr %i.ll, align 8, !tbaa !22, !noalias !320
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 240), ptr %i.hz, align 8, !tbaa !22, !noalias !320
  %i.lm = getelementptr inbounds nuw i8, ptr %9, i64 104
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !13, !noalias !320 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge51.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8 ; 4 uses
  %i.lp = load atomic i64, ptr %i.lo acquire, align 8 ; 2 uses
  %i.lq = icmp eq i64 %i.lp, 4294967297
  %i.lr = trunc i64 %i.lp to i32                  ; 2 uses
  br i1 %i.lq, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.lo, align 8, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store i32 0, ptr %i.ls, align 4, !tbaa !21
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !22
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #28, !inline_history !380
  %i.lw = load ptr, ptr %i.ln, align 8, !tbaa !22
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #28, !inline_history !380
  br label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.lz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25, !noalias !320
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.lz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ma = add nsw i32 %i.lr, -1
  store i32 %i.ma, ptr %i.lo, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.mb = atomicrmw volatile add ptr %i.lo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.lr, %bb.cs ], [ %i.mb, %bb.ct ]
  %i.mc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.mc, label %bb.cu, label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i, !prof !26

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ln) #28
  br label %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i

_ZN5arrow2io9IOContextD2Ev.exit.i.i.i:            ; preds = %bb.cu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.cq, %.critedge51.i
  %i.md = load ptr, ptr %i.ib, align 8, !tbaa !358, !noalias !320 ; 3 uses
  %.not.i.i.i.i.i77.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i77.i, label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileD1Ev.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !359, !noalias !320
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #29
  br label %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileD1Ev.exit.i

_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileD1Ev.exit.i: ; preds = %bb.cv, %_ZN5arrow2io9IOContextD2Ev.exit.i.i.i
  call void @_ZN5arrow2io16RandomAccessFileD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN5arrow3ipc8internal26IoRecordedRandomAccessFileE, i64 8)) #28
  call void @_ZN5arrow2io13FileInterfaceD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %i.hw) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !320
  br label %_ZN5arrow6StatusD2Ev.exit124

bb.cw:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit74.i, %bb.bz, %bb.bx
  %.pn44.pn.pn.pn.i = phi { ptr, i32 } [ %i.iq, %bb.bx ], [ %.pn44.pn.i, %_ZN5arrow6ResultIlED2Ev.exit74.i ], [ %i.iy, %bb.bz ]
  call void @_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !320
  br label %.body121

_ZN5arrow6StatusD2Ev.exit124:                     ; preds = %_ZN5arrow3ipc8internal26IoRecordedRandomAccessFileD1Ev.exit.i, %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i
  %.pr206 = load ptr, ptr %35, align 8, !tbaa !27 ; 2 uses
  store ptr %.pr206, ptr %34, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.mj = icmp eq ptr %.pr206, null
  br i1 %i.mj, label %_ZN5arrow6StatusD2Ev.exit147, label %bb.cx, !prof !171

bb.cx:                                            ; preds = %.noexc119, %_ZN5arrow6StatusD2Ev.exit124
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %34) #28
  %i.mk = load ptr, ptr %34, align 8, !tbaa !27   ; 2 uses
  %.not.i125 = icmp eq ptr %i.mk, null
  br i1 %.not.i125, label %_ZN5arrow6StatusD2Ev.exit126, label %bb.cy, !prof !30

bb.cy:                                            ; preds = %bb.cx
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 1
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !31, !range !42, !noundef !43
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %_ZN5arrow6StatusD2Ev.exit126, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #28
  br label %_ZN5arrow6StatusD2Ev.exit126

_ZN5arrow6StatusD2Ev.exit126:                     ; preds = %bb.cx, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.ee

bb.da:                                            ; preds = %bb.bl
  %i.mo = landingpad { ptr, i32 }
          cleanup
  %i.mp = load ptr, ptr %33, align 8, !tbaa !317  ; 3 uses
  %.not.i127 = icmp eq ptr %i.mp, null
  br i1 %.not.i127, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit129, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i128

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i128: ; preds = %bb.da
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !22
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8
  call void %i.ms(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.mp) #28, !inline_history !319
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit129

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit129: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i128, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %bb.dc

bb.db:                                            ; preds = %_ZNK3org6apache5arrow7flatbuf7Message21header_as_RecordBatchEv.exit.thread.i, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.body121:                                         ; preds = %bb.db, %bb.cw, %bb.bu
  %.pn49 = phi { ptr, i32 } [ %.pn44.pn.pn.pn.i, %bb.cw ], [ %i.mt, %bb.db ], [ %.pn.i.i, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.dc

bb.dc:                                            ; preds = %.body121, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit129
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %.body121 ], [ %i.mo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit129 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.el

bb.dd:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.mu = load i64, ptr %i.c, align 8, !tbaa !63
  %i.mv = load i32, ptr %i.d, align 4, !tbaa !3
  %i.mw = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !147
  %i.my = getelementptr inbounds nuw i8, ptr %i.dw, i64 80
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !157
  %i.na = sub nsw i64 %i.mx, %i.mz
  %i.nb = sext i32 %i.mv to i64
  %i.nc = add nsw i64 %i.mu, %i.nb
  %i.nd = load ptr, ptr %3, align 8, !tbaa !22
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 88
  %i.nf = load ptr, ptr %i.ne, align 8
  invoke void %i.nf(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.32") align 8 %36, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.nc, i64 noundef %i.na)
          to label %bb.de unwind label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ng = load ptr, ptr %36, align 8, !tbaa !27
  %i.nh = icmp eq ptr %i.ng, null                 ; 2 uses
  br i1 %i.nh, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140.thread, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140, !prof !30

bb.df:                                            ; preds = %bb.dd
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140.thread: ; preds = %bb.de
  %i.nj = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.nk = load <2 x ptr>, ptr %i.nj, align 8, !tbaa !11, !noalias !381
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nj, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.nk, ptr %31, align 16, !tbaa !11
  br label %bb.dg

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140: ; preds = %bb.de
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %36) #28
  %.pre207 = load ptr, ptr %36, align 8, !tbaa !27 ; 2 uses
  %i.nl = icmp eq ptr %.pre207, null
  br i1 %i.nl, label %bb.dg, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !386

bb.dg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140.thread, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140
  %i.nm = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i142 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i.i142, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 4 uses
  %i.np = load atomic i64, ptr %i.no acquire, align 8 ; 2 uses
  %i.nq = icmp eq i64 %i.np, 4294967297
  %i.nr = trunc i64 %i.np to i32                  ; 2 uses
  br i1 %i.nq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.no, align 8, !tbaa !19
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 12
  store i32 0, ptr %i.ns, align 4, !tbaa !21
  %i.nt = load ptr, ptr %i.nn, align 8, !tbaa !22
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #28, !inline_history !170
  %i.nw = load ptr, ptr %i.nn, align 8, !tbaa !22
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 24
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #28, !inline_history !170
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.nz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i143 = icmp eq i8 %i.nz, 0
  br i1 %.not.i.i.i.i.i.i143, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.oa = add nsw i32 %i.nr, -1
  store i32 %i.oa, ptr %i.no, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.ob = atomicrmw volatile add ptr %i.no, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.nr, %bb.dk ], [ %i.ob, %bb.dl ]
  %i.oc = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.oc, label %bb.dm, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, !prof !26

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nn) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i: ; preds = %bb.dm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.di, %bb.dg
  %.pr.i144 = load ptr, ptr %36, align 8, !tbaa !27 ; 2 uses
  %.not.i.i145 = icmp eq ptr %.pr.i144, null
  br i1 %.not.i.i145, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140
  %i.od = phi ptr [ %.pr.i144, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i ], [ %.pre207, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit140 ]
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !31, !range !42, !noundef !43
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %36) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  br i1 %i.nh, label %bb.dq, label %bb.ee

_ZN5arrow6StatusD2Ev.exit147:                     ; preds = %_ZN5arrow6StatusD2Ev.exit124
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  %i.oh = load ptr, ptr %32, align 8, !tbaa !27   ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.do, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !30

bb.do:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit147
  %i.oj = load ptr, ptr %i.fx, align 8, !tbaa !317 ; 3 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i149, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.do
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !22
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  call void %i.om(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.oj) #28, !inline_history !387
  %.pr.pre.i = load ptr, ptr %32, align 8, !tbaa !27 ; 2 uses
  %.not.i.i150 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i150, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !171

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6StatusD2Ev.exit147
  %i.on = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.oh, %_ZN5arrow6StatusD2Ev.exit147 ]
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 1
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !31, !range !42, !noundef !43
  %i.oq = trunc nuw i8 %i.op to i1
  br i1 %i.oq, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #28
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.do, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %bb.dq
end_hunk_1
begin_hunk_2_@_ZN5arrow6Status8FromArgsIJRA48_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !642
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !642
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA48_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(46) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !645
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !645
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !596, !noalias !645, !nonnull !43, !align !606
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %2) #28, !noalias !645
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !645 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !645
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !645
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !78     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !648  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #28, !inline_history !651
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !652  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !25
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

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare void @_ZN5arrow6Buffer10ViewOrCopyESt10shared_ptrIS0_ERKS1_INS_13MemoryManagerEE(ptr dead_on_unwind writable sret(%"class.arrow::Result.32") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl15ConsumeMetadataEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %4 = alloca %"class.arrow::Result.32", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !noalias !654 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.d = load i8, ptr %i.c, align 1, !tbaa !46, !range !42, !noalias !654, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !654
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not15.i = icmp ne i64 %i.i, 0
  %.not.not.i = select i1 %i.e, i1 %.not15.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit23.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !654
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53, !noalias !654
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
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.db, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %i.dt, %bb.ae ]
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
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ca ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !27, !alias.scope !664
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  %9 = load i32, ptr %i.cb, align 4, !tbaa !3, !noalias !664
  %10 = sext i32 %9 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i8, ptr %i.cb, i64 %11 ; 2 uses
  %13 = load i16, ptr %12, align 2, !tbaa !71, !noalias !664
  %14 = icmp ugt i16 %13, 10
  br i1 %14, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.31), !noalias !664
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !27, !noalias !664, !nonnull !43, !noundef !43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !664
  store ptr %.pr.i, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread.i
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 10
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !71, !noalias !664 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit26.thread, label %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ce = zext i16 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !63, !noalias !664 ; 3 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit26, label %_ZN5arrow6StatusD2Ev.exit26.thread

_ZN5arrow6StatusD2Ev.exit26.thread:               ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i
  %.0 = phi i64 [ %i.cg, %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit32

_ZN5arrow6StatusD2Ev.exit26:                      ; preds = %_ZNK3org6apache5arrow7flatbuf7Message10bodyLengthEv.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(41) @.str.38)
  %.pr40 = load ptr, ptr %6, align 8, !tbaa !27   ; 2 uses
  store ptr %.pr40, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.ci = icmp eq ptr %.pr40, null
  br i1 %i.ci, label %_ZN5arrow6StatusD2Ev.exit32, label %.critedge

_ZN5arrow6StatusD2Ev.exit32:                      ; preds = %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit26.thread
  %.142 = phi i64 [ %.0, %_ZN5arrow6StatusD2Ev.exit26.thread ], [ %i.cg, %_ZN5arrow6StatusD2Ev.exit26 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 3, ptr %i.cj, align 8, !tbaa !262
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !512, !range !42, !noundef !43
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = select i1 %i.cm, i64 0, i64 %.142
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cp = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 48
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
  %i.ct = load ptr, ptr %7, align 8, !tbaa !27    ; 2 uses
  store ptr %i.ct, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit32
  %i.cv = load i64, ptr %i.co, align 8, !tbaa !147
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %bb.af

bb.w:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.cx = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27, !noalias !673 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 1, ptr %i.cy, align 8, !tbaa !19, !noalias !670
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 1, ptr %i.cz, align 4, !tbaa !21, !noalias !670
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cx, align 8, !tbaa !22, !noalias !670
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.da, ptr noundef null, i64 noundef 0)
          to label %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !670

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.w
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 96) #29, !noalias !670
  br label %common.resume

_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.dc, align 8, !tbaa !13, !alias.scope !670
  store ptr %i.da, ptr %8, align 8, !tbaa !317, !alias.scope !670
  invoke void @_ZN5arrow3ipc14MessageDecoder18MessageDecoderImpl11ConsumeBodyEPSt10shared_ptrINS_6BufferEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull %8)
          to label %bb.x unwind label %bb.ae

bb.x:                                             ; preds = %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !13 ; 8 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.de, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !21
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28, !inline_history !24
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i37 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi i32 [ %i.dh, %bb.ab ], [ %i.dr, %bb.ac ]
  %i.ds = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ds, label %bb.ad, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge

bb.ae:                                            ; preds = %_ZSt11make_sharedIN5arrow6BufferEJDniEESt10shared_ptrIT_EDpOT0_.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %common.resume

bb.af:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit36
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !676
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.af, %_ZN5arrow6StatusD2Ev.exit26, %_ZN5arrow6StatusD2Ev.exit32, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit
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
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.a, align 8, !tbaa !11
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !11
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 2 uses
  %i.n = load <2 x ptr>, ptr %2, align 8, !tbaa !11
  store <2 x ptr> %i.n, ptr %5, align 16, !tbaa !11
  %.not.i.i.i31 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i31, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i32 = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, %bb.f, %bb.g
  invoke void @_ZN5arrow3ipc7Message4OpenESt10shared_ptrINS_6BufferEES4_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
          to label %bb.h unwind label %bb.v

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.u, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !24
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i34 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i34, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.l ], [ %i.ah, %bb.m ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !26

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !13  ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ak, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !21
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !24
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28, !inline_history !24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

bb.q:                                             ; preds = %bb.o
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i36 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

bb.s:                                             ; preds = %bb.q
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i38 = phi i32 [ %i.an, %bb.r ], [ %i.ax, %bb.s ]
  %i.ay = icmp eq i32 %.0.i.i.i.i38, 1
  br i1 %i.ay, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39, !prof !26

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #28
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i37, %bb.t
  %i.az = load ptr, ptr %3, align 8, !tbaa !27
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.x, label %bb.u, !prof !30

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  store ptr null, ptr %0, align 8, !tbaa !27
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.w

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit33
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %bb.ac

bb.w:                                             ; preds = %bb.u
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit59

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit39
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !44, !noalias !679
  store ptr null, ptr %i.bd, align 8, !tbaa !44, !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.bf = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  store i64 %i.be, ptr %7, align 8, !tbaa !44
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %7)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.y

end_hunk_2
