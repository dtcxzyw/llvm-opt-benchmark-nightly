inline.NumInlined: 2868
inline.NumDeleted: 1221
begin_hunk_0_@_ZN5arrow18TypedChunkLocationImEC2Emm:bb.a
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
define void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::ipc::IpcReadOptions", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN5arrow3ipc14IpcReadOptions8DefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::ipc::IpcReadOptions") align 8 %2)
  invoke void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.d:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i2, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit3:          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.87", align 8  ; 13 uses
  %4 = alloca %"class.std::shared_ptr.91", align 16 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %6 = alloca %"class.std::vector.74", align 16   ; 14 uses
  %7 = alloca %"class.std::shared_ptr.79", align 16 ; 9 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.std::shared_ptr.82", align 16 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::shared_ptr.79", align 16 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %13 = alloca %"class.std::shared_ptr.28", align 16 ; 7 uses
  %14 = alloca %"class.std::vector.74", align 16  ; 9 uses
  %15 = alloca %"class.std::shared_ptr.56", align 8 ; 6 uses
  %16 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %17 = alloca %"class.arrow::Result.15", align 8 ; 13 uses
  %18 = alloca %"class.std::shared_ptr.19", align 8 ; 6 uses
  %19 = alloca %"class.arrow::Result.15", align 8 ; 12 uses
  %20 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %22 = alloca %"class.arrow::Result.15", align 8 ; 13 uses
  %23 = alloca %"class.std::shared_ptr.19", align 16 ; 6 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %25 = alloca %"class.arrow::Status", align 8    ; 14 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.9") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.e = load ptr, ptr %20, align 8, !tbaa !45
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b, !prof !48

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %20) #24
  br label %bb.ip

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp slt i64 %i.h, 12
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %21, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str)
          to label %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit unwind label %bb.g

_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit: ; preds = %bb.d
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %21) #24
  %i.j = load ptr, ptr %21, align 8, !tbaa !45    ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !48

bb.e:                                             ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !50, !range !60, !noundef !61
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %21) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status7InvalidIJRA43_KcEEES0_DpOT_.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.ip

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #24
  br label %bb.is

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #24
  %i.o = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef 0, i64 noundef 6)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %22, align 8, !tbaa !45
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.l, label %bb.j, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #24
  br label %bb.ig

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.y = load <2 x ptr>, ptr %i.v, align 8, !tbaa !68, !noalias !69
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !70, !noalias !69
  store ptr null, ptr %i.x, align 8, !tbaa !73, !noalias !69
  store <2 x ptr> %i.y, ptr %23, align 16, !tbaa !68, !alias.scope !69
  store ptr null, ptr %i.v, align 8, !tbaa !70, !noalias !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = icmp ne i32 %i.ac, 826361158
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.fq

bb.m:                                             ; preds = %bb.l
  %i.ag = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #26
          to label %bb.n unwind label %bb.fi      ; 19 uses

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 5 uses
  store i32 1, ptr %i.ah, align 8, !tbaa !74, !noalias !76
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  store i32 1, ptr %i.ai, align 4, !tbaa !79, !noalias !76
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ag, align 8, !tbaa !43, !noalias !76
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 3 uses
  store i64 0, ptr %i.ak, align 8, !noalias !76
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1E, i64 16), ptr %i.aj, align 8, !tbaa !43, !noalias !76
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !noalias !76
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !noalias !76
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ao = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !38, !noalias !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !73, !noalias !80 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread: ; preds = %bb.o
  %i.au = load i32, ptr %i.as, align 4, !tbaa !3
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.as, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.o
  %i.aw = atomicrmw volatile add ptr %i.as, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !73, !noalias !80 ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %.pr.pre.i.i.i.i, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ax, align 8, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i.i, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !79
  %i.bc = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #24, !inline_history !84
  %i.bf = load ptr, ptr %.pr.pre.i.i.i.i, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #24, !inline_history !84
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i9.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i9.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i = phi i32 [ %i.ba, %bb.s ], [ %i.bk, %bb.t ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.u, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !85

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i.i) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.thread, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.q, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !73, !noalias !80
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.n
  %i.bm = phi ptr [ %.pre.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i ], [ %i.ao, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24, !noalias !80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.9") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %.noexc unwind label %bb.fj, !inline_history !86

.noexc:                                           ; preds = %bb.v
  %i.bq = load ptr, ptr %16, align 8, !tbaa !45, !noalias !80
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.y, label %bb.w, !prof !48

bb.w:                                             ; preds = %.noexc
  store ptr null, ptr %25, align 8, !tbaa !45, !alias.scope !80
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.y:                                             ; preds = %.noexc
  %i.bt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !49, !noalias !80 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !80
  %i.bv = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80 ; 2 uses
  %i.bw = add nsw i64 %i.bu, -8                   ; 2 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !43
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.bw, i64 noundef 8)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ca = load ptr, ptr %17, align 8, !tbaa !45, !noalias !80
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.ad, label %bb.aa, !prof !48

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %25, align 8, !tbaa !45, !alias.scope !80
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZN5arrow6StatusC2ERKS0_.exit50.i unwind label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70, !noalias !93 ; 2 uses
  store ptr %i.cf, ptr %18, align 8, !tbaa !70, !alias.scope !94, !noalias !80
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73, !noalias !93 ; 3 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !73, !noalias !93
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !73, !alias.scope !94, !noalias !80
  store ptr null, ptr %i.ce, align 8, !tbaa !70, !noalias !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = icmp ne i32 %i.cm, 826361158
  %i.co = zext i1 %i.cn to i32
  %.not.i50 = icmp eq i32 %i.co, 0
  br i1 %.not.i50, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.4)
          to label %_ZN5arrow6Status7InvalidIJRA31_KcEEES0_DpOT_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ag:                                            ; preds = %bb.ad
  %i.cq = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cr = add i32 %i.cq, 12
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp slt i64 %i.bu, %i.cs
  br i1 %i.ct, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(45) @.str.5)
          to label %_ZN5arrow6Status7InvalidIJRA31_KcEEES0_DpOT_.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !80
  %i.cv = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80 ; 2 uses
  %i.cw = zext i32 %i.cq to i64                   ; 2 uses
  %i.cx = sub nsw i64 %i.bw, %i.cw
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %19, align 8, !tbaa !45, !noalias !80
  %i.dc = icmp eq ptr %i.db, null
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE:bb.a

bb.eu:                                            ; preds = %bb.es
  %i.sp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i.i.i.i.i.i74.i = icmp eq i8 %i.sp, 0
  br i1 %.not.i.i.i.i.i.i74.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.sq = add nsw i32 %i.sh, -1
  store i32 %i.sq, ptr %i.se, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i75.i

bb.ew:                                            ; preds = %bb.eu
  %i.sr = atomicrmw volatile add ptr %i.se, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i75.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i75.i: ; preds = %bb.ew, %bb.ev
  %.0.i.i.i.i.i.i.i76.i = phi i32 [ %i.sh, %bb.ev ], [ %i.sr, %bb.ew ]
  %i.ss = icmp eq i32 %.0.i.i.i.i.i.i.i76.i, 1
  br i1 %i.ss, label %bb.ex, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i, !prof !85

bb.ex:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i75.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sd) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i: ; preds = %bb.ex, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i75.i, %bb.et, %bb.er
  %.pr.i78.i = load ptr, ptr %17, align 8, !tbaa !45, !noalias !80 ; 2 uses
  %.not.i.i79.i = icmp eq ptr %.pr.i78.i, null
  br i1 %.not.i.i79.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit80.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i71.i, !prof !154

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i71.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i, %_ZN5arrow6StatusC2ERKS0_.exit50.i
  %i.st = phi ptr [ %.pr.i78.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i ], [ %i.sa, %_ZN5arrow6StatusC2ERKS0_.exit50.i ]
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 1
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !50, !range !60, !noundef !61
  %i.sw = trunc nuw i8 %i.sv to i1
  br i1 %i.sw, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit80.i, label %bb.ey

