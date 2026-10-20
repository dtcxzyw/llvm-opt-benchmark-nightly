Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonInstrInfo?download=true
inline.NumInlined: 4442
inline.NumDeleted: 1510
begin_hunk_0_@_ZN4llvm9AutomatonImEC2ERKS1_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !50
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !50
  br label %_ZNSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEEC2ERKSA_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEEC2ERKSA_.exit

_ZNSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEEC2ERKSA_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !73
  store i64 %i.l, ptr %i.j, align 8, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i8, ptr %i.n, align 8, !tbaa !64, !range !104, !noundef !105
  store i8 %i.o, ptr %i.m, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95   ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEEC2ERKSA_.exit
  %.sroa.0.0.copyload.i = load ptr, ptr %i.q, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !63
  %i.r = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #30, !noalias !576 ; 27 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !67, !noalias !577
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 1, ptr %i.t, align 4, !tbaa !68, !noalias !577
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4llvm8internal14NfaTranscriberESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !70, !noalias !577
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %.sroa.0.0.copyload.i, ptr %i.u, align 8, !tbaa !75, !noalias !577
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !63, !noalias !577
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.v, i8 0, i64 16, i1 false), !noalias !577
  store ptr %i.x, ptr %i.w, align 8, !tbaa !77, !noalias !577
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 0, ptr %i.y, align 8, !tbaa !78, !noalias !577
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store i32 4, ptr %i.z, align 4, !tbaa !79, !noalias !577
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 112 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !77, !noalias !577
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i8 0, i64 88, i1 false), !noalias !577
  store i64 8, ptr %i.ad, align 8, !tbaa !86, !noalias !577
  %i.ae = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30, !noalias !577 ; 2 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !87, !noalias !577
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !86, !noalias !577
  %i.ag = add i64 %i.af, -1
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah ; 3 uses
  %i.aj = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30, !noalias !577 ; 6 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !88, !noalias !577
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !89, !noalias !577
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !90, !noalias !577
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 512 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !91, !noalias !577
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 184
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !89, !noalias !577
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 168
  store ptr %i.aj, ptr %i.ar, align 8, !tbaa !90, !noalias !577
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  store ptr %i.an, ptr %i.as, align 8, !tbaa !91, !noalias !577
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !92, !noalias !577
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !93, !noalias !577
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  store ptr %i.au, ptr %i.at, align 8, !tbaa !77, !noalias !577
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  store i32 0, ptr %i.av, align 8, !tbaa !78, !noalias !577
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 204
  store i32 4, ptr %i.aw, align 4, !tbaa !79, !noalias !577
  tail call void @_ZN4llvm8internal14NfaTranscriber5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %i.u), !noalias !577
  store ptr %i.u, ptr %i.i, align 8, !tbaa !94
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !65 ; 8 uses
  store ptr %i.r, ptr %i.ax, align 8, !tbaa !65
  %.not.i.i.i.i6 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i6, label %_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.az, align 8, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4, !tbaa !68
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #29, !inline_history !0
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #29, !inline_history !0
  br label %_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !71
  %.not.i.i.i.i.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.i ], [ %i.bm, %bb.j ]
  %i.bn = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bn, label %bb.k, label %_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !72

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #29
  br label %_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4llvm8internal14NfaTranscriberELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZNSt10shared_ptrISt3mapISt4pairImmES1_ImjESt4lessIS2_ESaIS1_IKS2_S3_EEEEC2ERKSA_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4llvm19HexagonGenInstrInfoC2ERKNS_19TargetSubtargetInfoERKNS_18TargetRegisterInfoEjjjj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(112) initializes((0, 52), (56, 66), (72, 112)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(316) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.a, align 8, !tbaa !107
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i32 %3, ptr %i.c, align 8, !tbaa !578
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %4, ptr %i.d, align 4, !tbaa !579
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %5, ptr %i.e, align 8, !tbaa !580
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %6, ptr %i.f, align 4, !tbaa !581
  store ptr getelementptr inbounds nuw inrange(-16, 1480) (i8, ptr @_ZTVN4llvm19HexagonGenInstrInfoE, i64 16), ptr %0, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12HexagonDescsE, i64 109888), ptr %i.g, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm23HexagonInstrNameIndicesE, ptr %i.h, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm20HexagonInstrNameDataE, ptr %i.i, align 8, !tbaa !123
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i32 3435, ptr %i.k, align 8, !tbaa !124
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.l, align 8, !tbaa !125
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 0, ptr %i.m, align 8, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 70, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon21changeAddrMode_io_absEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 70, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_io_absEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_io_absEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_io_piEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 24, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_piEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !3

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_piEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_io_rrEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 70, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !4

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_pi_ioEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 24, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_pi_ioEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !5

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_pi_ioEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_rr_ioEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 70, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_ioEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !6

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_ioEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_rr_urEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 11, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_urEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !7

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_urEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon20changeAddrMode_ur_rrEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 11, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !8

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon18getFalsePredOpcodeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 250, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon17getNewValueOpcodeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 99, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getNewValueOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !10

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getNewValueOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon13getNonNVStoreEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 99, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon16getPredNewOpcodeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 162, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredNewOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredNewOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon16getPredOldOpcodeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 162, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredOldOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !13

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredOldOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.027 = phi i32 [ 128, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01826 = phi i32 [ 0, %bb.a ], [ %.119, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.027, %.01826
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01826                    ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseEE5Table, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.119 = select i1 %i.h, i32 %.01826, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.027       ; 3 uses
  %i.j = icmp ult i32 %.119, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !14

bb.d:                                             ; preds = %bb.b, %bb.c
  %.018.lcssa = phi i32 [ %.01826, %bb.b ], [ %.119, %bb.c ]
  %.0.lcssa = phi i32 [ %.027, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.018.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.e, label %.sink.split

.sink.split:                                      ; preds = %bb.d
  %i.l = icmp eq i32 %1, 1
  %spec.select = select i1 %i.l, i64 4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 %spec.select
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.022 = phi i32 [ -1, %bb.d ], [ %i.n, %.sink.split ]
  ret i32 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon14getRealHWInstrEjNS0_9InstrTypeE(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon10getRegFormEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 28, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon17getTruePredOpcodeEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 250, %bb.a ], [ %.1, %bb.c ]  ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !16

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon24notTakenBranchPredictionEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 64, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !17

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm7Hexagon21takenBranchPredictionEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 64, %bb.a ], [ %.1, %bb.c ]   ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !18

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !584  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #29, !inline_history !582 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !70
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !128, !range !104, !noundef !105
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !129
  tail call void @free(ptr noundef %i.i) #29
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #29
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm16HexagonInstrInfo6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16HexagonInstrInfoC2ERKNS_16HexagonSubtargetE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(519600) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.a, ptr %i.b, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store <4 x i32> <i32 349, i32 350, i32 -1, i32 -1>, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm12HexagonDescsE, i64 109888), ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @_ZN4llvm23HexagonInstrNameIndicesE, ptr %i.f, align 8, !tbaa !122
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN4llvm20HexagonInstrNameDataE, ptr %i.g, align 8, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 3435, ptr %i.i, align 8, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.j, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i16 0, ptr %i.k, align 8, !tbaa !126
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm16HexagonInstrInfoE, i64 16), ptr %0, align 8, !tbaa !70
  %i.l = tail call noundef i32 @_ZNK4llvm23HexagonGenSubtargetInfo9getHwModeENS_15MCSubtargetInfo10HwModeTypeE(ptr noundef nonnull align 8 dereferenceable(344) %1, i32 noundef 0) #29
  tail call void @_ZN4llvm19HexagonRegisterInfoC1Ej(ptr noundef nonnull align 8 dereferenceable(316) %i.a, i32 noundef %i.l) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  store ptr %1, ptr %i.m, align 8, !tbaa !585
  ret void
}

declare noundef i32 @_ZNK4llvm23HexagonGenSubtargetInfo9getHwModeENS_15MCSubtargetInfo10HwModeTypeE(ptr noundef nonnull align 8 dereferenceable(344), i32 noundef) unnamed_addr #7

declare void @_ZN4llvm19HexagonRegisterInfoC1Ej(ptr noundef nonnull align 8 dereferenceable(316), i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo16isAsCheapAsAMoveERKNS_12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #29
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !586, !nonnull !105, !align !244 ; 2 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.b, i32 noundef 51) #29
  br i1 %i.c, label %_ZNK4llvm8Function10hasOptSizeEv.exit.thread, label %_ZNK4llvm8Function10hasOptSizeEv.exit

_ZNK4llvm8Function10hasOptSizeEv.exit:            ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.b, i32 noundef 19) #29
  br i1 %i.d, label %_ZNK4llvm8Function10hasOptSizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !260  ; 2 uses
  %i.g = and i32 %i.f, 12
  %i.h = icmp eq i32 %i.g, 0
  %i.i = and i32 %i.f, 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond.i.i = or i1 %i.h, %i.j
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !261
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !263
  %i.o = and i64 %i.n, 1073741824
  %i.p = icmp ne i64 %i.o, 0
  br label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit

bb.d:                                             ; preds = %bb.b
  %i.q = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 1073741824, i32 noundef 2) #29
  br label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit

_ZNK4llvm8Function10hasOptSizeEv.exit.thread:     ; preds = %bb.a, %_ZNK4llvm8Function10hasOptSizeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !264
  %i.t = icmp eq i32 %i.s, 1055
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4llvm8Function10hasOptSizeEv.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !265  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.0.0.copyload = load i32, ptr %i.w, align 8, !tbaa !71
  %trunc = trunc i32 %.sroa.0.0.copyload to i8
  switch i8 %trunc, label %bb.g [
    i8 10, label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit
    i8 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8
  %i.x = add i64 %.sroa.514.0.copyload, 32768
  %i.y = icmp ult i64 %i.x, 65536
  br i1 %i.y, label %bb.g, label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNK4llvm8Function10hasOptSizeEv.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !260 ; 2 uses
  %i.ab = and i32 %i.aa, 12
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = and i32 %i.aa, 4
  %i.ae = icmp ne i32 %i.ad, 0
  %or.cond.i.i10 = or i1 %i.ac, %i.ae
  br i1 %or.cond.i.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !261
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !263
  %i.aj = and i64 %i.ai, 1073741824
  %i.ak = icmp ne i64 %i.aj, 0
  br label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit

bb.i:                                             ; preds = %bb.g
  %i.al = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef 1073741824, i32 noundef 2) #29
  br label %_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit

_ZNK4llvm12MachineInstr16isAsCheapAsAMoveENS0_9QueryTypeE.exit: ; preds = %bb.f, %bb.e, %bb.i, %bb.h, %bb.d, %bb.c
  %.3 = phi i1 [ %i.q, %bb.d ], [ %i.al, %bb.i ], [ %i.p, %bb.c ], [ %i.ak, %bb.h ], [ false, %bb.e ], [ false, %bb.f ]
  ret i1 %.3
}

declare noundef ptr @_ZNK4llvm12MachineInstr5getMFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10shouldSinkERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
end_hunk_0
begin_hunk_1_@_ZNK4llvm16HexagonInstrInfo19expandVGatherPseudoERNS_12MachineInstrE:bb.a
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i214, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !270 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 44
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !260
  %i.kk = and i32 %i.kj, 8
  %.not3.i.i.i.i.i215 = icmp eq i32 %i.kk, 0
  br i1 %.not3.i.i.i.i.i215, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i213, !llvm.loop !20

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i213, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i211, %bb.g
  %.sroa.0.1.i.i.i.i.i203 = phi ptr [ %1, %bb.g ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i211 ], [ %i.kh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i213 ]
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i203, i64 8
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !270 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.not4.i.i.i204 = icmp eq ptr %1, %i.km
  br i1 %.not4.i.i.i204, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i205

.lr.ph.i.i.i205:                                  ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202, %.lr.ph.i.i.i205
  %.sroa.03.05.i.i.i206 = phi ptr [ %i.kp, %.lr.ph.i.i.i205 ], [ %1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202 ] ; 6 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i206, i64 8 ; 3 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !270 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull %.sroa.03.05.i.i.i206) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i207 = load i64, ptr %.sroa.03.05.i.i.i206, align 8
  %i.kq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i207, -8 ; 2 uses
  %i.kr = inttoptr i64 %i.kq to ptr
  %i.ks = load ptr, ptr %i.ko, align 8, !tbaa !270 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i208 = load i64, ptr %i.ks, align 8
  %i.kt = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i208, 7
  %i.ku = or disjoint i64 %i.kt, %i.kq
  store i64 %i.ku, ptr %i.ks, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.ks, ptr %i.kv, align 8, !tbaa !270
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i209 = load i64, ptr %.sroa.03.05.i.i.i206, align 8
  %i.kw = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i209, 7
  store i64 %i.kw, ptr %.sroa.03.05.i.i.i206, align 8
  store ptr null, ptr %i.ko, align 8, !tbaa !270
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull %.sroa.03.05.i.i.i206) #29
  %.not.i.i.i210 = icmp eq ptr %i.kp, %i.km
  br i1 %.not.i.i.i210, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i205, !llvm.loop !21

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  %.sroa.02.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !277
  store ptr %.sroa.02.0.copyload, ptr %27, align 8, !tbaa !277
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !121
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 -96448
  %i.lb = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %i.la) ; 2 uses
  %i.lc = extractvalue { ptr, ptr } %i.lb, 0      ; 4 uses
  %i.ld = extractvalue { ptr, ptr } %i.lb, 1      ; 6 uses
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !265
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 64
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lg) #29
  %i.lh = load ptr, ptr %i.le, align 8, !tbaa !265
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 96
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.li) #29
  %i.lj = load ptr, ptr %i.le, align 8, !tbaa !265
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lk) #29
  %i.ll = load ptr, ptr %i.le, align 8, !tbaa !265
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 160
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ld, ptr noundef nonnull align 8 dereferenceable(1065) %i.lc, ptr noundef nonnull align 8 dereferenceable(32) %i.lm) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  %.sroa.01.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !277
  store ptr %.sroa.01.0.copyload, ptr %28, align 8, !tbaa !277
  %i.ln = getelementptr inbounds nuw i8, ptr %28, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i8 0, i64 24, i1 false)
  %i.lo = load ptr, ptr %i.ky, align 8, !tbaa !121
  %i.lp = getelementptr inbounds i8, ptr %i.lo, i64 -87840
  %i.lq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.lp) ; 2 uses
  %i.lr = extractvalue { ptr, ptr } %i.lq, 0      ; 3 uses
  %i.ls = extractvalue { ptr, ptr } %i.lq, 1      ; 3 uses
  %i.lt = load ptr, ptr %i.le, align 8, !tbaa !265
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ls, ptr noundef nonnull align 8 dereferenceable(1065) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %i.lt) #29
  %i.lu = load ptr, ptr %i.le, align 8, !tbaa !265
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  store i32 1, ptr %3, align 8, !alias.scope !992
  %i.lx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.lx, align 8, !tbaa !274, !alias.scope !992
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.lw, ptr %i.ly, align 8, !tbaa !71, !alias.scope !992
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ls, ptr noundef nonnull align 8 dereferenceable(1065) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.lz, align 8, !tbaa !274, !alias.scope !993
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 46, ptr %i.ma, align 4, !tbaa !71, !alias.scope !993
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i8 0, i64 16, i1 false), !alias.scope !993
  store i32 0, ptr %2, align 8, !alias.scope !993
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ls, ptr noundef nonnull align 8 dereferenceable(1065) %i.lr, ptr noundef nonnull align 8 dereferenceable(32) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i218 = load i64, ptr %1, align 8
  %i.mc = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i218, 4
  %.not.i.i.i.i.i219 = icmp eq i64 %i.mc, 0
  br i1 %.not.i.i.i.i.i219, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229: ; preds = %bb.h
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.me = load i32, ptr %i.md, align 4, !tbaa !260
  %i.mf = and i32 %i.me, 8
  %.not34.i.i.i.i.i230 = icmp eq i32 %i.mf, 0
  br i1 %.not34.i.i.i.i.i230, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231
  %.sroa.0.05.i.i.i.i.i232 = phi ptr [ %i.mh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231 ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229 ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i232, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !270 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 44
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !260
  %i.mk = and i32 %i.mj, 8
  %.not3.i.i.i.i.i233 = icmp eq i32 %i.mk, 0
  br i1 %.not3.i.i.i.i.i233, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231, !llvm.loop !20

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229, %bb.h
  %.sroa.0.1.i.i.i.i.i221 = phi ptr [ %1, %bb.h ], [ %1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i229 ], [ %i.mh, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i231 ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i221, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !270 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %.not4.i.i.i222 = icmp eq ptr %1, %i.mm
  br i1 %.not4.i.i.i222, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i223

.lr.ph.i.i.i223:                                  ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220, %.lr.ph.i.i.i223
  %.sroa.03.05.i.i.i224 = phi ptr [ %i.mp, %.lr.ph.i.i.i223 ], [ %1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220 ] ; 6 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i224, i64 8 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !270 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull %.sroa.03.05.i.i.i224) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i225 = load i64, ptr %.sroa.03.05.i.i.i224, align 8
  %i.mq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i225, -8 ; 2 uses
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = load ptr, ptr %i.mo, align 8, !tbaa !270 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i226 = load i64, ptr %i.ms, align 8
  %i.mt = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i226, 7
  %i.mu = or disjoint i64 %i.mt, %i.mq
  store i64 %i.mu, ptr %i.ms, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store ptr %i.ms, ptr %i.mv, align 8, !tbaa !270
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i227 = load i64, ptr %.sroa.03.05.i.i.i224, align 8
  %i.mw = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i227, 7
  store i64 %i.mw, ptr %.sroa.03.05.i.i.i224, align 8
  store ptr null, ptr %i.mo, align 8, !tbaa !270
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.mn, ptr noundef nonnull %.sroa.03.05.i.i.i224) #29
  %.not.i.i.i228 = icmp eq ptr %i.mp, %i.mm
  br i1 %.not.i.i.i228, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i223, !llvm.loop !21

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i223, %.lr.ph.i.i.i205, %.lr.ph.i.i.i187, %.lr.ph.i.i.i169, %.lr.ph.i.i.i151, %.lr.ph.i.i.i133, %.lr.ph.i.i.i, %bb.a, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i184, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i166, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i148, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i130, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  %.sroa.0127.0 = phi ptr [ %i.dh, %.lr.ph.i.i.i151 ], [ %i.bj, %.lr.ph.i.i.i133 ], [ %1, %bb.a ], [ %i.ff, %.lr.ph.i.i.i169 ], [ %i.hd, %.lr.ph.i.i.i187 ], [ %i.jd, %.lr.ph.i.i.i205 ], [ %i.l, %.lr.ph.i.i.i ], [ %i.l, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.bj, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i130 ], [ %i.dh, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i148 ], [ %i.ff, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i166 ], [ %i.hd, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i184 ], [ %i.jd, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i202 ], [ %i.ld, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i220 ], [ %i.ld, %.lr.ph.i.i.i223 ]
  ret ptr %.sroa.0127.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo22reverseBranchConditionERNS_15SmallVectorImplINS_14MachineOperandEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 5 uses
  %i.g = and i32 %i.f, -3
  %i.h = icmp eq i32 %i.g, 357
  br i1 %i.h, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.k = and i64 %i.e, 4294967295
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !266
  %i.p = and i64 %i.o, 2048
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.preheader.i, label %.preheader12.i

