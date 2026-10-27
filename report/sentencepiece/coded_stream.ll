Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/coded_stream?download=true
inline.NumInlined: 149
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN6google8protobuf2io16CodedInputStream37CheckEntireMessageConsumedAndPopLimitEi:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %1) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp slt i32 %i.l, %i.n
  br i1 %i.o, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i32 %i.n, %i.l                   ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %i.i, i64 %i.r
  store ptr %i.s, ptr %i.f, align 8, !tbaa !22
  br label %_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit

_ZN6google8protobuf2io16CodedInputStream8PopLimitEi.exit: ; preds = %bb.a, %bb.b
  %.sink.i.i = phi i32 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.t = trunc nuw i8 %i.b to i1
  store i32 %.sink.i.i, ptr %i.d, align 4, !tbaa !24
  store i8 0, ptr %i.a, align 4, !tbaa !33
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg3.i.neg = sub i64 %i.i, %i.j
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %.neg2.i.neg = sub i32 %i.b, %i.e
  %.neg = add i32 %.neg2.i.neg, %i.l
  %i.m = add i32 %.neg, %.neg4.i.neg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6google8protobuf2io16CodedInputStream18SetTotalBytesLimitEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((48, 52)) %0, i32 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !23
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i = sub i64 %i.g, %i.f
  %.neg4.i = trunc i64 %.neg3.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.neg2.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i, %.neg4.i
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %1) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.speculated, ptr %i.k, align 8, !tbaa !38
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 2 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !32
  %i.p = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated, i32 %i.o) ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.b
  br i1 %i.q, label %bb.b, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.r = sub nsw i32 %i.b, %i.p                   ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds i8, ptr %i.m, i64 %i.t
  store ptr %i.u, ptr %i.c, align 8, !tbaa !22
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.r, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink.i, ptr %i.h, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6google8protobuf2io16CodedInputStream25BytesUntilTotalBytesLimitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2147483647
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %.neg3.i.neg = sub i64 %i.i, %i.j
  %.neg4.i.neg = trunc i64 %.neg3.i.neg to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %.neg2.i.neg = sub i32 %i.b, %i.e
  %.neg = add i32 %.neg2.i.neg, %i.l
  %i.m = add i32 %.neg, %.neg4.i.neg
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf2io16CodedInputStream25PrintTotalBytesLimitErrorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 193)
  %i.a = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull @.str.2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38
  %i.d = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEi(ptr noundef nonnull align 8 dereferenceable(56) %i.a, i32 noundef %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull @.str.3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.f, %bb.f ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = sub nsw i32 %1, %2                       ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32
  %i.k = load i32, ptr %i.h, align 8, !tbaa !32
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !28
  %i.o = sub nsw i32 %i.l, %i.n                   ; 3 uses
  %i.p = icmp slt i32 %i.o, %i.g
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  store i32 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %i.o) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21   ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i32 noundef %i.g) ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i64 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ai = trunc i64 %i.ah to i32
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.m, align 8, !tbaa !28
  %i.ak = add nsw i32 %i.aj, %i.g
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.sink = phi i32 [ %i.ak, %bb.h ], [ %i.ai, %bb.g ]
  store i32 %.sink, ptr %i.m, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.d, %bb.b
  %.1 = phi i1 [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ %i.ac, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream22GetDirectBufferPointerEPPKvPi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %i.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %0, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.j = phi ptr [ %.pre, %._crit_edge ], [ %i.c, %bb.a ]
  store ptr %i.j, ptr %1, align 8, !tbaa !39
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  store i32 %i.p, ptr %2, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %1 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %2 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !28
  %i.p = sub nsw i32 %i.o, %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %.not17 = icmp slt i32 %i.p, %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8
  %.not18 = icmp eq i32 %i.r, %i.t
  %or.cond = select i1 %.not17, i1 true, i1 %.not18
  br i1 %or.cond, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6google8protobuf2io16CodedInputStream25PrintTotalBytesLimitErrorEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b), !inline_history !62 ; 2 uses
  br i1 %i.z, label %bb.h, label %_ZN6google8protobuf2io12_GLOBAL__N_112NextNonEmptyEPNS1_19ZeroCopyInputStreamEPPKvPi.exit

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !32  ; 4 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.i, !llvm.loop !63

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !23
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !22
  %i.ag = icmp slt i32 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br i1 %i.ag, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef 638)
  %i.ah = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull @.str.9)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(56) %i.ah)
          to label %bb.m unwind label %bb.p

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.critedge21

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %.pre = load i32, ptr %i.b, align 4, !tbaa !32
  br label %.critedge21

