Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/parse_context?download=true
inline.NumInlined: 226
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_:bb.a
  br i1 %i.az, label %.critedge.6.i.i, label %bb.f, !prof !30

.critedge.6.i.i:                                  ; preds = %.critedge.5.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !29  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw i64 %i.bc, 56
  %i.be = add nsw i64 %i.ay, -72057594037927936
  %i.bf = add i64 %i.be, %i.bd                    ; 2 uses
  %i.bg = icmp slt i8 %i.bb, 0
  br i1 %i.bg, label %.critedge.7.i.i, label %bb.f, !prof !30

.critedge.7.i.i:                                  ; preds = %.critedge.6.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !29  ; 2 uses
  %i.bj = xor i8 %i.bi, -1
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl i64 %i.bk, 63
  %i.bm = add i64 %i.bl, %i.bf
  %i.bn = icmp slt i8 %i.bi, 0
  br i1 %i.bn, label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %.critedge.7.i.i, %.critedge.6.i.i, %.critedge.5.i.i, %.critedge.4.i.i, %.critedge.3.i.i, %.critedge.2.i.i, %.critedge.1.i.i, %bb.e
  %.lcssa22.i.i = phi i64 [ 2, %bb.e ], [ 3, %.critedge.1.i.i ], [ 4, %.critedge.2.i.i ], [ 5, %.critedge.3.i.i ], [ 6, %.critedge.4.i.i ], [ 7, %.critedge.5.i.i ], [ 8, %.critedge.6.i.i ], [ 9, %.critedge.7.i.i ]
  %.lcssa.i.i = phi i64 [ %i.p, %bb.e ], [ %i.w, %.critedge.1.i.i ], [ %i.ad, %.critedge.2.i.i ], [ %i.ak, %.critedge.3.i.i ], [ %i.ar, %.critedge.4.i.i ], [ %i.ay, %.critedge.5.i.i ], [ %i.bf, %.critedge.6.i.i ], [ %i.bm, %.critedge.7.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa22.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  br label %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit

_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit: ; preds = %.critedge.7.i.i, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.bp, %bb.f ], [ null, %.critedge.7.i.i ]
  %.sroa.3.0.i.i = phi i64 [ %.lcssa.i.i, %bb.f ], [ 0, %.critedge.7.i.i ]
  store i64 %.sroa.3.0.i.i, ptr %1, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.sroa.0.0.i.i, %_ZN6google8protobuf8internal15VarintParseSlowEPKcjPm.exit ], [ %i.j, %bb.d ]
  ret ptr %.1
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf8internal23IsStructurallyValidUTF8EPKci(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb0EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.cy, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cr, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.cx, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !50
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = add i32 %i.bc, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bf)
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.bh = zext i32 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.bk = zext i32 %i.bc to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  store i32 %i.bb, ptr %i.bl, align 4, !tbaa !36
  %.pre.i.i.i = add i32 %i.bc, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.bf, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bm = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bm, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bn = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bo = ptrtoint ptr %.2.i76 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.bs = icmp slt i32 %i.br, 17
  br i1 %i.bs, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i64 16, i1 false)
  %i.bt = sext i32 %i.br to i64                   ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.d, i64 %i.bt ; 2 uses
  %sext47 = shl i64 %i.bq, 32
  %i.bv = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.d, i64 %i.bv ; 2 uses
  %i.bx = icmp slt i64 %i.bv, %i.bt
  br i1 %i.bx, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.by, %bb.p ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.by = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !37
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.cd = load i32, ptr %i.at, align 4, !tbaa !50
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = add i32 %i.cc, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.ch = zext i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !36
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.ck = zext i32 %i.cc to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  store i32 %i.cb, ptr %i.cl, align 4, !tbaa !36
  %.pre.i.i.i52 = add i32 %i.cc, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cf, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cm = icmp ult ptr %i.by, %i.bu
  br i1 %i.cm, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bw, %bb.l ], [ %i.by, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bu
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cn = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.bt
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.co, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cp = trunc i64 %i.bq to i32
  %i.cq = add i32 %.040102, %i.cp
  %i.cr = sub i32 %.032101, %i.cq                 ; 3 uses
  %i.cs = load i32, ptr %i.av, align 4, !tbaa !28
  %i.ct = icmp slt i32 %i.cs, 17
  br i1 %i.ct, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bq, 32
  %i.cw = ashr exact i64 %sext, 32
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %.040 = trunc i64 %i.db to i32                  ; 2 uses
  %i.dc = icmp sgt i32 %i.cr, %.040
  br i1 %i.dc, label %bb.g, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.cx, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cr, %bb.u ] ; 2 uses
  %i.dd = sext i32 %.032.lcssa to i64
  %i.de = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.dd ; 2 uses
  %i.df = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.df, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.di, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.di = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !37
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.dn = load i32, ptr %i.dg, align 4, !tbaa !50
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dp = add i32 %i.dm, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dp)
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !51
  %i.dr = zext i32 %i.dm to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %i.dl, ptr %i.ds, align 4, !tbaa !36
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !51
  %i.du = zext i32 %i.dm to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  store i32 %i.dl, ptr %i.dv, align 4, !tbaa !36
  %.pre.i.i.i59 = add i32 %i.dm, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.dp, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dw = icmp ult ptr %i.di, %i.de
  br i1 %i.dw, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.di, %bb.z ] ; 2 uses
  %i.dx = icmp eq ptr %i.de, %.2.i56
  %i.dy = select i1 %i.dx, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.dy, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIjLb0EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.cy, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cr, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.cx, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = load i32, ptr %2, align 8, !tbaa !53    ; 5 uses
  %i.bd = load i32, ptr %i.at, align 4, !tbaa !70
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bf = add i32 %i.bc, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bf)
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.bh = zext i32 %i.bc to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.bk = zext i32 %i.bc to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  store i32 %i.bb, ptr %i.bl, align 4, !tbaa !36
  %.pre.i.i.i = add i32 %i.bc, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.bf, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bm = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bm, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bn = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bo = ptrtoint ptr %.2.i76 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.bs = icmp slt i32 %i.br, 17
  br i1 %i.bs, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bn, i64 16, i1 false)
  %i.bt = sext i32 %i.br to i64                   ; 3 uses
  %i.bu = getelementptr inbounds i8, ptr %i.d, i64 %i.bt ; 2 uses
  %sext47 = shl i64 %i.bq, 32
  %i.bv = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.d, i64 %i.bv ; 2 uses
  %i.bx = icmp slt i64 %i.bv, %i.bt
  br i1 %i.bx, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.by, %bb.p ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.by = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !37
  %i.cb = trunc i64 %i.ca to i32                  ; 2 uses
  %i.cc = load i32, ptr %2, align 8, !tbaa !53    ; 5 uses
  %i.cd = load i32, ptr %i.at, align 4, !tbaa !70
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = add i32 %i.cc, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cf)
  %i.cg = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.ch = zext i32 %i.cc to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ch
  store i32 %i.cb, ptr %i.ci, align 4, !tbaa !36
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !54
  %i.ck = zext i32 %i.cc to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  store i32 %i.cb, ptr %i.cl, align 4, !tbaa !36
  %.pre.i.i.i52 = add i32 %i.cc, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cf, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cm = icmp ult ptr %i.by, %i.bu
  br i1 %i.cm, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bw, %bb.l ], [ %i.by, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bu
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cn = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.bt
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.co, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cp = trunc i64 %i.bq to i32
  %i.cq = add i32 %.040102, %i.cp
  %i.cr = sub i32 %.032101, %i.cq                 ; 3 uses
  %i.cs = load i32, ptr %i.av, align 4, !tbaa !28
  %i.ct = icmp slt i32 %i.cs, 17
  br i1 %i.ct, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bq, 32
  %i.cw = ashr exact i64 %sext, 32
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 %i.cw ; 3 uses
  %i.cy = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %.040 = trunc i64 %i.db to i32                  ; 2 uses
  %i.dc = icmp sgt i32 %i.cr, %.040
  br i1 %i.dc, label %bb.g, label %._crit_edge, !llvm.loop !69

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.cx, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cr, %bb.u ] ; 2 uses
  %i.dd = sext i32 %.032.lcssa to i64
  %i.de = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.dd ; 2 uses
  %i.df = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.df, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.di, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.di = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !37
  %i.dl = trunc i64 %i.dk to i32                  ; 2 uses
  %i.dm = load i32, ptr %2, align 8, !tbaa !53    ; 5 uses
  %i.dn = load i32, ptr %i.dg, align 4, !tbaa !70
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dp = add i32 %i.dm, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dp)
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !54
  %i.dr = zext i32 %i.dm to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 %i.dl, ptr %i.ds, align 4, !tbaa !36
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dt = load ptr, ptr %i.dh, align 8, !tbaa !54
  %i.du = zext i32 %i.dm to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  store i32 %i.dl, ptr %i.dv, align 4, !tbaa !36
  %.pre.i.i.i59 = add i32 %i.dm, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.dp, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dw = icmp ult ptr %i.di, %i.de
  br i1 %i.dw, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.di, %bb.z ] ; 2 uses
  %i.dx = icmp eq ptr %i.de, %.2.i56
  %i.dy = select i1 %i.dx, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.dy, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIjLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

