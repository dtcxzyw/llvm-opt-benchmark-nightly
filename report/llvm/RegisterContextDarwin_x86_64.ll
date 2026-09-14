Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterContextDarwin_x86_64?download=true
inline.NumInlined: 152
inline.NumDeleted: 76
begin_hunk_0_@_ZN28RegisterContextDarwin_x86_6413WriteRegisterEPKN12lldb_private12RegisterInfoERKNS0_13RegisterValueE:bb.a
}

declare noundef i64 @_ZNK12lldb_private13RegisterValue11GetAsUInt64EmPb(ptr noundef nonnull align 8 dereferenceable(344), i64 noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i16 @_ZNK12lldb_private13RegisterValue11GetAsUInt16EtPb(ptr noundef nonnull align 8 dereferenceable(344), i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private13RegisterValue11GetAsUInt32EjPb(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK12lldb_private13RegisterValue8GetBytesEv(ptr noundef nonnull align 8 dereferenceable(344)) local_unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private13RegisterValue11GetByteSizeEv(ptr noundef nonnull align 8 dereferenceable(344)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN28RegisterContextDarwin_x86_6421ReadAllRegisterValuesERSt10shared_ptrIN12lldb_private18WritableDataBufferEE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15, !noalias !102 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !104, !noalias !105
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.c, align 4, !tbaa !106, !noalias !105
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private14DataBufferHeapESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !9, !noalias !105
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @_ZN12lldb_private14DataBufferHeapC1Emh(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef 708, i8 noundef zeroext 0) #12, !noalias !105
  store ptr %i.d, ptr %1, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 8 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !109
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !106
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !100
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12, !inline_history !100
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
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
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !110

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #12
  br label %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.c, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit.thread, label %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit

_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 248
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %0, align 8, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 272
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.aa, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(168) %i.ab) #12, !inline_history !11 ; 2 uses
  store i32 %i.af, ptr %i.v, align 8, !tbaa !10
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit.thread, label %bb.h

_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit.thread: ; preds = %_ZNSt12__shared_ptrIN12lldb_private14DataBufferHeapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %.not11 = icmp eq i32 %i.ai, 0
  br i1 %.not11, label %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit.thread, label %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit

_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit: ; preds = %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit.thread
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ao = load ptr, ptr %0, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.am, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(524) %i.an) #12, !inline_history !12 ; 2 uses
  store i32 %i.ar, ptr %i.ah, align 8, !tbaa !10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit.thread, label %bb.h

_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit.thread: ; preds = %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit.thread, %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8
  %.not12 = icmp eq i32 %i.au, 0
  br i1 %.not12, label %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit.thread, label %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit

_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit: ; preds = %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit.thread
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 248
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.ba = load ptr, ptr %0, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 288
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.ay, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %i.az) #12, !inline_history !13 ; 2 uses
  store i32 %i.bd, ptr %i.at, align 8, !tbaa !10
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit.thread, label %bb.h

_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit.thread: ; preds = %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit.thread, %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !112   ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #12, !inline_history !101 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.bj, ptr noundef nonnull align 8 dereferenceable(168) %i.bk, i64 168, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 168
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(524) %i.bl, ptr noundef nonnull align 8 dereferenceable(524) %i.bm, i64 524, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 336
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 736
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit, %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit, %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit, %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit.thread
  %.0 = phi i1 [ true, %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit.thread ], [ false, %_ZN28RegisterContextDarwin_x86_647ReadEXCEb.exit ], [ false, %_ZN28RegisterContextDarwin_x86_647ReadFPUEb.exit ], [ false, %_ZN28RegisterContextDarwin_x86_647ReadGPREb.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN28RegisterContextDarwin_x86_6422WriteAllRegisterValuesERKSt10shared_ptrIN12lldb_private10DataBufferEE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !116    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12
  %i.f = icmp eq i64 %i.e, 708
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !116    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #12, !inline_history !113 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, ptr noundef nonnull align 1 dereferenceable(168) %i.k, i64 168, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(524) %i.n, ptr noundef nonnull align 1 dereferenceable(524) %i.m, i64 524, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !10
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.a, label %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.a: ; preds = %bb.c
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !14
  %i.x = load ptr, ptr %0, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.w, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(168) %i.l) #12, !inline_history !14
  store i32 -1, ptr %i.q, align 8, !tbaa !10
  br label %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread: ; preds = %bb.c, %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.a
  %.sink = phi i32 [ %i.aa, %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.a ], [ -1, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 756
  store i32 %.sink, ptr %i.ab, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !10
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.a, label %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.a: ; preds = %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread
  %i.af = load ptr, ptr %0, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !15
  %i.aj = load ptr, ptr %0, align 8, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 304
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.ai, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(524) %i.n) #12, !inline_history !15
  store i32 -1, ptr %i.ac, align 8, !tbaa !10
  br label %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread: ; preds = %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread, %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.a
  %.sink21 = phi i32 [ %i.am, %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.a ], [ -1, %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit.thread ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 764
  store i32 %.sink21, ptr %i.an, align 4, !tbaa !10
  %2 = or i32 %.sink21, %.sink
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !10
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.a, label %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.a: ; preds = %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread
  %i.ar = load ptr, ptr %0, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 248
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !16
  %i.av = load ptr, ptr %0, align 8, !tbaa !9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 312
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.au, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(16) %i.p) #12, !inline_history !16
  store i32 -1, ptr %i.ao, align 8, !tbaa !10
  br label %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.thread

_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.thread: ; preds = %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread, %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.a
  %.sink22 = phi i32 [ %i.ay, %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.a ], [ -1, %_ZN28RegisterContextDarwin_x86_648WriteFPUEv.exit.thread ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 772
  store i32 %.sink22, ptr %i.az, align 4, !tbaa !10
  %3 = or i32 %2, %.sink22
  %i.ba = icmp eq i32 %3, 0
  br label %bb.d

bb.d:                                             ; preds = %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.thread, %bb.a, %bb.b
  %.013 = phi i1 [ %i.ba, %_ZN28RegisterContextDarwin_x86_648WriteEXCEv.exit.thread ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN28RegisterContextDarwin_x86_6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %2, 5
  br i1 %i.b, label %switch.lookup, label %bb.f

bb.c:                                             ; preds = %bb.a
  %or.cond = icmp ult i32 %1, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ult i32 %2, 41
  br i1 %i.c, label %switch.lookup11, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.d = icmp eq i32 %1, 4
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  br label %bb.g

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %2 to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN28RegisterContextDarwin_x86_6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj, i64 %i.e
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.g

switch.lookup11:                                  ; preds = %bb.d
  %i.f = zext nneg i32 %2 to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table._ZN28RegisterContextDarwin_x86_6435ConvertRegisterKindToRegisterNumberEN4lldb12RegisterKindEj.1, i64 %i.f
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %switch.ext = zext i8 %switch.load13 to i32
  br label %bb.g

bb.g:                                             ; preds = %switch.lookup11, %switch.lookup, %bb.e, %bb.f
  %.0 = phi i32 [ -1, %bb.f ], [ %switch.ext, %switch.lookup11 ], [ %2, %bb.e ], [ %switch.load, %switch.lookup ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN28RegisterContextDarwin_x86_6418HardwareSingleStepEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.e, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(168) %i.f) #12, !inline_history !11 ; 2 uses
  store i32 %i.j, ptr %i.a, align 8, !tbaa !10
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !117  ; 3 uses
  %i.m = and i64 %i.l, 256
  %.not3 = icmp eq i64 %i.m, 0                    ; 2 uses
  br i1 %1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = or disjoint i64 %i.l, 256
  br label %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i64 %i.l, -257
  br label %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit

_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit: ; preds = %bb.f, %bb.d
  %.sink = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.d ]
  store i64 %.sink, ptr %i.k, align 8, !tbaa !117
  %i.p = load ptr, ptr %0, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(776) %0) #12, !inline_history !14
  %i.t = load ptr, ptr %0, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 296
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef i32 %i.v(ptr noundef nonnull align 8 dereferenceable(776) %0, i64 noundef %i.s, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(168) %i.f) #12, !inline_history !14 ; 2 uses
  store i32 -1, ptr %i.a, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 756
  store i32 %i.w, ptr %i.x, align 4, !tbaa !10
  %i.y = icmp eq i32 %i.w, 0
  br label %bb.g

bb.g:                                             ; preds = %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit, %bb.c, %bb.e, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ %i.y, %_ZN28RegisterContextDarwin_x86_648WriteGPREv.exit ], [ true, %bb.e ]
  ret i1 %.1
}

