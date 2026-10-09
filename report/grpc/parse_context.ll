Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/parse_context?download=true
inline.NumInlined: 1110
inline.NumDeleted: 387
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE:bb.a

.lr.ph.i.i35:                                     ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.y = load i8, ptr %i.w, align 1, !tbaa !38
  store i8 %i.y, ptr %i.e, align 4, !tbaa !38
  %exitcond.not.i.i37 = icmp eq i32 %i.u, 1
  br i1 %exitcond.not.i.i37, label %.critedge33.thread, label %.lr.ph.i.i35.1

.lr.ph.i.i35.1:                                   ; preds = %.lr.ph.i.i35
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !38
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !38
  %exitcond.not.i.i37.1 = icmp eq i32 %i.u, 2
  br i1 %exitcond.not.i.i37.1, label %.critedge33.thread, label %.lr.ph.i.i35.2

.lr.ph.i.i35.2:                                   ; preds = %.lr.ph.i.i35.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !38
  br label %.critedge33.thread

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i32 %i.a, 5
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i40 = icmp eq i32 %i.a, 4
  br i1 %.not.i.i40, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %bb.c
  %i.ag = load i8, ptr %1, align 1, !tbaa !38
  store i8 %i.ag, ptr %i.f, align 1, !tbaa !38
  %exitcond.not.i.i43 = icmp eq i32 %i.a, 3
  br i1 %exitcond.not.i.i43, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41.1

.lr.ph.i.i41.1:                                   ; preds = %.lr.ph.i.i41
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !38
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !38
  %exitcond.not.i.i43.1 = icmp eq i32 %i.a, 2
  br i1 %exitcond.not.i.i43.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, label %.lr.ph.i.i41.2

.lr.ph.i.i41.2:                                   ; preds = %.lr.ph.i.i41.1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !38
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44: ; preds = %.lr.ph.i.i41, %.lr.ph.i.i41.1, %.lr.ph.i.i41.2, %bb.c
  %i.an = trunc nuw nsw i64 %i.c to i32
  %i.ao = add nuw nsw i32 %i.a, %i.an             ; 2 uses
  store i32 %i.ao, ptr %2, align 4, !tbaa !34
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.e, i64 noundef %i.ap) ; 2 uses
  %.not64 = icmp eq i64 %i.aq, 0
  br i1 %.not64, label %.critedge33.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44
  %i.ar = sub i64 %i.aq, %i.b                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = sub i64 %0, %i.ar
  br label %.critedge33

.critedge33:                                      ; preds = %bb.d, %bb.a
  %.sroa.11.0 = phi ptr [ %1, %bb.a ], [ %i.as, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %0, %bb.a ], [ %i.at, %bb.d ] ; 3 uses
  %i.au = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef %.sroa.11.0, i64 noundef %.sroa.0.0) ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 %i.au ; 3 uses
  %i.aw = sub i64 %.sroa.0.0, %i.au               ; 4 uses
  %i.ax = icmp ult i64 %i.aw, 4
  br i1 %i.ax, label %bb.e, label %.critedge33.thread

bb.e:                                             ; preds = %.critedge33
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.not.i.i47 = icmp eq i64 %.sroa.0.0, %i.au
  br i1 %.not.i.i47, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.e
  %i.az = load i8, ptr %i.av, align 1, !tbaa !38
  store i8 %i.az, ptr %i.ay, align 4, !tbaa !38
  %exitcond.not.i.i50 = icmp eq i64 %i.aw, 1
  br i1 %exitcond.not.i.i50, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i48.1

.lr.ph.i.i48.1:                                   ; preds = %.lr.ph.i.i48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !38
  %exitcond.not.i.i50.1 = icmp eq i64 %i.aw, 2
  br i1 %exitcond.not.i.i50.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i.i48.2

.lr.ph.i.i48.2:                                   ; preds = %.lr.ph.i.i48.1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 %i.be, ptr %i.bf, align 2, !tbaa !38
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.lr.ph.i.i48, %.lr.ph.i.i48.1, %.lr.ph.i.i48.2, %bb.e
  %i.bg = trunc nuw nsw i64 %i.aw to i32
  store i32 %i.bg, ptr %2, align 4, !tbaa !34
  br label %.critedge33.thread

.critedge33.thread:                               ; preds = %.lr.ph.i.i35, %.lr.ph.i.i35.1, %.lr.ph.i.i35.2, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit, %.critedge33
  %.5 = phi i1 [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6assignESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ false, %.critedge33 ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44 ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %.lr.ph.i.i35.2 ], [ true, %.lr.ph.i.i35.1 ], [ true, %.lr.ph.i.i35 ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

declare i64 @utf8_range_ValidPrefix(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4absl12lts_202505124Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS0_13cord_internal18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dj, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ]
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.de, %bb.u ]
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load i32, ptr %2, align 4, !tbaa !66
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %2, %bb.h ]
  %i.bi = phi i32 [ %i.bh, %bb.i ], [ 2, %bb.h ]
  %i.bj = icmp eq i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bf, 1                    ; 3 uses
  br i1 %i.bj, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !18

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %i.bm = phi i32 [ %.pre36.i.i.i.i, %bb.j ], [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.027.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !68
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i, i64 %i.bn
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !51
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !68
  %i.bq = icmp eq i32 %i.bk, %i.bp
  call void @llvm.assume(i1 %i.bq)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.br = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.br, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bs = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bt = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.bu = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bv = ptrtoint ptr %.2.i88 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = sub nsw i32 %.031120, %.035121          ; 3 uses
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.ca = sext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 %i.ca ; 2 uses
  %sext44 = shl i64 %i.bx, 32
  %i.cc = ashr exact i64 %sext44, 32              ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.d, i64 %i.cc ; 2 uses
  %i.ce = icmp slt i64 %i.cc, %i.ca
  br i1 %i.ce, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

.lr.ph.i47:                                       ; preds = %bb.l, %.thread.i.i.i.i56
  %.079.i48 = phi ptr [ %i.cf, %.thread.i.i.i.i56 ], [ %i.cd, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cf = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, label %bb.m

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i47
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load i32, ptr %2, align 4, !tbaa !66
  %i.ck = and i32 %i.cj, 1
  %i.cl = icmp eq i32 %i.ck, 0                    ; 3 uses
  %i.cm = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.cl, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49: ; preds = %bb.n, %bb.m
  %.0.v.i.i.i.i.i.i50 = phi ptr [ %i.cn, %bb.n ], [ %2, %bb.m ]
  %i.cp = phi i32 [ %i.co, %bb.n ], [ 2, %bb.m ]
  %i.cq = icmp eq i32 %i.cm, %i.cp
  %i.cr = add nsw i32 %i.cm, 1                    ; 3 uses
  br i1 %i.cq, label %bb.o, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51, !prof !18

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.cl, i32 noundef %i.cm, i32 noundef %i.cr)
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i57 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49
  %i.ct = phi i32 [ %.pre36.i.i.i.i57, %bb.o ], [ %i.cm, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ]
  %.pn.i.i.i.i52 = phi ptr [ %i.cs, %bb.o ], [ %.0.v.i.i.i.i.i.i50, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ] ; 2 uses
  %.0.i.i.i.i54 = phi i1 [ false, %bb.o ], [ %i.cl, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ]
  %.027.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i52, i64 8
  store i32 %i.cr, ptr %i.at, align 4, !tbaa !68
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i55, i64 %i.cu
  store i32 %i.ci, ptr %i.cv, align 4, !tbaa !51
  %i.cw = load i32, ptr %i.at, align 4, !tbaa !68
  %i.cx = icmp eq i32 %i.cr, %i.cw
  call void @llvm.assume(i1 %i.cx)
  br i1 %.0.i.i.i.i54, label %.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51
  %i.cy = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i56

.thread.i.i.i.i56:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51, %bb.p
  %.sink204 = phi ptr [ %i.cy, %bb.p ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51 ]
  %i.cz = icmp eq ptr %.pn.i.i.i.i52, %.sink204
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.da = icmp ult ptr %i.cf, %i.cb
  br i1 %i.da, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59: ; preds = %.thread.i.i.i.i56, %bb.l
  %.2.i46 = phi ptr [ %i.cd, %bb.l ], [ %i.cf, %.thread.i.i.i.i56 ]
  %.not45 = icmp eq ptr %.2.i46, %i.cb
  br i1 %.not45, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ca
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59, %bb.q
  %.1 = phi ptr [ %i.dc, %bb.q ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  %i.dd = trunc i64 %i.bx to i32
  %i.de = sub i32 %i.by, %i.dd                    ; 3 uses
  %i.df = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dg = icmp slt i32 %i.df, 17
  br i1 %i.dg, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.di, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.u

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dk, align 8, !tbaa !47
  store ptr %i.dj, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.u:                                             ; preds = %bb.t
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dh to i64
  %.neg.i = sub i64 %i.dm, %i.dl
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !19
  %i.do = trunc i64 %.neg.i to i32
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  store i32 %i.dp, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dp, i32 0)
  %i.dq = sext i32 %.sroa.speculated.i to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 %i.dq
  store ptr %i.dr, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bx, 32
  %i.ds = ashr exact i64 %sext, 32
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 %i.ds ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.dl, %i.du
  %.035 = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dw = icmp sgt i32 %i.de, %.035
  br i1 %i.dw, label %bb.g, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.078.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dt, %bb.u ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.de, %bb.u ] ; 2 uses
  %i.dx = sext i32 %.031.lcssa to i64
  %i.dy = getelementptr inbounds i8, ptr %.078.lcssa, i64 %i.dx ; 2 uses
  %i.dz = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dz, label %.lr.ph.i61, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

.lr.ph.i61:                                       ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i.i70, %.lr.ph.i61
  %.079.i62 = phi ptr [ %.078.lcssa, %.lr.ph.i61 ], [ %i.ec, %.thread.i.i.i.i70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ec = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i62, ptr noundef nonnull %i.a) ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread.i72, label %bb.w

.thread.i72:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %2, align 4, !tbaa !66
  %i.eh = and i32 %i.eg, 1
  %i.ei = icmp eq i32 %i.eh, 0                    ; 3 uses
  %i.ej = load i32, ptr %i.ea, align 4, !tbaa !68 ; 4 uses
  br i1 %i.ei, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !38 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i.i.i.i64 = phi ptr [ %i.ek, %bb.x ], [ %2, %bb.w ]
  %i.em = phi i32 [ %i.el, %bb.x ], [ 2, %bb.w ]
  %i.en = icmp eq i32 %i.ej, %i.em
  %i.eo = add nsw i32 %i.ej, 1                    ; 3 uses
  br i1 %i.en, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65, !prof !18

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ei, i32 noundef %i.ej, i32 noundef %i.eo)
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !38
  %.pre36.i.i.i.i71 = load i32, ptr %i.ea, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63
  %i.eq = phi i32 [ %.pre36.i.i.i.i71, %bb.y ], [ %i.ej, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ]
  %.pn.i.i.i.i66 = phi ptr [ %i.ep, %bb.y ], [ %.0.v.i.i.i.i.i.i64, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ] ; 2 uses
  %.0.i.i.i.i68 = phi i1 [ false, %bb.y ], [ %i.ei, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ]
  %.027.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i66, i64 8
  store i32 %i.eo, ptr %i.ea, align 4, !tbaa !68
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i69, i64 %i.er
  store i32 %i.ef, ptr %i.es, align 4, !tbaa !51
  %i.et = load i32, ptr %i.ea, align 4, !tbaa !68
  %i.eu = icmp eq i32 %i.eo, %i.et
  call void @llvm.assume(i1 %i.eu)
  br i1 %.0.i.i.i.i68, label %.thread.i.i.i.i70, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65
  %i.ev = load ptr, ptr %i.eb, align 8
  br label %.thread.i.i.i.i70

