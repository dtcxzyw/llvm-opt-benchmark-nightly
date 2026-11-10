Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/sentencepiece.pb?download=true
inline.NumInlined: 522
inline.NumDeleted: 241
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN13sentencepiece17SentencePieceText5ClearEv:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, i8 0, i64 12, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.k, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not7.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not7.i.i.i.i, label %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEPS4_.exit.i.i, label %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i.i.i.i

_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i.i.i.i: ; preds = %bb.j
  %i.aj = and i64 %i.ah, -2
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 0, ptr %i.am, align 8, !tbaa !59
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !60
  store i8 0, ptr %i.an, align 1, !tbaa !54
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEPS4_.exit.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEPS4_.exit.i.i: ; preds = %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i.i.i.i, %bb.j
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.k, label %bb.c, !llvm.loop !111

bb.k:                                             ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEPS4_.exit.i.i
  store i32 0, ptr %i.b, align 8, !tbaa !95
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEv.exit: ; preds = %bb.a, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !49
  %i.aq = and i32 %i.ap, 1
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !33
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, -2
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !59
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !60
  store i8 0, ptr %i.ax, align 1, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEE5ClearEv.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float 0.000000e+00, ptr %i.ay, align 8, !tbaa !48
  store i32 0, ptr %i.ao, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = and i64 %i.bb, 1
  %.not1 = icmp eq i64 %i.bc, 0
  br i1 %.not1, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, label %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.m
  %i.bd = and i64 %i.bb, -2
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 0, ptr %i.bg, align 8, !tbaa !59
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !60
  store i8 0, ptr %i.bh, align 1, !tbaa !54
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %bb.m, %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13sentencepiece17SentencePieceText14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.outer

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.outer: ; preds = %bb.u, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader
  %.sroa.0.0.ph = phi i32 [ 2, %bb.u ], [ 0, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ]
  %.035.ph = phi ptr [ %i.dn, %bb.u ], [ %1, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.preheader ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.outer
  %.035 = phi ptr [ %.035.ph, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.outer ], [ %.035.be, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge ] ; 4 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !69
  %i.p = load ptr, ptr %2, align 8, !tbaa !70
  %i.q = icmp ult ptr %.035, %i.p
  br i1 %i.q, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, label %bb.a, !prof !31

bb.a:                                             ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.s = ptrtoint ptr %.035 to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !72
  %i.x = icmp eq i32 %i.w, %i.v
  br i1 %i.x, label %bb.b, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.b:                                             ; preds = %bb.a
  %i.y = icmp sgt i32 %i.v, 0
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.aa, null
  %or.cond.i.i = select i1 %i.y, i1 %i.ab, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.035
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.a
  %i.ac = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.v, i32 noundef %i.o) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.ac, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ac, 1
  %i.ad = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ad, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39: ; preds = %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.442 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.035, %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit ] ; 4 uses
  %i.ae = load i8, ptr %.442, align 1, !tbaa !54  ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = icmp sgt i8 %i.ae, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %.442, i64 1 ; 2 uses
  br i1 %i.ag, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !54  ; 2 uses
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl nuw nsw i32 %i.aj, 7
  %i.al = add nsw i32 %i.af, -128
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  %i.an = icmp sgt i8 %i.ai, -1
  br i1 %i.an, label %bb.d, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.442, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.c
  %i.ap = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.442, i32 noundef %i.am) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ap, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ap, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, !prof !73

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39, %bb.d, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.1.i47 = phi ptr [ %.fca.0.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.ao, %bb.d ], [ %i.ah, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ] ; 7 uses
  %.046 = phi i32 [ %.fca.1.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.am, %bb.d ], [ %i.af, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread39 ] ; 10 uses
  %i.aq = lshr i32 %.046, 3
  switch i32 %i.aq, label %bb.v [
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.t
  ]

bb.e:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.ar = and i32 %.046, 255
  %i.as = icmp eq i32 %i.ar, 10
  br i1 %i.as, label %bb.f, label %bb.v, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.k, align 8, !tbaa !49
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.k, align 8, !tbaa !49
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !28  ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ax = and i64 %i.aw, 1
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit, label %bb.g, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.ay = and i64 %i.aw, -2
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !62
  br label %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit

_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi ptr [ %i.ba, %bb.g ], [ %i.av, %bb.f ]
  %i.bb = tail call noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11ENS2_12EmptyDefaultEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef %.0.i.i.i)
  %i.bc = tail call noundef ptr @_ZN6google8protobuf8internal24InlineGreedyStringParserEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %i.bb, ptr noundef nonnull %.1.i47, ptr noundef nonnull %2) ; 2 uses
  %.not15.not = icmp eq ptr %i.bc, null
  br i1 %.not15.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !74

_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge: ; preds = %bb.r, %bb.s, %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %bb.x
  %.035.be = phi ptr [ %i.bc, %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit ], [ %i.du, %bb.x ], [ %i.ec, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %i.cx, %bb.s ], [ %i.cx, %bb.r ]
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit, !llvm.loop !112

bb.h:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.bd = and i32 %.046, 255
  %i.be = icmp eq i32 %i.bd, 18
  br i1 %i.be, label %bb.i, label %bb.v, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds i8, ptr %.1.i47, i64 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.s, %bb.i
  %.136 = phi ptr [ %i.bf, %bb.i ], [ %i.cx, %bb.s ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.136, i64 1 ; 2 uses
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i, label %..thread_crit_edge.i.i.i, label %bb.k

..thread_crit_edge.i.i.i:                         ; preds = %bb.j
  %.pre.i.i.i = load i32, ptr %i.h, align 4, !tbaa !93
  br label %.thread.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.g, align 8, !tbaa !95  ; 3 uses
  %i.bj = load i32, ptr %i.bh, align 8, !tbaa !92 ; 4 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bm = add nsw i32 %i.bi, 1
  store i32 %i.bm, ptr %i.g, align 8, !tbaa !95
  %i.bn = sext i32 %i.bi to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !86
  br label %_ZN13sentencepiece17SentencePieceText20_internal_add_piecesEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bq = load i32, ptr %i.h, align 4, !tbaa !93
  %i.br = icmp eq i32 %i.bj, %i.bq
  br i1 %i.br, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %..thread_crit_edge.i.i.i
  %i.bs = phi i32 [ %.pre.i.i.i, %..thread_crit_edge.i.i.i ], [ %i.bj, %bb.m ]
  %i.bt = add nsw i32 %i.bs, 1
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.bt)
  %.pre9.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90 ; 2 uses
  %.pre10.i.i.i = load i32, ptr %.pre9.i.i.i, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %.thread.i.i.i, %bb.m
  %i.bu = phi i32 [ %.pre10.i.i.i, %.thread.i.i.i ], [ %i.bj, %bb.m ]
  %i.bv = phi ptr [ %.pre9.i.i.i, %.thread.i.i.i ], [ %i.bh, %bb.m ]
  %i.bw = add nsw i32 %i.bu, 1
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !92
  %i.bx = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.by = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece31SentencePieceText_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef %i.bx) ; 2 uses
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !95
  %i.cd = sext i32 %i.cb to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cd
  store ptr %i.by, ptr %i.ce, align 8, !tbaa !86
  br label %_ZN13sentencepiece17SentencePieceText20_internal_add_piecesEv.exit