.preheader.i:                                     ; preds = %bb.c, %bb.d
  %.023.i.i = phi i32 [ %.1.i.i, %bb.d ], [ 250, %bb.c ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.q = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.r = lshr i32 %i.q, 1
  %i.s = add i32 %i.r, %.01522.i.i                ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.t
  %i.v = load i32, ptr %i.u, align 8, !tbaa !50   ; 2 uses
  %i.w = icmp eq i32 %i.v, %i.f
  br i1 %i.w, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.x = icmp ugt i32 %i.v, %i.f                  ; 2 uses
  %i.y = add nuw i32 %i.s, 1
  %.116.i.i = select i1 %i.x, i32 %.01522.i.i, i32 %i.y ; 3 uses
  %.1.i.i = select i1 %i.x, i32 %i.s, i32 %.023.i.i ; 3 uses
  %i.z = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.z, label %.preheader.i, label %bb.e, !llvm.loop !9

bb.e:                                             ; preds = %bb.d, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.d ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.d ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.t
  %i.ab = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.ab, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

.preheader12.i:                                   ; preds = %bb.c, %bb.f
  %.023.i5.i = phi i32 [ %.1.i8.i, %bb.f ], [ 250, %bb.c ] ; 3 uses
  %.01522.i6.i = phi i32 [ %.116.i7.i, %bb.f ], [ 0, %bb.c ] ; 4 uses
  %i.ac = sub nuw i32 %.023.i5.i, %.01522.i6.i
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = add i32 %i.ad, %.01522.i6.i             ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, %i.f
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader12.i
  %i.aj = icmp ugt i32 %i.ah, %i.f                ; 2 uses
  %i.ak = add nuw i32 %i.ae, 1
  %.116.i7.i = select i1 %i.aj, i32 %.01522.i6.i, i32 %i.ak ; 3 uses
  %.1.i8.i = select i1 %i.aj, i32 %i.ae, i32 %.023.i5.i ; 3 uses
  %i.al = icmp ult i32 %.116.i7.i, %.1.i8.i
  br i1 %i.al, label %.preheader12.i, label %bb.g, !llvm.loop !16

bb.g:                                             ; preds = %bb.f, %.preheader12.i
  %.015.lcssa.i9.i = phi i32 [ %.01522.i6.i, %.preheader12.i ], [ %.116.i7.i, %bb.f ]
  %.0.lcssa.i10.i = phi i32 [ %.023.i5.i, %.preheader12.i ], [ %.1.i8.i, %bb.f ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.af
  %i.an = icmp eq i32 %.015.lcssa.i9.i, %.0.lcssa.i10.i
  br i1 %i.an, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i: ; preds = %bb.g, %bb.e
  %.sink22.i = phi ptr [ %i.aa, %bb.e ], [ %i.am, %bb.g ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit

_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit: ; preds = %bb.e, %bb.g, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i
  %i.aq = phi i32 [ -1, %bb.e ], [ -1, %bb.g ], [ %i.ap, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i ] ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = zext nneg i32 %i.aq to i64
  store i64 %i.as, ptr %i.d, align 8, !tbaa !71
  br label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, %bb.b, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, i32 noundef %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = zext i32 %1 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !266
  %i.h = and i64 %i.g, 2048
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %.preheader, label %.preheader12

.preheader:                                       ; preds = %bb.a, %bb.b
  %.023.i = phi i32 [ %.1.i, %bb.b ], [ 250, %bb.a ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.i = sub nuw i32 %.023.i, %.01522.i
  %i.j = lshr i32 %i.i, 1
  %i.k = add i32 %i.j, %.01522.i                  ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.l
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.p = icmp ult i32 %1, %i.n                    ; 2 uses
  %i.q = add nuw i32 %i.k, 1
  %.116.i = select i1 %i.p, i32 %.01522.i, i32 %i.q ; 3 uses
  %.1.i = select i1 %i.p, i32 %i.k, i32 %.023.i   ; 3 uses
  %i.r = icmp ult i32 %.116.i, %.1.i
  br i1 %i.r, label %.preheader, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.preheader
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader ], [ %.116.i, %bb.b ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader ], [ %.1.i, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.l
  %i.t = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.t, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split

.preheader12:                                     ; preds = %bb.a, %bb.d
  %.023.i5 = phi i32 [ %.1.i8, %bb.d ], [ 250, %bb.a ] ; 3 uses
  %.01522.i6 = phi i32 [ %.116.i7, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.u = sub nuw i32 %.023.i5, %.01522.i6
  %i.v = lshr i32 %i.u, 1
  %i.w = add i32 %i.v, %.01522.i6                 ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50   ; 2 uses
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader12
  %i.ab = icmp ult i32 %1, %i.z                   ; 2 uses
  %i.ac = add nuw i32 %i.w, 1
  %.116.i7 = select i1 %i.ab, i32 %.01522.i6, i32 %i.ac ; 3 uses
  %.1.i8 = select i1 %i.ab, i32 %i.w, i32 %.023.i5 ; 3 uses
  %i.ad = icmp ult i32 %.116.i7, %.1.i8
  br i1 %i.ad, label %.preheader12, label %bb.e, !llvm.loop !16

bb.e:                                             ; preds = %bb.d, %.preheader12
  %.015.lcssa.i9 = phi i32 [ %.01522.i6, %.preheader12 ], [ %.116.i7, %bb.d ]
  %.0.lcssa.i10 = phi i32 [ %.023.i5, %.preheader12 ], [ %.1.i8, %bb.d ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.x
  %i.af = icmp eq i32 %.015.lcssa.i9, %.0.lcssa.i10
  br i1 %i.af, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split: ; preds = %bb.e, %bb.c
  %.sink22 = phi ptr [ %i.s, %bb.c ], [ %i.ae, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink22, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit:      ; preds = %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split, %bb.e, %bb.c
  %i.ai = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.ah, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split ] ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  ret i32 %i.ai
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -31552
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !321
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr null, i1 noundef zeroext false) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.f) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !270
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.l = or disjoint i64 %i.k, %i.h
  store i64 %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !270
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.p = or disjoint i64 %i.o, %i.n
  store i64 %i.p, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo15isPostIncrementERKNS_12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 7696581394432
  %i.f = icmp eq i64 %i.e, 6597069766656
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 8) i32 @_ZNK4llvm16HexagonInstrInfo11getAddrModeERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 7
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12isPredicatedERKNS_12MachineInstrE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 1024
  %i.f = icmp ne i64 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo20PredicateInstructionERNS_12MachineInstrENS_8ArrayRefINS_14MachineOperandEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MIMetadata", align 8  ; 5 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121  ; 2 uses
  %i.g = and i64 %i.c, 4294967295
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !266  ; 3 uses
  %i.l = and i64 %i.k, 16384
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !263
  %i.o = and i64 %i.k, 1024
  %i.p = and i64 %i.o, %i.n
  %or.cond = icmp ne i64 %i.p, 0
  %i.q = and i32 %i.d, -3
  %i.r = icmp eq i32 %i.q, 357
  %or.cond78 = or i1 %i.r, %or.cond
  br i1 %or.cond78, label %bb.l, label %_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit

_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread: ; preds = %bb.b
  %.old = and i32 %i.d, -3
  %.old77 = icmp eq i32 %.old, 357
  br i1 %.old77, label %bb.l, label %_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit

_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit: ; preds = %bb.c, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.t = load i32, ptr %i.s, align 4, !tbaa !264  ; 2 uses
  %i.u = and i64 %i.k, 3072
  %.0.i = icmp eq i64 %i.u, 3072
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !271  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.027.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !277
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit
  %.027.i.i = phi i32 [ 128, %_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit ], [ %.1.i.i, %bb.e ] ; 3 uses
  %.01826.i.i = phi i32 [ 0, %_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE.exit ], [ %.119.i.i, %bb.e ] ; 4 uses
  %i.y = sub nuw i32 %.027.i.i, %.01826.i.i
  %i.z = lshr i32 %i.y, 1
  %i.aa = add i32 %i.z, %.01826.i.i               ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseEE5Table, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !50 ; 2 uses
  %i.ae = icmp eq i32 %i.t, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ult i32 %i.t, %i.ad                ; 2 uses
  %i.ag = add nuw i32 %i.aa, 1
  %.119.i.i = select i1 %i.af, i32 %.01826.i.i, i32 %i.ag ; 3 uses
  %.1.i.i = select i1 %i.af, i32 %i.aa, i32 %.027.i.i ; 3 uses
  %i.ah = icmp ult i32 %.119.i.i, %.1.i.i
  br i1 %i.ah, label %bb.d, label %bb.f, !llvm.loop !14

bb.f:                                             ; preds = %bb.e, %bb.d
  %.018.lcssa.i.i = phi i32 [ %.01826.i.i, %bb.d ], [ %.119.i.i, %bb.e ]
  %.0.lcssa.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.1.i.i, %bb.e ]
  %i.ai = icmp eq i32 %.018.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.ai, label %_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.f
  %spec.select.i.i = select i1 %.0.i, i64 8, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %spec.select.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit

_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit: ; preds = %bb.f, %.sink.split.i.i
  %.022.i.i = phi i32 [ -1, %bb.f ], [ %i.ak, %.sink.split.i.i ] ; 2 uses
  %i.al = icmp sgt i32 %.022.i.i, -1
  tail call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %.sroa.027.0.copyload, ptr %5, align 8, !tbaa !277
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = zext nneg i32 %.022.i.i to i64
  %i.ao = sub nsw i64 0, %i.an                    ; 2 uses
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.f, i64 %i.ao
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  %i.aq = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockERNS_12MachineInstrERKNS_10MIMetadataERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(360) %i.w, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.ap) ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 3 uses
  %i.as = extractvalue { ptr, ptr } %i.aq, 1      ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.au = load i24, ptr %i.at, align 8            ; 4 uses
  %i.av = zext i24 %i.au to i32                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.not98 = icmp eq i24 %i.au, 0
  br i1 %.not98, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit
  %wide.trip.count = zext i24 %i.au to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !265
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 50331903
  %or.cond84.not = icmp eq i32 %i.ba, 16777216
  br i1 %or.cond84.not, label %bb.g, label %.thread.loopexit.split.loop.exit

bb.g:                                             ; preds = %.lr.ph
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph

.thread.loopexit.split.loop.exit:                 ; preds = %.lr.ph
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %.thread.loopexit.split.loop.exit, %_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit
  %.049.lcssa = phi i32 [ 0, %_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib.exit ], [ %i.bb, %.thread.loopexit.split.loop.exit ], [ %i.av, %bb.g ] ; 2 uses
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !71
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.be = and i64 %i.bc, 4294967295
  %i.bf = sub nsw i64 0, %i.be
  %i.bg = getelementptr inbounds [32 x i8], ptr %i.bd, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !266 ; 2 uses
  %i.bj = and i64 %i.bi, 16384
  %.not.i.i54 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i54, label %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !263
  %i.bm = and i64 %i.bi, 1024
  %i.bn = and i64 %i.bm, %i.bl
  %or.cond.not.i = icmp eq i64 %i.bn, 0
  br i1 %or.cond.not.i, label %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i, label %_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit

_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i: ; preds = %bb.h, %.thread
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bq = and i32 %i.bp, 255
  %i.br = icmp eq i32 %i.bq, 4
  br i1 %i.br, label %_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !71
  %spec.select = and i32 %i.bp, 301989888
  br label %_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit

_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit: ; preds = %bb.i, %bb.h, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i
  %.sroa.0.0 = phi i32 [ 0, %bb.h ], [ 0, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i ], [ %i.bt, %bb.i ] ; 2 uses
  %.071 = phi i32 [ 0, %bb.h ], [ 0, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread.i ], [ %spec.select, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !274, !alias.scope !998
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.sroa.0.0, ptr %i.bv, align 4, !tbaa !71, !alias.scope !998
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !alias.scope !998
  store i32 %.071, ptr %4, align 8, !alias.scope !998
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bx = icmp ult i32 %.049.lcssa, %i.av
  br i1 %i.bx, label %.lr.ph89, label %._crit_edge

.lr.ph89:                                         ; preds = %_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit
  %i.by = zext nneg i32 %.049.lcssa to i64
  %wide.trip.count104 = zext i24 %i.au to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph89, %bb.j
  %indvars.iv101 = phi i64 [ %i.by, %.lr.ph89 ], [ %indvars.iv.next102, %bb.j ] ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.bz = load ptr, ptr %i.aw, align 8, !tbaa !265
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.bz, i64 %indvars.iv101
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(1065) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) #29
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %bb.j, !llvm.loop !996

._crit_edge:                                      ; preds = %bb.j, %_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE.exit
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !121
  %i.cc = getelementptr inbounds [32 x i8], ptr %i.cb, i64 %i.ao
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cc) #29
  %i.cd = load i24, ptr %i.at, align 8            ; 2 uses
  %.not90 = icmp eq i24 %i.cd, 0
  br i1 %.not90, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %._crit_edge, %.lr.ph92
  %i.ce = phi i24 [ %i.ch, %.lr.ph92 ], [ %i.cd, %._crit_edge ]
  %i.cf = zext i24 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -1
  call void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.cg) #29
  %i.ch = load i24, ptr %i.at, align 8            ; 2 uses
  %.not = icmp eq i24 %i.ch, 0
  br i1 %.not, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %.lr.ph92, %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.cj = load i24, ptr %i.ci, align 8            ; 2 uses
  %.not99 = icmp eq i24 %i.cj, 0
  br i1 %.not99, label %._crit_edge97, label %.lr.ph96

.lr.ph96:                                         ; preds = %._crit_edge93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %wide.trip.count109 = zext i24 %i.cj to i64
  br label %bb.k

._crit_edge97:                                    ; preds = %bb.k, %._crit_edge93
  %i.cl = call ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360) %i.w, ptr nonnull %i.as) #29 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !321
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !422
  call void @_ZNK4llvm19MachineRegisterInfo14clearKillFlagsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.cp, i32 %.sroa.0.0) #29
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph96, %bb.k
  %indvars.iv106 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next107, %bb.k ] ; 2 uses
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !265
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %indvars.iv106
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cr) #29
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge97, label %bb.k, !llvm.loop !997