bb.ey:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i71.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %17) #24
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit80.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit80.i: ; preds = %bb.ey, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i71.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i77.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !80
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i

bb.ez:                                            ; preds = %bb.eq, %bb.ac
  %.pn44.i = phi { ptr, i32 } [ %i.cd, %bb.ac ], [ %.pn41.i, %bb.eq ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !80
  br label %bb.fc

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev.exit80.i, %bb.w
  %i.sx = load ptr, ptr %16, align 8, !tbaa !45, !noalias !80 ; 2 uses
  %.not.i.i81.i = icmp eq ptr %i.sx, null
  br i1 %.not.i.i81.i, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.fa, !prof !48

bb.fa:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !50, !range !60, !noundef !61
  %i.ta = trunc nuw i8 %i.sz to i1
  br i1 %i.ta, label %_ZN5arrow6StatusD2Ev.exit52, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #24
  br label %_ZN5arrow6StatusD2Ev.exit52

bb.fc:                                            ; preds = %bb.ez, %bb.ab, %bb.x
  %.pn48.i = phi { ptr, i32 } [ %i.bs, %bb.x ], [ %i.cc, %bb.ab ], [ %.pn44.i, %bb.ez ]
  %i.tb = load ptr, ptr %16, align 8, !tbaa !45, !noalias !80 ; 2 uses
  %.not.i.i83.i = icmp eq ptr %i.tb, null
  br i1 %.not.i.i83.i, label %_ZN5arrow6ResultIlED2Ev.exit85.i, label %bb.fd, !prof !48

bb.fd:                                            ; preds = %bb.fc
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 1
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !50, !range !60, !noundef !61
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %_ZN5arrow6ResultIlED2Ev.exit85.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #24
  br label %_ZN5arrow6ResultIlED2Ev.exit85.i

_ZN5arrow6ResultIlED2Ev.exit85.i:                 ; preds = %bb.fe, %bb.fd, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !80
  br label %.body

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.fb, %bb.fa, %_ZN5arrow6StatusC2ERKS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !80
  %i.tf = load ptr, ptr %25, align 8, !tbaa !45   ; 2 uses
  store ptr %i.tf, ptr %24, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %.thread, label %bb.ff, !prof !48

bb.ff:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit52
  call void @_ZN5arrow6ResultISt10shared_ptrINS_3ipc7feather6ReaderEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %24) #24
  %i.th = load ptr, ptr %24, align 8, !tbaa !45   ; 2 uses
  %.not.i53 = icmp eq ptr %i.th, null
  br i1 %.not.i53, label %bb.fk, label %bb.fg, !prof !48

bb.fg:                                            ; preds = %bb.ff
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !50, !range !60, !noundef !61
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #24
  br label %bb.fk

bb.fi:                                            ; preds = %bb.m
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.fj:                                            ; preds = %bb.v
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.fj, %_ZN5arrow6ResultIlED2Ev.exit85.i
  %.pn31 = phi { ptr, i32 } [ %.pn48.i, %_ZN5arrow6ResultIlED2Ev.exit85.i ], [ %i.tm, %bb.fj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call fastcc void @_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.ag) #24
  br label %.body61

.thread:                                          ; preds = %_ZN5arrow6StatusD2Ev.exit52
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  store ptr null, ptr %0, align 8, !tbaa !45
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.tn, align 8, !tbaa !156
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.to, align 8, !tbaa !73
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fk:                                            ; preds = %bb.ff, %bb.fg, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  %i.tp = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.tq = icmp eq i64 %i.tp, 4294967297
  %i.tr = trunc i64 %i.tp to i32                  ; 2 uses
  br i1 %i.tq, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  store i32 0, ptr %i.ah, align 8, !tbaa !74
  store i32 0, ptr %i.ai, align 4, !tbaa !79
  %i.ts = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #24, !inline_history !159
  %i.tv = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #24, !inline_history !159
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fm:                                            ; preds = %bb.fk
  %i.ty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.i.i.i, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tz = add nsw i32 %i.tr, -1
  store i32 %i.tz, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.fo:                                            ; preds = %bb.fm
  %i.ua = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.fo, %bb.fn
  %.0.i.i.i.i = phi i32 [ %i.tr, %bb.fn ], [ %i.ua, %bb.fo ]
  %i.ub = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ub, label %bb.fp, label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.fp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #24
  br label %_ZNSt12__shared_ptrIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fq:                                            ; preds = %bb.l
  %i.uc = load i32, ptr %i.ab, align 1
  %i.ud = xor i32 %i.uc, 1330795073
  %i.ue = getelementptr i8, ptr %i.ab, i64 4
  %i.uf = load i16, ptr %i.ue, align 1
  %i.ug = zext i16 %i.uf to i32
  %i.uh = xor i32 %i.ug, 12631
  %i.ui = or i32 %i.ud, %i.uh
  %i.uj = icmp ne i32 %i.ui, 0
  %i.uk = zext i1 %i.uj to i32
  %i.ul = icmp eq i32 %i.uk, 0
  br i1 %i.ul, label %bb.fr, label %bb.hw

bb.fr:                                            ; preds = %bb.fq
  %i.um = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #26
          to label %.noexc60 unwind label %bb.ho  ; 25 uses

.noexc60:                                         ; preds = %bb.fr
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8 ; 5 uses
  store i32 1, ptr %i.un, align 8, !tbaa !74, !noalias !160
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 12 ; 2 uses
  store i32 1, ptr %i.uo, align 4, !tbaa !79, !noalias !160
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.um, align 8, !tbaa !43, !noalias !160
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 16 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.um, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.uq, i8 0, i64 88, i1 false), !noalias !160
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2E, i64 16), ptr %i.up, align 8, !tbaa !43, !noalias !160
  %i.ur = getelementptr inbounds nuw i8, ptr %i.um, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ur, i8 0, i64 32, i1 false), !noalias !160
  store i32 64, ptr %i.uq, align 8, !tbaa !163, !noalias !160
  %i.us = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.fu, !noalias !160

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc60
  %i.ut = getelementptr inbounds nuw i8, ptr %i.um, i64 64
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !171, !noalias !160
  %i.uu = getelementptr inbounds nuw i8, ptr %i.um, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uu, i8 0, i64 24, i1 false), !noalias !160
  %i.uv = getelementptr inbounds nuw i8, ptr %i.um, i64 96 ; 2 uses
  store i8 1, ptr %i.uv, align 8, !tbaa !172, !noalias !160
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 97
  store i8 1, ptr %i.uw, align 1, !tbaa !173, !noalias !160
  %i.ux = getelementptr inbounds nuw i8, ptr %i.um, i64 104
  store i64 0, ptr %i.ux, align 8, !tbaa !174, !noalias !160
  %i.uy = getelementptr inbounds nuw i8, ptr %i.um, i64 112
  invoke void @_ZN5arrow2io12CacheOptions12LazyDefaultsEv(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::io::CacheOptions") align 8 %i.uy)
          to label %_ZSt11make_sharedIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EJEESt10shared_ptrIT_EDpOT0_.exit unwind label %bb.fs, !noalias !160

bb.fs:                                            ; preds = %.noexc.i.i.i.i.i.i.i
  %i.uz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.va = load ptr, ptr %i.uu, align 8, !tbaa !33, !noalias !160 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.va, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.vb = getelementptr inbounds nuw i8, ptr %i.um, i64 88
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !37, !noalias !160
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #25, !noalias !160
  br label %.body.i.i.i.i.i.i.i

bb.fu:                                            ; preds = %.noexc60
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.fu, %bb.ft, %bb.fs
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.vg, %bb.fu ], [ %i.uz, %bb.ft ], [ %i.uz, %bb.fs ]
  %i.vh = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.vh) #24, !noalias !160
  call void @_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ur) #24, !noalias !160
  call void @_ZdlPvm(ptr noundef nonnull %i.um, i64 noundef 144) #25, !noalias !160
  br label %.body61

