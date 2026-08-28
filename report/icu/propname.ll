Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/propname?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7812PropNameData12findPropertyEi:bb.a
bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %.thread31, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %.thread31, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond = icmp eq i32 %i.k, 28672
  br i1 %or.cond, label %bb.l, label %.thread31

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42 = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42
  br label %.thread31

.thread31:                                        ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.l
  %i.o = phi i32 [ %i.n, %bb.l ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %.thread70, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, 2                            ; 2 uses
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !13   ; 5 uses
  %i.g = icmp slt i32 %i.f, 16
  br i1 %i.g, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %.thread70

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.03678 = phi i32 [ %i.u, %bb.d ], [ %i.f, %.preheader ] ; 2 uses
  %.04077 = phi i32 [ %i.t, %bb.d ], [ %i.b, %.preheader ] ; 2 uses
  %i.i = sext i32 %.04077 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !13   ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !13   ; 2 uses
  %i.n = add nsw i32 %.04077, 2                   ; 2 uses
  %i.o = icmp slt i32 %1, %i.k
  br i1 %i.o, label %.thread70, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.p = icmp slt i32 %1, %i.m
  br i1 %i.p, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.q = add nsw i32 %i.n, %1
  %i.r = sub i32 %i.q, %i.k
  br label %.thread70.sink.split

bb.d:                                             ; preds = %bb.c
  %i.s = sub i32 %i.n, %i.k
  %i.t = add i32 %i.s, %i.m
  %i.u = add nsw i32 %.03678, -1
  %i.v = icmp sgt i32 %.03678, 1
  br i1 %i.v, label %.lr.ph, label %.thread70, !llvm.loop !14

bb.e:                                             ; preds = %bb.b
  %i.w = add i32 %0, -14
  %i.x = add i32 %i.w, %i.f
  %i.y = sext i32 %i.b to i64
  %i.z = sext i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ %i.y, %bb.e ] ; 3 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13 ; 2 uses
  %i.ac = icmp slt i32 %1, %i.ab
  br i1 %i.ac, label %.thread70, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp eq i32 %1, %i.ab
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ae, label %bb.f, label %.thread70, !llvm.loop !15

bb.i:                                             ; preds = %bb.g
  %i.af = trunc nsw i64 %indvars.iv to i32
  %i.ag = add nsw i32 %i.f, -16
  %i.ah = add i32 %i.ag, %i.af
  br label %.thread70.sink.split

.thread70.sink.split:                             ; preds = %.thread, %bb.i
  %.sink = phi i32 [ %i.ah, %bb.i ], [ %i.r, %.thread ]
  %i.ai = sext i32 %.sink to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !13
  br label %.thread70