.thread.i.i.i.i70:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65, %bb.z
  %.sink205 = phi ptr [ %i.ev, %bb.z ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65 ]
  %i.ew = icmp eq ptr %.pn.i.i.i.i66, %.sink205
  call void @llvm.assume(i1 %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ex = icmp ult ptr %i.ec, %i.dy
  br i1 %i.ex, label %bb.v, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73: ; preds = %.thread.i.i.i.i70, %._crit_edge, %.thread.i72
  %.2.i60 = phi ptr [ null, %.thread.i72 ], [ %.078.lcssa, %._crit_edge ], [ %i.ec, %.thread.i.i.i.i70 ] ; 2 uses
  %i.ey = icmp eq ptr %i.dy, %.2.i60
  %i.ez = select i1 %i.ey, ptr %.2.i60, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.s, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.r, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.ez, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.s ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !69

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = load i64, ptr %1, align 8, !tbaa !98
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !99
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.t = add nuw nsw i64 %i.j, 8
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = add nuw nsw i64 %i.j, 12
  %i.w = and i64 %i.v, 17179869176                ; 4 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 62) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = sub nuw nsw i64 60, %i.y                 ; 2 uses
  %i.aa = load i8, ptr %.0.i.i.i, align 8, !tbaa !100
  %i.ab = zext i8 %i.aa to i64
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !38
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bi
  %.0.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bj = zext nneg i32 %3 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 4 %.0.i.i.i25, i64 %i.bk, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !38
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = add nsw i64 %i.bp, 8                    ; 5 uses
  br i1 %i.k, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #18
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.br = icmp ugt i64 %i.bq, 15
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bt = sub nuw nsw i64 59, %i.bs               ; 2 uses
  %i.bu = load i8, ptr %.0.i.i32, align 8, !tbaa !100 ; 3 uses
  %i.bv = zext i8 %i.bu to i64                    ; 2 uses
  %.not.i.i26 = icmp samesign ult i64 %i.bt, %i.bv
  br i1 %.not.i.i26, label %bb.t, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bq, 3                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !101 ; 2 uses
  %i.bz = icmp ugt i8 %i.bu, 1
  br i1 %i.bz, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i8 %i.bu, 1
  br i1 %i.ca, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !103
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !103
  br label %.lr.ph.preheader.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.q
  %.idx.i.i = shl nuw nsw i64 %i.bv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.by, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load i8, ptr %.0.i.i32, align 8, !tbaa !100
  %i.cc = zext i8 %.pre.i.i to i64                ; 2 uses
  %.not4.i.i.i.i.i = icmp samesign eq i64 %i.bw, %i.cc
  br i1 %.not4.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, %bb.s, %bb.r
  %i.cd = phi i64 [ %i.cc, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i = shl nuw nsw i64 %i.cd, 3          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx24.i.i
  %gepdiff.i.i = sub nsw i64 %i.bq, %.idx24.i.i
  %i.cf = and i64 %gepdiff.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.cf, i1 false), !tbaa !103
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.bm, ptr %i.bx, align 8, !tbaa !101
  %.sroa.speculated.i.i27 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 64)
  %i.cg = trunc nuw nsw i64 %.sroa.speculated.i.i27 to i8
  store i8 %i.cg, ptr %.0.i.i32, align 8, !tbaa !100
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.t:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !101
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.bt ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !103
  store ptr %i.ck, ptr %i.bm, align 8, !tbaa !105
  store ptr %i.bm, ptr %i.cj, align 8, !tbaa !103
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit: ; preds = %bb.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, %bb.o, %bb.m
  %i.cl = load i32, ptr %0, align 8, !tbaa !66
  %i.cm = or i32 %i.cl, 1
  store i32 %i.cm, ptr %0, align 8, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.2.i.sink48, ptr %i.cn, align 8, !tbaa !38
  ret void
}

declare noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dj, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ]
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.de, %bb.u ]
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load i32, ptr %2, align 4, !tbaa !66
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 3 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %2, %bb.h ]
  %i.bi = phi i32 [ %i.bh, %bb.i ], [ 2, %bb.h ]
  %i.bj = icmp eq i32 %i.bf, %i.bi
  %i.bk = add nsw i32 %i.bf, 1                    ; 3 uses
  br i1 %i.bj, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !18

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i
  %i.bm = phi i32 [ %.pre36.i.i.i.i, %bb.j ], [ %i.bf, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.be, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i ]
  %.027.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bk, ptr %i.at, align 4, !tbaa !68
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i, i64 %i.bn
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !51
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !68
  %i.bq = icmp eq i32 %i.bk, %i.bp
  call void @llvm.assume(i1 %i.bq)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.br = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.br, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bs = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bt = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.bu = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bv = ptrtoint ptr %.2.i88 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = sub nsw i32 %.031120, %.035121          ; 3 uses
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.ca = sext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 %i.ca ; 2 uses
  %sext44 = shl i64 %i.bx, 32
  %i.cc = ashr exact i64 %sext44, 32              ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.d, i64 %i.cc ; 2 uses
  %i.ce = icmp slt i64 %i.cc, %i.ca
  br i1 %i.ce, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

.lr.ph.i47:                                       ; preds = %bb.l, %.thread.i.i.i.i56
  %.079.i48 = phi ptr [ %i.cf, %.thread.i.i.i.i56 ], [ %i.cd, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cf = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, label %bb.m

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i47
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load i32, ptr %2, align 4, !tbaa !66
  %i.ck = and i32 %i.cj, 1
  %i.cl = icmp eq i32 %i.ck, 0                    ; 3 uses
  %i.cm = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.cl, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49: ; preds = %bb.n, %bb.m
  %.0.v.i.i.i.i.i.i50 = phi ptr [ %i.cn, %bb.n ], [ %2, %bb.m ]
  %i.cp = phi i32 [ %i.co, %bb.n ], [ 2, %bb.m ]
  %i.cq = icmp eq i32 %i.cm, %i.cp
  %i.cr = add nsw i32 %i.cm, 1                    ; 3 uses
  br i1 %i.cq, label %bb.o, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51, !prof !18

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.cl, i32 noundef %i.cm, i32 noundef %i.cr)
  %i.cs = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i57 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49
  %i.ct = phi i32 [ %.pre36.i.i.i.i57, %bb.o ], [ %i.cm, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49 ]
  %.pn.i.i.i.i52 = phi ptr [ %i.cs, %bb.o ], [ %.0.v.i.i.i.i.i.i50, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49 ] ; 2 uses
  %.0.i.i.i.i54 = phi i1 [ false, %bb.o ], [ %i.cl, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i49 ]
  %.027.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i52, i64 8
  store i32 %i.cr, ptr %i.at, align 4, !tbaa !68
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i55, i64 %i.cu
  store i32 %i.ci, ptr %i.cv, align 4, !tbaa !51
  %i.cw = load i32, ptr %i.at, align 4, !tbaa !68
  %i.cx = icmp eq i32 %i.cr, %i.cw
  call void @llvm.assume(i1 %i.cx)
  br i1 %.0.i.i.i.i54, label %.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51
  %i.cy = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i56

.thread.i.i.i.i56:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51, %bb.p
  %.sink204 = phi ptr [ %i.cy, %bb.p ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i51 ]
  %i.cz = icmp eq ptr %.pn.i.i.i.i52, %.sink204
  call void @llvm.assume(i1 %i.cz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.da = icmp ult ptr %i.cf, %i.cb
  br i1 %i.da, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59: ; preds = %.thread.i.i.i.i56, %bb.l
  %.2.i46 = phi ptr [ %i.cd, %bb.l ], [ %i.cf, %.thread.i.i.i.i56 ]
  %.not45 = icmp eq ptr %.2.i46, %i.cb
  br i1 %.not45, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ca
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59, %bb.q
  %.1 = phi ptr [ %i.dc, %bb.q ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  %i.dd = trunc i64 %i.bx to i32
  %i.de = sub i32 %i.by, %i.dd                    ; 3 uses
  %i.df = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dg = icmp slt i32 %i.df, 17
  br i1 %i.dg, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.di, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.u

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dk, align 8, !tbaa !47
  store ptr %i.dj, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.u:                                             ; preds = %bb.t
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dh to i64
  %.neg.i = sub i64 %i.dm, %i.dl
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !19
  %i.do = trunc i64 %.neg.i to i32
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  store i32 %i.dp, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dp, i32 0)
  %i.dq = sext i32 %.sroa.speculated.i to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 %i.dq
  store ptr %i.dr, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bx, 32
  %i.ds = ashr exact i64 %sext, 32
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 %i.ds ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.dl, %i.du
  %.035 = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dw = icmp sgt i32 %i.de, %.035
  br i1 %i.dw, label %bb.g, label %._crit_edge, !llvm.loop !150

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.078.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dt, %bb.u ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.de, %bb.u ] ; 2 uses
  %i.dx = sext i32 %.031.lcssa to i64
  %i.dy = getelementptr inbounds i8, ptr %.078.lcssa, i64 %i.dx ; 2 uses
  %i.dz = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dz, label %.lr.ph.i61, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

.lr.ph.i61:                                       ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i.i70, %.lr.ph.i61
  %.079.i62 = phi ptr [ %.078.lcssa, %.lr.ph.i61 ], [ %i.ec, %.thread.i.i.i.i70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ec = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i62, ptr noundef nonnull %i.a) ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread.i72, label %bb.w

.thread.i72:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

