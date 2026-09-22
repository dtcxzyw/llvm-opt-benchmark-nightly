Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_codestream_local?download=true
inline.NumInlined: 233
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4ojph5local10codestream11set_profileEPKc:bb.a
  br i1 %.not5, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 70
  br i1 %i.j, label %bb.d, label %.tail.thread

bb.d:                                             ; preds = %.tail
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 8, ptr %i.k, align 8, !tbaa !128
  br label %bb.e

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.b, %bb.a, %.tail
  %i.l = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 196769, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1105, ptr noundef nonnull @.str.78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.tail.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local10codestream22set_tilepart_divisionsEj(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) initializes((100, 104)) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %1, ptr %i.a, align 4, !tbaa !126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local10codestream18request_tlm_markerEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(832) initializes((104, 105)) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 %i.a, ptr %i.b, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream5flushEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  %i.f = mul i32 %i.e, %i.c                       ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0                     ; 2 uses
  br i1 %i.g, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i8, ptr %i.i, align 8, !tbaa !102, !range !103, !noundef !104
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %.lr.ph18, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i8, ptr %i.l, align 8, !tbaa !102, !range !103, !noundef !104
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %._crit_edge19, label %._crit_edge23

.lr.ph18:                                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 616
  %wide.trip.count28 = zext nneg i32 %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.r = getelementptr inbounds nuw [168 x i8], ptr %i.q, i64 %indvars.iv
  tail call void @_ZN4ojph5local4tile17prepare_for_flushEv(ptr noundef nonnull align 8 dereferenceable(164) %i.r)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !215

._crit_edge19:                                    ; preds = %bb.c, %._crit_edge.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !101
  %i.v = tail call noundef zeroext i1 @_ZN4ojph5local9param_tlm5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %i.u) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph18, %bb.c
  %indvars.iv25 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next26, %bb.c ] ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.x = getelementptr inbounds nuw [168 x i8], ptr %i.w, i64 %indvars.iv25
  tail call void @_ZN4ojph5local4tile8fill_tlmEPNS0_9param_tlmE(ptr noundef nonnull align 8 dereferenceable(164) %i.x, ptr noundef nonnull %i.p)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %exitcond29.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count28
  br i1 %exitcond29.not, label %._crit_edge19, label %bb.c, !llvm.loop !216

bb.d:                                             ; preds = %._crit_edge19, %._crit_edge
  br i1 %i.g, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 816
  %wide.trip.count33 = zext nneg i32 %i.f to i64
  br label %bb.e

._crit_edge23:                                    ; preds = %bb.e, %._crit_edge.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i16 -9729, ptr %i.a, align 2, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !101 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.e:                                             ; preds = %.lr.ph22, %bb.e
  %indvars.iv30 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next31, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !106
  %i.ah = getelementptr inbounds nuw [168 x i8], ptr %i.ag, i64 %indvars.iv30
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !101
  tail call void @_ZN4ojph5local4tile5flushEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(164) %i.ah, ptr noundef %i.ai)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge23, label %bb.e, !llvm.loop !217

bb.f:                                             ; preds = %._crit_edge23
  %i.aj = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.al = load ptr, ptr %i.ak, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 196721, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1136, ptr noundef nonnull @.str.34)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare void @_ZN4ojph5local4tile17prepare_for_flushEv(ptr noundef nonnull align 8 dereferenceable(164)) local_unnamed_addr #3