declare void @_ZN12lldb_private15RegisterContext15CalculateTargetEv() unnamed_addr

declare void @_ZN12lldb_private15RegisterContext16CalculateProcessEv() unnamed_addr

declare void @_ZN12lldb_private15RegisterContext15CalculateThreadEv() unnamed_addr

declare void @_ZN12lldb_private15RegisterContext19CalculateStackFrameEv() unnamed_addr

declare void @_ZN12lldb_private15RegisterContext25CalculateExecutionContextERNS_16ExecutionContextE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef i32 @_ZN12lldb_private15RegisterContext12GetByteOrderEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private15RegisterContext30RegisterWriteCausesReconfigureEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i64 %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12lldb_private15RegisterContext23ReconfigureRegisterInfoEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN12lldb_private15RegisterContext21ReadAllRegisterValuesERNS_18RegisterCheckpointE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private15RegisterContext22WriteAllRegisterValuesERKNS_18RegisterCheckpointE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef i32 @_ZN12lldb_private15RegisterContext31NumSupportedHardwareBreakpointsEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef i32 @_ZN12lldb_private15RegisterContext21SetHardwareBreakpointEmm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private15RegisterContext23ClearHardwareBreakpointEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN12lldb_private15RegisterContext31NumSupportedHardwareWatchpointsEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef i32 @_ZN12lldb_private15RegisterContext21SetHardwareWatchpointEmmbb(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private15RegisterContext23ClearHardwareWatchpointEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

declare void @_ZN12lldb_private15RegisterContext27ReadRegisterValueFromMemoryEPKNS_12RegisterInfoEmjRNS_13RegisterValueE(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #1

declare void @_ZN12lldb_private15RegisterContext26WriteRegisterValueToMemoryEPKNS_12RegisterInfoEmjRKNS_13RegisterValueE(ptr dead_on_unwind writable sret(%"class.lldb_private::Status") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(344)) unnamed_addr #1

declare noundef i64 @_ZNK12lldb_private15RegisterContext11GetThreadIDEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 1 ptr @_ZN12lldb_private15RegisterContext9GetThreadEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK12lldb_private15RegisterContext22BehavesLikeZerothFrameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

declare void @_ZN4llvm6detail9IEEEFloatC1Ef(ptr noundef nonnull align 8 dereferenceable(24), float noundef) unnamed_addr #1

declare void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7APFloat7StorageaSEOS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

declare noundef zeroext i8 @_ZNK12lldb_private6Scalar5UCharEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !inline_history !120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

end_hunk_0
