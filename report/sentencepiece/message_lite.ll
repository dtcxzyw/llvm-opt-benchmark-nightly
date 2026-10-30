Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/message_lite?download=true
inline.NumInlined: 343
inline.NumDeleted: 185
begin_hunk_0_@_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv:bb.a
  br i1 %i.bs, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.p, %bb.k
  %.sink = phi ptr [ %i.bi, %bb.k ], [ %i.br, %bb.p ]
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn9.pn.i, %bb.k ], [ %.pn, %bb.p ]
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !41
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bu) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.p, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn9.pn.i, %bb.k ], [ %.pn, %bb.p ], [ %.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN6google8protobuf5Arena3OwnINS0_11MessageLiteEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN6google8protobuf5Arena11OwnInternalINS0_11MessageLiteEEEvPT_St17integral_constantIbLb0EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf8internal9ArenaImpl10AddCleanupEPvPFvS3_E(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %1, ptr noundef nonnull @_ZN6google8protobuf8internal19arena_delete_objectINS0_11MessageLiteEEEvPv)
  br label %_ZN6google8protobuf5Arena11OwnInternalINS0_11MessageLiteEEEvPT_St17integral_constantIbLb0EE.exit

_ZN6google8protobuf5Arena11OwnInternalINS0_11MessageLiteEEEvPT_St17integral_constantIbLb0EE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite13MergeFromImplEPNS0_2io16CodedInputStreamENS1_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN6google8protobuf8internal12ParseContextC2IJPNS0_24ZeroCopyCodedInputStreamEEEEibPPKcDpOT_.exit:
  %3 = alloca %"class.google::protobuf::ZeroCopyCodedInputStream", align 8 ; 5 uses
  %4 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6google8protobuf24ZeroCopyCodedInputStreamE, i64 16), ptr %3, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.e = load i8, ptr %i.d, align 1, !tbaa !94, !range !49, !noundef !50
  %i.f = zext nneg i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  store i64 %i.f, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 3 uses
  store i32 2147483647, ptr %i.j, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.c, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  store i32 -2147483648, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8InitFromEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %3)
  store i32 0, ptr %i.l, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load <2 x ptr>, ptr %i.o, align 8, !tbaa !51
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !51
  %i.q = load ptr, ptr %0, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.n, ptr noundef nonnull %4) ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit, label %bb.a, !prof !34

bb.a:                                             ; preds = %_ZN6google8protobuf8internal12ParseContextC2IJPNS0_24ZeroCopyCodedInputStreamEEEEibPPKcDpOT_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.t to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.t to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = trunc i64 %i.al to i32
  %i.an = add nsw i32 %i.ag, %i.am
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %bb.c ] ; 3 uses
  %i.ao = icmp sgt i32 %.0.i, 0
  br i1 %i.ao, label %.noexc, label %_ZN6google8protobuf8internal18EpsCopyInputStream6BackUpEPKc.exit

.noexc:                                           ; preds = %bb.d
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !36  ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap, i32 noundef %.0.i), !inline_history !91
  %i.at = load i32, ptr %i.j, align 4, !tbaa !23
  %i.au = add nsw i32 %i.at, %.0.i
  store i32 %i.au, ptr %i.j, align 4, !tbaa !23
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream6BackUpEPKc.exit

_ZN6google8protobuf8internal18EpsCopyInputStream6BackUpEPKc.exit: ; preds = %.noexc, %bb.d
  %i.av = load i32, ptr %i.i, align 8, !tbaa !33  ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream6BackUpEPKc.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !26
  %i.ay = icmp ugt ptr %i.t, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit.thread18

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit, label %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit

_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !25
  %i.bd = ptrtoint ptr %i.t to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp sgt i64 %i.bf, %i.bi
  br i1 %i.bj, label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit, label %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit.thread18

_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit.thread18: ; preds = %bb.e, %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit
  %i.bk = add i32 %i.av, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !95
  br label %bb.h

