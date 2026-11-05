Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LineEntry?download=true
inline.NumInlined: 154
inline.NumDeleted: 93
begin_hunk_0_@_ZN12lldb_private9LineEntry5ClearEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bi = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #11, !noalias !87 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i32 1, ptr %i.bj, align 8, !tbaa !28, !noalias !86
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 1, ptr %i.bk, align 4, !tbaa !29, !noalias !86
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private11SupportFileESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bi, align 8, !tbaa !31, !noalias !86
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12lldb_private11SupportFileE, i64 16), ptr %i.bl, align 8, !tbaa !31, !noalias !86
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bm) #10, !noalias !86
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i6 = load i64, ptr @_ZN12lldb_private8Checksum10g_sentinelE, align 1, !noalias !86
  %.sroa.2.0.copyload.i.i.i.i.i.i.i7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12lldb_private8Checksum10g_sentinelE, i64 8), align 1, !noalias !86
  call void @_ZN12lldb_private8ChecksumC1EN4llvm3MD59MD5ResultE(ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i6, i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i7) #10, !noalias !86
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !32, !alias.scope !86
  store ptr %i.bl, ptr %4, align 8, !tbaa !33, !alias.scope !86
  call void @_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2EOSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.br = load <2 x ptr>, ptr %3, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !32 ; 8 uses
  store <2 x ptr> %i.br, ptr %i.bo, align 8, !tbaa !39
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i8, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12, label %bb.t

bb.t:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = load atomic i64, ptr %i.bt acquire, align 8 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 4294967297
  %i.bw = trunc i64 %i.bu to i32                  ; 2 uses
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bt, align 8, !tbaa !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !29
  %i.by = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #10, !inline_history !1
  %i.cb = load ptr, ptr %i.bs, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #10, !inline_history !1
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12

bb.v:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i9 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i.i.i9, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i11 = phi i32 [ %i.bw, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i.i.i11, 1
  br i1 %i.ch, label %bb.y, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12, !prof !36

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs) #10
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12

_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12: ; preds = %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit5, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i10, %bb.y
  %i.ci = load ptr, ptr %i.bp, align 8, !tbaa !32 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, label %bb.z

bb.z:                                             ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cj, align 8, !tbaa !28
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !29
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #10, !inline_history !0
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #10, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

bb.ab:                                            ; preds = %bb.z
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i14 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i14, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

bb.ad:                                            ; preds = %bb.ab
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i16 = phi i32 [ %i.cm, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cx = icmp eq i32 %.0.i.i.i.i16, 1
  br i1 %i.cx, label %bb.ae, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, !prof !36

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17

_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17: ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit12, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i15, %bb.ae
  %i.cy = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cz, align 8, !tbaa !28
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !29
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10, !inline_history !0
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

bb.ah:                                            ; preds = %bb.af
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i19 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i19, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.aj:                                            ; preds = %bb.ah
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i21 = phi i32 [ %i.dc, %bb.ai ], [ %i.dm, %bb.aj ]
  %i.dn = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.dn, label %bb.ak, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22, !prof !36

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #10
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22

_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit22: ; preds = %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit17, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 -1, ptr %i.do, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i16 0, ptr %i.dp, align 4, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 2
  %i.ds = and i8 %i.dr, -32
  store i8 %i.ds, ptr %i.dq, align 2
  ret void
}

declare void @_ZN12lldb_private12AddressRange5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private9LineEntry7IsValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(79) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp ne i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !42
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %1, label %5

1:                                                ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %3 = load i32, ptr %2, align 8, !tbaa !37
  %4 = icmp ne i32 %3, -1
  br label %5

5:                                                ; preds = %bb.a, %1
  %6 = phi i1 [ false, %bb.a ], [ %4, %1 ]
  ret i1 %6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private9LineEntry15DumpStopContextEPNS_6StreamEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(79) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = tail call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #10
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK12lldb_private8FileSpec4DumpERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.e) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = tail call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #10
  %i.i = tail call noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.g, i64 %i.h) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 noundef signext 58) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !37   ; 2 uses
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str, i32 noundef %i.n) #10 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.q = load i16, ptr %i.p, align 4, !tbaa !38
  %.not12 = icmp eq i16 %i.q, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88) %1, i8 noundef signext 58) #10 ; 0 uses
  %i.s = load i16, ptr %i.p, align 4, !tbaa !38
  %i.t = zext i16 %i.s to i32
  %i.u = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str, i32 noundef %i.t) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.v = tail call noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #10
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %i.m, align 8, !tbaa !37
  %i.x = icmp ne i32 %i.w, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = phi i1 [ true, %bb.j ], [ %i.x, %bb.k ]
  ret i1 %i.y
}