bb.w:                                             ; preds = %bb.v
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !28
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = load i32, ptr %2, align 4, !tbaa !66
  %i.eh = and i32 %i.eg, 1
  %i.ei = icmp eq i32 %i.eh, 0                    ; 3 uses
  %i.ej = load i32, ptr %i.ea, align 4, !tbaa !68 ; 4 uses
  br i1 %i.ei, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !38 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i.i.i.i64 = phi ptr [ %i.ek, %bb.x ], [ %2, %bb.w ]
  %i.em = phi i32 [ %i.el, %bb.x ], [ 2, %bb.w ]
  %i.en = icmp eq i32 %i.ej, %i.em
  %i.eo = add nsw i32 %i.ej, 1                    ; 3 uses
  br i1 %i.en, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65, !prof !18

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63
  call void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ei, i32 noundef %i.ej, i32 noundef %i.eo)
  %i.ep = load ptr, ptr %i.eb, align 8, !tbaa !38
  %.pre36.i.i.i.i71 = load i32, ptr %i.ea, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63
  %i.eq = phi i32 [ %.pre36.i.i.i.i71, %bb.y ], [ %i.ej, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ]
  %.pn.i.i.i.i66 = phi ptr [ %i.ep, %bb.y ], [ %.0.v.i.i.i.i.i.i64, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ] ; 2 uses
  %.0.i.i.i.i68 = phi i1 [ false, %bb.y ], [ %i.ei, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.i.i.i.i63 ]
  %.027.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i66, i64 8
  store i32 %i.eo, ptr %i.ea, align 4, !tbaa !68
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i69, i64 %i.er
  store i32 %i.ef, ptr %i.es, align 4, !tbaa !51
  %i.et = load i32, ptr %i.ea, align 4, !tbaa !68
  %i.eu = icmp eq i32 %i.eo, %i.et
  call void @llvm.assume(i1 %i.eu)
  br i1 %.0.i.i.i.i68, label %.thread.i.i.i.i70, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65
  %i.ev = load ptr, ptr %i.eb, align 8
  br label %.thread.i.i.i.i70

.thread.i.i.i.i70:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65, %bb.z
  %.sink205 = phi ptr [ %i.ev, %bb.z ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit._crit_edge.i.i.i.i65 ]
  %i.ew = icmp eq ptr %.pn.i.i.i.i66, %.sink205
  call void @llvm.assume(i1 %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ex = icmp ult ptr %i.ec, %i.dy
  br i1 %i.ex, label %bb.v, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73: ; preds = %.thread.i.i.i.i70, %._crit_edge, %.thread.i72
  %.2.i60 = phi ptr [ null, %.thread.i72 ], [ %.078.lcssa, %._crit_edge ], [ %i.ec, %.thread.i.i.i.i70 ] ; 2 uses
  %i.ey = icmp eq ptr %i.dy, %.2.i60
  %i.ez = select i1 %i.ey, ptr %.2.i60, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.s, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.r, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.ez, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.s ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !69

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !72
  %i.o = load i64, ptr %1, align 8, !tbaa !98
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 16, !tbaa !99
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.t = add nuw nsw i64 %i.j, 8
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.r, %bb.d ], [ %i.s, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = add nuw nsw i64 %i.j, 12
  %i.w = and i64 %i.v, 17179869176                ; 4 uses
  %i.x = add nsw i64 %i.w, -1
  %i.y = tail call range(i64 0, 62) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = sub nuw nsw i64 60, %i.y                 ; 2 uses
  %i.aa = load i8, ptr %.0.i.i.i, align 8, !tbaa !100
  %i.ab = zext i8 %i.aa to i64
  %.not.i.i = icmp samesign ult i64 %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !48

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii:bb.a
  %i.bc = icmp ult ptr %i.bb, %.sroa.speculated.i.i
  br i1 %i.bc, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i24 = phi ptr [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.bb, %.lr.ph.i.i ]
  store ptr %.0.i.i.i24, ptr %i.aq, align 8, !tbaa !107
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bd = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.w)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink48 = phi ptr [ %i.u, %bb.e ], [ %i.af, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.aj, %.loopexit.i ], [ %i.bd, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i32 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink48, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 4
  store i32 0, ptr %i.be, align 4, !tbaa !38
  %i.bf = icmp sgt i32 %3, 0
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.2.i.sink48, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bi
  %.0.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bj = zext nneg i32 %3 to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 4 %.0.i.i.i25, i64 %i.bk, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38 ; 8 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !38
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 2
  %i.bq = add nsw i64 %i.bp, 8                    ; 5 uses
  br i1 %i.k, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #18
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.br = icmp ugt i64 %i.bq, 15
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bt = sub nuw nsw i64 59, %i.bs               ; 2 uses
  %i.bu = load i8, ptr %.0.i.i32, align 8, !tbaa !100 ; 3 uses
  %i.bv = zext i8 %i.bu to i64                    ; 2 uses
  %.not.i.i26 = icmp samesign ult i64 %i.bt, %i.bv
  br i1 %.not.i.i26, label %bb.t, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr i64 %i.bq, 3                       ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !101 ; 2 uses
  %i.bz = icmp ugt i8 %i.bu, 1
  br i1 %i.bz, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.ca = icmp eq i8 %i.bu, 1
  br i1 %i.ca, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !103
  store ptr %i.cb, ptr %i.bm, align 8, !tbaa !103
  br label %.lr.ph.preheader.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.q
  %.idx.i.i = shl nuw nsw i64 %i.bv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.by, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load i8, ptr %.0.i.i32, align 8, !tbaa !100
  %i.cc = zext i8 %.pre.i.i to i64                ; 2 uses
  %.not4.i.i.i.i.i = icmp samesign eq i64 %i.bw, %i.cc
  br i1 %.not4.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, %bb.s, %bb.r
  %i.cd = phi i64 [ %i.cc, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i = shl nuw nsw i64 %i.cd, 3          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx24.i.i
  %gepdiff.i.i = sub nsw i64 %i.bq, %.idx24.i.i
  %i.cf = and i64 %gepdiff.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ce, i8 0, i64 %i.cf, i1 false), !tbaa !103
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.bm, ptr %i.bx, align 8, !tbaa !101
  %.sroa.speculated.i.i27 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 64)
  %i.cg = trunc nuw nsw i64 %.sroa.speculated.i.i27 to i8
  store i8 %i.cg, ptr %.0.i.i32, align 8, !tbaa !100
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.t:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i32, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !101
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.bt ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !103
  store ptr %i.ck, ptr %i.bm, align 8, !tbaa !105
  store ptr %i.bm, ptr %i.cj, align 8, !tbaa !103
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit: ; preds = %bb.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, %bb.o, %bb.m
  %i.cl = load i32, ptr %0, align 8, !tbaa !66
  %i.cm = or i32 %i.cl, 1
  store i32 %i.cm, ptr %0, align 8, !tbaa !66
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.2.i.sink48, ptr %i.cn, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.db, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ]
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cw, %bb.q ]
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dl, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = load i32, ptr %2, align 4, !tbaa !66
  %i.bc = and i32 %i.bb, 1
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.bd, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.thread41.i.i.i.i, label %.thread.i.i.i.i, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !38
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.thread41.i.i.i.i, label %.thread52.i.i.i.i, !prof !18

.thread52.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i
  %.pre3854.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

.thread41.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %i.bj = add nsw i32 %i.be, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bd, i32 noundef %i.be, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %.pre38.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread52.i.i.i.i, %.thread41.i.i.i.i, %.thread.i.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i.i, %.thread.i.i.i.i ], [ %i.bj, %.thread41.i.i.i.i ], [ %.pre3854.i.i.i.i, %.thread52.i.i.i.i ]
  %.pre36.i.i.i.i.sink.sink = phi i32 [ %i.be, %.thread.i.i.i.i ], [ %.pre36.i.i.i.i, %.thread41.i.i.i.i ], [ %i.be, %.thread52.i.i.i.i ]
  %i.bl = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bk, %.thread41.i.i.i.i ], [ %i.bg, %.thread52.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %.sink.sink, ptr %i.at, align 4, !tbaa !68
  %i.bn = sext i32 %.pre36.i.i.i.i.sink.sink to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %i.ba, ptr %i.bo, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bp = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bq = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.br = ptrtoint ptr %.2.i100 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = sub nsw i32 %.031132, %.035133          ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 17
  br i1 %i.bv, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %sext44 = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext44, 32              ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bw
  br i1 %i.ca, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cb, %bb.l ], [ %i.bz, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ce = load i32, ptr %2, align 4, !tbaa !66
  %i.cf = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.cf, 0                    ; 2 uses
  %i.ch = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.cg, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61: ; preds = %bb.k
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.thread41.i.i.i.i57, label %.thread.i.i.i.i62, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49: ; preds = %bb.k
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !38
  %i.cl = icmp eq i32 %i.ch, %i.ck
  br i1 %i.cl, label %.thread41.i.i.i.i57, label %.thread52.i.i.i.i50, !prof !18

.thread52.i.i.i.i50:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49
  %.pre3854.i.i.i.i51 = add nsw i32 %i.ch, 1
  br label %bb.l

.thread41.i.i.i.i57:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61
  %i.cm = add nsw i32 %i.ch, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.cg, i32 noundef %i.ch, i32 noundef %i.cm)
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i58 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.l

.thread.i.i.i.i62:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61
  %.pre38.i.i.i.i63 = add nsw i32 %i.ch, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread52.i.i.i.i50, %.thread41.i.i.i.i57, %.thread.i.i.i.i62
  %.sink221.sink = phi i32 [ %.pre38.i.i.i.i63, %.thread.i.i.i.i62 ], [ %i.cm, %.thread41.i.i.i.i57 ], [ %.pre3854.i.i.i.i51, %.thread52.i.i.i.i50 ]
  %.pre36.i.i.i.i58.sink.sink = phi i32 [ %i.ch, %.thread.i.i.i.i62 ], [ %.pre36.i.i.i.i58, %.thread41.i.i.i.i57 ], [ %i.ch, %.thread52.i.i.i.i50 ]
  %i.co = phi ptr [ %2, %.thread.i.i.i.i62 ], [ %i.cn, %.thread41.i.i.i.i57 ], [ %i.cj, %.thread52.i.i.i.i50 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.sink221.sink, ptr %i.at, align 4, !tbaa !68
  %i.cq = sext i32 %.pre36.i.i.i.i58.sink.sink to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  store i64 %i.cd, ptr %i.cr, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cs = icmp ult ptr %i.cb, %i.bx
  br i1 %i.cs, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65: ; preds = %bb.l, %bb.j
  %.2.i46 = phi ptr [ %i.bz, %bb.j ], [ %i.cb, %bb.l ]
  %.not45 = icmp eq ptr %.2.i46, %i.bx
  br i1 %.not45, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bw
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65, %bb.m
  %.1 = phi ptr [ %i.cu, %bb.m ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  %i.cv = trunc i64 %i.bt to i32
  %i.cw = sub i32 %i.bu, %i.cv                    ; 3 uses
  %i.cx = load i32, ptr %i.av, align 4, !tbaa !19
  %i.cy = icmp slt i32 %i.cx, 17
  br i1 %i.cy, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.da, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.q

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dc, align 8, !tbaa !47
  store ptr %i.db, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.dd = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %.neg.i = sub i64 %i.de, %i.dd
  %i.df = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dg = trunc i64 %.neg.i to i32
  %i.dh = add i32 %i.df, %i.dg                    ; 2 uses
  store i32 %i.dh, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dh, i32 0)
  %i.di = sext i32 %.sroa.speculated.i to i64
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 %i.di
  store ptr %i.dj, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bt, 32
  %i.dk = ashr exact i64 %sext, 32
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dd, %i.dm
  %.035 = trunc i64 %i.dn to i32                  ; 2 uses
  %i.do = icmp sgt i32 %i.cw, %.035
  br i1 %i.do, label %bb.g, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dl, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cw, %bb.q ] ; 2 uses
  %i.dp = sext i32 %.031.lcssa to i64
  %i.dq = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dp ; 2 uses
  %i.dr = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dr, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.du, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.du = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !28
  %i.dx = load i32, ptr %2, align 4, !tbaa !66
  %i.dy = and i32 %i.dx, 1
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 4, !tbaa !68 ; 8 uses
  br i1 %i.dz, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %.thread41.i.i.i.i77, label %.thread.i.i.i.i82, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !38 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !38
  %i.ee = icmp eq i32 %i.ea, %i.ed
  br i1 %i.ee, label %.thread41.i.i.i.i77, label %.thread52.i.i.i.i70, !prof !18