_ZSt11make_sharedIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EJEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %.noexc.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  %.val46 = load ptr, ptr %1, align 8, !tbaa !38
  %i.vi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val47 = load ptr, ptr %i.vi, align 8, !tbaa !73 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  store ptr %.val46, ptr %i.ur, align 8, !tbaa !38, !noalias !175
  %i.vj = getelementptr inbounds nuw i8, ptr %i.um, i64 32 ; 3 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !73, !noalias !175 ; 3 uses
  %.not.i.i.i.i63 = icmp eq ptr %.val47, %i.vk
  br i1 %.not.i.i.i.i63, label %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEaSERKS3_.exit.i, label %bb.fv

bb.fv:                                            ; preds = %_ZSt11make_sharedIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EJEESt10shared_ptrIT_EDpOT0_.exit
  %.not7.i.i.i.i64 = icmp eq ptr %.val47, null
  br i1 %.not7.i.i.i.i64, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.vl = getelementptr inbounds nuw i8, ptr %.val47, i64 8 ; 3 uses
  %i.vm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !175
  %.not.i.i.i.i.i65 = icmp eq i8 %i.vm, 0
  br i1 %.not.i.i.i.i.i65, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.vn = load i32, ptr %i.vl, align 4, !tbaa !3, !noalias !175
  %i.vo = add nsw i32 %i.vn, 1
  store i32 %i.vo, ptr %i.vl, align 4, !tbaa !3, !noalias !175
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66

bb.fy:                                            ; preds = %bb.fw
  %i.vp = atomicrmw volatile add ptr %i.vl, i32 1 acq_rel, align 4, !noalias !175 ; 0 uses
  %.pr.pre.i.i.i.i81 = load ptr, ptr %i.vj, align 8, !tbaa !73, !noalias !175
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66: ; preds = %bb.fy, %bb.fx, %bb.fv
  %i.vq = phi ptr [ %i.vk, %bb.fv ], [ %i.vk, %bb.fx ], [ %.pr.pre.i.i.i.i81, %bb.fy ] ; 8 uses
  %.not8.i.i.i.i67 = icmp eq ptr %i.vq, null
  br i1 %.not8.i.i.i.i67, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, label %bb.fz

bb.fz:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 4 uses
  %i.vs = load atomic i64, ptr %i.vr acquire, align 8, !noalias !175 ; 2 uses
  %i.vt = icmp eq i64 %i.vs, 4294967297
  %i.vu = trunc i64 %i.vs to i32                  ; 2 uses
  br i1 %i.vt, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  store i32 0, ptr %i.vr, align 8, !tbaa !74, !noalias !175
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vq, i64 12
  store i32 0, ptr %i.vv, align 4, !tbaa !79, !noalias !175
  %i.vw = load ptr, ptr %i.vq, align 8, !tbaa !43, !noalias !175
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8, !noalias !175
  call void %i.vy(ptr noundef nonnull align 8 dereferenceable(16) %i.vq) #24, !noalias !175, !inline_history !178
  %i.vz = load ptr, ptr %i.vq, align 8, !tbaa !43, !noalias !175
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wb = load ptr, ptr %i.wa, align 8, !noalias !175
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(16) %i.vq) #24, !noalias !175, !inline_history !178
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71

bb.gb:                                            ; preds = %bb.fz
  %i.wc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !175
  %.not.i9.i.i.i.i68 = icmp eq i8 %i.wc, 0
  br i1 %.not.i9.i.i.i.i68, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.wd = add nsw i32 %i.vu, -1
  store i32 %i.wd, ptr %i.vr, align 8, !tbaa !3, !noalias !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69

bb.gd:                                            ; preds = %bb.gb
  %i.we = atomicrmw volatile add ptr %i.vr, i32 -1 acq_rel, align 4, !noalias !175
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69: ; preds = %bb.gd, %bb.gc
  %.0.i.i.i.i.i.i70 = phi i32 [ %i.vu, %bb.gc ], [ %i.we, %bb.gd ]
  %i.wf = icmp eq i32 %.0.i.i.i.i.i.i70, 1
  br i1 %i.wf, label %bb.ge, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, !prof !85

bb.ge:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.vq) #24, !noalias !175
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71: ; preds = %bb.ge, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69, %bb.ga, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66
  store ptr %.val47, ptr %i.vj, align 8, !tbaa !73, !noalias !175
  br label %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEaSERKS3_.exit.i

_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEaSERKS3_.exit.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, %_ZSt11make_sharedIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EJEESt10shared_ptrIT_EDpOT0_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.uq, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 16, i1 false), !noalias !175
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.wh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.uu, ptr noundef nonnull align 8 dereferenceable(24) %i.wg)
          to label %.noexc82 unwind label %bb.hp  ; 0 uses

.noexc82:                                         ; preds = %_ZNSt10shared_ptrIN5arrow2io16RandomAccessFileEEaSERKS3_.exit.i
  %i.wi = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.uv, ptr noundef nonnull align 8 dereferenceable(48) %i.wi, i64 48, i1 false), !noalias !175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !175
  invoke void @_ZN5arrow3ipc21RecordBatchFileReader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.87") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ur, ptr noundef nonnull align 8 dereferenceable(88) %i.uq)
          to label %.noexc83 unwind label %bb.hp

.noexc83:                                         ; preds = %.noexc82
  %i.wj = load ptr, ptr %3, align 8, !tbaa !45, !noalias !175
  %i.wk = icmp eq ptr %i.wj, null
  br i1 %i.wk, label %bb.gh, label %bb.gf, !prof !48

bb.gf:                                            ; preds = %.noexc83
  store ptr null, ptr %27, align 8, !tbaa !45, !alias.scope !175
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i72 unwind label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.gh:                                            ; preds = %.noexc83
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24, !noalias !175
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.wm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.wp = load <2 x ptr>, ptr %i.wm, align 8, !tbaa !68, !noalias !185
  %i.wq = load ptr, ptr %i.wm, align 8, !tbaa !186, !noalias !185 ; 2 uses
  store ptr null, ptr %i.wo, align 8, !tbaa !73, !noalias !185
  store <2 x ptr> %i.wp, ptr %4, align 16, !tbaa !68, !alias.scope !189, !noalias !175
  store ptr null, ptr %i.wm, align 8, !tbaa !186, !noalias !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !175
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !43, !noalias !175
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !175
  invoke void %i.wt(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.wq)
          to label %bb.gi unwind label %bb.hb, !noalias !175

bb.gi:                                            ; preds = %bb.gh
  %i.wu = getelementptr inbounds nuw i8, ptr %i.um, i64 40
  %i.wv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.wx = load <2 x ptr>, ptr %5, align 16, !tbaa !68, !noalias !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !noalias !175
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !73, !noalias !175 ; 8 uses
  store <2 x ptr> %i.wx, ptr %i.wu, align 8, !tbaa !68, !noalias !175
  %.not.i.i.i.i12.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i.i.i12.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEaSEOS2_.exit.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 4 uses
  %i.xa = load atomic i64, ptr %i.wz acquire, align 8, !noalias !175 ; 2 uses
  %i.xb = icmp eq i64 %i.xa, 4294967297
  %i.xc = trunc i64 %i.xa to i32                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc7feather10WriteTableERKNS_5TableEPNS_2io12OutputStreamERKNS1_15WritePropertiesE:bb.a
_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bq
  %i.lj = ashr exact i64 %i.lh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 2305843009213693951)
  %i.ln = select i1 %i.ll, i64 2305843009213693951, i64 %i.lm ; 3 uses
  %.not.i.i.i123.i = icmp ne i64 %i.ln, 0
  call void @llvm.assume(i1 %.not.i.i.i123.i)
  %i.lo = shl nuw nsw i64 %i.ln, 2
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #26
          to label %.noexc126.i unwind label %.loopexit.i, !noalias !208 ; 8 uses