declare void @_ZN4ojph5local4tile8fill_tlmEPNS0_9param_tlmE(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN4ojph5local9param_tlm5writeEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare void @_ZN4ojph5local4tile5flushEPNS_12outfile_baseE(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local10codestream5closeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(832) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !101  ; 3 uses
  %.not2 = icmp eq ptr %i.g, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local10codestream8exchangeEPNS_8line_bufERj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(832) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %..thread_crit_edge, label %.preheader29

..thread_crit_edge:                               ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !112
  br label %.thread

.preheader29:                                     ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not34 = icmp eq i32 %i.f, 0
  br i1 %.not34, label %.preheader29.split.us, label %.lr.ph

.preheader29.split.us:                            ; preds = %.preheader29
  %i.g = load i32, ptr %i.e, align 4, !tbaa !90
  %.promoted = load i32, ptr %i.b, align 8        ; 2 uses
  %.not27.us = icmp ult i32 %.promoted, %i.g
  %spec.store.select.us = select i1 %.not27.us, i32 %.promoted, i32 0
  br label %.split

.preheader:                                       ; preds = %.lr.ph
  %3 = add nuw i32 %.01530, 1                     ; 2 uses
  %4 = load i32, ptr %i.a, align 8, !tbaa !89     ; 2 uses
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %bb.b, label %.split.critedge

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.be = phi i32 [ %4, %.preheader ], [ %.pre, %._crit_edge ]
  %.01530.be = phi i32 [ %3, %.preheader ], [ 0, %._crit_edge ]
  br label %.lr.ph, !llvm.loop !218

.lr.ph:                                           ; preds = %.preheader29, %bb.b
  %i.h = phi i32 [ %.be, %bb.b ], [ %i.f, %.preheader29 ]
  %.01530 = phi i32 [ %.01530.be, %bb.b ], [ 0, %.preheader29 ] ; 2 uses
  %i.i = load i32, ptr %i.b, align 8, !tbaa !134
  %i.j = mul i32 %i.i, %i.h
  %i.k = add i32 %i.j, %.01530
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.m = zext i32 %i.k to i64
  %i.n = getelementptr inbounds nuw [168 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.d, align 4, !tbaa !112
  %i.p = tail call noundef zeroext i1 @_ZN4ojph5local4tile4pushEPNS_8line_bufEj(ptr noundef nonnull align 8 dereferenceable(164) %i.n, ptr noundef nonnull %1, i32 noundef %i.o)
  br i1 %i.p, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = load i32, ptr %i.b, align 8, !tbaa !134
  %i.r = add i32 %i.q, 1                          ; 2 uses
  %i.s = load i32, ptr %i.e, align 4, !tbaa !90
  %.not27 = icmp ult i32 %i.r, %i.s
  %spec.store.select = select i1 %.not27, i32 %i.r, i32 0
  store i32 %spec.store.select, ptr %i.b, align 8
  %.pre = load i32, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %.not37 = icmp eq i32 %.pre, 0
  br i1 %.not37, label %.split.critedge, label %bb.b

.split.critedge:                                  ; preds = %._crit_edge, %.preheader
  %6 = load i32, ptr %i.b, align 8, !tbaa !134    ; 2 uses
  %7 = load i32, ptr %i.e, align 4, !tbaa !90
  %.not27.c = icmp ult i32 %6, %7
  %spec.store.select.c = select i1 %.not27.c, i32 %6, i32 0
  br label %.split

.split:                                           ; preds = %.preheader29.split.us, %.split.critedge
  %storemerge = phi i32 [ %spec.store.select.us, %.preheader29.split.us ], [ %spec.store.select.c, %.split.critedge ]
  store i32 %storemerge, ptr %i.b, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.u = load i32, ptr %i.t, align 4, !tbaa !78
  %.not22 = icmp eq i32 %i.u, 0
  br i1 %.not22, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !113
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr %i.v, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !109
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !112 ; 3 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !46
  %.not25 = icmp ult i32 %i.x, %i.ae
  br i1 %.not25, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8, !tbaa !113
  store i32 0, ptr %i.b, align 8, !tbaa !134
  %i.af = add i32 %i.aa, 1                        ; 3 uses
  store i32 %i.af, ptr %i.d, align 4, !tbaa !112
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !107
  %.not26 = icmp ult i32 %i.af, %i.ah
  br i1 %.not26, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !100
  br label %bb.i

bb.f:                                             ; preds = %.split
  %i.ai = load i32, ptr %i.d, align 4, !tbaa !112
  %i.aj = add i32 %i.ai, 1                        ; 3 uses
  store i32 %i.aj, ptr %i.d, align 4, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !107
  %.not23 = icmp ult i32 %i.aj, %i.al
  br i1 %.not23, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.d, align 4, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !113
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.am, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !46
  %.not24 = icmp ult i32 %i.ao, %i.as
  br i1 %.not24, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !100
  br label %bb.i

.thread:                                          ; preds = %..thread_crit_edge, %bb.d, %bb.c, %bb.g, %bb.f
  %i.at = phi i32 [ %.pre.a, %..thread_crit_edge ], [ %i.af, %bb.d ], [ %i.aa, %bb.c ], [ 0, %bb.g ], [ %i.aj, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.at, ptr %2, align 4, !tbaa !100
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !108
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !112
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ay
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %.thread
  %.119 = phi ptr [ %i.az, %.thread ], [ null, %bb.h ], [ null, %bb.e ]
  ret ptr %.119
}

declare noundef zeroext i1 @_ZN4ojph5local4tile4pushEPNS_8line_bufEj(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local10codestream4pullERj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(832) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.g = load i32, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not28 = icmp eq i32 %i.g, 0
  br i1 %.not28, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %bb.a
  %i.h = load i32, ptr %i.f, align 4, !tbaa !90
  %.promoted = load i32, ptr %i.b, align 8        ; 2 uses
  %.not21.us = icmp ult i32 %.promoted, %i.h
  %spec.store.select.us = select i1 %.not21.us, i32 %.promoted, i32 0
  br label %.split26

.preheader:                                       ; preds = %.lr.ph
  %2 = add nuw i32 %.01322, 1                     ; 2 uses
  %3 = load i32, ptr %i.a, align 8, !tbaa !89     ; 2 uses
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %bb.b, label %.split28.critedge

bb.b:                                             ; preds = %.preheader, %._crit_edge
  %.be = phi i32 [ %3, %.preheader ], [ %.pre, %._crit_edge ]
  %.01322.be = phi i32 [ %2, %.preheader ], [ 0, %._crit_edge ]
  br label %.lr.ph, !llvm.loop !219

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi i32 [ %.be, %bb.b ], [ %i.g, %bb.a ]
  %.01322 = phi i32 [ %.01322.be, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.j = load i32, ptr %i.b, align 8, !tbaa !134
  %i.k = mul i32 %i.j, %i.i
  %i.l = add i32 %i.k, %.01322
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [168 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.q = load i32, ptr %i.e, align 4, !tbaa !112  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r
  %i.t = tail call noundef zeroext i1 @_ZN4ojph5local4tile4pullEPNS_8line_bufEj(ptr noundef nonnull align 8 dereferenceable(164) %i.o, ptr noundef %i.s, i32 noundef %i.q)
  br i1 %i.t, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  %i.u = load i32, ptr %i.b, align 8, !tbaa !134
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = load i32, ptr %i.f, align 4, !tbaa !90
  %.not21 = icmp ult i32 %i.v, %i.w
  %spec.store.select = select i1 %.not21, i32 %i.v, i32 0
  store i32 %spec.store.select, ptr %i.b, align 8
  %.pre = load i32, ptr %i.a, align 8, !tbaa !89  ; 2 uses
  %.not31 = icmp eq i32 %.pre, 0
  br i1 %.not31, label %.split28.critedge, label %bb.b

.split28.critedge:                                ; preds = %._crit_edge, %.preheader
  %5 = load i32, ptr %i.b, align 8, !tbaa !134    ; 2 uses
  %6 = load i32, ptr %i.f, align 4, !tbaa !90
  %.not21.c = icmp ult i32 %5, %6
  %spec.store.select.c = select i1 %.not21.c, i32 %5, i32 0
  br label %.split26

.split26:                                         ; preds = %.split.us, %.split28.critedge
  %storemerge = phi i32 [ %spec.store.select.us, %.split.us ], [ %spec.store.select.c, %.split28.critedge ]
  store i32 %storemerge, ptr %i.b, align 8
  %i.x = load i32, ptr %i.e, align 4, !tbaa !112  ; 5 uses
  store i32 %i.x, ptr %1, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.z = load i32, ptr %i.y, align 4, !tbaa !78
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.split26
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !113
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !110
  %i.af = zext i32 %i.x to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46
  %.not19 = icmp ult i32 %i.ac, %i.ai
  br i1 %.not19, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.aa, align 8, !tbaa !113
  store i32 0, ptr %i.b, align 8, !tbaa !134
  %i.aj = add i32 %i.x, 1
  store i32 %i.aj, ptr %i.e, align 4, !tbaa !112
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !107
  %.not20 = icmp ult i32 %i.x, %i.al
  br i1 %.not20, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %1, align 4, !tbaa !100
  br label %bb.j

bb.f:                                             ; preds = %.split26
  %i.am = add i32 %i.x, 1                         ; 2 uses
  store i32 %i.am, ptr %i.e, align 4, !tbaa !112
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !107
  %.not17 = icmp ult i32 %i.am, %i.ao
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.e, align 4, !tbaa !112
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !113 ; 2 uses
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !113
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !46
  %.not18 = icmp ult i32 %i.aq, %i.av
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %1, align 4, !tbaa !100
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.d
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !108
  %i.ax = load i32, ptr %1, align 4, !tbaa !100
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %.015 = phi ptr [ null, %bb.e ], [ %i.az, %bb.i ], [ null, %bb.h ]
  ret ptr %.015
}

declare noundef zeroext i1 @_ZN4ojph5local4tile4pullEPNS_8line_bufEj(ptr noundef nonnull align 8 dereferenceable(164), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i64 @_ZNK4ojph5local9param_siz14get_recon_sizeEj(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare noundef i32 @_ZNK4ojph5local9param_qcd8get_MAGBEv(ptr noundef nonnull align 8 dereferenceable(248)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.usub.sat.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.umin.v4i64(<4 x i64>, <4 x i64>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.ctpop.v2i8(<2 x i8>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"_ZTSN4ojph4sizeE", !7, i64 0, !7, i64 4}
!14 = !{!"p1 _ZTSN4ojph5local4tileE", !10, i64 0}
!15 = !{!"p1 _ZTSN4ojph8line_bufE", !10, i64 0}
!16 = !{!"p1 _ZTSN4ojph4sizeE", !10, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{!"p1 _ZTSN4ojph5local13siz_comp_infoE", !10, i64 0}
!19 = !{!"p1 _ZTSN4ojph5local9param_codE", !10, i64 0}
!20 = !{!"p1 _ZTSN4ojph5local9param_dfsE", !10, i64 0}
!21 = !{!"_ZTSN4ojph5local9param_sizE", !17, i64 0, !17, i64 2, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !17, i64 36, !18, i64 40, !7, i64 48, !7, i64 52, !6, i64 56, !12, i64 68, !12, i64 69, !19, i64 72, !20, i64 80}
!22 = !{!"_ZTSN4ojph5local9param_cod8cod_typeE", !6, i64 0}
!23 = !{!"_ZTSN4ojph5local9cod_SGcodE", !6, i64 0, !17, i64 2, !6, i64 4}
!24 = !{!"_ZTSN4ojph5local9cod_SPcodE", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3, !6, i64 4, !6, i64 5}
!25 = !{!"p1 _ZTSN4ojph5local9param_atkE", !10, i64 0}
!26 = !{!"_ZTSN4ojph5local9param_codE", !22, i64 0, !17, i64 2, !6, i64 4, !23, i64 6, !24, i64 12, !19, i64 56, !25, i64 64, !19, i64 72, !17, i64 80, !19, i64 88}
!27 = !{!"_ZTSN4ojph5local9param_capE", !17, i64 0, !7, i64 4, !6, i64 8}
!28 = !{!"_ZTSN4ojph5local9param_qcd8qcd_typeE", !6, i64 0}
!29 = !{!"float", !6, i64 0}
!30 = !{!"p1 _ZTSN4ojph5local9param_qcdE", !10, i64 0}
!31 = !{!"_ZTSN4ojph5local9param_qcdE", !28, i64 0, !17, i64 2, !6, i64 4, !6, i64 6, !7, i64 200, !29, i64 204, !12, i64 208, !30, i64 216, !30, i64 224, !17, i64 232, !30, i64 240}
!32 = !{!"p1 _ZTSN4ojph5local9param_tlm14Ttlm_Ptlm_pairE", !10, i64 0}
!33 = !{!"_ZTSN4ojph5local9param_tlmE", !17, i64 0, !6, i64 2, !6, i64 3, !32, i64 8, !7, i64 16, !7, i64 20}
!34 = !{!"p1 _ZTSN4ojph5local9param_nltE", !10, i64 0}
!35 = !{!"_ZTSN4ojph5local9param_nltE", !17, i64 0, !17, i64 2, !6, i64 4, !6, i64 5, !12, i64 6, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSN4ojph5local9param_dfsE", !17, i64 0, !17, i64 2, !6, i64 4, !6, i64 5, !20, i64 16, !20, i64 24}
!37 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !10, i64 0}
!38 = !{!"_ZTSN4ojph5local9param_atkE", !17, i64 0, !17, i64 2, !29, i64 4, !6, i64 8, !37, i64 16, !7, i64 24, !6, i64 28, !25, i64 80, !25, i64 88, !25, i64 96}
!39 = !{!"p1 _ZTSN4ojph19mem_fixed_allocatorE", !10, i64 0}
!40 = !{!"p1 _ZTSN4ojph21mem_elastic_allocatorE", !10, i64 0}
!41 = !{!"p1 _ZTSN4ojph12outfile_baseE", !10, i64 0}
!42 = !{!"p1 _ZTSN4ojph11infile_baseE", !10, i64 0}
!43 = !{!"_ZTSN4ojph5local10codestreamE", !7, i64 0, !11, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !12, i64 28, !7, i64 32, !7, i64 36, !13, i64 40, !14, i64 48, !15, i64 56, !7, i64 64, !16, i64 72, !16, i64 80, !12, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !12, i64 104, !21, i64 112, !26, i64 200, !27, i64 296, !31, i64 368, !33, i64 616, !35, i64 640, !36, i64 664, !38, i64 696, !39, i64 800, !40, i64 808, !41, i64 816, !42, i64 824}
!44 = !{!43, !11, i64 8}
!45 = !{!13, !7, i64 0}
!46 = !{!13, !7, i64 4}
!47 = !{!21, !7, i64 48}
!48 = !{!21, !18, i64 40}
!49 = !{!6, !6, i64 0}
!50 = !{!26, !19, i64 88}
!51 = !{!26, !22, i64 0}
!52 = !{!26, !17, i64 2}
!53 = !{!26, !6, i64 4}
!54 = !{!26, !17, i64 80}
!55 = !{!31, !30, i64 240}
!56 = !{!31, !28, i64 0}
!57 = !{!31, !17, i64 2}
!58 = !{!31, !6, i64 4}
!59 = !{!31, !29, i64 204}
!60 = !{!31, !12, i64 208}
!61 = !{!31, !17, i64 232}
!62 = !{!35, !34, i64 16}
!63 = !{!35, !17, i64 0}
!64 = !{!35, !17, i64 2}
!65 = !{!35, !6, i64 4}
!66 = !{!35, !6, i64 5}
!67 = !{!35, !12, i64 6}
!68 = !{!35, !34, i64 8}
!69 = !{!38, !37, i64 16}
!70 = !{!38, !7, i64 24}
!71 = !{!"long", !6, i64 0}
!72 = !{!"_ZTSN4ojph19mem_fixed_allocatorE", !10, i64 0, !10, i64 8, !10, i64 16, !71, i64 24, !71, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !12, i64 64}
!73 = !{!72, !12, i64 64}
!74 = !{!43, !39, i64 800}
!75 = !{!"p1 _ZTSN4ojph21mem_elastic_allocator11stores_listE", !10, i64 0}
!76 = !{!"_ZTSN4ojph21mem_elastic_allocatorE", !75, i64 0, !75, i64 8, !75, i64 16, !71, i64 24, !7, i64 32}
!77 = !{!43, !40, i64 808}
!78 = !{!43, !7, i64 92}
!79 = !{!43, !7, i64 36}
!80 = !{!43, !7, i64 32}
!81 = !{!43, !7, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!26, !19, i64 56}
!84 = !{!26, !19, i64 72}
!85 = !{!31, !30, i64 216}
!86 = !{!36, !20, i64 16}
!87 = !{!38, !25, i64 80}
!88 = !{!72, !10, i64 0}
!89 = !{!43, !7, i64 40}
!90 = !{!43, !7, i64 44}
!91 = !{!"vtable pointer", !5, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!71, !71, i64 0}
!94 = !{!"_ZTSN4ojph5pointE", !7, i64 0, !7, i64 4}
!95 = !{!"_ZTSN4ojph4rectE", !94, i64 0, !13, i64 8}
!96 = !{!95, !7, i64 4}
!97 = !{!95, !7, i64 12}
!98 = !{!95, !7, i64 0}
!99 = !{!95, !7, i64 8}
!100 = !{!7, !7, i64 0}
!101 = !{!43, !41, i64 816}
!102 = !{!43, !12, i64 104}
!103 = !{i8 0, i8 2}
!104 = !{}
!105 = !{!26, !6, i64 12}
!106 = !{!43, !14, i64 48}
!107 = !{!43, !7, i64 64}
!108 = !{!43, !15, i64 56}
!109 = !{!43, !16, i64 72}
!110 = !{!43, !16, i64 80}
!111 = !{!26, !6, i64 10}
!112 = !{!43, !7, i64 20}
!113 = !{!43, !7, i64 16}
!114 = !{!"_ZTSN4ojph5local13siz_comp_infoE", !6, i64 0, !6, i64 1, !6, i64 2}
!115 = !{!114, !6, i64 1}
!116 = !{!21, !7, i64 4}
!117 = !{!21, !7, i64 12}
!118 = !{!114, !6, i64 2}
!119 = !{!21, !7, i64 8}
!120 = !{!21, !7, i64 16}
!121 = !{!"p1 _ZTSN4ojph5local9param_sizE", !10, i64 0}
!122 = !{!"_ZTSN4ojph9param_sizE", !121, i64 0}
!123 = !{!122, !121, i64 0}
!124 = !{!"_ZTSN4ojph9param_codE", !19, i64 0}
!125 = !{!124, !19, i64 0}
!126 = !{!43, !7, i64 100}
!127 = !{!17, !17, i64 0}
!128 = !{!43, !7, i64 96}
!129 = !{!21, !19, i64 72}
!130 = !{!21, !17, i64 36}
!131 = !{!43, !42, i64 824}
!132 = !{!43, !12, i64 28}
!133 = !{!"llvm.loop.unswitch.partial.disable"}
!134 = !{!43, !7, i64 24}
!135 = !{!21, !17, i64 0}
!136 = !{!21, !17, i64 2}
!137 = !{!21, !7, i64 52}
!138 = !{!23, !6, i64 0}
!139 = !{!23, !17, i64 2}
!140 = !{!23, !6, i64 4}
!141 = !{!27, !17, i64 0}
!142 = !{!27, !7, i64 4}
!143 = !{!76, !7, i64 32}
!144 = distinct !{!144, !82}
!145 = distinct !{!145, !82}
!146 = distinct !{!146, !82}
!147 = distinct !{!147, !82}
!148 = distinct !{!148, !82}
!149 = !{!19, !19, i64 0}
!150 = !{!30, !30, i64 0}
!151 = !{!31, !30, i64 224}
!152 = !{!34, !34, i64 0}
!153 = !{!20, !20, i64 0}
!154 = !{!25, !25, i64 0}
!155 = !{!38, !25, i64 96}
!156 = distinct !{null}
!157 = !{!36, !20, i64 24}
!158 = distinct !{null}
!159 = distinct !{null}
!160 = distinct !{null}
!161 = distinct !{!161, !82}
!162 = distinct !{!162, !82}
!163 = !{!76, !75, i64 0}
!164 = !{!76, !75, i64 16}
!165 = !{!"_ZTSN4ojph21mem_elastic_allocator11stores_listE", !75, i64 0, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28}
!166 = !{!165, !75, i64 0}
!167 = distinct !{!167, !82}
!168 = distinct !{!168, !82}
!169 = distinct !{!169, !82}
!170 = distinct !{!170, !82, !174, !175}
!171 = distinct !{!171, !82, !175, !174}
!172 = !{!24, !6, i64 1}
!173 = !{!24, !6, i64 2}
!174 = !{!"llvm.loop.isvectorized", i32 1}
!175 = !{!"llvm.loop.unroll.runtime.disable"}
!176 = distinct !{!176, !82}
!177 = distinct !{!177, !82}
!178 = distinct !{!178, !82}
!179 = !{!72, !71, i64 24}
!180 = !{!72, !71, i64 32}
!181 = !{!72, !71, i64 56}
!182 = !{!11, !11, i64 0}
!183 = !{!72, !10, i64 16}
!184 = !{!72, !10, i64 8}
!185 = !{!72, !71, i64 40}
!186 = !{!72, !71, i64 48}
!187 = !{!10, !10, i64 0}
!188 = !{!43, !12, i64 88}
!189 = distinct !{!189, !82}
!190 = distinct !{!190, !82}
!191 = distinct !{!191, !82}
!192 = distinct !{!192, !82}
!193 = distinct !{!193, !82}
!194 = distinct !{!194, !82}
!195 = distinct !{!195, !82}
!196 = !{!26, !6, i64 16}
!197 = !{!"_ZTSN4ojph16comment_exchangeE", !11, i64 0, !17, i64 8, !17, i64 10}
!198 = !{!197, !17, i64 8}
!199 = !{!197, !17, i64 10}
!200 = !{!197, !11, i64 0}
!201 = !{!21, !7, i64 20}
!202 = !{!21, !7, i64 24}
!203 = !{!21, !7, i64 28}
!204 = !{!21, !7, i64 32}
!205 = distinct !{!205, !82}
!206 = !{!114, !6, i64 0}
!207 = !{!26, !6, i64 6}
!208 = distinct !{!208, !82}
!209 = !{!36, !17, i64 0}
!210 = !{!21, !20, i64 80}
!211 = !{!"_ZTSN4ojph5local9param_sotE", !17, i64 0, !17, i64 2, !7, i64 4, !6, i64 8, !6, i64 9}
!212 = !{!211, !17, i64 2}
!213 = !{!211, !6, i64 8}
!214 = !{!211, !6, i64 9}
!215 = distinct !{!215, !82}
!216 = distinct !{!216, !82}
!217 = distinct !{!217, !82}
!218 = distinct !{!218, !82, !133}
!219 = distinct !{!219, !82, !133}
end_hunk_0
