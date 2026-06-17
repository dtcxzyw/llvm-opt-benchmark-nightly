inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZN6google8protobuf8internal10WireFormat33ComputeUnknownMessageSetItemsSizeERKNS0_15UnknownFieldSetE:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.d ]  ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i.i.i.i.i, i64 %indvars.iv ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp eq i32 %i.n, 3
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, %.016
  %i.q = load i32, ptr %i.l, align 8, !tbaa !37
  %i.r = or i32 %i.q, 1
  %i.s = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.r, i1 true)
  %i.t = xor i32 %i.s, 31
  %i.u = mul nuw nsw i32 %i.t, 9
  %i.v = add nuw nsw i32 %i.u, 73
  %i.w = lshr i32 %i.v, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !46 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = or i32 %i.ac, 1
  %i.ae = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ad, i1 true)
  %i.af = xor i32 %i.ae, 31
  %i.ag = mul nuw nsw i32 %i.af, 9
  %i.ah = add nuw nsw i32 %i.ag, 73
  %i.ai = lshr i32 %i.ah, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %sext = shl i64 %i.ab, 32
  %i.ak = ashr exact i64 %sext, 32
  %i.al = add i64 %i.p, %i.ak
  %i.am = add i64 %i.al, %i.x
  %i.an = add i64 %i.am, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %i.an, %bb.c ], [ %.016, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !51
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat20ParseAndMergePartialEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.fr61 = freeze { ptr, ptr } %i.a
  %i.b = extractvalue { ptr, ptr } %.fr61, 0      ; 5 uses
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.d = extractvalue { ptr, ptr } %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.thread45.us
  %i.i = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.k = icmp ult ptr %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %.split.us
  %i.l = load i8, ptr %i.i, align 1, !tbaa !21    ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = icmp sgt i8 %i.l, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %.split.us
  %.0.i.us = phi i32 [ %i.m, %bb.b ], [ 0, %.split.us ]
  %i.o = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i.us)
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.p, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us: ; preds = %bb.d, %bb.c
  %.05.i.us = phi i32 [ %i.m, %bb.d ], [ %i.o, %bb.c ] ; 4 uses
  store i32 %.05.i.us, ptr %i.f, align 8, !tbaa !26
  %i.q = icmp eq i32 %.05.i.us, 0
  %i.r = and i32 %.05.i.us, 7
  %i.s = icmp eq i32 %i.r, 4
  %or.cond57.us = or i1 %i.q, %i.s                ; 3 uses
  br i1 %or.cond57.us, label %.split60.us, label %.thread45.us

.thread45.us:                                     ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us
  %i.t = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.05.i.us, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull %0)
  br i1 %i.t, label %.split.us, label %.split60.us

.split:                                           ; preds = %bb.a, %.split.backedge
  %i.u = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.w = icmp ult ptr %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.g, !prof !20

bb.e:                                             ; preds = %.split
  %i.x = load i8, ptr %i.u, align 1, !tbaa !21    ; 2 uses
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = icmp sgt i8 %i.x, -1
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.aa, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

bb.g:                                             ; preds = %bb.e, %.split
  %.0.i = phi i32 [ %i.y, %bb.e ], [ 0, %.split ]
  %i.ab = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i)
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit: ; preds = %bb.f, %bb.g
  %.05.i = phi i32 [ %i.y, %bb.f ], [ %i.ab, %bb.g ] ; 6 uses
  store i32 %.05.i, ptr %i.f, align 8, !tbaa !26
  %i.ac = icmp eq i32 %.05.i, 0
  %i.ad = and i32 %.05.i, 7
  %i.ae = icmp eq i32 %i.ad, 4
  %or.cond57 = or i1 %i.ac, %i.ae                 ; 4 uses
  br i1 %or.cond57, label %.split60.us, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit
  %i.af = lshr i32 %.05.i, 3                      ; 4 uses
  %i.ag = tail call noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i32 noundef %i.af) ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %.thread45

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call noundef ptr @_ZNK6google8protobuf10Descriptor34FindExtensionRangeContainingNumberEi(ptr noundef nonnull align 8 dereferenceable(160) %i.b, i32 noundef %i.af)
  %.not58 = icmp eq ptr %i.ai, null
  br i1 %.not58, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !52  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.d, i32 noundef %i.af)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.am = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr noundef nonnull %i.b, i32 noundef %i.af)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.030 = phi ptr [ %i.al, %bb.k ], [ %i.am, %bb.l ] ; 2 uses
  %i.an = icmp eq ptr %.030, null
  br i1 %i.an, label %.thread, label %.thread45

.thread:                                          ; preds = %bb.i, %bb.m
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !21, !range !69, !noundef !70
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = icmp eq i32 %.05.i, 11
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.n, label %.thread45

bb.n:                                             ; preds = %.thread
  %i.at = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.at, label %.split.backedge, label %.split60.us

.thread45:                                        ; preds = %bb.h, %bb.m, %.thread
  %.131 = phi ptr [ %i.ag, %bb.h ], [ null, %.thread ], [ %.030, %bb.m ]
  %i.au = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.05.i, ptr noundef %.131, ptr noundef nonnull %1, ptr noundef nonnull %0)
  br i1 %i.au, label %.split.backedge, label %.split60.us