.noexc126.i:                                      ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh
  store i32 %i.ko, ptr %i.lq, align 4, !tbaa !3, !noalias !208
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0185.0.i, %.sroa.13.0.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc126.i
  %i.lr = ptrtoaddr ptr %i.lp to i64
  %i.ls = add i64 %i.lf, -4
  %i.lt = sub i64 %i.ls, %i.lg                    ; 2 uses
  %i.lu = lshr i64 %i.lt, 2
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.lt, 28
  %i.lw = sub i64 %i.lr, %i.lg
  %diff.check = icmp ult i64 %i.lw, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader278, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.lv, 9223372036854775800     ; 3 uses
  %i.lx = shl i64 %n.vec, 2                       ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lp, i64 %i.lx  ; 2 uses
  %i.lz = getelementptr i8, ptr %.sroa.0185.0.i, i64 %i.lx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ma = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.lp, i64 %i.ma ; 2 uses
  %next.gep275 = getelementptr i8, ptr %.sroa.0185.0.i, i64 %i.ma ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.mb = getelementptr i8, ptr %next.gep275, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep275, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  %wide.load276 = load <4 x i32>, ptr %i.mb, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  %i.mc = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  store <4 x i32> %wide.load276, ptr %i.mc, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.md = icmp eq i64 %index.next, %n.vec
  br i1 %i.md, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader278

.lr.ph.i.i.i.i.i.i.preheader278:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ly, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0185.0.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader278, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader278 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader278 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  %i.me = load i32, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !312, !noalias !314
  store i32 %i.me, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !309, !noalias !315
  %i.mf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i124.i = icmp eq ptr %i.mf, %.sroa.13.0.i
  br i1 %.not.i.i.i.i.i124.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !319

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc126.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.lp, %.noexc126.i ], [ %i.ly, %middle.block ], [ %i.mg, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0185.0.i, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0.i, i64 noundef %i.lh) #25, !noalias !208
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i: ; preds = %bb.bs, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i.i
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.ln
  br label %.critedge82.i

.critedge82.i:                                    ; preds = %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i, %bb.bp
  %.sroa.13.5.i = phi ptr [ %i.mh, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.13.0.i, %bb.bp ]
  %.0.lcssa.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.9.0.i, %bb.bp ]
  %.sroa.0185.5.i = phi ptr [ %i.lp, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE17_M_realloc_insertIJRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_.exit.i.i ], [ %.sroa.0185.0.i, %bb.bp ]
  %.sroa.9.3.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.i, i64 4
  %i.mi = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mj = icmp eq ptr %i.mi, %i.ad
  br i1 %i.mj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.critedge82.i
  %i.mk = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.ml = add i64 %i.mk, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.ml) #25, !noalias !208
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %.critedge82.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  %i.mm = add nuw nsw i32 %.058.i, 1
  br label %bb.c, !llvm.loop !320

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit104.i
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadata13WriteMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEE.exit.i, %_ZN5arrow3ipc7feather3fbs18CreateTimeMetadataERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_8TimeUnitE.exit.i.invoke.i, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i.i, %bb.bg, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i.i, %bb.be, %_ZN22arrow_vendored_private11flatbuffers16DefaultAllocator8allocateEm.exit.i.i175.i, %bb.bb, %_ZN22arrow_vendored_private11flatbuffers9Allocator19reallocate_downwardEPhmmmm.exit.i.i172.i, %bb.az, %bb.as, %bb.ar, %.noexc110.i, %bb.ap, %bb.ao, %_ZNK5arrow5Table5fieldEi.exit.i
  %i.mo = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #24, !noalias !208
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn62.i = phi { ptr, i32 } [ %i.mo, %bb.bu ], [ %i.mn, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24, !noalias !208
  br label %bb.bw

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %bb.br
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.bv, %bb.ak
  %.pn64.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.ak ], [ %.pn62.i, %bb.bv ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.mp = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.ad
  br i1 %i.mq, label %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i: ; preds = %bb.bw
  %i.mr = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #25, !noalias !208
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i

_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  br label %bb.co

.critedge83.i:                                    ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.mt = load ptr, ptr %i.ac, align 8, !tbaa !130, !noalias !208 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.ad
  br i1 %i.mu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i: ; preds = %.critedge83.i
  %i.mv = load i64, ptr %i.ad, align 8, !tbaa !83, !noalias !208
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #25, !noalias !208
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i: ; preds = %.critedge83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24, !noalias !208
  br label %bb.cm

.critedge85.i:                                    ; preds = %_ZNK5arrow5Table11num_columnsEv.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !321, !noalias !208
  %i.mz = icmp eq ptr %.sroa.0185.0.i, %.sroa.9.0.i
  %spec.select.i.i.i = select i1 %i.mz, ptr @_ZZN22arrow_vendored_private11flatbuffers4dataINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EEEPKT_RKSt6vectorISA_T0_EE1t, ptr %.sroa.0185.0.i
  %i.na = ptrtoint ptr %.sroa.9.0.i to i64
  %i.nb = ptrtoint ptr %.sroa.0185.0.i to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 2
  %i.ne = invoke i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorIN5arrow3ipc7feather3fbs6ColumnEEENS0_6OffsetINS0_6VectorINS9_IT_EEjEEEEPKSC_m(ptr noundef nonnull align 8 dereferenceable(128) %12, ptr noundef %spec.select.i.i.i, i64 noundef %i.nd)
          to label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i unwind label %bb.ca, !noalias !208

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i: ; preds = %.critedge85.i
  %i.nf = invoke i32 @_ZN5arrow3ipc7feather3fbs12CreateCTableERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEElNS8_INS4_6VectorINS8_INS2_6ColumnEEEjEEEEiSA_(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 0, i64 noundef %i.my, i32 %i.ne, i32 noundef 2, i32 0)
          to label %bb.bx unwind label %bb.ca, !noalias !208

bb.bx:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  invoke void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE6FinishEjPKcb(ptr noundef nonnull align 8 dereferenceable(128) %12, i32 noundef %i.nf, ptr noundef null, i1 noundef zeroext false)
          to label %bb.by unwind label %bb.ca, !noalias !208

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24, !noalias !208
  %i.ng = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 8, !tbaa !302, !noalias !208
  %i.nh = load i32, ptr %i.s, align 8, !tbaa !225, !noalias !208
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ni = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #26
          to label %.noexc135.i unwind label %bb.cb, !noalias !208 ; 14 uses

.noexc135.i:                                      ; preds = %bb.by
  %i.nj = zext i32 %i.nh to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 5 uses
  store i32 1, ptr %i.nk, align 8, !tbaa !74, !noalias !326
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 12 ; 2 uses
  store i32 1, ptr %i.nl, align 4, !tbaa !79, !noalias !326
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ni, align 8, !tbaa !43, !noalias !326
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  invoke void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %i.nm, ptr noundef %i.ng, i64 noundef %i.nj)
          to label %bb.bz unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !326

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc135.i
  %i.nn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ni, i64 noundef 96) #25, !noalias !326
  br label %.body136.i

bb.bz:                                            ; preds = %.noexc135.i
  %i.no = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ni, ptr %i.no, align 8, !tbaa !73, !alias.scope !323, !noalias !208
  store ptr %i.nm, ptr %17, align 8, !tbaa !327, !alias.scope !323, !noalias !208
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 25
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !101, !range !60, !noalias !208, !noundef !61
  %i.nr = trunc nuw i8 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nt = load ptr, ptr %i.ns, align 8, !noalias !208
  %i.nu = select i1 %i.nr, ptr %i.nt, ptr null, !prof !48
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ni, i64 40
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !328, !noalias !208 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !329
  %i.nx = load ptr, ptr %2, align 8, !tbaa !43, !noalias !329
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = load ptr, ptr %i.ny, align 8, !noalias !329
  invoke void %i.nz(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.nu, i64 noundef %i.nw)
          to label %.noexc140.i unwind label %bb.cc, !noalias !208, !inline_history !334

.noexc140.i:                                      ; preds = %bb.bz
  %i.oa = load ptr, ptr %5, align 8, !tbaa !45, !noalias !329 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !329
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %_ZN5arrow6StatusD2Ev.exit84.i.i138.i, label %_ZN5arrow6StatusD2Ev.exit144.thread.i