declare void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb0EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.cw, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cp, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.cv, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.bb = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !57
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = add i32 %i.bb, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.be)
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store i64 %i.ba, ptr %i.bh, align 8, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.bj = zext i32 %i.bb to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  store i64 %i.ba, ptr %i.bk, align 8, !tbaa !37
  %.pre.i.i.i = add i32 %i.bb, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.be, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bl = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bl, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bm = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bn = ptrtoint ptr %.2.i76 to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.br = icmp slt i32 %i.bq, 17
  br i1 %i.br, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bs = sext i32 %i.bq to i64                   ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.d, i64 %i.bs ; 2 uses
  %sext47 = shl i64 %i.bp, 32
  %i.bu = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = icmp slt i64 %i.bu, %i.bs
  br i1 %i.bw, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.bx, %bb.p ], [ %i.bv, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bx = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ca = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.cb = load i32, ptr %i.at, align 4, !tbaa !57
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = add i32 %i.ca, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cd)
  %i.ce = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  store i64 %i.bz, ptr %i.cg, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.ci = zext i32 %i.ca to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  store i64 %i.bz, ptr %i.cj, align 8, !tbaa !37
  %.pre.i.i.i52 = add i32 %i.ca, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cd, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ck = icmp ult ptr %i.bx, %i.bt
  br i1 %i.ck, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bv, %bb.l ], [ %i.bx, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bt
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.bs
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.cm, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cn = trunc i64 %i.bp to i32
  %i.co = add i32 %.040102, %i.cn
  %i.cp = sub i32 %.032101, %i.co                 ; 3 uses
  %i.cq = load i32, ptr %i.av, align 4, !tbaa !28
  %i.cr = icmp slt i32 %i.cq, 17
  br i1 %i.cr, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bp, 32
  %i.cu = ashr exact i64 %sext, 32
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.040 = trunc i64 %i.cz to i32                  ; 2 uses
  %i.da = icmp sgt i32 %i.cp, %.040
  br i1 %i.da, label %bb.g, label %._crit_edge, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.cv, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cp, %bb.u ] ; 2 uses
  %i.db = sext i32 %.032.lcssa to i64
  %i.dc = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.db ; 2 uses
  %i.dd = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.dd, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.dg, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dg = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.di = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.dj = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.dk = load i32, ptr %i.de, align 4, !tbaa !57
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = add i32 %i.dj, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dm)
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !58
  %i.do = zext i32 %i.dj to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !37
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !58
  %i.dr = zext i32 %i.dj to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  store i64 %i.di, ptr %i.ds, align 8, !tbaa !37
  %.pre.i.i.i59 = add i32 %i.dj, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.dm, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dt = icmp ult ptr %i.dg, %i.dc
  br i1 %i.dt, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.dg, %bb.z ] ; 2 uses
  %i.du = icmp eq ptr %i.dc, %.2.i56
  %i.dv = select i1 %i.du, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.dv, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

