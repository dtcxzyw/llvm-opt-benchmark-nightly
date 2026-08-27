Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/propname?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uprv_compareASCIIPropertyNames_78:bb.a
  %i.t = and i32 %i.s, 255
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZL24getASCIIPropertyNameCharPKc.exit25
  %.not = icmp eq i32 %.015.i, %.015.i24
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = and i32 %.015.i, 255
  %i.w = and i32 %.015.i24, 255
  %i.x = sub nsw i32 %i.v, %i.w                   ; 2 uses
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = ashr i32 %.015.i, 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %.014, i64 %i.z
  %i.ab = ashr i32 %.015.i24, 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 %i.ac
  br label %bb.b, !llvm.loop !11

bb.l:                                             ; preds = %bb.j, %_ZL24getASCIIPropertyNameCharPKc.exit25
  %.015 = phi i32 [ 0, %_ZL24getASCIIPropertyNameCharPKc.exit25 ], [ %i.x, %bb.j ]
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define range(i32 -255, 256) i32 @uprv_compareEBCDICPropertyNames_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.014 = phi ptr [ %0, %bb.a ], [ %i.aa, %bb.i ] ; 2 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.ad, %bb.i ]   ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.backedge, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %.critedge.i.backedge ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.014, i64 %indvars.iv.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.b, label %bb.c [
    i8 109, label %.critedge.i.backedge
    i8 96, label %.critedge.i.backedge
    i8 64, label %.critedge.i.backedge
    i8 37, label %.critedge.i.backedge
    i8 21, label %.critedge.i.backedge
    i8 13, label %.critedge.i.backedge
    i8 12, label %.critedge.i.backedge
    i8 11, label %.critedge.i.backedge
    i8 5, label %.critedge.i.backedge
    i8 0, label %bb.d
  ]

.critedge.i.backedge:                             ; preds = %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  br label %.critedge.i

bb.c:                                             ; preds = %.critedge.i
  %i.c = trunc nuw i64 %indvars.iv.next.i to i32
  %i.d = shl i32 %i.c, 8
  %i.e = tail call signext i8 @uprv_ebcdictolower_78(i8 noundef signext %i.b)
  %i.f = zext i8 %i.e to i32
  %i.g = or disjoint i32 %i.d, %i.f
  br label %_ZL25getEBCDICPropertyNameCharPKc.exit

bb.d:                                             ; preds = %.critedge.i
  %i.h = trunc nuw i64 %indvars.iv.next.i to i32
  %i.i = shl i32 %i.h, 8
  br label %_ZL25getEBCDICPropertyNameCharPKc.exit

_ZL25getEBCDICPropertyNameCharPKc.exit:           ; preds = %bb.c, %bb.d
  %.037.i = phi i32 [ %i.g, %bb.c ], [ %i.i, %bb.d ] ; 4 uses
  br label %.critedge.i20

.critedge.i20:                                    ; preds = %.critedge.i20.backedge, %_ZL25getEBCDICPropertyNameCharPKc.exit
  %indvars.iv.i21 = phi i64 [ 0, %_ZL25getEBCDICPropertyNameCharPKc.exit ], [ %indvars.iv.next.i22, %.critedge.i20.backedge ] ; 2 uses
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.i21
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  switch i8 %i.k, label %bb.e [
    i8 109, label %.critedge.i20.backedge
    i8 96, label %.critedge.i20.backedge
    i8 64, label %.critedge.i20.backedge
    i8 37, label %.critedge.i20.backedge
    i8 21, label %.critedge.i20.backedge
    i8 13, label %.critedge.i20.backedge
    i8 12, label %.critedge.i20.backedge
    i8 11, label %.critedge.i20.backedge
    i8 5, label %.critedge.i20.backedge
    i8 0, label %bb.f
  ]

.critedge.i20.backedge:                           ; preds = %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20, %.critedge.i20
  br label %.critedge.i20

bb.e:                                             ; preds = %.critedge.i20
  %i.l = trunc nuw i64 %indvars.iv.next.i22 to i32
  %i.m = shl i32 %i.l, 8
  %i.n = tail call signext i8 @uprv_ebcdictolower_78(i8 noundef signext %i.k)
  %i.o = zext i8 %i.n to i32
  %i.p = or disjoint i32 %i.m, %i.o
  br label %_ZL25getEBCDICPropertyNameCharPKc.exit25

