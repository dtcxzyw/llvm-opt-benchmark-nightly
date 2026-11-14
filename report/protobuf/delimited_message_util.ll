Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/delimited_message_util?download=true
inline.NumInlined: 31
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf4util27SerializeDelimitedToOstreamERKNS0_11MessageLiteEPSo:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io19OstreamOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  resume { ptr, i32 } %i.b

bb.c:                                             ; preds = %bb.a
  call void @_ZN6google8protobuf2io19OstreamOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !49
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i1 [ %i.i, %bb.d ], [ false, %bb.c ]
  ret i1 %.1
}

declare void @_ZN6google8protobuf2io19OstreamOutputStreamC1EPSoi(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io19OstreamOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util32ParseDelimitedFromZeroCopyStreamEPNS0_11MessageLiteEPNS0_2io19ZeroCopyInputStreamEPb(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !50 {
bb.a:
  %3 = alloca %"class.google::protobuf::io::CodedInputStream", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.b, i8 0, i64 15, i1 false)
  store i32 2147483647, ptr %i.c, align 8, !tbaa !52
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 0, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 2147483647, ptr %i.e, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.g = load i32, ptr @_ZN6google8protobuf2io16CodedInputStream24default_recursion_limit_E, align 4, !tbaa !6 ; 2 uses
  store i32 %i.g, ptr %i.f, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = call noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80) %3) ; 0 uses
  %i.k = invoke noundef zeroext i1 @_ZN6google8protobuf4util29ParseDelimitedFromCodedStreamEPNS0_11MessageLiteEPNS0_2io16CodedInputStreamEPb(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret i1 %i.k

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util29ParseDelimitedFromCodedStreamEPNS0_11MessageLiteEPNS0_2io16CodedInputStreamEPb(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 !guid !56 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !60     ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %.neg3.i = sub i64 %i.g, %i.f
  %.neg4.i = trunc i64 %.neg3.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !26   ; 2 uses
  %.neg2.i = sub i32 %i.b, %i.i
  %i.j = add i32 %.neg2.i, %.neg4.i
  %i.k = icmp ult ptr %i.e, %i.d
  br i1 %i.k, label %bb.d, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.e, align 1, !tbaa !27    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = icmp sgt i8 %i.l, -1
  br i1 %i.n, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !60
  br label %bb.g

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit: ; preds = %bb.c, %bb.d
  %.08.i = phi i32 [ %i.m, %bb.d ], [ 0, %bb.c ]
  %i.p = tail call noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %.08.i) ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  br i1 %i.q, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge, label %bb.e

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge: ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit
  %i.r = trunc i64 %i.p to i32
  %.pre = load i32, ptr %i.a, align 8, !tbaa !58
  %.pre37 = load ptr, ptr %i.c, align 8, !tbaa !59
  %.pre38 = load ptr, ptr %1, align 8, !tbaa !60
  %.pre39 = load i32, ptr %i.h, align 4, !tbaa !26
  %.pre40 = ptrtoint ptr %.pre37 to i64
  br label %bb.g

bb.e:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.a, align 8, !tbaa !58
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.u = load ptr, ptr %1, align 8, !tbaa !60
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %.neg3.i20 = sub i64 %i.w, %i.v
  %.neg4.i21 = trunc i64 %.neg3.i20 to i32
  %i.x = load i32, ptr %i.h, align 4, !tbaa !26
  %.neg2.i22 = sub i32 %i.s, %i.x
  %i.y = add i32 %.neg2.i22, %.neg4.i21
  %i.z = icmp eq i32 %i.y, %i.j
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %2, align 1, !tbaa !57
  br label %bb.k

bb.g:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread
  %.pre-phi = phi i64 [ %.pre40, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ], [ %i.f, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ]
  %i.ab = phi i32 [ %.pre39, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ], [ %i.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ]
  %i.ac = phi ptr [ %.pre38, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ], [ %i.o, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ]
  %i.ad = phi i32 [ %.pre, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ], [ %i.b, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ]
  %.032 = phi i32 [ %i.r, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit._crit_edge ], [ %i.m, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ] ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg3.i23.neg = sub i64 %.pre-phi, %i.ae
  %.neg4.i24.neg = trunc i64 %.neg3.i23.neg to i32
  %i.af = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream9PushLimitEi(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %.032)
  %i.ag = tail call noundef zeroext i1 @_ZN6google8protobuf11MessageLite20MergeFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
  br i1 %i.ag, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !61, !range !7, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !58
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.am = load ptr, ptr %1, align 8, !tbaa !60
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %.neg3.i26 = sub i64 %i.ao, %i.an
  %.neg4.i27 = trunc i64 %.neg3.i26 to i32
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !26
  %.neg2.i28 = sub i32 %i.ab, %i.ad
  %i.aq = add i32 %.neg2.i28, %.neg4.i24.neg
  %.neg2.i25.neg = add i32 %i.aq, %i.ak
  %.neg = sub i32 %.neg2.i25.neg, %i.ap
  %i.ar = add i32 %.neg, %.neg4.i27
  %.not19 = icmp eq i32 %i.ar, %.032
  br i1 %.not19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN6google8protobuf2io16CodedInputStream8PopLimitEi(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.af)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.i, %bb.e, %bb.f
  %.1 = phi i1 [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ true, %bb.j ], [ false, %bb.g ], [ false, %bb.i ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #3

declare noundef i32 @_ZN6google8protobuf2io16CodedInputStream9PushLimitEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf11MessageLite20MergeFromCodedStreamEPNS0_2io16CodedInputStreamE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZN6google8protobuf2io16CodedInputStream8PopLimitEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util31SerializeDelimitedToCodedStreamERKNS0_11MessageLiteEPNS0_2io17CodedOutputStreamE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 !guid !63 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 7 uses
  %i.e = icmp ugt i64 %i.d, 2147483647
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32            ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21   ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !14
  %.not.i.i = icmp ult ptr %i.h, %i.i
  br i1 %.not.i.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.h)
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i

_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.j, %bb.c ], [ %i.h, %bb.b ] ; 6 uses
  %i.k = icmp samesign ugt i64 %i.d, 127
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !64