_ZN13sentencepiece17SentencePieceText20_internal_add_piecesEv.exit: ; preds = %bb.l, %bb.n
  %.0.i.i.i20 = phi ptr [ %i.bp, %bb.l ], [ %i.by, %bb.n ]
  %i.cf = load i8, ptr %i.bg, align 1, !tbaa !54  ; 2 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = icmp sgt i8 %i.cf, -1
  br i1 %i.ch, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i: ; preds = %_ZN13sentencepiece17SentencePieceText20_internal_add_piecesEv.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.136, i64 2
  br label %bb.o

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i: ; preds = %_ZN13sentencepiece17SentencePieceText20_internal_add_piecesEv.exit
  %i.cj = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.bg, i32 noundef %i.cg) ; 2 uses
  %.fca.0.extract.i.i21 = extractvalue { ptr, i32 } %i.cj, 0 ; 2 uses
  %.fca.1.extract.i.i22 = extractvalue { ptr, i32 } %i.cj, 1
  %.not.i = icmp eq ptr %.fca.0.extract.i.i21, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i
  %.0.i13.i = phi i32 [ %i.cg, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.1.extract.i.i22, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ]
  %storemerge.i12.i = phi ptr [ %i.ci, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.0.extract.i.i21, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ] ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.cl = ptrtoint ptr %storemerge.i12.i to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = trunc i64 %i.cn to i32
  %i.cp = add nsw i32 %.0.i13.i, %i.co            ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 0)
  %i.cq = sext i32 %.sroa.speculated.i.i to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ck, i64 %i.cq
  store ptr %i.cr, ptr %2, align 8, !tbaa !70
  %i.cs = load i32, ptr %i.c, align 4, !tbaa !72
  store i32 %i.cp, ptr %i.c, align 4, !tbaa !72
  %i.ct = sub nsw i32 %i.cs, %i.cp
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !96  ; 2 uses
  %i.cv = add nsw i32 %i.cu, -1
  store i32 %i.cv, ptr %i.i, align 8, !tbaa !96
  %i.cw = icmp slt i32 %i.cu, 1
  br i1 %i.cw, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cx = tail call noundef ptr @_ZN13sentencepiece31SentencePieceText_SentencePiece14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.i.i20, ptr noundef nonnull %storemerge.i12.i, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 6 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.q, !prof !74

bb.q:                                             ; preds = %bb.p
  %i.cz = load i32, ptr %i.i, align 8, !tbaa !96
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.i, align 8, !tbaa !96
  %i.db = load i32, ptr %i.j, align 8, !tbaa !79
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.r, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !31

bb.r:                                             ; preds = %bb.q
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !72
  %i.de = add nsw i32 %i.dd, %i.ct                ; 2 uses
  store i32 %i.de, ptr %i.c, align 4, !tbaa !72
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !71
  %.sroa.speculated.i5.i = tail call i32 @llvm.smin.i32(i32 %i.de, i32 0)
  %i.dg = sext i32 %.sroa.speculated.i5.i to i64
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg ; 2 uses
  store ptr %i.dh, ptr %2, align 8, !tbaa !70
  %i.di = icmp ult ptr %i.cx, %i.dh
  br i1 %i.di, label %bb.s, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge

bb.s:                                             ; preds = %bb.r
  %i.dj = load i8, ptr %i.cx, align 1, !tbaa !54
  %i.dk = icmp eq i8 %i.dj, 18
  br i1 %i.dk, label %bb.j, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !llvm.loop !113

bb.t:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.dl = and i32 %.046, 255
  %i.dm = icmp eq i32 %i.dl, 29
  br i1 %i.dm, label %bb.u, label %bb.v, !prof !31

bb.u:                                             ; preds = %bb.t
  %.0.copyload.i2.i = load float, ptr %.1.i47, align 1
  store float %.0.copyload.i2.i, ptr %i.d, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %.1.i47, i64 4
  br label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.outer, !llvm.loop !112

bb.v:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, %bb.t, %bb.h, %bb.e
  %i.do = and i32 %.046, 7
  %i.dp = icmp eq i32 %i.do, 4
  %i.dq = icmp eq i32 %.046, 0
  %or.cond = or i1 %i.dq, %i.dp
  br i1 %or.cond, label %.thread54, label %bb.w

.thread54:                                        ; preds = %bb.v
  %i.dr = add i32 %.046, -1
  store i32 %i.dr, ptr %i.j, align 8, !tbaa !79
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.ds = icmp ugt i32 %.046, 1599
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dt = zext i32 %.046 to i64
  %i.du = tail call noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10ParseFieldEmPKcPKNS0_11MessageLiteEPNS1_16InternalMetadataEPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.dt, ptr noundef nonnull %.1.i47, ptr noundef nonnull @_ZN13sentencepiece36_SentencePieceText_default_instance_E, ptr noundef nonnull %i.l, ptr noundef nonnull %2) ; 2 uses
  %.not17 = icmp eq ptr %i.du, null
  br i1 %.not17, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !74

bb.y:                                             ; preds = %bb.w
  %i.dv = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.dw = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dx = and i64 %i.dw, 1
  %.not57 = icmp eq i64 %i.dx, 0
  br i1 %.not57, label %bb.aa, label %bb.z, !prof !74

bb.z:                                             ; preds = %bb.y
  %i.dy = and i64 %i.dw, -2
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.aa:                                            ; preds = %bb.y
  %i.eb = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.z, %bb.aa
  %.0.i = phi ptr [ %i.ea, %bb.z ], [ %i.eb, %bb.aa ]
  %i.ec = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.046, ptr noundef %.0.i, ptr noundef nonnull %.1.i47, ptr noundef nonnull %2) ; 2 uses
  %.not16 = icmp eq ptr %i.ec, null
  br i1 %.not16, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7HasBitsILm1EEC2Ev.exit.backedge, !prof !74

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %bb.x, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.q, %bb.o, %bb.p, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %bb.b, %.thread54
  %.3 = phi ptr [ %spec.select, %bb.b ], [ %.1.i47, %.thread54 ], [ null, %bb.q ], [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ], [ null, %bb.p ], [ null, %bb.o ], [ null, %bb.x ], [ null, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ null, %_ZN13sentencepiece17SentencePieceText22_internal_mutable_textB5cxx11Ev.exit ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ]
  %i.ed = load i32, ptr %i.k, align 8, !tbaa !49
  %i.ee = or i32 %i.ed, %.sroa.0.0.ph
  store i32 %i.ee, ptr %i.k, align 8, !tbaa !49
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK13sentencepiece17SentencePieceText18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !59   ; 5 uses
  %i.k = icmp sgt i64 %i.j, 127
  br i1 %i.k, label %.critedge.i, label %bb.c, !prof !74

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %2, align 8, !tbaa !83
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %1 to i64
  %reass.sub = sub i64 %i.m, %i.n
  %i.o = add i64 %reass.sub, 14
  %i.p = icmp slt i64 %i.o, %i.j
  br i1 %i.p, label %.critedge.i, label %.thread.i, !prof !74

