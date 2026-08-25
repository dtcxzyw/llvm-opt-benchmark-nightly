Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonMCInstrInfo?download=true
begin_hunk_0_@_ZN4llvm18HexagonMCInstrInfo10padEndloopERNS_6MCInstERNS_9MCContextE:bb.a
  br label %_ZN4llvm6MCInstD2Ev.exit

_ZN4llvm6MCInstD2Ev.exit:                         ; preds = %_ZN4llvm18HexagonMCInstrInfo16LoopNeedsPaddingERKNS_6MCInstE.exit.thread3, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo16LoopNeedsPaddingERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8, !tbaa !26
  %i.g = icmp ne i32 %i.f, 22
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, -1
  %i.k = icmp ult i32 %i.j, 2
  %i.l = select i1 %i.g, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = and i64 %i.d, 2
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %0, align 8, !tbaa !26
  %i.o = icmp ne i32 %i.n, 22
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, -1
  %i.s = icmp ult i32 %i.r, 3
  %i.t = select i1 %i.o, i1 true, i1 %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.u = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %i.t, %bb.d ]
  ret i1 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { i64, i8 } @_ZN4llvm18HexagonMCInstrInfo13predicateInfoERKNS_11MCInstrInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !26
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  %i.c = zext i32 %i.a to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41   ; 2 uses
  %i.h = and i64 %i.g, 1024
  %.not22 = icmp eq i64 %i.h, 0
  br i1 %.not22, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.j = load i8, ptr %i.i, align 2, !tbaa !290
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.m = load i16, ptr %i.l, align 4, !tbaa !291
  %i.n = zext i16 %i.m to i32                     ; 2 uses
  %.not24 = icmp eq i32 %i.k, %i.n
  br i1 %.not24, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = load i32, ptr %i.e, align 8, !tbaa !285
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.t = load i16, ptr %i.s, align 4, !tbaa !286
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [6 x i8], ptr %i.r, i64 %i.u
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.025 = phi i32 [ %i.k, %.lr.ph ], [ %i.ak, %bb.e ] ; 2 uses
  %i.w = zext i32 %.025 to i64                    ; 3 uses
  %i.x = getelementptr inbounds nuw [6 x i8], ptr %i.v, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !287
  %i.z = icmp eq i16 %i.y, 9
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !22
  %i.af = and i64 %i.g, 2048
  %.not.i = icmp eq i64 %i.af, 0
  %i.ag = zext i1 %.not.i to i8
  %i.ah = shl nuw i64 %i.w, 32
  %i.ai = zext i32 %i.ae to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.ak = add i32 %.025, 1                        ; 2 uses
  %.not = icmp eq i32 %i.ak, %i.n
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !292