declare noundef zeroext i1 @_ZNK12lldb_private8FileSpeccvbEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZNK12lldb_private8FileSpec4DumpERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream10PutCStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream7PutCharEc(ptr noundef nonnull align 8 dereferenceable(88), i8 noundef signext) local_unnamed_addr #1

declare noundef i64 @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK12lldb_private9LineEntry4DumpEPNS_6StreamEPNS_6TargetEbNS_7Address9DumpStyleES6_b(ptr noundef nonnull align 8 dereferenceable(79) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.std::optional", align 8     ; 2 uses
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i1 @_ZNK12lldb_private12AddressRange4DumpEPNS_6StreamEPNS_6TargetENS_7Address9DumpStyleES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef %5) #10
  br i1 %i.a, label %bb.d, label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, null
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 640
  %spec.select = select i1 %i.b, ptr null, ptr %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i8 0, ptr %i.d, align 8, !tbaa !46
  %i.e = tail call noundef zeroext i1 @_ZNK12lldb_private7Address4DumpEPNS_6StreamEPNS_21ExecutionContextScopeENS0_9DumpStyleES5_jbSt8optionalINS1_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %spec.select, i32 noundef %4, i32 noundef %5, i32 noundef -1, i1 noundef zeroext false, ptr noundef nonnull byval(%"class.std::optional") align 8 %7) #10
  br i1 %i.e, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c, %bb.b
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.1) #10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_privatelsERNS_6StreamERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.2, i32 noundef %i.l) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = load i16, ptr %i.n, align 4, !tbaa !38   ; 2 uses
  %.not21 = icmp eq i16 %i.o, 0
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = zext i16 %i.o to i32
  %i.q = tail call noundef i64 (ptr, ptr, ...) @_ZN12lldb_private6Stream6PrintfEPKcz(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.3, i32 noundef %i.p) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 78 ; 5 uses
  %i.s = load i8, ptr %i.r, align 2               ; 2 uses
  %i.t = and i8 %i.s, 1
  %.not22 = icmp eq i8 %i.t, 0
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.4) #10 ; 0 uses
  %.pre = load i8, ptr %i.r, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.v = phi i8 [ %.pre, %bb.k ], [ %i.s, %bb.j ] ; 2 uses
  %i.w = and i8 %i.v, 2
  %.not23 = icmp eq i8 %i.w, 0
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.5) #10 ; 0 uses
  %.pre27 = load i8, ptr %i.r, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = phi i8 [ %.pre27, %bb.m ], [ %i.v, %bb.l ] ; 2 uses
  %i.z = and i8 %i.y, 4
  %.not24 = icmp eq i8 %i.z, 0
  br i1 %.not24, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.6) #10 ; 0 uses
  %.pre28 = load i8, ptr %i.r, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = phi i8 [ %.pre28, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  %i.ac = and i8 %i.ab, 8
  %.not25 = icmp eq i8 %i.ac, 0
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.7) #10 ; 0 uses
  %.pre29 = load i8, ptr %i.r, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ae = phi i8 [ %.pre29, %bb.q ], [ %i.ab, %bb.p ]
  %i.af = and i8 %i.ae, 16
  %.not26 = icmp eq i8 %i.af, 0
  br i1 %.not26, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull @.str.8) #10 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.s ], [ true, %bb.r ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK12lldb_private12AddressRange4DumpEPNS_6StreamEPNS_6TargetENS_7Address9DumpStyleES6_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK12lldb_private7Address4DumpEPNS_6StreamEPNS_21ExecutionContextScopeENS0_9DumpStyleES5_jbSt8optionalINS1_17HighlightSettingsEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef byval(%"class.std::optional") align 8) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_privatelsERNS_6StreamERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_ZN12lldb_private9LineEntry7CompareERKS0_S2_:bb.a
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.y = load i16, ptr %i.x, align 4, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38  ; 2 uses
  %i.ab = icmp ult i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ugt i16 %i.y, %i.aa
  br i1 %i.ac, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = tail call noundef i32 @_ZN12lldb_private8FileSpec7CompareERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i1 noundef zeroext true) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.a
  %.1 = phi i32 [ %i.a, %bb.a ], [ %i.aj, %bb.j ], [ -1, %bb.b ], [ 1, %bb.c ], [ -1, %bb.d ], [ 1, %bb.e ], [ -1, %bb.f ], [ 1, %bb.g ], [ -1, %bb.h ], [ 1, %bb.i ]
  ret i32 %.1
}

