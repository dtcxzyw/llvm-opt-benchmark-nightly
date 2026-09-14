Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterContextDarwin_arm?download=true
inline.NumInlined: 156
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN25RegisterContextDarwin_arm13WriteRegisterEPKN12lldb_private12RegisterInfoERKNS0_13RegisterValueE:bb.a
}

declare noundef i32 @_ZNK12lldb_private13RegisterValue11GetAsUInt32EjPb(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN25RegisterContextDarwin_arm21ReadAllRegisterValuesERSt10shared_ptrIN12lldb_private18WritableDataBufferEE(ptr noundef nonnull align 8 dereferenceable(676) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15, !noalias !74 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !76, !noalias !77
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !78, !noalias !77
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14DataBufferHeapESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 344, i8 noundef zeroext 0) #12, !noalias !77
  store ptr %i.d, ptr %1, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81   ; 8 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !81
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !78
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !72
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !72
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !10
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !82

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c
  %.pr = load ptr, ptr %1, align 8, !tbaa !84
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread

_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread: ; preds = %bb.a, %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %.not12 = icmp eq i32 %i.w, 0
  br i1 %.not12, label %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit.thread, label %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit

_ZN25RegisterContextDarwin_arm7ReadGPREb.exit:    ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.aa, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(68) %i.ab) #12, !inline_history !11 ; 2 uses
  store i32 %i.af, ptr %i.v, align 4, !tbaa !10
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit.thread, label %bb.h

_ZN25RegisterContextDarwin_arm7ReadGPREb.exit.thread: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.thread, %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %.not13 = icmp eq i32 %i.ai, 0
  br i1 %.not13, label %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit.thread, label %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit

_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit:    ; preds = %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit.thread
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.am, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(264) %i.an) #12, !inline_history !12 ; 2 uses
  store i32 %i.ar, ptr %i.ah, align 4, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit.thread, label %bb.h

_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit.thread: ; preds = %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit.thread, %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  %.not14 = icmp eq i32 %i.au, 0
  br i1 %.not14, label %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit.thread, label %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit

_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit:    ; preds = %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit.thread
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.ay, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(12) %i.az) #12, !inline_history !13 ; 2 uses
  store i32 %i.bd, ptr %i.at, align 4, !tbaa !10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit.thread, label %bb.h

