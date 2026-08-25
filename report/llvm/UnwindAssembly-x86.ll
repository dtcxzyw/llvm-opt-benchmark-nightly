Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/UnwindAssembly-x86?download=true
inline.NumInlined: 295
inline.NumDeleted: 183
begin_hunk_0_@_ZN18UnwindAssembly_x8636GetNonCallSiteUnwindPlanFromAssemblyERN12lldb_private12AddressRangeERNS0_6ThreadERNS0_10UnwindPlanE:bb.a
bb.m:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !68, !noalias !64
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.m, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i16
  %i.am = phi ptr [ %i.al, %bb.m ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i16 ] ; 2 uses
  %i.an = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.ad, align 8, !tbaa !71
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !73
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #14, !inline_history !74
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #14, !inline_history !74
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.o:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i1.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.ad, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.az = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i18 = phi i32 [ %i.ap, %bb.p ], [ %i.az, %bb.q ]
  %i.ba = icmp eq i32 %.0.i.i.i.i.i18, 1
  br i1 %i.ba, label %bb.r, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !75

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  %i.bb = load i64, ptr %i.c, align 8, !tbaa !52
  %i.bc = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(2200) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.sroa.024.0, i64 noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %4, i1 noundef zeroext false, ptr noundef null, ptr noundef null) #14
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !52
  %i.bh = icmp eq i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.s, label %bb.z

bb.s:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.bi = load ptr, ptr %2, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 256
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %5, ptr noundef nonnull align 8 dereferenceable(576) %2) #14
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !10
  call void @_ZN12lldb_private27x86AssemblyInspectionEngine10InitializeERSt10shared_ptrINS_15RegisterContextEE(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !10
  %i.bn = load i64, ptr %i.c, align 8, !tbaa !52
  %i.bo = call noundef zeroext i1 @_ZN12lldb_private27x86AssemblyInspectionEngine36GetNonCallSiteUnwindPlanFromAssemblyEPhmRNS_12AddressRangeERNS_10UnwindPlanE(ptr noundef nonnull align 8 dereferenceable(208) %i.bm, ptr noundef %.sroa.024.0, i64 noundef %i.bn, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(76) %3) #14
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.br, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !73
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #14, !inline_history !78
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #14, !inline_history !78
  br label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.cc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = add nsw i32 %i.bu, -1
  store i32 %i.cd, ptr %i.br, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ce = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.bu, %bb.w ], [ %i.ce, %bb.x ]
  %i.cf = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cf, label %bb.y, label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.z

bb.z:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit, %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0 = phi i1 [ %i.bo, %_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %_ZN12lldb_private7Process9GetTargetEv.exit ] ; 2 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.not.i.i.i19 = icmp eq ptr %.sroa.024.0, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = ptrtoint ptr %.sroa.9.0 to i64
  %i.ch = ptrtoint ptr %.sroa.024.0 to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0, i64 noundef %i.ci) #16
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.aa, %bb.z, %_ZNK12lldb_private6Thread10GetProcessEv.exit, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %.135 = phi i1 [ false, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ %.0, %bb.aa ], [ %.0, %bb.z ], [ false, %_ZNK12lldb_private6Thread10GetProcessEv.exit ] ; 3 uses
  %i.cj = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  store i32 0, ptr %i.l, align 8, !tbaa !71
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !73
  %i.cn = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14, !inline_history !79
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14, !inline_history !79
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ac:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i21 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i21, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.l, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.ae:                                            ; preds = %bb.ac
  %i.cv = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i23 = phi i32 [ %i.cl, %bb.ad ], [ %i.cv, %bb.ae ]
  %i.cw = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.cw, label %bb.af, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.d, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.ab, %bb.c, %bb.a, %bb.b
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %bb.b ], [ %.135, %bb.af ], [ %.135, %bb.ab ], [ %.135, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22 ], [ false, %bb.d ], [ false, %bb.f ]
  ret i1 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIhSaIhEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #17
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread, label %bb.c

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIhSaIhEE21_M_default_initializeEm.exit

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #15 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !80
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !82
  store i8 0, ptr %i.b, align 1, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.f = add nsw i64 %1, -1                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZNSt6vectorIhSaIhEE21_M_default_initializeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE21_M_default_initializeEm.exit

_ZNSt6vectorIhSaIhEE21_M_default_initializeEm.exit: ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread, %bb.c, %bb.d
  %.0.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread ], [ %i.e, %bb.c ], [ %i.c, %bb.d ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i, ptr %i.h, align 8, !tbaa !83
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(2200) ptr @_ZN12lldb_private7Process9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(3224) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43, !noalias !84, !nonnull !67, !noundef !67 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !84
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i.i.i.i.i = phi i32 [ %i.d, %bb.a ], [ %i.h, %bb.b ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i)
  %i.e = add nsw i32 %.06.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !84 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.b, !llvm.loop !59

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !84
  %.not.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68, !noalias !84
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.l = phi ptr [ %i.k, %bb.c ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ]
  %i.m = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !73
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !87
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !87
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i.i1 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.y = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.o, %bb.f ], [ %i.y, %bb.g ]
  %i.z = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.z, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  ret ptr %i.l
}

declare void @_ZN12lldb_private27x86AssemblyInspectionEngine10InitializeERSt10shared_ptrINS_15RegisterContextEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private27x86AssemblyInspectionEngine36GetNonCallSiteUnwindPlanFromAssemblyEPhmRNS_12AddressRangeERNS_10UnwindPlanE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(76)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN12lldb_private15RegisterContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !73
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !88
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !88
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !44
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !75

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN18UnwindAssembly_x8629AugmentUnwindPlanFromCallSiteERN12lldb_private12AddressRangeERNS0_6ThreadERNS0_10UnwindPlanE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(576) %2, ptr noundef nonnull align 8 dereferenceable(76) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.RegisterNumber, align 8      ; 7 uses
  %5 = alloca %class.RegisterNumber, align 8      ; 8 uses
  %6 = alloca %class.RegisterNumber, align 8      ; 7 uses
  %7 = alloca %"class.lldb_private::UnwindPlan::Row::AbstractRegisterLocation", align 8 ; 7 uses
  %8 = alloca %"class.lldb_private::UnwindPlan::Row::AbstractRegisterLocation", align 8 ; 7 uses
  %9 = alloca %"class.std::vector.53", align 8    ; 7 uses
  %10 = alloca %"class.std::allocator.55", align 1 ; 3 uses
  %11 = alloca %"class.lldb_private::Status", align 8 ; 5 uses
  %12 = alloca %"class.std::shared_ptr.25", align 8 ; 6 uses
  %i.a = tail call noundef ptr @_ZNK12lldb_private10UnwindPlan23GetRowForFunctionOffsetESt8optionalIlE(ptr noundef nonnull align 8 dereferenceable(76) %3, i64 0, i8 1) #14 ; 8 uses
  %i.b = tail call noundef ptr @_ZNK12lldb_private10UnwindPlan10GetLastRowEv(ptr noundef nonnull align 8 dereferenceable(76) %3) #14 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43, !noalias !89 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !89
  br label %bb.c

end_hunk_0
