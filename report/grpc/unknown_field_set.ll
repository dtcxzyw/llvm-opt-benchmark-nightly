Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/unknown_field_set?download=true
inline.NumInlined: 526
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4SwapEPS3_:bb.a
  br i1 %i.d, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.i = add nsw i64 %i.g, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.g to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.n = and i32 %i.m, -2                         ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, label %bb.f

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread: ; preds = %bb.b
  %i.p = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.q = and i32 %i.p, -2                         ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit
  %i.s = phi i32 [ %i.q, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %i.n, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ]
  %i.t = phi i32 [ %i.p, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %i.m, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ]
  %.0.i.i.i.i25 = phi ptr [ null, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit ] ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds i8, ptr %1, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !21   ; 3 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.y = add nsw i64 %i.w, -1
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13

bb.h:                                             ; preds = %bb.f
  %i.ab = inttoptr i64 %i.w to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i12 = phi ptr [ %i.ab, %bb.h ], [ %i.aa, %bb.g ] ; 4 uses
  %i.ac = icmp eq ptr %.0.i.i.i.i25, %.0.i.i.i.i12
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %bb.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit
  %i.ad = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.ad, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, label %.thread

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13
  %i.ae = phi i32 [ %i.m, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread ], [ %i.t, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13 ], [ %i.p, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.thread ]
  %i.af = xor i32 %i.ae, %i.b
  %i.ag = and i32 %i.af, 1                        ; 2 uses
  %i.ah = xor i32 %i.ag, %i.b
  store i32 %i.ah, ptr %0, align 8, !tbaa !11
  %i.ai = load i32, ptr %1, align 4, !tbaa !11
  %i.aj = xor i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %1, align 4, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.am = load <8 x i8>, ptr %i.al, align 4, !tbaa !14, !alias.scope !87
  %i.an = load <8 x i8>, ptr %i.ak, align 4, !tbaa !14, !alias.scope !86
  store <8 x i8> %i.am, ptr %i.ak, align 4, !tbaa !14, !alias.scope !86
  store <8 x i8> %i.an, ptr %i.al, align 4, !tbaa !14, !alias.scope !87
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load <4 x i8>, ptr %i.ao, align 4, !tbaa !14, !alias.scope !87
  %i.aq = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !14, !alias.scope !86
  store <4 x i8> %i.ap, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !14, !alias.scope !86
  store <4 x i8> %i.aq, ptr %i.ao, align 4, !tbaa !14, !alias.scope !87
  br label %bb.o

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13
  %.not = icmp eq ptr %.0.i.i.i.i12, null
  br i1 %.not, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = ptrtoint ptr %.0.i.i.i.i12 to i64
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !21
  store i32 16, ptr %2, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.at, align 4, !tbaa !13
  call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i25, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.0.i.i.i.i12, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.o

.thread:                                          ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread, %bb.i
  %.0.i.i.i.i24 = phi ptr [ %.0.i.i.i.i25, %bb.i ], [ %.0.i.i.i.i, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store i32 0, ptr %3, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.au, align 4, !tbaa !13
  invoke void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %.thread
  %i.av = load i32, ptr %3, align 8, !tbaa !11
  %i.aw = and i32 %i.av, 1
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !14
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl nsw i64 %i.bb, 4
  %i.bd = add nsw i64 %i.bc, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bd) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.o