bb.f:                                             ; preds = %.critedge.i20
  %i.q = trunc nuw i64 %indvars.iv.next.i22 to i32
  %i.r = shl i32 %i.q, 8
  br label %_ZL25getEBCDICPropertyNameCharPKc.exit25

_ZL25getEBCDICPropertyNameCharPKc.exit25:         ; preds = %bb.e, %bb.f
  %.037.i23 = phi i32 [ %i.p, %bb.e ], [ %i.r, %bb.f ] ; 4 uses
  %i.s = or i32 %.037.i23, %.037.i
  %i.t = and i32 %i.s, 255
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZL25getEBCDICPropertyNameCharPKc.exit25
  %.not = icmp eq i32 %.037.i, %.037.i23
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = and i32 %.037.i, 255
  %i.w = and i32 %.037.i23, 255
  %i.x = sub nsw i32 %i.v, %i.w                   ; 2 uses
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = ashr i32 %.037.i, 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %.014, i64 %i.z
  %i.ab = ashr i32 %.037.i23, 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %.0, i64 %i.ac
  br label %bb.b, !llvm.loop !12

bb.j:                                             ; preds = %bb.h, %_ZL25getEBCDICPropertyNameCharPKc.exit25
  %.015 = phi i32 [ 0, %_ZL25getEBCDICPropertyNameCharPKc.exit25 ], [ %i.x, %bb.h ]
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -57341, 57598) i32 @_ZN6icu_7812PropNameData12findPropertyEi(i32 noundef %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %.thread31, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %.thread31, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %.thread31, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %bb.l, label %bb.g

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
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42
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
  %i.c = phi i8 [ %i.l, %.outer ], [ %i.b, %.preheader ]
  %.lcssa25.pn = phi ptr [ %i.e, %.outer ], [ %1, %.preheader ]
  %.0.ph31 = phi i32 [ %i.k, %.outer ], [ 1, %.preheader ] ; 2 uses
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
  %i.i = and i32 %.0.ph31, 1
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %.loopexit, label %.outer

.outer:                                           ; preds = %bb.e
  %i.j = zext i8 %i.f to i32
  %i.k = tail call noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %i.j) ; 2 uses
  %i.l = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not28 = icmp eq i8 %i.l, 0
  br i1 %.not28, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !17

.outer._crit_edge:                                ; preds = %.outer, %bb.d, %.preheader
  %.0.ph.lcssa27 = phi i32 [ %.0.ph31, %bb.d ], [ 1, %.preheader ], [ %i.k, %.outer ]
  %i.m = icmp sgt i32 %.0.ph.lcssa27, 1
  %i.n = zext i1 %i.m to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.outer._crit_edge, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %i.n, %.outer._crit_edge ], [ 0, %bb.e ]
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
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42.i
  %2 = zext nneg i32 %i.n to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %2
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.q ; 2 uses
  %i.s = icmp slt i32 %1, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.t = load i8, ptr %i.r, align 1, !tbaa !8
  %i.u = sext i8 %i.t to i32
  %.not.i = icmp slt i32 %1, %i.u
  br i1 %.not.i, label %.preheader.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.preheader.i:                                     ; preds = %bb.l
  %.0912.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not15.i = icmp eq i32 %1, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.0914.i = phi ptr [ %.09.i, %.lr.ph.i ], [ %.0912.i, %.preheader.i ] ; 2 uses
  %.013.i = phi i32 [ %i.v, %.lr.ph.i ], [ %1, %.preheader.i ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i)
  %strchr.i = getelementptr inbounds i8, ptr %.0914.i, i64 %strlen.i
  %i.v = add nsw i32 %.013.i, -1
  %.09.i = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1 ; 2 uses
  %i.w = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.09.lcssa.i = phi ptr [ %.0912.i, %.preheader.i ], [ %.09.i, %.lr.ph.i ] ; 2 uses
  %i.x = load i8, ptr %.09.lcssa.i, align 1, !tbaa !8
  %i.y = icmp eq i8 %i.x, 0
  %..09.i = select i1 %i.y, ptr null, ptr %.09.lcssa.i
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
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42.i
  %3 = zext nneg i32 %i.n to i64
  %i.o = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %3
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 8, !tbaa !13   ; 4 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.s = add i32 %i.q, 2                          ; 2 uses
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !13   ; 5 uses
  %i.x = icmp slt i32 %i.w, 16
  br i1 %i.x, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.l
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.lr.ph.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.n
  %.03678.i = phi i32 [ %i.al, %bb.n ], [ %i.w, %.preheader.i ] ; 2 uses
  %.04077.i = phi i32 [ %i.ak, %bb.n ], [ %i.s, %.preheader.i ] ; 2 uses
  %i.z = sext i32 %.04077.i to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.aa, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !13 ; 2 uses
  %i.ae = add nsw i32 %.04077.i, 2                ; 2 uses
  %i.af = icmp slt i32 %1, %i.ab
  br i1 %i.af, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.ag = icmp slt i32 %1, %i.ad
  br i1 %i.ag, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  %i.ah = add nsw i32 %i.ae, %1
  %i.ai = sub i32 %i.ah, %i.ab
  br label %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = sub i32 %i.ae, %i.ab
  %i.ak = add i32 %i.aj, %i.ad
  %i.al = add nsw i32 %.03678.i, -1
  %i.am = icmp sgt i32 %.03678.i, 1
  br i1 %i.am, label %.lr.ph.i, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, !llvm.loop !14

