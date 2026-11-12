Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_tctable_lite?download=true
inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser22WriteMapEntryAsUnknownEPNS0_11MessageLiteEPKNS1_16TcParseTableBaseERNS1_14UntypedMapBaseEPNS0_5ArenaEjPNS1_8NodeBaseENS1_10MapAuxInfoE:bb.a
    i8 2, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i = load i8, ptr %i.ac, align 1, !tbaa !146, !range !147, !noundef !148
  %i.ad = trunc nuw i8 %.val1.i.i.i.i to i1
  invoke void @_ZN6google8protobuf8internal14WireFormatLite9WriteBoolEibPNS0_2io17CodedOutputStreamE(i32 noundef 1, i1 noundef zeroext %i.ad, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.g:                                             ; preds = %bb.e
  %i.ae = and i8 %.sroa.2.0.extract.trunc.i, 2
  %.not.i.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.ac, align 4, !tbaa !19
  invoke void @_ZN6google8protobuf8internal14WireFormatLite11WriteSInt32EiiPNS0_2io17CodedOutputStreamE(i32 noundef 1, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.ag = trunc i16 %.sroa.2.0.extract.shift.i to i1
  %i.ah = load i32, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf8internal14WireFormatLite10WriteInt32EiiPNS0_2io17CodedOutputStreamE(i32 noundef 1, i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.k:                                             ; preds = %bb.i
  invoke void @_ZN6google8protobuf8internal14WireFormatLite11WriteUInt32EijPNS0_2io17CodedOutputStreamE(i32 noundef 1, i32 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.l:                                             ; preds = %bb.e
  %i.ai = and i8 %.sroa.2.0.extract.trunc.i, 2
  %.not.i.i7.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i7.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !149
  invoke void @_ZN6google8protobuf8internal14WireFormatLite11WriteSInt64EilPNS0_2io17CodedOutputStreamE(i32 noundef 1, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.n:                                             ; preds = %bb.l
  %i.ak = trunc i16 %.sroa.2.0.extract.shift.i to i1
  %i.al = load i64, ptr %i.ac, align 8, !tbaa !149 ; 2 uses
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6google8protobuf8internal14WireFormatLite10WriteInt64EilPNS0_2io17CodedOutputStreamE(i32 noundef 1, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.p:                                             ; preds = %bb.n
  invoke void @_ZN6google8protobuf8internal14WireFormatLite11WriteUInt64EimPNS0_2io17CodedOutputStreamE(i32 noundef 1, i64 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.q:                                             ; preds = %bb.e
  unreachable

bb.r:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !19
  invoke void @_ZN6google8protobuf8internal14WireFormatLite12WriteFixed32EijPNS0_2io17CodedOutputStreamE(i32 noundef 1, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.s:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !149
  invoke void @_ZN6google8protobuf8internal14WireFormatLite12WriteFixed64EimPNS0_2io17CodedOutputStreamE(i32 noundef 1, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.t:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  invoke void @_ZN6google8protobuf8internal14WireFormatLite11WriteStringEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_2io17CodedOutputStreamE(i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit unwind label %bb.aa

bb.u:                                             ; preds = %bb.d
  unreachable

_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !281
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  invoke void @_ZN6google8protobuf8internal14WireFormatLite10WriteInt32EiiPNS0_2io17CodedOutputStreamE(i32 noundef 2, i32 noundef %i.av, ptr noundef nonnull %9)
          to label %bb.v unwind label %bb.aa

bb.v:                                             ; preds = %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !175
  %i.ay = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.ax(ptr noundef null, ptr noundef null, ptr noundef null, i64 0, ptr noundef null, i64 noundef 0)
          to label %_ZN6google8protobuf8internal8TcParser18GetUnknownFieldOpsEPKNS1_16TcParseTableBaseE.exit unwind label %bb.ad, !inline_history !210

_ZN6google8protobuf8internal8TcParser18GetUnknownFieldOpsEPKNS1_16TcParseTableBaseE.exit: ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !639
  %i.bb = lshr i32 %4, 3
  %i.bc = load ptr, ptr %7, align 8, !tbaa !155
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !154
  invoke void %i.ba(ptr noundef %0, i32 noundef %i.bb, i64 %i.bd, ptr %i.bc)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZN6google8protobuf8internal8TcParser18GetUnknownFieldOpsEPKNS1_16TcParseTableBaseE.exit
  %i.be = icmp eq ptr %3, null
  br i1 %i.be, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6google8protobuf8internal14UntypedMapBase10DeleteNodeEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %5)
          to label %bb.ae unwind label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %.noexc, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.k, %bb.j, %bb.h, %bb.f, %_ZN6google8protobuf8internalL15SerializeMapKeyERNS1_14UntypedMapBaseEPNS1_8NodeBaseENS1_11MapTypeCardERNS0_2io17CodedOutputStreamE.exit
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %9) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bh, %bb.aa ], [ %i.bg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ab ], [ %i.bf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.af

bb.ad:                                            ; preds = %bb.v, %bb.x, %_ZN6google8protobuf8internal8TcParser18GetUnknownFieldOpsEPKNS1_16TcParseTableBaseE.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.x, %bb.w
  %i.bj = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.c
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.bl = load i64, ptr %i.c, align 8, !tbaa !121
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %.pn19 = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %.pn.pn, %bb.ac ]
  %i.bn = load ptr, ptr %7, align 8, !tbaa !155   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.c
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.af
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !121
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn19
}

declare void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #13

declare void @_ZN6google8protobuf8internal14WireFormatLite10WriteInt32EiiPNS0_2io17CodedOutputStreamE(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #17

declare void @_ZN6google8protobuf8internal14UntypedMapBase10DeleteNodeEPNS1_8NodeBaseE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal8TcParser16ParseOneMapEntryEPNS1_8NodeBaseEPKcPNS1_12ParseContextEPKNS1_16TcParseTableBase8FieldAuxEPKS9_RKNS9_10FieldEntryERNS1_14UntypedMapBaseE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !644 {
bb.a:
  %.sroa.088.0.copyload = load i16, ptr %3, align 8, !tbaa !121 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !121 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.7.0.copyload = load i8, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !121
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 6 uses
  %.sroa.088.sroa.0.0.extract.trunc.mask = and i16 %.sroa.088.0.copyload, 255
  %i.d = zext nneg i16 %.sroa.088.sroa.0.0.extract.trunc.mask to i32 ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.mask = and i16 %.sroa.5.0.copyload, 255
  %i.e = zext nneg i16 %.sroa.5.sroa.0.0.extract.trunc.mask to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = and i8 %.sroa.7.0.copyload, 4
  %i.m = icmp ne i8 %i.l, 0
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge, %bb.a
  %.0149 = phi ptr [ %1, %bb.a ], [ %.0149.be, %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge ] ; 4 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !161
  %i.o = load ptr, ptr %2, align 8, !tbaa !162
  %i.p = icmp ult ptr %.0149, %i.o
  br i1 %i.p, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread187, label %bb.b, !prof !112

bb.b:                                             ; preds = %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.r = ptrtoint ptr %.0149 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = load i32, ptr %i.c, align 4, !tbaa !164
  %i.w = icmp eq i32 %i.v, %i.u
  br i1 %i.w, label %bb.c, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.c:                                             ; preds = %bb.b
  %i.x = icmp sgt i32 %i.u, 0
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = icmp eq ptr %i.y, null
  %or.cond.i.i = select i1 %i.x, i1 %i.z, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.0149
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.b
  %i.aa = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackILb0EEESt4pairIPKcbEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.u, i32 noundef %i.n) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.aa, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.aa, 1
  %i.ab = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.ab, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread187

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread187: ; preds = %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.5190 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.0149, %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit ] ; 5 uses
  %i.ac = load i8, ptr %.5190, align 1, !tbaa !121 ; 3 uses
  %i.ad = sext i8 %i.ac to i32                    ; 3 uses
  %i.ae = icmp ne i32 %i.ad, %i.d
  %i.af = icmp ne i32 %i.ad, %i.e
  %i.ag = and i1 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %bb.k, !prof !90

bb.d:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread187
  %i.ah = zext i8 %i.ac to i32                    ; 2 uses
  %i.ai = icmp sgt i8 %i.ac, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %.5190, i64 1 ; 2 uses
  br i1 %i.ai, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !121 ; 2 uses
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 7
  %i.an = add nsw i32 %i.ah, -128
  %i.ao = or disjoint i32 %i.am, %i.an            ; 2 uses
  %i.ap = icmp sgt i8 %i.ak, -1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.5190, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.5190, i32 noundef %i.ao) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.ar, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.ar, 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.1148 = phi i32 [ %.fca.1.extract.i, %bb.g ], [ %i.ao, %bb.f ], [ %i.ah, %bb.d ] ; 7 uses
  %.1.i = phi ptr [ %.fca.0.extract.i, %bb.g ], [ %i.aq, %bb.f ], [ %i.aj, %bb.d ] ; 4 uses
  %i.as = icmp ne i32 %.1148, %i.d
  %i.at = icmp ne i32 %.1148, %i.e
  %i.au = and i1 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %bb.l, !prof !90

bb.h:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.av = icmp eq ptr %.1.i, null
  br i1 %i.av, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %.1148, 0
  %i.ax = and i32 %.1148, 7
  %i.ay = icmp eq i32 %i.ax, 4
  %or.cond39 = or i1 %i.aw, %i.ay
  br i1 %or.cond39, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.thread219, label %bb.j

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.thread219: ; preds = %bb.i
  %i.az = add i32 %.1148, -1
  store i32 %i.az, ptr %i.j, align 8, !tbaa !100
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %.1148, ptr noundef null, ptr noundef nonnull %.1.i, ptr noundef nonnull %2) ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge, !prof !90

bb.k:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread187
  %i.bc = getelementptr inbounds nuw i8, ptr %.5190, i64 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.k
  %.1150 = phi ptr [ %.1.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.bc, %bb.k ] ; 20 uses
  %.0147 = phi i32 [ %.1148, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.ad, %bb.k ] ; 2 uses
  %i.bd = icmp eq i32 %.0147, %i.d
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 4 ; 3 uses
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.376.0.extract.shift = lshr i32 %.sroa.0.0.copyload.i, 24
  %.sroa.376.0.extract.trunc = trunc nuw i32 %.sroa.376.0.extract.shift to i8
  %i.be = and i8 %.sroa.376.0.extract.trunc, 15
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %sum.shift = lshr i32 %.sroa.0.0.copyload.i, 28
  %7 = trunc nuw nsw i32 %sum.shift to i8
  %8 = lshr i32 %.sroa.0.0.copyload.i, 16
  %9 = and i32 %8, 255
  %i.bf = zext nneg i32 %9 to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.479.0.in.in = phi i16 [ %.sroa.088.0.copyload, %bb.m ], [ %.sroa.5.0.copyload, %bb.n ]
  %storemerge = phi ptr [ %i.g, %bb.m ], [ %i.bg, %bb.n ] ; 12 uses
  %.031 = phi i8 [ %i.be, %bb.m ], [ %7, %bb.n ]  ; 2 uses
  %.sroa.479.0.in = lshr i16 %.sroa.479.0.in.in, 8
  %.sroa.479.0 = trunc nuw i16 %.sroa.479.0.in to i8 ; 3 uses
  %i.bh = and i32 %.0147, 7
  switch i32 %i.bh, label %bb.az [
    i32 0, label %bb.p
    i32 5, label %bb.aj
    i32 1, label %bb.ak
    i32 2, label %bb.al
  ]

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %.1150, i64 1 ; 2 uses
  %i.bj = load i8, ptr %.1150, align 1, !tbaa !121 ; 2 uses
  %i.bk = sext i8 %i.bj to i64                    ; 2 uses
  %i.bl = icmp sgt i8 %i.bj, -1
  br i1 %i.bl, label %bb.ae, label %bb.q, !prof !112

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %.1150, i64 2 ; 2 uses
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !121
  %i.bo = sext i8 %i.bn to i64
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 -128, i64 7) ; 4 uses
  %i.bq = icmp sgt i64 %i.bp, -1
  br i1 %i.bq, label %bb.ad, label %bb.r, !prof !90

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %.1150, i64 3 ; 2 uses
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !121
  %i.bt = sext i8 %i.bs to i64
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 -128, i64 14) ; 4 uses
  %i.bv = icmp sgt i64 %i.bu, -1
  br i1 %i.bv, label %bb.ac, label %bb.s, !prof !90

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %.1150, i64 4 ; 2 uses
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !121
  %i.by = sext i8 %i.bx to i64
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 -128, i64 21)
  %i.ca = and i64 %i.bz, %i.bp                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, -1
  br i1 %i.cb, label %bb.ac, label %bb.t, !prof !90

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %.1150, i64 5 ; 2 uses
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !121
  %i.ce = sext i8 %i.cd to i64
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 -128, i64 28)
  %i.cg = and i64 %i.cf, %i.bu                    ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, -1
  br i1 %i.ch, label %bb.ac, label %bb.u, !prof !112

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.1150, i64 6 ; 2 uses
  %i.cj = load i8, ptr %i.cc, align 1, !tbaa !121
  %i.ck = sext i8 %i.cj to i64
  %i.cl = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 -128, i64 35)
  %i.cm = and i64 %i.cl, %i.ca                    ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  br i1 %i.cn, label %bb.ac, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %.1150, i64 7 ; 2 uses
  %i.cp = load i8, ptr %i.ci, align 1, !tbaa !121
  %i.cq = sext i8 %i.cp to i64
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 -128, i64 42)
  %i.cs = and i64 %i.cr, %i.cg                    ; 4 uses
  %i.ct = icmp sgt i64 %i.cs, -1
  br i1 %i.ct, label %bb.ac, label %bb.w, !prof !90

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %.1150, i64 8 ; 2 uses
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !121
  %i.cw = sext i8 %i.cv to i64
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cw, i64 -128, i64 49)
  %i.cy = and i64 %i.cx, %i.cm                    ; 6 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %bb.ac, label %bb.x, !prof !90