.lr.ph.i.i:                                       ; preds = %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %2 = trunc i64 %i.d to i8
  %3 = or i8 %2, -128
  store i8 %3, ptr %.0.i.i, align 1, !tbaa !27
  %4 = lshr i32 %i.f, 7                           ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %6 = icmp ugt i64 %i.d, 16383
  br i1 %6, label %.lr.ph.i.i.1, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !65

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %7 = trunc i32 %4 to i8
  %8 = or i8 %7, -128
  store i8 %8, ptr %5, align 1, !tbaa !27
  %9 = lshr i32 %i.f, 14                          ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 2 ; 2 uses
  %11 = icmp ugt i64 %i.d, 2097151
  br i1 %11, label %.lr.ph.i.i.a, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !65

.lr.ph.i.i.a:                                     ; preds = %.lr.ph.i.i.1
  %i.l = trunc i32 %9 to i8
  %i.m = or i8 %i.l, -128
  store i8 %i.m, ptr %10, align 1, !tbaa !27
  %i.n = lshr i32 %i.f, 21                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 3 ; 2 uses
  %i.p = icmp ugt i64 %i.d, 268435455
  br i1 %i.p, label %.lr.ph.i.i.3, label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit, !prof !65

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.a
  %12 = trunc i32 %i.n to i8
  %13 = or i8 %12, -128
  store i8 %13, ptr %i.o, align 1, !tbaa !27
  %14 = lshr i32 %i.f, 28
  %15 = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  br label %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit

_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.a, %.lr.ph.i.i.3, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i
  %.07.i.lcssa.i.i = phi i32 [ %i.f, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ], [ %4, %.lr.ph.i.i ], [ %9, %.lr.ph.i.i.1 ], [ %i.n, %.lr.ph.i.i.a ], [ %14, %.lr.ph.i.i.3 ]
  %.0.i.lcssa.i.i = phi ptr [ %.0.i.i, %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit.i ], [ %5, %.lr.ph.i.i ], [ %10, %.lr.ph.i.i.1 ], [ %i.o, %.lr.ph.i.i.a ], [ %15, %.lr.ph.i.i.3 ] ; 2 uses
  %i.q = trunc nuw nsw i32 %.07.i.lcssa.i.i to i8
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.q, ptr %.0.i.lcssa.i.i, align 1, !tbaa !27
  store ptr %i.r, ptr %i.g, align 8, !tbaa !21
  %i.s = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream34GetDirectBufferForNBytesAndAdvanceEiPPh(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.f, ptr noundef nonnull %i.g) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit
  %i.t = tail call noundef ptr @_ZNK6google8protobuf11MessageLite31SerializeWithCachedSizesToArrayEPh(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN6google8protobuf2io17CodedOutputStream13WriteVarint32Ej.exit
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.v = load ptr, ptr %0, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.u, ptr noundef nonnull %1), !inline_history !62 ; 2 uses
  store ptr %i.y, ptr %i.g, align 8, !tbaa !21
  %i.z = tail call noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %i.y)
  store ptr %i.z, ptr %i.g, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !15, !range !7, !noundef !8
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare void @_ZN6google8protobuf2io17CodedOutputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf11MessageLite31SerializeWithCachedSizesToArrayEPh(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7RefreshEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

declare noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19EnsureSpaceFallbackEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream34GetDirectBufferForNBytesAndAdvanceEiPPh(ptr noundef nonnull align 8 dereferenceable(60), i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6google8protobuf2io19EpsCopyOutputStream19FlushAndResetBufferEPh(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !9, i64 0}
!12 = !{!"bool", !4, i64 0}
!13 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !10, i64 0, !10, i64 8, !4, i64 16, !11, i64 48, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !12, i64 56}
!16 = !{!"vtable pointer", !3, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"_ZTSN6google8protobuf2io17CodedOutputStreamE", !13, i64 0, !10, i64 64, !18, i64 72}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!19, !10, i64 64}
!22 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !9, i64 0}
!23 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !9, i64 0}
!24 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !9, i64 0}
!25 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !10, i64 0, !10, i64 8, !22, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !12, i64 36, !12, i64 37, !12, i64 38, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !23, i64 64, !24, i64 72}
!26 = !{!25, !5, i64 44}
!27 = !{!4, !4, i64 0}
!28 = !{i64 5664216080052398713}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = !{i64 2807906490423269708}
!32 = !{!13, !10, i64 8}
!33 = !{!13, !11, i64 48}
!34 = !{!13, !12, i64 57}
!35 = !{!13, !12, i64 58}
!36 = !{!13, !12, i64 59}
!37 = !{!10, !10, i64 0}
!38 = !{!19, !18, i64 72}
!39 = !{!9, !9, i64 0}
!40 = !{i64 -4535347552893997924}
!41 = !{!"_ZTSSt13_Ios_Fmtflags", !4, i64 0}
!42 = !{!"_ZTSSt12_Ios_Iostate", !4, i64 0}
!43 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!44 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !18, i64 8}
!45 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!46 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!47 = !{!"_ZTSSt6locale", !46, i64 0}
!48 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !41, i64 24, !42, i64 28, !42, i64 32, !43, i64 40, !44, i64 48, !4, i64 64, !5, i64 192, !45, i64 200, !47, i64 208}
!49 = !{!48, !42, i64 32}
!50 = !{i64 77823927206436529}
!51 = !{!25, !22, i64 16}
!52 = !{!25, !5, i64 40}
!53 = !{!25, !5, i64 48}
!54 = !{!25, !5, i64 52}
!55 = !{!25, !5, i64 56}
!56 = !{i64 -6295326969163579475}
!57 = !{!12, !12, i64 0}
!58 = !{!25, !5, i64 24}
!59 = !{!25, !10, i64 8}
!60 = !{!25, !10, i64 0}
!61 = !{!25, !12, i64 36}
!62 = distinct !{null}
!63 = !{i64 -4493510600866058569}
!64 = !{!"branch_weights", i32 1, i32 1999}
!65 = !{!"branch_weights", i32 0, i32 1}
end_hunk_0