.thread52.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69
  %.pre3854.i.i.i.i71 = add nsw i32 %i.ea, 1
  br label %bb.t

.thread41.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %i.ef = add nsw i32 %i.ea, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.dz, i32 noundef %i.ea, i32 noundef %i.ef)
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !38
  %.pre36.i.i.i.i78 = load i32, ptr %i.ds, align 4, !tbaa !68
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %.pre38.i.i.i.i83 = add nsw i32 %i.ea, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread52.i.i.i.i70, %.thread41.i.i.i.i77, %.thread.i.i.i.i82
  %.sink227.sink = phi i32 [ %.pre38.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.ef, %.thread41.i.i.i.i77 ], [ %.pre3854.i.i.i.i71, %.thread52.i.i.i.i70 ]
  %.pre36.i.i.i.i78.sink.sink = phi i32 [ %i.ea, %.thread.i.i.i.i82 ], [ %.pre36.i.i.i.i78, %.thread41.i.i.i.i77 ], [ %i.ea, %.thread52.i.i.i.i70 ]
  %i.eh = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.eg, %.thread41.i.i.i.i77 ], [ %i.ec, %.thread52.i.i.i.i70 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %.sink227.sink, ptr %i.ds, align 4, !tbaa !68
  %i.ej = sext i32 %.pre36.i.i.i.i78.sink.sink to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  store i64 %i.dw, ptr %i.ek, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.el = icmp ult ptr %i.du, %i.dq
  br i1 %i.el, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.du, %bb.t ] ; 2 uses
  %i.em = icmp eq ptr %i.dq, %.2.i66
  %i.en = select i1 %i.em, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.en, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !69

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 8                  ; 4 uses
  %i.l = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  %i.p = load i64, ptr %1, align 8, !tbaa !98
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !99
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.t = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.t, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = or disjoint i64 %i.j, 7
  %i.w = tail call range(i64 30, 62) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = sub nuw nsw i64 60, %i.w                 ; 2 uses
  %i.y = load i8, ptr %.0.i.i.i, align 8, !tbaa !100
  %i.z = zext i8 %i.y to i64
  %.not.i.i = icmp samesign ult i64 %i.x, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i

_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i: ; preds = %bb.g
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 64 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %.sroa.speculated.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i23 = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.az, %.lr.ph.i.i ]
  store ptr %.0.i.i.i23, ptr %i.ao, align 8, !tbaa !107
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bb = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.k)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink47 = phi ptr [ %i.u, %bb.e ], [ %i.ad, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.ah, %.loopexit.i ], [ %i.bb, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i31 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink47, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !38
  %i.bd = icmp sgt i32 %3, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bg
  %.0.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bh = zext nneg i32 %3 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %.0.i.i.i24, i64 %i.bi, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 8 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = add nsw i64 %i.bn, 8                    ; 5 uses
  br i1 %i.l, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #18
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = icmp ugt i64 %i.bo, 15
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.br = sub nuw nsw i64 59, %i.bq               ; 2 uses
  %i.bs = load i8, ptr %.0.i.i31, align 8, !tbaa !100 ; 3 uses
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %.not.i.i25 = icmp samesign ult i64 %i.br, %i.bt
  br i1 %.not.i.i25, label %bb.t, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.bu = lshr exact i64 %i.bo, 3                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !101 ; 2 uses
  %i.bx = icmp ugt i8 %i.bs, 1
  br i1 %i.bx, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i8 %i.bs, 1
  br i1 %i.by, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !103
  store ptr %i.bz, ptr %i.bk, align 8, !tbaa !103
  br label %.lr.ph.preheader.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.q
  %.idx.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bw, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load i8, ptr %.0.i.i31, align 8, !tbaa !100
  %i.ca = zext i8 %.pre.i.i to i64                ; 2 uses
  %.not4.i.i.i.i.i = icmp samesign eq i64 %i.bu, %i.ca
  br i1 %.not4.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, %bb.s, %bb.r
  %i.cb = phi i64 [ %i.ca, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i = shl nuw nsw i64 %i.cb, 3          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx24.i.i
  %gepdiff.i.i = sub nsw i64 %i.bo, %.idx24.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %gepdiff.i.i, i1 false), !tbaa !103
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !101
  %.sroa.speculated.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 64)
  %i.cd = trunc nuw nsw i64 %.sroa.speculated.i.i26 to i8
  store i8 %i.cd, ptr %.0.i.i31, align 8, !tbaa !100
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.t:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.br ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !103
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !105
  store ptr %i.bk, ptr %i.cg, align 8, !tbaa !103
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit: ; preds = %bb.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, %bb.o, %bb.m
  %i.ci = load i32, ptr %0, align 8, !tbaa !66
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr %0, align 8, !tbaa !66
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.2.i.sink47, ptr %i.ck, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.db, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ]
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cw, %bb.q ]
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dl, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = load i32, ptr %2, align 4, !tbaa !66
  %i.bc = and i32 %i.bb, 1
  %i.bd = icmp eq i32 %i.bc, 0                    ; 2 uses
  %i.be = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.bd, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %.thread41.i.i.i.i, label %.thread.i.i.i.i, !prof !18

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !38
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %.thread41.i.i.i.i, label %.thread52.i.i.i.i, !prof !18

.thread52.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i
  %.pre3854.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

.thread41.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %i.bj = add nsw i32 %i.be, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bd, i32 noundef %i.be, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i
  %.pre38.i.i.i.i = add nsw i32 %i.be, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread52.i.i.i.i, %.thread41.i.i.i.i, %.thread.i.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i.i, %.thread.i.i.i.i ], [ %i.bj, %.thread41.i.i.i.i ], [ %.pre3854.i.i.i.i, %.thread52.i.i.i.i ]
  %.pre36.i.i.i.i.sink.sink = phi i32 [ %i.be, %.thread.i.i.i.i ], [ %.pre36.i.i.i.i, %.thread41.i.i.i.i ], [ %i.be, %.thread52.i.i.i.i ]
  %i.bl = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bk, %.thread41.i.i.i.i ], [ %i.bg, %.thread52.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i32 %.sink.sink, ptr %i.at, align 4, !tbaa !68
  %i.bn = sext i32 %.pre36.i.i.i.i.sink.sink to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %i.ba, ptr %i.bo, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bp = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bp, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bq = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.br = ptrtoint ptr %.2.i100 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = sub nsw i32 %.031132, %.035133          ; 3 uses
  %i.bv = icmp slt i32 %i.bu, 17
  br i1 %i.bv, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %sext44 = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext44, 32              ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bw
  br i1 %i.ca, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cb, %bb.l ], [ %i.bz, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !28
  %i.ce = load i32, ptr %2, align 4, !tbaa !66
  %i.cf = and i32 %i.ce, 1
  %i.cg = icmp eq i32 %i.cf, 0                    ; 2 uses
  %i.ch = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.cg, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i61, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i61: ; preds = %bb.k
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %.thread41.i.i.i.i57, label %.thread.i.i.i.i62, !prof !18

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i49: ; preds = %bb.k
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !38
  %i.cl = icmp eq i32 %i.ch, %i.ck
  br i1 %i.cl, label %.thread41.i.i.i.i57, label %.thread52.i.i.i.i50, !prof !18

.thread52.i.i.i.i50:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i49
  %.pre3854.i.i.i.i51 = add nsw i32 %i.ch, 1
  br label %bb.l

.thread41.i.i.i.i57:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i49, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i61
  %i.cm = add nsw i32 %i.ch, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.cg, i32 noundef %i.ch, i32 noundef %i.cm)
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i58 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.l

.thread.i.i.i.i62:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i61
  %.pre38.i.i.i.i63 = add nsw i32 %i.ch, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread52.i.i.i.i50, %.thread41.i.i.i.i57, %.thread.i.i.i.i62
  %.sink221.sink = phi i32 [ %.pre38.i.i.i.i63, %.thread.i.i.i.i62 ], [ %i.cm, %.thread41.i.i.i.i57 ], [ %.pre3854.i.i.i.i51, %.thread52.i.i.i.i50 ]
  %.pre36.i.i.i.i58.sink.sink = phi i32 [ %i.ch, %.thread.i.i.i.i62 ], [ %.pre36.i.i.i.i58, %.thread41.i.i.i.i57 ], [ %i.ch, %.thread52.i.i.i.i50 ]
  %i.co = phi ptr [ %2, %.thread.i.i.i.i62 ], [ %i.cn, %.thread41.i.i.i.i57 ], [ %i.cj, %.thread52.i.i.i.i50 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i32 %.sink221.sink, ptr %i.at, align 4, !tbaa !68
  %i.cq = sext i32 %.pre36.i.i.i.i58.sink.sink to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.cq
  store i64 %i.cd, ptr %i.cr, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cs = icmp ult ptr %i.cb, %i.bx
  br i1 %i.cs, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65: ; preds = %bb.l, %bb.j
  %.2.i46 = phi ptr [ %i.bz, %bb.j ], [ %i.cb, %bb.l ]
  %.not45 = icmp eq ptr %.2.i46, %i.bx
  br i1 %.not45, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bw
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65, %bb.m
  %.1 = phi ptr [ %i.cu, %bb.m ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  %i.cv = trunc i64 %i.bt to i32
  %i.cw = sub i32 %i.bu, %i.cv                    ; 3 uses
  %i.cx = load i32, ptr %i.av, align 4, !tbaa !19
  %i.cy = icmp slt i32 %i.cx, 17
  br i1 %i.cy, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.da = icmp eq ptr %i.cz, null
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.da, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.q

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dc, align 8, !tbaa !47
  store ptr %i.db, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.dd = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %.neg.i = sub i64 %i.de, %i.dd
  %i.df = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dg = trunc i64 %.neg.i to i32
  %i.dh = add i32 %i.df, %i.dg                    ; 2 uses
  store i32 %i.dh, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dh, i32 0)
  %i.di = sext i32 %.sroa.speculated.i to i64
  %i.dj = getelementptr inbounds i8, ptr %i.db, i64 %i.di
  store ptr %i.dj, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bt, 32
  %i.dk = ashr exact i64 %sext, 32
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 %i.dk ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dd, %i.dm
  %.035 = trunc i64 %i.dn to i32                  ; 2 uses
  %i.do = icmp sgt i32 %i.cw, %.035
  br i1 %i.do, label %bb.g, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dl, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cw, %bb.q ] ; 2 uses
  %i.dp = sext i32 %.031.lcssa to i64
  %i.dq = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dp ; 2 uses
  %i.dr = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dr, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.du, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.du = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !28
  %i.dx = load i32, ptr %2, align 4, !tbaa !66
  %i.dy = and i32 %i.dx, 1
  %i.dz = icmp eq i32 %i.dy, 0                    ; 2 uses
  %i.ea = load i32, ptr %i.ds, align 4, !tbaa !68 ; 8 uses
  br i1 %i.dz, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.eb = icmp eq i32 %i.ea, 1
  br i1 %i.eb, label %.thread41.i.i.i.i77, label %.thread.i.i.i.i82, !prof !18

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.ec = load ptr, ptr %i.dt, align 8, !tbaa !38 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !38
  %i.ee = icmp eq i32 %i.ea, %i.ed
  br i1 %i.ee, label %.thread41.i.i.i.i77, label %.thread52.i.i.i.i70, !prof !18