bb.x:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %.1150, i64 9 ; 2 uses
  %i.db = load i8, ptr %i.cu, align 1, !tbaa !121
  %i.dc = zext i8 %i.db to i64
  %i.dd = tail call noundef i64 @llvm.fshl.i64(i64 %i.dc, i64 -128, i64 56)
  %i.de = and i64 %i.dd, %i.cs                    ; 5 uses
  %i.df = icmp sgt i64 %i.de, -1
  br i1 %i.df, label %bb.ac, label %bb.y, !prof !90

bb.y:                                             ; preds = %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %.1150, i64 10 ; 3 uses
  %i.dh = load i8, ptr %i.da, align 1, !tbaa !121 ; 3 uses
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %i.di, label %bb.ac, label %bb.z, !prof !112

bb.z:                                             ; preds = %bb.y
  %.not.i43 = icmp sgt i8 %i.dh, -1
  br i1 %.not.i43, label %bb.aa, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !112

bb.aa:                                            ; preds = %bb.z
  %i.dj = and i8 %i.dh, 1
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.de) #31, !srcloc !208
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0183 = phi ptr [ %i.br, %bb.r ], [ %i.bw, %bb.s ], [ %i.cc, %bb.t ], [ %i.ci, %bb.u ], [ %i.co, %bb.v ], [ %i.cu, %bb.w ], [ %i.da, %bb.x ], [ %i.dg, %bb.y ], [ %i.dg, %bb.ab ], [ %i.dg, %bb.aa ]
  %.0154 = phi i64 [ %i.bp, %bb.r ], [ %i.ca, %bb.s ], [ %i.ca, %bb.t ], [ %i.cm, %bb.u ], [ %i.cm, %bb.v ], [ %i.cy, %bb.w ], [ %i.cy, %bb.x ], [ %i.cy, %bb.y ], [ %i.cy, %bb.ab ], [ %i.cy, %bb.aa ]
  %.0153 = phi i64 [ %i.bu, %bb.r ], [ %i.bu, %bb.s ], [ %i.cg, %bb.t ], [ %i.cg, %bb.u ], [ %i.cs, %bb.v ], [ %i.cs, %bb.w ], [ %i.de, %bb.x ], [ %i.de, %bb.y ], [ %i.dl, %bb.ab ], [ %i.de, %bb.aa ]
  %i.dm = and i64 %.0153, %.0154
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.q
  %.1184 = phi ptr [ %i.bm, %bb.q ], [ %.0183, %bb.ac ]
  %.1155 = phi i64 [ %i.bp, %bb.q ], [ %i.dm, %bb.ac ]
  %i.dn = and i64 %.1155, %i.bk
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.p
  %.0152.ph = phi i64 [ %i.bk, %bb.p ], [ %i.dn, %bb.ad ] ; 5 uses
  %.0.i44.ph = phi ptr [ %i.bi, %bb.p ], [ %.1184, %bb.ad ] ; 3 uses
  switch i8 %.031, label %bb.ai [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.do = icmp ne i64 %.0152.ph, 0
  %i.dp = zext i1 %i.do to i8
  store i8 %i.dp, ptr %storemerge, align 1, !tbaa !146
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge

bb.ag:                                            ; preds = %bb.ae
  %i.dq = trunc i64 %.0152.ph to i32              ; 3 uses
  %i.dr = and i8 %.sroa.479.0, 2
  %.not226 = icmp eq i8 %i.dr, 0
  %i.ds = lshr i32 %i.dq, 1
  %i.dt = and i32 %i.dq, 1
  %i.du = sub nsw i32 0, %i.dt
  %i.dv = xor i32 %i.ds, %i.du
  %.032 = select i1 %.not226, i32 %i.dq, i32 %i.dv
  store i32 %.032, ptr %storemerge, align 1
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge

bb.ah:                                            ; preds = %bb.ae
  %i.dw = and i8 %.sroa.479.0, 2
  %.not225 = icmp eq i8 %i.dw, 0
  %i.dx = lshr i64 %.0152.ph, 1
  %i.dy = and i64 %.0152.ph, 1
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = xor i64 %i.dx, %i.dz
  %.0 = select i1 %.not225, i64 %.0152.ph, i64 %i.ea
  store i64 %.0, ptr %storemerge, align 1
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge

bb.ai:                                            ; preds = %bb.ae
  unreachable

bb.aj:                                            ; preds = %bb.o
  %.0.copyload.i.i.i = load i32, ptr %.1150, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.1150, i64 4
  store i32 %.0.copyload.i.i.i, ptr %storemerge, align 1
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge

bb.ak:                                            ; preds = %bb.o
  %.0.copyload.i.i.i51 = load i64, ptr %.1150, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.1150, i64 8
  store i64 %.0.copyload.i.i.i51, ptr %storemerge, align 1
  br label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit.backedge

bb.al:                                            ; preds = %bb.o
  %i.ed = icmp eq i8 %.031, 5
  %i.ee = load i8, ptr %.1150, align 1, !tbaa !121 ; 2 uses
  %i.ef = zext i8 %i.ee to i32                    ; 4 uses
  %i.eg = icmp sgt i8 %i.ee, -1                   ; 2 uses
  br i1 %i.ed, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  br i1 %i.eg, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %.1150, i64 1
  br label %bb.an

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.am
  %i.ei = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %.1150, i32 noundef %i.ef) ; 2 uses
  %.fca.0.extract.i52 = extractvalue { ptr, i32 } %i.ei, 0 ; 2 uses
  %.fca.1.extract.i53 = extractvalue { ptr, i32 } %i.ei, 1
  %i.ej = icmp eq ptr %.fca.0.extract.i52, null
  br i1 %i.ej, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.an, !prof !645

bb.an:                                            ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i54198 = phi i32 [ %i.ef, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i53, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i197 = phi ptr [ %i.eh, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i52, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 4 uses
  %i.ek = tail call noundef zeroext i1 @_ZN6google8protobuf8internal18EpsCopyInputStream14CanReadFromPtrEiPKc(ptr noundef nonnull align 8 dereferenceable(88) %2, i32 noundef %.0.i54198, ptr noundef nonnull %storemerge.i197)
  br i1 %i.ek, label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %bb.an
end_hunk_0