.thread.i:                                        ; preds = %bb.c
  store i8 10, ptr %1, align 1, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = trunc i64 %i.j to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store i8 %i.r, ptr %i.q, align 1, !tbaa !54
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.t, i64 %i.j, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.j
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %i.v = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %1)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit: ; preds = %.thread.i, %.critedge.i, %bb.a
  %.020 = phi ptr [ %1, %bb.a ], [ %i.v, %.critedge.i ], [ %i.u, %.thread.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i32, ptr %i.w, align 8, !tbaa !95   ; 2 uses
  %.not37 = icmp eq i32 %i.x, 0
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit
  %.1.lcssa = phi ptr [ %.020, %_ZN6google8protobuf2io19EpsCopyOutputStream23WriteStringMaybeAliasedEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh.exit ], [ %i.bk, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 4 uses
  %i.z = and i32 %i.b, 2
  %.not21 = icmp eq i32 %i.z, 0
  br i1 %.not21, label %bb.o, label %bb.m

bb.d:                                             ; preds = %.lr.ph, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.036 = phi i32 [ 0, %.lr.ph ], [ %i.bl, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.135 = phi ptr [ %.020, %.lr.ph ], [ %i.bk, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.aa = load ptr, ptr %2, align 8, !tbaa !83
  %.not.i = icmp ult ptr %.135, %i.aa
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %.135)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.d, %bb.e
  %.0.i25 = phi ptr [ %i.ab, %bb.e ], [ %.135, %bb.d ] ; 9 uses
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = sext i32 %.036 to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !86 ; 2 uses
  store i8 18, ptr %.0.i25, align 1, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i25, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 44
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4 ; 9 uses
  %i.ak = icmp ult i32 %i.aj, 128
  %i.al = trunc i32 %i.aj to i8                   ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  store i8 %i.al, ptr %i.ah, align 1, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i25, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

bb.g:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.an = or i8 %i.al, -128
  store i8 %i.an, ptr %i.ah, align 1, !tbaa !54
  %i.ao = lshr i32 %i.aj, 7                       ; 2 uses
  %i.ap = icmp ult i32 %i.aj, 16384
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = trunc nuw nsw i32 %i.ao to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i25, i64 2
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i25, i64 3
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

bb.i:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i25, i64 2 ; 2 uses
  %i.au = trunc i32 %i.ao to i8
  %i.av = or i8 %i.au, -128
  store i8 %i.av, ptr %i.at, align 1, !tbaa !54
  %i.aw = lshr i32 %i.aj, 14                      ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i25, i64 3 ; 3 uses
  %i.ay = icmp ugt i32 %i.aj, 2097151
  br i1 %i.ay, label %bb.j, label %bb.l, !prof !84

bb.j:                                             ; preds = %bb.i
  %i.az = trunc i32 %i.aw to i8
  %i.ba = or i8 %i.az, -128
  store i8 %i.ba, ptr %i.ax, align 1, !tbaa !54
  %i.bb = lshr i32 %i.aj, 21                      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i25, i64 4 ; 3 uses
  %i.bd = icmp ugt i32 %i.aj, 268435455
  br i1 %i.bd, label %bb.k, label %bb.l, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.be = trunc i32 %i.bb to i8
  %i.bf = or i8 %i.be, -128
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !54
  %i.bg = lshr i32 %i.aj, 28
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i25, i64 5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i.lcssa = phi ptr [ %i.at, %bb.i ], [ %i.ax, %bb.j ], [ %i.bc, %bb.k ]
  %.lcssa49 = phi i32 [ %i.aw, %bb.i ], [ %i.bb, %bb.j ], [ %i.bg, %bb.k ]
  %.lcssa = phi ptr [ %i.ax, %bb.i ], [ %i.bc, %bb.j ], [ %i.bh, %bb.k ]
  %i.bi = trunc nuw nsw i32 %.lcssa49 to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa, i64 2
  store i8 %i.bi, ptr %.lcssa, align 1, !tbaa !54
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %bb.f, %bb.h, %bb.l
  %.021.i.i = phi ptr [ %i.am, %bb.f ], [ %i.as, %bb.h ], [ %i.bj, %bb.l ]
  %i.bk = tail call noundef ptr @_ZNK13sentencepiece31SentencePieceText_SentencePiece18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, ptr noundef nonnull %.021.i.i, ptr noundef nonnull %2) ; 2 uses
  %i.bl = add nuw i32 %.036, 1                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13sentencepiece22NBestSentencePieceTextD2Ev:bb.a
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.x = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.r, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !93
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = add nsw i64 %i.ab, 8
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ac) #15
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEED2Ev.exit

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE6DeleteEPS4_PNS0_5ArenaE.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE6DeleteEPS4_PNS0_5ArenaE.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !86 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE6DeleteEPS4_PNS0_5ArenaE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN13sentencepiece17SentencePieceTextD1Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(88) %i.ae) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 88) #17
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE6DeleteEPS4_PNS0_5ArenaE.exit.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE6DeleteEPS4_PNS0_5ArenaE.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !10

_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEED2Ev.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata6DeleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN13sentencepiece22NBestSentencePieceTextD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN13sentencepiece22NBestSentencePieceTextD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(48) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText9ArenaDtorEPv(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #7 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK13sentencepiece22NBestSentencePieceText13SetCachedSizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 %1, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN13sentencepiece22NBestSentencePieceText16default_instanceEv() local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i32, ptr @scc_info_NBestSentencePieceText_sentencepiece_2eproto acquire, align 8
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN6google8protobuf8internal7InitSCCEPNS1_11SCCInfoBaseE.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal11InitSCCImplEPNS1_11SCCInfoBaseE(ptr noundef nonnull @scc_info_NBestSentencePieceText_sentencepiece_2eproto)
  br label %_ZN6google8protobuf8internal7InitSCCEPNS1_11SCCInfoBaseE.exit

_ZN6google8protobuf8internal7InitSCCEPNS1_11SCCInfoBaseE.exit: ; preds = %bb.a, %bb.b
  ret ptr @_ZN13sentencepiece41_NBestSentencePieceText_default_instance_E
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86
  tail call void @_ZN13sentencepiece17SentencePieceText5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %i.h)
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.d, label %bb.c, !llvm.loop !13

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !95
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit

_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit: ; preds = %bb.a, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = and i64 %i.k, 1
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit, label %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit
  %i.m = and i64 %i.k, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !59
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !60
  store i8 0, ptr %i.q, align 1, !tbaa !54
  br label %_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit

_ZN6google8protobuf8internal16InternalMetadata5ClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit, %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN13sentencepiece22NBestSentencePieceText14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.022 = phi ptr [ %1, %bb.a ], [ %.022.be, %.backedge ] ; 4 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69
  %i.l = load ptr, ptr %2, align 8, !tbaa !70
  %i.m = icmp ult ptr %.022, %i.l
  br i1 %i.m, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.o = ptrtoint ptr %.022 to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !72
  %i.t = icmp eq i32 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.u = icmp sgt i32 %i.r, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  %or.cond.i.i = select i1 %i.u, i1 %i.x, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.022
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.c
  %i.y = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.r, i32 noundef %i.k) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.y, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.y, 1
  %i.z = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.z, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25: ; preds = %bb.b, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.428 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.022, %bb.b ] ; 4 uses
  %i.aa = load i8, ptr %.428, align 1, !tbaa !54  ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = icmp sgt i8 %i.aa, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.428, i64 1 ; 2 uses
  br i1 %i.ac, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !54  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 7
  %i.ah = add nsw i32 %i.ab, -128
  %i.ai = or disjoint i32 %i.ag, %i.ah            ; 2 uses
  %i.aj = icmp sgt i8 %i.ae, -1
  br i1 %i.aj, label %bb.f, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.428, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.e
  %i.al = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.428, i32 noundef %i.ai) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.al, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.al, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, !prof !73

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread: ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25, %bb.f, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.1.i33 = phi ptr [ %.fca.0.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.ak, %bb.f ], [ %i.ad, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25 ] ; 3 uses
  %.02132 = phi i32 [ %.fca.1.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.ai, %bb.f ], [ %i.ab, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread25 ] ; 5 uses
  %i.am = icmp eq i32 %.02132, 10
  br i1 %i.am, label %bb.g, label %bb.r, !prof !119