.critedge21:                                      ; preds = %bb.l, %bb.m
  %i.ai = phi i32 [ %i.aa, %bb.l ], [ %.pre, %bb.m ] ; 2 uses
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !28  ; 3 uses
  %i.ak = sub nsw i32 2147483647, %i.ai           ; 2 uses
  %.not = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %.critedge21
  %i.al = add nsw i32 %i.ai, %i.aj
  %.pre24 = load ptr, ptr %i.af, align 8, !tbaa !22
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.am, %bb.o ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %.critedge21
  %i.ao = sub nuw nsw i32 %i.aj, %i.ak            ; 2 uses
  store i32 %i.ao, ptr %i.f, align 4, !tbaa !25
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.aq = zext nneg i32 %i.ao to i64
  %i.ar = sub nsw i64 0, %i.aq
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar ; 2 uses
  store ptr %i.as, ptr %i.af, align 8, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %i.at = phi ptr [ %i.as, %bb.r ], [ %.pre24, %bb.n ]
  %storemerge = phi i32 [ 2147483647, %bb.r ], [ %i.al, %bb.n ] ; 3 uses
  store i32 %storemerge, ptr %i.i, align 8, !tbaa !28
  %i.au = load i32, ptr %i.c, align 4, !tbaa !24
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 %i.av ; 2 uses
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !32
  %i.az = load i32, ptr %i.k, align 8, !tbaa !32
  %i.ba = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.az) ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %storemerge
  br i1 %i.bb, label %bb.t, label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

bb.t:                                             ; preds = %bb.s
  %i.bc = sub nsw i32 %storemerge, %i.ba          ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %i.aw, i64 %i.be
  store ptr %i.bf, ptr %i.af, align 8, !tbaa !22
  br label %_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit

_ZN6google8protobuf2io16CodedInputStream21RecomputeBufferLimitsEv.exit: ; preds = %bb.s, %bb.t
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io19EpsCopyOutputStream4SkipEiPPh:bb.a
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io19EpsCopyOutputStream22GetDirectBufferPointerEPPvPiPPh(ptr noundef nonnull align 8 dereferenceable(59) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i, %bb.c
  %.012.i = phi ptr [ %i.g, %bb.c ], [ %i.an, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ] ; 4 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread43, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt ptr %.012.i, %i.n
  %i.p = ptrtoint ptr %.012.i to i64              ; 3 uses
  br i1 %i.o, label %bb.f, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i, label %bb.g, !prof !53

_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i: ; preds = %bb.f
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 %i.q, %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.j, i64 %i.u, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !3
  br i1 %i.z, label %bb.j, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !32  ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.k, !llvm.loop !2

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp sgt i32 %i.ab, 16
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  store ptr %i.ah, ptr %0, align 8, !tbaa !51
  store ptr null, ptr %i.h, align 8, !tbaa !52
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !52
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds i8, ptr %i.j, i64 %i.ai
  store ptr %i.aj, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i: ; preds = %bb.m, %bb.l, %bb.i
  %.2.i.i = phi ptr [ %i.aa, %bb.l ], [ %i.j, %bb.m ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.pre.i = load i8, ptr %i.c, align 8, !tbaa !54, !range !36
  %i.ak = trunc nuw i8 %.pre.i to i1
  %i.al = shl i64 %i.r, 32
  %i.am = ashr exact i64 %i.al, 32
  %i.an = getelementptr inbounds i8, ptr %.2.i.i, i64 %i.am
  br i1 %i.ak, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread, label %bb.d

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread43: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.012.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  store ptr %.012.i, ptr %i.h, align 8, !tbaa !52
  %.0.i46 = trunc i64 %i.ar to i32
  store i32 %.0.i46, ptr %2, align 4, !tbaa !32
  br label %bb.n

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i
  store i32 0, ptr %2, align 4, !tbaa !32
  br label %bb.s

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit: ; preds = %bb.e
  %i.as = sub i64 %i.p, %i.k                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.j, i64 %i.as, i1 false)
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.as
  store ptr %i.au, ptr %i.h, align 8, !tbaa !52
  %i.av = load ptr, ptr %0, align 8, !tbaa !51
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.p
  %.pre.pre = load i8, ptr %i.c, align 8, !tbaa !54, !range !36
  %i.ay = trunc nuw i8 %.pre.pre to i1
  %.0.i = trunc i64 %i.ax to i32
  store i32 %.0.i, ptr %2, align 4, !tbaa !32
  br i1 %i.ay, label %bb.s, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread43, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !52
  store ptr %i.az, ptr %1, align 8, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.n
  %i.ba = load i32, ptr %2, align 4, !tbaa !32    ; 4 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br i1 %i.bg, label %bb.o, label %bb.q, !llvm.loop !67

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.bh = load ptr, ptr %1, align 8, !tbaa !39    ; 3 uses
  %i.bi = icmp sgt i32 %i.ba, 16                  ; 3 uses
  %i.bj = zext nneg i32 %i.ba to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16
  %i.bm = sext i32 %i.ba to i64
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %i.bm
  %.sink9.i = select i1 %i.bi, ptr %i.bl, ptr %i.bn
  %.sink.i = select i1 %i.bi, ptr null, ptr %i.bh
  %.0.i15 = select i1 %i.bi, ptr %i.bh, ptr %i.j
  store ptr %.sink9.i, ptr %0, align 8, !tbaa !51
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !52
  br label %bb.s

bb.s:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread, %bb.r, %bb.q, %bb.b
  %.0.i15.sink = phi ptr [ %.0.i15, %bb.r ], [ %i.j, %bb.q ], [ %i.f, %bb.b ], [ %i.j, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread ], [ %i.j, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit ]
  %.0 = phi i1 [ true, %bb.r ], [ false, %bb.q ], [ false, %bb.b ], [ false, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread ], [ false, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit ]
  store ptr %.0.i15.sink, ptr %3, align 8, !tbaa !55
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream34GetDirectBufferForNBytesAndAdvanceEiPPh(ptr noundef nonnull align 8 dereferenceable(59) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !54, !range !36, !noundef !37
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !55
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i, %bb.c
  %.012.i = phi ptr [ %i.g, %bb.c ], [ %i.an, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ] ; 4 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread42, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ugt ptr %.012.i, %i.n
  %i.p = ptrtoint ptr %.012.i to i64              ; 3 uses
  br i1 %i.o, label %bb.f, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit

bb.f:                                             ; preds = %bb.e
  %i.q = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i, label %bb.g, !prof !53

_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i: ; preds = %bb.f
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 %i.q, %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.j, i64 %i.u, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !3
  br i1 %i.z, label %bb.j, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.l, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !39  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !32  ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.k, !llvm.loop !2

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp sgt i32 %i.ab, 16
  %i.ae = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !31

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  store ptr %i.ah, ptr %0, align 8, !tbaa !51
  store ptr null, ptr %i.h, align 8, !tbaa !52
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 1 dereferenceable(16) %i.ae, i64 16, i1 false)
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !52
  %i.ai = sext i32 %i.ab to i64
  %i.aj = getelementptr inbounds i8, ptr %i.j, i64 %i.ai
  store ptr %i.aj, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i: ; preds = %bb.m, %bb.l, %bb.i
  %.2.i.i = phi ptr [ %i.aa, %bb.l ], [ %i.j, %bb.m ], [ %i.j, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.pre.i = load i8, ptr %i.c, align 8, !tbaa !54, !range !36
  %i.ak = trunc nuw i8 %.pre.i to i1
  %i.al = shl i64 %i.r, 32
  %i.am = ashr exact i64 %i.al, 32
  %i.an = getelementptr inbounds i8, ptr %.2.i.i, i64 %i.am
  br i1 %i.ak, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread, label %bb.d

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread42: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %.012.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  store ptr %.012.i, ptr %i.h, align 8, !tbaa !52
  br label %bb.n

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit: ; preds = %bb.e
  %i.as = sub i64 %i.p, %i.k                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.j, i64 %i.as, i1 false)
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.as
  store ptr %i.au, ptr %i.h, align 8, !tbaa !52
  %i.av = load ptr, ptr %0, align 8, !tbaa !51
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.p
  %.pre.pre = load i8, ptr %i.c, align 8, !tbaa !54, !range !36
  %i.ay = trunc nuw i8 %.pre.pre to i1
  br i1 %i.ay, label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread42, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit
  %.0.i46.in = phi i64 [ %i.ar, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread42 ], [ %i.ax, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit ] ; 3 uses
  %.0.i46 = trunc i64 %.0.i46.in to i32           ; 3 uses
  %.not = icmp sgt i32 %1, %.0.i46
  %i.az = load ptr, ptr %i.h, align 8, !tbaa !52  ; 5 uses
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = sext i32 %1 to i64
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = sub nsw i32 %.0.i46, %1                 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 16                  ; 3 uses
  %i.be = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.be
  %.sink9.i = select i1 %i.bd, ptr %i.bg, ptr %i.bh
  %.sink.i = select i1 %i.bd, ptr null, ptr %i.bb
  %.0.i16 = select i1 %i.bd, ptr %i.bb, ptr %i.j
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bi = icmp sgt i32 %.0.i46, 16                ; 3 uses
  %i.bj = and i64 %.0.i46.in, 4294967295
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bj
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16
  %sext = shl i64 %.0.i46.in, 32
  %i.bm = ashr exact i64 %sext, 32
  %i.bn = getelementptr inbounds i8, ptr %i.j, i64 %i.bm
  %.sink9.i17 = select i1 %i.bi, ptr %i.bl, ptr %i.bn
  %.sink.i18 = select i1 %i.bi, ptr null, ptr %i.az
  %.0.i19 = select i1 %i.bi, ptr %i.az, ptr %i.j
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split: ; preds = %bb.o, %bb.p
  %.sink9.i17.sink = phi ptr [ %.sink9.i17, %bb.p ], [ %.sink9.i, %bb.o ]
  %.sink.i18.sink = phi ptr [ %.sink.i18, %bb.p ], [ %.sink.i, %bb.o ]
  %.sink.ph = phi ptr [ %.0.i19, %bb.p ], [ %.0.i16, %bb.o ]
  %.1.ph = phi ptr [ null, %bb.p ], [ %i.az, %bb.o ]
  store ptr %.sink9.i17.sink, ptr %0, align 8, !tbaa !51
  store ptr %.sink.i18.sink, ptr %i.h, align 8, !tbaa !52
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread

_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread: ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i, %bb.b
  %.sink = phi ptr [ %i.f, %bb.b ], [ %i.j, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i ], [ %i.j, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit ], [ %.sink.ph, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split ], [ %i.j, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ]
  %.1 = phi ptr [ null, %bb.b ], [ null, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.thread.i ], [ null, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit ], [ %.1.ph, %_ZN6google8protobuf2io19EpsCopyOutputStream5FlushEPh.exit.thread.sink.split ], [ null, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ]
  store ptr %.sink, ptr %2, align 8, !tbaa !55
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(59) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit, %bb.a
  %.05 = phi ptr [ %1, %bb.a ], [ %i.al, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit ]
  %i.i = load i8, ptr %i.c, align 8, !tbaa !54, !range !36, !noundef !37
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.loopexit, label %bb.c, !prof !53

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.l = ptrtoint ptr %.05 to i64
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !52   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = sub i64 %i.m, %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !1
  br i1 %i.w, label %bb.i, label %bb.h, !prof !31

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.c, align 8, !tbaa !54
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.y = load i32, ptr %i.a, align 4, !tbaa !32   ; 4 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %bb.j, !llvm.loop !2

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp sgt i32 %i.y, 16
  %i.ab = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !31

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ac = zext nneg i32 %i.y to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !51
  store ptr null, ptr %i.e, align 8, !tbaa !52
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %i.ab, i64 16, i1 false)
  store ptr %i.x, ptr %i.e, align 8, !tbaa !52
  %i.af = sext i32 %i.y to i64
  %i.ag = getelementptr inbounds i8, ptr %i.f, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.ah = phi ptr [ %i.ae, %bb.k ], [ %i.ag, %bb.l ], [ %i.h, %bb.h ]
  %.2.i = phi ptr [ %i.x, %bb.k ], [ %i.f, %bb.l ], [ %i.f, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit

bb.n:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %i.k, i64 16, i1 false)
  store ptr %i.k, ptr %i.e, align 8, !tbaa !52
  store ptr %i.h, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit

_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit: ; preds = %bb.d, %bb.m, %bb.n
  %i.ai = phi ptr [ %i.h, %bb.d ], [ %i.ah, %bb.m ], [ %i.h, %bb.n ]
  %.3.i = phi ptr [ %i.f, %bb.d ], [ %.2.i, %bb.m ], [ %i.f, %bb.n ]
  %i.aj = shl i64 %i.n, 32
  %i.ak = ashr exact i64 %i.aj, 32
  %i.al = getelementptr inbounds i8, ptr %.3.i, i64 %i.ak ; 3 uses
  %.not = icmp ult ptr %i.al, %i.ai
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !4

.loopexit:                                        ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.al, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream16WriteRawFallbackEPKviPh(ptr noundef nonnull align 8 dereferenceable(59) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %3 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.022 = trunc i64 %i.g to i32                   ; 2 uses
  %i.h = icmp sgt i32 %2, %.022
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit
  %.027 = phi i32 [ %.022, %.lr.ph ], [ %.0, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit ]
  %.0.in26 = phi i64 [ %i.g, %.lr.ph ], [ %i.ay, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit ]
  %.01825 = phi ptr [ %3, %.lr.ph ], [ %.0.i, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit ] ; 2 uses
  %.01924 = phi i32 [ %2, %.lr.ph ], [ %i.p, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit ]
  %.02023 = phi ptr [ %1, %.lr.ph ], [ %i.q, %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit ] ; 2 uses
  %sext = shl i64 %.0.in26, 32
  %i.o = ashr exact i64 %sext, 32                 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.01825, ptr align 1 %.02023, i64 %i.o, i1 false)
  %i.p = sub nsw i32 %.01924, %.027               ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.02023, i64 %i.o ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.01825, i64 %i.o
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i, %bb.b
  %.pre = phi ptr [ %.pre.pre, %bb.b ], [ %i.ar, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ] ; 4 uses
  %.05.i = phi ptr [ %i.r, %bb.b ], [ %i.au, %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i ]
  %i.s = load i8, ptr %i.i, align 8, !tbaa !54, !range !36, !noundef !37
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh.exit, label %bb.d, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %.05.i to i64
  %i.v = ptrtoint ptr %.pre to i64                ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f, !prof !53

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.i, align 8, !tbaa !54
  store ptr %i.n, ptr %0, align 8, !tbaa !51
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream4NextEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = sub i64 %i.v, %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 8 %i.l, i64 %i.aa, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !inline_history !68
  br i1 %i.af, label %bb.j, label %bb.i, !prof !31

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.i, align 8, !tbaa !54
  store ptr %i.n, ptr %0, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
end_hunk_1