_ZN5arrow6StatusD2Ev.exit84.i.i138.i:             ; preds = %.noexc140.i
  %i.oc = add nsw i64 %i.nw, 7
  %i.od = sdiv i64 %i.oc, 8
  %i.oe = shl nsw i64 %i.od, 3                    ; 3 uses
  %.not71.i.i.i = icmp eq i64 %i.oe, %i.nw
  br i1 %.not71.i.i.i, label %_ZN5arrow6StatusD2Ev.exit148.i, label %_ZN5arrow6StatusD2Ev.exit98.i.i.i

_ZN5arrow6StatusD2Ev.exit98.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit84.i.i138.i
  %i.of = sub nsw i64 %i.oe, %i.nw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !329
  %i.og = load ptr, ptr %2, align 8, !tbaa !43, !noalias !329
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !noalias !329
  invoke void %i.oi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @_ZN5arrow3ipc7feather12_GLOBAL__N_113kPaddingBytesE, i64 noundef %i.of)
          to label %.noexc141.i unwind label %bb.cc, !noalias !208, !inline_history !334

.noexc141.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i
  %i.oj = load ptr, ptr %6, align 8, !tbaa !45, !noalias !329 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !329
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %_ZN5arrow6StatusD2Ev.exit148.i, label %_ZN5arrow6StatusD2Ev.exit144.thread.i

_ZN5arrow6StatusD2Ev.exit144.thread.i:            ; preds = %.noexc141.i, %.noexc140.i
  %.ph193.i = phi ptr [ %i.oa, %.noexc140.i ], [ %i.oj, %.noexc141.i ]
  store ptr %.ph193.i, ptr %0, align 8, !tbaa !45, !alias.scope !208
  br label %.critedge87.i

bb.ca:                                            ; preds = %bb.bx, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i, %.critedge85.i
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cb:                                            ; preds = %bb.by
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %.body136.i

bb.cc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit98.i.i.i, %bb.bz
  %i.on = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

_ZN5arrow6StatusD2Ev.exit148.i:                   ; preds = %.noexc141.i, %_ZN5arrow6StatusD2Ev.exit84.i.i138.i
  store ptr null, ptr %0, align 8, !tbaa !45, !alias.scope !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !208
  %i.oo = trunc i64 %i.oe to i32
  store i32 %i.oo, ptr %i.a, align 4, !tbaa !3, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !208
  %i.op = load ptr, ptr %2, align 8, !tbaa !43, !noalias !208
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !208
  invoke void %i.or(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 4)
          to label %_ZN5arrow6StatusD2Ev.exit150.i unwind label %bb.cd, !noalias !208

_ZN5arrow6StatusD2Ev.exit150.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit148.i
  %i.os = load ptr, ptr %18, align 8, !tbaa !45, !noalias !208 ; 2 uses
  store ptr %i.os, ptr %0, align 8, !tbaa !45, !alias.scope !208
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !208
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN5arrow6StatusD2Ev.exit154.i, label %.critedge89.i

bb.cd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit148.i
  %i.ou = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24, !noalias !208
  br label %bb.cf

_ZN5arrow6StatusD2Ev.exit154.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit150.i
  %i.ov = load ptr, ptr %2, align 8, !tbaa !43, !noalias !208
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !208
  invoke void %i.ox(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.1, i64 noundef 4)
          to label %.critedge89.i unwind label %bb.ce

bb.ce:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit154.i
  %i.oy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.critedge89.i:                                    ; preds = %_ZN5arrow6StatusD2Ev.exit154.i, %_ZN5arrow6StatusD2Ev.exit150.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !208
  br label %.critedge87.i

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn74.i = phi { ptr, i32 } [ %i.oy, %bb.ce ], [ %i.ou, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !208
  br label %bb.cl

.critedge87.i:                                    ; preds = %.critedge89.i, %_ZN5arrow6StatusD2Ev.exit144.thread.i
  %i.oz = load atomic i64, ptr %i.nk acquire, align 8 ; 2 uses
  %i.pa = icmp eq i64 %i.oz, 4294967297
  %i.pb = trunc i64 %i.oz to i32                  ; 2 uses
  br i1 %i.pa, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.critedge87.i
  store i32 0, ptr %i.nk, align 8, !tbaa !74
  store i32 0, ptr %i.nl, align 4, !tbaa !79
  %i.pc = load ptr, ptr %i.ni, align 8, !tbaa !43
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #24, !inline_history !335
  %i.pf = load ptr, ptr %i.ni, align 8, !tbaa !43
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #24, !inline_history !335
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ch:                                            ; preds = %.critedge87.i
  %i.pi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !208
  %.not.i.i.i156.i = icmp eq i8 %i.pi, 0
  br i1 %.not.i.i.i156.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pj = add nsw i32 %i.pb, -1
  store i32 %i.pj, ptr %i.nk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157.i

bb.cj:                                            ; preds = %bb.ch
  %i.pk = atomicrmw volatile add ptr %i.nk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157.i: ; preds = %bb.cj, %bb.ci
  %.0.i.i.i.i158.i = phi i32 [ %i.pb, %bb.ci ], [ %i.pk, %bb.cj ]
  %i.pl = icmp eq i32 %.0.i.i.i.i158.i, 1
  br i1 %i.pl, label %bb.ck, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !85

bb.ck:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ni) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i157.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !208
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cf, %bb.cc
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn74.i, %bb.cf ], [ %i.on, %bb.cc ]
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #24
  br label %.body136.i

.body136.i:                                       ; preds = %bb.cl, %bb.cb, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i
  %.pn74.pn.pn.i = phi { ptr, i32 } [ %.pn74.pn.i, %bb.cl ], [ %i.nn, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i ], [ %i.om, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24, !noalias !208
  br label %bb.co

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i131.i
  %.not.i.i.i159.i = icmp eq ptr %.sroa.0185.0.i, null
  br i1 %.not.i.i.i159.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EED2Ev.exit.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pm = ptrtoint ptr %.sroa.13.0.i to i64
  %i.pn = ptrtoint ptr %.sroa.0185.0.i to i64
  %i.po = sub i64 %i.pm, %i.pn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0185.0.i, i64 noundef %i.po) #25
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EED2Ev.exit.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EED2Ev.exit.i: ; preds = %bb.cn, %bb.cm
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %12) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24, !noalias !208
  br label %_ZN5arrow3ipc7feather12_GLOBAL__N_114WriteFeatherV1ERKNS_5TableEPNS_2io12OutputStreamE.exit

bb.co:                                            ; preds = %.body136.i, %bb.ca, %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i, %bb.d
  %.pn74.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.az, %bb.d ], [ %.pn64.pn.i, %_ZN5arrow3ipc7feather12_GLOBAL__N_114ColumnMetadataD2Ev.exit129.i ], [ %.pn74.pn.pn.i, %.body136.i ], [ %i.ol, %bb.ca ]
  %.not.i.i.i160.i = icmp eq ptr %.sroa.0185.0.i, null
  br i1 %.not.i.i.i160.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN5arrow3ipc7feather3fbs6ColumnEEESaIS8_EED2Ev.exit161.i, label %bb.cp

end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc7feather3fbs12CreateCTableERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS4_6OffsetINS4_6StringEEElNS8_INS4_6VectorINS8_INS2_6ColumnEEEjEEEEiSA_:bb.a