.thread52.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69
  %.pre3854.i.i.i.i71 = add nsw i32 %i.ea, 1
  br label %bb.t

.thread41.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81
  %i.ef = add nsw i32 %i.ea, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.dz, i32 noundef %i.ea, i32 noundef %i.ef)
  %i.eg = load ptr, ptr %i.dt, align 8, !tbaa !38
  %.pre36.i.i.i.i78 = load i32, ptr %i.ds, align 4, !tbaa !68
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i.i81
  %.pre38.i.i.i.i83 = add nsw i32 %i.ea, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread52.i.i.i.i70, %.thread41.i.i.i.i77, %.thread.i.i.i.i82
  %.sink227.sink = phi i32 [ %.pre38.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.ef, %.thread41.i.i.i.i77 ], [ %.pre3854.i.i.i.i71, %.thread52.i.i.i.i70 ]
  %.pre36.i.i.i.i78.sink.sink = phi i32 [ %i.ea, %.thread.i.i.i.i82 ], [ %.pre36.i.i.i.i78, %.thread41.i.i.i.i77 ], [ %i.ea, %.thread52.i.i.i.i70 ]
  %i.eh = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.eg, %.thread41.i.i.i.i77 ], [ %i.ec, %.thread52.i.i.i.i70 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %.sink227.sink, ptr %i.ds, align 4, !tbaa !68
  %i.ej = sext i32 %.pre36.i.i.i.i78.sink.sink to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  store i64 %i.dw, ptr %i.ek, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.el = icmp ult ptr %i.du, %i.dq
  br i1 %i.el, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.du, %bb.t ] ; 2 uses
  %i.em = icmp eq ptr %i.dq, %.2.i66
  %i.en = select i1 %i.em, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.en, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !69

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 8                  ; 4 uses
  %i.l = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !72
  %i.p = load i64, ptr %1, align 8, !tbaa !98
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !99
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.t = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #22
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.t, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.v = or disjoint i64 %i.j, 7
  %i.w = tail call range(i64 30, 62) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = sub nuw nsw i64 60, %i.w                 ; 2 uses
  %i.y = load i8, ptr %.0.i.i.i, align 8, !tbaa !100
  %i.z = zext i8 %i.y to i64
  %.not.i.i = icmp samesign ult i64 %i.x, %i.z
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.x ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !103 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i

_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i: ; preds = %bb.g
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 64 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %.sroa.speculated.i.i
  br i1 %i.ba, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !3

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.k, %bb.j, %bb.i
  %.0.i.i.i23 = phi ptr [ %i.ap, %bb.i ], [ %i.ap, %bb.j ], [ %.sroa.speculated17.i.i, %bb.k ], [ %i.az, %.lr.ph.i.i ]
  store ptr %.0.i.i.i23, ptr %i.ao, align 8, !tbaa !107
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i: ; preds = %bb.h
  %i.bb = tail call noundef ptr @_ZN6google8protobuf8internal11SerialArena23AllocateAlignedFallbackEm(ptr noundef nonnull align 8 dereferenceable(120) %.0.i.i.i, i64 noundef %i.k)
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit: ; preds = %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i, %.loopexit.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i, %bb.e
  %.2.i.sink47 = phi ptr [ %i.u, %bb.e ], [ %i.ad, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %i.ah, %.loopexit.i ], [ %i.bb, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 4 uses
  %.0.i.i31 = phi ptr [ null, %bb.e ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena26TryAllocateFromCachedBlockEm.exit.i ], [ %.0.i.i.i, %.loopexit.i ], [ %.0.i.i.i, %_ZN6google8protobuf8internal11SerialArena20MaybeAllocateAlignedEmPPv.exit.i ] ; 5 uses
  store i32 %.1.i, ptr %.2.i.sink47, align 8, !tbaa !38
  %i.bc = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !38
  %i.bd = icmp sgt i32 %3, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.2.i.sink47, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.bg
  %.0.i.i.i24 = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.bh = zext nneg i32 %3 to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %.0.i.i.i24, i64 %i.bi, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !38 ; 8 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38
  %i.bm = sext i32 %i.bl to i64
  %i.bn = shl nsw i64 %i.bm, 3
  %i.bo = add nsw i64 %i.bn, 8                    ; 5 uses
  br i1 %i.l, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #18
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.p:                                             ; preds = %bb.n
  %i.bp = icmp ugt i64 %i.bo, 15
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 true)
  %i.br = sub nuw nsw i64 59, %i.bq               ; 2 uses
  %i.bs = load i8, ptr %.0.i.i31, align 8, !tbaa !100 ; 3 uses
  %i.bt = zext i8 %i.bs to i64                    ; 2 uses
  %.not.i.i25 = icmp samesign ult i64 %i.br, %i.bt
  br i1 %.not.i.i25, label %bb.t, label %bb.q, !prof !48

bb.q:                                             ; preds = %bb.p
  %i.bu = lshr exact i64 %i.bo, 3                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !101 ; 2 uses
  %i.bx = icmp ugt i8 %i.bs, 1
  br i1 %i.bx, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, label %bb.r, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.by = icmp eq i8 %i.bs, 1
  br i1 %i.by, label %bb.s, label %.lr.ph.preheader.i.i.i.i.i

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !103
  store ptr %i.bz, ptr %i.bk, align 8, !tbaa !103
  br label %.lr.ph.preheader.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i: ; preds = %bb.q
  %.idx.i.i = shl nuw nsw i64 %i.bt, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bw, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load i8, ptr %.0.i.i31, align 8, !tbaa !100
  %i.ca = zext i8 %.pre.i.i to i64                ; 2 uses
  %.not4.i.i.i.i.i = icmp samesign eq i64 %i.bu, %i.ca
  br i1 %.not4.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i, %bb.s, %bb.r
  %i.cb = phi i64 [ %i.ca, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i ], [ 1, %bb.s ], [ 0, %bb.r ]
  %.idx24.i.i = shl nuw nsw i64 %i.cb, 3          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx24.i.i
  %gepdiff.i.i = sub nsw i64 %i.bo, %.idx24.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cc, i8 0, i64 %gepdiff.i.i, i1 false), !tbaa !103
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i
  store ptr %i.bk, ptr %i.bv, align 8, !tbaa !101
  %.sroa.speculated.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 64)
  %i.cd = trunc nuw nsw i64 %.sroa.speculated.i.i26 to i8
  store i8 %i.cd, ptr %.0.i.i31, align 8, !tbaa !100
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

bb.t:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i31, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.br ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !103
  store ptr %i.ch, ptr %i.bk, align 8, !tbaa !105
  store ptr %i.bk, ptr %i.cg, align 8, !tbaa !103
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EPNS0_8internal11SerialArenaEEEvT0_.exit: ; preds = %bb.t, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i, %bb.o, %bb.m
  %i.ci = load i32, ptr %0, align 8, !tbaa !66
  %i.cj = or i32 %i.ci, 1
  store i32 %i.cj, ptr %0, align 8, !tbaa !66
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.2.i.sink47, ptr %i.ck, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035118 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035118
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dr, %bb.u ] ; 3 uses
  %.035121 = phi i32 [ %.035118, %.lr.ph ], [ %.035, %bb.u ]
  %.031120 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.dm, %bb.u ]
  %.078119 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.eb, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.078119, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

.lr.ph.i:                                         ; preds = %bb.g, %.thread.i.i.i.i
  %.079.i = phi ptr [ %i.ay, %.thread.i.i.i.i ], [ %.078119, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = and i32 %i.bb, 1
  %i.be = sub nsw i32 0, %i.bd
  %i.bf = xor i32 %i.bc, %i.be
  %i.bg = load i32, ptr %2, align 4, !tbaa !66
  %i.bh = and i32 %i.bg, 1
  %i.bi = icmp eq i32 %i.bh, 0                    ; 3 uses
  %i.bj = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.bi, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.v.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.i ], [ %2, %bb.h ]
  %i.bm = phi i32 [ %i.bl, %bb.i ], [ 2, %bb.h ]
  %i.bn = icmp eq i32 %i.bj, %i.bm
  %i.bo = add nsw i32 %i.bj, 1                    ; 3 uses
  br i1 %i.bn, label %bb.j, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, !prof !18

bb.j:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bi, i32 noundef %i.bj, i32 noundef %i.bo)
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i: ; preds = %bb.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i
  %i.bq = phi i32 [ %.pre36.i.i.i.i, %bb.j ], [ %i.bj, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.pn.i.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %.0.v.i.i.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %bb.j ], [ %i.bi, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i ]
  %.027.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 8
  store i32 %i.bo, ptr %i.at, align 4, !tbaa !68
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i, i64 %i.br
  store i32 %i.bf, ptr %i.bs, align 4, !tbaa !51
  %i.bt = load i32, ptr %i.at, align 4, !tbaa !68
  %i.bu = icmp eq i32 %i.bo, %i.bt
  call void @llvm.assume(i1 %i.bu)
  br i1 %.0.i.i.i.i, label %.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i
  %i.bv = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i, %bb.k
  %.sink203 = phi ptr [ %i.bv, %bb.k ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i ]
  %i.bw = icmp eq ptr %.pn.i.i.i.i, %.sink203
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bx = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bx, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit: ; preds = %.thread.i.i.i.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit, %bb.g
  %i.by = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ] ; 2 uses
  %.2.i88 = phi ptr [ %.078119, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86.loopexit ]
  %i.bz = ptrtoint ptr %.2.i88 to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = sub nsw i32 %.031120, %.035121          ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 17
  br i1 %i.cd, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.by, i64 16, i1 false)
  %i.ce = sext i32 %i.cc to i64                   ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %i.d, i64 %i.ce ; 2 uses
  %sext44 = shl i64 %i.cb, 32
  %i.cg = ashr exact i64 %sext44, 32              ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.d, i64 %i.cg ; 2 uses
  %i.ci = icmp slt i64 %i.cg, %i.ce
  br i1 %i.ci, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