.critedge:                                        ; preds = %bb.e, %bb.b, %bb.d, %bb.a
  %.sroa.421.0 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  %.sroa.7.0 = phi i8 [ 0, %bb.a ], [ %i.ag, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.421.0, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.7.0, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo12prefersSlot3ERKNS_11MCInstrInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !26
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  %i.c = zext i32 %i.a to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = and i64 %i.g, 36028797018963968
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo9hasHvxTmpERKNS_11MCInstrInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !26
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  %i.c = zext i32 %i.a to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !41
  %i.h = and i64 %i.g, 72057594037927936
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !26     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load i64, ptr %i.b, align 8, !tbaa !217
  %i.d = and i64 %i.c, 16
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  %i.f = icmp eq i32 %i.a, 1144
  %i.g = icmp eq i32 %i.a, 986
  %or.cond = and i1 %i.g, %i.e
  %or.cond8 = or i1 %i.f, %or.cond
  br i1 %or.cond8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.a, 1513
  %i.i = and i1 %i.h, %i.e
  %i.j = xor i1 %i.i, true
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN4llvm18HexagonMCInstrInfo13slotsConsumedERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not19 = icmp eq i32 %i.d, 1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.01518 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.h = load i64, ptr %i.g, align 8, !tbaa !217
  %i.i = and i64 %i.h, 16
  %i.j = icmp ne i64 %i.i, 0
  %i.k = load ptr, ptr %0, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread
  %.01522 = phi ptr [ %.01518, %.lr.ph ], [ %.015, %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread ] ; 2 uses
  %.021 = phi i32 [ 0, %.lr.ph ], [ %.2, %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread ] ; 2 uses
  %.pn20 = phi ptr [ %i.b, %.lr.ph ], [ %.01522, %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread ]
  %.sroa.3.0..015.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn20, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..015.sroa_idx, align 8, !tbaa !22
  %i.l = load i32, ptr %.sroa.3.0.copyload, align 8, !tbaa !26 ; 4 uses
  %i.m = icmp eq i32 %i.l, 1144
  %i.n = icmp eq i32 %i.l, 986
  %i.o = icmp eq i32 %i.l, 1513
  %or.cond.i23 = or i1 %i.n, %i.o
  %i.p = and i1 %or.cond.i23, %i.j
  %or.cond = or i1 %i.m, %i.p
  br i1 %or.cond, label %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext i32 %i.l to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [32 x i8], ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = and i64 %i.u, 127
  %i.w = icmp eq i64 %i.v, 32
  %.1.v = select i1 %i.w, i32 2, i32 1
  %.1 = add i32 %.1.v, %.021
  br label %_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread

_ZN4llvm18HexagonMCInstrInfo12requiresSlotERKNS_15MCSubtargetInfoERKNS_6MCInstE.exit.thread: ; preds = %bb.b, %bb.c
  %.2 = phi i32 [ %.1, %bb.c ], [ %.021, %bb.b ]  ; 2 uses
  %.015 = getelementptr inbounds nuw i8, ptr %.01522, i64 16 ; 2 uses
  %.not = icmp eq ptr %.015, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo13replaceDuplexERNS_9MCContextERNS_6MCInstENS_15DuplexCandidateE(ptr noundef nonnull align 8 dereferenceable(2208) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1, i64 %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i64 %2, 32      ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.3.0.extract.shift
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = and i64 %2, 4294967295                   ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = tail call noundef ptr @_ZN4llvm18HexagonMCInstrInfo12deriveDuplexERNS_9MCContextEjRKNS_6MCInstES5_(ptr noundef nonnull align 8 dereferenceable(2208) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.i)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.m, align 8, !tbaa !22
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !13
  %.idx10 = shl nuw nsw i64 %.sroa.3.0.extract.shift, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx10 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !18
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 %i.s, %.sroa.3.0.extract.shift ; 2 uses
  %reass.sub = shl nsw i64 %i.t, 4
  %gepdiff = add nsw i64 %reass.sub, -16          ; 2 uses
  %i.u = icmp sgt i64 %i.t, 2
  br i1 %i.u, label %bb.b, label %bb.c, !prof !45

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.o, ptr nonnull align 8 %i.p, i64 %gepdiff, i1 false)
  br label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp eq i64 %gepdiff, 16
  br i1 %i.v, label %bb.d, label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !293
  br label %_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit

_ZN4llvm6MCInst5eraseEPNS_9MCOperandE.exit:       ; preds = %bb.b, %bb.c, %bb.d
  %i.w = load i32, ptr %i.q, align 8, !tbaa !18
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.q, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo12setInnerLoopERNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = or i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo21setMemReorderDisabledERNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = or i64 %i.d, 4
  store i64 %i.e, ptr %i.c, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm18HexagonMCInstrInfo12setOuterLoopERNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22
  %i.e = or i64 %i.d, 2
  store i64 %i.e, ptr %i.c, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN4llvm18HexagonMCInstrInfo14SubregisterBitENS_10MCRegisterES1_S1_(i32 %0, i32 %1, i32 %2) local_unnamed_addr #9 {
bb.a:
  %i.a = add i32 %1, -302
  %i.b = icmp ult i32 %i.a, 32
  %i.c = add i32 %0, -198
  %spec.select.i = icmp ult i32 %i.c, 32
  %or.cond = select i1 %i.b, i1 %spec.select.i, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i32 %1, -318
  %spec.select.i4 = icmp ult i32 %i.d, 16
  %i.e = zext i1 %spec.select.i4 to i32
  %i.f = and i32 %0, 1
  %i.g = xor i32 %i.f, %i.e
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %0, %1
  %i.i = zext i1 %i.h to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.i, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm18HexagonMCInstrInfo16IsABranchingInstERKNS_11MCInstrInfoERKNS_15MCSubtargetInfoERKNS_6MCInstE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(58) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !26
  %i.b = load ptr, ptr %0, align 8, !tbaa !35
  %i.c = zext i32 %i.a to i64
  %i.d = sub nsw i64 0, %i.c
  %i.e = getelementptr inbounds [32 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !235
  %i.h = and i64 %i.g, 1184
  %i.i = icmp ne i64 %i.h, 0
  ret i1 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9MCOperandELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 %1, i64 %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #21
  %i.f = load ptr, ptr %0, align 8, !tbaa !13
  %i.g = load i32, ptr %i.a, align 8, !tbaa !18
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i8 %1, ptr %i.i, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !18
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !18
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2, i8 %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = zext nneg i8 %3 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  %i.c = add i64 %i.b, -1                         ; 3 uses
  %i.d = add i64 %i.c, %2                         ; 4 uses
  %i.e = icmp ugt i64 %i.d, 4096
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.d, i64 noundef 16) #21 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !45

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr nonnull %i.f, i64 %i.d)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.n, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.d, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.o = load i32, ptr %i.h, align 8, !tbaa !18
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !18
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EE9push_backES3_.exit: ; preds = %bb.c, %bb.d
  %i.q = ptrtoint ptr %i.f to i64
end_hunk_0