.lr.ph.preheader.i.i.i.i.i28:                     ; preds = %bb.m, %bb.l
  %i.bn = phi i32 [ %i.bc, %bb.l ], [ %.pre.i.i.i.i37, %bb.m ]
  %i.bo = phi ptr [ %.pre4.i.i.i.i.i.i27, %bb.l ], [ %.pre.i.i.i.i.i.i36, %bb.m ]
  %i.bp = sub nsw i64 0, %i.bf
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 %i.bp
  store ptr %i.bq, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302
  %i.br = add i32 %i.bn, %i.be
  store i32 %i.br, ptr %i.b, align 8, !tbaa !225
  br label %.lr.ph.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i29.epil:                          ; preds = %.lr.ph.i.i.i.i.i29.epil, %.lr.ph.preheader.i.i.i.i.i28
  %.05.i.i.i.i.i30.epil = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i29.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i28 ] ; 2 uses
  %epil.iter63 = phi i64 [ %epil.iter63.next, %.lr.ph.i.i.i.i.i29.epil ], [ 0, %.lr.ph.preheader.i.i.i.i.i28 ]
  %i.bs = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i26, align 8, !tbaa !302
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.05.i.i.i.i.i30.epil
  store i8 0, ptr %i.bt, align 1, !tbaa !83
  %i.bu = add nuw i64 %.05.i.i.i.i.i30.epil, 1
  %epil.iter63.next = add i64 %epil.iter63, 1     ; 2 uses
  %epil.iter63.cmp.not = icmp eq i64 %epil.iter63.next, %i.bf
  br i1 %epil.iter63.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32, label %.lr.ph.i.i.i.i.i29.epil, !llvm.loop !428

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32: ; preds = %.lr.ph.i.i.i.i.i29.epil
  %.pre.i.i.i33 = load i32, ptr %i.b, align 8, !tbaa !225
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i24
  %i.bv = phi i32 [ %.pre.i.i.i33, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.i.i32 ], [ %i.bc, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i24 ]
  %reass.sub46 = sub i32 %i.bv, %1
  %i.bw = add i32 %reass.sub46, 4
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIjEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i32 noundef %i.bw, i32 noundef 0)
  br label %_ZN5arrow3ipc7feather3fbs13CTableBuilder15add_descriptionEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit

_ZN5arrow3ipc7feather3fbs13CTableBuilder15add_descriptionEN22arrow_vendored_private11flatbuffers6OffsetINS5_6StringEEE.exit: ; preds = %_ZN5arrow3ipc7feather3fbs13CTableBuilder11add_columnsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorINS6_INS2_6ColumnEEEjEEEE.exit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE7ReferToEj.exit.i.i34
  %i.bx = tail call noundef i32 @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE8EndTableEj(ptr noundef nonnull align 8 dereferenceable(128) %0, i32 noundef %i.c)
  ret i32 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !234  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !429
  invoke void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3setIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EED2Ev.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !304  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8, !tbaa !217    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !224
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %i.h, i64 noundef %i.k)
          to label %bb.h unwind label %bb.k, !inline_history !434

bb.g:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  store ptr null, ptr %i.g, align 8, !tbaa !304
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !220, !range !60, !noundef !61
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.i, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %0, align 8, !tbaa !217    ; 3 uses
  %.not.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i1.i, label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #24, !inline_history !435
  br label %_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjED2Ev.exit: ; preds = %bb.h, %bb.i, %bb.j
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %31 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %35 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %37 = alloca %"class.arrow::Result.172", align 8 ; 49 uses
  %38 = alloca %"class.arrow::Result.9", align 8  ; 11 uses
  %39 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %40 = alloca %"class.std::shared_ptr.138", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %41 = alloca %"class.std::shared_ptr.138", align 8 ; 6 uses
  %42 = alloca %"struct.arrow::ipc::feather::(anonymous namespace)::ArrayWriterV1", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !250  ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !256
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !436
  store i64 %i.l, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !454
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.o = invoke noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.d, align 8, !tbaa !49
  %i.p = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26
          to label %.noexc unwind label %bb.d     ; 7 uses

.noexc:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !74, !noalias !457
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !79, !noalias !457
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.p, align 8, !tbaa !43, !noalias !457
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow11StringArrayEJlDnDnRKSt10shared_ptrINS0_6BufferEElEEvPT_DpOT0_(ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, !noalias !457

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i: ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 64) #25, !noalias !457
  br label %.body