.lr.ph.i47:                                       ; preds = %bb.l, %.thread.i.i.i.i56
  %.079.i48 = phi ptr [ %i.cj, %.thread.i.i.i.i56 ], [ %i.ch, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cj = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, label %bb.m

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i47
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cm = trunc i64 %i.cl to i32                  ; 2 uses
  %i.cn = lshr i32 %i.cm, 1
  %i.co = and i32 %i.cm, 1
  %i.cp = sub nsw i32 0, %i.co
  %i.cq = xor i32 %i.cn, %i.cp
  %i.cr = load i32, ptr %2, align 4, !tbaa !66
  %i.cs = and i32 %i.cr, 1
  %i.ct = icmp eq i32 %i.cs, 0                    ; 3 uses
  %i.cu = load i32, ptr %i.at, align 4, !tbaa !68 ; 4 uses
  br i1 %i.ct, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49: ; preds = %bb.n, %bb.m
  %.0.v.i.i.i.i.i.i50 = phi ptr [ %i.cv, %bb.n ], [ %2, %bb.m ]
  %i.cx = phi i32 [ %i.cw, %bb.n ], [ 2, %bb.m ]
  %i.cy = icmp eq i32 %i.cu, %i.cx
  %i.cz = add nsw i32 %i.cu, 1                    ; 3 uses
  br i1 %i.cy, label %bb.o, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51, !prof !18

bb.o:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ct, i32 noundef %i.cu, i32 noundef %i.cz)
  %i.da = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i57 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51: ; preds = %bb.o, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49
  %i.db = phi i32 [ %.pre36.i.i.i.i57, %bb.o ], [ %i.cu, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ]
  %.pn.i.i.i.i52 = phi ptr [ %i.da, %bb.o ], [ %.0.v.i.i.i.i.i.i50, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ] ; 2 uses
  %.0.i.i.i.i54 = phi i1 [ false, %bb.o ], [ %i.ct, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i49 ]
  %.027.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i52, i64 8
  store i32 %i.cz, ptr %i.at, align 4, !tbaa !68
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i55, i64 %i.dc
  store i32 %i.cq, ptr %i.dd, align 4, !tbaa !51
  %i.de = load i32, ptr %i.at, align 4, !tbaa !68
  %i.df = icmp eq i32 %i.cz, %i.de
  call void @llvm.assume(i1 %i.df)
  br i1 %.0.i.i.i.i54, label %.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51
  %i.dg = load ptr, ptr %i.au, align 8
  br label %.thread.i.i.i.i56

.thread.i.i.i.i56:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51, %bb.p
  %.sink204 = phi ptr [ %i.dg, %bb.p ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i51 ]
  %i.dh = icmp eq ptr %.pn.i.i.i.i52, %.sink204
  call void @llvm.assume(i1 %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.di = icmp ult ptr %i.cj, %i.cf
  br i1 %i.di, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59: ; preds = %.thread.i.i.i.i56, %bb.l
  %.2.i46 = phi ptr [ %i.ch, %bb.l ], [ %i.cj, %.thread.i.i.i.i56 ]
  %.not45 = icmp eq ptr %.2.i46, %i.cf
  br i1 %.not45, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.ce
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59, %bb.q
  %.1 = phi ptr [ %i.dk, %bb.q ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit59.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread86
  %i.dl = trunc i64 %i.cb to i32
  %i.dm = sub i32 %i.cc, %i.dl                    ; 3 uses
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !19
  %i.do = icmp slt i32 %i.dn, 17
  br i1 %i.do, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  %i.dr = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.dq, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.u

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.t
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ds, align 8, !tbaa !47
  store ptr %i.dr, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.u:                                             ; preds = %bb.t
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = ptrtoint ptr %i.dp to i64
  %.neg.i = sub i64 %i.du, %i.dt
  %i.dv = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dw = trunc i64 %.neg.i to i32
  %i.dx = add i32 %i.dv, %i.dw                    ; 2 uses
  store i32 %i.dx, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dx, i32 0)
  %i.dy = sext i32 %.sroa.speculated.i to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dr, i64 %i.dy
  store ptr %i.dz, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.cb, 32
  %i.ea = ashr exact i64 %sext, 32
  %i.eb = getelementptr inbounds i8, ptr %i.dp, i64 %i.ea ; 3 uses
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.dt, %i.ec
  %.035 = trunc i64 %i.ed to i32                  ; 2 uses
  %i.ee = icmp sgt i32 %i.dm, %.035
  br i1 %i.ee, label %bb.g, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.078.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.eb, %bb.u ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.dm, %bb.u ] ; 2 uses
  %i.ef = sext i32 %.031.lcssa to i64
  %i.eg = getelementptr inbounds i8, ptr %.078.lcssa, i64 %i.ef ; 2 uses
  %i.eh = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.eh, label %.lr.ph.i61, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

.lr.ph.i61:                                       ; preds = %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread.i.i.i.i70, %.lr.ph.i61
  %.079.i62 = phi ptr [ %.078.lcssa, %.lr.ph.i61 ], [ %i.ek, %.thread.i.i.i.i70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ek = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i62, ptr noundef nonnull %i.a) ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %.thread.i72, label %bb.w

.thread.i72:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

bb.w:                                             ; preds = %bb.v
  %i.em = load i64, ptr %i.a, align 8, !tbaa !28
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = lshr i32 %i.en, 1
  %i.ep = and i32 %i.en, 1
  %i.eq = sub nsw i32 0, %i.ep
  %i.er = xor i32 %i.eo, %i.eq
  %i.es = load i32, ptr %2, align 4, !tbaa !66
  %i.et = and i32 %i.es, 1
  %i.eu = icmp eq i32 %i.et, 0                    ; 3 uses
  %i.ev = load i32, ptr %i.ei, align 4, !tbaa !68 ; 4 uses
  br i1 %i.eu, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !38 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !38
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63: ; preds = %bb.x, %bb.w
  %.0.v.i.i.i.i.i.i64 = phi ptr [ %i.ew, %bb.x ], [ %2, %bb.w ]
  %i.ey = phi i32 [ %i.ex, %bb.x ], [ 2, %bb.w ]
  %i.ez = icmp eq i32 %i.ev, %i.ey
  %i.fa = add nsw i32 %i.ev, 1                    ; 3 uses
  br i1 %i.ez, label %bb.y, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65, !prof !18

bb.y:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63
  call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.eu, i32 noundef %i.ev, i32 noundef %i.fa)
  %i.fb = load ptr, ptr %i.ej, align 8, !tbaa !38
  %.pre36.i.i.i.i71 = load i32, ptr %i.ei, align 4, !tbaa !68
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65: ; preds = %bb.y, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63
  %i.fc = phi i32 [ %.pre36.i.i.i.i71, %bb.y ], [ %i.ev, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ]
  %.pn.i.i.i.i66 = phi ptr [ %i.fb, %bb.y ], [ %.0.v.i.i.i.i.i.i64, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ] ; 2 uses
  %.0.i.i.i.i68 = phi i1 [ false, %bb.y ], [ %i.eu, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i63 ]
  %.027.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i66, i64 8
  store i32 %i.fa, ptr %i.ei, align 4, !tbaa !68
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %.027.i.i.i.i69, i64 %i.fd
  store i32 %i.er, ptr %i.fe, align 4, !tbaa !51
  %i.ff = load i32, ptr %i.ei, align 4, !tbaa !68
  %i.fg = icmp eq i32 %i.fa, %i.ff
  call void @llvm.assume(i1 %i.fg)
  br i1 %.0.i.i.i.i68, label %.thread.i.i.i.i70, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65
  %i.fh = load ptr, ptr %i.ej, align 8
  br label %.thread.i.i.i.i70

.thread.i.i.i.i70:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65, %bb.z
  %.sink205 = phi ptr [ %i.fh, %bb.z ], [ %2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit._crit_edge.i.i.i.i65 ]
  %i.fi = icmp eq ptr %.pn.i.i.i.i66, %.sink205
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fj = icmp ult ptr %i.ek, %i.eg
  br i1 %i.fj, label %bb.v, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73: ; preds = %.thread.i.i.i.i70, %._crit_edge, %.thread.i72
  %.2.i60 = phi ptr [ null, %.thread.i72 ], [ %.078.lcssa, %._crit_edge ], [ %i.ek, %.thread.i.i.i.i70 ] ; 2 uses
  %i.fk = icmp eq ptr %i.eg, %.2.i60
  %i.fl = select i1 %i.fk, ptr %.2.i60, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.s, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.r, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.fl, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit73 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.s ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dj, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ]
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.de, %bb.q ]
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dt, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = and i64 %i.ba, 1
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.bb, %i.bd
  %i.bf = load i32, ptr %2, align 4, !tbaa !66
  %i.bg = and i32 %i.bf, 1
  %i.bh = icmp eq i32 %i.bg, 0                    ; 2 uses
  %i.bi = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.bh, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.thread41.i.i.i.i, label %.thread.i.i.i.i, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38
  %i.bm = icmp eq i32 %i.bi, %i.bl
  br i1 %i.bm, label %.thread41.i.i.i.i, label %.thread52.i.i.i.i, !prof !18

.thread52.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i
  %.pre3854.i.i.i.i = add nsw i32 %i.bi, 1
  br label %bb.i

.thread41.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %i.bn = add nsw i32 %i.bi, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bh, i32 noundef %i.bi, i32 noundef %i.bn)
  %i.bo = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i
  %.pre38.i.i.i.i = add nsw i32 %i.bi, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread52.i.i.i.i, %.thread41.i.i.i.i, %.thread.i.i.i.i
  %.sink.sink = phi i32 [ %.pre38.i.i.i.i, %.thread.i.i.i.i ], [ %i.bn, %.thread41.i.i.i.i ], [ %.pre3854.i.i.i.i, %.thread52.i.i.i.i ]
  %.pre36.i.i.i.i.sink.sink = phi i32 [ %i.bi, %.thread.i.i.i.i ], [ %.pre36.i.i.i.i, %.thread41.i.i.i.i ], [ %i.bi, %.thread52.i.i.i.i ]
  %i.bp = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bo, %.thread41.i.i.i.i ], [ %i.bk, %.thread52.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %.sink.sink, ptr %i.at, align 4, !tbaa !68
  %i.br = sext i32 %.pre36.i.i.i.i.sink.sink to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  store i64 %i.be, ptr %i.bs, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bt = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bt, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bu = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.bv = ptrtoint ptr %.2.i100 to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = sub nsw i32 %.031132, %.035133          ; 3 uses
  %i.bz = icmp slt i32 %i.by, 17
  br i1 %i.bz, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bu, i64 16, i1 false)
  %i.ca = sext i32 %i.by to i64                   ; 3 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 %i.ca ; 2 uses
  %sext44 = shl i64 %i.bx, 32
  %i.cc = ashr exact i64 %sext44, 32              ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.d, i64 %i.cc ; 2 uses
  %i.ce = icmp slt i64 %i.cc, %i.ca
  br i1 %i.ce, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cf, %bb.l ], [ %i.cd, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cf = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.ch = load i64, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %i.ci = lshr i64 %i.ch, 1
  %i.cj = and i64 %i.ch, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = xor i64 %i.ci, %i.ck
  %i.cm = load i32, ptr %2, align 4, !tbaa !66
  %i.cn = and i32 %i.cm, 1
  %i.co = icmp eq i32 %i.cn, 0                    ; 2 uses
  %i.cp = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.co, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61: ; preds = %bb.k
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %.thread41.i.i.i.i57, label %.thread.i.i.i.i62, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49: ; preds = %bb.k
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !38
  %i.ct = icmp eq i32 %i.cp, %i.cs
  br i1 %i.ct, label %.thread41.i.i.i.i57, label %.thread52.i.i.i.i50, !prof !18

.thread52.i.i.i.i50:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49
  %.pre3854.i.i.i.i51 = add nsw i32 %i.cp, 1
  br label %bb.l

.thread41.i.i.i.i57:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i49, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61
  %i.cu = add nsw i32 %i.cp, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.co, i32 noundef %i.cp, i32 noundef %i.cu)
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i58 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.l

