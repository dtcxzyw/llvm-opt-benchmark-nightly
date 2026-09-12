Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/msgfmt?download=true
inline.NumInlined: 396
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL19equalFormatsForHash8UElementS_:bb.a

declare ptr @uhash_setValueDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uprv_deleteUObject_78(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare ptr @uhash_iput_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59
  %i.f = icmp eq i32 %i.e, 8
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i16, ptr %i.g, align 8, !tbaa !49   ; 4 uses
  %i.i = and i16 %i.h, 1
  %.not.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i.i, label %.sink.split.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i16, ptr %i.j, align 8, !tbaa !49
  %i.l = trunc i16 %i.k to i8
  %i.m = and i8 %i.l, 1
  %i.n = xor i8 %i.m, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

.sink.split.i.i.i.i:                              ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load i16, ptr %i.p, align 4, !tbaa !64
  %i.r = zext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !63
  %i.u = icmp slt i16 %i.h, 0
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = ashr i16 %i.h, 5
  %i.y = sext i16 %i.x to i32
  %i.z = select i1 %i.u, i32 %i.w, i32 %i.y       ; 2 uses
  %spec.select.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.z, i32 0)
  %.010.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.aa = and i16 %i.h, 2
  %.not.i.i.i.i = icmp eq i16 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %.not.i.i.i.i, ptr %i.ad, ptr %i.ab
  %i.af = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.o, i32 noundef %i.t, i32 noundef %i.r, ptr noundef %i.ae, i32 noundef %spec.select.i.i.i, i32 noundef %.010.i.i.i)
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit: ; preds = %bb.c, %.sink.split.i.i.i.i
  %.0.i.i.i = phi i8 [ %i.n, %bb.c ], [ %i.af, %.sink.split.i.i.i.i ]
  %i.ag = icmp eq i8 %.0.i.i.i, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !60
  %i.aj = sext i16 %i.ai to i32
  %i.ak = icmp eq i32 %3, %i.aj
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit
  %.in = phi i1 [ %i.ag, %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit ], [ %i.ak, %bb.d ]
  %i.al = zext i1 %.in to i8
  ret i8 %i.al
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull %3) ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.f = tail call i32 @uhash_iputi_78(ptr noundef %i.e, i32 noundef %1, i32 noundef 1, ptr noundef nonnull %3) ; 0 uses
  ret void
}