.split.backedge:                                  ; preds = %.thread45, %bb.n
  br label %.split

.split60.us:                                      ; preds = %.thread45, %bb.n, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us, %.thread45.us
  %.us-phi = phi i1 [ %or.cond57.us, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.us ], [ %or.cond57.us, %.thread45.us ], [ %or.cond57, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit ], [ %or.cond57, %bb.n ], [ %or.cond57, %.thread45 ]
  ret i1 %.us-phi
}

declare noundef ptr @_ZNK6google8protobuf10Descriptor17FindFieldByNumberEi(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageE(ptr noundef %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.google::protobuf::io::CodedInputStream", align 8 ; 19 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !46
  store i8 0, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52
  br label %.thread.i.a

.thread.i.a:                                      ; preds = %.thread.i.backedge, %bb.a
  %.048.i = phi i32 [ 0, %bb.a ], [ %.048.i.be, %.thread.i.backedge ] ; 6 uses
  %.043.i = phi i32 [ 0, %bb.a ], [ %.043.i.be, %.thread.i.backedge ] ; 9 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.s = icmp ult ptr %i.q, %i.r
  br i1 %i.s, label %bb.b, label %bb.d, !prof !20

bb.b:                                             ; preds = %.thread.i.a
  %i.t = load i8, ptr %i.q, align 1, !tbaa !21    ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i8 %i.t, -1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.w, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a

bb.d:                                             ; preds = %bb.b, %.thread.i.a
  %.0.i.i.a = phi i32 [ %i.u, %bb.b ], [ 0, %.thread.i.a ]
  %i.x = invoke noundef i32 @_ZN6google8protobuf2io16CodedInputStream15ReadTagFallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.0.i.i.a)
          to label %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a unwind label %bb.e

_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a: ; preds = %bb.d, %bb.c
  %.05.i.i.a = phi i32 [ %i.u, %bb.c ], [ %i.x, %bb.d ] ; 2 uses
  switch i32 %.05.i.i.a, label %bb.ac [
    i32 0, label %.thread96.i
    i32 16, label %bb.f
    i32 26, label %bb.o
    i32 12, label %.thread96.i.loopexit.a
  ]

bb.e:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3, %bb.ac, %.noexc70.i, %bb.p, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.i, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !21   ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = icmp sgt i8 %i.ac, -1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.af, ptr %0, align 8, !tbaa !12
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a

bb.i:                                             ; preds = %bb.g, %bb.f
  %.08.i.i.a = phi i32 [ %i.ad, %bb.g ], [ 0, %bb.f ]
  %i.ag = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.i.a)
          to label %.noexc67.i.a unwind label %bb.j ; 2 uses

.noexc67.i.a:                                     ; preds = %bb.i
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i64 %i.ag, -1
  br label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a: ; preds = %.noexc67.i.a, %bb.h
  %.091.i.a = phi i32 [ %i.ad, %bb.h ], [ %i.ah, %.noexc67.i.a ] ; 4 uses
  %.0.i66.i.a = phi i1 [ true, %bb.h ], [ %i.ai, %.noexc67.i.a ]
  %i.aj = icmp ne i32 %.091.i.a, 0
  %or.cond.not.i.a = and i1 %.0.i66.i.a, %i.aj
  br i1 %or.cond.not.i.a, label %bb.k, label %.thread96.i

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.k:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a
  switch i32 %.048.i, label %.fold.split.i [
    i32 0, label %.thread.i.backedge
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.al = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !46  ; 2 uses
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !12
  %sext.i = shl i64 %i.am, 32
  %i.ao = ashr exact i64 %sext.i, 32
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !19
  store ptr null, ptr %i.g, align 8, !tbaa !72
  store i32 %i.an, ptr %i.h, align 8, !tbaa !73
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.i, i8 0, i64 11, i1 false)
  store i32 %i.an, ptr %i.j, align 8, !tbaa !74
  store i32 0, ptr %i.k, align 4, !tbaa !75
  store i32 2147483647, ptr %i.l, align 8, !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.aq = load i32, ptr %i.p, align 4, !tbaa !24  ; 2 uses
  store i32 %i.aq, ptr %i.m, align 4, !tbaa !24
  store i32 %i.aq, ptr %i.n, align 8, !tbaa !27
  %i.ar = invoke noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i32 noundef %.091.i.a)
          to label %.noexc68.i unwind label %bb.m

.noexc68.i:                                       ; preds = %bb.l
  %i.as = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat28ParseAndMergeMessageSetFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.091.i.a, ptr noundef %i.ar, ptr noundef nonnull %1, ptr noundef nonnull %3)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i unwind label %bb.m

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i: ; preds = %.noexc68.i
  br i1 %i.as, label %.thread101.i, label %bb.n

bb.m:                                             ; preds = %.noexc68.i, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ad

.thread101.i:                                     ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i
  store i64 0, ptr %i.d, align 8, !tbaa !46
  %i.au = load ptr, ptr %2, align 8, !tbaa !43
  store i8 0, ptr %i.au, align 1, !tbaa !21
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread.i.backedge

.fold.split.i:                                    ; preds = %bb.k
  br label %.thread.i.backedge