.thread.i.i.i.i62:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i61
  %.pre38.i.i.i.i63 = add nsw i32 %i.cp, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread52.i.i.i.i50, %.thread41.i.i.i.i57, %.thread.i.i.i.i62
  %.sink221.sink = phi i32 [ %.pre38.i.i.i.i63, %.thread.i.i.i.i62 ], [ %i.cu, %.thread41.i.i.i.i57 ], [ %.pre3854.i.i.i.i51, %.thread52.i.i.i.i50 ]
  %.pre36.i.i.i.i58.sink.sink = phi i32 [ %i.cp, %.thread.i.i.i.i62 ], [ %.pre36.i.i.i.i58, %.thread41.i.i.i.i57 ], [ %i.cp, %.thread52.i.i.i.i50 ]
  %i.cw = phi ptr [ %2, %.thread.i.i.i.i62 ], [ %i.cv, %.thread41.i.i.i.i57 ], [ %i.cr, %.thread52.i.i.i.i50 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i32 %.sink221.sink, ptr %i.at, align 4, !tbaa !68
  %i.cy = sext i32 %.pre36.i.i.i.i58.sink.sink to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cy
  store i64 %i.cl, ptr %i.cz, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.da = icmp ult ptr %i.cf, %i.cb
  br i1 %i.da, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65: ; preds = %bb.l, %bb.j
  %.2.i46 = phi ptr [ %i.cd, %bb.j ], [ %i.cf, %bb.l ]
  %.not45 = icmp eq ptr %.2.i46, %i.cb
  br i1 %.not45, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65
  %i.db = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ca
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65, %bb.m
  %.1 = phi ptr [ %i.dc, %bb.m ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  %i.dd = trunc i64 %i.bx to i32
  %i.de = sub i32 %i.by, %i.dd                    ; 3 uses
  %i.df = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dg = icmp slt i32 %i.df, 17
  br i1 %i.dg, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dh = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  %i.dj = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.di, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.q

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dk, align 8, !tbaa !47
  store ptr %i.dj, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dh to i64
  %.neg.i = sub i64 %i.dm, %i.dl
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !19
  %i.do = trunc i64 %.neg.i to i32
  %i.dp = add i32 %i.dn, %i.do                    ; 2 uses
  store i32 %i.dp, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dp, i32 0)
  %i.dq = sext i32 %.sroa.speculated.i to i64
  %i.dr = getelementptr inbounds i8, ptr %i.dj, i64 %i.dq
  store ptr %i.dr, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bx, 32
  %i.ds = ashr exact i64 %sext, 32
  %i.dt = getelementptr inbounds i8, ptr %i.dh, i64 %i.ds ; 3 uses
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.dl, %i.du
  %.035 = trunc i64 %i.dv to i32                  ; 2 uses
  %i.dw = icmp sgt i32 %i.de, %.035
  br i1 %i.dw, label %bb.g, label %._crit_edge, !llvm.loop !154

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dt, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.de, %bb.q ] ; 2 uses
  %i.dx = sext i32 %.031.lcssa to i64
  %i.dy = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dx ; 2 uses
  %i.dz = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dz, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.ec, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ec = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !28  ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = and i64 %i.ee, 1
  %i.eh = sub nsw i64 0, %i.eg
  %i.ei = xor i64 %i.ef, %i.eh
  %i.ej = load i32, ptr %2, align 4, !tbaa !66
  %i.ek = and i32 %i.ej, 1
  %i.el = icmp eq i32 %i.ek, 0                    ; 2 uses
  %i.em = load i32, ptr %i.ea, align 4, !tbaa !68 ; 8 uses
  br i1 %i.el, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.en = icmp eq i32 %i.em, 1
  br i1 %i.en, label %.thread41.i.i.i.i77, label %.thread.i.i.i.i82, !prof !18

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.eo = load ptr, ptr %i.eb, align 8, !tbaa !38 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !38
  %i.eq = icmp eq i32 %i.em, %i.ep
  br i1 %i.eq, label %.thread41.i.i.i.i77, label %.thread52.i.i.i.i70, !prof !18

.thread52.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69
  %.pre3854.i.i.i.i71 = add nsw i32 %i.em, 1
  br label %bb.t

.thread41.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %i.er = add nsw i32 %i.em, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.el, i32 noundef %i.em, i32 noundef %i.er)
  %i.es = load ptr, ptr %i.eb, align 8, !tbaa !38
  %.pre36.i.i.i.i78 = load i32, ptr %i.ea, align 4, !tbaa !68
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.i.i.i.i81
  %.pre38.i.i.i.i83 = add nsw i32 %i.em, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread52.i.i.i.i70, %.thread41.i.i.i.i77, %.thread.i.i.i.i82
  %.sink227.sink = phi i32 [ %.pre38.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.er, %.thread41.i.i.i.i77 ], [ %.pre3854.i.i.i.i71, %.thread52.i.i.i.i70 ]
  %.pre36.i.i.i.i78.sink.sink = phi i32 [ %i.em, %.thread.i.i.i.i82 ], [ %.pre36.i.i.i.i78, %.thread41.i.i.i.i77 ], [ %i.em, %.thread52.i.i.i.i70 ]
  %i.et = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.es, %.thread41.i.i.i.i77 ], [ %i.eo, %.thread52.i.i.i.i70 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i32 %.sink227.sink, ptr %i.ea, align 4, !tbaa !68
  %i.ev = sext i32 %.pre36.i.i.i.i78.sink.sink to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  store i64 %i.ei, ptr %i.ew, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ex = icmp ult ptr %i.ec, %i.dy
  br i1 %i.ex, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.ec, %bb.t ] ; 2 uses
  %i.ey = icmp eq ptr %i.dy, %.2.i66
  %i.ez = select i1 %i.ey, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.ez, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_ZNS2_16ReadPackedVarintISC_EES6_S6_T_EUliE_EES6_S6_SE_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !38      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !18

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !38    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !18

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !18

bb.d:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.b
  %.lcssa35.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i ], [ 3, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %.critedge.1.i.i ], [ %i.aa, %.critedge.2.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = zext nneg i8 %i.ad to i32
  %i.ai = shl nuw nsw i32 %i.ah, 28
  %i.aj = add nsw i32 %i.aa, -268435456
  %i.ak = add nsw i32 %i.aj, %i.ai                ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 2147483631
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !18

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.035130 = trunc i64 %i.ar to i32               ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.035130
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.q
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.df, %bb.q ] ; 3 uses
  %.035133 = phi i32 [ %.035130, %.lr.ph ], [ %.035, %bb.q ]
  %.031132 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.da, %bb.q ]
  %.090131 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dp, %bb.q ] ; 3 uses
  %i.ax = icmp ult ptr %.090131, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

.lr.ph.i:                                         ; preds = %bb.g, %bb.i
  %.079.i = phi ptr [ %i.ay, %bb.i ], [ %.090131, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = load i32, ptr %2, align 4, !tbaa !66
  %i.bd = and i32 %i.bc, 1
  %i.be = icmp eq i32 %i.bd, 0                    ; 2 uses
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.be, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i: ; preds = %bb.h
  %i.bg = icmp eq i32 %i.bf, 8
  br i1 %i.bg, label %.thread41.i.i.i.i, label %.thread.i.i.i.i, !prof !18

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i: ; preds = %bb.h
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !38
  %i.bj = icmp eq i32 %i.bf, %i.bi
  br i1 %i.bj, label %.thread41.i.i.i.i, label %.thread52.i.i.i.i, !prof !18

.thread52.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i
  %.pre3854.i.i.i.i = add nsw i32 %i.bf, 1
  br label %bb.i

.thread41.i.i.i.i:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  %i.bk = add nsw i32 %i.bf, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.be, i32 noundef %i.bf, i32 noundef %i.bk)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.i

.thread.i.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i
  %.pre38.i.i.i.i = add nsw i32 %i.bf, 1
  br label %bb.i

bb.i:                                             ; preds = %.thread52.i.i.i.i, %.thread41.i.i.i.i, %.thread.i.i.i.i
  %.sink217.sink = phi i32 [ %.pre38.i.i.i.i, %.thread.i.i.i.i ], [ %i.bk, %.thread41.i.i.i.i ], [ %.pre3854.i.i.i.i, %.thread52.i.i.i.i ]
  %.pre36.i.i.i.i.sink.sink = phi i32 [ %i.bf, %.thread.i.i.i.i ], [ %.pre36.i.i.i.i, %.thread41.i.i.i.i ], [ %i.bf, %.thread52.i.i.i.i ]
  %i.bm = phi ptr [ %2, %.thread.i.i.i.i ], [ %i.bl, %.thread41.i.i.i.i ], [ %i.bh, %.thread52.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = zext i1 %i.bb to i8
  store i32 %.sink217.sink, ptr %i.at, align 4, !tbaa !68
  %i.bp = sext i32 %.pre36.i.i.i.i.sink.sink to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  store i8 %i.bo, ptr %i.bq, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.br = icmp ult ptr %i.ay, %i.aw
  br i1 %i.br, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit: ; preds = %bb.i
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !17
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit, %bb.g
  %i.bs = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ] ; 2 uses
  %.2.i100 = phi ptr [ %.090131, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98.loopexit ]
  %i.bt = ptrtoint ptr %.2.i100 to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = sub nsw i32 %.031132, %.035133          ; 3 uses
  %i.bx = icmp slt i32 %i.bw, 17
  br i1 %i.bx, label %bb.j, label %bb.o

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.d, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bs, i64 16, i1 false)
  %i.by = sext i32 %i.bw to i64                   ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %sext44 = shl i64 %i.bv, 32
  %i.ca = ashr exact i64 %sext44, 32              ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.d, i64 %i.ca ; 2 uses
  %i.cc = icmp slt i64 %i.ca, %i.by
  br i1 %i.cc, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