bb.l:                                             ; preds = %bb.c, %bb.a, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread, %._crit_edge97
  %.0 = phi i1 [ true, %._crit_edge97 ], [ false, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo16predOpcodeHasNotENS_8ArrayRefINS_14MachineOperandEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = and i64 %i.c, 4294967295
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !266  ; 2 uses
  %i.k = and i64 %i.j, 1024
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.j, 2048
  %.not.i = icmp ne i64 %i.l, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %.not.i, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(inaccessiblemem: write) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK4llvm16HexagonInstrInfo13getCondOpcodeEib(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #14 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.027.i = phi i32 [ 128, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01826.i = phi i32 [ 0, %bb.a ], [ %.119.i, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.027.i, %.01826.i
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01826.i                  ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [12 x i8], ptr @_ZZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseEE5Table, i64 %i.d ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !50   ; 2 uses
  %i.g = icmp eq i32 %1, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %1, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.119.i = select i1 %i.h, i32 %.01826.i, i32 %i.i ; 3 uses
  %.1.i = select i1 %i.h, i32 %i.c, i32 %.027.i   ; 3 uses
  %i.j = icmp ult i32 %.119.i, %.1.i
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !14

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018.lcssa.i = phi i32 [ %.01826.i, %bb.b ], [ %.119.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.027.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.k = icmp eq i32 %.018.lcssa.i, %.0.lcssa.i
  br i1 %i.k, label %_ZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d
  %spec.select.i = select i1 %2, i64 8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 %spec.select.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseE.exit

_ZN4llvm7Hexagon13getPredOpcodeEjNS0_9PredSenseE.exit: ; preds = %bb.d, %.sink.split.i
  %.022.i = phi i32 [ -1, %bb.d ], [ %i.m, %.sink.split.i ] ; 2 uses
  %i.n = icmp sgt i32 %.022.i, -1
  tail call void @llvm.assume(i1 %i.n)
  ret i32 %.022.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10getPredRegENS_8ArrayRefINS_14MachineOperandEEERNS_8RegisterERjRNS_8RegStateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) %5) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = and i64 %i.c, 4294967295
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !266  ; 2 uses
  %i.k = and i64 %i.j, 16384
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = and i64 %i.j, 1024
  %i.o = and i64 %i.n, %i.m
  %or.cond.not = icmp eq i64 %i.o, 0
  br i1 %or.cond.not, label %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread, label %bb.f

_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread: ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 255
  %i.s = icmp eq i32 %i.r, 4
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !71
  store i32 %i.u, ptr %3, align 4, !tbaa !50
  store i32 1, ptr %4, align 4, !tbaa !50
  store i16 0, ptr %5, align 2, !tbaa !1000
  %i.v = load i32, ptr %i.p, align 8
  %i.w = lshr i32 %i.v, 23
  %i.x = trunc nuw nsw i32 %i.w to i16
  %spec.store.select = and i16 %i.x, 4            ; 2 uses
  store i16 %spec.store.select, ptr %5, align 2, !tbaa !1000
  %i.y = load i32, ptr %i.p, align 8
  %i.z = and i32 %i.y, 268435456
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = or disjoint i16 %spec.store.select, 32
  store i16 %i.aa, ptr %5, align 2, !tbaa !1000
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread, %bb.a
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ false, %_ZNK4llvm16HexagonInstrInfo14isNewValueJumpEj.exit.thread ], [ true, %bb.e ], [ true, %bb.d ]
  ret i1 %.0
}

declare void @_ZN4llvm12MachineInstr13removeOperandEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #7

declare void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare ptr @_ZN4llvm17MachineBasicBlock5eraseENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(360), ptr) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo17SubsumesPredicateENS_8ArrayRefINS_14MachineOperandEEES3_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3, i64 %4) unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo17ClobbersPredicateERNS_12MachineInstrERSt6vectorINS_14MachineOperandESaIS4_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, i1 zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519600) %i.b) #29 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i24, ptr %i.i, align 8              ; 2 uses
  %i.k = zext i24 %i.j to i64
  %.idx = shl nuw nsw i64 %i.k, 5
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.not69.not = icmp eq i24 %i.j, 0
  br i1 %.not69.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE9push_backERKS1_.exit
  %.03770 = phi ptr [ %i.cf, %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE9push_backERKS1_.exit ], [ %i.h, %bb.a ] ; 7 uses
  %i.m = load i32, ptr %.03770, align 8           ; 2 uses
  %trunc = trunc i32 %i.m to i8
  switch i8 %trunc, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE9push_backERKS1_.exit [
    i8 0, label %bb.b
    i8 12, label %bb.i
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = and i32 %i.m, 16777216
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE9push_backERKS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.03770, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !71
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(316) %i.f, i32 %i.p) #29
  %i.u = icmp eq ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 576)
  br i1 %i.u, label %bb.d, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1009 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1010
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.03770, i64 32, i1 false), !tbaa.struct !433
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !1009
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !1009
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %2, align 8, !tbaa !1011  ; 5 uses
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775776
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #32
  unreachable

_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 288230376151711743)
  %i.ak = select i1 %i.ai, i64 288230376151711743, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 5
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %.03770, i64 32, i1 false), !tbaa.struct !433
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !tbaa.struct !433, !alias.scope !1012
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.w
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1004

_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorIN4llvm14MachineOperandESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN4llvm14MachineOperandESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !1010
end_hunk_1
begin_hunk_2_@_ZNK4llvm16HexagonInstrInfo18canExecuteInBundleERKNS_12MachineInstrES3_:bb.a

bb.d:                                             ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !265  ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 16777471
  %or.cond = icmp eq i32 %i.aa, 0
  br i1 %or.cond, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = icmp eq i32 %i.ac, 147
  br i1 %i.ad, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %.split, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL17DisableNVSchedule, i64 120), align 8, !tbaa !442, !range !104, !noundef !105
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !264
  %i.ah = add i32 %i.ag, -1
  %spec.select.i.i.i = icmp ult i32 %i.ah, 2
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !265
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !71
  %i.am = and i64 %i.al, 16
  %.not.not.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.not.i.i, label %bb.h, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !260 ; 2 uses
  %i.ap = and i32 %i.ao, 12
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = and i32 %i.ao, 4
  %i.as = icmp ne i32 %i.ar, 0
  %or.cond.i.i.i = or i1 %i.aq, %i.as
  br i1 %or.cond.i.i.i, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.h
  %i.at = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef 1048576, i32 noundef 1) #29
  br i1 %i.at, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !261
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !263
  %i.ay = and i64 %i.ax, 1048576
  %.not.i35 = icmp eq i64 %i.ay, 0
  br i1 %.not.i35, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit, label %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i

_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i: ; preds = %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %.split.i, %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !360, !nonnull !105, !align !244
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 352
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !517, !range !104, !noundef !105
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread

_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit: ; preds = %.split.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !261
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !266
  %i.bi = and i64 %i.bh, 524288
  %.not46 = icmp eq i64 %i.bi, 0
  br i1 %.not46, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bk = load i24, ptr %i.bj, align 8
  %i.bl = zext i24 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 4294967295
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !265
  %i.bp = and i64 %i.bm, 4294967295
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = and i32 %i.br, 255
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bv = load i24, ptr %i.bu, align 8            ; 2 uses
  %.not47.not = icmp eq i24 %i.bv, 0
  br i1 %.not47.not, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !265
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %wide.trip.count = zext i24 %i.bv to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %.critedge34
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge34 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = and i32 %i.ca, 16777471
  %or.cond44 = icmp eq i32 %i.cb, 16777216
  br i1 %or.cond44, label %bb.l, label %.critedge34

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !71
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !71
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %.critedge34

.critedge34:                                      ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread, label %bb.k, !llvm.loop !1086