bb.o:                                             ; preds = %bb.l
  %i.an = add i32 %i.q, -14
  %i.ao = add i32 %i.an, %i.w
  %i.ap = sext i32 %i.s to i64
  %i.aq = sext i32 %i.ao to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.r ], [ %i.ap, %bb.o ] ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %indvars.iv.i
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13 ; 2 uses
  %i.at = icmp slt i32 %1, %i.as
  br i1 %i.at, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp eq i32 %1, %i.as
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.av, label %bb.p, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, !llvm.loop !15

bb.s:                                             ; preds = %bb.q
  %i.aw = trunc nsw i64 %indvars.iv.i to i32
  %i.ax = add nsw i32 %i.w, -16
  %i.ay = add i32 %i.ax, %i.aw
  br label %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit

_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit: ; preds = %.thread.i, %bb.s
  %.sink.i = phi i32 [ %i.ay, %bb.s ], [ %i.ai, %.thread.i ]
  %i.az = sext i32 %.sink.i to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !13 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7812PropNameData26findPropertyValueNameGroupEii.exit
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.bd ; 2 uses
  %i.bf = icmp slt i32 %2, 0
  br i1 %i.bf, label %_ZN6icu_7812PropNameData7getNameEPKci.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bh = sext i8 %i.bg to i32
  %.not.i = icmp slt i32 %2, %i.bh
  br i1 %.not.i, label %.preheader.i9, label %_ZN6icu_7812PropNameData7getNameEPKci.exit

.preheader.i9:                                    ; preds = %bb.u
  %.0912.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 2 uses
  %.not15.i = icmp eq i32 %2, 0
  br i1 %.not15.i, label %._crit_edge.i, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %.preheader.i9, %.lr.ph.i10
  %.0914.i = phi ptr [ %.09.i, %.lr.ph.i10 ], [ %.0912.i, %.preheader.i9 ] ; 2 uses
  %.013.i = phi i32 [ %i.bi, %.lr.ph.i10 ], [ %2, %.preheader.i9 ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i)
  %strchr.i = getelementptr inbounds i8, ptr %.0914.i, i64 %strlen.i
  %i.bi = add nsw i32 %.013.i, -1
  %.09.i = getelementptr inbounds nuw i8, ptr %strchr.i, i64 1 ; 2 uses
  %i.bj = icmp samesign ugt i32 %.013.i, 1
  br i1 %i.bj, label %.lr.ph.i10, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i10, %.preheader.i9
  %.09.lcssa.i = phi ptr [ %.0912.i, %.preheader.i9 ], [ %.09.i, %.lr.ph.i10 ] ; 2 uses
  %i.bk = load i8, ptr %.09.lcssa.i, align 1, !tbaa !8
  %i.bl = icmp eq i8 %i.bk, 0
  %..09.i = select i1 %i.bl, ptr null, ptr %.09.lcssa.i
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
  %i.h = phi i8 [ %i.q, %.noexc4 ], [ %i.g, %.preheader.i ]
  %.lcssa25.pn.i = phi ptr [ %i.j, %.noexc4 ], [ %1, %.preheader.i ]
  %.0.ph31.i = phi i32 [ %i.p, %.noexc4 ], [ 1, %.preheader.i ] ; 2 uses
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
  %i.n = and i32 %.0.ph31.i, 1
  %.not24.i = icmp eq i32 %i.n, 0
  br i1 %.not24.i, label %_ZNK6icu_789BytesTrie8getValueEv.exit, label %.outer.i