bb.g:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.an = getelementptr inbounds i8, ptr %.1.i33, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.g
  %.1 = phi ptr [ %i.an, %bb.g ], [ %i.cf, %bb.q ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !90  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %..thread_crit_edge.i.i.i, label %bb.i

..thread_crit_edge.i.i.i:                         ; preds = %bb.h
  %.pre.i.i.i = load i32, ptr %i.h, align 4, !tbaa !93
  br label %.thread.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !95  ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 8, !tbaa !92 ; 4 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.au = add nsw i32 %i.aq, 1
  store i32 %i.au, ptr %i.g, align 8, !tbaa !95
  %i.av = sext i32 %i.aq to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86
  br label %_ZN13sentencepiece22NBestSentencePieceText20_internal_add_nbestsEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ay = load i32, ptr %i.h, align 4, !tbaa !93
  %i.az = icmp eq i32 %i.ar, %i.ay
  br i1 %i.az, label %.thread.i.i.i, label %bb.l

.thread.i.i.i:                                    ; preds = %bb.k, %..thread_crit_edge.i.i.i
  %i.ba = phi i32 [ %.pre.i.i.i, %..thread_crit_edge.i.i.i ], [ %i.ar, %bb.k ]
  %i.bb = add nsw i32 %i.ba, 1
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %i.bb)
  %.pre9.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !90 ; 2 uses
  %.pre10.i.i.i = load i32, ptr %.pre9.i.i.i, align 8, !tbaa !92
  br label %bb.l

bb.l:                                             ; preds = %.thread.i.i.i, %bb.k
  %i.bc = phi i32 [ %.pre10.i.i.i, %.thread.i.i.i ], [ %i.ar, %bb.k ]
  %i.bd = phi ptr [ %.pre9.i.i.i, %.thread.i.i.i ], [ %i.ap, %bb.k ]
  %i.be = add nsw i32 %i.bc, 1
  store i32 %i.be, ptr %i.bd, align 8, !tbaa !92
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !89
  %i.bg = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %i.bf) ; 2 uses
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !95  ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.g, align 8, !tbaa !95
  %i.bl = sext i32 %i.bj to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bl
  store ptr %i.bg, ptr %i.bm, align 8, !tbaa !86
  br label %_ZN13sentencepiece22NBestSentencePieceText20_internal_add_nbestsEv.exit

_ZN13sentencepiece22NBestSentencePieceText20_internal_add_nbestsEv.exit: ; preds = %bb.j, %bb.l
  %.0.i.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.bg, %bb.l ]
  %i.bn = load i8, ptr %i.ao, align 1, !tbaa !54  ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp sgt i8 %i.bn, -1
  br i1 %i.bp, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i: ; preds = %_ZN13sentencepiece22NBestSentencePieceText20_internal_add_nbestsEv.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.m

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i: ; preds = %_ZN13sentencepiece22NBestSentencePieceText20_internal_add_nbestsEv.exit
  %i.br = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %i.ao, i32 noundef %i.bo) ; 2 uses
  %.fca.0.extract.i.i11 = extractvalue { ptr, i32 } %i.br, 0 ; 2 uses
  %.fca.1.extract.i.i12 = extractvalue { ptr, i32 } %i.br, 1
  %.not.i = icmp eq ptr %.fca.0.extract.i.i11, null
  br i1 %.not.i, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i
  %.0.i13.i = phi i32 [ %i.bo, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.1.extract.i.i12, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ]
  %storemerge.i12.i = phi ptr [ %i.bq, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread.i ], [ %.fca.0.extract.i.i11, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ] ; 2 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.bt = ptrtoint ptr %storemerge.i12.i to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = add nsw i32 %.0.i13.i, %i.bw            ; 3 uses
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 0)
  %i.by = sext i32 %.sroa.speculated.i.i to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bs, i64 %i.by
  store ptr %i.bz, ptr %2, align 8, !tbaa !70
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !72
  store i32 %i.bx, ptr %i.c, align 4, !tbaa !72
  %i.cb = sub nsw i32 %i.ca, %i.bx
  %i.cc = load i32, ptr %i.i, align 8, !tbaa !96  ; 2 uses
  %i.cd = add nsw i32 %i.cc, -1
  store i32 %i.cd, ptr %i.i, align 8, !tbaa !96
  %i.ce = icmp slt i32 %i.cc, 1
  br i1 %i.ce, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = tail call noundef ptr @_ZN13sentencepiece17SentencePieceText14_InternalParseEPKcPN6google8protobuf8internal12ParseContextE(ptr noundef nonnull align 8 dereferenceable(88) %.0.i.i.i, ptr noundef nonnull %storemerge.i12.i, ptr noundef nonnull align 8 dereferenceable(112) %2) ; 6 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.o, !prof !74

bb.o:                                             ; preds = %bb.n
  %i.ch = load i32, ptr %i.i, align 8, !tbaa !96
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.i, align 8, !tbaa !96
  %i.cj = load i32, ptr %i.j, align 8, !tbaa !79
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.cl = load i32, ptr %i.c, align 4, !tbaa !72
  %i.cm = add nsw i32 %i.cl, %i.cb                ; 2 uses
  store i32 %i.cm, ptr %i.c, align 4, !tbaa !72
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !71
  %.sroa.speculated.i5.i = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 0)
  %i.co = sext i32 %.sroa.speculated.i5.i to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co ; 2 uses
  store ptr %i.cp, ptr %2, align 8, !tbaa !70
  %i.cq = icmp ult ptr %i.cf, %i.cp
  br i1 %i.cq, label %bb.q, label %.backedge

bb.q:                                             ; preds = %bb.p
  %i.cr = load i8, ptr %i.cf, align 1, !tbaa !54
  %i.cs = icmp eq i8 %i.cr, 10
  br i1 %i.cs, label %bb.h, label %.backedge, !llvm.loop !117

bb.r:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.ct = and i32 %.02132, 7
  %i.cu = icmp eq i32 %i.ct, 4
  %i.cv = icmp eq i32 %.02132, 0
  %or.cond = or i1 %i.cv, %i.cu
  br i1 %or.cond, label %.thread38, label %bb.s

.thread38:                                        ; preds = %bb.r
  %i.cw = add i32 %.02132, -1
  store i32 %i.cw, ptr %i.j, align 8, !tbaa !79
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cx = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.cy = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.cz = and i64 %i.cy, 1
  %.not41 = icmp eq i64 %i.cz, 0
  br i1 %.not41, label %bb.u, label %bb.t, !prof !74

bb.t:                                             ; preds = %bb.s
  %i.da = and i64 %i.cy, -2
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

bb.u:                                             ; preds = %bb.s
  %i.dd = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit: ; preds = %bb.t, %bb.u
  %.0.i = phi ptr [ %i.dc, %bb.t ], [ %i.dd, %bb.u ]
  %i.de = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.02132, ptr noundef %.0.i, ptr noundef nonnull %.1.i33, ptr noundef nonnull %2) ; 2 uses
  %.not8 = icmp eq ptr %i.de, null
  br i1 %.not8, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %.backedge, !prof !74