declare i32 @uhash_iputi_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7813MessageFormat18getCachedFormatterEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @uhash_iget_78(ptr noundef nonnull %i.b, i32 noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN6icu_786FormatE, ptr nonnull @_ZTIN6icu_7813MessageFormat11DummyFormatE, i64 0) #20
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ %i.d, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat12adoptFormatsEPPNS_6FormatEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = icmp eq ptr %1, null
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uhash_removeAll_78(ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uhash_removeAll_78(ptr noundef nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit ] ; 3 uses
  %.033 = phi i32 [ 0, %.lr.ph ], [ %i.q, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit ] ; 3 uses
  %.not.i = icmp eq i32 %.033, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = zext nneg i32 %.033 to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %..i.i = call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %.033)
  %i.n = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.h, %bb.g
  %indvars.iv.i.ph = phi i64 [ 0, %bb.g ], [ %i.n, %bb.h ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  switch i32 %i.p, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge.loopexit
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  call void @_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.q, ptr noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

.critedge.loopexit:                               ; preds = %._crit_edge.i
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit36:                             ; preds = %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.w = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit36, %.critedge.loopexit, %bb.f
  %.01530 = phi i32 [ %i.v, %.critedge.loopexit ], [ 0, %bb.f ], [ %i.w, %.critedge.loopexit36 ] ; 2 uses
  %i.x = icmp slt i32 %.01530, %2
  br i1 %i.x, label %.lr.ph35.preheader, label %._crit_edge

.lr.ph35.preheader:                               ; preds = %.critedge
  %i.y = zext i32 %.01530 to i64
  br label %.lr.ph35

bb.i:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.z = call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !44
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %bb.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ %i.t, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ]
  %i.ab = call i32 @uhash_iputi_78(ptr noundef %i.aa, i32 noundef %i.q, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ac = icmp samesign uge i64 %indvars.iv.next, %i.i
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  %or.cond26 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond26, label %.critedge.loopexit36, label %bb.g, !llvm.loop !135

.lr.ph35:                                         ; preds = %.lr.ph35.preheader, %bb.k
  %indvars.iv40 = phi i64 [ %i.y, %.lr.ph35.preheader ], [ %indvars.iv.next41, %bb.k ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph35
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #20
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph35, %bb.j
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.al = trunc nuw i64 %indvars.iv.next41 to i32
  %i.am = icmp sgt i32 %2, %i.al
  br i1 %i.am, label %.lr.ph35, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %bb.k, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare void @uhash_removeAll_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat10setFormatsEPPKNS_6FormatEi(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = icmp eq ptr %1, null
  %i.c = icmp slt i32 %2, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @uhash_removeAll_78(ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @uhash_removeAll_78(ptr noundef nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit ] ; 2 uses
  %.01434 = phi i32 [ 0, %.lr.ph ], [ %i.q, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit ] ; 3 uses
  %.not.i = icmp eq i32 %.01434, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = zext nneg i32 %.01434 to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !66
  %..i.i = call noundef i32 @llvm.smax.i32(i32 %i.m, i32 %.01434)
  %i.n = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.h, %bb.g
  %indvars.iv.i.ph = phi i64 [ 0, %bb.g ], [ %i.n, %bb.h ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.p = load i32, ptr %i.o, align 4, !tbaa !59
  switch i32 %i.p, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge.thread
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.q = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68   ; 3 uses
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %bb.k, label %bb.i

.critedge:                                        ; preds = %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.t = icmp slt i32 %i.af, 1
  br i1 %i.t, label %.critedge.thread, label %bb.m

bb.i:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(88) %i.s) ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 7, ptr %i.a, align 4, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %.0 = phi ptr [ null, %bb.j ], [ %i.x, %bb.i ], [ null, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ]
  call void @_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.q, ptr noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.l, label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !44
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %bb.k, %bb.l
  %i.ac = phi ptr [ %i.ab, %bb.l ], [ %i.z, %bb.k ]
  %i.ad = call i32 @uhash_iputi_78(ptr noundef %i.ac, i32 noundef %i.q, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = icmp samesign uge i64 %indvars.iv.next, %i.i
  %i.af = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %or.cond29 = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond29, label %.critedge, label %bb.g, !llvm.loop !137

bb.m:                                             ; preds = %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @_ZN6icu_7814MessagePattern5clearEv(ptr noundef nonnull align 8 dereferenceable(127) %i.ah)
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !43
  call void @uhash_close_78(ptr noundef %i.ai)
  store ptr null, ptr %i.d, align 8, !tbaa !43
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !44
  call void @uhash_close_78(ptr noundef %i.aj)
  store ptr null, ptr %i.f, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 0, ptr %i.ak, align 8, !tbaa !45
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.al, align 8, !tbaa !40
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %._crit_edge.i, %bb.f, %bb.m, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %.critedge.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat11adoptFormatEiPNS_6FormatE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %.preheader
  %.015 = phi i32 [ %i.l, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ], [ 0, %.preheader ] ; 2 uses
  %.014 = phi i32 [ %i.j, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ], [ 0, %.preheader ] ; 3 uses
  %.not.i = icmp eq i32 %.014, 0
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %.014 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %.014)
  %i.g = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.c, %bb.b
  %indvars.iv.i.ph = phi i64 [ 0, %bb.b ], [ %i.g, %bb.c ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  switch i32 %i.i, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.k = icmp eq i32 %1, %.015
  %i.l = add nuw nsw i32 %.015, 1
  br i1 %i.k, label %.noexc, label %bb.b, !llvm.loop !138

.noexc:                                           ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !42
  call void @_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.j, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.noexc19, label %.critedge.thread

.noexc19:                                         ; preds = %.noexc
  %i.p = call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !44
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.noexc19, %.noexc
  %i.q = phi ptr [ %i.p, %.noexc19 ], [ %i.n, %.noexc ]
  %i.r = call i32 @uhash_iputi_78(ptr noundef %i.q, i32 noundef %i.j, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit21

.critedge:                                        ; preds = %._crit_edge.i, %bb.a
  %i.s = icmp eq ptr %2, null
  br i1 %i.s, label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit21, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.t = load ptr, ptr %2, align 8, !tbaa !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(88) %2) #20, !inline_history !1
  br label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit21

_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit21: ; preds = %.critedge.thread, %.critedge, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat11adoptFormatERKNS_13UnicodeStringEPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %i.c, -1
  br i1 %i.d, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = icmp eq ptr %2, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.outer

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.outer: ; preds = %bb.n, %.preheader
  %.sroa.0.0.ph = phi ptr [ null, %bb.n ], [ %2, %.preheader ] ; 5 uses
  %.022.ph = phi i32 [ %i.u, %bb.n ], [ 0, %.preheader ]
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %3, align 4, !tbaa !42
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.backedge, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.outer
  %.022 = phi i32 [ %.022.ph, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.outer ], [ %i.u, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.backedge ] ; 3 uses
  %.not.i = icmp eq i32 %.022, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.n = zext nneg i32 %.022 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %.022)
  %i.r = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.f, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %indvars.iv.i.ph = phi i64 [ 0, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit ], [ %i.r, %bb.f ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !59
  switch i32 %i.t, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 4 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !42
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.critedge, label %bb.h

bb.g:                                             ; preds = %.sink.split.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.y = add nuw i64 %indvars.iv.i, 2
  %i.z = and i64 %i.y, 4294967295
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.z ; 4 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59
  %i.ac = icmp eq i32 %i.ab, 8
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = load i16, ptr %i.e, align 8, !tbaa !49  ; 4 uses
  %i.ae = and i16 %i.ad, 1
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i16, ptr %i.f, align 8, !tbaa !49
  %i.ag = trunc i16 %i.af to i8
  %i.ah = and i8 %i.ag, 1
  %i.ai = xor i8 %i.ah, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !64
  %i.al = zext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !63
  %i.ao = icmp slt i16 %i.ad, 0
  %i.ap = load i32, ptr %i.h, align 4
  %i.aq = ashr i16 %i.ad, 5
  %i.ar = sext i16 %i.aq to i32
  %i.as = select i1 %i.ao, i32 %i.ap, i32 %i.ar   ; 2 uses
  %spec.select.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 0)
  %.010.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 0)
  %i.at = and i16 %i.ad, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.at, 0
  %i.au = load ptr, ptr %i.j, align 8
  %i.av = select i1 %.not.i.i.i.i.i, ptr %i.au, ptr %i.i
  %i.aw = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef %i.an, i32 noundef %i.al, ptr noundef %i.av, i32 noundef %spec.select.i.i.i.i, i32 noundef %.010.i.i.i.i)
          to label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i unwind label %bb.g

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %bb.j
  %.0.i.i.i.i = phi i8 [ %i.ai, %bb.j ], [ %i.aw, %.sink.split.i.i.i.i.i ]
  %i.ax = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %i.ax, label %bb.l, label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.backedge

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.backedge: ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i, %bb.k
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit, !llvm.loop !139

bb.k:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !60
  %i.ba = sext i16 %i.az to i32
  %i.bb = icmp eq i32 %i.c, %i.ba
  br i1 %i.bb, label %bb.l, label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.backedge

bb.l:                                             ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i, %bb.k
  %.not = icmp ne ptr %.sroa.0.0.ph, null
  %brmerge = or i1 %.not, %i.k
  br i1 %brmerge, label %.noexc38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %2, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(88) %2) ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.critedge.thread, label %.noexc38

.critedge.thread:                                 ; preds = %bb.m
  store i32 7, ptr %3, align 4, !tbaa !42
  br label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit

.noexc38:                                         ; preds = %bb.l, %bb.m
  %.0 = phi ptr [ %.sroa.0.0.ph, %bb.l ], [ %i.bf, %bb.m ]
  tail call void @_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %i.u, ptr noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.noexc39, label %bb.n

.noexc39:                                         ; preds = %.noexc38
  %i.bj = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.bj, ptr %i.l, align 8, !tbaa !44
  br label %bb.n

bb.n:                                             ; preds = %.noexc39, %.noexc38
  %i.bk = phi ptr [ %i.bj, %.noexc39 ], [ %i.bh, %.noexc38 ]
  %i.bl = tail call i32 @uhash_iputi_78(ptr noundef %i.bk, i32 noundef %i.u, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit.outer, !llvm.loop !139

.critedge:                                        ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %._crit_edge.i, %bb.d, %bb.a
  %.sroa.0.4 = phi ptr [ %2, %bb.d ], [ %2, %bb.a ], [ %.sroa.0.0.ph, %._crit_edge.i ], [ %.sroa.0.0.ph, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ] ; 3 uses
  %i.bm = icmp eq ptr %.sroa.0.4, null
  br i1 %i.bm, label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bn = load ptr, ptr %.sroa.0.4, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.4) #20, !inline_history !1
  br label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit

_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit:   ; preds = %.critedge.thread, %.critedge, %bb.o
  ret void

bb.p:                                             ; preds = %bb.g, %bb.e
  %.sroa.0.5 = phi ptr [ %2, %bb.e ], [ %.sroa.0.0.ph, %bb.g ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.x, %bb.g ]
  %i.bq = icmp eq ptr %.sroa.0.5, null
  br i1 %i.bq, label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %.sroa.0.5, align 8, !tbaa !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void %i.bt(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.5) #20, !inline_history !1
  br label %_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit41

_ZN6icu_7812LocalPointerINS_6FormatEED2Ev.exit41: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %.pn.pn
}