.outer.i:                                         ; preds = %bb.e
  %i.o = zext i8 %i.k to i32
  %i.p = invoke noundef i32 @_ZN6icu_789BytesTrie4nextEi(ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %i.o)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc4:                                          ; preds = %.outer.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not28.i = icmp eq i8 %i.q, 0
  br i1 %.not28.i, label %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit, label %.lr.ph.i, !llvm.loop !17

_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit: ; preds = %.noexc4, %bb.d
  %.0.ph.lcssa27.i = phi i32 [ %.0.ph31.i, %bb.d ], [ %i.p, %.noexc4 ]
  %i.r = icmp slt i32 %.0.ph.lcssa27.i, 2
  br i1 %i.r, label %_ZNK6icu_789BytesTrie8getValueEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.s, align 1, !tbaa !8
  %i.v = lshr i8 %i.u, 1
  %i.w = zext nneg i8 %i.v to i32
  %i.x = invoke noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef nonnull %i.t, i32 noundef %i.w)
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
  %.0 = phi i32 [ %i.x, %bb.f ], [ -1, %_ZN6icu_7812PropNameData12containsNameERNS_9BytesTrieEPKc.exit ], [ -1, %.preheader.i ], [ -1, %bb.a ], [ -1, %bb.e ]
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
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42.i
  %2 = zext nneg i32 %i.n to i64
  %i.o = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %2
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %i.u, ptr noundef %1)
  br label %_ZN6icu_7812PropNameData12findPropertyEi.exit.thread

_ZN6icu_7812PropNameData12findPropertyEi.exit.thread: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.a, %_ZN6icu_7812PropNameData12findPropertyEi.exit, %bb.l
  %.0 = phi i32 [ %i.v, %bb.l ], [ -1, %bb.c ], [ -1, %_ZN6icu_7812PropNameData12findPropertyEi.exit ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.e ]
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
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42.i.i
  %2 = zext nneg i32 %i.n to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %2
  %i.p = load i32, ptr %i.o, align 4, !tbaa !13
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.q ; 2 uses
  %i.s = icmp slt i32 %1, 0
  br i1 %i.s, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit.i
  %i.t = load i8, ptr %i.r, align 1, !tbaa !8
  %i.u = sext i8 %i.t to i32
  %.not.i.i = icmp slt i32 %1, %i.u
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

