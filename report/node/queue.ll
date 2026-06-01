inline.NumInlined: 4059
inline.NumDeleted: 2113
begin_hunk_0_@_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_t:bb.a
  %i.bu = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.bt, align 4
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bt, align 4
  br label %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.bx = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit

_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit: ; preds = %bb.r, %bb.t, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ca, align 8
  %i.cb = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 2 uses
  store <2 x ptr> %i.bs, ptr %i.cb, align 8
  store ptr %i.cb, ptr %11, align 8
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tEUlmE2_E9_M_invokeERKSt9_Any_dataOm, ptr %i.bz, align 8
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tEUlmE2_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.by, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 1, ptr %i.a, align 4
  store ptr %10, ptr %i.b, align 8
  store i64 1, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not.i.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i19, label %bb.v, label %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit20

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit20: ; preds = %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %11) #29, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cg = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not.i21 = icmp eq ptr %i.cg, null
  br i1 %.not.i21, label %_ZZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tENUlmE2_D2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit20
  %i.ch = call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #29, !inline_history !209 ; 0 uses
  br label %_ZZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tENUlmE2_D2Ev.exit

_ZZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tENUlmE2_D2Ev.exit: ; preds = %bb.w, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit20
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val5 = load ptr, ptr %i.cj, align 8
  %i.ck = icmp eq ptr %.val5, %.val
  br i1 %i.ck, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tENUlmE2_D2Ev.exit
  store i8 0, ptr %i.v, align 8
  %i.cl = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 181
  %i.cn = load i8, ptr %i.cm, align 1, !range !26, !noundef !68
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = call noundef i32 @_ZN4node2fs10FileHandle8ReadStopEv(ptr noundef nonnull align 8 dereferenceable(216) %i.cl) #29 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %_ZZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_tENUlmE2_D2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit, %bb.z, %_ZNSt14_Function_baseD2Ev.exit14
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.val.i = load ptr, ptr %i.cq, align 8          ; 8 uses
  %.not.i.i.i25 = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i25, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.cv, align 4
  %i.cw = load ptr, ptr %.val.i, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #29, !inline_history !210
  %i.cz = load ptr, ptr %.val.i, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #29, !inline_history !210
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.dc = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i26 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i.i26, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

bb.ae:                                            ; preds = %bb.ac
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i28 = phi i32 [ %i.cu, %bb.ad ], [ %i.de, %bb.ae ]
  %i.df = icmp eq i32 %.0.i.i.i.i.i28, 1
  br i1 %i.df, label %bb.af, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !5

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #29
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i27, %bb.ab, %_ZNSt14_Function_baseD2Ev.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i29, label %_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.di = call noundef zeroext i1 %i.dh(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 3) #29, !inline_history !211 ; 0 uses
  br label %_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullD2Ev.exit

_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullD2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.b, %_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullD2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 8 uses
  %.not.i.i30 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i30, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4
  %i.dq = load ptr, ptr %i.dk, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #29, !inline_history !45
  %i.dt = load ptr, ptr %i.dk, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #29, !inline_history !45
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i31 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i31, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i = phi i32 [ %i.do, %bb.al ], [ %i.dy, %bb.am ]
  %i.dz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dz, label %bb.an, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ah, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 -22, 4) i32 @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS_9DataQueue3VecEmS3_IFvmEEEEiPS5_mm(ptr noundef nonnull align 8 captures(none) dereferenceable(168) %0, ptr noundef %1, i32 %2, ptr readnone captures(none) %3, i64 %4, i64 %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.uv_fs_s, align 8            ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::function.581", align 8 ; 6 uses
  %8 = alloca %"class.std::function.581", align 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.h = load i8, ptr %i.g, align 1, !range !26, !noundef !68
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 181
  %i.m = load i8, ptr %i.l, align 1, !range !26, !noundef !68
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS1_9DataQueue3VecEmS5_IS0_EEEiPS7_mmEUlmE_E9_M_invokeERKSt9_Any_dataOm, ptr %i.p, align 8
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS1_9DataQueue3VecEmS5_IS0_EEEiPS7_mmEUlmE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 0, ptr %i.d, align 4
  store ptr null, ptr %i.e, align 8
  store i64 0, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %7) #29, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.u = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #29, !inline_history !209 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.z = load i32, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %6, i8 0, i64 440, i1 false)
  %i.aa = call i32 @uv_fs_fstat(ptr noundef null, ptr noundef nonnull %6, i32 noundef %i.z, ptr noundef null) #29
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit.thread, label %_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit

_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit.thread: ; preds = %bb.f
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.g

_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit: ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.x, i64 88
  %.val2.i = load i64, ptr %i.ac, align 8
  %i.ad = getelementptr i8, ptr %i.x, i64 152
  %.val3.i = load i64, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 168
  %.val4.i = load i64, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 232
  %.val5.i = load i64, ptr %i.af, align 8
  %.not.i.i1 = icmp ne i64 %.val4.i, %.val2.i
  %i.ag = icmp ne i64 %.val5.i, %.val3.i
  %i.ah = select i1 %.not.i.i1, i1 true, i1 %i.ag
  call void @uv_fs_req_cleanup(ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %i.ah, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit.thread, %_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit
  call fastcc void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl13DrainAndCloseEv(ptr noundef nonnull align 8 dereferenceable(168) %0)
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS1_9DataQueue3VecEmS5_IS0_EEEiPS7_mmEUlmE0_E9_M_invokeERKSt9_Any_dataOm, ptr %i.aj, align 8
  store ptr @_ZNSt17_Function_handlerIFvmEZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS1_9DataQueue3VecEmS5_IS0_EEEiPS7_mmEUlmE0_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 -22, ptr %i.a, align 4
  store ptr null, ptr %i.b, align 8
  store i64 0, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %.not.i.i2 = icmp eq ptr %i.al, null
  br i1 %.not.i.i2, label %bb.h, label %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit3

bb.h:                                             ; preds = %bb.g
  call void @_ZSt25__throw_bad_function_callv() #30
  unreachable

_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit3: ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %8) #29, !inline_history !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ao = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not.i4 = icmp eq ptr %i.ao, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit3
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #29, !inline_history !209 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

bb.j:                                             ; preds = %_ZN4node12_GLOBAL__N_17FdEntry13CheckModifiedEPS1_i.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !noalias !212 ; 4 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load atomic i32, ptr %i.av monotonic, align 8, !noalias !212
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.06.i.i.i.i.i = phi i32 [ %i.aw, %bb.k ], [ %i.ba, %bb.m ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %.06.i.i.i.i.i, 1
  %i.ay = cmpxchg weak ptr %i.av, i32 %.06.i.i.i.i.i, i32 %i.ax acq_rel monotonic, align 8, !noalias !212 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  %i.ba = extractvalue { i32, i1 } %i.ay, 0
  br i1 %i.az, label %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_17FdEntry10ReaderImplEE16shared_from_thisEv.exit, label %bb.l, !llvm.loop !215

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.l, %bb.j
  call void @abort() #30, !noalias !212
  unreachable

_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_17FdEntry10ReaderImplEE16shared_from_thisEv.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.ar, align 8, !noalias !212 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -48
  %.not.i6 = icmp eq ptr %i.bd, %i.bg
  br i1 %.not.i6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_17FdEntry10ReaderImplEE16shared_from_thisEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.thread, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.thread: ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i8 0, i64 24, i1 false)
  br label %bb.ai

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.n
  %.sroa.0.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x i64> %.sroa.0.i.i.sroa.0.0.copyload, ptr %i.bd, align 8
  store ptr %i.bk, ptr %i.bl, align 8
  br label %bb.ai