declare noundef i32 @_ZN12lldb_private7Address18CompareFileAddressERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZN12lldb_private8FileSpec7CompareERKS0_S2_b(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK12lldb_private9LineEntry33GetSameLineContiguousAddressRangeEb(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::AddressRange") align 8 initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(79) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::Declaration", align 8 ; 6 uses
  %4 = alloca %"class.lldb_private::SymbolContext", align 8 ; 12 uses
  %5 = alloca %"class.lldb_private::Address", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !39
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !35
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !35
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private12AddressRangeC2ERKS0_.exit

_ZN12lldb_private12AddressRangeC2ERKS0_.exit:     ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load <2 x i64>, ptr %i.k, align 8, !tbaa !92
  store <2 x i64> %i.m, ptr %i.j, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !tbaa.struct !53
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.r, ptr %i.s, align 8, !tbaa !95
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 0, ptr %i.t, align 4, !tbaa !96
  %spec.select = select i1 %2, i32 48, i32 32
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN12lldb_private7AddressD2Ev.exit, %_ZN12lldb_private12AddressRangeC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @_ZN12lldb_private13SymbolContextC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !91  ; 2 uses
  %i.ae = load <2 x ptr>, ptr %0, align 8, !tbaa !39
  store <2 x ptr> %i.ae, ptr %5, align 16, !tbaa !39
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN12lldb_private7AddressC2ERKS0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i11 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !35
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !35
  br label %_ZN12lldb_private7AddressC2ERKS0_.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN12lldb_private7AddressC2ERKS0_.exit

_ZN12lldb_private7AddressC2ERKS0_.exit:           ; preds = %bb.e, %bb.g, %bb.h
  %i.ak = load i64, ptr %i.j, align 8, !tbaa !41  ; 3 uses
  store i64 %i.ak, ptr %i.v, align 16, !tbaa !41
  %.not.i.not = icmp eq i64 %i.ak, -1
  br i1 %.not.i.not, label %_ZN12lldb_private7Address5SlideEl.exit, label %bb.i

bb.i:                                             ; preds = %_ZN12lldb_private7AddressC2ERKS0_.exit
  %i.al = load i64, ptr %i.l, align 8, !tbaa !47
  %i.am = add i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.v, align 16, !tbaa !41
  br label %_ZN12lldb_private7Address5SlideEl.exit

_ZN12lldb_private7Address5SlideEl.exit:           ; preds = %_ZN12lldb_private7AddressC2ERKS0_.exit, %bb.i
  %i.an = call noundef i32 @_ZNK12lldb_private7Address22CalculateSymbolContextEPNS_13SymbolContextEN4lldb17SymbolContextItemE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %4, i32 noundef %spec.select) #10 ; 0 uses
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !41
  %i.ap = icmp ne i64 %i.ao, -1
  %i.aq = load i8, ptr %i.y, align 8, !range !42
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond.i = select i1 %i.ap, i1 true, i1 %i.ar
  %i.as = load i32, ptr %i.z, align 8
  %i.at = icmp eq i32 %i.as, -1
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.au = select i1 %not.or.cond.i, i1 true, i1 %i.at
  %i.av = load i64, ptr %i.aa, align 8
  %i.aw = icmp eq i64 %i.av, 0
  %or.cond18 = select i1 %i.au, i1 true, i1 %i.aw
  br i1 %or.cond18, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_private7Address5SlideEl.exit
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !40  ; 2 uses
  %i.ay = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = call noundef zeroext i1 @_ZNK12lldb_private8FileSpecneERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba) #10
  br i1 %i.bb, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.bd = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.bc) #10
  br i1 %i.bd, label %bb.l, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.bf = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumcvbEv(ptr noundef nonnull align 1 dereferenceable(16) %i.be) #10
  br i1 %i.bf, label %bb.m, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit

bb.m:                                             ; preds = %bb.l
  %i.bg = call noundef zeroext i1 @_ZNK12lldb_private8ChecksumneERKS0_(ptr noundef nonnull align 1 dereferenceable(16) %i.bc, ptr noundef nonnull align 1 dereferenceable(16) %i.be) #10
  br i1 %i.bg, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit

_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit: ; preds = %bb.m, %bb.l, %bb.k
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !107 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.sink.split, label %bb.n, !llvm.loop !89

bb.n:                                             ; preds = %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit
  %i.bj = load i32, ptr %i.q, align 8, !tbaa !37
  %i.bk = icmp eq i32 %i.bj, %i.bh
  br i1 %i.bk, label %.sink.split, label %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread, !llvm.loop !89

_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread: ; preds = %bb.m, %bb.j, %bb.n
  %i.bl = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bm = icmp ne ptr %i.bl, null
  %or.cond = select i1 %2, i1 %i.bm, i1 false
  br i1 %or.cond, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread
  %i.bn = call noundef ptr @_ZN12lldb_private5Block25GetContainingInlinedBlockEv(ptr noundef nonnull align 8 dereferenceable(105) %i.bl) #10
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !109
  %i.bp = call noundef ptr @_ZN12lldb_private5Block37GetContainingInlinedBlockWithCallSiteERKNS_11DeclarationE(ptr noundef nonnull align 8 dereferenceable(105) %i.bo, ptr noundef nonnull align 8 dereferenceable(30) %3) #10
  %.not9 = icmp eq ptr %i.bp, null
  br i1 %.not9, label %bb.q, label %.sink.split, !llvm.loop !89