declare noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat9setFormatEiRKNS_6FormatE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %.preheader, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread

.preheader:                                       ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %.preheader
  %.011 = phi i32 [ %i.l, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ], [ 0, %.preheader ] ; 2 uses
  %.010 = phi i32 [ %i.j, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ], [ 0, %.preheader ] ; 3 uses
  %.not.i = icmp eq i32 %.010, 0
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %.010 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.f, i32 %.010)
  %i.g = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.c, %bb.b
  %indvars.iv.i.ph = phi i64 [ 0, %bb.b ], [ %i.g, %bb.c ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !59
  switch i32 %i.i, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.j = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.k = icmp eq i32 %1, %.011
  %i.l = add nuw nsw i32 %.011, 1
  br i1 %i.k, label %bb.d, label %bb.b, !llvm.loop !140

bb.d:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(88) %2) ; 4 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !43   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef nonnull @_ZL19equalFormatsForHash8UElementS_, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !43
  %i.u = load i32, ptr %i.a, align 4, !tbaa !42
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(88) %i.p) #20, !inline_history !69
  br label %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.h:                                             ; preds = %bb.f
  %i.z = call ptr @uhash_setValueDeleter_78(ptr noundef %i.t, ptr noundef nonnull @uprv_deleteUObject_78) ; 0 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %i.aa = phi ptr [ %i.r, %bb.e ], [ %.pre, %bb.h ]
  %i.ab = call ptr @uhash_iput_78(ptr noundef %i.aa, i32 noundef %i.j, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit

_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %bb.g, %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !44 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.j:                                             ; preds = %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.af = call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !44
  br label %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit

_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit, %bb.j
  %i.ag = phi ptr [ %i.af, %bb.j ], [ %i.ad, %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit ]
  %i.ah = call i32 @uhash_iputi_78(ptr noundef %i.ag, i32 noundef %i.j, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread: ; preds = %._crit_edge.i, %_ZN6icu_7813MessageFormat23setCustomArgStartFormatEiPNS_6FormatER10UErrorCode.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7813MessageFormat9getFormatERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.g = icmp slt i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.backedge

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %2, align 4, !tbaa !42
  br label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %.0 = phi i32 [ 0, %.preheader ], [ %i.u, %.backedge.backedge ] ; 3 uses
  %.not.i = icmp eq i32 %.0, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.e

bb.e:                                             ; preds = %.backedge
  %i.n = zext nneg i32 %.0 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.q, i32 %.0)
  %i.r = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.e, %.backedge
  %indvars.iv.i.ph = phi i64 [ 0, %.backedge ], [ %i.r, %bb.e ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !59
  switch i32 %i.t, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.u = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.v = add nuw i64 %indvars.iv.i, 2
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.w ; 4 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !59
  %i.z = icmp eq i32 %i.y, 8
  br i1 %i.z, label %bb.f, label %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit

bb.f:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.aa = load i16, ptr %i.h, align 8, !tbaa !49  ; 4 uses
  %i.ab = and i16 %i.aa, 1
  %.not.i.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i16, ptr %i.i, align 8, !tbaa !49
  %i.ad = trunc i16 %i.ac to i8
  %i.ae = and i8 %i.ad, 1
  %i.af = xor i8 %i.ae, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !64
  %i.ai = zext i16 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !63
  %i.al = icmp slt i16 %i.aa, 0
  %i.am = load i32, ptr %i.k, align 4
  %i.an = ashr i16 %i.aa, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = select i1 %i.al, i32 %i.am, i32 %i.ao   ; 2 uses
  %spec.select.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 0)
  %.010.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 0)
  %i.aq = and i16 %i.aa, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.aq, 0
  %i.ar = load ptr, ptr %i.m, align 8
  %i.as = select i1 %.not.i.i.i.i.i, ptr %i.ar, ptr %i.l
  %i.at = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i32 noundef %i.ak, i32 noundef %i.ai, ptr noundef %i.as, i32 noundef %spec.select.i.i.i.i, i32 noundef %.010.i.i.i.i)
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %bb.g
  %.0.i.i.i.i = phi i8 [ %i.af, %bb.g ], [ %i.at, %.sink.split.i.i.i.i.i ]
  %i.au = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %i.au, label %bb.h, label %.backedge.backedge