.backedge:                                        ; preds = %bb.p, %bb.q, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit
  %.022.be = phi ptr [ %i.de, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %i.cf, %bb.q ], [ %i.cf, %bb.p ]
  br label %bb.b, !llvm.loop !118

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %bb.o, %bb.m, %bb.n, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %bb.d, %.thread38
  %.3 = phi ptr [ null, %bb.o ], [ %spec.select, %bb.d ], [ %.1.i33, %.thread38 ], [ null, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ], [ null, %bb.n ], [ null, %bb.m ], [ null, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ null, %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK13sentencepiece22NBestSentencePieceText18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %bb.a
  %.011.lcssa = phi ptr [ %1, %bb.a ], [ %i.ar, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, !prof !31

bb.b:                                             ; preds = %.lr.ph, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.020 = phi i32 [ 0, %.lr.ph ], [ %i.as, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.01119 = phi ptr [ %1, %.lr.ph ], [ %i.ar, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !83
  %.not.i = icmp ult ptr %.01119, %i.h
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %.01119)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit: ; preds = %bb.b, %bb.c
  %.0.i14 = phi ptr [ %i.i, %bb.c ], [ %.01119, %bb.b ] ; 9 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !90
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = sext i32 %.020 to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86   ; 2 uses
  store i8 10, ptr %.0.i14, align 1, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i14, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  %i.q = load atomic i32, ptr %i.p monotonic, align 4 ; 9 uses
  %i.r = icmp ult i32 %i.q, 128
  %i.s = trunc i32 %i.q to i8                     ; 2 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  store i8 %i.s, ptr %i.o, align 1, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i14, i64 2
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

bb.e:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit
  %i.u = or i8 %i.s, -128
  store i8 %i.u, ptr %i.o, align 1, !tbaa !54
  %i.v = lshr i32 %i.q, 7                         ; 2 uses
  %i.w = icmp ult i32 %i.q, 16384
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = trunc nuw nsw i32 %i.v to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i14, i64 2
  store i8 %i.x, ptr %i.y, align 1, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i14, i64 3
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i14, i64 2 ; 2 uses
  %i.ab = trunc i32 %i.v to i8
  %i.ac = or i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !54
  %i.ad = lshr i32 %i.q, 14                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i14, i64 3 ; 3 uses
  %i.af = icmp ugt i32 %i.q, 2097151
  br i1 %i.af, label %bb.h, label %bb.j, !prof !84

bb.h:                                             ; preds = %bb.g
  %i.ag = trunc i32 %i.ad to i8
  %i.ah = or i8 %i.ag, -128
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !54
  %i.ai = lshr i32 %i.q, 21                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i14, i64 4 ; 3 uses
  %i.ak = icmp ugt i32 %i.q, 268435455
  br i1 %i.ak, label %bb.i, label %bb.j, !prof !74

bb.i:                                             ; preds = %bb.h
  %i.al = trunc i32 %i.ai to i8
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !54
  %i.an = lshr i32 %i.q, 28
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i14, i64 5
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0.i.i.lcssa = phi ptr [ %i.aa, %bb.g ], [ %i.ae, %bb.h ], [ %i.aj, %bb.i ]
  %.lcssa32 = phi i32 [ %i.ad, %bb.g ], [ %i.ai, %bb.h ], [ %i.an, %bb.i ]
  %.lcssa = phi ptr [ %i.ae, %bb.g ], [ %i.aj, %bb.h ], [ %i.ao, %bb.i ]
  %i.ap = trunc nuw nsw i32 %.lcssa32 to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.lcssa, i64 2
  store i8 %i.ap, ptr %.lcssa, align 1, !tbaa !54
  br label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit: ; preds = %bb.d, %bb.f, %bb.j
  %.021.i.i = phi ptr [ %i.t, %bb.d ], [ %i.z, %bb.f ], [ %i.aq, %bb.j ]
  %i.ar = tail call noundef ptr @_ZNK13sentencepiece17SentencePieceText18_InternalSerializeEPhPN6google8protobuf2io19EpsCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(88) %i.n, ptr noundef nonnull %.021.i.i, ptr noundef nonnull %2) ; 2 uses
  %i.as = add nuw i32 %.020, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !120

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %._crit_edge
  %i.at = and i64 %i.f, -2
  %i.au = inttoptr i64 %i.at to ptr               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !60 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !59 ; 2 uses
  %.pre24 = load ptr, ptr %2, align 8, !tbaa !83
  %i.ax = ptrtoint ptr %.pre24 to i64
  %i.ay = ptrtoint ptr %.011.lcssa to i64
  %i.az = sub i64 %i.ax, %i.ay
  %sext = shl i64 %.pre, 32
  %i.ba = ashr exact i64 %sext, 32                ; 3 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.l, !prof !74

bb.k:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.bc = trunc i64 %.pre to i32
  %i.bd = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59) %2, ptr noundef %i.aw, i32 noundef %i.bc, ptr noundef %.011.lcssa)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.011.lcssa, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.011.lcssa, i64 %i.ba
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit

_ZN6google8protobuf2io19EpsCopyOutputStream8WriteRawEPKviPh.exit: ; preds = %bb.l, %bb.k, %._crit_edge
  %.1 = phi ptr [ %.011.lcssa, %._crit_edge ], [ %i.bd, %bb.k ], [ %i.be, %bb.l ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK13sentencepiece22NBestSentencePieceText12ByteSizeLongEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.f ; 2 uses
  %.idx = shl nsw i64 %i.c, 3
  %i.g = getelementptr inbounds i8, ptr %spec.select.i.i, i64 %.idx
  %.not15 = icmp eq i32 %i.b, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not14 = icmp eq i64 %i.k, 0
  br i1 %.not14, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, !prof !31

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi i64 [ %i.w, %.lr.ph ], [ %i.c, %bb.a ]
  %.sroa.011.016 = phi ptr [ %i.x, %.lr.ph ], [ %spec.select.i.i, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.011.016, align 8, !tbaa !86
  %i.m = tail call noundef i64 @_ZNK13sentencepiece17SentencePieceText12ByteSizeLongEv(ptr noundef nonnull align 8 dereferenceable(88) %i.l) ; 2 uses
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.n, 1
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.o, i1 true)
  %i.q = xor i32 %i.p, 31
  %i.r = mul nuw nsw i32 %i.q, 9
  %i.s = add nuw nsw i32 %i.r, 73
  %i.t = lshr i32 %i.s, 6
  %i.u = zext nneg i32 %i.t to i64
  %i.v = add i64 %i.m, %.017
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.g
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %._crit_edge
  %i.y = and i64 %i.j, -2
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.ac = add i64 %i.ab, %.0.lcssa
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit, %._crit_edge
  %.1 = phi i64 [ %i.ac, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ad = trunc i64 %.1 to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i32 %i.ad, ptr %i.ae monotonic, align 8
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText21CheckTypeAndMergeFromERKN6google8protobuf11MessageLiteE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN13sentencepiece22NBestSentencePieceText9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit: ; preds = %bb.a
  %i.f = and i64 %i.d, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = and i64 %i.j, 1
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.l = and i64 %i.j, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERKT_PFSC_vE.exit
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !59   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59
  %i.t = sub i64 4611686018427387903, %i.s
  %i.u = icmp ult i64 %i.t, %i.q
  br i1 %i.u, label %bb.d, label %_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit

bb.d:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #16
  unreachable

_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !60
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i, ptr noundef %i.v, i64 noundef %i.q) ; 0 uses
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit: ; preds = %bb.a, %_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !95   ; 6 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE9MergeFromERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 noundef %i.z) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !90
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !95
  %i.ak = sub nsw i32 %i.ah, %i.aj                ; 3 uses
  %invariant.smin.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.z) ; 2 uses
  %i.al = icmp sgt i32 %invariant.smin.i.i.i, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %wide.trip.count.i.i.i = zext nneg i32 %invariant.smin.i.i.i to i64
  br label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.an = icmp slt i32 %i.ak, %i.z
  br i1 %i.an, label %.lr.ph28.preheader.i.i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE11TypeHandlerEEEvPPvSA_ii.exit.i.i

.lr.ph28.preheader.i.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.ao = sext i32 %i.ak to i64
  br label %.lr.ph28.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !86
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !86
  tail call void @_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE5MergeERKS4_PS4_(ptr noundef nonnull align 8 dereferenceable(88) %i.aq, ptr noundef %i.as)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !11