declare void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserImLb0EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.cw, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cp, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.cv, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.bb = load i32, ptr %2, align 8, !tbaa !60    ; 5 uses
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !73
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = add i32 %i.bb, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.be)
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.bg = zext i32 %i.bb to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store i64 %i.ba, ptr %i.bh, align 8, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bi = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.bj = zext i32 %i.bb to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  store i64 %i.ba, ptr %i.bk, align 8, !tbaa !37
  %.pre.i.i.i = add i32 %i.bb, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.be, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bl = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bl, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bm = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bn = ptrtoint ptr %.2.i76 to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.br = icmp slt i32 %i.bq, 17
  br i1 %i.br, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bm, i64 16, i1 false)
  %i.bs = sext i32 %i.bq to i64                   ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.d, i64 %i.bs ; 2 uses
  %sext47 = shl i64 %i.bp, 32
  %i.bu = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu ; 2 uses
  %i.bw = icmp slt i64 %i.bu, %i.bs
  br i1 %i.bw, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.bx, %bb.p ], [ %i.bv, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bx = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ca = load i32, ptr %2, align 8, !tbaa !60    ; 5 uses
  %i.cb = load i32, ptr %i.at, align 4, !tbaa !73
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cd = add i32 %i.ca, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cd)
  %i.ce = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.cf = zext i32 %i.ca to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  store i64 %i.bz, ptr %i.cg, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !61
  %i.ci = zext i32 %i.ca to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ci
  store i64 %i.bz, ptr %i.cj, align 8, !tbaa !37
  %.pre.i.i.i52 = add i32 %i.ca, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cd, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ck = icmp ult ptr %i.bx, %i.bt
  br i1 %i.ck, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bv, %bb.l ], [ %i.bx, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bt
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cl = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.bs
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.cm, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cn = trunc i64 %i.bp to i32
  %i.co = add i32 %.040102, %i.cn
  %i.cp = sub i32 %.032101, %i.co                 ; 3 uses
  %i.cq = load i32, ptr %i.av, align 4, !tbaa !28
  %i.cr = icmp slt i32 %i.cq, 17
  br i1 %i.cr, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bp, 32
  %i.cu = ashr exact i64 %sext, 32
  %i.cv = getelementptr inbounds i8, ptr %i.cs, i64 %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.040 = trunc i64 %i.cz to i32                  ; 2 uses
  %i.da = icmp sgt i32 %i.cp, %.040
  br i1 %i.da, label %bb.g, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.cv, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cp, %bb.u ] ; 2 uses
  %i.db = sext i32 %.032.lcssa to i64
  %i.dc = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.db ; 2 uses
  %i.dd = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.dd, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.dg, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dg = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.di = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.dj = load i32, ptr %2, align 8, !tbaa !60    ; 5 uses
  %i.dk = load i32, ptr %i.de, align 4, !tbaa !73
  %i.dl = icmp eq i32 %i.dj, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dm = add i32 %i.dj, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dm)
  %i.dn = load ptr, ptr %i.df, align 8, !tbaa !61
  %i.do = zext i32 %i.dj to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.do
  store i64 %i.di, ptr %i.dp, align 8, !tbaa !37
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !61
  %i.dr = zext i32 %i.dj to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  store i64 %i.di, ptr %i.ds, align 8, !tbaa !37
  %.pre.i.i.i59 = add i32 %i.dj, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.dm, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dt = icmp ult ptr %i.dg, %i.dc
  br i1 %i.dt, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.dg, %bb.z ] ; 2 uses
  %i.du = icmp eq ptr %i.dc, %.2.i56
  %i.dv = select i1 %i.du, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.dv, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserImLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