.thread70:                                        ; preds = %bb.h, %bb.f, %.lr.ph, %bb.d, %.thread70.sink.split, %.preheader, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ %i.ak, %.thread70.sink.split ], [ 0, %.lr.ph ], [ 0, %.preheader ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN6icu_7812PropNameData7getNameEPKci(ptr nofree noundef readonly captures(ret: address, provenance) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !8
  %i.c = sext i8 %i.b to i32
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.0912 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.not15 = icmp eq i32 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0914 = phi ptr [ %.09, %.lr.ph ], [ %.0912, %.preheader ] ; 2 uses
  %.013 = phi i32 [ %i.d, %.lr.ph ], [ %1, %.preheader ] ; 2 uses
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914)
  %strchr = getelementptr inbounds i8, ptr %.0914, i64 %strlen
  %i.d = add nsw i32 %.013, -1
  %.09 = getelementptr inbounds nuw i8, ptr %strchr, i64 1 ; 2 uses
  %i.e = icmp samesign ugt i32 %.013, 1
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.09.lcssa = phi ptr [ %.0912, %.preheader ], [ %.09, %.lr.ph ] ; 2 uses
  %i.f = load i8, ptr %.09.lcssa, align 1, !tbaa !8
  %i.g = icmp eq i8 %i.f, 0
  %..09 = select i1 %i.g, ptr null, ptr %.09.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a, %bb.b
  %.010 = phi ptr [ null, %bb.a ], [ %..09, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.010
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %.not2830 = icmp eq i8 %i.b, 0
  br i1 %.not2830, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.c = phi i8 [ %i.k, %.outer ], [ %i.b, %.preheader ]
  %.lcssa25.pn = phi ptr [ %i.e, %.outer ], [ %1, %.preheader ]
  %.0.ph31 = phi i32 [ %i.j, %.outer ], [ 1, %.preheader ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.d = phi i8 [ %i.c, %.lr.ph ], [ %i.h, %bb.d ]
  %.lcssa25.pn.pn = phi ptr [ %.lcssa25.pn, %.lr.ph ], [ %i.e, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %.lcssa25.pn.pn, i64 1 ; 4 uses
  %i.f = tail call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.d) ; 3 uses
  switch i8 %i.f, label %bb.c [
    i8 95, label %bb.d
    i8 45, label %bb.d
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = add i8 %i.f, -9
  %or.cond8 = icmp ult i8 %i.g, 5
  br i1 %or.cond8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %i.h = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.outer._crit_edge, label %bb.b, !llvm.loop !17

bb.e:                                             ; preds = %bb.c
  %.not24 = trunc i32 %.0.ph31 to i1
  br i1 %.not24, label %.outer, label %.loopexit

.outer:                                           ; preds = %bb.e
  %i.i = zext i8 %i.f to i32
  %i.j = tail call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.i) ; 2 uses
  %i.k = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not28 = icmp eq i8 %i.k, 0
  br i1 %.not28, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !17

.outer._crit_edge:                                ; preds = %.outer, %bb.d, %.preheader
  %.0.ph.lcssa27 = phi i32 [ %.0.ph31, %bb.d ], [ 1, %.preheader ], [ %i.j, %.outer ]
  %i.l = icmp sgt i32 %.0.ph.lcssa27, 1
  %i.m = zext i1 %i.l to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.outer._crit_edge, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.m, %.outer._crit_edge ], [ 0, %bb.e ]
  ret i8 %.1
}

declare signext i8 @uprv_asciitolower_78(i8 noundef signext) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN6icu_7812PropNameData15getPropertyNameEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.r ; 2 uses
  %i.t = icmp slt i32 %1, 0
  br i1 %i.t, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  %i.v = sext i8 %i.u to i32
  %.not.i = icmp slt i32 %1, %i.v
  br i1 %.not.i, label %.preheader.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.preheader.i:                                     ; preds = %bb.l
  %.0912.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not15.i = icmp eq i32 %1, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.0914.i = phi ptr [ %.09.i, %.lr.ph.i ], [ %.0912.i, %.preheader.i ] ; 2 uses
  %.013.i = phi i32 [ %i.w, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i)
  %strchr.i = getelementptr inbounds i8, ptr %.0914.i, i64 %strlen.i
  %i.w = add nsw i32 %.013.i, -1
  %.09.i = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1 ; 2 uses
  %i.x = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.09.lcssa.i = phi ptr [ %.0912.i, %.preheader.i ], [ %.09.i, %.lr.ph.i ] ; 2 uses
  %i.y = load i8, ptr %.09.lcssa.i, align 1, !tbaa !8
  %i.z = icmp eq i8 %i.y, 0
  %..09.i = select i1 %i.z, ptr null, ptr %.09.lcssa.i
  br label %_ZN6icu_7812PropNameData7getNameEPKci.exit

_ZN6icu_7812PropNameData7getNameEPKci.exit:       ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.a, %._crit_edge.i, %bb.l, %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %.0 = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %_ZN6icu_7812PropNameData12findPropertyEi.exit ], [ %..09.i, %._crit_edge.i ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN6icu_7812PropNameData20getPropertyValueNameEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13   ; 4 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.t = add i32 %i.r, 2                          ; 2 uses
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !13   ; 5 uses
  %i.y = icmp slt i32 %i.x, 16
  br i1 %i.y, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.l
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.n
  %.03678.i = phi i32 [ %i.am, %bb.n ], [ %i.x, %.preheader.i ] ; 2 uses
  %.04077.i = phi i32 [ %i.al, %bb.n ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.aa = sext i32 %.04077.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !13 ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !13 ; 2 uses
  %i.af = add nsw i32 %.04077.i, 2                ; 2 uses
  %i.ag = icmp slt i32 %1, %i.ac
  br i1 %i.ag, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.ah = icmp slt i32 %1, %i.ae
  br i1 %i.ah, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.ai = add nsw i32 %i.af, %1
  %i.aj = sub i32 %i.ai, %i.ac
  br label %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit

bb.n:                                             ; preds = %bb.m
  %i.ak = sub i32 %i.af, %i.ac
  %i.al = add i32 %i.ak, %i.ae
  %i.am = add nsw i32 %.03678.i, -1
  %i.an = icmp sgt i32 %.03678.i, 1
  br i1 %i.an, label %.lr.ph.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, !llvm.loop !14

bb.o:                                             ; preds = %bb.l
  %i.ao = add i32 %i.r, -14
  %i.ap = add i32 %i.ao, %i.x
  %i.aq = sext i32 %i.t to i64
  %i.ar = sext i32 %i.ap to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ %i.aq, %bb.o ] ; 3 uses
  %i.as = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %indvars.iv.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !13 ; 2 uses
  %i.au = icmp slt i32 %1, %i.at
  br i1 %i.au, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = icmp eq i32 %1, %i.at
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = icmp slt i64 %indvars.iv.next.i, %i.ar
  br i1 %i.aw, label %bb.p, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, !llvm.loop !15

bb.s:                                             ; preds = %bb.q
  %i.ax = trunc nsw i64 %indvars.iv.i to i32
  %i.ay = add nsw i32 %i.x, -16
  %i.az = add i32 %i.ay, %i.ax
  br label %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit

_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit: ; preds = %.thread.i, %bb.s
  %.sink.i = phi i32 [ %i.az, %bb.s ], [ %i.aj, %.thread.i ]
  %i.ba = sext i32 %.sink.i to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !13 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit
  %i.be = sext i32 %i.bc to i64
  %i.bf = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.be ; 2 uses
  %i.bg = icmp slt i32 %2, 0
  br i1 %i.bg, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bi = sext i8 %i.bh to i32
  %.not.i = icmp slt i32 %2, %i.bi
  br i1 %.not.i, label %.preheader.i9, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.preheader.i9:                                    ; preds = %bb.u
  %.0912.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %.not15.i = icmp eq i32 %2, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.preheader.i9, %.lr.ph.i10
  %.0914.i = phi ptr [ %.09.i, %.lr.ph.i10 ], [ %.0912.i, %.preheader.i9 ] ; 2 uses
  %.013.i = phi i32 [ %i.bj, %.lr.ph.i10 ], [ %2, %.preheader.i9 ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i)
  %strchr.i = getelementptr inbounds i8, ptr %.0914.i, i64 %strlen.i
  %i.bj = add nsw i32 %.013.i, -1
  %.09.i = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1 ; 2 uses
  %i.bk = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.bk, label %.lr.ph.i10, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i10, %.preheader.i9
  %.09.lcssa.i = phi ptr [ %.0912.i, %.preheader.i9 ], [ %.09.i, %.lr.ph.i10 ] ; 2 uses
  %i.bl = load i8, ptr %.09.lcssa.i, align 1, !tbaa !8
  %i.bm = icmp eq i8 %i.bl, 0
  %..09.i = select i1 %i.bm, ptr null, ptr %.09.lcssa.i
  br label %_ZN6icu_7812PropNameData7getNameEPKci.exit

_ZN6icu_7812PropNameData7getNameEPKci.exit:       ; preds = %bb.r, %bb.p, %bb.n, %.lr.ph.i, %.preheader.i, %_ZN6icu_7812PropNameData12findPropertyEi.exit, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.a, %._crit_edge.i, %bb.u, %bb.t, %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit
  %.1 = phi ptr [ null, %.preheader.i ], [ null, %bb.c ], [ null, %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit ], [ null, %bb.u ], [ null, %bb.t ], [ %..09.i, %._crit_edge.i ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ], [ null, %_ZN6icu_7812PropNameData12findPropertyEi.exit ], [ null, %bb.n ], [ null, %.lr.ph.i ], [ null, %bb.p ], [ null, %bb.r ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::BytesTrie", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10bytesTriesE, i64 %i.a ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 -1, ptr %i.e, align 8, !tbaa !24
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %_ZNK6icu_789BytesTrie8getValueEv.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1, !tbaa !8       ; 2 uses
  %.not2830.i = icmp eq i8 %i.g, 0
  br i1 %.not2830.i, label %_ZNK6icu_789BytesTrie8getValueEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc4
  %i.h = phi i8 [ %i.p, %.noexc4 ], [ %i.g, %.preheader.i ]
  %.lcssa25.pn.i = phi ptr [ %i.j, %.noexc4 ], [ %1, %.preheader.i ]
  %.0.ph31.i = phi i32 [ %i.o, %.noexc4 ], [ 1, %.preheader.i ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.i = phi i8 [ %i.h, %.lr.ph.i ], [ %i.m, %bb.d ]
  %.lcssa25.pn.pn.i = phi ptr [ %.lcssa25.pn.i, %.lr.ph.i ], [ %i.j, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa25.pn.pn.i, i64 1 ; 4 uses
  %i.k = invoke signext i8 @uprv_asciitolower_78(i8 noundef signext %i.i)
          to label %.noexc unwind label %.loopexit ; 3 uses

.noexc:                                           ; preds = %bb.b
  switch i8 %i.k, label %bb.c [
    i8 95, label %bb.d
    i8 45, label %bb.d
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %.noexc
  %i.l = add i8 %i.k, -9
  %or.cond8.i = icmp ult i8 %i.l, 5
  br i1 %or.cond8.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.noexc, %.noexc, %.noexc
  %i.m = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit, label %bb.b, !llvm.loop !17

bb.e:                                             ; preds = %bb.c
  %.not24.i = trunc i32 %.0.ph31.i to i1
  br i1 %.not24.i, label %.outer.i, label %_ZNK6icu_789BytesTrie8getValueEv.exit

.outer.i:                                         ; preds = %bb.e
  %i.n = zext i8 %i.k to i32
  %i.o = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %i.n)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc4:                                          ; preds = %.outer.i
  %i.p = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not28.i = icmp eq i8 %i.p, 0
  br i1 %.not28.i, label %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit, label %.lr.ph.i, !llvm.loop !17

_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit: ; preds = %.noexc4, %bb.d
  %.0.ph.lcssa27.i = phi i32 [ %.0.ph31.i, %bb.d ], [ %i.o, %.noexc4 ]
  %3 = icmp sgt i32 %.0.ph.lcssa27.i, 1
  br i1 %3, label %bb.f, label %_ZNK6icu_789BytesTrie8getValueEv.exit

bb.f:                                             ; preds = %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.q, align 1, !tbaa !8
  %i.t = lshr i8 %i.s, 1
  %i.u = zext nneg i8 %i.t to i32
  %i.v = invoke noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.r, i32 noundef %i.u)
          to label %_ZNK6icu_789BytesTrie8getValueEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.outer.i
  %lpad.loopexit11 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.f
  %lpad.loopexit.split-lp12 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit11, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp12, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  resume { ptr, i32 } %lpad.phi

_ZNK6icu_789BytesTrie8getValueEv.exit:            ; preds = %bb.e, %bb.a, %.preheader.i, %bb.f, %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit
  %.0 = phi i32 [ %i.v, %bb.f ], [ -1, %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit ], [ -1, %.preheader.i ], [ -1, %bb.a ], [ -1, %bb.e ]
  call void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6icu_789BytesTrieD1Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7812PropNameData15getPropertyEnumEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef 0, ptr noundef %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread

_ZN6icu_7812PropNameData12findPropertyEi.exit:    ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !13
  %i.w = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %i.v, ptr noundef %1)
  br label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread

_ZN6icu_7812PropNameData12findPropertyEi.exit.thread: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.a, %_ZN6icu_7812PropNameData12findPropertyEi.exit, %bb.l
  %.0 = phi i32 [ %i.w, %bb.l ], [ -1, %bb.c ], [ -1, %_ZN6icu_7812PropNameData12findPropertyEi.exit ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @u_getPropertyName_78(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit.i:  ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i.i, %0
  %i.m = shl nsw i32 %i.l, 1
  %i.n = add nsw i32 %i.m, %.lcssa42.i.i
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !13
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.r ; 2 uses
  %i.t = icmp slt i32 %1, 0
  br i1 %i.t, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit.i
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  %i.v = sext i8 %i.u to i32
  %.not.i.i = icmp slt i32 %1, %i.v
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

.preheader.i.i:                                   ; preds = %bb.l
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %.not15.i.i = icmp eq i32 %1, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.0914.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i ], [ %.0912.i.i, %.preheader.i.i ] ; 2 uses
  %.013.i.i = phi i32 [ %i.w, %.lr.ph.i.i ], [ %1, %.preheader.i.i ] ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i.i)
  %strchr.i.i = getelementptr inbounds i8, ptr %.0914.i.i, i64 %strlen.i.i
  %i.w = add nsw i32 %.013.i.i, -1
end_hunk_0
