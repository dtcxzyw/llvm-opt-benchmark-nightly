Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynamicLoaderStatic?download=true
inline.NumInlined: 140
inline.NumDeleted: 113
begin_hunk_0_@lldb_terminate_DynamicLoaderStatic:bb.a
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStatic9TerminateEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private13PluginManager16UnregisterPluginEPFPNS_13DynamicLoaderEPNS_7ProcessEbE(ptr noundef nonnull @_ZN19DynamicLoaderStatic14CreateInstanceEPN12lldb_private7ProcessEb) #14 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN19DynamicLoaderStatic14CreateInstanceEPN12lldb_private7ProcessEb(ptr noundef %0, i1 noundef zeroext %1) #0 align 2 {
bb.a:
  br i1 %1, label %.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13, !noalias !42, !nonnull !14, !noundef !14 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !42
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.e = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !42 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.c
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !42
  %.not.i.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18, !noalias !42
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.d, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.l = phi ptr [ %i.k, %bb.d ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 2 uses
  %i.m = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.c, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !21
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !1
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.f:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.c, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.y = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.g ], [ %i.y, %bb.h ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.i, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !26

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 804
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 792
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !51
  switch i32 %i.ae, label %.thread36 [
    i32 12, label %bb.k
    i32 58, label %bb.k
    i32 59, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %_ZN12lldb_private7Process9GetTargetEv.exit
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !13, !noalias !52, !nonnull !14, !noundef !14 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !52
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.06.i.i.i.i.i.i19 = phi i32 [ %i.ah, %bb.k ], [ %i.al, %bb.l ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i20 = icmp ne i32 %.06.i.i.i.i.i.i19, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i20)
  %i.ai = add nsw i32 %.06.i.i.i.i.i.i19, 1
  %i.aj = cmpxchg weak ptr %i.ag, i32 %.06.i.i.i.i.i.i19, i32 %i.ai acq_rel monotonic, align 8, !noalias !52 ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = extractvalue { i32, i1 } %i.aj, 0
  br i1 %i.ak, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i21, label %bb.l, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i21: ; preds = %bb.l
  %i.am = load atomic i32, ptr %i.ag monotonic, align 8, !noalias !52
  %.not.i.i.i.i22 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i.i22, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i23, label %bb.m

bb.m:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18, !noalias !52
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i23

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i23: ; preds = %bb.m, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i21
  %i.ap = phi ptr [ %i.ao, %bb.m ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i21 ]
  %i.aq = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 4294967297
  %i.as = trunc i64 %i.aq to i32                  ; 2 uses
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i23
  store i32 0, ptr %i.ag, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.at, align 4, !tbaa !21
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #14, !inline_history !1
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #14, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit27

bb.o:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i23
  %i.ba = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1.i24 = icmp eq i8 %i.ba, 0
  br i1 %.not.i.i.i1.i24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = add nsw i32 %i.as, -1
  store i32 %i.bb, ptr %i.ag, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

bb.q:                                             ; preds = %bb.o
  %i.bc = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i26 = phi i32 [ %i.as, %bb.p ], [ %i.bc, %bb.q ]
  %i.bd = icmp eq i32 %.0.i.i.i.i.i26, 1
  br i1 %i.bd, label %bb.r, label %_ZN12lldb_private7Process9GetTargetEv.exit27, !prof !26

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit27

_ZN12lldb_private7Process9GetTargetEv.exit27:     ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i25, %bb.r
  %i.be = tail call noundef ptr @_ZN12lldb_private6Target26GetExecutableModulePointerEv(ptr noundef nonnull align 8 dereferenceable(2200) %i.ap) #14 ; 3 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %.thread34, label %bb.s

bb.s:                                             ; preds = %_ZN12lldb_private7Process9GetTargetEv.exit27
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !23
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef ptr %i.bh(ptr noundef nonnull align 8 dereferenceable(952) %i.be) #14 ; 4 uses
  %.not18 = icmp eq ptr %i.bi, null
  br i1 %.not18, label %.thread34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 68 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !100 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 312
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(200) %i.bi) #14, !inline_history !41 ; 2 uses
  store i32 %i.bp, ptr %i.bj, align 4, !tbaa !100
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bq = phi i32 [ %i.bp, %bb.u ], [ %i.bk, %bb.t ]
  %i.br = icmp eq i32 %i.bq, 4
  br i1 %i.br, label %.thread36, label %.thread34

.thread36:                                        ; preds = %bb.a, %bb.j, %bb.v
  %i.bs = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 2 uses
  tail call void @_ZN19DynamicLoaderStaticC1EPN12lldb_private7ProcessE(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef %0) #14
  br label %.thread34

.thread34:                                        ; preds = %bb.s, %_ZN12lldb_private7Process9GetTargetEv.exit27, %bb.v, %.thread36
  %.015 = phi ptr [ %i.bs, %.thread36 ], [ null, %bb.v ], [ null, %_ZN12lldb_private7Process9GetTargetEv.exit27 ], [ null, %bb.s ]
  ret ptr %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_ZN12lldb_private6Target26GetExecutableModulePointerEv(ptr noundef nonnull align 8 dereferenceable(2200)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStaticC2EPN12lldb_private7ProcessE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN12lldb_private13DynamicLoaderC2EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV19DynamicLoaderStatic, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

declare void @_ZN12lldb_private13DynamicLoaderC2EPNS_7ProcessE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStatic9DidAttachEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN19DynamicLoaderStatic28LoadAllImagesAtFileAddressesEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN19DynamicLoaderStatic28LoadAllImagesAtFileAddressesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.lldb_private::ModuleList", align 8 ; 6 uses
  %2 = alloca %"class.std::shared_ptr.446", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.std::shared_ptr.454", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13, !noalias !112, !nonnull !14, !noundef !14 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 7 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 8, !noalias !112
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.06.i.i.i.i.i.i = phi i32 [ %i.g, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.h = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.i = cmpxchg weak ptr %i.f, i32 %.06.i.i.i.i.i.i, i32 %i.h acq_rel monotonic, align 8, !noalias !112 ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0
  br i1 %i.j, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.b, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load atomic i32, ptr %i.f monotonic, align 8, !noalias !112
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18, !noalias !112
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ] ; 3 uses
  %i.p = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.f, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !1
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.e:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i1.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.f, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.f ], [ %i.ab, %bb.g ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.h, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !26

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN12lldb_private10ModuleListC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %1) #14
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !111
  call void @_ZN12lldb_private7Process9SetCanJITEb(ptr noundef nonnull align 8 dereferenceable(3224) %i.ad, i1 noundef zeroext false) #14
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !111 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13, !noalias !113, !nonnull !14, !noundef !14 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 7 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !113
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN12lldb_private7Process9GetTargetEv.exit
  %.06.i.i.i.i.i.i23 = phi i32 [ %i.ai, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %i.am, %bb.i ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i24 = icmp ne i32 %.06.i.i.i.i.i.i23, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i24)
  %i.aj = add nsw i32 %.06.i.i.i.i.i.i23, 1
  %i.ak = cmpxchg weak ptr %i.ah, i32 %.06.i.i.i.i.i.i23, i32 %i.aj acq_rel monotonic, align 8, !noalias !113 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  %i.am = extractvalue { i32, i1 } %i.ak, 0
  br i1 %i.al, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25, label %bb.i, !llvm.loop !0

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25: ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 896
  %i.ao = load atomic i32, ptr %i.ah monotonic, align 8, !noalias !113
  %.not.i.i.i.i26 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i26, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27, label %bb.j

bb.j:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !18, !noalias !113
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27: ; preds = %bb.j, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25
  %i.ar = phi ptr [ %i.aq, %bb.j ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i25 ] ; 3 uses
  %i.as = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27
  store i32 0, ptr %i.ah, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !21
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14, !inline_history !1
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14, !inline_history !1
  br label %_ZN12lldb_private7Process9GetTargetEv.exit31

bb.l:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i27
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1.i28 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i1.i28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !25
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

bb.n:                                             ; preds = %bb.l
  %i.be = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i30 = phi i32 [ %i.au, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i30, 1
  br i1 %i.bf, label %bb.o, label %_ZN12lldb_private7Process9GetTargetEv.exit31, !prof !26

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #14
  br label %_ZN12lldb_private7Process9GetTargetEv.exit31

_ZN12lldb_private7Process9GetTargetEv.exit31:     ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i29, %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 920 ; 2 uses
  %i.bh = load ptr, ptr %i.an, align 8, !tbaa !115, !noalias !116 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 904
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !115, !noalias !116 ; 2 uses
  %i.bk = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bg) #14, !noalias !116 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bk, 0
end_hunk_0