declare void @_ZN6google8protobuf13RepeatedFieldImE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIiLb1EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.dg, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cz, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.df, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = lshr i32 %i.bb, 1
  %i.bd = and i32 %i.bb, 1
  %i.be = sub nsw i32 0, %i.bd
  %i.bf = xor i32 %i.bc, %i.be                    ; 2 uses
  %i.bg = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.bh = load i32, ptr %i.at, align 4, !tbaa !50
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = add i32 %i.bg, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  store i32 %i.bf, ptr %i.bm, align 4, !tbaa !36
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.bo = zext i32 %i.bg to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  store i32 %i.bf, ptr %i.bp, align 4, !tbaa !36
  %.pre.i.i.i = add i32 %i.bg, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.bj, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bq = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bq, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.br = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bs = ptrtoint ptr %.2.i76 to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 17
  br i1 %i.bw, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.br, i64 16, i1 false)
  %i.bx = sext i32 %i.bv to i64                   ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.d, i64 %i.bx ; 2 uses
  %sext47 = shl i64 %i.bu, 32
  %i.bz = ashr exact i64 %sext47, 32              ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.d, i64 %i.bz ; 2 uses
  %i.cb = icmp slt i64 %i.bz, %i.bx
  br i1 %i.cb, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.cc, %bb.p ], [ %i.ca, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cc = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !37
  %i.cf = trunc i64 %i.ce to i32                  ; 2 uses
  %i.cg = lshr i32 %i.cf, 1
  %i.ch = and i32 %i.cf, 1
  %i.ci = sub nsw i32 0, %i.ch
  %i.cj = xor i32 %i.cg, %i.ci                    ; 2 uses
  %i.ck = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.cl = load i32, ptr %i.at, align 4, !tbaa !50
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = add i32 %i.ck, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cn)
  %i.co = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.cp = zext i32 %i.ck to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  store i32 %i.cj, ptr %i.cq, align 4, !tbaa !36
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.cs = zext i32 %i.ck to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cs
  store i32 %i.cj, ptr %i.ct, align 4, !tbaa !36
  %.pre.i.i.i52 = add i32 %i.ck, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cn, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cu = icmp ult ptr %i.cc, %i.by
  br i1 %i.cu, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.ca, %bb.l ], [ %i.cc, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.by
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cv = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 %i.bx
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.cw, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cx = trunc i64 %i.bu to i32
  %i.cy = add i32 %.040102, %i.cx
  %i.cz = sub i32 %.032101, %i.cy                 ; 3 uses
  %i.da = load i32, ptr %i.av, align 4, !tbaa !28
  %i.db = icmp slt i32 %i.da, 17
  br i1 %i.db, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bu, 32
  %i.de = ashr exact i64 %sext, 32
  %i.df = getelementptr inbounds i8, ptr %i.dc, i64 %i.de ; 3 uses
  %i.dg = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %.040 = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dk = icmp sgt i32 %i.cz, %.040
  br i1 %i.dk, label %bb.g, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.df, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cz, %bb.u ] ; 2 uses
  %i.dl = sext i32 %.032.lcssa to i64
  %i.dm = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.dl ; 2 uses
  %i.dn = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.dn, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.dq, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dq = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !37
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = lshr i32 %i.dt, 1
  %i.dv = and i32 %i.dt, 1
  %i.dw = sub nsw i32 0, %i.dv
  %i.dx = xor i32 %i.du, %i.dw                    ; 2 uses
  %i.dy = load i32, ptr %2, align 8, !tbaa !49    ; 5 uses
  %i.dz = load i32, ptr %i.do, align 4, !tbaa !50
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eb = add i32 %i.dy, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.eb)
  %i.ec = load ptr, ptr %i.dp, align 8, !tbaa !51
  %i.ed = zext i32 %i.dy to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ed
  store i32 %i.dx, ptr %i.ee, align 4, !tbaa !36
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !51
  %i.eg = zext i32 %i.dy to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eg
  store i32 %i.dx, ptr %i.eh, align 4, !tbaa !36
  %.pre.i.i.i59 = add i32 %i.dy, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.eb, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ei = icmp ult ptr %i.dq, %i.dm
  br i1 %i.ei, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.dq, %bb.z ] ; 2 uses
  %i.ej = icmp eq ptr %i.dm, %.2.i56
  %i.ek = select i1 %i.ej, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.ek, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIiLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIlLb1EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.de, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.cx, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.dd, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = and i64 %i.ba, 1
  %i.bd = sub nsw i64 0, %i.bc
  %i.be = xor i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.bg = load i32, ptr %i.at, align 4, !tbaa !57
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = add i32 %i.bf, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bi)
  %i.bj = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.bk = zext i32 %i.bf to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk
  store i64 %i.be, ptr %i.bl, align 8, !tbaa !37
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bm = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.bn = zext i32 %i.bf to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store i64 %i.be, ptr %i.bo, align 8, !tbaa !37
  %.pre.i.i.i = add i32 %i.bf, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.bi, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bp = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bp, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bq = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.br = ptrtoint ptr %.2.i76 to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 17
  br i1 %i.bv, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bq, i64 16, i1 false)
  %i.bw = sext i32 %i.bu to i64                   ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %sext47 = shl i64 %i.bt, 32
  %i.by = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by ; 2 uses
  %i.ca = icmp slt i64 %i.by, %i.bw
  br i1 %i.ca, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.cb, %bb.p ], [ %i.bz, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cb = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.cd = load i64, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = and i64 %i.cd, 1
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = xor i64 %i.ce, %i.cg                    ; 2 uses
  %i.ci = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.cj = load i32, ptr %i.at, align 4, !tbaa !57
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = add i32 %i.ci, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.cl)
  %i.cm = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.cn = zext i32 %i.ci to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  store i64 %i.ch, ptr %i.co, align 8, !tbaa !37
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cp = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.cq = zext i32 %i.ci to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  store i64 %i.ch, ptr %i.cr, align 8, !tbaa !37
  %.pre.i.i.i52 = add i32 %i.ci, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.cl, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cs = icmp ult ptr %i.cb, %i.bx
  br i1 %i.cs, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bz, %bb.l ], [ %i.cb, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bx
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bw
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.cu, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cv = trunc i64 %i.bt to i32
  %i.cw = add i32 %.040102, %i.cv
  %i.cx = sub i32 %.032101, %i.cw                 ; 3 uses
  %i.cy = load i32, ptr %i.av, align 4, !tbaa !28
  %i.cz = icmp slt i32 %i.cy, 17
  br i1 %i.cz, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.da = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.bt, 32
  %i.dc = ashr exact i64 %sext, 32
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc ; 3 uses
  %i.de = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.040 = trunc i64 %i.dh to i32                  ; 2 uses
  %i.di = icmp sgt i32 %i.cx, %.040
  br i1 %i.di, label %bb.g, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.dd, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.cx, %bb.u ] ; 2 uses
  %i.dj = sext i32 %.032.lcssa to i64
  %i.dk = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.dj ; 2 uses
  %i.dl = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.dl, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.do, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.do = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.dq = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %i.dr = lshr i64 %i.dq, 1
  %i.ds = and i64 %i.dq, 1
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = xor i64 %i.dr, %i.dt                    ; 2 uses
  %i.dv = load i32, ptr %2, align 8, !tbaa !56    ; 5 uses
  %i.dw = load i32, ptr %i.dm, align 4, !tbaa !57
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = add i32 %i.dv, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIlE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dy)
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !58
  %i.ea = zext i32 %i.dv to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea
  store i64 %i.du, ptr %i.eb, align 8, !tbaa !37
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ec = load ptr, ptr %i.dn, align 8, !tbaa !58
  %i.ed = zext i32 %i.dv to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  store i64 %i.du, ptr %i.ee, align 8, !tbaa !37
  %.pre.i.i.i59 = add i32 %i.dv, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.dy, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ef = icmp ult ptr %i.do, %i.dk
  br i1 %i.ef, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.do, %bb.z ] ; 2 uses
  %i.eg = icmp eq ptr %i.dk, %.2.i56
  %i.eh = select i1 %i.eg, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.eh, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIlLb1EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_12VarintParserIbLb0EEEPKcPvS6_PNS1_12ParseContextEEUlmE_EES6_S6_T_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [26 x i8], align 16               ; 6 uses
  %i.e = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = icmp sgt i8 %i.e, -1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.h, align 1, !tbaa !29    ; 2 uses
  %i.j = zext i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = add nsw i32 %i.f, -128
  %i.m = or disjoint i32 %i.k, %i.l               ; 2 uses
  %i.n = icmp slt i8 %i.i, 0
  br i1 %i.n, label %.critedge.1.i.i, label %bb.d, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = add nsw i32 %i.m, -16384
  %i.t = or disjoint i32 %i.r, %i.s               ; 2 uses
  %i.u = icmp slt i8 %i.p, 0
  br i1 %i.u, label %.critedge.2.i.i, label %bb.d, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !29    ; 2 uses
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = add nsw i32 %i.t, -2097152
  %i.aa = add nsw i32 %i.z, %i.y                  ; 2 uses
  %i.ab = icmp slt i8 %i.w, 0
  br i1 %i.ab, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !29  ; 2 uses
  %i.ae = icmp ugt i8 %i.ad, 7
  br i1 %i.ae, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.e, !prof !30

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
  br i1 %i.al, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph = phi ptr [ %i.h, %bb.a ], [ %i.ag, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.0.i.ph = phi i32 [ %i.f, %bb.a ], [ %.lcssa.i.i, %bb.d ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %storemerge.i.ph to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %.04099 = trunc i64 %i.ar to i32                ; 2 uses
  %i.as = icmp sgt i32 %.0.i.ph, %.04099
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %i.aw = phi ptr [ %i.ao, %.lr.ph ], [ %i.da, %bb.u ] ; 3 uses
  %.040102 = phi i32 [ %.04099, %.lr.ph ], [ %.040, %bb.u ] ; 2 uses
  %.032101 = phi i32 [ %.0.i.ph, %.lr.ph ], [ %i.ct, %bb.u ] ; 2 uses
  %.066100 = phi ptr [ %storemerge.i.ph, %.lr.ph ], [ %i.cz, %bb.u ] ; 3 uses
  %i.ax = icmp ult ptr %.066100, %i.aw
  br i1 %i.ax, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

.lr.ph.i:                                         ; preds = %bb.g, %bb.k
  %.079.i = phi ptr [ %i.ay, %bb.k ], [ %.066100, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ay = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i, ptr noundef nonnull %i.c) ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, label %bb.h

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !37
  %i.bb = icmp ne i64 %i.ba, 0
  %i.bc = zext i1 %i.bb to i8                     ; 2 uses
  %i.bd = load i32, ptr %2, align 8, !tbaa !78    ; 5 uses
  %i.be = load i32, ptr %i.at, align 4, !tbaa !79
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = add i32 %i.bd, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.bg)
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.bi = zext i32 %i.bd to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bi
  store i8 %i.bc, ptr %i.bj, align 1, !tbaa !82
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.bl = zext i32 %i.bd to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 %i.bc, ptr %i.bm, align 1, !tbaa !82
  %.pre.i.i.i = add i32 %i.bd, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i, %bb.j ], [ %i.bg, %bb.i ]
  store i32 %.pre-phi.i.i.i, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.bn = icmp ult ptr %i.ay, %i.aw
  br i1 %i.bn, label %.lr.ph.i, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit: ; preds = %bb.k
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74: ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit, %bb.g
  %i.bo = phi ptr [ %i.aw, %bb.g ], [ %.pre, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ] ; 2 uses
  %.2.i76 = phi ptr [ %.066100, %bb.g ], [ %i.ay, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74.loopexit ]
  %i.bp = ptrtoint ptr %.2.i76 to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = sub nsw i32 %.032101, %.040102          ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 17
  br i1 %i.bt, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.bo, i64 16, i1 false)
  %i.bu = sext i32 %i.bs to i64                   ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %i.d, i64 %i.bu ; 2 uses
  %sext47 = shl i64 %i.br, 32
  %i.bw = ashr exact i64 %sext47, 32              ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.d, i64 %i.bw ; 2 uses
  %i.by = icmp slt i64 %i.bw, %i.bu
  br i1 %i.by, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

