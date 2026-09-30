Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/unknown_field_set?download=true
inline.NumInlined: 521
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE20SwapFallbackWithTempEPNS0_5ArenaERS3_S5_S6_:bb.a
_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = load i32, ptr %i.w, align 8, !tbaa !21
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i, !prof !14

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !10
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !20
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.0.i.i.i.i = select i1 %i.ab, ptr %i.ac, ptr %i.ae
  store i32 %i.h, ptr %i.f, align 4, !tbaa !20
  %i.af = sext i32 %i.aa to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.ah, ptr %i.aj
  %i.ak = icmp sgt i32 %i.e, 1
  br i1 %i.ak, label %bb.h, label %bb.i, !prof !38

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.al = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.al, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i
  %i.am = icmp eq i32 %i.e, 1
  br i1 %i.am, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i: ; preds = %bb.i, %bb.h
  %.idx.i.i.sink.i.i = phi i64 [ %.idx.i.i.i.i, %bb.h ], [ 16, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %.0.i.i.i.i.i, i64 %.idx.i.i.sink.i.i, i1 false), !alias.scope !111
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit: ; preds = %bb.a, %bb.i, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i
  %i.an = icmp eq ptr %2, %0
  br i1 %i.an, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.ao = load i32, ptr %2, align 8, !tbaa !10
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20 ; 7 uses
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i32, ptr %0, align 8, !tbaa !10    ; 2 uses
  %i.au = and i32 %i.at, -2                       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds i8, ptr %0, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !13 ; 3 uses
  %i.az = trunc i64 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.n, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ba = add nsw i64 %i.ay, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bd = inttoptr i64 %i.ay to ptr
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %bb.k ], [ %i.bc, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = and i32 %i.at, 1                        ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0                    ; 2 uses
  br i1 %i.bf, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !21
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !21
  br label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i: ; preds = %bb.o, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i
  %i.bj = phi i32 [ %i.bi, %bb.o ], [ 0, %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8GetArenaEv.exit.i.i.i ]
  %i.bk = icmp sgt i32 %i.as, %i.bj
  br i1 %i.bk, label %bb.p, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i, !prof !14

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.0.i.i.i.i.i.i.i, i1 noundef zeroext %i.bf, i32 noundef 0, i32 noundef %i.as)
  %.pre.i.i = load i32, ptr %0, align 8, !tbaa !10
  %.pre14.i.i = load i32, ptr %i.d, align 4, !tbaa !20
  %.pre15.i.i = and i32 %.pre.i.i, 1
  %i.bl = sext i32 %.pre14.i.i to i64
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i: ; preds = %bb.p, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i
  %.pre-phi.i.i = phi i32 [ %i.be, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %.pre15.i.i, %bb.p ]
  %i.bm = phi i64 [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.i.i.i.i ], [ %i.bl, %bb.p ]
  %i.bn = icmp eq i32 %.pre-phi.i.i, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %.0.i.i.i.i.i5 = select i1 %i.bn, ptr %i.bo, ptr %i.bq
  store i32 %i.as, ptr %i.d, align 4, !tbaa !20
  %i.br = getelementptr inbounds [16 x i8], ptr %.0.i.i.i.i.i5, i64 %i.bm
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %.0.i.i.i.i.i.i6 = select i1 %i.aq, ptr %i.bs, ptr %i.bu
  %i.bv = icmp sgt i32 %i.as, 1
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !38

bb.q:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bw = zext nneg i32 %i.as to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.bw, 4
  br label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i