bb.o:                                             ; preds = %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_17FdEntry10ReaderImplEE16shared_from_thisEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 8 uses
  %i.br = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 4 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 3                 ; 4 uses
  %i.bv = icmp ne ptr %i.bo, null
  %.neg.i.i.i.i = sext i1 %i.bv to i64
  %i.bw = add nsw i64 %i.bu, %.neg.i.i.i.i
  %i.bx = mul nsw i64 %i.bw, 10
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bd to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 48
  %i.ce = add nsw i64 %i.bx, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = load ptr, ptr %i.bm, align 8
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = sdiv exact i64 %i.ck, 48
  %i.cm = add nsw i64 %i.ce, %i.cl
  %i.cn = icmp eq i64 %i.cm, 384307168202282325
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 6 uses
  %i.cq = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.br, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = sub i64 %i.cp, %i.ct
  %i.cv = icmp ult i64 %i.cu, 2
  br i1 %i.cv, label %bb.r, label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.cw = add nsw i64 %i.bu, 1                    ; 2 uses
  %i.cx = add nsw i64 %i.bu, 2                    ; 2 uses
  %i.cy = shl nsw i64 %i.cx, 1
  %i.cz = icmp ugt i64 %i.cp, %i.cy
  br i1 %i.cz, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.da = sub i64 %i.cp, %i.cx
  %i.db = lshr i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.db ; 10 uses
  %i.dd = icmp ult ptr %i.dc, %i.bq
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.bs                    ; 3 uses
  %i.dh = icmp sgt i64 %i.dg, 8
  br i1 %i.dh, label %bb.u, label %bb.v, !prof !127

bb.u:                                             ; preds = %bb.t
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr nonnull align 8 %i.bq, i64 %i.dg, i1 false)
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.di = icmp eq i64 %i.dg, 8
  br i1 %i.di, label %bb.w, label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.w:                                             ; preds = %bb.v
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8
  store ptr %.val.i.i.i.i.i.i.i.i.i, ptr %i.dc, align 8
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.x:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cw ; 2 uses
  %i.dk = ptrtoint ptr %i.de to i64
  %i.dl = sub i64 %i.dk, %i.bs                    ; 3 uses
  %i.dm = ashr exact i64 %i.dl, 3                 ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 1
  br i1 %i.dn, label %bb.y, label %bb.z, !prof !127

bb.y:                                             ; preds = %bb.x
  %i.do = sub nsw i64 0, %i.dm
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.do
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr align 8 %i.bq, i64 %i.dl, i1 false)
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.dq = icmp eq i64 %i.dl, 8
  br i1 %i.dq, label %bb.aa, label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %.val.i.i.i.i.i24.i.i.i.i = load ptr, ptr %i.bq, align 8
  store ptr %.val.i.i.i.i.i24.i.i.i.i, ptr %i.dr, align 8
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

bb.ab:                                            ; preds = %bb.r
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.ds = add i64 %.sroa.speculated.i.i.i.i, %i.cp ; 2 uses
  %i.dt = add i64 %i.ds, 2                        ; 4 uses
  %i.du = icmp ugt i64 %i.dt, 1152921504606846975
  br i1 %i.du, label %bb.ac, label %_ZNSt11_Deque_baseIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE15_M_allocate_mapEm.exit.i.i.i.i, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %i.dv = icmp ugt i64 %i.dt, 2305843009213693951
  br i1 %i.dv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt11_Deque_baseIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE15_M_allocate_mapEm.exit.i.i.i.i: ; preds = %bb.ab
  %i.dw = shl nuw nsw i64 %i.dt, 3
  %i.dx = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #31 ; 2 uses
  %i.dy = sub nsw i64 %i.ds, %i.bu
  %i.dz = lshr i64 %i.dy, 1
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.ec, %i.bs                    ; 3 uses
  %i.ee = icmp sgt i64 %i.ed, 8
  br i1 %i.ee, label %bb.af, label %bb.ag, !prof !127

bb.af:                                            ; preds = %_ZNSt11_Deque_baseIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE15_M_allocate_mapEm.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr align 8 %i.bq, i64 %i.ed, i1 false)
  br label %_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i

bb.ag:                                            ; preds = %_ZNSt11_Deque_baseIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE15_M_allocate_mapEm.exit.i.i.i.i
  %i.ef = icmp eq i64 %i.ed, 8
  br i1 %i.ef, label %bb.ah, label %_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i.i.i.i25.i.i.i.i = load ptr, ptr %i.bq, align 8
  store ptr %.val.i.i.i.i.i25.i.i.i.i, ptr %i.ea, align 8
  br label %_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i

_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eg = shl i64 %i.cp, 3
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.eg) #32
  store ptr %i.dx, ptr %i.aq, align 8
  store i64 %i.dt, ptr %i.co, align 8
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i