.lr.ph.i50:                                       ; preds = %bb.l, %bb.p
  %.079.i51 = phi ptr [ %i.bz, %bb.p ], [ %i.bx, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bz = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.079.i51, ptr noundef nonnull %i.b) ; 4 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, label %bb.m

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread: ; preds = %.lr.ph.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph.i50
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !37
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i8                     ; 2 uses
  %i.ce = load i32, ptr %2, align 8, !tbaa !78    ; 5 uses
  %i.cf = load i32, ptr %i.at, align 4, !tbaa !79
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = add i32 %i.ce, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ch)
  %i.ci = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.cj = zext i32 %i.ce to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store i8 %i.cd, ptr %i.ck, align 1, !tbaa !82
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.au, align 8, !tbaa !80
  %i.cm = zext i32 %i.ce to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 %i.cd, ptr %i.cn, align 1, !tbaa !82
  %.pre.i.i.i52 = add i32 %i.ce, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre-phi.i.i.i53 = phi i32 [ %.pre.i.i.i52, %bb.o ], [ %i.ch, %bb.n ]
  store i32 %.pre-phi.i.i.i53, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.co = icmp ult ptr %i.bz, %i.bv
  br i1 %i.co, label %.lr.ph.i50, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55: ; preds = %bb.p, %bb.l
  %.2.i49 = phi ptr [ %i.bx, %bb.l ], [ %i.bz, %bb.p ]
  %.not48 = icmp eq ptr %.2.i49, %i.bv
  br i1 %.not48, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %i.bu
  br label %bb.r