bb.n:                                             ; preds = %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit.i
  call void @_ZN6google8protobuf2io16CodedInputStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.thread96.i

bb.o:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a
  switch i32 %.048.i, label %bb.z [
    i32 1, label %bb.p
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.av = invoke noundef ptr @_ZNK6google8protobuf10Reflection26FindKnownExtensionByNumberEi(ptr noundef nonnull align 8 dereferenceable(96) %i.b, i32 noundef %.043.i)
          to label %.noexc70.i unwind label %bb.e

.noexc70.i:                                       ; preds = %bb.p
  %i.aw = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat28ParseAndMergeMessageSetFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %.043.i, ptr noundef %i.av, ptr noundef nonnull %1, ptr noundef nonnull %0)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i unwind label %bb.e

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i: ; preds = %.noexc70.i
  br i1 %i.aw, label %.thread.i.backedge, label %.thread96.i

bb.q:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.az = icmp ult ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s, !prof !20

bb.r:                                             ; preds = %bb.q
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !21  ; 2 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = icmp sgt i8 %i.ba, -1
  br i1 %i.bc, label %.thread107.i, label %bb.s

.thread107.i:                                     ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.bd, ptr %0, align 8, !tbaa !12
  br label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %.08.i73.i = phi i32 [ %i.bb, %bb.r ], [ 0, %bb.q ]
  %i.be = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i73.i)
          to label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i unwind label %bb.t ; 2 uses

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i: ; preds = %bb.s
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i64 %i.be, -9223372034707292160
  %or.cond.not122.i = icmp eq i64 %i.bg, 0
  br i1 %or.cond.not122.i, label %bb.u, label %.thread96.i

bb.t:                                             ; preds = %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.u:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i, %.thread107.i
  %.090106109.i = phi i32 [ %i.bb, %.thread107.i ], [ %i.bf, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i ] ; 6 uses
  %i.bi = or i32 %.090106109.i, 1
  %i.bj = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true)
  %i.bk = xor i32 %i.bj, 31
  %i.bl = mul nuw nsw i32 %i.bk, 9
  %i.bm = add nuw nsw i32 %i.bl, 73
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = add nuw i32 %i.bn, %.090106109.i
  %i.bp = zext i32 %i.bo to i64
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.bp, i8 noundef signext 0)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bq = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.br = icmp samesign ugt i32 %.090106109.i, 127
  br i1 %i.br, label %.lr.ph.i.i, label %.loopexit.i, !prof !38

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.bv, %.lr.ph.i.i ], [ %i.bq, %bb.v ] ; 2 uses
  %.07.i1.i.i = phi i32 [ %i.bu, %.lr.ph.i.i ], [ %.090106109.i, %bb.v ] ; 3 uses
  %i.bs = trunc i32 %.07.i1.i.i to i8
  %i.bt = or i8 %i.bs, -128
  store i8 %i.bt, ptr %.0.i2.i.i, align 1, !tbaa !21
  %i.bu = lshr i32 %.07.i1.i.i, 7                 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 1 ; 2 uses
  %i.bw = icmp ugt i32 %.07.i1.i.i, 16383
  br i1 %i.bw, label %.lr.ph.i.i, label %.loopexit.i, !prof !39, !llvm.loop !40

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %bb.v
  %.07.i.lcssa.i.i = phi i32 [ %.090106109.i, %bb.v ], [ %i.bu, %.lr.ph.i.i ]
  %.0.i.lcssa.i.i = phi ptr [ %i.bq, %bb.v ], [ %i.bv, %.lr.ph.i.i ] ; 2 uses
  %i.bx = trunc nuw nsw i32 %.07.i.lcssa.i.i to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i.i, i64 1
  store i8 %i.bx, ptr %.0.i.lcssa.i.i, align 1, !tbaa !21
  %i.bz = invoke noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream7ReadRawEPvi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.by, i32 noundef %.090106109.i)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.x:                                             ; preds = %.loopexit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.y:                                             ; preds = %.loopexit.i
  br i1 %i.bz, label %.thread.i.backedge, label %.thread96.i

bb.z:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.ce = icmp ult ptr %i.cc, %i.cd
  br i1 %i.ce, label %bb.aa, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3, !prof !20

bb.aa:                                            ; preds = %bb.z
  %i.cf = load i8, ptr %i.cc, align 1, !tbaa !21  ; 2 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = icmp sgt i8 %i.cf, -1
  br i1 %i.ch, label %.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3

.thread:                                          ; preds = %bb.aa
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 1 ; 2 uses
  store ptr %i.ci, ptr %0, align 8, !tbaa !12
  br label %bb.ab

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3: ; preds = %bb.aa, %bb.z
  %.08.i.i4 = phi i32 [ %i.cg, %bb.aa ], [ 0, %bb.z ]
  %i.cj = invoke noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.08.i.i4)
          to label %.noexc unwind label %bb.e, !inline_history !77 ; 2 uses

.noexc:                                           ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i3
  %i.ck = and i64 %i.cj, -9223372034707292160
  %or.cond.not = icmp eq i64 %i.ck, 0
  br i1 %or.cond.not, label %.noexc._crit_edge, label %.thread96.i