_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %.noexc
  store ptr %i.s, ptr %40, align 8, !tbaa !460
  %i.u = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.p, ptr %i.u, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.d ], [ %i.t, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow11StringArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit13.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.jt

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.138") align 8 %41, ptr noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.f

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e
  %i.w = load ptr, ptr %41, align 8, !tbaa !246   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73   ; 2 uses
  store ptr %i.w, ptr %40, align 8, !tbaa !460
  %i.z = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %i.y, ptr %i.z, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %bb.jt

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ab = phi ptr [ %i.y, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.p, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %i.ac = phi ptr [ %i.w, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.s, %_ZNSt12__shared_ptrIN5arrow11StringArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #24
  store ptr %i.ac, ptr %42, align 8, !tbaa !460
  %i.ad = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %2, ptr %i.ad, align 8, !tbaa !461
  %i.ae = getelementptr inbounds nuw i8, ptr %42, i64 16
  store ptr %3, ptr %i.ae, align 8, !tbaa !465
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 50 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !250, !noalias !466
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !253, !noalias !466 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !256, !noalias !466 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 29
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray7indicesEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ac)
          to label %.noexc18 unwind label %bb.js, !inline_history !469

.noexc18:                                         ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !246, !noalias !466
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_112WriteArrayV1ERKNS_5ArrayEPNS_2io12OutputStreamEPNS2_13ArrayMetadataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef %2, ptr noundef %3)
          to label %_ZN5arrow3ipc7feather12_GLOBAL__N_113ArrayWriterV15WriteEv.exit unwind label %bb.js, !inline_history !469

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #24, !noalias !466
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  switch i32 %i.aj, label %bb.ac [
    i32 1, label %bb.j
    i32 3, label %bb.k
    i32 5, label %bb.l
    i32 7, label %bb.m
    i32 9, label %bb.n
    i32 2, label %bb.o
    i32 4, label %bb.p
    i32 6, label %bb.q
    i32 8, label %bb.r
    i32 11, label %bb.s
    i32 12, label %bb.t
    i32 35, label %bb.u
    i32 14, label %bb.v
    i32 13, label %bb.w
    i32 34, label %bb.x
    i32 16, label %bb.y
    i32 18, label %bb.z
    i32 19, label %bb.aa
    i32 20, label %bb.ab
  ]

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.an = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 0, ptr %i.an, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.k:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ao = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 1, ptr %i.ao, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.l:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ap = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 2, ptr %i.ap, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.m:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.aq = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 3, ptr %i.aq, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.n:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ar = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 4, ptr %i.ar, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.o:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.as = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 5, ptr %i.as, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.p:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.at = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 6, ptr %i.at, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.q:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.au = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 7, ptr %i.au, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.r:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.av = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 8, ptr %i.av, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.s:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.aw = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 9, ptr %i.aw, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.t:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ax = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 10, ptr %i.ax, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.u:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ay = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 18, ptr %i.ay, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.v:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.az = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 12, ptr %i.az, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.w:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.ba = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 11, ptr %i.ba, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.x:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bb = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 17, ptr %i.bb, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread

bb.y:                                             ; preds = %bb.i
  store ptr null, ptr %37, align 8, !tbaa !45, !alias.scope !470
  %i.bc = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 3, ptr %i.bc, align 8, !tbaa !473, !alias.scope !470
  br label %.noexc20.thread
end_hunk_3
begin_hunk_4_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE6FinishEjPKcb:bb.a

.lr.ph.preheader.i.i.i17:                         ; preds = %bb.m, %bb.l
  %i.ce = phi i32 [ %i.bu, %bb.l ], [ %.pre.i.i24, %bb.m ]
  %i.cf = phi ptr [ %.pre4.i.i.i.i16, %bb.l ], [ %.pre.i.i.i.i23, %bb.m ]
  %i.cg = sub nsw i64 0, %i.by
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  store ptr %i.ch, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.ci = add i32 %i.ce, %i.bx
  store i32 %i.ci, ptr %i.i, align 8, !tbaa !225
  br label %.lr.ph.i.i.i18.epil

.lr.ph.i.i.i18.epil:                              ; preds = %.lr.ph.i.i.i18.epil, %.lr.ph.preheader.i.i.i17
  %.05.i.i.i19.epil = phi i64 [ %i.cl, %.lr.ph.i.i.i18.epil ], [ 0, %.lr.ph.preheader.i.i.i17 ] ; 2 uses
  %epil.iter69 = phi i64 [ %epil.iter69.next, %.lr.ph.i.i.i18.epil ], [ 0, %.lr.ph.preheader.i.i.i17 ]
  %i.cj = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.05.i.i.i19.epil
  store i8 0, ptr %i.ck, align 1, !tbaa !83
  %i.cl = add nuw i64 %.05.i.i.i19.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %i.by
  br i1 %epil.iter69.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit, label %.lr.ph.i.i.i18.epil, !llvm.loop !780

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i18.epil
  %.pre45 = load ptr, ptr %i.c, align 8, !tbaa !303
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i13
  %i.cm = phi ptr [ %.pre45, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit ], [ %.pre46, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i13 ]
  %.pre4.i.i.i21 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302 ; 2 uses
  %i.cn = ptrtoint ptr %.pre4.i.i.i21 to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = and i64 %i.cp, 4294967292
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.n:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i22 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.n
  %i.cs = phi ptr [ %.pre4.i.i.i21, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i22, %bb.n ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 5 uses
  store ptr %i.ct, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !225
  %i.cv = add i32 %i.cu, 4
  store i32 %i.cv, ptr %i.i, align 8, !tbaa !225
  store i32 %i.bv, ptr %i.ct, align 4, !tbaa !3
  br i1 %3, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.cw = load i32, ptr %i.i, align 8, !tbaa !225 ; 3 uses
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !231
  %i.cy = icmp ult i64 %i.cx, 4
  br i1 %i.cy, label %bb.p, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25

bb.p:                                             ; preds = %bb.o
  store i64 4, ptr %i.e, align 8, !tbaa !231
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25: ; preds = %bb.p, %bb.o
  %i.cz = sub i32 0, %i.cw
  %i.da = and i32 %i.cz, 3                        ; 3 uses
  %i.db = zext nneg i32 %i.da to i64              ; 4 uses
  %.not.i.i.i.i26 = icmp eq i32 %i.da, 0
  %.pre49 = load ptr, ptr %i.c, align 8, !tbaa !303 ; 2 uses
  br i1 %.not.i.i.i.i26, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33, label %bb.q

bb.q:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25
  %i.dc = ptrtoint ptr %i.ct to i64
  %i.dd = ptrtoint ptr %.pre49 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = icmp samesign ult i64 %i.df, %i.db
  br i1 %i.dg, label %bb.r, label %.lr.ph.preheader.i.i.i29

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.db)
  %.pre.i.i.i.i36 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %.pre.i.i37 = load i32, ptr %i.i, align 8, !tbaa !225
  br label %.lr.ph.preheader.i.i.i29

.lr.ph.preheader.i.i.i29:                         ; preds = %bb.r, %bb.q
  %i.dh = phi i32 [ %i.cw, %bb.q ], [ %.pre.i.i37, %bb.r ]
  %i.di = phi ptr [ %i.ct, %bb.q ], [ %.pre.i.i.i.i36, %bb.r ]
  %i.dj = sub nsw i64 0, %i.db
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.dl = add i32 %i.dh, %i.da
  store i32 %i.dl, ptr %i.i, align 8, !tbaa !225
  br label %.lr.ph.i.i.i30.epil

.lr.ph.i.i.i30.epil:                              ; preds = %.lr.ph.i.i.i30.epil, %.lr.ph.preheader.i.i.i29
  %.05.i.i.i31.epil = phi i64 [ %i.do, %.lr.ph.i.i.i30.epil ], [ 0, %.lr.ph.preheader.i.i.i29 ] ; 2 uses
  %epil.iter75 = phi i64 [ %epil.iter75.next, %.lr.ph.i.i.i30.epil ], [ 0, %.lr.ph.preheader.i.i.i29 ]
  %i.dm = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.05.i.i.i31.epil
  store i8 0, ptr %i.dn, align 1, !tbaa !83
  %i.do = add nuw i64 %.05.i.i.i31.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %i.db
  br i1 %epil.iter75.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit, label %.lr.ph.i.i.i30.epil, !llvm.loop !781

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit: ; preds = %.lr.ph.i.i.i30.epil
  %.pre4.i.i.i34.pre = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %.pre48 = load ptr, ptr %i.c, align 8, !tbaa !303
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25
  %i.dp = phi ptr [ %.pre48, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit ], [ %.pre49, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25 ]
  %.pre4.i.i.i34 = phi ptr [ %.pre4.i.i.i34.pre, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit ], [ %i.ct, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25 ] ; 2 uses
  %i.dq = ptrtoint ptr %.pre4.i.i.i34 to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = and i64 %i.ds, 4294967292
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.s, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38

bb.s:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i35 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33, %bb.s
  %i.dv = phi ptr [ %.pre4.i.i.i34, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33 ], [ %.pre.i.i.i35, %bb.s ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  store ptr %i.dw, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !302
  %i.dx = load i32, ptr %i.i, align 8, !tbaa !225
  %i.dy = add i32 %i.dx, 4
  store i32 %i.dy, ptr %i.i, align 8, !tbaa !225
  store i32 %i.cw, ptr %i.dw, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 1, ptr %i.dz, align 1, !tbaa !230
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow6BufferEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.a) #24, !inline_history !782
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
  %3 = alloca %"class.std::shared_ptr.22", align 16 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !783
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  store i8 1, ptr %i.b, align 1, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !784
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.d, align 8, !tbaa !328
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %i.e, align 8, !tbaa !785
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !786
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %3)
          to label %bb.b unwind label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %3, align 16, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !73   ; 8 uses
  store <2 x ptr> %i.k, ptr %i.h, align 8, !tbaa !68
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !79
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !787
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24, !inline_history !787
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.aa, label %bb.h, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #24
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %bb.b
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !788
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !789 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !792, !range !60, !noundef !61
  store i8 %i.af, ptr %i.b, align 1, !tbaa !101
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef signext i8 %i.ai(ptr noundef nonnull align 8 dereferenceable(25) %i.ad)
          to label %bb.i unwind label %bb.q, !inline_history !797

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  store i8 %i.aj, ptr %i.f, align 8, !tbaa !786
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !73  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !79
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24, !inline_history !798
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24, !inline_history !798
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #24
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
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.q ], [ %i.ba, %bb.p ]
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow26default_cpu_memory_managerEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.22") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow6BufferE, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !798
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !798
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !79
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6BufferD0Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK5arrow6Buffer17device_sync_eventEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.227") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !799
  tail call void @_ZNSt8_Rb_treeIN22arrow_vendored_private11flatbuffers6OffsetINS1_6StringEEES4_St9_IdentityIS4_ENS1_21FlatBufferBuilderImplILb0EE19StringOffsetCompareESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !800  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #25
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !801

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(43) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !802
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !802
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !802, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %2) #24, !noalias !802
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(43) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !802 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !802
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #24, !inline_history !805
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1E, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !806
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !79
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !198
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ak, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !79
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !807
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24, !inline_history !807
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i6 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i6, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.r:                                             ; preds = %bb.p
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i8 = phi i32 [ %i.an, %bb.q ], [ %i.ax, %bb.r ]
  %i.ay = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.ay, label %bb.s, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV1D2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV17versionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = sext i32 %i.c to i64
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i16, ptr %i.f, align 2, !tbaa !120
  %i.h = icmp ugt i16 %i.g, 10
  br i1 %i.h, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.j = load i16, ptr %i.i, align 2, !tbaa !120  ; 2 uses
  %.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i, label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.k = zext i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3
  br label %_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit

_ZNK5arrow3ipc7feather3fbs6CTable7versionEv.exit: ; preds = %bb.a, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.b
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %bb.a ]
  ret i32 %i.n
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV16schemaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !68
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.c, null
end_hunk_4
begin_hunk_5_@_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.141") align 8, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !456    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !879  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !909
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !909
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !905

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !456
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !880
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !879  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !456    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #28
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !68
  store ptr null, ptr %i.r, align 8, !tbaa !73
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !68
  store ptr null, ptr %2, align 8, !tbaa !70
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !913, !noalias !910
  store ptr null, ptr %i.t, align 8, !tbaa !73, !alias.scope !913, !noalias !910
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !910, !noalias !913
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !70, !alias.scope !913, !noalias !910
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !915

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !919, !noalias !916
  store ptr null, ptr %i.y, align 8, !tbaa !73, !alias.scope !919, !noalias !916
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !916, !noalias !919
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !70, !alias.scope !919, !noalias !916
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !915

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !880
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !456
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !879
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !880
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrIS1_ERKlSA_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.19", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6BufferESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !68
  store ptr null, ptr %i.d, align 8, !tbaa !73
  store <2 x ptr> %i.e, ptr %4, align 16, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !70
  %i.f = load i64, ptr %2, align 8, !tbaa !49
  %i.g = load i64, ptr %3, align 8, !tbaa !49
  invoke void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull %4, i64 noundef %i.f, i64 noundef %i.g)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !921
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !921
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.x, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6BufferC2ESt10shared_ptrIS0_Ell(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.22", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !70
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !784
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %2
  tail call void @_ZN5arrow6BufferC2EPKhl(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %i.d, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !73   ; 8 uses
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !68
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !79
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !922
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24, !inline_history !922
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.w, label %bb.g, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #24
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !788  ; 3 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !788
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 4 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i4 = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i4, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !3
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %4, align 8, !tbaa !788
  %.pre7 = load ptr, ptr %i.aa, align 8, !tbaa !73
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, %bb.i, %bb.j
  %i.ai = phi ptr [ null, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.ac, %bb.i ], [ %.pre7, %bb.j ]
  %i.aj = phi ptr [ %i.z, %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit ], [ %i.z, %bb.i ], [ %.pre, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !923
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 8 uses
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !73
  %.not.i.i.i.i.i5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i5, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = load atomic i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 4294967297
  %i.aq = trunc i64 %i.ao to i32                  ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.an, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !79
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #24, !inline_history !787
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !43
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #24, !inline_history !787
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = add nsw i32 %i.aq, -1
  store i32 %i.az, ptr %i.an, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ba = atomicrmw volatile add ptr %i.an, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aq, %bb.n ], [ %i.ba, %bb.o ]
  %i.bb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bb, label %bb.p, label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i, !prof !85

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #24
  br label %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i

_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l, %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEC2ERKS2_.exit
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !788
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !789 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !792, !range !60, !noundef !61
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !101
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef signext i8 %i.bk(ptr noundef nonnull align 8 dereferenceable(25) %i.be)
          to label %bb.q unwind label %bb.x, !inline_history !797

bb.q:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.bl, ptr %i.bm, align 8, !tbaa !786
  %i.bn = load ptr, ptr %i.aa, align 8, !tbaa !73 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bo, align 8, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !79
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #24, !inline_history !798
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #24, !inline_history !798
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.cc, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #24
  br label %_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  ret void

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow13MemoryManagerEEaSEOS2_.exit.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #24
  call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #24
  resume { ptr, i32 } %i.cd
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_5ArrayEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.138", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !68
  store ptr null, ptr %i.d, align 8, !tbaa !73
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !68
  store ptr null, ptr %1, align 8, !tbaa !246
  invoke void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !79
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !924
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !924
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %bb.i

.body:                                            ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #24
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ChunkedArrayEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow12ChunkedArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
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
define linkonce_odr void @_ZN5arrow12ChunkedArrayC2ESt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.107", align 8   ; 8 uses
  %3 = alloca [1 x %"class.std::shared_ptr.138"], align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.79", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = load ptr, ptr %1, align 8, !tbaa !246    ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !246
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  store ptr null, ptr %i.c, align 8, !tbaa !73
  store ptr %i.d, ptr %i.b, align 8, !tbaa !73
  store ptr null, ptr %1, align 8, !tbaa !246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.e = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
          to label %.noexc unwind label %bb.y     ; 4 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.e, ptr %2, align 8, !tbaa !239
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !925
  store ptr %i.a, ptr %i.e, align 8, !tbaa !246
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.h, align 8, !tbaa !73
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.n, align 8, !tbaa !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow12ChunkedArrayC2ESt6vectorISt10shared_ptrINS_5ArrayEESaIS4_EES2_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %2, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.z

bb.e:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.q, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !79
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !395
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !43
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a
bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !3
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !68, !alias.scope !935, !noalias !932
  store ptr null, ptr %i.z, align 8, !tbaa !73, !alias.scope !935, !noalias !932
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !68, !alias.scope !932, !noalias !935
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !136, !alias.scope !935, !noalias !932
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt10shared_ptrIN5arrow5FieldEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ah, %.lr.ph.i.i.i17 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ag, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !940)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !68, !alias.scope !940, !noalias !937
  store ptr null, ptr %i.ae, align 8, !tbaa !73, !alias.scope !940, !noalias !937
  store <2 x ptr> %i.af, ptr %.012.i.i.i18, align 8, !tbaa !68, !alias.scope !937, !noalias !940
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !136, !alias.scope !940, !noalias !937
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !413

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ah, %.lr.ph.i.i.i17 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !135
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !147
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !135
  ret void
}

declare noundef i32 @_ZNK5arrow6Schema13GetFieldIndexESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(14) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %1) #24
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.f = load ptr, ptr %2, align 8, !tbaa !130
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !131
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !380, !nonnull !61, !align !390
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %3) #24
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(14) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E0_clISB_EEDaSI_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA13_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA14_S2_EEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.m, %bb.c ], [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(128) %i.a) #24, !inline_history !942
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(144) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !738  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2E, i64 16), ptr %0, align 8, !tbaa !43
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #25
  br label %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit

_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit:           ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !806
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24, !inline_history !806
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #24
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow3ipc14IpcReadOptionsD2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !79
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !807
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24, !inline_history !807
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i2 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i4 = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #24
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.n
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV2D2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 128) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV27versionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #19 align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define internal void @_ZNK5arrow3ipc7feather12_GLOBAL__N_18ReaderV26schemaEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr.28") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !68
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !68
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr nofree noundef captures(none) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKNS0_14IpcReadOptionsEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV24ReadERKSt6vectorIiSaIiEEPSt10shared_ptrINS_5TableEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.arrow::ipc::IpcReadOptions", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !420  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33   ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %.thread6, label %bb.b

.thread6:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = getelementptr inbounds i8, ptr null, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.l, align 8, !tbaa !37
  br label %_ZN5arrow3ipc14IpcReadOptionsC2ERKS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %i.i, 9223372036854775804
end_hunk_6
begin_hunk_7_@_ZN5arrow6ResultISt10shared_ptrINS_5TableEEED2Ev:bb.a
  %i.v = load i8, ptr %i.u, align 1, !tbaa !50, !range !60, !noundef !61
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5TableEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !955    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !959  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !79
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !986
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24, !inline_history !986
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #24
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !981

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow11RecordBatchEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !955
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !958
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #25
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow11RecordBatchEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow11RecordBatchEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

declare void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA35_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(35) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24, !noalias !987
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !987
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !380, !noalias !987, !nonnull !61, !align !390
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %2) #24, !noalias !987
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(35) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !987 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !987
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24, !noalias !987
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !83
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA35_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !130    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !83
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow4util5CodecELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !353    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !990
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !73
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !79
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !991
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !73 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !74
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !79
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !993
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !43
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24, !inline_history !993
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.x, label %bb.i, label %bb.j, !prof !85

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !73
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !74
  store i32 0, ptr %i.f, align 4, !tbaa !79
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !200
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !200
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83
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
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !85

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !994  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !996
  br label %_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit

_ZNKSt14default_deleteIN5arrow4util5CodecEEclEPS2_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS3_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow4util5CodecESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow4util5CodecEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !83
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(40) @_ZTSSt14default_deleteIN5arrow4util5CodecEE) #24
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
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow3ipc17RecordBatchWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !79
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
end_hunk_7