_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit.thread: ; preds = %.critedge34, %bb.l, %bb.j, %bb.i, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i, %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit, %bb.e, %.thread
  %.6 = phi i1 [ false, %.thread ], [ true, %bb.e ], [ false, %_ZNK4llvm12MachineInstr8mayStoreENS0_9QueryTypeE.exit.thread.i ], [ false, %bb.i ], [ false, %_ZNK4llvm16HexagonInstrInfo13mayBeNewStoreERKNS_12MachineInstrE.exit ], [ false, %bb.j ], [ false, %.critedge34 ], [ true, %bb.l ]
  ret i1 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10hasEHLabelEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.08.011 = load ptr, ptr %i.a, align 8, !tbaa !270 ; 2 uses
  %.not12.not = icmp eq ptr %.sroa.08.011, %i.b
  br i1 %.not12.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.08.013 = phi ptr [ %.sroa.08.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.08.011, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 52
  %i.d = load i32, ptr %i.c, align 4, !tbaa !264
  %i.e = icmp eq i32 %i.d, 4                      ; 3 uses
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.013) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.08.013, align 8
  %i.f = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !260
  %i.i = and i32 %i.h, 8
  %.not34.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.08.013, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !270  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !260
  %i.n = and i32 %i.m, 8
  %.not3.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !24

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.08.013, %bb.b ], [ %.sroa.08.013, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.k, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.08.0 = load ptr, ptr %i.o, align 8, !tbaa !270 ; 2 uses
  %.not.not = icmp eq ptr %.sroa.08.0, %i.b
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %i.e, %.lr.ph ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo19hasNonExtEquivalentERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 28, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon10getRegFormEj.exit.thread, label %_ZN4llvm7Hexagon10getRegFormEj.exit

_ZN4llvm7Hexagon10getRegFormEj.exit.thread:       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !263
  %i.r = and i64 %i.q, 1572864
  %or.cond.not = icmp eq i64 %i.r, 0
  br i1 %or.cond.not, label %_ZN4llvm7Hexagon10getRegFormEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7Hexagon10getRegFormEj.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !266
  %i.u = lshr i64 %i.t, 40
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = and i32 %i.v, 7
  switch i32 %i.w, label %_ZN4llvm7Hexagon10getRegFormEj.exit [
    i32 1, label %.preheader
    i32 3, label %.preheader33
    i32 4, label %.preheader34
  ]

.preheader:                                       ; preds = %bb.e, %bb.f
  %.023.i10 = phi i32 [ %.1.i13, %bb.f ], [ 70, %bb.e ] ; 3 uses
  %.01522.i11 = phi i32 [ %.116.i12, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %i.x = sub nuw i32 %.023.i10, %.01522.i11
  %i.y = lshr i32 %i.x, 1
  %i.z = add i32 %i.y, %.01522.i11                ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !50 ; 2 uses
  %i.ad = icmp eq i32 %i.b, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.ae = icmp ult i32 %i.b, %i.ac                ; 2 uses
  %i.af = add nuw i32 %i.z, 1
  %.116.i12 = select i1 %i.ae, i32 %.01522.i11, i32 %i.af ; 3 uses
  %.1.i13 = select i1 %i.ae, i32 %i.z, i32 %.023.i10 ; 3 uses
  %i.ag = icmp ult i32 %.116.i12, %.1.i13
  br i1 %i.ag, label %.preheader, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f, %.preheader
  %.015.lcssa.i14 = phi i32 [ %.01522.i11, %.preheader ], [ %.116.i12, %bb.f ]
  %.0.lcssa.i15 = phi i32 [ %.023.i10, %.preheader ], [ %.1.i13, %bb.f ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.aa
  %i.ai = icmp eq i32 %.015.lcssa.i14, %.0.lcssa.i15
  br i1 %i.ai, label %_ZN4llvm7Hexagon10getRegFormEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

.preheader33:                                     ; preds = %bb.e, %bb.h
  %.023.i17 = phi i32 [ %.1.i20, %bb.h ], [ 70, %bb.e ] ; 3 uses
  %.01522.i18 = phi i32 [ %.116.i19, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.aj = sub nuw i32 %.023.i17, %.01522.i18
  %i.ak = lshr i32 %i.aj, 1
  %i.al = add i32 %i.ak, %.01522.i18              ; 3 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !50 ; 2 uses
  %i.ap = icmp eq i32 %i.b, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader33
  %i.aq = icmp ult i32 %i.b, %i.ao                ; 2 uses
  %i.ar = add nuw i32 %i.al, 1
  %.116.i19 = select i1 %i.aq, i32 %.01522.i18, i32 %i.ar ; 3 uses
  %.1.i20 = select i1 %i.aq, i32 %i.al, i32 %.023.i17 ; 3 uses
  %i.as = icmp ult i32 %.116.i19, %.1.i20
  br i1 %i.as, label %.preheader33, label %bb.i, !llvm.loop !4

bb.i:                                             ; preds = %bb.h, %.preheader33
  %.015.lcssa.i21 = phi i32 [ %.01522.i18, %.preheader33 ], [ %.116.i19, %bb.h ]
  %.0.lcssa.i22 = phi i32 [ %.023.i17, %.preheader33 ], [ %.1.i20, %bb.h ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.am
  %i.au = icmp eq i32 %.015.lcssa.i21, %.0.lcssa.i22
  br i1 %i.au, label %_ZN4llvm7Hexagon10getRegFormEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

.preheader34:                                     ; preds = %bb.e, %bb.j
  %.023.i24 = phi i32 [ %.1.i27, %bb.j ], [ 11, %bb.e ] ; 3 uses
  %.01522.i25 = phi i32 [ %.116.i26, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %i.av = sub nuw i32 %.023.i24, %.01522.i25
  %i.aw = lshr i32 %i.av, 1
  %i.ax = add i32 %i.aw, %.01522.i25              ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !50 ; 2 uses
  %i.bb = icmp eq i32 %i.b, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader34
  %i.bc = icmp ult i32 %i.b, %i.ba                ; 2 uses
  %i.bd = add nuw i32 %i.ax, 1
  %.116.i26 = select i1 %i.bc, i32 %.01522.i25, i32 %i.bd ; 3 uses
  %.1.i27 = select i1 %i.bc, i32 %i.ax, i32 %.023.i24 ; 3 uses
  %i.be = icmp ult i32 %.116.i26, %.1.i27
  br i1 %i.be, label %.preheader34, label %bb.k, !llvm.loop !8

bb.k:                                             ; preds = %bb.j, %.preheader34
  %.015.lcssa.i28 = phi i32 [ %.01522.i25, %.preheader34 ], [ %.116.i26, %bb.j ]
  %.0.lcssa.i29 = phi i32 [ %.023.i24, %.preheader34 ], [ %.1.i27, %bb.j ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.ay
  %i.bg = icmp eq i32 %.015.lcssa.i28, %.0.lcssa.i29
  br i1 %i.bg, label %_ZN4llvm7Hexagon10getRegFormEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split: ; preds = %bb.k, %bb.i, %bb.g
  %.sink51 = phi ptr [ %i.at, %bb.i ], [ %i.ah, %bb.g ], [ %i.bf, %bb.k ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink51, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !50
  %i.bj = and i32 %i.bi, 32768
  %i.bk = icmp eq i32 %i.bj, 0
  br label %_ZN4llvm7Hexagon10getRegFormEj.exit

_ZN4llvm7Hexagon10getRegFormEj.exit:              ; preds = %bb.g, %bb.i, %bb.k, %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split, %bb.d, %_ZN4llvm7Hexagon10getRegFormEj.exit.thread, %bb.e
  %.09 = phi i1 [ false, %bb.e ], [ false, %_ZN4llvm7Hexagon10getRegFormEj.exit.thread ], [ true, %bb.d ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.k ], [ %i.bk, %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split ]
  ret i1 %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo18hasPseudoInstrPairERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo15hasUncondBranchEPKNS_17MachineBasicBlockE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4llvm17MachineBasicBlock18getFirstTerminatorEv(ptr noundef nonnull align 8 dereferenceable(360) %1) #29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not9 = icmp eq ptr %i.a, %i.b
  br i1 %.not9, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.03.06 = phi ptr [ %i.x, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %i.a, %bb.a ] ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 44 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !260  ; 2 uses
  %i.e = and i32 %i.d, 12
  %i.f = icmp eq i32 %i.e, 0
  %i.g = and i32 %i.d, 4
  %i.h = icmp ne i32 %i.g, 0
  %or.cond.i.i = or i1 %i.f, %i.h
  br i1 %or.cond.i.i, label %.split, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit

.split:                                           ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.06, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !261
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !263
  %i.m = and i64 %i.l, 256
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %.split._crit_edge

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit: ; preds = %.lr.ph
  %i.n = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.06, i64 noundef 256, i32 noundef 1) #29
  br i1 %i.n, label %.split._crit_edge, label %bb.b

bb.b:                                             ; preds = %.split, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.06) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.06, align 8
  %i.o = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.p = load i32, ptr %i.c, align 4, !tbaa !260
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.03.06, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !270  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !260
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !24

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.03.06, %bb.b ], [ %.sroa.03.06, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !270  ; 2 uses
  %.not10 = icmp eq ptr %i.x, %i.b
  br i1 %.not10, label %.split._crit_edge, label %.lr.ph, !llvm.loop !1087

.split._crit_edge:                                ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %.split, %bb.a
  %.lcssa5 = phi i1 [ false, %bb.a ], [ true, %.split ], [ false, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ true, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit ]
  ret i1 %.lcssa5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 126
  %i.f = add nsw i64 %i.e, -6
  %i.g = icmp ult i64 %i.f, 26
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo11isDependentERKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo21isVecUsableNextPacketERKNS_12MachineInstrES3_(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %not. = xor i1 %i.i, true
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ %not., %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrENS_14ilist_iteratorINS_12ilist_detail12node_optionsIS1_Lb1ELb1EvLb0EvEELb0ELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr nofree readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 126
  %i.f = add nsw i64 %i.e, -6
  %i.g = icmp ult i64 %i.f, 26
  br i1 %i.g, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !264
  %i.m = icmp eq i32 %i.l, 22
  br i1 %i.m, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.sroa.010.0.in20 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.010.021 = load ptr, ptr %.sroa.010.0.in20, align 8, !tbaa !270 ; 2 uses
  %.not22 = icmp eq ptr %.sroa.010.021, %i.j
  br i1 %.not22, label %.critedge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !261
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !266
  %i.r = and i64 %i.q, 126
  %i.s = add nsw i64 %i.r, -6
  %i.t = icmp ult i64 %i.s, 26
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo11isDependentERKNS_12MachineInstrES3_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.u, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo21isVecUsableNextPacketERKNS_12MachineInstrES3_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %not..i = xor i1 %i.v, true
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread
  %.sroa.010.023 = phi ptr [ %.sroa.010.0, %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread ], [ %.sroa.010.021, %.preheader ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !260
  %i.y = and i32 %i.x, 4
  %.not19 = icmp eq i32 %i.y, 0
  br i1 %.not19, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !261
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !266
  %i.ad = and i64 %i.ac, 126
  %i.ae = add nsw i64 %i.ad, -6
  %i.af = icmp ult i64 %i.ae, 26
  br i1 %i.af, label %bb.g, label %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo11isDependentERKNS_12MachineInstrES3_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.010.023, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.ag, label %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9, label %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread

_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9: ; preds = %bb.g
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo21isVecUsableNextPacketERKNS_12MachineInstrES3_(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.010.023, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.ah, label %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread, label %.critedge

_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9.thread: ; preds = %bb.f, %bb.g, %_ZNK4llvm16HexagonInstrInfo13producesStallERKNS_12MachineInstrES3_.exit9
  %.sroa.010.0.in = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 8
  %.sroa.010.0 = load ptr, ptr %.sroa.010.0.in, align 8, !tbaa !270 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %i.j
end_hunk_2
begin_hunk_3_@_ZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEb:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !526
  br label %select.unfold

bb.g:                                             ; preds = %bb.d
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 24), align 8, !tbaa !100 ; 2 uses
  %.not2427 = icmp eq ptr %i.q, getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 8)
  br i1 %.not2427, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.013.028 = phi ptr [ %i.t, %bb.h ], [ %i.q, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !526
  %.not12 = icmp eq i32 %i.s, %i.f
  br i1 %.not12, label %select.unfold.loopexit.split.loop.exit25, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.t = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.013.028) #34 ; 2 uses
  %.not24 = icmp eq ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 8)
  br i1 %.not24, label %select.unfold, label %.lr.ph

select.unfold.loopexit.split.loop.exit25:         ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.028, i64 32
  %i.v = load i32, ptr %i.u, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %bb.h, %select.unfold.loopexit.split.loop.exit25, %bb.g, %bb.f, %bb.e, %_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %.thread
  %.4 = phi i32 [ -1, %bb.f ], [ %i.p, %.thread ], [ -1, %_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ -1, %bb.e ], [ %i.v, %select.unfold.loopexit.split.loop.exit25 ], [ -1, %bb.g ], [ -1, %bb.h ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2ESt16initializer_listIS4_ERKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !443
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !444
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !102
  %.idx = shl nuw nsw i64 %2, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not7.i = icmp eq i64 %2, 0
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i
  %.pr16 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.ag, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i3 = icmp eq i64 %.pr16, 0
  br i1 %.not.i3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !524  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50
  %i.j = load i32, ptr %.08.i, align 4, !tbaa !50
  %i.k = icmp ult i32 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !524 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i32, ptr %.08.i, align 4, !tbaa !50 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !50   ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !524 ; 2 uses
  %.not.i.i4 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i4, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1092

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !50
  %.pre82.i = load i32, ptr %.08.i, align 4, !tbaa !50
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i32 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i32 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i32 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i32, ptr %.08.i, align 4, !tbaa !50
  %i.y = load i32, ptr %i.w, align 4, !tbaa !50
  %i.z = icmp ult i32 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %.08.i, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !102
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.e, align 8, !tbaa !102
  br label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i: ; preds = %bb.f, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i
  %.pr = phi i64 [ %.pr16, %bb.f ], [ %i.af, %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit, label %.lr.ph.i, !llvm.loop !1093

_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE22_M_insert_range_uniqueIPKS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESD_SD_.exit: ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_IRKS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 2682, 2701) i32 @_ZNK4llvm16HexagonInstrInfo11getDotCurOpERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #15 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [2 x i8], ptr @switch.table._ZNK4llvm16HexagonInstrInfo11getDotCurOpERKNS_12MachineInstrE, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -5362
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 2681, 2723) i32 @_ZNK4llvm16HexagonInstrInfo14getNonDotCurOpERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #15 align 2 {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [2 x i8], ptr @switch.table._ZNK4llvm16HexagonInstrInfo14getNonDotCurOpERKNS_12MachineInstrE, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -5364
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK4llvm16HexagonInstrInfo11getDotNewOpERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 3 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 99, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getNewValueOpcodeEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !10

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, label %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit

_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit:       ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getNewValueOpcodeEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  br label %bb.i

_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread: ; preds = %bb.d
  switch i32 %i.b, label %bb.e [
    i32 2543, label %bb.i
    i32 2328, label %bb.f
    i32 2370, label %bb.f
    i32 2356, label %bb.f
    i32 2342, label %bb.f
    i32 2349, label %bb.f
    i32 2744, label %bb.g
    i32 2784, label %bb.h
  ]

bb.e:                                             ; preds = %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.r, align 1, !tbaa !529
  store ptr @.str.39, ptr %3, align 8, !tbaa !71
  store i8 3, ptr %i.q, align 8, !tbaa !530
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i32 noundef %i.b) #29
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 4, ptr %i.s, align 8, !tbaa !530
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.t, align 1, !tbaa !529
  store ptr %5, ptr %4, align 8, !tbaa !71
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %2, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(34) %4)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %2, i1 noundef zeroext true) #32
  unreachable

bb.f:                                             ; preds = %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread
  br label %bb.i

bb.g:                                             ; preds = %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread
  br label %bb.i

bb.h:                                             ; preds = %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread, %bb.h, %bb.g, %bb.f
  %.0 = phi i32 [ 2749, %bb.h ], [ %i.p, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit ], [ %i.b, %bb.f ], [ 2546, %_ZN4llvm7Hexagon17getNewValueOpcodeEj.exit.thread ], [ 2745, %bb.g ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Twine") align 8 %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr noundef nonnull align 8 dereferenceable(34) %2) local_unnamed_addr #2 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !530, !noalias !1096 ; 3 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !530, !noalias !1096 ; 3 uses
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.g, align 8, !tbaa !530, !alias.scope !1096
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !529, !alias.scope !1096
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i8 %i.b, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !1098
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp eq i8 %i.e, 1
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !1098
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.l = load i8, ptr %i.k, align 1, !tbaa !529, !noalias !1096
  %i.m = icmp eq i8 %i.l, 1                       ; 3 uses
  %.sroa.05.0.copyload.i = load ptr, ptr %1, align 8, !noalias !1096
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !1096
  %.014.i = select i1 %i.m, i8 %i.b, i8 2
  %.sroa.05.0.i = select i1 %i.m, ptr %.sroa.05.0.copyload.i, ptr %1
  %.sroa.56.0.i = select i1 %i.m, i64 %.sroa.56.0.copyload.i, i64 undef
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  %i.o = load i8, ptr %i.n, align 1, !tbaa !529, !noalias !1096
  %i.p = icmp eq i8 %i.o, 1                       ; 3 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %2, align 8, !noalias !1096
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1096
  %.0.i = select i1 %i.p, i8 %i.e, i8 2
  %.sroa.04.0.i = select i1 %i.p, ptr %.sroa.04.0.copyload.i, ptr %2
  %.sroa.5.0.i = select i1 %i.p, i64 %.sroa.5.0.copyload.i, i64 undef
  store ptr %.sroa.05.0.i, ptr %0, align 8, !alias.scope !1096
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.56.0.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !1096
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.04.0.i, ptr %i.q, align 8, !alias.scope !1096
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !71, !alias.scope !1096
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.014.i, ptr %i.r, align 8, !tbaa !530, !alias.scope !1096
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %.0.i, ptr %i.s, align 1, !tbaa !529, !alias.scope !1096
  br label %_ZNK4llvm5Twine6concatERKS0_.exit

_ZNK4llvm5Twine6concatERKS0_.exit:                ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEj(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ult i32 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.030.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i = phi i32 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i32 %.02329.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.030.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i32 %.02329.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.030.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i32 %.02329.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.030.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i32 %.02329.i, 10000
  %i.i = add i32 %.030.i, 4                       ; 2 uses
  %i.j = icmp ult i32 %.02329.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i, !llvm.loop !1099

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !1101
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0) #29
  %i.m = load ptr, ptr %0, align 8, !tbaa !1102   ; 4 uses
  %i.n = icmp ugt i32 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !1103
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.lr.ph.i2, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.u, %.lr.ph.i2 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.af, %.lr.ph.i2 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i32 %.020.i, 100
  %i.t = shl nuw nsw i32 %i.s, 1
end_hunk_3
begin_hunk_4_@_ZNK4llvm12MachineInstr19isConditionalBranchENS0_9QueryTypeE:bb.a
  %.pre18 = and i32 %.pre, 12
  br label %.thread7

.thread7:                                         ; preds = %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge, %.split.thread
  %.pre-phi = phi i32 [ %.pre18, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.d, %.split.thread ] ; 2 uses
  %i.s = phi i32 [ %.pre, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.c, %.split.thread ] ; 2 uses
  %i.t = icmp eq i32 %.pre-phi, 0
  %i.u = and i32 %i.s, 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i.i3 = or i1 %i.t, %i.v
  br i1 %or.cond.i.i3, label %.split8.thread, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit

.split8.thread:                                   ; preds = %.thread7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = and i64 %i.z, 256
  %.not11 = icmp eq i64 %i.aa, 0
  br i1 %.not11, label %.thread10, label %bb.e

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit: ; preds = %.thread7
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 256, i32 noundef %1) #29
  br i1 %i.ab, label %bb.e, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge: ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit
  %.pre14 = load i32, ptr %i.b, align 4, !tbaa !260 ; 2 uses
  %.pre19 = and i32 %.pre14, 12
  br label %.thread10

.thread10:                                        ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge, %.split8.thread
  %.pre-phi20 = phi i32 [ %.pre19, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %.pre-phi, %.split8.thread ]
  %i.ac = phi i32 [ %.pre14, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %i.s, %.split8.thread ]
  %i.ad = icmp eq i32 %.pre-phi20, 0
  %i.ae = and i32 %i.ac, 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond.i.i5 = or i1 %i.ad, %i.af
  br i1 %or.cond.i.i5, label %.thread10._crit_edge, label %bb.d

.thread10._crit_edge:                             ; preds = %.thread10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %.pre15, i64 16
  %.pre17 = load i64, ptr %.phi.trans.insert16, align 8, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %.split, %.thread10._crit_edge
  %i.ag = phi i64 [ %.pre17, %.thread10._crit_edge ], [ %i.k, %.split ]
  %i.ah = and i64 %i.ag, 2048
  %i.ai = icmp ne i64 %i.ah, 0
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

bb.d:                                             ; preds = %.thread10
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 2048, i32 noundef %1) #29
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i6 = phi i1 [ %i.ai, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = xor i1 %.0.i.i6, true
  br label %bb.e

bb.e:                                             ; preds = %.split8.thread, %.split.thread, %.split, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit
  %i.al = phi i1 [ false, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit ], [ false, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit ], [ %i.ak, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit ], [ false, %.split ], [ false, %.split.thread ], [ false, %.split8.thread ]
  ret i1 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm12MachineInstr21isUnconditionalBranchENS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !260  ; 3 uses
  %i.d = and i32 %i.c, 12                         ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = and i32 %i.c, 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i, label %.split.thread, label %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit

.split:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !263  ; 2 uses
  %i.l = and i64 %i.k, 1280
  %or.cond.not = icmp eq i64 %i.l, 1280
  br i1 %or.cond.not, label %bb.c, label %bb.e

.split.thread:                                    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !263
  %i.q = and i64 %i.p, 1024
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.e, label %.thread7

_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit: ; preds = %bb.b
  %i.r = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1024, i32 noundef %1) #29
  br i1 %i.r, label %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge, label %bb.e

_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge: ; preds = %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !260 ; 2 uses
  %.pre18 = and i32 %.pre, 12
  br label %.thread7

.thread7:                                         ; preds = %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge, %.split.thread
  %.pre-phi = phi i32 [ %.pre18, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.d, %.split.thread ] ; 2 uses
  %i.s = phi i32 [ %.pre, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit..thread7_crit_edge ], [ %i.c, %.split.thread ] ; 2 uses
  %i.t = icmp eq i32 %.pre-phi, 0
  %i.u = and i32 %i.s, 4
  %i.v = icmp ne i32 %i.u, 0
  %or.cond.i.i3 = or i1 %i.t, %i.v
  br i1 %or.cond.i.i3, label %.split8.thread, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit

.split8.thread:                                   ; preds = %.thread7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !261
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !263
  %i.aa = and i64 %i.z, 256
  %.not11 = icmp eq i64 %i.aa, 0
  br i1 %.not11, label %bb.e, label %.thread10

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit: ; preds = %.thread7
  %i.ab = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 256, i32 noundef %1) #29
  br i1 %i.ab, label %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge, label %bb.e

_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge: ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit
  %.pre14 = load i32, ptr %i.b, align 4, !tbaa !260 ; 2 uses
  %.pre19 = and i32 %.pre14, 12
  br label %.thread10

.thread10:                                        ; preds = %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge, %.split8.thread
  %.pre-phi20 = phi i32 [ %.pre19, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %.pre-phi, %.split8.thread ]
  %i.ac = phi i32 [ %.pre14, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit..thread10_crit_edge ], [ %i.s, %.split8.thread ]
  %i.ad = icmp eq i32 %.pre-phi20, 0
  %i.ae = and i32 %i.ac, 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond.i.i5 = or i1 %i.ad, %i.af
  br i1 %or.cond.i.i5, label %.thread10._crit_edge, label %bb.d

.thread10._crit_edge:                             ; preds = %.thread10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre15 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261
  %.phi.trans.insert16 = getelementptr inbounds nuw i8, ptr %.pre15, i64 16
  %.pre17 = load i64, ptr %.phi.trans.insert16, align 8, !tbaa !263
  br label %bb.c

bb.c:                                             ; preds = %.split, %.thread10._crit_edge
  %i.ag = phi i64 [ %.pre17, %.thread10._crit_edge ], [ %i.k, %.split ]
  %i.ah = and i64 %i.ag, 2048
  %i.ai = icmp ne i64 %i.ah, 0
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

bb.d:                                             ; preds = %.thread10
  %i.aj = tail call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 2048, i32 noundef %1) #29
  br label %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit

_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i6 = phi i1 [ %i.ai, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = xor i1 %.0.i.i6, true
  br label %bb.e

bb.e:                                             ; preds = %.split8.thread, %.split.thread, %.split, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit
  %i.al = phi i1 [ false, %_ZNK4llvm12MachineInstr9isBarrierENS0_9QueryTypeE.exit ], [ false, %_ZNK4llvm12MachineInstr8isBranchENS0_9QueryTypeE.exit ], [ %i.ak, %_ZNK4llvm12MachineInstr16isIndirectBranchENS0_9QueryTypeE.exit ], [ false, %.split ], [ false, %.split.thread ], [ false, %.split8.thread ]
  ret i1 %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK4llvm16HexagonInstrInfo15getDotNewPredOpERKNS_12MachineInstrEPKNS_28MachineBranchProbabilityInfoE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 3 uses
  switch i32 %i.b, label %.preheader [
    i32 1386, label %bb.b
    i32 1364, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo19getDotNewPredJumpOpERKNS_12MachineInstrEPKNS_28MachineBranchProbabilityInfoE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2)
  br label %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit.thread

.preheader:                                       ; preds = %bb.a, %bb.c
  %.023.i = phi i32 [ %.1.i, %bb.c ], [ 162, %bb.a ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.d = sub nuw i32 %.023.i, %.01522.i
  %i.e = lshr i32 %i.d, 1
  %i.f = add i32 %i.e, %.01522.i                  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredNewOpcodeEjE5Table, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  %i.j = icmp eq i32 %i.b, %i.i
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.k = icmp ult i32 %i.b, %i.i                  ; 2 uses
  %i.l = add nuw i32 %i.f, 1
  %.116.i = select i1 %i.k, i32 %.01522.i, i32 %i.l ; 3 uses
  %.1.i = select i1 %i.k, i32 %i.f, i32 %.023.i   ; 3 uses
  %i.m = icmp ult i32 %.116.i, %.1.i
  br i1 %i.m, label %.preheader, label %bb.d, !llvm.loop !12

bb.d:                                             ; preds = %bb.c, %.preheader
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader ], [ %.1.i, %bb.c ]
  %i.n = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.n, label %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit.thread, label %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit

_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit:        ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredNewOpcodeEjE5Table, i64 %i.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit.thread

_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit.thread: ; preds = %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit, %bb.d, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.d ], [ %i.q, %_ZN4llvm7Hexagon16getPredNewOpcodeEj.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm16HexagonInstrInfo11getDotOldOpERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %i.e = zext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !266
  %i.j = and i64 %i.i, 5120
  %or.cond = icmp eq i64 %i.j, 5120
  br i1 %or.cond, label %.preheader21, label %bb.f

.preheader21:                                     ; preds = %bb.a, %bb.b
  %.023.i = phi i32 [ %.1.i, %bb.b ], [ 162, %bb.a ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.k = sub nuw i32 %.023.i, %.01522.i
  %i.l = lshr i32 %i.k, 1
  %i.m = add i32 %i.l, %.01522.i                  ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredOldOpcodeEjE5Table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = icmp eq i32 %i.b, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader21
  %i.r = icmp ult i32 %i.b, %i.p                  ; 2 uses
  %i.s = add nuw i32 %i.m, 1
  %.116.i = select i1 %i.r, i32 %.01522.i, i32 %i.s ; 3 uses
  %.1.i = select i1 %i.r, i32 %i.m, i32 %.023.i   ; 3 uses
  %i.t = icmp ult i32 %.116.i, %.1.i
  br i1 %i.t, label %.preheader21, label %bb.c, !llvm.loop !13

bb.c:                                             ; preds = %bb.b, %.preheader21
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader21 ], [ %.116.i, %bb.b ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader21 ], [ %.1.i, %bb.b ]
  %i.u = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.u, label %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon16getPredOldOpcodeEjE5Table, i64 %i.n
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit

_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit:        ; preds = %bb.c, %bb.d
  %.019.i = phi i32 [ %i.x, %bb.d ], [ -1, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !360, !nonnull !105, !align !244
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !63
  %i.ac = and i64 %i.ab, 4
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit
  %switch.tableidx = add i32 %.019.i, -1367       ; 3 uses
  %i.ad = icmp ult i32 %switch.tableidx, 23
  %switch.shifted = lshr i32 4259873, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond33 = select i1 %i.ad, i1 %switch.lobit, i1 false
  br i1 %or.cond33, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %bb.e
  %i.ae = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm16HexagonInstrInfo11getDotOldOpERKNS_12MachineInstrE.28, i64 %i.ae
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.f

bb.f:                                             ; preds = %switch.lookup, %bb.e, %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit, %bb.a
  %.0 = phi i32 [ %.019.i, %_ZN4llvm7Hexagon16getPredOldOpcodeEj.exit ], [ %.019.i, %bb.e ], [ %switch.ext, %switch.lookup ], [ %i.b, %bb.a ] ; 4 uses
  %i.af = zext i32 %.0 to i64
  %i.ag = sub nsw i64 0, %i.af
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !266
  %i.ak = and i64 %i.aj, 1048576
  %.not20 = icmp eq i64 %i.ak, 0
  br i1 %.not20, label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.g
  %.023.i12 = phi i32 [ %.1.i15, %bb.g ], [ 99, %bb.f ] ; 3 uses
  %.01522.i13 = phi i32 [ %.116.i14, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.al = sub nuw i32 %.023.i12, %.01522.i13
  %i.am = lshr i32 %i.al, 1
  %i.an = add i32 %i.am, %.01522.i13              ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !50 ; 2 uses
  %i.ar = icmp eq i32 %.0, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.as = icmp ult i32 %.0, %i.aq                 ; 2 uses
  %i.at = add nuw i32 %i.an, 1
  %.116.i14 = select i1 %i.as, i32 %.01522.i13, i32 %i.at ; 3 uses
  %.1.i15 = select i1 %i.as, i32 %i.an, i32 %.023.i12 ; 3 uses
  %i.au = icmp ult i32 %.116.i14, %.1.i15
  br i1 %i.au, label %.preheader, label %bb.h, !llvm.loop !11

bb.h:                                             ; preds = %bb.g, %.preheader
  %.015.lcssa.i16 = phi i32 [ %.01522.i13, %.preheader ], [ %.116.i14, %bb.g ]
  %.0.lcssa.i17 = phi i32 [ %.023.i12, %.preheader ], [ %.1.i15, %bb.g ]
  %i.av = icmp eq i32 %.015.lcssa.i16, %.0.lcssa.i17
  br i1 %i.av, label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon13getNonNVStoreEjE5Table, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon13getNonNVStoreEj.exit

_ZN4llvm7Hexagon13getNonNVStoreEj.exit:           ; preds = %bb.i, %bb.h, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ %i.ay, %bb.i ], [ -1, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !360, !nonnull !105, !align !244
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 428
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !435
  %i.bd = icmp sgt i32 %i.bc, 3
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm7Hexagon13getNonNVStoreEj.exit
  %switch.tableidx34 = add i32 %.1, -1367         ; 3 uses
  %i.be = icmp ult i32 %switch.tableidx34, 23
  %switch.shifted37 = lshr i32 4259873, %switch.tableidx34
  %switch.lobit38 = trunc i32 %switch.shifted37 to i1
  %or.cond42 = select i1 %i.be, i1 %switch.lobit38, i1 false
  br i1 %or.cond42, label %switch.lookup36, label %bb.k

switch.lookup36:                                  ; preds = %bb.j
  %i.bf = zext nneg i32 %switch.tableidx34 to i64
  %switch.gep39 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK4llvm16HexagonInstrInfo11getDotOldOpERKNS_12MachineInstrE.28, i64 %i.bf
  %switch.load40 = load i16, ptr %switch.gep39, align 2
  %switch.ext41 = zext i16 %switch.load40 to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup36, %_ZN4llvm7Hexagon13getNonNVStoreEj.exit
  %.011 = phi i32 [ %switch.ext41, %switch.lookup36 ], [ %.1, %_ZN4llvm7Hexagon13getNonNVStoreEj.exit ], [ %.1, %bb.j ]
  ret i32 %.011
}

declare i32 @_ZNK4llvm19HexagonRegisterInfo16getStackRegisterEv(ptr noundef nonnull align 8 dereferenceable(316)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20getEquivalentHWInstrERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  ret i16 -1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm16HexagonInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519600) %i.b) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265
  %i.i = zext i32 %3 to i64
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = and i32 %i.k, 255
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !71   ; 3 uses
  %i.p = add i32 %i.o, -1
  %i.q = icmp ult i32 %i.p, 1073741823
  br i1 %i.q, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.r = and i32 %i.k, 33554432
  %.not97 = icmp eq i32 %i.r, 0
  br i1 %.not97, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !455, !noalias !1108
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !456, !noalias !1108
  %i.w = zext nneg i32 %i.o to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1109, !noalias !1108
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !368, !noalias !1108 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.o, %i.ad
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit
  %.sroa.070.0102 = phi i32 [ %i.aj, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.sroa.572.0101.pn = phi ptr [ %.sroa.572.0101, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ab, %.lr.ph.preheader ]
  %i.af = and i32 %.sroa.070.0102, 65535
  %i.ag = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80) %2, i32 %i.af, ptr noundef nonnull %i.f, i1 noundef zeroext false, i1 noundef zeroext false) #29 ; 2 uses
  %.not = icmp eq i32 %i.ag, -1
  br i1 %.not, label %_ZN4llvm18MCSuperRegIteratorppEv.exit, label %.loopexit

_ZN4llvm18MCSuperRegIteratorppEv.exit:            ; preds = %.lr.ph
  %.sroa.572.0101 = getelementptr inbounds nuw i8, ptr %.sroa.572.0101.pn, i64 2 ; 2 uses
  %i.ah = load i16, ptr %.sroa.572.0101, align 2, !tbaa !368 ; 2 uses
  %i.ai = zext i16 %i.ah to i32
  %i.aj = add i32 %.sroa.070.0102, %i.ai
  %.not.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit, %.lr.ph, %bb.d, %bb.c
  %.3 = phi i32 [ %3, %bb.c ], [ %3, %bb.d ], [ %3, %_ZN4llvm18MCSuperRegIteratorppEv.exit ], [ %i.ag, %.lr.ph ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !265
  %i.am = zext i32 %5 to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 33554432
  %.not99 = icmp eq i32 %i.ap, 0
  br i1 %.not99, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !71 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !455, !noalias !1110
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !456, !noalias !1110
  %i.aw = zext i32 %i.ar to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !1109, !noalias !1110
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.ba ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !368, !noalias !1110 ; 2 uses
  %.not.i.i.i.i50 = icmp eq i16 %i.bc, 0
  br i1 %.not.i.i.i.i50, label %.critedge, label %.lr.ph106.preheader

.lr.ph106.preheader:                              ; preds = %bb.e
  %i.bd = zext i16 %i.bc to i32
  %i.be = add i32 %i.ar, %i.bd
  br label %.lr.ph106

.lr.ph106:                                        ; preds = %.lr.ph106.preheader, %_ZN4llvm18MCSuperRegIteratorppEv.exit55
  %.sroa.058.0105 = phi i32 [ %i.bj, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.be, %.lr.ph106.preheader ] ; 2 uses
  %.sroa.559.0104.pn = phi ptr [ %.sroa.559.0104, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.bb, %.lr.ph106.preheader ]
  %i.bf = and i32 %.sroa.058.0105, 65535
  %i.bg = tail call noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i32 %i.bf, ptr noundef nonnull %i.f, i1 noundef zeroext false) #29 ; 2 uses
  %.not49 = icmp eq i32 %i.bg, -1
  br i1 %.not49, label %_ZN4llvm18MCSuperRegIteratorppEv.exit55, label %.critedge

_ZN4llvm18MCSuperRegIteratorppEv.exit55:          ; preds = %.lr.ph106
  %.sroa.559.0104 = getelementptr inbounds nuw i8, ptr %.sroa.559.0104.pn, i64 2 ; 2 uses
  %i.bh = load i16, ptr %.sroa.559.0104, align 2, !tbaa !368 ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  %i.bj = add i32 %.sroa.058.0105, %i.bi
  %.not.i.i54 = icmp eq i16 %i.bh, 0
  br i1 %.not.i.i54, label %.critedge, label %.lr.ph106

.critedge:                                        ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit55, %.lr.ph106, %bb.e, %bb.a, %.loopexit, %bb.b
  %.446 = phi i32 [ %5, %.loopexit ], [ %5, %bb.b ], [ %5, %bb.a ], [ %5, %bb.e ], [ %5, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ], [ %i.bg, %.lr.ph106 ]
  %.4 = phi i32 [ %.3, %.loopexit ], [ %3, %bb.b ], [ %3, %bb.a ], [ %.3, %bb.e ], [ %.3, %.lr.ph106 ], [ %.3, %_ZN4llvm18MCSuperRegIteratorppEv.exit55 ]
  %i.bk = tail call i64 @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i32 noundef %.4, ptr noundef nonnull align 8 dereferenceable(80) %4, i32 noundef %.446) #29 ; 4 uses
  %.sroa.790.0.extract.shift = and i64 %i.bk, -1099511627776
  %i.bl = and i64 %i.bk, 8589934591
  %i.bm = icmp eq i64 %i.bl, 4294967296           ; 2 uses
  %i.bn = and i64 %i.bk, 1095216660480
  %.sroa.488.0.insert.shift = select i1 %i.bm, i64 4294967296, i64 %i.bn
  %.sroa.488.0.insert.insert = or disjoint i64 %.sroa.488.0.insert.shift, %.sroa.790.0.extract.shift
  %i.bo = and i64 %i.bk, 4294967295
  %.sroa.086.0.insert.ext = select i1 %i.bm, i64 1, i64 %i.bo
  %.sroa.086.0.insert.insert = or disjoint i64 %.sroa.488.0.insert.insert, %.sroa.086.0.insert.ext
  ret i64 %.sroa.086.0.insert.insert
}

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #7

declare noundef i32 @_ZNK4llvm12MachineInstr25findRegisterUseOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEb(ptr noundef nonnull align 8 dereferenceable(80), i32, ptr noundef, i1 noundef zeroext) local_unnamed_addr #7

declare i64 @_ZNK4llvm15TargetInstrInfo17getOperandLatencyEPKNS_18InstrItineraryDataERKNS_12MachineInstrEjS6_j(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo20getInvertedPredSenseERNS_15SmallVectorImplINS_14MachineOperandEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78
  %.not.i = icmp ne i32 %i.b, 0                   ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !121
  %i.i = and i64 %i.e, 4294967295
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !266
  %i.n = and i64 %i.m, 2048
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %.preheader.i, label %.preheader12.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.023.i.i = phi i32 [ %.1.i.i, %bb.c ], [ 250, %bb.b ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.c ], [ 0, %bb.b ] ; 4 uses
  %i.o = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.p = lshr i32 %i.o, 1
  %i.q = add i32 %i.p, %.01522.i.i                ; 3 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.r
  %i.t = load i32, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = icmp eq i32 %i.t, %i.f
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.v = icmp ugt i32 %i.t, %i.f                  ; 2 uses
  %i.w = add nuw i32 %i.q, 1
  %.116.i.i = select i1 %i.v, i32 %.01522.i.i, i32 %i.w ; 3 uses
  %.1.i.i = select i1 %i.v, i32 %i.q, i32 %.023.i.i ; 3 uses
  %i.x = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.x, label %.preheader.i, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %bb.c, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.c ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.c ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.r
  %i.z = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.z, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

.preheader12.i:                                   ; preds = %bb.b, %bb.e
  %.023.i5.i = phi i32 [ %.1.i8.i, %bb.e ], [ 250, %bb.b ] ; 3 uses
  %.01522.i6.i = phi i32 [ %.116.i7.i, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %i.aa = sub nuw i32 %.023.i5.i, %.01522.i6.i
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = add i32 %i.ab, %.01522.i6.i             ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ag = icmp eq i32 %i.af, %i.f
  br i1 %i.ag, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader12.i
  %i.ah = icmp ugt i32 %i.af, %i.f                ; 2 uses
  %i.ai = add nuw i32 %i.ac, 1
  %.116.i7.i = select i1 %i.ah, i32 %.01522.i6.i, i32 %i.ai ; 3 uses
  %.1.i8.i = select i1 %i.ah, i32 %i.ac, i32 %.023.i5.i ; 3 uses
  %i.aj = icmp ult i32 %.116.i7.i, %.1.i8.i
  br i1 %i.aj, label %.preheader12.i, label %bb.f, !llvm.loop !16

bb.f:                                             ; preds = %bb.e, %.preheader12.i
  %.015.lcssa.i9.i = phi i32 [ %.01522.i6.i, %.preheader12.i ], [ %.116.i7.i, %bb.e ]
  %.0.lcssa.i10.i = phi i32 [ %.023.i5.i, %.preheader12.i ], [ %.1.i8.i, %bb.e ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.ad
  %i.al = icmp eq i32 %.015.lcssa.i9.i, %.0.lcssa.i10.i
  br i1 %i.al, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i: ; preds = %bb.f, %bb.d
  %.sink22.i = phi ptr [ %i.y, %bb.d ], [ %i.ak, %bb.f ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit

_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit: ; preds = %bb.d, %bb.f, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i
  %i.ao = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ %i.an, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i ] ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = zext nneg i32 %i.ao to i64
  store i64 %i.aq, ptr %i.d, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo11isPureSlot0ERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = icmp eq i32 %i.b, 1144
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(519600) %i.e) #29, !inline_history !1111 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i16, ptr %i.l, align 8, !tbaa !446
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !445
  %i.p = zext i16 %i.m to i64
  %i.q = getelementptr inbounds nuw [10 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i16, ptr %i.r, align 2, !tbaa !448
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !449
  %i.v = zext i16 %i.s to i64
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !531
  %i.z = trunc i64 %i.y to i32
  %i.aa = tail call noundef zeroext i1 @_ZN4llvm13HexagonFUnits11isSlot0OnlyEj(i32 noundef %i.z) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.aa, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK4llvm16HexagonInstrInfo8getUnitsERKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !105, !align !244 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(519600) %i.b) #29 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !446
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !445
  %i.m = zext i16 %i.j to i64
  %i.n = getelementptr inbounds nuw [10 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  %i.p = load i16, ptr %i.o, align 2, !tbaa !448
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !449
  %i.s = zext i16 %i.p to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !531
  ret i64 %i.v
}

declare noundef zeroext i1 @_ZN4llvm13HexagonFUnits11isSlot0OnlyEj(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo22isRestrictNoSlot1StoreERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = and i64 %i.d, 549755813888
  %i.f = icmp ne i64 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo23getDuplexCandidateGroupERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEb(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext %2) ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.f = zext nneg i32 %i.b to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [32 x i8], ptr %i.e, i64 %i.g
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #29
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo21translateInstrsForDupERNS_15MachineFunctionEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca [32 x %"struct.std::pair.452"], align 4 ; 8 uses
  %4 = alloca %"struct.std::less", align 1        ; 6 uses
  %5 = alloca %"class.std::allocator.454", align 1 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 3 uses
  %.sroa.010.019 = load ptr, ptr %i.a, align 8, !tbaa !276 ; 3 uses
  %.not20 = icmp eq ptr %.sroa.010.019, %i.b
  br i1 %.not20, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %.lr.ph23.split.us, label %.lr.ph23.split

.lr.ph23.split.us:                                ; preds = %.lr.ph23, %._crit_edge.split.us.us
  %.sroa.010.021.us = phi ptr [ %.sroa.010.0.us, %._crit_edge.split.us.us ], [ %.sroa.010.019, %.lr.ph23 ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.010.021.us, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.010.021.us, i64 48 ; 2 uses
  %.sroa.07.016.us = load ptr, ptr %i.d, align 8, !tbaa !270 ; 2 uses
  %.not1417.us = icmp eq ptr %.sroa.07.016.us, %i.e
  br i1 %.not1417.us, label %._crit_edge.split.us.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph23.split.us, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us
  %.sroa.07.018.us.us = phi ptr [ %.sroa.07.0.us.us, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us ], [ %.sroa.07.016.us, %.lr.ph23.split.us ] ; 4 uses
  %i.f = call noundef i32 @_ZNK4llvm16HexagonInstrInfo23getDuplexCandidateGroupERKNS_12MachineInstrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.018.us.us)
  %.not.i.us.us = icmp eq i32 %i.f, 0
  br i1 %.not.i.us.us, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph.us
  %i.g = load atomic i8, ptr @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap) #29
  %.not.i6.us.us = icmp eq i32 %i.i, 0
  br i1 %.not.i6.us.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, ptr noundef nonnull align 4 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !523
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2ESt16initializer_listIS4_ERKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, ptr nonnull %3, i64 32, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev, ptr nonnull @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap) #29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.018.us.us, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !264  ; 2 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 16), align 8, !tbaa !444 ; 2 uses
  %.not10.i.i.i.i.us.us = icmp eq ptr %i.m, null
  br i1 %.not10.i.i.i.i.us.us, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us, label %.lr.ph.i.i.i.i.us.us

end_hunk_4
begin_hunk_5_@_ZNK4llvm16HexagonInstrInfo21translateInstrsForDupERNS_15MachineFunctionEb:bb.a
  br i1 %i.v, label %bb.g, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us

bb.g:                                             ; preds = %.thread.i.us.us
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.x = zext nneg i32 %.4.i.us.us to i64
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [32 x i8], ptr %i.w, i64 %i.y
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.018.us.us, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #29
  br label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us

_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us: ; preds = %bb.g, %.thread.i.us.us, %bb.f, %_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.us.us, %bb.e, %.lr.ph.us
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.07.018.us.us, i64 8
  %.sroa.07.0.us.us = load ptr, ptr %i.aa, align 8, !tbaa !270 ; 2 uses
  %.not14.us.us = icmp eq ptr %.sroa.07.0.us.us, %i.e
  br i1 %.not14.us.us, label %._crit_edge.split.us.us, label %.lr.ph.us, !llvm.loop !1112

._crit_edge.split.us.us:                          ; preds = %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us.us, %.lr.ph23.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.010.021.us, i64 8
  %.sroa.010.0.us = load ptr, ptr %i.ab, align 8, !tbaa !276 ; 2 uses
  %.not.us = icmp eq ptr %.sroa.010.0.us, %i.b
  br i1 %.not.us, label %._crit_edge24, label %.lr.ph23.split.us

._crit_edge24:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  ret void

.lr.ph23.split:                                   ; preds = %.lr.ph23, %._crit_edge.split
  %.sroa.010.021 = phi ptr [ %.sroa.010.0, %._crit_edge.split ], [ %.sroa.010.019, %.lr.ph23 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 48 ; 2 uses
  %.sroa.07.016 = load ptr, ptr %i.ac, align 8, !tbaa !270 ; 2 uses
  %.not1417 = icmp eq ptr %.sroa.07.016, %i.ad
  br i1 %.not1417, label %._crit_edge.split, label %.lr.ph

._crit_edge.split:                                ; preds = %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit, %.lr.ph23.split
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.010.021, i64 8
  %.sroa.010.0 = load ptr, ptr %i.ae, align 8, !tbaa !276 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %i.b
  br i1 %.not, label %._crit_edge24, label %.lr.ph23.split

.lr.ph:                                           ; preds = %.lr.ph23.split, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit
  %.sroa.07.018 = phi ptr [ %.sroa.07.0, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit ], [ %.sroa.07.016, %.lr.ph23.split ] ; 3 uses
  %i.af = load atomic i8, ptr @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.h, label %bb.j, !prof !38

bb.h:                                             ; preds = %.lr.ph
  %i.ah = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap) #29
  %.not.i6 = icmp eq i32 %i.ah, 0
  br i1 %.not.i6, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %3, ptr noundef nonnull align 4 dereferenceable(256) @constinit, i64 256, i1 false), !tbaa.struct !523
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2ESt16initializer_listIS4_ERKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, ptr nonnull %3, i64 32, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ai = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEED2Ev, ptr nonnull @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !264
  %i.al = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 24), align 8, !tbaa !100 ; 2 uses
  %.not2427.i = icmp eq ptr %i.al, getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 8)
  br i1 %.not2427.i, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.k
  %.sroa.013.028.i = phi ptr [ %i.ao, %bb.k ], [ %i.al, %bb.j ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !526
  %.not12.i = icmp eq i32 %i.an, %i.ak
  br i1 %.not12.i, label %select.unfold.loopexit.split.loop.exit25.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ao = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.013.028.i) #34 ; 2 uses
  %.not24.i = icmp eq ptr %i.ao, getelementptr inbounds nuw (i8, ptr @_ZZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEbE6DupMap, i64 8)
  br i1 %.not24.i, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit, label %.lr.ph.i