.noexc._crit_edge:                                ; preds = %.noexc
  %i.cl = trunc i64 %i.cj to i32
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  %.pre12 = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc._crit_edge, %.thread
  %i.cm = phi ptr [ %i.ci, %.thread ], [ %.pre12, %.noexc._crit_edge ] ; 2 uses
  %i.cn = phi ptr [ %i.cd, %.thread ], [ %.pre, %.noexc._crit_edge ]
  %.051.i7 = phi i32 [ %i.cg, %.thread ], [ %i.cl, %.noexc._crit_edge ] ; 3 uses
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %.not.i.i = icmp sgt i32 %.051.i7, %i.cr
  br i1 %.not.i.i, label %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i, label %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i

_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i: ; preds = %bb.ab
  %i.cs = zext nneg i32 %.051.i7 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  store ptr %i.ct, ptr %0, align 8, !tbaa !12
  br label %.thread.i.backedge

_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i: ; preds = %bb.ab
  %i.cu = invoke noundef zeroext i1 @_ZN6google8protobuf2io16CodedInputStream12SkipFallbackEii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.051.i7, i32 noundef %i.cr)
          to label %.noexc5 unwind label %bb.e, !inline_history !77

.noexc5:                                          ; preds = %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.i
  br i1 %i.cu, label %.thread.i.backedge, label %.thread96.i

.thread.i.backedge:                               ; preds = %.noexc5, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a, %bb.y, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i, %.fold.split.i, %.thread101.i, %bb.k
  %.048.i.be = phi i32 [ %.048.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a ], [ 3, %.thread101.i ], [ 1, %bb.k ], [ 2, %bb.y ], [ 3, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i ], [ %.048.i, %.fold.split.i ], [ %.048.i, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i ], [ %.048.i, %.noexc5 ]
  %.043.i.be = phi i32 [ %.043.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a ], [ %.043.i, %.thread101.i ], [ %.091.i.a, %bb.k ], [ %.043.i, %bb.y ], [ %.043.i, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i ], [ %.043.i, %.fold.split.i ], [ %.043.i, %_ZN6google8protobuf2io16CodedInputStream4SkipEi.exit.thread.i ], [ %.043.i, %.noexc5 ]
  br label %.thread.i.a, !llvm.loop !78

bb.ac:                                            ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a
  %i.cv = invoke noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE(ptr noundef nonnull %0, i32 noundef range(i32 1, 0) %.05.i.i.a, ptr noundef null)
          to label %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a unwind label %bb.e

_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a: ; preds = %bb.ac
  br i1 %i.cv, label %.thread.i.backedge, label %.thread96.i

bb.ad:                                            ; preds = %bb.x, %bb.w, %bb.t, %bb.m, %bb.j, %bb.e
  %.pn64.i = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.ak, %bb.j ], [ %i.at, %bb.m ], [ %i.bh, %bb.t ], [ %i.cb, %bb.x ], [ %i.ca, %bb.w ]
  %i.cw = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.c
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ad
  %i.cy = load i64, ptr %i.c, align 8, !tbaa !21
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn64.i

.thread96.i.loopexit.a:                           ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a
  br label %.thread96.i

.thread96.i:                                      ; preds = %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i, %bb.y, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a, %.noexc, %.noexc5, %.thread96.i.loopexit.a, %bb.n
  %.7.ph.i = phi i1 [ false, %bb.n ], [ true, %.thread96.i.loopexit.a ], [ false, %.noexc5 ], [ false, %.noexc ], [ false, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective9SkipFieldEjS5_.exit80.i.a ], [ false, %bb.y ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit76.i ], [ false, %_ZZN6google8protobuf8internal10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEEN12MSReflective10ParseFieldEiS5_.exit72.i ], [ false, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.i.a ], [ false, %_ZN6google8protobuf2io16CodedInputStream16ReadTagNoLastTagEv.exit.i.a ]
  %i.da = load ptr, ptr %2, align 8, !tbaa !43    ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.c
  br i1 %i.db, label %_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %.thread96.i
  %i.dc = load i64, ptr %i.c, align 8, !tbaa !21
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #26
  br label %_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit

_ZN6google8protobuf8internal23ParseMessageSetItemImplIZNS1_10WireFormat27ParseAndMergeMessageSetItemEPNS0_2io16CodedInputStreamEPNS0_7MessageEE12MSReflectiveEEbS6_T_.exit: ; preds = %.thread96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.7.ph.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat18ParseAndMergeFieldEjPKNS0_15FieldDescriptorEPNS0_7MessageEPNS0_2io16CodedInputStreamE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.absl::lts_20250512::Cord", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.q = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.r = extractvalue { ptr, ptr } %i.q, 1        ; 54 uses
  %i.s = icmp eq ptr %1, null
  br i1 %i.s, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = and i32 %0, 7                            ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !79    ; 3 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !83
  %i.z = icmp eq i32 %i.t, %i.y
  br i1 %i.z, label %.critedge378, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = and i8 %i.ab, 32
  %i.ad = icmp ne i8 %i.ac, 0
  %i.ae = add i8 %i.v, -13
  %spec.select.i.i = icmp ult i8 %i.ae, -4
  %i.af = and i1 %spec.select.i.i, %i.ad
  %i.ag = icmp eq i32 %i.t, 2
  %or.cond = and i1 %i.ag, %i.af
  br i1 %or.cond, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.ah = tail call noundef ptr @_ZNK6google8protobuf10Reflection20MutableUnknownFieldsEPNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.r, ptr noundef nonnull %2)
  %i.ai = tail call noundef zeroext i1 @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE(ptr noundef %3, i32 noundef %0, ptr noundef %i.ah)
  br label %.critedge408