.lr.ph.i47:                                       ; preds = %bb.j, %bb.l
  %.079.i48 = phi ptr [ %i.cd, %bb.l ], [ %i.cb, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.cd = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i48, ptr noundef nonnull %i.b) ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, label %bb.k

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread: ; preds = %.lr.ph.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.i47
  %i.cf = load i64, ptr %i.b, align 8, !tbaa !28
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = load i32, ptr %2, align 4, !tbaa !66
  %i.ci = and i32 %i.ch, 1
  %i.cj = icmp eq i32 %i.ci, 0                    ; 2 uses
  %i.ck = load i32, ptr %i.at, align 4, !tbaa !68 ; 8 uses
  br i1 %i.cj, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i61, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i49

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i61: ; preds = %bb.k
  %i.cl = icmp eq i32 %i.ck, 8
  br i1 %i.cl, label %.thread41.i.i.i.i57, label %.thread.i.i.i.i62, !prof !18

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i49: ; preds = %bb.k
  %i.cm = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !38
  %i.co = icmp eq i32 %i.ck, %i.cn
  br i1 %i.co, label %.thread41.i.i.i.i57, label %.thread52.i.i.i.i50, !prof !18

.thread52.i.i.i.i50:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i49
  %.pre3854.i.i.i.i51 = add nsw i32 %i.ck, 1
  br label %bb.l

.thread41.i.i.i.i57:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i49, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i61
  %i.cp = add nsw i32 %i.ck, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.cj, i32 noundef %i.ck, i32 noundef %i.cp)
  %i.cq = load ptr, ptr %i.au, align 8, !tbaa !38
  %.pre36.i.i.i.i58 = load i32, ptr %i.at, align 4, !tbaa !68
  br label %bb.l

.thread.i.i.i.i62:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i61
  %.pre38.i.i.i.i63 = add nsw i32 %i.ck, 1
  br label %bb.l

bb.l:                                             ; preds = %.thread52.i.i.i.i50, %.thread41.i.i.i.i57, %.thread.i.i.i.i62
  %.sink224.sink = phi i32 [ %.pre38.i.i.i.i63, %.thread.i.i.i.i62 ], [ %i.cp, %.thread41.i.i.i.i57 ], [ %.pre3854.i.i.i.i51, %.thread52.i.i.i.i50 ]
  %.pre36.i.i.i.i58.sink.sink = phi i32 [ %i.ck, %.thread.i.i.i.i62 ], [ %.pre36.i.i.i.i58, %.thread41.i.i.i.i57 ], [ %i.ck, %.thread52.i.i.i.i50 ]
  %i.cr = phi ptr [ %2, %.thread.i.i.i.i62 ], [ %i.cq, %.thread41.i.i.i.i57 ], [ %i.cm, %.thread52.i.i.i.i50 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = zext i1 %i.cg to i8
  store i32 %.sink224.sink, ptr %i.at, align 4, !tbaa !68
  %i.cu = sext i32 %.pre36.i.i.i.i58.sink.sink to i64
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu
  store i8 %i.ct, ptr %i.cv, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cw = icmp ult ptr %i.cd, %i.bz
  br i1 %i.cw, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65: ; preds = %bb.l, %bb.j
  %.2.i46 = phi ptr [ %i.cb, %bb.j ], [ %i.cd, %bb.l ]
  %.not45 = icmp eq ptr %.2.i46, %i.bz
  br i1 %.not45, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65
  %i.cx = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.by
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65, %bb.m
  %.1 = phi ptr [ %i.cy, %bb.m ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65 ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit65.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.o:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread98
  %i.cz = trunc i64 %i.bv to i32
  %i.da = sub i32 %i.bw, %i.cz                    ; 3 uses
  %i.db = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dc = icmp slt i32 %i.db, 17
  br i1 %i.dc, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  %i.df = load ptr, ptr %i.an, align 8, !tbaa !17 ; 4 uses
  br i1 %i.de, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, label %bb.q

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread: ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.dg, align 8, !tbaa !47
  store ptr %i.df, ptr %0, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.q:                                             ; preds = %bb.p
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %.neg.i = sub i64 %i.di, %i.dh
  %i.dj = load i32, ptr %i.av, align 4, !tbaa !19
  %i.dk = trunc i64 %.neg.i to i32
  %i.dl = add i32 %i.dj, %i.dk                    ; 2 uses
  store i32 %i.dl, ptr %i.av, align 4, !tbaa !19
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.dl, i32 0)
  %i.dm = sext i32 %.sroa.speculated.i to i64
  %i.dn = getelementptr inbounds i8, ptr %i.df, i64 %i.dm
  store ptr %i.dn, ptr %0, align 8, !tbaa !20
  %sext = shl i64 %i.bv, 32
  %i.do = ashr exact i64 %sext, 32
  %i.dp = getelementptr inbounds i8, ptr %i.dd, i64 %i.do ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dh, %i.dq
  %.035 = trunc i64 %i.dr to i32                  ; 2 uses
  %i.ds = icmp sgt i32 %i.da, %.035
  br i1 %i.ds, label %bb.g, label %._crit_edge, !llvm.loop !155

._crit_edge:                                      ; preds = %bb.q, %bb.f
  %.090.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dp, %bb.q ] ; 3 uses
  %.031.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.da, %bb.q ] ; 2 uses
  %i.dt = sext i32 %.031.lcssa to i64
  %i.du = getelementptr inbounds i8, ptr %.090.lcssa, i64 %i.dt ; 2 uses
  %i.dv = icmp sgt i32 %.031.lcssa, 0
  br i1 %i.dv, label %.lr.ph.i67, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

.lr.ph.i67:                                       ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.lr.ph.i67
  %.079.i68 = phi ptr [ %.090.lcssa, %.lr.ph.i67 ], [ %i.dy, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.dy = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i68, ptr noundef nonnull %i.a) ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.thread.i84, label %bb.s

.thread.i84:                                      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

bb.s:                                             ; preds = %bb.r
  %i.ea = load i64, ptr %i.a, align 8, !tbaa !28
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = load i32, ptr %2, align 4, !tbaa !66
  %i.ed = and i32 %i.ec, 1
  %i.ee = icmp eq i32 %i.ed, 0                    ; 2 uses
  %i.ef = load i32, ptr %i.dw, align 4, !tbaa !68 ; 8 uses
  br i1 %i.ee, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81: ; preds = %bb.s
  %i.eg = icmp eq i32 %i.ef, 8
  br i1 %i.eg, label %.thread41.i.i.i.i77, label %.thread.i.i.i.i82, !prof !18

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69: ; preds = %bb.s
  %i.eh = load ptr, ptr %i.dx, align 8, !tbaa !38 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !38
  %i.ej = icmp eq i32 %i.ef, %i.ei
  br i1 %i.ej, label %.thread41.i.i.i.i77, label %.thread52.i.i.i.i70, !prof !18

.thread52.i.i.i.i70:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69
  %.pre3854.i.i.i.i71 = add nsw i32 %i.ef, 1
  br label %bb.t

.thread41.i.i.i.i77:                              ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i.i69, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81
  %i.ek = add nsw i32 %i.ef, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ee, i32 noundef %i.ef, i32 noundef %i.ek)
  %i.el = load ptr, ptr %i.dx, align 8, !tbaa !38
  %.pre36.i.i.i.i78 = load i32, ptr %i.dw, align 4, !tbaa !68
  br label %bb.t

.thread.i.i.i.i82:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i.i81
  %.pre38.i.i.i.i83 = add nsw i32 %i.ef, 1
  br label %bb.t

bb.t:                                             ; preds = %.thread52.i.i.i.i70, %.thread41.i.i.i.i77, %.thread.i.i.i.i82
  %.sink232.sink = phi i32 [ %.pre38.i.i.i.i83, %.thread.i.i.i.i82 ], [ %i.ek, %.thread41.i.i.i.i77 ], [ %.pre3854.i.i.i.i71, %.thread52.i.i.i.i70 ]
  %.pre36.i.i.i.i78.sink.sink = phi i32 [ %i.ef, %.thread.i.i.i.i82 ], [ %.pre36.i.i.i.i78, %.thread41.i.i.i.i77 ], [ %i.ef, %.thread52.i.i.i.i70 ]
  %i.em = phi ptr [ %2, %.thread.i.i.i.i82 ], [ %i.el, %.thread41.i.i.i.i77 ], [ %i.eh, %.thread52.i.i.i.i70 ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = zext i1 %i.eb to i8
  store i32 %.sink232.sink, ptr %i.dw, align 4, !tbaa !68
  %i.ep = sext i32 %.pre36.i.i.i.i78.sink.sink to i64
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %i.ep
  store i8 %i.eo, ptr %i.eq, align 1, !tbaa !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.er = icmp ult ptr %i.dy, %i.du
  br i1 %i.er, label %bb.r, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85: ; preds = %bb.t, %._crit_edge, %.thread.i84
  %.2.i66 = phi ptr [ null, %.thread.i84 ], [ %.090.lcssa, %._crit_edge ], [ %i.dy, %bb.t ] ; 2 uses
  %i.es = icmp eq ptr %i.du, %.2.i66
  %i.et = select i1 %i.es, ptr %.2.i66, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread, %bb.n, %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85
  %.4 = phi ptr [ %.1, %bb.n ], [ %i.et, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit85 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvPNS0_5ArenaES6_PNS1_12ParseContextEEUlmE_EES6_S6_S6_T_.exit.thread ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread ], [ null, %bb.o ]
  ret ptr %.4
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateIPNS0_5ArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !69

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !72
  %i.n = load i64, ptr %1, align 8, !tbaa !98
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 16, !tbaa !99
  br label %bb.f

_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i: ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaSlowEv(ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.s = add nuw nsw i64 %i.i, 8
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #22
  br label %_ZN6google8protobuf8internal11SerialArena15AllocateAlignedILNS1_16AllocationClientE1EEEPvm.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.r, %_ZN6google8protobuf8internal15ThreadSafeArena18GetSerialArenaFastEPPNS1_11SerialArenaE.exit.i.i.i ] ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i) ]
  %i.u = add nuw nsw i64 %i.i, 15
  %i.v = and i64 %i.u, 4294967288                 ; 4 uses
  %i.w = add nsw i64 %i.v, -1
  %i.x = tail call range(i64 0, 62) i64 @llvm.ctlz.i64(i64 %i.w, i1 true)
  %i.y = sub nuw nsw i64 60, %i.x                 ; 2 uses
  %i.z = load i8, ptr %.0.i.i.i, align 8, !tbaa !100
  %i.aa = zext i8 %i.z to i64
  %.not.i.i = icmp samesign ult i64 %i.y, %i.aa
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !48

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.y ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
end_hunk_4