.lr.ph28.i.i.i:                                   ; preds = %.lr.ph28.i.i.i, %.lr.ph28.preheader.i.i.i
  %indvars.iv31.i.i.i = phi i64 [ %i.ao, %.lr.ph28.preheader.i.i.i ], [ %indvars.iv.next32.i.i.i, %.lr.ph28.i.i.i ] ; 3 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %indvars.iv31.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86
  %i.av = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %i.am) ; 2 uses
  tail call void @_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE5MergeERKS4_PS4_(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef %i.av)
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %indvars.iv31.i.i.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !86
  %indvars.iv.next32.i.i.i = add nsw i64 %indvars.iv31.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next32.i.i.i to i32
  %exitcond34.not.i.i.i = icmp eq i32 %i.z, %lftr.wideiv.i.i.i
  br i1 %exitcond34.not.i.i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE11TypeHandlerEEEvPPvSA_ii.exit.i.i, label %.lr.ph28.i.i.i, !llvm.loop !12

_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE11TypeHandlerEEEvPPvSA_ii.exit.i.i: ; preds = %.lr.ph28.i.i.i, %._crit_edge.i.i.i
  %i.ax = load i32, ptr %i.ai, align 8, !tbaa !95
  %i.ay = add nsw i32 %i.ax, %i.z                 ; 3 uses
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !95
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !90 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !92
  %i.bb = icmp slt i32 %i.ba, %i.ay
  br i1 %i.bb, label %bb.f, label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE9MergeFromERKS4_.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE11TypeHandlerEEEvPPvSA_ii.exit.i.i
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !92
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE9MergeFromERKS4_.exit: ; preds = %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS2_.exit, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE11TypeHandlerEEEvPPvSA_ii.exit.i.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.trip.count.i.i.i = zext nneg i32 %i.c to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86
  tail call void @_ZN13sentencepiece17SentencePieceText5ClearEv(ptr noundef nonnull align 8 dereferenceable(88) %i.i)
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %bb.e, label %bb.d, !llvm.loop !13

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.b, align 8, !tbaa !95
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit.i

_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit.i: ; preds = %bb.e, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = and i64 %i.l, 1
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZN13sentencepiece22NBestSentencePieceText5ClearEv.exit, label %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i

_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit.i
  %i.n = and i64 %i.l, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.q, align 8, !tbaa !59
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !60
  store i8 0, ptr %i.r, align 1, !tbaa !54
  br label %_ZN13sentencepiece22NBestSentencePieceText5ClearEv.exit

_ZN13sentencepiece22NBestSentencePieceText5ClearEv.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEE5ClearEv.exit.i, %_ZN6google8protobuf8internal16InternalMetadata7DoClearINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvv.exit.i
  tail call void @_ZN13sentencepiece22NBestSentencePieceText9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN13sentencepiece22NBestSentencePieceText5ClearEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK13sentencepiece22NBestSentencePieceText13IsInitializedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %_ZN6google8protobuf8internal17AllAreInitializedIN13sentencepiece17SentencePieceTextEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = zext nneg i32 %i.b to i64
  br label %bb.b

_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i: ; preds = %bb.d, %bb.c
  %i.f = icmp slt i64 %indvars.iv.i, 2
  br i1 %i.f, label %_ZN6google8protobuf8internal17AllAreInitializedIN13sentencepiece17SentencePieceTextEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, label %bb.b, !llvm.loop !121

bb.b:                                             ; preds = %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.e, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !86   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 3 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf8internal17AllAreInitializedIN13sentencepiece17SentencePieceTextEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.o = icmp slt i32 %i.m, 1
  br i1 %i.o, label %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = zext nneg i32 %i.m to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.q = add nsw i64 %indvars.iv.i.i.i6, -1       ; 2 uses
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i, label %bb.e, !llvm.loop !9

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv.i.i.i6 = phi i64 [ %i.p, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !90
  %i.u = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i6
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !86
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet13IsInitializedEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  br i1 %i.x, label %bb.d, label %_ZN6google8protobuf8internal17AllAreInitializedIN13sentencepiece17SentencePieceTextEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit, !llvm.loop !9

_ZN6google8protobuf8internal17AllAreInitializedIN13sentencepiece17SentencePieceTextEEEbRKNS0_16RepeatedPtrFieldIT_EE.exit: ; preds = %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i, %bb.b, %bb.e, %bb.a
  %i.y = phi i1 [ false, %bb.e ], [ true, %bb.a ], [ %i.k, %bb.b ], [ %i.k, %_ZNK13sentencepiece17SentencePieceText13IsInitializedEv.exit.loopexit.i ]
  ret i1 %i.y
}

; Function Attrs: mustprogress uwtable
define void @_ZN13sentencepiece22NBestSentencePieceText12InternalSwapEPS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %.not = icmp eq i64 %i.e, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.f = ptrtoint ptr %.pre to i64                ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not5 = icmp eq i64 %i.g, 0                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not5, label %_ZN6google8protobuf8internal16InternalMetadata4SwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPS2_.exit, label %.thread

bb.c:                                             ; preds = %bb.a
  br i1 %.not5, label %bb.d, label %.thread, !prof !85

.thread:                                          ; preds = %bb.b, %bb.c
  %i.h = and i64 %i.f, -2
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre7 = load ptr, ptr %i.a, align 8, !tbaa !28
  %.pre8 = ptrtoint ptr %.pre7 to i64
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i: ; preds = %bb.d, %.thread
  %.pre-phi = phi i64 [ %.pre8, %bb.d ], [ %i.d, %.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ %i.j, %.thread ]
  %i.l = and i64 %.pre-phi, 1
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i
  %i.m = and i64 %.pre-phi, -2
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata6DoSwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

bb.f:                                             ; preds = %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v.exit.i
  %i.p = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata6DoSwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit

_ZN6google8protobuf8internal16InternalMetadata6DoSwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit: ; preds = %bb.e, %bb.f
  %.0.i.i4 = phi ptr [ %i.o, %bb.e ], [ %i.p, %bb.f ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i4, ptr noundef nonnull align 8 dereferenceable(32) %.0.i.i) #15
  br label %_ZN6google8protobuf8internal16InternalMetadata4SwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPS2_.exit

_ZN6google8protobuf8internal16InternalMetadata4SwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPS2_.exit: ; preds = %bb.b, %_ZN6google8protobuf8internal16InternalMetadata6DoSwapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.0.copyload.i.i.i.i = load i128, ptr %i.q, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i.i, ptr %i.r, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK13sentencepiece22NBestSentencePieceText11GetTypeNameB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 36, ptr %i.a, align 8, !tbaa !88
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !60
  %i.d = load i64, ptr %i.a, align 8, !tbaa !88   ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.c, ptr noundef nonnull align 1 dereferenceable(36) @.str.6, i64 36, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  store i8 0, ptr %i.f, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece31SentencePieceText_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #18 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN13sentencepiece31SentencePieceText_SentencePieceE, i64 16), ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN6google8protobuf8internal12ExtensionSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef null)
          to label %.noexc unwind label %bb.e, !inline_history !122

.noexc:                                           ; preds = %bb.b
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 0, ptr %.ptr.i.i, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 0, ptr %i.e, align 4, !tbaa !50
  %i.f = load atomic i32, ptr @scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto acquire, align 8
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN13sentencepiece31SentencePieceText_SentencePieceC2Ev.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN6google8protobuf8internal11InitSCCImplEPNS1_11SCCInfoBaseE(ptr noundef nonnull @scc_info_SentencePieceText_SentencePiece_sentencepiece_2eproto)
          to label %_ZN13sentencepiece31SentencePieceText_SentencePieceC2Ev.exit unwind label %bb.d, !inline_history !5

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf8internal12ExtensionSetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #15, !inline_history !4
  br label %.body