bb.d:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 15 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !19
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.e, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !21  ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = icmp sgt i8 %i.an, -1
  br i1 %i.ap, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread, label %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.aq, ptr %3, align 8, !tbaa !12
  br label %bb.f

_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit: ; preds = %bb.d, %bb.e
  %.08.i = phi i32 [ %i.ao, %bb.e ], [ 0, %bb.d ]
  %i.ar = tail call noundef i64 @_ZN6google8protobuf2io16CodedInputStream20ReadVarint32FallbackEj(ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef %.08.i) ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp sgt i64 %i.ar, -1
  br i1 %i.at, label %bb.f, label %.critedge408

bb.f:                                             ; preds = %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit
  %.0631643 = phi i32 [ %i.ao, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit.thread ], [ %i.as, %_ZN6google8protobuf2io16CodedInputStream12ReadVarint32EPj.exit ]
  %i.au = tail call noundef i32 @_ZN6google8protobuf2io16CodedInputStream9PushLimitEi(ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef %.0631643)
  %i.av = load i8, ptr %i.u, align 2, !tbaa !79
  switch i8 %i.av, label %.loopexit [
    i8 5, label %.preheader
    i8 3, label %.preheader812
    i8 17, label %.preheader815
    i8 18, label %.preheader818
    i8 13, label %.preheader821
    i8 4, label %.preheader824
    i8 7, label %.preheader827
    i8 6, label %.preheader829
    i8 15, label %.preheader831
    i8 16, label %.preheader833
    i8 2, label %.preheader835
    i8 1, label %.preheader837
    i8 8, label %.preheader839
    i8 14, label %.preheader842
    i8 9, label %.critedge408
    i8 10, label %.critedge408
    i8 11, label %.critedge408
    i8 12, label %.critedge408
  ]

.preheader842:                                    ; preds = %bb.f
  %i.aw = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader842
  %i.ay = lshr i32 %0, 3
  br label %bb.aa

.preheader839:                                    ; preds = %bb.f
  %i.az = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph845, label %.loopexit

.preheader837:                                    ; preds = %bb.f
  %i.bb = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph846, label %.loopexit

.preheader835:                                    ; preds = %bb.f
  %i.bd = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph847, label %.loopexit

.preheader833:                                    ; preds = %bb.f
  %i.bf = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph848, label %.loopexit

.preheader831:                                    ; preds = %bb.f
  %i.bh = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph849, label %.loopexit

.preheader829:                                    ; preds = %bb.f
  %i.bj = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph850, label %.loopexit

.preheader827:                                    ; preds = %bb.f
  %i.bl = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph851, label %.loopexit

.preheader824:                                    ; preds = %bb.f
  %i.bn = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph852, label %.loopexit

.preheader821:                                    ; preds = %bb.f
  %i.bp = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph853, label %.loopexit

.preheader818:                                    ; preds = %bb.f
  %i.br = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph854, label %.loopexit

.preheader815:                                    ; preds = %bb.f
  %i.bt = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph855, label %.loopexit

.preheader812:                                    ; preds = %bb.f
  %i.bv = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph856, label %.loopexit

.preheader:                                       ; preds = %bb.f
  %i.bx = tail call noundef i32 @_ZNK6google8protobuf2io16CodedInputStream15BytesUntilLimitEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph857, label %.loopexit