_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit: ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !60
  %i.ax = sext i16 %i.aw to i32
  %i.ay = icmp eq i32 %i.f, %i.ax
  br i1 %i.ay, label %bb.h, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit, %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i
  br label %.backedge, !llvm.loop !141

bb.h:                                             ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i, %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call ptr @uhash_iget_78(ptr noundef nonnull %i.az, i32 noundef %i.u) ; 3 uses
  %.not.i16 = icmp eq ptr %i.bb, null
  br i1 %.not.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = tail call ptr @__dynamic_cast(ptr nonnull %i.bb, ptr nonnull @_ZTIN6icu_786FormatE, ptr nonnull @_ZTIN6icu_7813MessageFormat11DummyFormatE, i64 0) #20
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit

_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit: ; preds = %._crit_edge.i, %bb.k, %bb.j, %bb.h, %bb.d, %bb.a, %bb.b
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.k ], [ null, %bb.h ], [ %i.bb, %bb.j ], [ null, %._crit_edge.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat9setFormatERKNS_13UnicodeStringERKNS_6FormatER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN6icu_7814MessagePattern20validateArgumentNameERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %i.d = icmp slt i32 %i.c, -1
  br i1 %i.d, label %.critedge.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  %.0 = phi i32 [ 0, %.preheader ], [ %i.t, %.backedge ] ; 3 uses
  %.not.i = icmp eq i32 %.0, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %.0 to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.p, i32 %.0)
  %i.q = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.d, %bb.c
  %indvars.iv.i.ph = phi i64 [ 0, %bb.c ], [ %i.q, %bb.d ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  switch i32 %i.s, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.t = trunc nuw nsw i64 %indvars.iv.next.i to i32 ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !42
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.w = add nuw i64 %indvars.iv.i, 2
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.x ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !59
  %i.aa = icmp eq i32 %i.z, 8
  br i1 %i.aa, label %bb.f, label %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.e, align 8, !tbaa !49  ; 4 uses
  %i.ac = and i16 %i.ab, 1
  %.not.i.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i16, ptr %i.f, align 8, !tbaa !49
  %i.ae = trunc i16 %i.ad to i8
  %i.af = and i8 %i.ae, 1
  %i.ag = xor i8 %i.af, 1
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !64
  %i.aj = zext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !63
  %i.am = icmp slt i16 %i.ab, 0
  %i.an = load i32, ptr %i.h, align 4
  %i.ao = ashr i16 %i.ab, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = select i1 %i.am, i32 %i.an, i32 %i.ap   ; 2 uses
  %spec.select.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 0)
  %.010.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 0)
  %i.ar = and i16 %i.ab, 2
  %.not.i.i.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = load ptr, ptr %i.j, align 8
  %i.at = select i1 %.not.i.i.i.i.i, ptr %i.as, ptr %i.i
  %i.au = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i32 noundef %i.al, i32 noundef %i.aj, ptr noundef %i.at, i32 noundef %spec.select.i.i.i.i, i32 noundef %.010.i.i.i.i)
  br label %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i