_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i: ; preds = %_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i, %bb.aa, %bb.z, %bb.y, %bb.w, %bb.v, %bb.u
  %.0.i.i.i.i = phi ptr [ %i.ea, %_ZSt4copyIPPN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullES6_ET0_T_S8_S7_.exit26.i.i.i.i ], [ %i.dc, %bb.w ], [ %i.dc, %bb.u ], [ %i.dc, %bb.v ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %bb.aa ] ; 3 uses
  store ptr %.0.i.i.i.i, ptr %i.bp, align 8
  %i.eh = load ptr, ptr %.0.i.i.i.i, align 8      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.eh, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 480
  store ptr %i.ej, ptr %i.cf, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.cw
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 3 uses
  store ptr %i.el, ptr %i.bn, align 8
  %i.em = load ptr, ptr %i.el, align 8            ; 2 uses
  store ptr %i.em, ptr %i.by, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 480
  store ptr %i.en, ptr %i.be, align 8
  br label %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i

_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i: ; preds = %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i, %bb.q
  %i.eo = phi ptr [ %i.bo, %bb.q ], [ %i.el, %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE17_M_reallocate_mapEmb.exit.i.i.i ]
  %i.ep = call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.ep, ptr %i.eq, align 8
  %i.er = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not.i.i.not.i.i.i5.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.not.i.i.i5.i, label %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.i.thread, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.i.thread: ; preds = %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i8 0, i64 24, i1 false)
  br label %.thread.i

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %_ZNSt5dequeIN4node12_GLOBAL__N_17FdEntry10ReaderImpl11PendingPullESaIS4_EE22_M_reserve_map_at_backEm.exit.i.i
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %1, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.er, align 8
  store ptr %i.ev, ptr %i.ew, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.i.thread, %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  store ptr %i.et, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store ptr %i.bb, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  store ptr %i.at, ptr %i.ez, align 8
  %i.fa = load ptr, ptr %i.bn, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.bn, align 8
  %i.fc = load ptr, ptr %i.fb, align 8            ; 3 uses
  store ptr %i.fc, ptr %i.by, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 480
  store ptr %i.fd, ptr %i.be, align 8
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ai:                                            ; preds = %_ZNSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEC2EOS8_.exit.i.i.thread, %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bi, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.bb, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  store ptr %i.at, ptr %i.fg, align 8
  %i.fh = load ptr, ptr %i.bc, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ai, %.thread.i
  %storemerge = phi ptr [ %i.fi, %bb.ai ], [ %i.fc, %.thread.i ]
  store ptr %storemerge, ptr %i.bc, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 8, !range !26, !noundef !68
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i8 1, ptr %i.fj, align 8
  %i.fm = load ptr, ptr %i.j, align 8
  %i.fn = call noundef i32 @_ZN4node2fs10FileHandle9ReadStartEv(ptr noundef nonnull align 8 dereferenceable(216) %i.fm) #29 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit3, %bb.e, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit, %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.aj
  %.0 = phi i32 [ 3, %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_17FdEntry10ReaderImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %bb.e ], [ 3, %bb.aj ], [ 0, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit ], [ -22, %_ZNKSt8functionIFviPKN4node9DataQueue3VecEmS_IFvmEEEEclEiS4_mS6_.exit3 ], [ -22, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn8_N4node12_GLOBAL__N_17FdEntry10ReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn8_N4node12_GLOBAL__N_17FdEntry10ReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  tail call void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 noundef 168) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef range(i32 -22, 4) i32 @_ZThn8_N4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS_9DataQueue3VecEmS3_IFvmEEEEiPS5_mm(ptr noundef captures(none) %0, ptr noundef %1, i32 %2, ptr readnone captures(none) %3, i64 %4, i64 %5) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl4PullESt8functionIFviPKNS_9DataQueue3VecEmS3_IFvmEEEEiPS5_mm(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef %1, i32 poison, ptr poison, i64 poison, i64 poison)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn16_N4node12_GLOBAL__N_17FdEntry10ReaderImplD1Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #29
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn16_N4node12_GLOBAL__N_17FdEntry10ReaderImplD0Ev(ptr noundef %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  tail call void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #29
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 noundef 168) #32
  ret void
}