_ZN13sentencepiece31SentencePieceText_SentencePieceC2Ev.exit: ; preds = %.noexc, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece31SentencePieceText_SentencePieceEEEPT_PS1_.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.g, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #17
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !104
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.g, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !108  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull @_ZTIN13sentencepiece31SentencePieceText_SentencePieceE, i64 noundef 80), !inline_history !14
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit: ; preds = %bb.f, %bb.g
  %i.v = tail call noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 80) ; 2 uses
  tail call void @_ZN13sentencepiece31SentencePieceText_SentencePieceC1EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(80) %i.v, ptr noundef nonnull %0), !inline_history !123
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece31SentencePieceText_SentencePieceEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece31SentencePieceText_SentencePieceEEEPT_PS1_.exit: ; preds = %_ZN13sentencepiece31SentencePieceText_SentencePieceC2Ev.exit, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit
  %.0.i = phi ptr [ %i.v, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit ], [ %i.b, %_ZN13sentencepiece31SentencePieceText_SentencePieceC2Ev.exit ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #18 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN13sentencepiece17SentencePieceTextE, i64 16), ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  invoke void @_ZN6google8protobuf8internal12ExtensionSetC1EPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef null)
          to label %.noexc unwind label %bb.e, !inline_history !124

.noexc:                                           ; preds = %bb.b
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.ptr.i.i, i8 0, i64 32, i1 false)
  %i.e = load atomic i32, ptr @scc_info_SentencePieceText_sentencepiece_2eproto acquire, align 8
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN13sentencepiece17SentencePieceTextC2Ev.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %.noexc
  invoke void @_ZN6google8protobuf8internal11InitSCCImplEPNS1_11SCCInfoBaseE(ptr noundef nonnull @scc_info_SentencePieceText_sentencepiece_2eproto)
          to label %_ZN13sentencepiece17SentencePieceTextC2Ev.exit unwind label %bb.d, !inline_history !3

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #15, !inline_history !2
  tail call void @_ZN6google8protobuf8internal12ExtensionSetD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #15, !inline_history !2
  br label %.body

_ZN13sentencepiece17SentencePieceTextC2Ev.exit:   ; preds = %.noexc, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !48
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece17SentencePieceTextEEEPT_PS1_.exit

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.f, %bb.d ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #17
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !104
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.g, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull @_ZTIN13sentencepiece17SentencePieceTextE, i64 noundef 88), !inline_history !14
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit: ; preds = %bb.f, %bb.g
  %i.u = tail call noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 88) ; 2 uses
  tail call void @_ZN13sentencepiece17SentencePieceTextC1EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull %0), !inline_history !125
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece17SentencePieceTextEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece17SentencePieceTextEEEPT_PS1_.exit: ; preds = %_ZN13sentencepiece17SentencePieceTextC2Ev.exit, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit
  %.0.i = phi ptr [ %i.u, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit ], [ %i.b, %_ZN13sentencepiece17SentencePieceTextC2Ev.exit ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress noinline uwtable
define noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece22NBestSentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN13sentencepiece22NBestSentencePieceTextE, i64 16), ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  %i.e = load atomic i32, ptr @scc_info_NBestSentencePieceText_sentencepiece_2eproto acquire, align 8
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece22NBestSentencePieceTextEEEPT_PS1_.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6google8protobuf8internal11InitSCCImplEPNS1_11SCCInfoBaseE(ptr noundef nonnull @scc_info_NBestSentencePieceText_sentencepiece_2eproto)
          to label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece22NBestSentencePieceTextEEEPT_PS1_.exit unwind label %.body, !inline_history !0

.body:                                            ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6google8protobuf16RepeatedPtrFieldIN13sentencepiece17SentencePieceTextEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #15, !inline_history !1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #17
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !108  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @_ZTIN13sentencepiece22NBestSentencePieceTextE, i64 noundef 48), !inline_history !14
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit: ; preds = %bb.d, %bb.e
  %i.q = tail call noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 48) ; 2 uses
  tail call void @_ZN13sentencepiece22NBestSentencePieceTextC1EPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull %0), !inline_history !126
  br label %_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece22NBestSentencePieceTextEEEPT_PS1_.exit

_ZN6google8protobuf5Arena21CreateMessageInternalIN13sentencepiece22NBestSentencePieceTextEEEPT_PS1_.exit: ; preds = %bb.c, %bb.b, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit
  %.0.i = phi ptr [ %i.q, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece31SentencePieceText_SentencePiece3NewEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece31SentencePieceText_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef null), !inline_history !15
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece31SentencePieceText_SentencePiece3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece31SentencePieceText_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !15
  ret ptr %i.a
}

declare void @_ZNK6google8protobuf11MessageLite25InitializationErrorStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK13sentencepiece31SentencePieceText_SentencePiece13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK6google8protobuf11MessageLite16InternalGetTableEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece17SentencePieceText3NewEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef null), !inline_history !16
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece17SentencePieceText3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !16
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK13sentencepiece17SentencePieceText13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  ret i32 %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece22NBestSentencePieceText3NewEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece22NBestSentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef null), !inline_history !17
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK13sentencepiece22NBestSentencePieceText3NewEPN6google8protobuf5ArenaE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece22NBestSentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef %1), !inline_history !17
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK13sentencepiece22NBestSentencePieceText13GetCachedSizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i32, ptr %i.a monotonic, align 8
  ret i32 %i.b
}

declare void @_ZN6google8protobuf8internal13VerifyVersionEiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal14DestroyMessageEPKv(ptr noundef) #1

declare void @_ZN6google8protobuf8internal11InitSCCImplEPNS1_11SCCInfoBaseE(ptr noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11ENS2_12EmptyDefaultEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare { ptr, i32 } @_ZN6google8protobuf8internal17VarintParseSlow32EPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream30WriteStringMaybeAliasedOutlineEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPh(ptr noundef nonnull align 8 dereferenceable(59), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #11

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 1
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -2
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  br label %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit

_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.g = icmp eq ptr %.0.i, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.h = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

bb.d:                                             ; preds = %_ZNK6google8protobuf8internal16InternalMetadata5arenaEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @_ZTIN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 noundef 40), !inline_history !14
  br label %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit

_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit: ; preds = %bb.d, %bb.e
  %i.s = tail call noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %.0.i, i64 noundef 40, ptr noundef nonnull @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv)
  br label %_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit

_ZN6google8protobuf5Arena14CreateInternalINS0_8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEJEEEPT_PS1_DpOT0_.exit: ; preds = %bb.c, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit
  %.sink11 = phi ptr [ %i.h, %bb.c ], [ %i.s, %_ZNK6google8protobuf8internal9ArenaImpl11RecordAllocEPKSt9type_infom.exit ] ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sink11, i8 0, i64 40, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sink11, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sink11, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !87
  store i8 0, ptr %i.u, align 8, !tbaa !54
  %i.v = ptrtoint ptr %.sink11 to i64
  %i.w = or i64 %i.v, 1
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %0, align 8, !tbaa !28
  store ptr %.0.i, ptr %.sink11, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %.sink11, i64 8
  ret ptr %i.y
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare noundef ptr @_ZN6google8protobuf8internal9ArenaImpl28AllocateAlignedAndAddCleanupEmPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf8internal21arena_destruct_objectINS1_16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvPv(ptr noundef %0) #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !54
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN6google8protobuf8internal16InternalMetadata9ContainerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

declare noundef ptr @_ZN6google8protobuf5Arena21AllocateAlignedNoHookEm(ptr noundef nonnull align 8 dereferenceable(40), i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece31SentencePieceText_SentencePieceEE5MergeERKS4_PS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN13sentencepiece31SentencePieceText_SentencePiece9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %0)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN6google8protobuf8internal18GenericTypeHandlerIN13sentencepiece17SentencePieceTextEE5MergeERKS4_PS4_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZN13sentencepiece17SentencePieceText9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }

!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}
!llvm.errno.tbaa = !{!25}

!0 = distinct !{null, ptr @_ZN13sentencepiece22NBestSentencePieceTextC2EPN6google8protobuf5ArenaE, null}
!1 = distinct !{null, ptr @_ZN13sentencepiece22NBestSentencePieceTextC2EPN6google8protobuf5ArenaE}
!2 = distinct !{null, ptr @_ZN13sentencepiece17SentencePieceTextC2EPN6google8protobuf5ArenaE}
!3 = distinct !{null, ptr @_ZN13sentencepiece17SentencePieceTextC2EPN6google8protobuf5ArenaE, null}
!4 = distinct !{null, ptr @_ZN13sentencepiece31SentencePieceText_SentencePieceC2EPN6google8protobuf5ArenaE}
!5 = distinct !{null, ptr @_ZN13sentencepiece31SentencePieceText_SentencePieceC2EPN6google8protobuf5ArenaE, null}
!6 = distinct !{!6, !94}
!7 = distinct !{!7, !94}
!8 = distinct !{!8, !94}
!9 = distinct !{!9, !94}
!10 = distinct !{!10, !94}
!11 = distinct !{!11, !94}
!12 = distinct !{!12, !94}
!13 = distinct !{!13, !94}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!21 = !{!"Simple C++ TBAA"}
!22 = !{!"omnipotent char", !21, i64 0}
!23 = !{!"int", !22, i64 0}
!24 = !{!"__libc_errno", !23, i64 0}
!25 = !{!24, !23, i64 0}
!26 = !{!"any pointer", !22, i64 0}
!27 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"vtable pointer", !21, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!"_ZTSN6google8protobuf8internal9TaggedPtrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !26, i64 0}
!33 = !{!32, !26, i64 0}
!34 = !{!"_ZTSN6google8protobuf11MessageLiteE", !27, i64 8}
!35 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !26, i64 0}
!36 = !{!"short", !22, i64 0}
!37 = !{!"_ZTSN6google8protobuf8internal12ExtensionSetE", !35, i64 0, !36, i64 8, !36, i64 10, !22, i64 16}
!38 = !{!"_ZTSN6google8protobuf8internal7HasBitsILm1EEE", !22, i64 0}
!39 = !{!"_ZTSSt13__atomic_baseIiE", !23, i64 0}
!40 = !{!"_ZTSSt6atomicIiE", !39, i64 0}
!41 = !{!"_ZTSN6google8protobuf8internal10CachedSizeE", !40, i64 0}
!42 = !{!"p1 _ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !26, i64 0}
!43 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBaseE", !35, i64 0, !23, i64 8, !23, i64 12, !42, i64 16}
!44 = !{!"_ZTSN6google8protobuf16RepeatedPtrFieldIN13sentencepiece31SentencePieceText_SentencePieceEEE", !43, i64 0}
!45 = !{!"_ZTSN6google8protobuf8internal14ArenaStringPtrE", !32, i64 0}
!46 = !{!"float", !22, i64 0}
!47 = !{!"_ZTSN13sentencepiece17SentencePieceTextE", !34, i64 0, !37, i64 16, !38, i64 40, !41, i64 44, !44, i64 48, !45, i64 72, !46, i64 80}
!48 = !{!47, !46, i64 80}
!49 = !{!23, !23, i64 0}
!50 = !{!39, !23, i64 0}
!51 = !{!37, !35, i64 0}
!52 = !{!37, !36, i64 8}
!53 = !{!37, !36, i64 10}
!54 = !{!22, !22, i64 0}
!55 = !{!"p1 omnipotent char", !26, i64 0}
!56 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !55, i64 0}
!57 = !{!"long", !22, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !56, i64 0, !57, i64 8, !22, i64 16}
!59 = !{!58, !57, i64 8}
!60 = !{!58, !55, i64 0}
!61 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !35, i64 0}
!62 = !{!61, !35, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !26, i64 0}
!64 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !55, i64 0, !55, i64 8, !55, i64 16, !23, i64 24, !23, i64 28, !63, i64 32, !22, i64 40, !57, i64 72, !23, i64 80, !23, i64 84}
!65 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !26, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !26, i64 0}
!67 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !65, i64 0, !66, i64 8}
!68 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !64, i64 0, !23, i64 88, !23, i64 92, !67, i64 96}
!69 = !{!68, !23, i64 92}
!70 = !{!64, !55, i64 0}
!71 = !{!64, !55, i64 8}
!72 = !{!64, !23, i64 28}
!73 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!"_ZTSN13sentencepiece31SentencePieceText_SentencePieceE", !34, i64 0, !37, i64 16, !38, i64 40, !41, i64 44, !45, i64 48, !45, i64 56, !23, i64 64, !23, i64 68, !23, i64 72}
!76 = !{!75, !23, i64 64}
!77 = !{!75, !23, i64 68}
!78 = !{!75, !23, i64 72}
!79 = !{!64, !23, i64 80}
!80 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !26, i64 0}
!81 = !{!"bool", !22, i64 0}
!82 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !55, i64 0, !55, i64 8, !22, i64 16, !80, i64 48, !81, i64 56, !81, i64 57, !81, i64 58}
!83 = !{!82, !55, i64 0}
!84 = !{!"branch_weights", i32 1073205, i32 2146410443}
!85 = !{!"branch_weights", !"expected", i32 1609807, i32 2145873841}
!86 = !{!26, !26, i64 0}
!87 = !{!56, !55, i64 0}
!88 = !{!57, !57, i64 0}
!89 = !{!43, !35, i64 0}
!90 = !{!43, !42, i64 16}
!91 = !{!"_ZTSN6google8protobuf8internal20RepeatedPtrFieldBase3RepE", !23, i64 0, !22, i64 8}
!92 = !{!91, !23, i64 0}
!93 = !{!43, !23, i64 12}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!43, !23, i64 8}
!96 = !{!68, !23, i64 88}
!97 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !26, i64 0}
!98 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11SerialArenaEE", !97, i64 0}
!99 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11SerialArenaEE", !98, i64 0}
!100 = !{!"_ZTSSt13__atomic_baseImE", !57, i64 0}
!101 = !{!"_ZTSSt6atomicImE", !100, i64 0}
!102 = !{!"p1 _ZTSN6google8protobuf8internal9ArenaImpl7OptionsE", !26, i64 0}
!103 = !{!"_ZTSN6google8protobuf8internal9ArenaImplE", !99, i64 0, !99, i64 8, !101, i64 16, !57, i64 24, !102, i64 32}
!104 = !{!103, !57, i64 24}
!105 = !{!103, !102, i64 32}
!106 = !{!"p1 _ZTSN6google8protobuf8internal21ArenaMetricsCollectorE", !26, i64 0}
!107 = !{!"_ZTSN6google8protobuf8internal9ArenaImpl7OptionsE", !57, i64 0, !57, i64 8, !26, i64 16, !26, i64 24, !106, i64 32}
!108 = !{!107, !106, i64 32}
!109 = distinct !{null}
!110 = distinct !{null}
!111 = distinct !{!111, !94}
!112 = distinct !{!112, !94}
!113 = distinct !{!113, !94}
!114 = distinct !{!114, !94}
!115 = !{!46, !46, i64 0}
!116 = distinct !{null}
!117 = distinct !{!117, !94}
!118 = distinct !{!118, !94}
!119 = !{!"branch_weights", i32 2000, i32 2002}
!120 = distinct !{!120, !94}
!121 = distinct !{!121, !94}
!122 = distinct !{null}
!123 = distinct !{null}
!124 = distinct !{null}
!125 = distinct !{null}
!126 = distinct !{null}
end_hunk_1