_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i: ; preds = %.sink.split.i.i.i.i.i, %bb.g
  %.0.i.i.i.i = phi i8 [ %i.ag, %bb.g ], [ %i.au, %.sink.split.i.i.i.i.i ]
  %i.av = icmp eq i8 %.0.i.i.i.i, 0
  br i1 %i.av, label %bb.h, label %.backedge

.backedge:                                        ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i, %bb.q, %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit
  br label %bb.c, !llvm.loop !142

_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit: ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !60
  %i.ay = sext i16 %i.ax to i32
  %i.az = icmp eq i32 %i.c, %i.ay
  br i1 %i.az, label %bb.h, label %.backedge

bb.h:                                             ; preds = %_ZNK6icu_7814MessagePattern20partSubstringMatchesERKNS0_4PartERKNS_13UnicodeStringE.exit.i, %_ZN6icu_7813MessageFormat14argNameMatchesEiRKNS_13UnicodeStringEi.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call noundef ptr %i.bc(ptr noundef nonnull align 8 dereferenceable(88) %2) ; 6 uses
  %.not24 = icmp eq ptr %i.bd, null
  br i1 %.not24, label %.critedge.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = load i32, ptr %3, align 4, !tbaa !42
  %i.bf = icmp slt i32 %i.be, 1
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(88) %i.bd) #20, !inline_history !69
  br label %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bl = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef nonnull @_ZL19equalFormatsForHash8UElementS_, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.bl, ptr %i.k, align 8, !tbaa !43
  %i.bm = load i32, ptr %3, align 4, !tbaa !42
  %i.bn = icmp slt i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(88) %i.bd) #20, !inline_history !69
  br label %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit

bb.n:                                             ; preds = %bb.l
  %i.br = tail call ptr @uhash_setValueDeleter_78(ptr noundef %i.bl, ptr noundef nonnull @uprv_deleteUObject_78) ; 0 uses
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bs = phi ptr [ %i.bj, %bb.k ], [ %.pre, %bb.n ]
  %i.bt = tail call ptr @uhash_iput_78(ptr noundef %i.bs, i32 noundef %i.t, ptr noundef nonnull %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit

_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit: ; preds = %bb.j, %bb.m, %bb.o
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !44  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.bw = tail call ptr @uhash_open_78(ptr noundef nonnull @uhash_hashLong_78, ptr noundef nonnull @uhash_compareLong_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  store ptr %i.bw, ptr %i.l, align 8, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit
  %i.bx = phi ptr [ %i.bw, %bb.p ], [ %i.bu, %_ZN6icu_7813MessageFormat17setArgStartFormatEiPNS_6FormatER10UErrorCode.exit ]
  %i.by = tail call i32 @uhash_iputi_78(ptr noundef %i.bx, i32 noundef %i.t, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %.backedge

.critedge.sink.split:                             ; preds = %bb.h, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 7, %bb.h ]
  store i32 %.sink, ptr %3, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %._crit_edge.i, %.critedge.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7813MessageFormat10getFormatsERi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit, %bb.a
  %.027 = phi i32 [ 0, %bb.a ], [ %i.m, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ] ; 6 uses
  %.026 = phi i32 [ 0, %bb.a ], [ %i.l, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit ] ; 3 uses
  %.not.i = icmp eq i32 %.026, 0
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = zext nneg i32 %.026 to i64
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !66
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.d, i32 %.026)
  %i.e = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.c, %bb.b
  %indvars.iv.i.ph = phi i64 [ 0, %bb.b ], [ %i.e, %bb.c ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !59
  switch i32 %i.g, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread: ; preds = %._crit_edge.i
  store i32 0, ptr %1, align 4, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  br i1 %i.j, label %bb.d, label %bb.f

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.l = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.m = add nuw nsw i32 %.027, 1
  br label %bb.b, !llvm.loop !143

bb.d:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread
  store i32 %.027, ptr %i.k, align 8, !tbaa !39
  %i.n = zext nneg i32 %.027 to i64
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.o) #23 ; 3 uses
  %.not35 = icmp eq ptr %i.p, null
  br i1 %.not35, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %i.h, align 8, !tbaa !38
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit.thread
  %i.q = load i32, ptr %i.k, align 8, !tbaa !39
  %i.r = icmp sgt i32 %.027, %i.q
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %.027 to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call ptr @uprv_realloc_78(ptr noundef nonnull %i.i, i64 noundef %i.t) #21 ; 3 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.u, ptr %i.h, align 8, !tbaa !38
  store i32 %.027, ptr %i.k, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.f
  %i.v = phi ptr [ %i.p, %bb.e ], [ %i.u, %bb.h ], [ %i.i, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, %bb.i
  %i.x = phi ptr [ %i.v, %bb.i ], [ %i.al, %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit ]
  %.0 = phi i32 [ 0, %bb.i ], [ %i.af, %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit ] ; 3 uses
  %.not.i36 = icmp eq i32 %.0, 0
  %.pre.i38 = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i36, label %._crit_edge.i40.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = zext nneg i32 %.0 to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.pre.i38, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !66
  %..i.i39 = tail call noundef i32 @llvm.smax.i32(i32 %i.ab, i32 %.0)
  %i.ac = zext nneg i32 %..i.i39 to i64
  br label %._crit_edge.i40.preheader

._crit_edge.i40.preheader:                        ; preds = %bb.k, %bb.j
  %indvars.iv.i42.ph = phi i64 [ 0, %bb.j ], [ %i.ac, %bb.k ]
  br label %._crit_edge.i40

._crit_edge.i40:                                  ; preds = %._crit_edge.i40.preheader, %._crit_edge.i40
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %._crit_edge.i40 ], [ %indvars.iv.i42.ph, %._crit_edge.i40.preheader ]
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.pre.i38, i64 %indvars.iv.next.i43
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59
  switch i32 %i.ae, label %._crit_edge.i40 [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46
    i32 1, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46: ; preds = %._crit_edge.i40
  %i.af = trunc nuw nsw i64 %indvars.iv.next.i43 to i32 ; 2 uses
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !43  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46
  %i.ai = tail call ptr @uhash_iget_78(ptr noundef nonnull %i.ag, i32 noundef %i.af) ; 3 uses
  %.not.i47 = icmp eq ptr %i.ai, null
  br i1 %.not.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN6icu_786FormatE, ptr nonnull @_ZTIN6icu_7813MessageFormat11DummyFormatE, i64 0) #20
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit

_ZNK6icu_7813MessageFormat18getCachedFormatterEi.exit: ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46, %bb.m, %bb.n
  %.1.i = phi ptr [ null, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46 ], [ null, %bb.n ], [ %i.ai, %bb.m ]
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !38  ; 2 uses
  %i.am = load i32, ptr %1, align 4, !tbaa !48    ; 2 uses
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %1, align 4, !tbaa !48
  %i.ao = sext i32 %i.am to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ao
  store ptr %.1.i, ptr %i.ap, align 8, !tbaa !68
  br label %bb.j, !llvm.loop !144

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread.sink.split: ; preds = %bb.g, %bb.d
  store i32 0, ptr %i.k, align 8, !tbaa !39
  br label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread: ; preds = %._crit_edge.i40, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread.sink.split
  %.2 = phi ptr [ null, %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit46.thread.sink.split ], [ %i.x, %._crit_edge.i40 ]
  ret ptr %.2
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7813MessageFormat10getArgNameEi(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !63, !noalias !147
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load i16, ptr %i.h, align 4, !tbaa !64, !noalias !147
  %i.j = zext i16 %i.i to i32
  tail call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i32 noundef %i.g, i32 noundef %i.j)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7813MessageFormat14getFormatNamesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::LocalPointer.1", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #20 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 7, ptr %1, align 4, !tbaa !42
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60

_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.c
  %.pre = load i32, ptr %1, align 4, !tbaa !42
  %i.g = icmp slt i32 %.pre, 1
  br i1 %i.g, label %bb.h, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.c) #20
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit61