bb.g:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream6BackUpEPKc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.bm, align 4, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit.thread18
  %i.bn = and i32 %2, 2
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %.noexc14, label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit, !prof !32

.noexc14:                                         ; preds = %bb.h
  %i.bo = load ptr, ptr %0, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef zeroext i1 %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !92
  br i1 %i.br, label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit, label %bb.i

bb.i:                                             ; preds = %.noexc14
  call void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit

_ZN6google8protobuf12_GLOBAL__N_118CheckFieldPresenceERKNS0_8internal12ParseContextERKNS0_11MessageLiteENS6_10ParseFlagsE.exit: ; preds = %bb.i, %bb.f, %.noexc14, %bb.h, %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit, %_ZN6google8protobuf8internal12ParseContextC2IJPNS0_24ZeroCopyCodedInputStreamEEEEibPPKcDpOT_.exit
  %.011 = phi i1 [ false, %_ZN6google8protobuf8internal12ParseContextC2IJPNS0_24ZeroCopyCodedInputStreamEEEEibPPKcDpOT_.exit ], [ false, %_ZN6google8protobuf8internal18EpsCopyInputStream16IsExceedingLimitEPKc.exit ], [ false, %bb.i ], [ true, %bb.h ], [ true, %.noexc14 ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %.011
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google8protobuf2io19ZeroCopyInputStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite27MergePartialFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite13MergeFromImplEPNS0_2io16CodedInputStreamENS1_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef 2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite20MergeFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite13MergeFromImplEPNS0_2io16CodedInputStreamENS1_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef 0)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite20ParseFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite13MergeFromImplEPNS0_2io16CodedInputStreamENS1_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef 1)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite27ParsePartialFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite13MergeFromImplEPNS0_2io16CodedInputStreamENS1_10ParseFlagsE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef 3)
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite23ParseFromZeroCopyStreamEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !97
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store i32 2147483647, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.d, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 -2147483648, ptr %i.i, align 4, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8InitFromEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1)
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.k, ptr noundef nonnull %2), !inline_history !98
  %.not.i.i = icmp ne ptr %i.o, null
  %i.p = load i32, ptr %i.f, align 8
  %i.q = icmp eq i32 %i.p, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.q, i1 false, !prof !31
  br i1 %or.cond.i.i, label %bb.b, label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE1EPNS0_2io19ZeroCopyInputStreamEEEbRKT0_.exit, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !99
  br i1 %i.u, label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE1EPNS0_2io19ZeroCopyInputStreamEEEbRKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE1EPNS0_2io19ZeroCopyInputStreamEEEbRKT0_.exit

_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE1EPNS0_2io19ZeroCopyInputStreamEEEbRKT0_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite30ParsePartialFromZeroCopyStreamEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !100
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store i32 2147483647, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.d, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 -2147483648, ptr %i.i, align 4, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8InitFromEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef %1)
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.k, ptr noundef nonnull %2), !inline_history !101
  %.not.i.i = icmp ne ptr %i.o, null
  %i.p = load i32, ptr %i.f, align 8
  %i.q = icmp eq i32 %i.p, 1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.q, i1 false, !prof !31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %or.cond.i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf11MessageLite23ParseFromFileDescriptorEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::internal::ParseContext", align 8 ; 11 uses
  %3 = alloca %"class.google::protobuf::io::FileInputStream", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6google8protobuf2io15FileInputStreamC1Eii(ptr noundef nonnull align 8 dereferenceable(88) %3, i32 noundef %1, i32 noundef -1)
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  invoke void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.noexc unwind label %bb.f, !inline_history !52

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.d = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 84
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.e, i8 0, i64 52, i1 false)
  store i32 2147483647, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.d, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 92
  store i32 -2147483648, ptr %i.i, align 4, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = invoke noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8InitFromEPNS0_2io19ZeroCopyInputStreamE(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull %3)
          to label %.noexc3 unwind label %bb.f