; Function Attrs: nounwind uwtable
define internal { ptr, i64 } @_ZThn16_N4node12_GLOBAL__N_17FdEntry10ReaderImpl13OnStreamAllocEm(ptr noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { ptr, i64 } @_ZN4node11Environment23allocate_managed_bufferEm(ptr noundef nonnull align 8 dereferenceable(3304) %i.b, i64 noundef %1) #29
  ret { ptr, i64 } %i.c
}

; Function Attrs: nounwind uwtable
define internal void @_ZThn16_N4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_t(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN4node12_GLOBAL__N_17FdEntry10ReaderImpl12OnStreamReadElRK8uv_buf_t(ptr noundef nonnull align 8 dereferenceable(168) %i.a, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

declare void @_ZN4node14StreamListener18OnStreamAfterWriteEPNS_9WriteWrapEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) unnamed_addr #5

declare void @_ZN4node14StreamListener21OnStreamAfterShutdownEPNS_12ShutdownWrapEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14StreamListener18OnStreamWantsWriteEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node14StreamListener15OnStreamDestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRPFvPvERSF_mEEESt4pairINS4_14_Node_iteratorIS2_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 12 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load ptr, ptr %1, align 8
  %i.d = load ptr, ptr %2, align 8
  %i.e = load i64, ptr %3, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8
  %.not.not = icmp eq i64 %i.i, 0
  br i1 %.not.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.026.0.in = phi ptr [ %i.j, %bb.b ], [ %.sroa.026.0, %bb.d ]
  %.sroa.026.0 = load ptr, ptr %.sroa.026.0.in, align 8 ; 4 uses
  %i.k = icmp eq ptr %.sroa.026.0, null
  br i1 %i.k, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.026.0, i64 8
  %i.m = tail call noundef zeroext i1 @_ZNK4node12CleanupQueue19CleanupHookCallback5EqualclERKS1_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.l) #29
  br i1 %i.m, label %.loopexit, label %bb.c, !llvm.loop !216

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.n = tail call noundef i64 @_ZNK4node12CleanupQueue19CleanupHookCallback4HashclERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b) #29 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = urem i64 %i.n, %i.p                      ; 3 uses
  %i.r = load i64, ptr %i.h, align 8
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.critedge19, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %.critedge19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %.pre.i.i, %bb.f ], [ %i.ad, %bb.h ]
  %.015.i.i = phi ptr [ %i.u, %bb.f ], [ %.0.i.i, %bb.h ]
  %.0.i.i = phi ptr [ %i.v, %bb.f ], [ %i.aa, %bb.h ] ; 3 uses
  %i.x = icmp eq i64 %i.n, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.z = tail call noundef zeroext i1 @_ZNK4node12CleanupQueue19CleanupHookCallback5EqualclERKS1_S4_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #29
  br i1 %i.z, label %_ZNKSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i, %bb.g
  %i.aa = load ptr, ptr %.0.i.i, align 8          ; 3 uses
  %.not18.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i, label %.critedge19, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i
  %i.ab = load i64, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = urem i64 %i.ad, %i.ab
  %.not19.i.i = icmp eq i64 %i.ae, %i.q
  br i1 %.not19.i.i, label %bb.g, label %.critedge19, !llvm.loop !217

_ZNKSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.i.i
  %i.af = load ptr, ptr %.015.i.i, align 8        ; 2 uses
  %.not17 = icmp eq ptr %i.af, null
  br i1 %.not17, label %.critedge19, label %.loopexit

.critedge19:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN4node12CleanupQueue19CleanupHookCallbackES3_NS_9_IdentityENS3_5EqualENS3_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS3_mRKNS_16_Hash_node_valueIS3_Lb1EEE.exit.thread.i.i, %bb.h, %bb.e, %_ZNKSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_find_nodeEmRKS2_m.exit, %.critedge
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load i64, ptr %i.o, align 8
  %i.ai = load i64, ptr %i.h, align 8
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef 1) #29 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge19
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableIN4node12CleanupQueue19CleanupHookCallbackES2_SaIS2_ENSt8__detail9_IdentityENS2_5EqualENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.o, align 8
  %i.ao = urem i64 %i.n, %i.an
  br label %bb.j

end_hunk_0