bb.g:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

bb.h:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.j = invoke noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %.preheader unwind label %bb.g ; 0 uses

.preheader:                                       ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %.028 = phi i32 [ %i.s, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit ], [ 0, %.preheader ] ; 3 uses
  %.not.i = icmp eq i32 %.028, 0
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55 ; 3 uses
  br i1 %.not.i, label %._crit_edge.i.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = zext nneg i32 %.028 to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !66
  %..i.i = call noundef i32 @llvm.smax.i32(i32 %i.o, i32 %.028)
  %i.p = zext nneg i32 %..i.i to i64
  br label %._crit_edge.i.preheader

._crit_edge.i.preheader:                          ; preds = %bb.j, %bb.i
  %indvars.iv.i.ph = phi i64 [ 0, %bb.i ], [ %i.p, %bb.j ]
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.preheader, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ %indvars.iv.i.ph, %._crit_edge.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %indvars.iv.next.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !59
  switch i32 %i.r, label %._crit_edge.i [
    i32 5, label %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
    i32 1, label %.critedge
  ]

_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit: ; preds = %._crit_edge.i
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.t = add nuw i64 %indvars.iv.i, 2
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %.pre.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !63, !noalias !154
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i16, ptr %i.y, align 4, !tbaa !64, !noalias !154
  %i.aa = zext i16 %i.z to i32
  invoke void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i32 noundef %i.x, i32 noundef %i.aa)
          to label %_ZN6icu_7813MessageFormat10getArgNameEi.exit unwind label %bb.m

_ZN6icu_7813MessageFormat10getArgNameEi.exit:     ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.ab = invoke noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.k unwind label %bb.n       ; 2 uses

bb.k:                                             ; preds = %_ZN6icu_7813MessageFormat10getArgNameEi.exit
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = load i32, ptr %1, align 4
  %i.ae = icmp sgt i32 %i.ad, 0
  %or.cond.i56 = select i1 %i.ac, i1 true, i1 %i.ae
  br i1 %or.cond.i56, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %1, align 4, !tbaa !42
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.l, %bb.k
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  invoke void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit unwind label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit57

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.af = load i32, ptr %1, align 4, !tbaa !42
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %bb.i, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread, !llvm.loop !152