.noexc3:                                          ; preds = %.noexc
  %i.l = load ptr, ptr %0, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.k, ptr noundef nonnull %2)
          to label %.noexc4 unwind label %bb.f, !inline_history !52

.noexc4:                                          ; preds = %.noexc3
  %.not.i.i.i = icmp ne ptr %i.o, null
  %i.p = load i32, ptr %i.f, align 8
  %i.q = icmp eq i32 %i.p, 1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.q, i1 false, !prof !31
  br i1 %or.cond.i.i.i, label %bb.b, label %.thread, !prof !31

bb.b:                                             ; preds = %.noexc4
  %i.r = load ptr, ptr %0, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.noexc5 unwind label %bb.f, !inline_history !52

.noexc5:                                          ; preds = %bb.b
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc5
  invoke void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %.thread unwind label %bb.f

.thread:                                          ; preds = %.noexc4, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.e

bb.d:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !55
  %i.x = icmp eq i32 %i.w, 0
  br label %bb.e
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf11MessageLite15MergeFromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ag, i1 false, !prof !31
  br i1 %or.cond.i.i, label %bb.e, label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_.exit, !prof !31

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContextC2IJRNS0_11StringPieceEEEEibPPKcDpOT_.exit.i.i
  %i.ah = load ptr, ptr %0, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %0), !inline_history !115
  br i1 %i.ak, label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK6google8protobuf11MessageLite29LogInitializationErrorMessageEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_.exit

_ZN6google8protobuf11MessageLite9ParseFromILNS1_10ParseFlagsE0ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT0_.exit: ; preds = %_ZN6google8protobuf8internal12ParseContextC2IJRNS0_11StringPieceEEEEibPPKcDpOT_.exit.i.i, %bb.e, %bb.f
  %.0.i.i = phi i1 [ false, %bb.f ], [ false, %_ZN6google8protobuf8internal12ParseContextC2IJRNS0_11StringPieceEEEEibPPKcDpOT_.exit.i.i ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf11MessageLite31SerializeWithCachedSizesToArrayEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::io::EpsCopyOutputStream", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.e = load atomic i8, ptr @_ZN6google8protobuf2io17CodedOutputStream36default_serialization_deterministic_E monotonic, align 1, !range !49, !noundef !50
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f
  store ptr %i.g, ptr %2, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i8 0, ptr %i.j, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 57
  store i8 0, ptr %i.k, align 1, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 58
  store i8 %i.e, ptr %i.l, align 2, !tbaa !73
  %i.m = load ptr, ptr %0, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull %2), !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite22SerializeToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf11MessageLite29SerializePartialToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite29SerializePartialToCodedStreamEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 5 uses
  %5 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  %8 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %9 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  %10 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 4 uses
  %i.e = icmp ugt i64 %i.d, 2147483647
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 380)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  %i.f = load ptr, ptr %0, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull @.str.7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEm(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 noundef %i.d)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(56) %i.k)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  %i.l = load ptr, ptr %11, align 8, !tbaa !40    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.m, align 8, !tbaa !41
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %bb.as

bb.h:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.r, %bb.i ] ; 2 uses
  %i.t = load ptr, ptr %11, align 8, !tbaa !40    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !41
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

common.resume:                                    ; preds = %bb.ah, %bb.an, %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %.pn47.i, %bb.aq ], [ %.pn42.pn.pn.i, %bb.an ], [ %.pn.pn.pn.i, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %common.resume

bb.l:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.aa = tail call noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !119
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !118
  %i.ae = load ptr, ptr %0, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.ad, ptr noundef nonnull %1), !inline_history !116 ; 2 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !118
  %i.ai = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.ah) ; 2 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !71, !range !49, !noundef !50
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  br i1 %i.al, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = tail call noundef i64 @_ZNK6google8protobuf2io19EpsCopyOutputStream9ByteCountEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.ai)
  %i.an = load i64, ptr %i.ab, align 8, !tbaa !119
  %i.ao = add i64 %i.ac, %i.am
  %i.ap = add i64 %i.aa, %i.an
  %i.aq = sub i64 %i.ao, %i.ap
  %sext = shl i64 %i.aq, 32
  %i.ar = ashr exact i64 %sext, 32
  %.not = icmp eq i64 %i.d, %i.ar
  br i1 %.not, label %bb.ar, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %0, align 8, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.not.i = icmp eq i64 %i.d, %i.av
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 84)
  %i.aw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str.17)
          to label %bb.p unwind label %bb.ac

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ax = load ptr, ptr %0, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.q unwind label %bb.ad