bb.r:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE7ReserveEi.exit.i.i
  %i.bx = icmp eq i32 %i.as, 1
  br i1 %i.bx, label %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i: ; preds = %bb.r, %bb.q
  %.idx.i.i.sink.i.i.i = phi i64 [ %.idx.i.i.i.i.i, %bb.q ], [ 16, %bb.r ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %.0.i.i.i.i.i.i6, i64 %.idx.i.i.sink.i.i.i, i1 false), !alias.scope !112
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CopyFromERKS3_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE9MergeFromERKS3_.exit, %bb.j, %bb.r, %_ZSt20uninitialized_copy_nIPKN6google8protobuf12UnknownFieldEiPS2_ET1_T_T0_S6_.exit.sink.split.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE15UnsafeArenaSwapEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !10
  %i.d = xor i32 %i.c, %i.b
  %i.e = and i32 %i.d, 1                          ; 2 uses
  %i.f = xor i32 %i.e, %i.b
  store i32 %i.f, ptr %0, align 8, !tbaa !10
  %i.g = load i32, ptr %1, align 4, !tbaa !10
  %i.h = xor i32 %i.g, %i.e
  store i32 %i.h, ptr %1, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.k = load <8 x i8>, ptr %i.j, align 4, !tbaa !21, !alias.scope !117, !noalias !116
  %i.l = load <8 x i8>, ptr %i.i, align 4, !tbaa !21, !alias.scope !116, !noalias !117
  store <8 x i8> %i.k, ptr %i.i, align 4, !tbaa !21, !alias.scope !116, !noalias !117
  store <8 x i8> %i.l, ptr %i.j, align 4, !tbaa !21, !alias.scope !117, !noalias !116
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.079.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.n = load <4 x i8>, ptr %i.m, align 4, !tbaa !21, !alias.scope !117, !noalias !116
  %i.o = load <4 x i8>, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !21, !alias.scope !116, !noalias !117
  store <4 x i8> %i.n, ptr %.079.i.ptr.8.i.i.i, align 4, !tbaa !21, !alias.scope !116, !noalias !117
  store <4 x i8> %i.o, ptr %i.m, align 4, !tbaa !21, !alias.scope !117, !noalias !116
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load i32, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741815
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit, label %.thread, !prof !118

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 0, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 4
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 16                 ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #18
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeINS0_12UnknownFieldELi16EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !21
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.0.i.i.i = select i1 %2, ptr %i.r, ptr %i.t
  %i.u = zext nneg i32 %3 to i64
  %i.v = shl nuw nsw i64 %i.u, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.v, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 8 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 4
  %i.ab = add nsw i64 %i.aa, 16                   ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #20
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121
  %i.af = load i64, ptr %1, align 8, !tbaa !148
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !38

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !149 ; 5 uses
  %i.aj = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.al = sub nuw nsw i64 59, %i.ak               ; 2 uses
  %i.am = load i8, ptr %i.ai, align 8, !tbaa !150 ; 3 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.al, %i.an
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !38

bb.k:                                             ; preds = %bb.j
  %i.ao = lshr exact i64 %i.ab, 3                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !151 ; 2 uses
  %i.ar = icmp ugt i8 %i.am, 1
  br i1 %i.ar, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !38

bb.l:                                             ; preds = %bb.k
  %i.as = icmp eq i8 %i.am, 1
  br i1 %i.as, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !153
  store ptr %i.at, ptr %i.x, align 8, !tbaa !153
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.an, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.aq, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ai, align 8, !tbaa !150
  %i.au = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ao, %i.au
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.av = phi i64 [ %i.au, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.av, 3      ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ab, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !153
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.x, ptr %i.ap, align 8, !tbaa !151
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 64)
  %i.ax = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.ax, ptr %i.ai, align 8, !tbaa !150
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.al ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !153
  store ptr %i.bb, ptr %i.x, align 8, !tbaa !155
  store ptr %i.x, ptr %i.ba, align 8, !tbaa !153
  br label %_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldINS0_12UnknownFieldEE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bc = load i32, ptr %0, align 8, !tbaa !10
  %i.bd = or i32 %i.bc, 1
  store i32 %i.bd, ptr %0, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.be, align 8, !tbaa !21
  ret void
}

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #12

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf5Arena8AllocateEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

declare noundef i64 @_ZNK6google8protobuf2io16CordOutputStream9ByteCountEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare noundef zeroext i1 @_ZN6google8protobuf2io16CordOutputStream4NextEPPvPi(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #3

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #3

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal24UnknownFieldParserHelper10ParseGroupEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.google::protobuf::internal::UnknownFieldParserHelper", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !156
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %1, 3
  %i.f = or disjoint i32 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 92 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !68
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.j = load ptr, ptr %0, align 8, !tbaa !64
  %i.k = tail call noundef ptr @_ZN6google8protobuf15UnknownFieldSet8AddGroupEi(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i32 noundef %1)
  store ptr %i.k, ptr %4, align 8, !tbaa !64
  %i.l = call noundef ptr @_ZN6google8protobuf8internal16WireFormatParserINS1_24UnknownFieldParserHelperEEEPKcRT_S5_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.m = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  %i.n = add nsw <2 x i32> %i.m, <i32 1, i32 -1>
  store <2 x i32> %i.n, ptr %i.a, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !69
  %i.q = icmp eq i32 %i.p, %i.f
  store i32 0, ptr %i.o, align 8, !tbaa !69
  %..i = select i1 %i.q, ptr %i.l, ptr null, !prof !38
  br label %_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit

_ZN6google8protobuf8internal12ParseContext17ParseGroupInlinedIZNS1_24UnknownFieldParserHelper10ParseGroupEjPKcPS2_EUlS6_E_EES6_S6_jRKT_.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi ptr [ %..i, %bb.b ], [ null, %bb.a ]
  ret ptr %.1.i
}

end_hunk_0