bb.m:                                             ; preds = %_ZNK6icu_7813MessageFormat20nextTopLevelArgStartEi.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.n:                                             ; preds = %_ZN6icu_7813MessageFormat10getArgNameEi.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #20
  br label %bb.v

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit57: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.thread95

.critedge:                                        ; preds = %._crit_edge.i
  %i.ak = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #20 ; 6 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge
  store ptr %i.c, ptr %3, align 8, !tbaa !72
  invoke void @_ZN6icu_7821FormatNameEnumerationC1ENS_12LocalPointerINS_7UVectorEEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit unwind label %bb.t

bb.p:                                             ; preds = %.critedge
  %i.al = load i32, ptr %1, align 4
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 7, ptr %1, align 4, !tbaa !42
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.o
  %i.an = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #20, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.r, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %.pr = load i32, ptr %1, align 4, !tbaa !42
  %i.as = icmp sgt i32 %.pr, 0
  br i1 %i.as, label %bb.s, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60

bb.s:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(116) %i.ak) #20, !inline_history !153
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60

bb.t:                                             ; preds = %bb.o
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %3, align 8, !tbaa !72    ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.thread92, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(40) %i.ax) #20, !inline_history !2
  br label %.thread92

.thread92:                                        ; preds = %bb.t, %bb.u
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ak) #20
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit61

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread: ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, %bb.p, %bb.q, %_ZN6icu_7812LocalPointerINS_7UVectorEEC2EPS1_R10UErrorCode.exit
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #20, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60

bb.v:                                             ; preds = %bb.m, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.thread95

.thread95:                                        ; preds = %bb.v, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit57, %bb.g
  %.pn5290 = phi { ptr, i32 } [ %i.i, %bb.g ], [ %.pn, %bb.v ], [ %i.aj, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit57 ]
  %i.bf = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #20, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit61

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit61: ; preds = %.thread95, %.thread92, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %i.aw, %.thread92 ], [ %.pn5290, %.thread95 ]
  resume { ptr, i32 } %.pn52.pn

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit60: ; preds = %bb.e, %bb.d, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, %bb.s, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread, %bb.a
  %.442 = phi ptr [ null, %bb.a ], [ null, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit.thread ], [ null, %bb.s ], [ %i.ak, %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit ], [ null, %bb.d ], [ null, %bb.e ]
  ret ptr %.442
}

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZN6icu_787UVector10setDeleterEPFvPvE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

declare void @_ZN6icu_787UVector12adoptElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MessageFormat6formatEPKNS_11FormattableEiRNS_13UnicodeStringERNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeStringAppendable", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::AppendableWrapper", align 8 ; 6 uses
  %i.a = load i32, ptr %5, align 4, !tbaa !42
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7813MessageFormat6formatEPKNS_11FormattableEPKNS_13UnicodeStringEiRS4_PNS_13FieldPositionER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6icu_7823UnicodeStringAppendableE, i64 16), ptr %6, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.c, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr %6, ptr %7, align 8, !tbaa !76
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !78
  invoke void @_ZNK6icu_7813MessageFormat6formatEiPKvPKNS_11FormattableEPKNS_13UnicodeStringEiRNS_17AppendableWrapperEPNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef 0, ptr noundef null, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull readnone %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.c unwind label %bb.d, !inline_history !79

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6icu_7823UnicodeStringAppendableD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20, !inline_history !79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %_ZNK6icu_7813MessageFormat6formatEPKNS_11FormattableEPKNS_13UnicodeStringEiRS4_PNS_13FieldPositionER10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN6icu_7823UnicodeStringAppendableD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20, !inline_history !79
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  resume { ptr, i32 } %i.e

_ZNK6icu_7813MessageFormat6formatEPKNS_11FormattableEPKNS_13UnicodeStringEiRS4_PNS_13FieldPositionER10UErrorCode.exit: ; preds = %bb.a, %bb.c
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813MessageFormat6formatEPKNS_11FormattableEPKNS_13UnicodeStringEiRS4_PNS_13FieldPositionER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull returned align 8 dereferenceable(64) %4, ptr nofree noundef readnone captures(none) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeStringAppendable", align 8 ; 8 uses
  %8 = alloca %"class.icu_78::AppendableWrapper", align 8 ; 6 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !42
end_hunk_0
