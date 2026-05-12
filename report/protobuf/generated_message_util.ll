inline.NumInlined: 128
inline.NumDeleted: 106
begin_hunk_0_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !61 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !62   ; 7 uses
  %i.g = load i32, ptr %i.e, align 8, !tbaa !67   ; 6 uses
  %i.h = zext i32 %i.g to i64                     ; 12 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #20 ; 14 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.k = load i8, ptr %i.j, align 4, !tbaa !68    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  br label %_ZNK6google8protobuf8internal14MessageCreator3NewINS0_11MessageLiteEEEPT_PKS5_S8_PNS0_5ArenaE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp eq i8 %i.k, 0
  %i.q = icmp ult i32 %i.g, 33                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ult i32 %i.g, 65
  br i1 %i.t, label %bb.g, label %.preheader.i14.i

.preheader.i14.i:                                 ; preds = %bb.f
  %i.u = icmp ugt i32 %i.g, 80
  br i1 %i.u, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.x, i8 0, i64 32, i1 false)
  br label %bb.l

._crit_edge65.i15.i:                              ; preds = %.lr.ph64.i16.i, %.preheader.i14.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.z, i8 0, i64 64, i1 false)
  br label %bb.l
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ac) #17, !srcloc !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ab, i8 0, i64 64, i1 false)
  %i.ad = add nuw nsw i64 %i.aa, 64               ; 2 uses
  %i.ae = icmp samesign ult i64 %i.ad, %i.h
  br i1 %i.ae, label %.lr.ph64.i16.i, label %._crit_edge65.i15.i, !llvm.loop !71

bb.h:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(16) %i.ai, i64 16, i1 false)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp ult i32 %i.g, 65
  br i1 %i.aj, label %bb.k, label %.preheader61.i9.i

.preheader61.i9.i:                                ; preds = %bb.j
  %i.ak = icmp ugt i32 %i.g, 80
  br i1 %i.ak, label %.lr.ph.i12.i, label %._crit_edge.i10.i

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.al, ptr noundef nonnull align 1 dereferenceable(16) %i.am, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.aq, i64 32, i1 false)
  br label %bb.l

._crit_edge.i10.i:                                ; preds = %.lr.ph.i12.i, %.preheader61.i9.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -64
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.h
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.as, ptr noundef nonnull align 1 dereferenceable(64) %i.au, i64 64, i1 false)
  br label %bb.l
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal11GenericSwapEPNS0_11MessageLiteES3_:bb.a
  tail call void asm sideeffect "prefetchw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.az) #17, !srcloc !70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ay, ptr noundef nonnull align 1 dereferenceable(64) %i.aw, i64 64, i1 false)
  %i.ba = add nuw nsw i64 %i.av, 64               ; 2 uses
  %i.bb = icmp samesign ult i64 %i.ba, %i.h
  br i1 %i.bb, label %.lr.ph.i12.i, label %._crit_edge.i10.i, !llvm.loop !72

bb.l:                                             ; preds = %._crit_edge.i10.i, %bb.k, %bb.i, %._crit_edge65.i15.i, %bb.g, %bb.e
end_hunk_3
