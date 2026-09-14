Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterContextDarwin_arm64?download=true
inline.NumInlined: 196
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN27RegisterContextDarwin_arm6413WriteRegisterEPKN12lldb_private12RegisterInfoERKNS0_13RegisterValueE:bb.a

declare noundef i64 @_ZNK12lldb_private13RegisterValue11GetAsUInt64EmPb(ptr noundef nonnull align 8 dereferenceable(344), i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private13RegisterValue8GetBytesEv(ptr noundef nonnull align 8 dereferenceable(344)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private13RegisterValue11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(344)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef i32 @_ZNK12lldb_private13RegisterValue11GetAsUInt32EjPb(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN27RegisterContextDarwin_arm6421ReadAllRegisterValuesERSt10shared_ptrIN12lldb_private18WritableDataBufferEE(ptr noundef nonnull align 16 dereferenceable(1416) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15, !noalias !117 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !41, !noalias !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !42, !noalias !118
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14DataBufferHeapESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !118
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 816, i8 noundef zeroext 0) #12, !noalias !118
  store ptr %i.d, ptr %1, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 8 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !121
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !42
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !115
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !115
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
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
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit.thread, label %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit

_ZN27RegisterContextDarwin_arm647ReadGPREb.exit:  ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = load ptr, ptr %0, align 16, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %0, align 16, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.aa, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(272) %i.ab) #12, !inline_history !11 ; 2 uses
  store i32 %i.af, ptr %i.v, align 8, !tbaa !10
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit.thread, label %bb.h

_ZN27RegisterContextDarwin_arm647ReadGPREb.exit.thread: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 16
  %.not11 = icmp eq i32 %i.ai, 0
  br i1 %.not11, label %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit.thread, label %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit

_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit:  ; preds = %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit.thread
  %i.aj = load ptr, ptr %0, align 16, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ao = load ptr, ptr %0, align 16, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.am, i32 noundef 17, ptr noundef nonnull align 16 dereferenceable(528) %i.an) #12, !inline_history !12 ; 2 uses
  store i32 %i.ar, ptr %i.ah, align 16, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit.thread, label %bb.h

_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit.thread: ; preds = %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit.thread, %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %.not12 = icmp eq i32 %i.au, 0
  br i1 %.not12, label %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit.thread, label %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit

_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit:  ; preds = %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit.thread
  %i.av = load ptr, ptr %0, align 16, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i64 %i.ax(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.ba = load ptr, ptr %0, align 16, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.ay, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(16) %i.az) #12, !inline_history !13 ; 2 uses
  store i32 %i.bd, ptr %i.at, align 8, !tbaa !10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit.thread, label %bb.h

_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit.thread: ; preds = %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit.thread, %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !123   ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #12, !inline_history !116 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %i.bj, ptr noundef nonnull align 8 dereferenceable(272) %i.bk, i64 272, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(528) %i.bl, ptr noundef nonnull align 16 dereferenceable(528) %i.bm, i64 528, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 544
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, ptr noundef nonnull align 16 dereferenceable(16) %i.bo, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit, %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit, %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit, %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit.thread
  %.0 = phi i1 [ true, %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit.thread ], [ false, %_ZN27RegisterContextDarwin_arm647ReadEXCEb.exit ], [ false, %_ZN27RegisterContextDarwin_arm647ReadFPUEb.exit ], [ false, %_ZN27RegisterContextDarwin_arm647ReadGPREb.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN27RegisterContextDarwin_arm6422WriteAllRegisterValuesERKSt10shared_ptrIN12lldb_private10DataBufferEE(ptr noundef nonnull align 16 dereferenceable(1416) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !127    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.f = icmp eq i64 %i.e, 816
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !127    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #12, !inline_history !124 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.l, ptr noundef nonnull align 1 dereferenceable(272) %i.k, i64 272, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(528) %i.n, ptr noundef nonnull align 1 dereferenceable(528) %i.m, i64 528, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.a, label %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.a: ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 16, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !15
  %i.x = load ptr, ptr %0, align 16, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 304
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.w, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(272) %i.l) #12, !inline_history !15 ; 2 uses
  store i32 -1, ptr %i.q, align 8, !tbaa !10
  %i.ab = icmp eq i32 %i.aa, 0
  br label %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread: ; preds = %bb.c, %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.a
  %.sink = phi i32 [ %i.aa, %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.a ], [ -1, %bb.c ]
  %.0.i = phi i1 [ %i.ab, %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.a ], [ false, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1388
  store i32 %.sink, ptr %i.ac, align 4, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !10
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.a, label %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.a: ; preds = %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread
  %i.ag = load ptr, ptr %0, align 16, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !16
  %i.ak = load ptr, ptr %0, align 16, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i32 %i.am(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.aj, i32 noundef 17, ptr noundef nonnull align 16 dereferenceable(528) %i.n) #12, !inline_history !16 ; 2 uses
  store i32 -1, ptr %i.ad, align 16, !tbaa !10
  %i.ao = icmp eq i32 %i.an, 0
  %2 = and i1 %.0.i, %i.ao
  br label %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread: ; preds = %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread, %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.a
  %.sink26 = phi i32 [ %i.an, %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.a ], [ -1, %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread ]
  %.0.i15 = phi i1 [ %2, %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.a ], [ false, %_ZN27RegisterContextDarwin_arm648WriteGPREv.exit.thread ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1396
  store i32 %.sink26, ptr %i.ap, align 4, !tbaa !10
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.a, label %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.a: ; preds = %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread
  %i.at = load ptr, ptr %0, align 16, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 248
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !17
  %i.ax = load ptr, ptr %0, align 16, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call noundef i32 %i.az(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.aw, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(16) %i.p) #12, !inline_history !17 ; 2 uses
  store i32 -1, ptr %i.aq, align 8, !tbaa !10
  %i.bb = icmp eq i32 %i.ba, 0
  %3 = and i1 %.0.i15, %i.bb
  br label %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.thread

_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.thread: ; preds = %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread, %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.a
  %.sink27 = phi i32 [ %i.ba, %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.a ], [ -1, %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread ]
  %.0.i17 = phi i1 [ %3, %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.a ], [ false, %_ZN27RegisterContextDarwin_arm648WriteFPUEv.exit.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store i32 %.sink27, ptr %i.bc, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.thread, %bb.a, %bb.b
  %.013 = phi i1 [ %.0.i17, %_ZN27RegisterContextDarwin_arm648WriteEXCEv.exit.thread ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN27RegisterContextDarwin_arm6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj(ptr nofree nonnull readnone align 16 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
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
  %i.b = icmp ult i32 %2, 96
  br i1 %i.b, label %switch.lookup11, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %2, 33
  br i1 %i.c, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  br label %switch.lookup

switch.lookup10:                                  ; preds = %bb.b
  %i.d = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN27RegisterContextDarwin_arm6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj, i64 %i.d
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %switch.lookup

switch.lookup11:                                  ; preds = %bb.c
  %i.e = zext nneg i32 %2 to i64
  %switch.gep12 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN27RegisterContextDarwin_arm6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj.1, i64 %i.e
  %switch.load13 = load i32, ptr %switch.gep12, align 4
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.lookup11, %switch.lookup10, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ -1, %bb.e ], [ %2, %bb.a ], [ %2, %bb.d ], [ %switch.load13, %switch.lookup11 ], [ %switch.ext, %switch.lookup10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN27RegisterContextDarwin_arm6431NumSupportedHardwareWatchpointsEv(ptr nofree nonnull readnone align 16 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN27RegisterContextDarwin_arm6421SetHardwareWatchpointEmmbb(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %1, i64 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12 ; 2 uses
  %or.cond = or i1 %3, %4
  %i.e = add i64 %2, -1
  %i.f = icmp ult i64 %i.e, 4
  %or.cond37.not = and i1 %i.f, %or.cond
  br i1 %or.cond37.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = trunc i64 %1 to i32
  %i.h = and i32 %i.g, 3
  %i.i = trunc nuw nsw i64 %2 to i32
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1
  %i.k = shl nuw nsw i32 %i.j, %i.h               ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 15
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.n = load i32, ptr %i.m, align 16
  %.not42 = icmp eq i32 %i.n, 0
  br i1 %.not42, label %.critedge43.preheader, label %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit

_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit:  ; preds = %bb.c
  %i.o = load ptr, ptr %0, align 16, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 %i.q(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.t = load ptr, ptr %0, align 16, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.r, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(520) %i.s) #12, !inline_history !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 %i.w, ptr %i.x, align 8, !tbaa !10
  %.pre.i = load i32, ptr %i.m, align 16, !tbaa !10
  %i.y = icmp eq i32 %.pre.i, 0
  br i1 %i.y, label %.critedge43.preheader, label %bb.e

.critedge43.preheader:                            ; preds = %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit, %bb.c
  %.not49 = icmp eq i32 %i.d, 0
  br i1 %.not49, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge43.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge43
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge43 ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ac = and i64 %i.ab, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZN27RegisterContextDarwin_arm648WriteDBGEv.exit, label %.critedge43

.critedge43:                                      ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !128

_ZN27RegisterContextDarwin_arm648WriteDBGEv.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.af = shl nuw nsw i32 %i.k, 5
  %i.ag = and i64 %1, -4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !20
  %i.aj = select i1 %3, i32 8, i32 0
  %i.ak = or disjoint i32 %i.af, %i.aj
  %i.al = select i1 %4, i32 16, i32 0
  %i.am = or disjoint i32 %i.ak, %i.al
  %i.an = or disjoint i32 %i.am, 5
  %i.ao = zext nneg i32 %i.an to i64
  store i64 %i.ao, ptr %i.ae, align 8, !tbaa !20
  %i.ap = trunc nuw i64 %indvars.iv to i32
  %i.aq = load ptr, ptr %0, align 16, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 248
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i64 %i.as(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !18
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.av = load ptr, ptr %0, align 16, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 328
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.at, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(520) %i.au) #12, !inline_history !18
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 -1, ptr %i.az, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1412
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1404
  store i32 %i.ay, ptr %i.bc, align 4, !tbaa !10
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.e, label %.critedge

.critedge:                                        ; preds = %.critedge43, %.critedge43.preheader, %_ZN27RegisterContextDarwin_arm648WriteDBGEv.exit
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit, %.critedge, %_ZN27RegisterContextDarwin_arm648WriteDBGEv.exit, %bb.a
  %.5 = phi i32 [ -1, %bb.a ], [ -1, %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit ], [ -1, %.critedge ], [ -1, %bb.b ], [ %i.ap, %_ZN27RegisterContextDarwin_arm648WriteDBGEv.exit ]
  ret i32 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN27RegisterContextDarwin_arm6423ClearHardwareWatchpointEj(ptr noundef nonnull align 16 dereferenceable(1416) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 3 uses
  %i.b = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 16, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12, !inline_history !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.h = load ptr, ptr %0, align 16, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 16 dereferenceable(1416) %0, i64 noundef %i.f, i32 noundef 15, ptr noundef nonnull align 8 dereferenceable(520) %i.g) #12, !inline_history !14
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store i32 %i.k, ptr %i.l, align 8, !tbaa !10
  %.pre.i = load i32, ptr %i.a, align 16, !tbaa !10
  %i.m = icmp eq i32 %.pre.i, 0
  br label %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit

_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit:  ; preds = %bb.a, %bb.b
  %i.n = phi i1 [ true, %bb.a ], [ %i.m, %bb.b ]
  %i.o = load ptr, ptr %0, align 16, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 16 dereferenceable(1416) %0) #12
  %i.s = icmp ult i32 %1, %i.r
  %or.cond = and i1 %i.n, %i.s
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN27RegisterContextDarwin_arm647ReadDBGEb.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.u = zext i32 %1 to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  store i64 0, ptr %i.v, align 8, !tbaa !20
  %i.w = load i32, ptr %i.a, align 16, !tbaa !10
end_hunk_0