select.unfold.loopexit.split.loop.exit25.i:       ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i, i64 32
  %.4.i = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.aq = icmp sgt i32 %.4.i, -1
  br i1 %i.aq, label %bb.l, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit

bb.l:                                             ; preds = %select.unfold.loopexit.split.loop.exit25.i
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.as = zext nneg i32 %.4.i to i64
  %i.at = sub nsw i64 0, %i.as
  %i.au = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %i.at
  call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.07.018, ptr noundef nonnull align 8 dereferenceable(32) %i.au) #29
  br label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit

_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit: ; preds = %bb.k, %bb.j, %select.unfold.loopexit.split.loop.exit25.i, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 8
  %.sroa.07.0 = load ptr, ptr %i.av, align 8, !tbaa !270 ; 2 uses
  %.not14 = icmp eq ptr %.sroa.07.0, %i.ad
  br i1 %.not14, label %._crit_edge.split, label %.lr.ph, !llvm.loop !1112
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo21translateInstrsForDupENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %.not7 = icmp eq ptr %1, %i.c
  br i1 %.not7, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %2, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us
  %.sroa.02.08.us = phi ptr [ %i.p, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us ], [ %1, %.lr.ph ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.02.08.us, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !260
  %i.g = and i32 %i.f, 4
  %.not6.us = icmp eq i32 %i.g, 0
  br i1 %.not6.us, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo23getDuplexCandidateGroupERKNS_12MachineInstrE(ptr noundef nonnull readonly align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.08.us)
  %.not.i.us = icmp eq i32 %i.h, 0
  br i1 %.not.i.us, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEb(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.08.us, i1 noundef zeroext true) ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.l = zext nneg i32 %i.i to i64
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.m
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.08.us, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #29
  br label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us

_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us: ; preds = %bb.d, %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.08.us, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270  ; 2 uses
  %.not.us = icmp eq ptr %i.p, %i.c
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !1113

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit
  %.sroa.02.08 = phi ptr [ %i.aa, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit ], [ %1, %.lr.ph ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !260
  %i.s = and i32 %i.r, 4
  %.not6 = icmp eq i32 %i.s, 0
  br i1 %.not6, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split
  %i.t = tail call noundef i32 @_ZNK4llvm16HexagonInstrInfo15getDuplexOpcodeERKNS_12MachineInstrEb(ptr nonnull readonly align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.08, i1 noundef zeroext false) ; 2 uses
  %i.u = icmp sgt i32 %i.t, -1
  br i1 %i.u, label %bb.f, label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !121
  %i.w = zext nneg i32 %i.t to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.x
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.08, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #29
  br label %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit

_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit: ; preds = %bb.e, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.08, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !270 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.c
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !1113

.critedge:                                        ; preds = %.lr.ph.split, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit, %.lr.ph.split.us, %_ZNK4llvm16HexagonInstrInfo18changeDuplexOpcodeENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEEb.exit.us, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo15getNonExtOpcodeERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 28, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.f
  %i.n = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.n, label %_ZN4llvm7Hexagon10getRegFormEj.exit.thread, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

_ZN4llvm7Hexagon10getRegFormEj.exit.thread:       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !261  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !263
  %i.s = and i64 %i.r, 1572864
  %or.cond.not = icmp eq i64 %i.s, 0
  br i1 %or.cond.not, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7Hexagon10getRegFormEj.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !266
  %i.v = lshr i64 %i.u, 40
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 7
  switch i32 %i.x, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit [
    i32 1, label %.preheader
    i32 3, label %.preheader34
    i32 4, label %.preheader35
  ]

.preheader:                                       ; preds = %bb.e, %bb.f
  %.023.i10 = phi i32 [ %.1.i13, %bb.f ], [ 70, %bb.e ] ; 3 uses
  %.01522.i11 = phi i32 [ %.116.i12, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %i.y = sub nuw i32 %.023.i10, %.01522.i11
  %i.z = lshr i32 %i.y, 1
  %i.aa = add i32 %i.z, %.01522.i11               ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50 ; 2 uses
  %i.ae = icmp eq i32 %i.b, %i.ad
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.af = icmp ult i32 %i.b, %i.ad                ; 2 uses
  %i.ag = add nuw i32 %i.aa, 1
  %.116.i12 = select i1 %i.af, i32 %.01522.i11, i32 %i.ag ; 3 uses
  %.1.i13 = select i1 %i.af, i32 %i.aa, i32 %.023.i10 ; 3 uses
  %i.ah = icmp ult i32 %.116.i12, %.1.i13
  br i1 %i.ah, label %.preheader, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f, %.preheader
  %.015.lcssa.i14 = phi i32 [ %.01522.i11, %.preheader ], [ %.116.i12, %bb.f ]
  %.0.lcssa.i15 = phi i32 [ %.023.i10, %.preheader ], [ %.1.i13, %bb.f ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.ab
  %i.aj = icmp eq i32 %.015.lcssa.i14, %.0.lcssa.i15
  br i1 %i.aj, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

.preheader34:                                     ; preds = %bb.e, %bb.h
  %.023.i17 = phi i32 [ %.1.i20, %bb.h ], [ 70, %bb.e ] ; 3 uses
  %.01522.i18 = phi i32 [ %.116.i19, %bb.h ], [ 0, %bb.e ] ; 4 uses
  %i.ak = sub nuw i32 %.023.i17, %.01522.i18
  %i.al = lshr i32 %i.ak, 1
  %i.am = add i32 %i.al, %.01522.i18              ; 3 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.aq = icmp eq i32 %i.b, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader34
  %i.ar = icmp ult i32 %i.b, %i.ap                ; 2 uses
  %i.as = add nuw i32 %i.am, 1
  %.116.i19 = select i1 %i.ar, i32 %.01522.i18, i32 %i.as ; 3 uses
  %.1.i20 = select i1 %i.ar, i32 %i.am, i32 %.023.i17 ; 3 uses
  %i.at = icmp ult i32 %.116.i19, %.1.i20
  br i1 %i.at, label %.preheader34, label %bb.i, !llvm.loop !4

bb.i:                                             ; preds = %bb.h, %.preheader34
  %.015.lcssa.i21 = phi i32 [ %.01522.i18, %.preheader34 ], [ %.116.i19, %bb.h ]
  %.0.lcssa.i22 = phi i32 [ %.023.i17, %.preheader34 ], [ %.1.i20, %bb.h ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.an
  %i.av = icmp eq i32 %.015.lcssa.i21, %.0.lcssa.i22
  br i1 %i.av, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

.preheader35:                                     ; preds = %bb.e, %bb.j
  %.023.i24 = phi i32 [ %.1.i27, %bb.j ], [ 11, %bb.e ] ; 3 uses
  %.01522.i25 = phi i32 [ %.116.i26, %bb.j ], [ 0, %bb.e ] ; 4 uses
  %i.aw = sub nuw i32 %.023.i24, %.01522.i25
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = add i32 %i.ax, %.01522.i25              ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !50 ; 2 uses
  %i.bc = icmp eq i32 %i.b, %i.bb
  br i1 %i.bc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader35
  %i.bd = icmp ult i32 %i.b, %i.bb                ; 2 uses
  %i.be = add nuw i32 %i.ay, 1
  %.116.i26 = select i1 %i.bd, i32 %.01522.i25, i32 %i.be ; 3 uses
  %.1.i27 = select i1 %i.bd, i32 %i.ay, i32 %.023.i24 ; 3 uses
  %i.bf = icmp ult i32 %.116.i26, %.1.i27
  br i1 %i.bf, label %.preheader35, label %bb.k, !llvm.loop !8

bb.k:                                             ; preds = %bb.j, %.preheader35
  %.015.lcssa.i28 = phi i32 [ %.01522.i25, %.preheader35 ], [ %.116.i26, %bb.j ]
  %.0.lcssa.i29 = phi i32 [ %.023.i24, %.preheader35 ], [ %.1.i27, %bb.j ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.az
  %i.bh = icmp eq i32 %.015.lcssa.i28, %.0.lcssa.i29
  br i1 %i.bh, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split

_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split: ; preds = %bb.k, %bb.i, %bb.g, %bb.d
  %.sink = phi ptr [ %i.au, %bb.i ], [ %i.ai, %bb.g ], [ %i.m, %bb.d ], [ %i.bg, %bb.k ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !50
  %i.bk = trunc i32 %i.bj to i16
  br label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit

_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit:   ; preds = %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split, %bb.k, %bb.i, %bb.g, %_ZN4llvm7Hexagon10getRegFormEj.exit.thread, %bb.e
  %.0 = phi i16 [ -1, %bb.k ], [ -1, %bb.e ], [ -1, %_ZN4llvm7Hexagon10getRegFormEj.exit.thread ], [ -1, %bb.g ], [ -1, %bb.i ], [ %i.bk, %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit.sink.split ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo18getPseudoInstrPairERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #6 align 2 {
bb.a:
  ret i16 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo10getRegFormERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.023.i = phi i32 [ 28, %bb.a ], [ %.1.i, %bb.c ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.a ], [ %.116.i, %bb.c ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.b, %i.h
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i32 %i.b, %i.h                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !15

bb.d:                                             ; preds = %bb.c, %bb.b
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.b ], [ %.116.i, %bb.c ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.b ], [ %.1.i, %bb.c ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon10getRegFormEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon10getRegFormEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon10getRegFormEj.exit

_ZN4llvm7Hexagon10getRegFormEj.exit:              ; preds = %bb.d, %bb.e
  %.019.i = phi i16 [ %i.q, %bb.e ], [ -1, %bb.d ]
  ret i16 %.019.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK4llvm16HexagonInstrInfo7getSizeERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %switch.tableidx = add i32 %i.b, -3             ; 2 uses
  %i.c = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -2033, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.c, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1115  ; 2 uses
  %.not = icmp eq i8 %i.g, 0
  %narrow = select i1 %.not, i8 4, i8 %i.g
  %spec.store.select = zext i8 %narrow to i32     ; 3 uses
  %i.h = tail call noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo15isConstExtendedERKNS_12MachineInstrE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.h, label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !261
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !266
  %i.l = and i64 %i.k, 16777216
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.d, label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !265  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i24, ptr %i.o, align 8              ; 2 uses
  %i.q = zext i24 %i.p to i64
  %.idx.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %.not1619.not.i = icmp eq i24 %i.p, 0
  br i1 %.not1619.not.i, label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.020.i, i64 32 ; 2 uses
  %.not16.not.i = icmp eq ptr %i.s, %i.r
  br i1 %.not16.not.i, label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.020.i = phi ptr [ %i.s, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.t = load i32, ptr %.020.i, align 8           ; 2 uses
  %i.u = and i32 %i.t, 255
  %i.v = icmp ne i32 %i.u, 0
  %i.w = and i32 %i.t, 32768
  %.not1718.i = icmp ne i32 %i.w, 0
  %.not17.not.i = and i1 %i.v, %.not1718.i
  br i1 %.not17.not.i, label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread, label %bb.e

_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread: ; preds = %.lr.ph.i, %bb.c, %bb.b
  %i.x = add nuw nsw i32 %spec.store.select, 4
  br label %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit

_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit: ; preds = %bb.e, %bb.d, %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread
  %.023 = phi i32 [ %i.x, %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit.thread ], [ %spec.store.select, %bb.d ], [ %spec.store.select, %bb.e ] ; 2 uses
  %i.y = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL19BranchRelaxAsmLarge, i64 120), align 8, !tbaa !442, !range !104, !noundef !105
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.f, label %switch.lookup

bb.f:                                             ; preds = %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !264
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %switch.lookup

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !321
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !432, !nonnull !105, !align !244
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1072
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1117
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !265
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.022 = phi i32 [ 0, %bb.g ], [ %i.aq, %bb.h ]  ; 2 uses
  %i.am = zext i32 %.022 to i64
  %i.an = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ao, 16777471
  %or.cond26 = icmp eq i32 %i.ap, 16777216
  %i.aq = add i32 %.022, 1
  br i1 %or.cond26, label %bb.h, label %.critedge, !llvm.loop !1114

.critedge:                                        ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !71
  %i.at = load ptr, ptr %0, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 992
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef %i.as, ptr noundef nonnull align 8 dereferenceable(448) %i.aj, ptr noundef null) #29
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.a, %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit, %bb.f, %.critedge
  %.0 = phi i32 [ %.023, %bb.f ], [ %.023, %_ZNK4llvm16HexagonInstrInfo10isExtendedERKNS_12MachineInstrE.exit ], [ %i.aw, %.critedge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm16HexagonInstrInfo16nonDbgBundleSizeENS_26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !260
  %i.e = and i32 %i.d, 8
  %.not3.i = icmp eq i32 %i.e, 0
  br i1 %.not3.i, label %_ZL13nonDbgMICountN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEES5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.04.i = phi ptr [ %i.g, %.lr.ph.i ], [ %1, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !270  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !260
  %i.j = and i32 %i.i, 8
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit, label %.lr.ph.i, !llvm.loop !1118

_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit: ; preds = %.lr.ph.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !270 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, %.pre
  br i1 %.not5.i, label %_ZL13nonDbgMICountN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEES5_.exit, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit, %.lr.ph.i4
  %.07.i = phi i32 [ %spec.select.i, %.lr.ph.i4 ], [ 0, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit ]
  %.sroa.02.06.i = phi ptr [ %i.p, %.lr.ph.i4 ], [ %i.b, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !264
  %i.m = add i32 %i.l, -19
  %switch.i.i = icmp ult i32 %i.m, -5
  %i.n = zext i1 %switch.i.i to i32
  %spec.select.i = add i32 %.07.i, %i.n           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270  ; 2 uses
  %.not.i5 = icmp eq ptr %i.p, %.pre
  br i1 %.not.i5, label %_ZL13nonDbgMICountN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEES5_.exit, label %.lr.ph.i4, !llvm.loop !22

_ZL13nonDbgMICountN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEES5_.exit: ; preds = %.lr.ph.i4, %bb.a, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN4llvm12getBundleEndENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EEE.exit ], [ 0, %bb.a ], [ %spec.select.i, %.lr.ph.i4 ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo15immediateExtendERNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !261
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !266
  %i.e = lshr i64 %i.d, 25
  %i.f = and i64 %i.e, 7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !265
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = or i32 %i.j, 32768
  store i32 %i.k, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo25invertAndChangeJumpTargetERNS_12MachineInstrEPNS_17MachineBasicBlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = zext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !266
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.preheader.i, label %.preheader12.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.023.i.i = phi i32 [ %.1.i.i, %bb.b ], [ 250, %bb.a ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.k = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.l = lshr i32 %i.k, 1
  %i.m = add i32 %i.l, %.01522.i.i                ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = icmp eq i32 %i.b, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.r = icmp ult i32 %i.b, %i.p                  ; 2 uses
  %i.s = add nuw i32 %i.m, 1
  %.116.i.i = select i1 %i.r, i32 %.01522.i.i, i32 %i.s ; 3 uses
  %.1.i.i = select i1 %i.r, i32 %i.m, i32 %.023.i.i ; 3 uses
  %i.t = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.t, label %.preheader.i, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.b ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.n
  %i.v = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.v, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

.preheader12.i:                                   ; preds = %bb.a, %bb.d
  %.023.i5.i = phi i32 [ %.1.i8.i, %bb.d ], [ 250, %bb.a ] ; 3 uses
  %.01522.i6.i = phi i32 [ %.116.i7.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.w = sub nuw i32 %.023.i5.i, %.01522.i6.i
  %i.x = lshr i32 %i.w, 1
  %i.y = add i32 %i.x, %.01522.i6.i               ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = icmp eq i32 %i.b, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader12.i
  %i.ad = icmp ult i32 %i.b, %i.ab                ; 2 uses
  %i.ae = add nuw i32 %i.y, 1
  %.116.i7.i = select i1 %i.ad, i32 %.01522.i6.i, i32 %i.ae ; 3 uses
  %.1.i8.i = select i1 %i.ad, i32 %i.y, i32 %.023.i5.i ; 3 uses
  %i.af = icmp ult i32 %.116.i7.i, %.1.i8.i
  br i1 %i.af, label %.preheader12.i, label %bb.e, !llvm.loop !16

bb.e:                                             ; preds = %bb.d, %.preheader12.i
  %.015.lcssa.i9.i = phi i32 [ %.01522.i6.i, %.preheader12.i ], [ %.116.i7.i, %bb.d ]
  %.0.lcssa.i10.i = phi i32 [ %.023.i5.i, %.preheader12.i ], [ %.1.i8.i, %bb.d ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.z
  %i.ah = icmp eq i32 %.015.lcssa.i9.i, %.0.lcssa.i10.i
  br i1 %i.ah, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i: ; preds = %bb.e, %bb.c
  %.sink22.i = phi ptr [ %i.u, %bb.c ], [ %i.ag, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit

_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit: ; preds = %bb.c, %bb.e, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i
  %i.ak = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.aj, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i ] ; 8 uses
  %i.al = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load i24, ptr %i.am, align 8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre.pre = load ptr, ptr %i.ao, align 8, !tbaa !265 ; 2 uses
  %.not54 = icmp eq i24 %i.an, 0
  br i1 %.not54, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit
  %i.ap = zext i24 %i.an to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.aq = icmp sgt i64 %indvars.iv51, 1
  br i1 %i.aq, label %bb.g, label %.critedge, !llvm.loop !1119

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv51 = phi i64 [ %i.ap, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv51, -1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %.pre.pre, i64 %indvars.iv.next
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 255
  %i.au = icmp eq i32 %i.at, 4
  br i1 %i.au, label %..critedge_crit_edge52, label %bb.f, !llvm.loop !1119

..critedge_crit_edge52:                           ; preds = %bb.g
  %i.av = and i64 %indvars.iv.next, 4294967295
  br label %.critedge, !llvm.loop !1119

.critedge:                                        ; preds = %bb.f, %..critedge_crit_edge52, %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit
  %.0.lcssa = phi i64 [ 4294967295, %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit ], [ %i.av, %..critedge_crit_edge52 ], [ 4294967295, %bb.f ]
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %.pre.pre, i64 %.0.lcssa
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %2, ptr %i.ax, align 8, !tbaa !71
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL22EnableBranchPrediction, i64 120), align 8, !tbaa !442, !range !104, !noundef !105
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.h, label %.critedge._ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit_crit_edge

.critedge._ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit_crit_edge: ; preds = %.critedge
  %.pre33 = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit

bb.h:                                             ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !261
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !266
  %i.be = and i64 %i.bd, 4096
  %.not = icmp eq i64 %i.be, 0
  %.pre34 = load ptr, ptr %i.c, align 8, !tbaa !121 ; 5 uses
  br i1 %.not, label %_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = zext nneg i32 %i.ak to i64
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [32 x i8], ptr %.pre34, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !266
  %i.bk = and i64 %i.bj, 140737488355328
  %.not.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i, label %.preheader.i21, label %.preheader11.i

.preheader11.i:                                   ; preds = %bb.i, %bb.j
  %.023.i.i14 = phi i32 [ %.1.i.i17, %bb.j ], [ 64, %bb.i ] ; 3 uses
  %.01522.i.i15 = phi i32 [ %.116.i.i16, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %i.bl = sub nuw i32 %.023.i.i14, %.01522.i.i15
  %i.bm = lshr i32 %i.bl, 1
  %i.bn = add i32 %i.bm, %.01522.i.i15            ; 3 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !50 ; 2 uses
  %i.br = icmp eq i32 %i.ak, %i.bq
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader11.i
  %i.bs = icmp ult i32 %i.ak, %i.bq               ; 2 uses
  %i.bt = add nuw i32 %i.bn, 1
  %.116.i.i16 = select i1 %i.bs, i32 %.01522.i.i15, i32 %i.bt ; 3 uses
  %.1.i.i17 = select i1 %i.bs, i32 %i.bn, i32 %.023.i.i14 ; 3 uses
  %i.bu = icmp ult i32 %.116.i.i16, %.1.i.i17
  br i1 %i.bu, label %.preheader11.i, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %bb.j, %.preheader11.i
  %.015.lcssa.i.i18 = phi i32 [ %.01522.i.i15, %.preheader11.i ], [ %.116.i.i16, %bb.j ]
  %.0.lcssa.i.i19 = phi i32 [ %.023.i.i14, %.preheader11.i ], [ %.1.i.i17, %bb.j ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.bo
  %i.bw = icmp eq i32 %.015.lcssa.i.i18, %.0.lcssa.i.i19
  br i1 %i.bw, label %_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i

.preheader.i21:                                   ; preds = %bb.i, %bb.l
  %.023.i4.i = phi i32 [ %.1.i7.i, %bb.l ], [ 64, %bb.i ] ; 3 uses
  %.01522.i5.i = phi i32 [ %.116.i6.i, %bb.l ], [ 0, %bb.i ] ; 4 uses
  %i.bx = sub nuw i32 %.023.i4.i, %.01522.i5.i
  %i.by = lshr i32 %i.bx, 1
  %i.bz = add i32 %i.by, %.01522.i5.i             ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !50 ; 2 uses
  %i.cd = icmp eq i32 %i.ak, %i.cc
  br i1 %i.cd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.preheader.i21
  %i.ce = icmp ult i32 %i.ak, %i.cc               ; 2 uses
  %i.cf = add nuw i32 %i.bz, 1
  %.116.i6.i = select i1 %i.ce, i32 %.01522.i5.i, i32 %i.cf ; 3 uses
  %.1.i7.i = select i1 %i.ce, i32 %i.bz, i32 %.023.i4.i ; 3 uses
  %i.cg = icmp ult i32 %.116.i6.i, %.1.i7.i
  br i1 %i.cg, label %.preheader.i21, label %bb.m, !llvm.loop !18

bb.m:                                             ; preds = %bb.l, %.preheader.i21
  %.015.lcssa.i8.i = phi i32 [ %.01522.i5.i, %.preheader.i21 ], [ %.116.i6.i, %bb.l ]
  %.0.lcssa.i9.i = phi i32 [ %.023.i4.i, %.preheader.i21 ], [ %.1.i7.i, %bb.l ]
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.ca
  %i.ci = icmp eq i32 %.015.lcssa.i8.i, %.0.lcssa.i9.i
  br i1 %i.ci, label %_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i

_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i: ; preds = %bb.m, %bb.k
  %.sink22.i20 = phi ptr [ %i.bv, %bb.k ], [ %i.ch, %bb.m ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sink22.i20, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit

_ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit: ; preds = %.critedge._ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit_crit_edge, %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i, %bb.m, %bb.k, %bb.h
  %i.cl = phi ptr [ %.pre33, %.critedge._ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit_crit_edge ], [ %.pre34, %bb.h ], [ %.pre34, %bb.k ], [ %.pre34, %bb.m ], [ %.pre34, %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i ]
  %.013 = phi i32 [ %i.ak, %.critedge._ZNK4llvm16HexagonInstrInfo17reversePredictionEj.exit_crit_edge ], [ %i.ak, %bb.h ], [ -1, %bb.k ], [ -1, %bb.m ], [ %i.ck, %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split.i ]
  %i.cm = zext i32 %.013 to i64
  %i.cn = sub nsw i64 0, %i.cm
  %i.co = getelementptr inbounds [32 x i8], ptr %i.cl, i64 %i.cn
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.co) #29
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK4llvm16HexagonInstrInfo17reversePredictionEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, i32 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = zext i32 %1 to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !266
  %i.h = and i64 %i.g, 140737488355328
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.a, %bb.b
  %.023.i = phi i32 [ %.1.i, %bb.b ], [ 64, %bb.a ] ; 3 uses
  %.01522.i = phi i32 [ %.116.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.i = sub nuw i32 %.023.i, %.01522.i
  %i.j = lshr i32 %i.i, 1
  %i.k = add i32 %i.j, %.01522.i                  ; 3 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.l
  %i.n = load i32, ptr %i.m, align 8, !tbaa !50   ; 2 uses
  %i.o = icmp eq i32 %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader11
  %i.p = icmp ult i32 %1, %i.n                    ; 2 uses
  %i.q = add nuw i32 %i.k, 1
  %.116.i = select i1 %i.p, i32 %.01522.i, i32 %i.q ; 3 uses
  %.1.i = select i1 %i.p, i32 %i.k, i32 %.023.i   ; 3 uses
  %i.r = icmp ult i32 %.116.i, %.1.i
  br i1 %i.r, label %.preheader11, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %bb.b, %.preheader11
  %.015.lcssa.i = phi i32 [ %.01522.i, %.preheader11 ], [ %.116.i, %bb.b ]
  %.0.lcssa.i = phi i32 [ %.023.i, %.preheader11 ], [ %.1.i, %bb.b ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon24notTakenBranchPredictionEjE5Table, i64 %i.l
  %i.t = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.t, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split

.preheader:                                       ; preds = %bb.a, %bb.d
  %.023.i4 = phi i32 [ %.1.i7, %bb.d ], [ 64, %bb.a ] ; 3 uses
  %.01522.i5 = phi i32 [ %.116.i6, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.u = sub nuw i32 %.023.i4, %.01522.i5
  %i.v = lshr i32 %i.u, 1
  %i.w = add i32 %i.v, %.01522.i5                 ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.x
  %i.z = load i32, ptr %i.y, align 8, !tbaa !50   ; 2 uses
  %i.aa = icmp eq i32 %1, %i.z
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ab = icmp ult i32 %1, %i.z                   ; 2 uses
  %i.ac = add nuw i32 %i.w, 1
  %.116.i6 = select i1 %i.ab, i32 %.01522.i5, i32 %i.ac ; 3 uses
  %.1.i7 = select i1 %i.ab, i32 %i.w, i32 %.023.i4 ; 3 uses
  %i.ad = icmp ult i32 %.116.i6, %.1.i7
  br i1 %i.ad, label %.preheader, label %bb.e, !llvm.loop !18

bb.e:                                             ; preds = %bb.d, %.preheader
  %.015.lcssa.i8 = phi i32 [ %.01522.i5, %.preheader ], [ %.116.i6, %bb.d ]
  %.0.lcssa.i9 = phi i32 [ %.023.i4, %.preheader ], [ %.1.i7, %bb.d ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21takenBranchPredictionEjE5Table, i64 %i.x
  %i.af = icmp eq i32 %.015.lcssa.i8, %.0.lcssa.i9
  br i1 %i.af, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit, label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split

_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split: ; preds = %bb.e, %bb.c
  %.sink22 = phi ptr [ %i.s, %bb.c ], [ %i.ae, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sink22, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  br label %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit

_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit: ; preds = %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.ah, %_ZN4llvm7Hexagon24notTakenBranchPredictionEj.exit.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo23genAllInsnTimingClassesERNS_15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !270  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.sroa.05.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !277
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.b:                                             ; preds = %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  ret void

_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.a, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit
  %indvars.iv = phi i64 [ 331, %bb.a ], [ %indvars.iv.next, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !121
  %i.j = sub nsw i64 0, %indvars.iv
  %i.k = getelementptr inbounds [32 x i8], ptr %i.i, i64 %i.j
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !321
  %i.m = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr %.sroa.05.0.copyload, i1 noundef zeroext false) #29 ; 7 uses
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef %i.m) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.d, ptr %i.p, align 8, !tbaa !270
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.m, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.r = or disjoint i64 %i.q, %i.n
  store i64 %i.r, ptr %i.m, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.m, ptr %i.s, align 8, !tbaa !270
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %i.d, align 8
  %i.t = ptrtoint ptr %i.m to i64
  %i.u = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.v = or disjoint i64 %i.u, %i.t
  store i64 %i.v, ptr %i.d, align 8
  %i.w = tail call ptr @_ZN4llvm12MachineInstr15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m) #29 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3435
  br i1 %exitcond.not, label %bb.b, label %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, !llvm.loop !1120
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo16reversePredSenseERNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !264  ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.e = zext i32 %i.c to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !266
  %i.j = and i64 %i.i, 2048
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %.preheader.i, label %.preheader12.i

.preheader.i:                                     ; preds = %bb.a, %bb.b
  %.023.i.i = phi i32 [ %.1.i.i, %bb.b ], [ 250, %bb.a ] ; 3 uses
  %.01522.i.i = phi i32 [ %.116.i.i, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.k = sub nuw i32 %.023.i.i, %.01522.i.i
  %i.l = lshr i32 %i.k, 1
  %i.m = add i32 %i.l, %.01522.i.i                ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.n
  %i.p = load i32, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = icmp eq i32 %i.c, %i.p
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i
  %i.r = icmp ult i32 %i.c, %i.p                  ; 2 uses
  %i.s = add nuw i32 %i.m, 1
  %.116.i.i = select i1 %i.r, i32 %.01522.i.i, i32 %i.s ; 3 uses
  %.1.i.i = select i1 %i.r, i32 %i.m, i32 %.023.i.i ; 3 uses
  %i.t = icmp ult i32 %.116.i.i, %.1.i.i
  br i1 %i.t, label %.preheader.i, label %bb.c, !llvm.loop !9

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %.015.lcssa.i.i = phi i32 [ %.01522.i.i, %.preheader.i ], [ %.116.i.i, %bb.b ]
  %.0.lcssa.i.i = phi i32 [ %.023.i.i, %.preheader.i ], [ %.1.i.i, %bb.b ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon18getFalsePredOpcodeEjE5Table, i64 %i.n
  %i.v = icmp eq i32 %.015.lcssa.i.i, %.0.lcssa.i.i
  br i1 %i.v, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

.preheader12.i:                                   ; preds = %bb.a, %bb.d
  %.023.i5.i = phi i32 [ %.1.i8.i, %bb.d ], [ 250, %bb.a ] ; 3 uses
  %.01522.i6.i = phi i32 [ %.116.i7.i, %bb.d ], [ 0, %bb.a ] ; 4 uses
  %i.w = sub nuw i32 %.023.i5.i, %.01522.i6.i
  %i.x = lshr i32 %i.w, 1
  %i.y = add i32 %i.x, %.01522.i6.i               ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !50 ; 2 uses
  %i.ac = icmp eq i32 %i.c, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader12.i
  %i.ad = icmp ult i32 %i.c, %i.ab                ; 2 uses
  %i.ae = add nuw i32 %i.y, 1
  %.116.i7.i = select i1 %i.ad, i32 %.01522.i6.i, i32 %i.ae ; 3 uses
  %.1.i8.i = select i1 %i.ad, i32 %i.y, i32 %.023.i5.i ; 3 uses
  %i.af = icmp ult i32 %.116.i7.i, %.1.i8.i
  br i1 %i.af, label %.preheader12.i, label %bb.e, !llvm.loop !16

bb.e:                                             ; preds = %bb.d, %.preheader12.i
  %.015.lcssa.i9.i = phi i32 [ %.01522.i6.i, %.preheader12.i ], [ %.116.i7.i, %bb.d ]
  %.0.lcssa.i10.i = phi i32 [ %.023.i5.i, %.preheader12.i ], [ %.1.i8.i, %bb.d ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon17getTruePredOpcodeEjE5Table, i64 %i.z
  %i.ah = icmp eq i32 %.015.lcssa.i9.i, %.0.lcssa.i10.i
  br i1 %i.ah, label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit, label %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i

_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i: ; preds = %bb.e, %bb.c
  %.sink22.i = phi ptr [ %i.u, %bb.c ], [ %i.ag, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink22.i, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !50
  br label %_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit

_ZNK4llvm16HexagonInstrInfo27getInvertedPredicatedOpcodeEi.exit: ; preds = %bb.c, %bb.e, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i
  %i.ak = phi i32 [ -1, %bb.c ], [ -1, %bb.e ], [ %i.aj, %_ZN4llvm7Hexagon18getFalsePredOpcodeEj.exit.sink.split.i ] ; 2 uses
  %i.al = icmp sgt i32 %i.ak, -1
  tail call void @llvm.assume(i1 %i.al)
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.an
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #29
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo18validateBranchCondERKNS_8ArrayRefINS_14MachineOperandEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1122 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !1123
  %i.e = load i32, ptr %i.d, align 8
  %i.f = and i32 %i.e, 255
  %i.g = icmp eq i32 %i.f, 1
  %i.h = icmp ne i64 %i.b, 1
  %spec.select = and i1 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ %spec.select, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo15setBundleNoShufENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = or i64 %i.g, 4
  store i64 %i.h, ptr %i.f, align 8, !tbaa !71
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 1, ptr %2, align 8, !alias.scope !1126
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.i, align 8, !tbaa !274, !alias.scope !1126
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 4, ptr %i.j, align 8, !tbaa !71, !alias.scope !1126
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo15getBundleNoShufERKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !71
  %i.h = and i64 %i.g, 4
  %i.i = icmp ne i64 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo8isQFPMulEPKNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = and i32 %i.b, -8
  %switch.selectcmp = icmp eq i32 %i.c, 3112
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 131587) i32 @_ZN4llvm9HexagonII14getRegTypeInfoEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.n [
    i32 2797, label %bb.b
    i32 2798, label %bb.c
    i32 2799, label %bb.d
    i32 2800, label %bb.e
    i32 2812, label %bb.b
    i32 2815, label %bb.f
    i32 2816, label %bb.c
    i32 2817, label %bb.g
    i32 2818, label %bb.d
    i32 2819, label %bb.e
    i32 2922, label %bb.h
    i32 2923, label %bb.i
    i32 2927, label %bb.i
    i32 2928, label %bb.h
    i32 2929, label %bb.b
    i32 2930, label %bb.b
    i32 2931, label %bb.c
    i32 2932, label %bb.d
    i32 2933, label %bb.e
    i32 2934, label %bb.h
    i32 3056, label %bb.i
    i32 3057, label %bb.h
    i32 3112, label %bb.f
    i32 3113, label %bb.b
    i32 3114, label %bb.c
    i32 3115, label %bb.g
    i32 3116, label %bb.e
    i32 3117, label %bb.j
    i32 3118, label %bb.k
    i32 3119, label %bb.e
    i32 3120, label %bb.b
    i32 3121, label %bb.c
    i32 3122, label %bb.e
    i32 3184, label %bb.b
    i32 3185, label %bb.c
    i32 3186, label %bb.d
    i32 3187, label %bb.e
    i32 3278, label %bb.b
    i32 3282, label %bb.f
    i32 3283, label %bb.c
    i32 3284, label %bb.g
    i32 3285, label %bb.d
    i32 3286, label %bb.e
    i32 3289, label %bb.l
    i32 3281, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  br label %bb.n

end_hunk_5
begin_hunk_6_@_ZNK4llvm16HexagonInstrInfo13usesQFOperandEPNS_12MachineInstrEj:bb.a
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12isQFP32InstrEPNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = tail call i32 @_ZN4llvm9HexagonII14getRegTypeInfoEj(i32 noundef %i.b)
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 1
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12isQFP16InstrEPNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = tail call i32 @_ZN4llvm9HexagonII14getRegTypeInfoEj(i32 noundef %i.b)
  %i.d = and i32 %i.c, 255
  %i.e = icmp eq i32 %i.d, 2
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10isQFPInstrEPNS_12MachineInstrE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.b = load i32, ptr %i.a, align 4, !tbaa !264
  %i.c = tail call i32 @_ZN4llvm9HexagonII14getRegTypeInfoEj(i32 noundef %i.b)
  %i.d = and i32 %i.c, 255
  %i.e = add nsw i32 %i.d, -1
  %spec.select = icmp ult i32 %i.e, 2
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo12hasQFPInstrsERKNS_15MachineFunctionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.020.033 = load ptr, ptr %i.a, align 8, !tbaa !276 ; 2 uses
  %.not34.not = icmp eq ptr %.sroa.020.033, %i.b
  br i1 %.not34.not, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.a, %._crit_edge
  %.sroa.020.035 = phi ptr [ %.sroa.020.0, %._crit_edge ], [ %.sroa.020.033, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 48 ; 2 uses
  %.sroa.017.030 = load ptr, ptr %i.c, align 8, !tbaa !270 ; 2 uses
  %.not2631 = icmp eq ptr %.sroa.017.030, %i.d
  br i1 %.not2631, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph38, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.017.032 = phi ptr [ %.sroa.017.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.017.030, %.lr.ph38 ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.017.032, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !264
  %i.g = tail call i32 @_ZN4llvm9HexagonII14getRegTypeInfoEj(i32 noundef %i.f)
  %i.h = and i32 %i.g, 255
  %i.i = add nsw i32 %i.h, -1
  %spec.select.i = icmp ult i32 %i.i, 2
  br i1 %spec.select.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.032) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.017.032, align 8
  %i.j = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.017.032, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !260
  %i.m = and i32 %i.l, 8
  %.not34.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.o, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.017.032, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !270  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !260
  %i.r = and i32 %i.q, 8
  %.not3.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !24

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.b, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.017.032, %bb.b ], [ %.sroa.017.032, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.o, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.017.0 = load ptr, ptr %i.s, align 8, !tbaa !270 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.017.0, %i.d
  br i1 %.not26, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %.lr.ph38
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.035, i64 8
  %.sroa.020.0 = load ptr, ptr %i.t, align 8, !tbaa !276 ; 2 uses
  %.not.not = icmp eq ptr %.sroa.020.0, %i.b
  br i1 %.not.not, label %.loopexit, label %.lr.ph38

.loopexit:                                        ; preds = %._crit_edge, %.lr.ph, %bb.a
  %.not29 = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ false, %._crit_edge ]
  ret i1 %.not29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16HexagonInstrInfo10isMIBeforeEPKNS_12MachineInstrES3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !271
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.sroa.019.024 = load ptr, ptr %i.g, align 8, !tbaa !270 ; 2 uses
  %.not2325 = icmp eq ptr %.sroa.019.024, %i.h
  br i1 %.not2325, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit
  %.sroa.019.027 = phi ptr [ %.sroa.019.0, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.019.024, %bb.c ] ; 8 uses
  %.01426 = phi i1 [ %.115, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ undef, %bb.c ]
  %i.i = icmp eq ptr %.sroa.019.027, %1           ; 2 uses
  %i.j = icmp ne ptr %.sroa.019.027, %2           ; 2 uses
  %..014 = select i1 %i.j, i1 %.01426, i1 false
  %.115 = select i1 %i.i, i1 true, i1 %..014      ; 2 uses
  %not. = xor i1 %i.i, true
  %cond = and i1 %i.j, %not.
  br i1 %cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.019.027) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.019.027, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.019.027, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !260
  %i.n = and i32 %i.m, 8
  %.not34.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.p, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ], [ %.sroa.019.027, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !270  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !260
  %i.s = and i32 %i.r, 8
  %.not3.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, !llvm.loop !24

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i, %bb.d, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.019.027, %bb.d ], [ %.sroa.019.027, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i ], [ %i.p, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i, i64 8
  %.sroa.019.0 = load ptr, ptr %i.t, align 8, !tbaa !270 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.019.0, %i.h
  br i1 %.not23, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit, %.lr.ph, %bb.c, %bb.a, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit ], [ %.115, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo21changeAddrMode_abs_ioEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 70, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_abs_ioEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit

_ZN4llvm7Hexagon21changeAddrMode_abs_ioEj.exit:   ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo21changeAddrMode_io_absEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon21changeAddrMode_io_absEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 70, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_io_absEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !2

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon21changeAddrMode_io_absEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon21changeAddrMode_io_absEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon21changeAddrMode_io_absEj.exit

_ZN4llvm7Hexagon21changeAddrMode_io_absEj.exit:   ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_io_piEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_io_piEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 24, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_piEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_io_piEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_piEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_io_piEj.exit

_ZN4llvm7Hexagon20changeAddrMode_io_piEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_io_rrEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_io_rrEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 70, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !4

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_io_rrEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_io_rrEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_io_rrEj.exit

_ZN4llvm7Hexagon20changeAddrMode_io_rrEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_pi_ioEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_pi_ioEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 24, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_pi_ioEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !5

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_pi_ioEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_pi_ioEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_pi_ioEj.exit

_ZN4llvm7Hexagon20changeAddrMode_pi_ioEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_rr_ioEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_rr_ioEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 70, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_ioEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !6

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_rr_ioEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_ioEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_rr_ioEj.exit

_ZN4llvm7Hexagon20changeAddrMode_rr_ioEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_rr_urEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_rr_urEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 11, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_urEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !7

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_rr_urEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_rr_urEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_rr_urEj.exit

_ZN4llvm7Hexagon20changeAddrMode_rr_urEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK4llvm16HexagonInstrInfo20changeAddrMode_ur_rrEs(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(440) %0, i16 noundef signext %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i16 %1, -1
  br i1 %i.a, label %bb.b, label %_ZN4llvm7Hexagon20changeAddrMode_ur_rrEj.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.023.i = phi i32 [ 11, %bb.b ], [ %.1.i, %bb.d ] ; 3 uses
  %.01522.i = phi i32 [ 0, %bb.b ], [ %.116.i, %bb.d ] ; 4 uses
  %i.c = sub nuw i32 %.023.i, %.01522.i
  %i.d = lshr i32 %i.c, 1
  %i.e = add i32 %i.d, %.01522.i                  ; 3 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !50   ; 2 uses
  %i.i = icmp eq i32 %i.h, %i.b
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i32 %i.h, %i.b                  ; 2 uses
  %i.k = add nuw i32 %i.e, 1
  %.116.i = select i1 %i.j, i32 %.01522.i, i32 %i.k ; 3 uses
  %.1.i = select i1 %i.j, i32 %i.e, i32 %.023.i   ; 3 uses
  %i.l = icmp ult i32 %.116.i, %.1.i
  br i1 %i.l, label %bb.c, label %bb.e, !llvm.loop !8

bb.e:                                             ; preds = %bb.d, %bb.c
  %.015.lcssa.i = phi i32 [ %.01522.i, %bb.c ], [ %.116.i, %bb.d ]
  %.0.lcssa.i = phi i32 [ %.023.i, %bb.c ], [ %.1.i, %bb.d ]
  %i.m = icmp eq i32 %.015.lcssa.i, %.0.lcssa.i
  br i1 %i.m, label %_ZN4llvm7Hexagon20changeAddrMode_ur_rrEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm7Hexagon20changeAddrMode_ur_rrEjE5Table, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = trunc i32 %i.p to i16
  br label %_ZN4llvm7Hexagon20changeAddrMode_ur_rrEj.exit

_ZN4llvm7Hexagon20changeAddrMode_ur_rrEj.exit:    ; preds = %bb.f, %bb.e, %bb.a
  %i.r = phi i16 [ %1, %bb.a ], [ %i.q, %bb.f ], [ -1, %bb.e ]
  ret i16 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16HexagonInstrInfo6getNopEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::MCInst") align 8 initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MCInstBuilder", align 8 ; 9 uses
  %.sroa.5 = alloca [28 x i8], align 4            ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZNK4llvm16HexagonInstrInfo6getNopEvE3Nop acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvm13MCInstBuilder6addImmEl.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo6getNopEvE3Nop) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN4llvm13MCInstBuilder6addImmEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 16, i1 false)
  store ptr %i.e, ptr %i.d, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 6, ptr %i.g, align 4, !tbaa !79
  store i32 986, ptr %2, align 8, !tbaa !1134
  call void @_ZN4llvm6MCInstC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) @_ZZNK4llvm16HexagonInstrInfo6getNopEvE3Nop, ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZN4llvm13MCInstBuilderD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef %i.h) #29
  br label %_ZN4llvm13MCInstBuilderD2Ev.exit

_ZN4llvm13MCInstBuilderD2Ev.exit:                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.j = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm6MCInstD2Ev, ptr nonnull @_ZZNK4llvm16HexagonInstrInfo6getNopEvE3Nop, ptr nonnull @__dso_handle) #29 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4llvm16HexagonInstrInfo6getNopEvE3Nop) #29
  br label %_ZN4llvm13MCInstBuilder6addImmEl.exit

_ZN4llvm13MCInstBuilder6addImmEl.exit:            ; preds = %_ZN4llvm13MCInstBuilderD2Ev.exit, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i8 0, i64 12, i1 false)
  store i32 22, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.n, align 4, !tbaa !79
  store i8 2, ptr %i.l, align 8
  %.sroa.76.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.76.32..sroa_idx, align 8
  %.sroa.8.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 6, ptr %.sroa.8.32..sroa_idx, align 8
  %.sroa.97.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 ptrtoint (ptr @_ZZNK4llvm16HexagonInstrInfo6getNopEvE3Nop to i64), ptr %.sroa.97.32..sroa_idx, align 8
  store i32 2, ptr %i.m, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6MCInstC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.e, align 4, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !78   ; 5 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.h = icmp eq ptr %0, %1
  %or.cond.i = or i1 %i.h, %.not.i.i
  br i1 %or.cond.i, label %_ZN4llvm11SmallVectorINS_9MCOperandELj6EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i32 %i.g, 6
  br i1 %i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i: ; preds = %bb.b
  %i.j = zext i32 %i.g to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %i.c, i64 noundef %i.j, i64 noundef 16) #29
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i, label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !77
  br label %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i

_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i: ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge, %bb.b
  %i.k = phi ptr [ %.pre, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.c, %bb.b ]
  %i.l = phi i32 [ %.pre.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge ], [ %i.g, %bb.b ]
  %i.m = zext i32 %i.l to i64
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !77
  %gepdiff.i.i = shl nuw nsw i64 %i.m, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 8 %i.n, i64 %gepdiff.i.i, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.thread.i, %_ZSt4copyIPKN4llvm9MCOperandEPS1_ET0_T_S6_S5_.exit30.i.i
  store i32 %i.g, ptr %i.d, align 8, !tbaa !78
  br label %_ZN4llvm11SmallVectorINS_9MCOperandELj6EEC2ERKS2_.exit

_ZN4llvm11SmallVectorINS_9MCOperandELj6EEC2ERKS2_.exit: ; preds = %bb.a, %.sink.split.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6MCInstD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9MCOperandELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #29
  br label %_ZN4llvm11SmallVectorINS_9MCOperandELj6EED2Ev.exit

_ZN4llvm11SmallVectorINS_9MCOperandELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16HexagonInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm16HexagonInstrInfoE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.a) #29
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16HexagonInstrInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(440) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 1488) (i8, ptr @_ZTVN4llvm16HexagonInstrInfoE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvm18TargetRegisterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(316) dereferenceable(316) %i.a) #29, !inline_history !1135
  tail call void @_ZN4llvm15TargetInstrInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(440) %0) #29, !inline_history !1135
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 440) #33
  ret void
}

declare noundef ptr @_ZNK4llvm15TargetInstrInfo11getRegClassERKNS_11MCInstrDescEj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo20isGlobalMemoryObjectEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo14isIgnorableUseERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo12isSafeToSinkERNS_12MachineInstrEPNS_17MachineBasicBlockEPNS_16MachineCycleInfoE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo29shouldBreakCriticalEdgeToSinkERNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo22isReMaterializableImplERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7
end_hunk_6