.lr.ph857:                                        ; preds = %.preheader, %bb.h
  %i.bz = load ptr, ptr %3, align 8, !tbaa !12    ; 3 uses
  %i.ca = load ptr, ptr %i.ak, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !380 ; 5 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.aj = sub nuw nsw i64 59, %i.ai               ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 8, !tbaa !381 ; 3 uses
  %i.al = zext i8 %i.ak to i64                    ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i64 %i.aj, %i.al
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.z, 3                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !382 ; 2 uses
  %i.ap = icmp ugt i8 %i.ak, 1
  br i1 %i.ap, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i8 %i.ak, 1
  br i1 %i.aq, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !383
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !383
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %.idx.i.i.i.i = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.ao, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !381
  %i.as = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.am, %i.as
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.at = phi i64 [ %i.as, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.at, 3      ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.av = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.au, i8 0, i64 %i.av, i1 false), !tbaa !383
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %i.an, align 8, !tbaa !382
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.am, i64 64)
  %i.aw = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.aw, ptr %i.ag, align 8, !tbaa !381
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !382
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aj ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !383
  store ptr %i.ba, ptr %i.w, align 8, !tbaa !385
  store ptr %i.w, ptr %i.az, align 8, !tbaa !383
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.bb = load i32, ptr %0, align 8, !tbaa !31
  %i.bc = or i32 %i.bb, 1
  store i32 %i.bc, ptr %0, align 8, !tbaa !31
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.bd, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { cold }
attributes #28 = { cold nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 8}
!8 = !{!"_ZTSN6google8protobuf8internal27UnknownFieldSetFieldSkipperE", !9, i64 0, !10, i64 8}
!9 = !{!"_ZTSN6google8protobuf8internal12FieldSkipperE"}
!10 = !{!"p1 _ZTSN6google8protobuf15UnknownFieldSetE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSN6google8protobuf2io16CodedInputStreamE", !14, i64 0, !14, i64 8, !15, i64 16, !4, i64 24, !4, i64 28, !4, i64 32, !16, i64 36, !16, i64 37, !16, i64 38, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !17, i64 64, !18, i64 72}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !11, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !11, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !11, i64 0}
!19 = !{!13, !14, i64 8}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!5, !5, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !5, i64 0}
!24 = !{!13, !4, i64 52}
!25 = !{ptr @_ZN6google8protobuf8internal10WireFormat11SkipMessageEPNS0_2io16CodedInputStreamEPNS0_15UnknownFieldSetE}
!26 = !{!13, !4, i64 32}
!27 = !{!13, !4, i64 56}
!28 = !{!29, !4, i64 4}
!29 = !{!"_ZTSN6google8protobuf8internal6SooRepILm16EEE", !30, i64 0, !4, i64 4, !5, i64 8}
!30 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!31 = !{!30, !4, i64 0}
!32 = !{!33, !14, i64 0}
!33 = !{!"_ZTSN6google8protobuf2io19EpsCopyOutputStreamE", !14, i64 0, !14, i64 8, !5, i64 16, !34, i64 48, !16, i64 56, !16, i64 57, !16, i64 58, !16, i64 59}
!34 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !11, i64 0}
!35 = !{!36, !4, i64 4}
!36 = !{!"_ZTSN6google8protobuf12UnknownFieldE", !4, i64 0, !4, i64 4, !5, i64 8}
!37 = !{!36, !4, i64 0}
!38 = !{!"branch_weights", i32 1, i32 1999}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = distinct !{!42, !41}
!43 = !{!44, !14, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !23, i64 8, !5, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!46 = !{!44, !23, i64 8}
!47 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !41}
!51 = distinct !{!51, !41}
!52 = !{!13, !17, i64 64}
!53 = !{!54, !60, i64 40}
!54 = !{!"_ZTSN6google8protobuf10DescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !56, i64 4, !4, i64 8, !57, i64 16, !58, i64 24, !59, i64 32, !60, i64 40, !61, i64 48, !61, i64 56, !62, i64 64, !63, i64 72, !59, i64 80, !64, i64 88, !65, i64 96, !62, i64 104, !66, i64 112, !67, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!55 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!56 = !{!"short", !5, i64 0}
!57 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !14, i64 0}
!58 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !11, i64 0}
!59 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !11, i64 0}
!60 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !11, i64 0}
!61 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !11, i64 0}
!62 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !11, i64 0}
!63 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !11, i64 0}
!64 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !11, i64 0}
!65 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !11, i64 0}
!66 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !11, i64 0}
!67 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0}
!68 = !{!"any p2 pointer", !11, i64 0}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!45, !14, i64 0}
!72 = !{!13, !15, i64 16}
!73 = !{!13, !4, i64 24}
!74 = !{!13, !4, i64 40}
!75 = !{!13, !4, i64 44}
!76 = !{!13, !4, i64 48}
!77 = !{ptr @_ZN6google8protobuf8internal10WireFormat9SkipFieldEPNS0_2io16CodedInputStreamEjPNS0_15UnknownFieldSetE}
!78 = distinct !{!78, !41}
!79 = !{!80, !5, i64 2}
!80 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !55, i64 0, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !16, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !16, i64 3, !16, i64 3, !5, i64 3, !4, i64 4, !57, i64 8, !58, i64 16, !81, i64 24, !59, i64 32, !5, i64 40, !5, i64 48, !82, i64 56, !61, i64 64, !61, i64 72, !5, i64 80}
!81 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !11, i64 0}
!82 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !11, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"_ZTSN6google8protobuf8internal14WireFormatLite8WireTypeE", !5, i64 0}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = distinct !{!88, !41}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !41}
!93 = distinct !{!93, !41}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !41}
!96 = distinct !{!96, !41}
!97 = distinct !{!97, !41}
!98 = !{!57, !14, i64 0}
!99 = !{!13, !18, i64 72}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSN6google8protobuf8internal10WireFormat16MessageSetParserE", !102, i64 0, !59, i64 8, !103, i64 16}
!102 = !{!"p1 _ZTSN6google8protobuf7MessageE", !11, i64 0}
!103 = !{!"p1 _ZTSN6google8protobuf10ReflectionE", !11, i64 0}
!104 = !{!101, !59, i64 8}
!105 = !{!101, !103, i64 16}
!106 = !{!107, !4, i64 92}
!107 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !108, i64 0, !4, i64 88, !4, i64 92, !109, i64 96}
!108 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !14, i64 0, !14, i64 8, !14, i64 16, !4, i64 24, !4, i64 28, !15, i64 32, !5, i64 40, !23, i64 72, !4, i64 80, !4, i64 84}
!109 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !17, i64 0, !18, i64 8}
!110 = !{!108, !14, i64 0}
!111 = !{!108, !14, i64 8}
!112 = !{!108, !4, i64 28}
!113 = !{!"branch_weights", !"expected", i32 7631680, i32 2139851968}
!114 = !{!108, !4, i64 80}
!115 = !{!109, !17, i64 0}
!116 = !{!107, !4, i64 88}
!117 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!118 = !{!119, !23, i64 0}
!119 = !{!"_ZTSN6google8protobuf8internal16InternalMetadataE", !23, i64 0}
!120 = !{!121, !122, i64 0}
!121 = !{!"_ZTSN6google8protobuf8internal16InternalMetadata13ContainerBaseE", !122, i64 0}
!122 = !{!"p1 _ZTSN6google8protobuf5ArenaE", !11, i64 0}
!123 = !{!124, !125, i64 0}
!124 = !{!"_ZTSZN6google8protobuf8internal10WireFormat27_InternalParseAndMergeFieldEPNS0_7MessageEPKcPNS1_12ParseContextEmPKNS0_10ReflectionEPKNS0_15FieldDescriptorEE3$_0", !125, i64 0, !62, i64 8, !103, i64 16, !102, i64 24, !122, i64 32}
!125 = !{!"p1 _ZTSN6google8protobuf13RepeatedFieldIiEE", !11, i64 0}
!126 = !{!124, !62, i64 8}
!127 = !{!124, !103, i64 16}
!128 = !{!124, !102, i64 24}
!129 = !{!124, !122, i64 32}
!130 = !{!109, !18, i64 8}
!131 = !{!80, !4, i64 4}
!132 = distinct !{!132, !41}
!133 = !{!54, !4, i64 8}
!134 = !{!54, !62, i64 64}
!135 = !{!62, !62, i64 0}
!136 = distinct !{!136, !41}
!137 = !{!138, !138, i64 0}
!138 = !{!"p2 _ZTSN6google8protobuf15FieldDescriptorE", !68, i64 0}
!139 = !{!140, !138, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!141 = !{!140, !138, i64 16}
!142 = !{!80, !59, i64 32}
!143 = !{!144, !144, i64 0}
!144 = !{!"_ZTSN6google8protobuf8internal19FieldDescriptorLite7CppTypeE", !5, i64 0}
!145 = !{!33, !16, i64 58}
!146 = !{!147, !147, i64 0}
!147 = !{!"p1 _ZTSN6google8protobuf6MapKeyE", !11, i64 0}
!148 = !{!149, !147, i64 0}
!149 = !{!"_ZTSNSt12_Vector_baseIN6google8protobuf6MapKeyESaIS2_EE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!150 = !{!149, !147, i64 16}
!151 = !{!152, !11, i64 0}
!152 = !{!"_ZTSN6google8protobuf16MapValueConstRefE", !11, i64 0, !144, i64 8}
!153 = !{!152, !144, i64 8}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = !{!157, !158, i64 0}
!157 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf7MessageESaIS4_EE17_Vector_impl_dataE", !158, i64 0, !158, i64 8, !158, i64 16}
!158 = !{!"p2 _ZTSN6google8protobuf7MessageE", !68, i64 0}
!159 = !{!157, !158, i64 8}
!160 = !{!157, !158, i64 16}
!161 = distinct !{!161, !41}
!162 = !{!163, !4, i64 4}
!163 = !{!"_ZTSN6google8protobuf8internal6SooRepILm8EEE", !30, i64 0, !4, i64 4, !5, i64 8}
!164 = distinct !{!164, !41}
!165 = distinct !{!165, !41}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !41}
!168 = distinct !{!168, !41}
!169 = distinct !{!169, !41}
!170 = !{!102, !102, i64 0}
!171 = !{!172, !4, i64 4}
!172 = !{!"_ZTSN6google8protobuf19EnumValueDescriptorE", !173, i64 0, !174, i64 1, !4, i64 4, !175, i64 8, !64, i64 16, !176, i64 24, !61, i64 32, !61, i64 40}
!173 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi0EEE", !55, i64 0}
!174 = !{!"_ZTSN6google8protobuf8internal11SymbolBaseNILi1EEE", !55, i64 0}
!175 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!176 = !{!"p1 _ZTSN6google8protobuf16EnumValueOptionsE", !11, i64 0}
!177 = distinct !{!177, !41}
!178 = !{!14, !14, i64 0}
!179 = !{i64 0, i64 16, !21, i64 16, i64 4, !143}
!180 = !{!149, !147, i64 8}
!181 = !{!182, !184}
!182 = distinct !{!182, !183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!183 = distinct !{!183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_"}
!184 = distinct !{!184, !183, !"_ZSt19__relocate_object_aIN6google8protobuf6MapKeyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!185 = distinct !{!185, !41}
!186 = distinct !{!186, !41}
!187 = !{!188, !188, i64 0}
!188 = !{!"vtable pointer", !6, i64 0}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE: argument 0"}
!191 = distinct !{!191, !"_ZNK6google8protobuf10Reflection19GetRepeatedFieldRefINS0_7MessageEEENS0_16RepeatedFieldRefIT_vEERKS3_PKNS0_15FieldDescriptorE"}
!192 = distinct !{null}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv: argument 0"}
!195 = distinct !{!195, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE5beginEv"}
!196 = !{!197, !11, i64 0}
!197 = !{!"_ZTSN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEEE", !11, i64 0, !198, i64 8, !11, i64 16, !199, i64 24}
!198 = !{!"p1 _ZTSN6google8protobuf8internal21RepeatedFieldAccessorE", !11, i64 0}
!199 = !{!"_ZTSSt10unique_ptrIN6google8protobuf7MessageESt14default_deleteIS2_EE", !200, i64 0}
!200 = !{!"_ZTSSt15__uniq_ptr_dataIN6google8protobuf7MessageESt14default_deleteIS2_ELb1ELb1EE", !201, i64 0}
!201 = !{!"_ZTSSt15__uniq_ptr_implIN6google8protobuf7MessageESt14default_deleteIS2_EE", !202, i64 0}
!202 = !{!"_ZTSSt5tupleIJPN6google8protobuf7MessageESt14default_deleteIS2_EEE", !203, i64 0}
!203 = !{!"_ZTSSt11_Tuple_implILm0EJPN6google8protobuf7MessageESt14default_deleteIS2_EEE", !204, i64 0}
!204 = !{!"_ZTSSt10_Head_baseILm0EPN6google8protobuf7MessageELb0EE", !102, i64 0}
!205 = !{!197, !198, i64 8}
!206 = distinct !{null}
!207 = !{!197, !11, i64 16}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE3endEv: argument 0"}
!210 = distinct !{!210, !"_ZNK6google8protobuf16RepeatedFieldRefINS0_7MessageEvE3endEv"}
!211 = distinct !{null}
!212 = distinct !{null}
!213 = distinct !{ptr @_ZN6google8protobuf8internal24RepeatedFieldRefIteratorINS0_7MessageEED2Ev, null, null}
!214 = distinct !{null}
!215 = distinct !{null}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 0"}
!218 = distinct !{!218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi"}
!219 = !{!220}
!220 = distinct !{!220, !218, !"_ZN6google8protobuf13RepeatedFieldIiE18UninitializedCopyNEPKiiPi: argument 1"}
!221 = !{!"branch_weights", i32 2146409, i32 -4292818, i32 2146409}
!222 = !{!217, !220}
!223 = distinct !{!223, !41}
!224 = distinct !{!224, !41}
!225 = distinct !{!225, !41}
!226 = distinct !{!226, !41}
!227 = distinct !{!227, !41}
!228 = distinct !{!228, !41}
!229 = distinct !{!229, !41}
!230 = distinct !{null}
!231 = distinct !{!231, !41}
!232 = distinct !{null}
!233 = distinct !{!233, !41}
!234 = distinct !{!234, !41}
!235 = !{!236, !23, i64 0}
!236 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !23, i64 0, !237, i64 8, !5, i64 12, !5, i64 13}
!237 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !238, i64 0}
!238 = !{!"_ZTSSt6atomicIiE", !239, i64 0}
!239 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!240 = distinct !{!240, !41}
!241 = distinct !{!241, !41}
!242 = !{!243, !245}
!243 = distinct !{!243, !244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl: argument 0"}
!244 = distinct !{!244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl"}
!245 = distinct !{!245, !244, !"_ZN6google8protobuf13RepeatedFieldIlE18UninitializedCopyNEPKliPl: argument 1"}
!246 = !{!243}
!247 = !{!245}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj: argument 0"}
!250 = distinct !{!250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj"}
!251 = !{!252}
!252 = distinct !{!252, !250, !"_ZN6google8protobuf13RepeatedFieldIjE18UninitializedCopyNEPKjiPj: argument 1"}
!253 = !{!249, !252}
!254 = !{!255, !257}
!255 = distinct !{!255, !256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm: argument 0"}
!256 = distinct !{!256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm"}
!257 = distinct !{!257, !256, !"_ZN6google8protobuf13RepeatedFieldImE18UninitializedCopyNEPKmiPm: argument 1"}
!258 = !{!255}
!259 = !{!257}
!260 = !{!261}
!261 = distinct !{!261, !262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf: argument 0"}
!262 = distinct !{!262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf"}
!263 = !{!264}
!264 = distinct !{!264, !262, !"_ZN6google8protobuf13RepeatedFieldIfE18UninitializedCopyNEPKfiPf: argument 1"}
!265 = !{!261, !264}
!266 = !{!267, !267, i64 0}
!267 = !{!"float", !5, i64 0}
!268 = !{!269, !271}
!269 = distinct !{!269, !270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd: argument 0"}
!270 = distinct !{!270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd"}
!271 = distinct !{!271, !270, !"_ZN6google8protobuf13RepeatedFieldIdE18UninitializedCopyNEPKdiPd: argument 1"}
!272 = !{!269}
!273 = !{!271}
!274 = !{!275, !275, i64 0}
!275 = !{!"double", !5, i64 0}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb: argument 0"}
!278 = distinct !{!278, !"_ZN6google8protobuf13RepeatedFieldIbE18UninitializedCopyNEPKbiPb"}
end_hunk_1