.preheader.i.i:                                   ; preds = %bb.l
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not15.i.i = icmp eq i32 %1, 0
  br i1 %.not15.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.0914.i.i = phi ptr [ %.09.i.i, %.lr.ph.i.i ], [ %.0912.i.i, %.preheader.i.i ] ; 2 uses
  %.013.i.i = phi i32 [ %i.v, %.lr.ph.i.i ], [ %1, %.preheader.i.i ] ; 2 uses
  %strlen.i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0914.i.i)
  %strchr.i.i = getelementptr inbounds i8, ptr %.0914.i.i, i64 %strlen.i.i
  %i.v = add nsw i32 %.013.i.i, -1
  %.09.i.i = getelementptr inbounds nuw i8, ptr %strchr.i.i, i64 1 ; 2 uses
  %i.w = icmp samesign ugt i32 %.013.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.09.lcssa.i.i = phi ptr [ %.0912.i.i, %.preheader.i.i ], [ %.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.x = load i8, ptr %.09.lcssa.i.i, align 1, !tbaa !8
  %i.y = icmp eq i8 %i.x, 0
  %..09.i.i = select i1 %i.y, ptr null, ptr %.09.lcssa.i.i
  br label %_ZN6icu_7812PropNameData15getPropertyNameEii.exit

_ZN6icu_7812PropNameData15getPropertyNameEii.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, %bb.l, %._crit_edge.i.i
  %.0.i = phi ptr [ null, %bb.l ], [ null, %bb.c ], [ null, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i ], [ %..09.i.i, %._crit_edge.i.i ], [ null, %bb.a ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.g ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef i32 @u_getPropertyEnum_78(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef 0, ptr noundef readonly %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @u_getPropertyValueName_78(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7812PropNameData20getPropertyValueNameEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @u_getPropertyValueEnum_78(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 76
  br i1 %i.b, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 4096
  br i1 %i.c, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 4123
  br i1 %i.d, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ult i32 %0, 8192
  br i1 %i.e, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %0, 8192
  br i1 %i.f, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ult i32 %0, 12288
  br i1 %i.g, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = icmp eq i32 %0, 12288
  br i1 %i.h, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ult i32 %0, 16384
  br i1 %i.i, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ult i32 %0, 16398
  br i1 %i.j, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = and i32 %0, 2147483646
  %or.cond.i.i = icmp eq i32 %i.k, 28672
  br i1 %or.cond.i.i, label %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit

_ZN6icu_7812PropNameData12findPropertyEi.exit.i:  ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.lcssa44.neg.i.i = phi i32 [ 0, %bb.b ], [ -4096, %bb.d ], [ -8192, %bb.f ], [ -12288, %bb.h ], [ -16384, %bb.j ], [ -28672, %bb.k ]
  %.lcssa42.i.i = phi i32 [ 3, %bb.b ], [ 157, %bb.d ], [ 213, %bb.f ], [ 217, %bb.h ], [ 221, %bb.j ], [ 251, %bb.k ]
  %i.l = add nsw i32 %.lcssa44.neg.i.i, %0
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = add nuw nsw i32 %i.m, %.lcssa42.i.i
  %2 = zext nneg i32 %i.n to i64
  %i.o = getelementptr [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %2
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7812PropNameData12findPropertyEi.exit.i
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = tail call noundef i32 @_ZN6icu_7812PropNameData22getPropertyOrValueEnumEiPKc(i32 noundef %i.u, ptr noundef readonly %1)
  br label %_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit

_ZN6icu_7812PropNameData20getPropertyValueEnumEiPKc.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i, %bb.l
  %.0.i = phi i32 [ %i.v, %bb.l ], [ -1, %bb.c ], [ -1, %_ZN6icu_7812PropNameData12findPropertyEi.exit.i ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.e ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @uscript_getName_78(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_7812PropNameData20getPropertyValueNameEiii(i32 noundef 4106, i32 noundef %0, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @uscript_getShortName_78(i32 noundef %0) local_unnamed_addr #2 {
.lr.ph.i.i:
  %or.cond = icmp ult i32 %0, 213
  br i1 %or.cond, label %.thread.i.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit, !llvm.loop !14

.thread.i.i:                                      ; preds = %.lr.ph.i.i
  %i.a = zext nneg i32 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812PropNameData9valueMapsE, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4032
  %i.d = load i32, ptr %i.c, align 4, !tbaa !13   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit, label %bb.a

bb.a:                                             ; preds = %.thread.i.i
  %i.f = sext i32 %i.d to i64
  %i.g = getelementptr inbounds i8, ptr @_ZN6icu_7812PropNameData10nameGroupsE, i64 %i.f ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %.not.i.i = icmp sgt i8 %i.h, 0
  br i1 %.not.i.i, label %.preheader.i9.i, label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

.preheader.i9.i:                                  ; preds = %bb.a
  %.0912.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = load i8, ptr %.0912.i.i, align 1, !tbaa !8
  %i.j = icmp eq i8 %i.i, 0
  %..09.i.i = select i1 %i.j, ptr null, ptr %.0912.i.i
  br label %_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit

_ZN6icu_7812PropNameData20getPropertyValueNameEiii.exit: ; preds = %.lr.ph.i.i, %.thread.i.i, %bb.a, %.preheader.i9.i
  %.1.i = phi ptr [ null, %bb.a ], [ %..09.i.i, %.preheader.i9.i ], [ null, %.thread.i.i ], [ null, %.lr.ph.i.i ]
  ret ptr %.1.i
}

declare signext i8 @uprv_ebcdictolower_78(i8 noundef signext) local_unnamed_addr #4

declare noundef i32 @_ZN6icu_789BytesTrie9readValueEPKhi(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = !{!5, !5, i64 0}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN6icu_789BytesTrieE", !20, i64 0, !20, i64 8, !20, i64 16, !5, i64 24}
!20 = !{!"p1 omnipotent char", !21, i64 0}
!21 = !{!"any pointer", !6, i64 0}
!22 = !{!19, !20, i64 8}
!23 = !{!19, !20, i64 16}
!24 = !{!19, !5, i64 24}
end_hunk_0