bb.q:                                             ; preds = %bb.p
  %i.ba = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.ae

bb.r:                                             ; preds = %bb.q
  %i.bb = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr noundef nonnull @.str.18)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(56) %i.bb)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.bc = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.critedge51.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !41
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bg) #20
  br label %.critedge51.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.u

.critedge51.i:                                    ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.a, %.critedge51.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 87)
  %i.bh = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.19)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.bi = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull @.str.20)
          to label %bb.w unwind label %bb.ai

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.bj = load ptr, ptr %0, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.bm = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.y unwind label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.bn = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.bm, ptr noundef nonnull @.str.21)
          to label %bb.z unwind label %bb.ak

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.bn)
          to label %bb.aa unwind label %bb.al

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.bo = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %.critedge59.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i: ; preds = %bb.aa
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !41
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %.critedge59.i

.critedge59.i:                                    ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %8, i32 noundef 3, ptr noundef nonnull @.str.2, i32 noundef 92)
  %i.bt = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull @.str.22)
          to label %bb.ab unwind label %bb.ao

bb.ab:                                            ; preds = %.critedge59.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(56) %i.bt)
          to label %_ZN6google8protobuf12_GLOBAL__N_124ByteSizeConsistencyErrorEmmmRKNS0_11MessageLiteE.exit unwind label %bb.ap

bb.ac:                                            ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

bb.ae:                                            ; preds = %bb.r, %bb.q
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn.i = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %i.bw, %bb.ae ] ; 2 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i: ; preds = %bb.ag
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !41
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i, %bb.ad
  %.pn.pn.i = phi { ptr, i32 } [ %i.bv, %bb.ad ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63.i ], [ %.pn.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i, %bb.ac
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65.i ], [ %i.bu, %bb.ac ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume

bb.ai:                                            ; preds = %bb.v, %bb.u
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.aj:                                            ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

bb.ak:                                            ; preds = %bb.y, %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.z
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn42.i = phi { ptr, i32 } [ %i.cg, %bb.al ], [ %i.cf, %bb.ak ] ; 2 uses
  %i.ch = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i: ; preds = %bb.am
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !41
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i, %bb.aj
  %.pn42.pn.i = phi { ptr, i32 } [ %i.ce, %bb.aj ], [ %.pn42.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66.i ], [ %.pn42.i, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i, %bb.ai
  %.pn42.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68.i ], [ %i.cd, %bb.ai ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.ao:                                            ; preds = %.critedge59.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn47.i = phi { ptr, i32 } [ %i.cn, %bb.ap ], [ %i.cm, %bb.ao ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume

_ZN6google8protobuf12_GLOBAL__N_124ByteSizeConsistencyErrorEmmmRKNS0_11MessageLiteE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ar

bb.ar:                                            ; preds = %bb.m, %_ZN6google8protobuf12_GLOBAL__N_124ByteSizeConsistencyErrorEmmmRKNS0_11MessageLiteE.exit, %bb.l
  %.017 = xor i1 %i.al, true
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.118 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.017, %bb.ar ]
  ret i1 %.118
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEm(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite25SerializeToZeroCopyStreamEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK6google8protobuf11MessageLite32SerializePartialToZeroCopyStreamEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf11MessageLite32SerializePartialToZeroCopyStreamEPNS0_2io20ZeroCopyOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  %5 = alloca %"class.google::protobuf::io::EpsCopyOutputStream", align 8 ; 11 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.e = icmp ugt i64 %i.d, 2147483647
end_hunk_1