_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit.thread: ; preds = %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit.thread, %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !84    ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #12, !inline_history !73 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.bj, ptr noundef nonnull align 8 dereferenceable(68) %i.bk, i64 68, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 68
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(264) %i.bl, ptr noundef nonnull align 8 dereferenceable(264) %i.bm, i64 264, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bn, ptr noundef nonnull align 8 dereferenceable(12) %i.bo, i64 12, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit, %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit, %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit, %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit.thread
  %.0 = phi i1 [ true, %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit.thread ], [ false, %_ZN25RegisterContextDarwin_arm7ReadEXCEb.exit ], [ false, %_ZN25RegisterContextDarwin_arm7ReadFPUEb.exit ], [ false, %_ZN25RegisterContextDarwin_arm7ReadGPREb.exit ], [ false, %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN25RegisterContextDarwin_arm22WriteAllRegisterValuesERKSt10shared_ptrIN12lldb_private10DataBufferEE(ptr noundef nonnull align 8 dereferenceable(676) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !88     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.f = icmp eq i64 %i.e, 344
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !88     ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #12, !inline_history !85 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.l, ptr noundef nonnull align 1 dereferenceable(68) %i.k, i64 68, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef nonnull align 1 dereferenceable(264) %i.m, i64 264, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.a, label %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.a: ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !15
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.w, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(68) %i.l) #12, !inline_history !15 ; 2 uses
  store i32 -1, ptr %i.q, align 4, !tbaa !10
  %i.ab = icmp eq i32 %i.aa, 0
  %spec.select = zext i1 %i.ab to i32
  br label %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread: ; preds = %bb.c, %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.a
  %.sink = phi i32 [ %i.aa, %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.a ], [ -1, %bb.c ]
  %2 = phi i32 [ %spec.select, %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.a ], [ 0, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  store i32 %.sink, ptr %i.ac, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !10
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.a, label %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.a: ; preds = %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread
  %i.ag = load ptr, ptr %0, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !16
  %i.ak = load ptr, ptr %0, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.aj, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(264) %i.n) #12, !inline_history !16 ; 2 uses
  store i32 -1, ptr %i.ad, align 4, !tbaa !10
  %i.ao = icmp eq i32 %i.an, 0
  %3 = zext i1 %i.ao to i32
  %spec.select24 = add nuw nsw i32 %2, %3
  br label %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread: ; preds = %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread, %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.a
  %.sink26 = phi i32 [ %i.an, %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.a ], [ -1, %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread ]
  %4 = phi i32 [ %spec.select24, %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.a ], [ %2, %_ZN25RegisterContextDarwin_arm8WriteGPREv.exit.thread ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i32 %.sink26, ptr %i.ap, align 8, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.a, label %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.a: ; preds = %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread
  %i.at = load ptr, ptr %0, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 248
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !17
  %i.ax = load ptr, ptr %0, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.aw, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(12) %i.p) #12, !inline_history !17 ; 2 uses
  store i32 -1, ptr %i.aq, align 4, !tbaa !10
  %i.bb = icmp eq i32 %i.ba, 0
  %5 = zext i1 %i.bb to i32
  %spec.select25 = add nuw nsw i32 %4, %5
  br label %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.thread: ; preds = %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread, %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.a
  %.sink27 = phi i32 [ %i.ba, %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.a ], [ -1, %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread ]
  %6 = phi i32 [ %spec.select25, %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.a ], [ %4, %_ZN25RegisterContextDarwin_arm8WriteFPUEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %.sink27, ptr %i.bc, align 8, !tbaa !10
  %7 = icmp eq i32 %6, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.thread
  %.013 = phi i1 [ %7, %_ZN25RegisterContextDarwin_arm8WriteEXCEv.exit.thread ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN25RegisterContextDarwin_arm35ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  switch i32 %1, label %bb.e [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 4, label %switch.lookup
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %2, 5
  br i1 %i.a, label %switch.lookup10, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 129
  br i1 %i.b, label %switch.lookup11, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %2, 17
  br i1 %i.c, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  br label %switch.lookup

switch.lookup10:                                  ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN25RegisterContextDarwin_arm35ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %switch.lookup

switch.lookup11:                                  ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %switch.gep12 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN25RegisterContextDarwin_arm35ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj.1, i64 %i.e
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup11, %switch.lookup10, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ %2, %bb.a ], [ %2, %bb.d ], [ %switch.load13, %switch.lookup11 ], [ %switch.ext, %switch.lookup10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN25RegisterContextDarwin_arm31NumSupportedHardwareBreakpointsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN25RegisterContextDarwin_arm21SetHardwareBreakpointEmm(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = and i64 %1, 1
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %.not30 = icmp eq i32 %i.c, 0
  br i1 %.not30, label %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit.thread, label %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit

_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit:    ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !14
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load ptr, ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 296
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.g, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(256) %i.h) #12, !inline_history !14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i32 %i.l, ptr %i.m, align 4, !tbaa !10
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.n = icmp eq i32 %.pre.i, 0
  br i1 %i.n, label %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit.thread, label %bb.i

_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit.thread: ; preds = %bb.b, %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(676) %0) #12 ; 2 uses
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 452 ; 2 uses
  %wide.trip.count = zext i32 %i.r to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = and i32 %i.u, 1
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !89

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.y = trunc nuw i64 %indvars.iv to i32
  %i.z = trunc i64 %1 to i32
  %i.aa = and i32 %i.z, -4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 388 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !10
  %i.ad = icmp ne i64 %2, 2
  %i.ae = and i64 %1, 2
  %.not24 = icmp eq i64 %i.ae, 0                  ; 2 uses
  %or.cond = and i1 %i.ad, %.not24
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = select i1 %.not24, i32 101, i32 389
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %2, 4
  br i1 %i.ag, label %.sink.split, label %bb.h

.sink.split:                                      ; preds = %bb.g, %bb.f
  %.sink = phi i32 [ %i.af, %bb.f ], [ 485, %bb.g ]
  store i32 %.sink, ptr %i.x, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit, label %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit.thread

_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit.thread: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 -1, ptr %i.aj, align 8, !tbaa !10
  br label %.critedge

_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit:   ; preds = %bb.h
  %i.ak = load ptr, ptr %0, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 248
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !18
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 328
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.an, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(256) %i.ab) #12, !inline_history !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i32 -1, ptr %i.as, align 4, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.au = load i32, ptr %i.at, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 %i.ar, ptr %i.av, align 8, !tbaa !10
  %i.aw = icmp eq i32 %i.au, 0
  br i1 %i.aw, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit.thread, %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit.thread, %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit
  br label %bb.i

bb.i:                                             ; preds = %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit, %.critedge, %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ %i.y, %_ZN25RegisterContextDarwin_arm8WriteDBGEv.exit ], [ -1, %.critedge ], [ -1, %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN25RegisterContextDarwin_arm23ClearHardwareBreakpointEj(ptr noundef nonnull align 8 dereferenceable(676) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(676) %0) #12, !inline_history !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.h = load ptr, ptr %0, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(676) %0, i64 noundef %i.f, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(256) %i.g) #12, !inline_history !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 660
  store i32 %i.k, ptr %i.l, align 4, !tbaa !10
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !10
  %i.m = icmp eq i32 %.pre.i, 0
  br label %_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit

_ZN25RegisterContextDarwin_arm7ReadDBGEb.exit:    ; preds = %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ %i.m, %bb.b ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 176
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(676) %0) #12
end_hunk_0