bb.m:                                             ; preds = %.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load i32, ptr %3, align 8, !tbaa !11
  %i.bg = and i32 %i.bf, 1
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !14
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 4
  %i.bn = add nsw i64 %i.bm, 16
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bn) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit14: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.be

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit13.thread.thread, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEED2Ev.exit, %bb.j, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet23MergeToInternalMetadataERKS1_PNS0_8internal16InternalMetadataE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !36

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i64 %i.a, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  tail call void @_ZN6google8protobuf15UnknownFieldSet9MergeFromERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %.0.i, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !11
  %i.e = and i32 %i.d, 1
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i: ; preds = %bb.b
  %i.g = load i32, ptr %.pre, align 8, !tbaa !14
  %.fr.i = freeze i32 %i.g                        ; 2 uses
  %i.h = icmp sgt i32 %.fr.i, 0
  %1 = zext nneg i32 %.fr.i to i64
  %i.i = shl nuw nsw i64 %1, 4
  %i.j = add nuw nsw i64 %i.i, 16
  %spec.select.i = select i1 %i.h, i64 %i.j, i64 0
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i
  %i.k = phi i64 [ %spec.select.i, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit.i ], [ 0, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.0.i.i.i.i = select i1 %i.f, ptr %i.l, ptr %i.m ; 2 uses
  %i.n = sext i32 %i.b to i64
  %.idx = shl nsw i64 %i.n, 4
  %i.o = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.019 = phi i64 [ %.1, %bb.e ], [ %i.k, %.lr.ph.preheader ] ; 3 uses
  %.sroa.014.018 = phi ptr [ %i.ad, %bb.e ], [ %.0.i.i.i.i, %.lr.ph.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !18
  switch i32 %i.q, label %bb.e [
    i32 3, label %bb.c
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14
  %i.t = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
  %i.u = add i64 %.019, 32
  %i.v = add i64 %i.u, %i.t
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = tail call noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(24) %i.x), !inline_history !88
  %i.z = shl i64 %i.y, 32
  %i.aa = ashr exact i64 %i.z, 32
  %i.ab = add i64 %.019, 24
  %i.ac = add i64 %i.ab, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %.1 = phi i64 [ %.019, %.lr.ph ], [ %i.v, %bb.c ], [ %i.ac, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.018, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ad, %i.o
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.012 = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i64 %.012
}

declare noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2147483624, 2147483672) i64 @_ZNK6google8protobuf15UnknownFieldSet13SpaceUsedLongEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6google8protobuf15UnknownFieldSet26SpaceUsedExcludingSelfLongEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !89
  %i.b = shl i64 %i.a, 32
  %i.c = ashr exact i64 %i.b, 32
  %i.d = add nsw i64 %i.c, 24
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet9AddVarintEim(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  br i1 %i.c, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = icmp eq i32 %i.e, %i.i
  br i1 %i.j, label %.thread.i.i.i, label %bb.c, !prof !15

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %i.k = add nsw i32 %i.e, 1                      ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowINS3_9SelfArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %i.c, i32 noundef %i.e, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre.i.i.i = load i32, ptr %i.d, align 4, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %spec.select.i.i.i = select i1 %i.c, ptr %i.o, ptr %i.q
  %.pre9.i.i.i = add nsw i32 %i.e, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit: ; preds = %.thread.i.i.i, %bb.c
  %.pre-phi.i.i.i = phi i32 [ %.pre9.i.i.i, %bb.c ], [ %i.k, %.thread.i.i.i ]
  %i.r = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i.i, %.thread.i.i.i ]
  %i.s = phi ptr [ %spec.select.i.i.i, %bb.c ], [ %i.n, %.thread.i.i.i ]
  store i32 %.pre-phi.i.i.i, ptr %i.d, align 4, !tbaa !13
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 3 uses
  store i32 %1, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 0, ptr %i.v, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %2, ptr %i.w, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet10AddFixed32Eij(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  br i1 %i.c, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = icmp eq i32 %i.e, %i.i
  br i1 %i.j, label %.thread.i.i.i, label %bb.c, !prof !15

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %i.k = add nsw i32 %i.e, 1                      ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowINS3_9SelfArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %i.c, i32 noundef %i.e, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre.i.i.i = load i32, ptr %i.d, align 4, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %spec.select.i.i.i = select i1 %i.c, ptr %i.o, ptr %i.q
  %.pre9.i.i.i = add nsw i32 %i.e, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit: ; preds = %.thread.i.i.i, %bb.c
  %.pre-phi.i.i.i = phi i32 [ %.pre9.i.i.i, %bb.c ], [ %i.k, %.thread.i.i.i ]
  %i.r = phi i32 [ %i.e, %bb.c ], [ %.pre.i.i.i, %.thread.i.i.i ]
  %i.s = phi ptr [ %spec.select.i.i.i, %bb.c ], [ %i.n, %.thread.i.i.i ]
  store i32 %.pre-phi.i.i.i, ptr %i.d, align 4, !tbaa !13
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [16 x i8], ptr %i.s, i64 %i.t ; 3 uses
  store i32 %1, ptr %i.u, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.v, align 4, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %2, ptr %i.w, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf15UnknownFieldSet10AddFixed64Eim(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !11
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 5 uses
  br i1 %i.c, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = load i32, ptr %i.g, align 8, !tbaa !14
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = icmp eq i32 %i.e, %i.i
  br i1 %i.j, label %.thread.i.i.i, label %bb.c, !prof !15

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %i.k = add nsw i32 %i.e, 1                      ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowINS3_9SelfArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %i.c, i32 noundef %i.e, i32 noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.pre.i.i.i = load i32, ptr %i.d, align 4, !tbaa !13
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE3AddEv.exit

end_hunk_0