.sink.split:                                      ; preds = %bb.p, %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit, %bb.n
  %i.bq = call noundef zeroext i1 @_ZN12lldb_private12AddressRange6ExtendERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w) #10
  %not. = xor i1 %i.bq, true
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %_ZN12lldb_private7Address5SlideEl.exit, %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread, %bb.o, %bb.p
  %.1 = phi i1 [ true, %bb.p ], [ true, %_ZN12lldb_private7Address5SlideEl.exit ], [ true, %bb.o ], [ true, %_ZNK12lldb_private11SupportFile5EqualERKS0_NS0_19SupportFileEqualityE.exit.thread ], [ %not., %.sink.split ]
  %i.br = load ptr, ptr %i.u, align 8, !tbaa !91  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private7AddressD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 12 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i12 = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i12, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !35 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bu, %bb.s ], [ %i.bw, %bb.t ]
  %i.bx = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bx, label %bb.u, label %_ZN12lldb_private7AddressD2Ev.exit

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.br) #10, !inline_history !90
  br label %_ZN12lldb_private7AddressD2Ev.exit

_ZN12lldb_private7AddressD2Ev.exit:               ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br i1 %.1, label %bb.v, label %bb.e

bb.v:                                             ; preds = %_ZN12lldb_private7AddressD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret void
}

declare void @_ZN12lldb_private13SymbolContextC1Ev(ptr noundef nonnull align 8 dereferenceable(152)) unnamed_addr #1

declare noundef i32 @_ZNK12lldb_private7Address22CalculateSymbolContextEPNS_13SymbolContextEN4lldb17SymbolContextItemE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN12lldb_private12AddressRange6ExtendERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef ptr @_ZN12lldb_private5Block25GetContainingInlinedBlockEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #1

declare noundef ptr @_ZN12lldb_private5Block37GetContainingInlinedBlockWithCallSiteERKNS_11DeclarationE(ptr noundef nonnull align 8 dereferenceable(105), ptr noundef nonnull align 8 dereferenceable(30)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN12lldb_private13SymbolContextD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private9LineEntry17ApplyFileMappingsESt10shared_ptrINS_6TargetEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(79) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::optional.176", align 8 ; 5 uses
  %3 = alloca %"class.lldb_private::NonNullSharedPtr", align 16 ; 6 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !114    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.b = tail call noundef nonnull align 8 dereferenceable(124) ptr @_ZNK12lldb_private16TargetProperties16GetSourcePathMapEv(ptr noundef nonnull align 8 dereferenceable(552) %i.a) #10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_ZNK12lldb_private15PathMappingList8FindFileERKNS_8FileSpecE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.176") align 8 %2, ptr noundef nonnull align 8 dereferenceable(124) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !116, !range !42, !noundef !117
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #11, !noalias !119 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !28, !noalias !118
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.n, align 4, !tbaa !29, !noalias !118
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private11SupportFileESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !31, !noalias !118
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12lldb_private11SupportFileE, i64 16), ptr %i.o, align 8, !tbaa !31, !noalias !118
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !53, !noalias !118
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  call void @_ZN12lldb_private8ChecksumC1ERKS0_(ptr noundef nonnull align 1 dereferenceable(16) %i.q, ptr noundef nonnull align 1 dereferenceable(16) %i.j) #10, !noalias !118
  store ptr %i.l, ptr %i.k, align 8, !tbaa !32, !alias.scope !118
  store ptr %i.o, ptr %4, align 8, !tbaa !33, !alias.scope !118
  call void @_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEC2EOSt10shared_ptrIS1_E(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load <2 x ptr>, ptr %3, align 16, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !32   ; 8 uses
  store <2 x ptr> %i.u, ptr %i.r, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.w, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !29
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10, !inline_history !1
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10, !inline_history !1
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ak, label %bb.i, label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit, !prof !36

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #10
  br label %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit

_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !32  ; 8 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN12lldb_private16NonNullSharedPtrINS_11SupportFileEEaSEOS2_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 4294967297
  %i.ap = trunc i64 %i.an to i32                  ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.am, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 0, ptr %i.aq, align 4, !tbaa !29
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #10, !inline_history !0
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #10, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = add nsw i32 %i.ap, -1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = atomicrmw volatile add ptr %i.am, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ap, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ba, label %bb.o, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !36

end_hunk_1