bb.r:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55, %bb.q
  %.1 = phi ptr [ %i.cq, %bb.q ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55 ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

bb.s:                                             ; preds = %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread74
  %i.cr = trunc i64 %i.br to i32
  %i.cs = add i32 %.040102, %i.cr
  %i.ct = sub i32 %.032101, %i.cs                 ; 3 uses
  %i.cu = load i32, ptr %i.av, align 4, !tbaa !28
  %i.cv = icmp slt i32 %i.cu, 17
  br i1 %i.cv, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %sext = shl i64 %i.br, 32
  %i.cy = ashr exact i64 %sext, 32
  %i.cz = getelementptr inbounds i8, ptr %i.cw, i64 %i.cy ; 3 uses
  %i.da = load ptr, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  %.040 = trunc i64 %i.dd to i32                  ; 2 uses
  %i.de = icmp sgt i32 %i.ct, %.040
  br i1 %i.de, label %bb.g, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.u, %bb.f
  %.066.lcssa = phi ptr [ %storemerge.i.ph, %bb.f ], [ %i.cz, %bb.u ] ; 3 uses
  %.032.lcssa = phi i32 [ %.0.i.ph, %bb.f ], [ %i.ct, %bb.u ] ; 2 uses
  %i.df = sext i32 %.032.lcssa to i64
  %i.dg = getelementptr inbounds i8, ptr %.066.lcssa, i64 %i.df ; 2 uses
  %i.dh = icmp sgt i32 %.032.lcssa, 0
  br i1 %i.dh, label %.lr.ph.i57, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

.lr.ph.i57:                                       ; preds = %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.lr.ph.i57
  %.079.i58 = phi ptr [ %.066.lcssa, %.lr.ph.i57 ], [ %i.dk, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dk = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %.079.i58, ptr noundef nonnull %i.a) ; 4 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.thread.i61, label %bb.w

.thread.i61:                                      ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

bb.w:                                             ; preds = %bb.v
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !37
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = zext i1 %i.dn to i8                     ; 2 uses
  %i.dp = load i32, ptr %2, align 8, !tbaa !78    ; 5 uses
  %i.dq = load i32, ptr %i.di, align 4, !tbaa !79
  %i.dr = icmp eq i32 %i.dp, %i.dq
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ds = add i32 %i.dp, 1                        ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.ds)
  %i.dt = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.du = zext i32 %i.dp to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du
  store i8 %i.do, ptr %i.dv, align 1, !tbaa !82
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %i.dj, align 8, !tbaa !80
  %i.dx = zext i32 %i.dp to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store i8 %i.do, ptr %i.dy, align 1, !tbaa !82
  %.pre.i.i.i59 = add i32 %i.dp, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pre-phi.i.i.i60 = phi i32 [ %.pre.i.i.i59, %bb.y ], [ %i.ds, %bb.x ]
  store i32 %.pre-phi.i.i.i60, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.dz = icmp ult ptr %i.dk, %i.dg
  br i1 %i.dz, label %bb.v, label %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62

_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62: ; preds = %bb.z, %._crit_edge, %.thread.i61
  %.2.i56 = phi ptr [ null, %.thread.i61 ], [ %.066.lcssa, %._crit_edge ], [ %i.dk, %bb.z ] ; 2 uses
  %i.ea = icmp eq ptr %i.dg, %.2.i56
  %i.eb = select i1 %i.ea, ptr %.2.i56, ptr null
  br label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.t, %bb.s, %bb.r, %bb.e, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread, %bb.c, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62
  %.4 = phi ptr [ %.1, %bb.r ], [ %i.eb, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit62 ], [ null, %bb.e ], [ null, %bb.c ], [ null, %_ZN6google8protobuf8internal21ReadPackedVarintArrayIZNS1_12VarintParserIbLb0EEEPKcPvS5_PNS1_12ParseContextEEUlmE_EES5_S5_S5_T_.exit.thread ], [ null, %bb.s ], [ null, %bb.t ]
  ret ptr %.4
}

declare void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIjEEPKcS5_iPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %.04052 = trunc i64 %i.f to i32                 ; 2 uses
  %i.g = icmp sgt i32 %2, %.04052
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.04056 = phi i32 [ %.04052, %.lr.ph ], [ %.040, %bb.e ] ; 2 uses
  %.040.in55 = phi i64 [ %i.f, %.lr.ph ], [ %i.af, %bb.e ]
  %.04354 = phi i32 [ %2, %.lr.ph ], [ %i.t, %bb.e ]
  %.04453 = phi ptr [ %1, %.lr.ph ], [ %i.aa, %bb.e ]
  %i.j = ashr i32 %.04056, 2                      ; 2 uses
  %i.k = load i32, ptr %3, align 8, !tbaa !53
  %i.l = add nsw i32 %i.k, %i.j
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %i.l)
  %i.m = and i32 %.04056, -4                      ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.o = load i32, ptr %3, align 8, !tbaa !53     ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.p
  %i.r = add nsw i32 %i.o, %i.j
end_hunk_0
