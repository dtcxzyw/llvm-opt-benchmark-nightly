Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/source-position-table?download=true
inline.NumInlined: 189
inline.NumDeleted: 148
begin_hunk_0_@_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb:bb.a
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ %i.af, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i ] ; 3 uses
  %i.q = icmp ugt i32 %.0.i.i, 127                ; 2 uses
  %i.r = select i1 %i.q, i8 -128, i8 0
  %i.s = trunc i32 %.0.i.i to i8
  %i.t = and i8 %i.s, 127
  %i.u = or disjoint i8 %i.r, %i.t
  %i.v = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.v, %i.w
  br i1 %i.x, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = add i64 %i.z, 1
  %i.ac = sub i64 %i.ab, %i.aa
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.ac)
  %.pre.i.i.i = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ad = phi ptr [ %i.v, %bb.c ], [ %.pre.i.i.i, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.n, align 8
  store i8 %i.u, ptr %i.ad, align 1
  %i.af = lshr i32 %.0.i.i, 7
  br i1 %i.q, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_110EncodeUIntIjEEvPNS0_10ZoneVectorIhEET_.exit.i, !llvm.loop !9

_ZN2v88internal12_GLOBAL__N_110EncodeUIntIjEEvPNS0_10ZoneVectorIhEET_.exit.i: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i
  %i.ag = sub nsw i64 %2, %i.g                    ; 2 uses
  %i.ah = shl i64 %i.ag, 1
  %i.ai = ashr i64 %i.ag, 63
  %i.aj = xor i64 %i.ah, %i.ai
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i, %_ZN2v88internal12_GLOBAL__N_110EncodeUIntIjEEvPNS0_10ZoneVectorIhEET_.exit.i
  %.0.i.i.i = phi i64 [ %i.aj, %_ZN2v88internal12_GLOBAL__N_110EncodeUIntIjEEvPNS0_10ZoneVectorIhEET_.exit.i ], [ %i.az, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i ] ; 3 uses
  %i.ak = icmp ugt i64 %.0.i.i.i, 127             ; 2 uses
  %i.al = select i1 %i.ak, i8 -128, i8 0
  %i.am = trunc i64 %.0.i.i.i to i8
  %i.an = and i8 %i.am, 127
  %i.ao = or disjoint i8 %i.al, %i.an
  %i.ap = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.aq = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ar = icmp ult ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.p, align 8
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = add i64 %i.at, 1
  %i.aw = sub i64 %i.av, %i.au
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.aw)
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.ax = phi ptr [ %i.ap, %bb.e ], [ %.pre.i.i.i.i, %bb.f ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  store ptr %i.ay, ptr %i.n, align 8
  store i8 %i.ao, ptr %i.ax, align 1
  %i.az = lshr i64 %.0.i.i.i, 7
  br i1 %i.ak, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_111EncodeEntryEPNS0_10ZoneVectorIhEERKNS0_18PositionTableEntryE.exit, !llvm.loop !10

_ZN2v88internal12_GLOBAL__N_111EncodeEntryEPNS0_10ZoneVectorIhEERKNS0_18PositionTableEntryE.exit: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit.i.i.i
  %i.ba = zext i1 %3 to i8
  %i.bb = zext i1 %4 to i8
  store i64 %2, ptr %i.c, align 8
  store i32 %i.b, ptr %i.d, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 %i.ba, ptr %.sroa.6.0..sroa_idx7, align 4
  %.sroa.7.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 53
  store i8 %i.bb, ptr %.sroa.7.0..sroa_idx9, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN2v88internal12_GLOBAL__N_111EncodeEntryEPNS0_10ZoneVectorIhEERKNS0_18PositionTableEntryE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal26SourcePositionTableBuilder27ToSourcePositionTableVectorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.v8::base::OwnedVector") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN2v84base11OwnedCopyOfINS_8internal10ZoneVectorIhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_.exit

_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #11, !noalias !25 ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %0, align 8, !alias.scope !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.k, align 8, !alias.scope !26
  %i.l = icmp sgt i64 %i.h, 1
  br i1 %i.l, label %bb.c, label %bb.d, !prof !27

bb.c:                                             ; preds = %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.d, i64 %i.h, i1 false), !noalias !28
  br label %_ZN2v84base11OwnedCopyOfINS_8internal10ZoneVectorIhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_.exit

bb.d:                                             ; preds = %_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm.exit.i.i.i
  %i.m = icmp eq i64 %i.h, 1
  br i1 %i.m, label %bb.e, label %_ZN2v84base11OwnedCopyOfINS_8internal10ZoneVectorIhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_.exit

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.d, align 1, !noalias !28
  store i8 %i.n, ptr %i.i, align 1, !noalias !28
  br label %_ZN2v84base11OwnedCopyOfINS_8internal10ZoneVectorIhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_.exit

_ZN2v84base11OwnedCopyOfINS_8internal10ZoneVectorIhEEEEDTcl11OwnedCopyOfclsr3stdE4datafp_Eclsr3stdE4sizefp_EEERKT_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27SourcePositionTableIterator10InitializeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load ptr, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = ashr i64 %i.i, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.05.0 = phi ptr [ %.sroa.05.0.copyload, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.sroa.56.0 = phi i64 [ %.sroa.56.0.copyload, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted = load i32, ptr %i.k, align 8        ; 2 uses
  %i.l = icmp eq i32 %.promoted, -1
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = icmp ult i64 %.sroa.56.0, 2147483648
  %i.n = trunc nuw nsw i64 %.sroa.56.0 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %i.m, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.e, !prof !5

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %.lr.ph, %.thread
  %i.t = phi i32 [ %i.ae, %.thread ], [ %.promoted, %.lr.ph ] ; 2 uses
  %.not = icmp slt i32 %i.t, %i.n
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #12
  unreachable

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  store i32 -1, ptr %i.k, align 8
  br label %._crit_edge

bb.g:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.u = sext i32 %i.t to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ %i.u, %bb.g ] ; 2 uses
  %.07.i.i = phi i32 [ %i.ad, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ab, %bb.h ], [ 0, %bb.g ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.v = trunc nsw i64 %indvars.iv.next.i.i to i32
  store i32 %i.v, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %indvars.iv.i.i
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = and i8 %i.x, 127
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.07.i.i
  %i.ab = or i32 %i.aa, %.0.i.i                   ; 3 uses
  %i.ac = icmp slt i8 %i.x, 0
  %i.ad = add nuw nsw i32 %.07.i.i, 7
  br i1 %i.ac, label %bb.h, label %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i, !llvm.loop !29

_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i: ; preds = %bb.h, %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i
  %indvars.iv8.i.i.i = phi i64 [ %indvars.iv.next9.i.i.i, %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %.0.i.i.i = phi i64 [ %i.ak, %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i ], [ 0, %bb.h ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ae = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  store i32 %i.ae, ptr %i.k, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.05.0, i64 %indvars.iv.i.i.i
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = and i8 %i.ag, 127
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl i64 %i.ai, %indvars.iv8.i.i.i
  %i.ak = or i64 %i.aj, %.0.i.i.i                 ; 3 uses
  %i.al = icmp slt i8 %i.ag, 0
  %indvars.iv.next9.i.i.i = add nuw nsw i64 %indvars.iv8.i.i.i, 7
  br i1 %i.al, label %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i, label %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit, !llvm.loop !30

_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_110DecodeUIntIiEET_NS_4base6VectorIKhEEPi.exit.i
  %i.am = ashr i32 %i.ab, 2
  %i.an = trunc i32 %i.ab to i8                   ; 2 uses
  %i.ao = lshr i8 %i.an, 1
  %i.ap = and i8 %i.ao, 1
  %i.aq = and i8 %i.an, 1
  %i.ar = lshr i64 %i.ak, 1
  %i.as = and i64 %i.ak, 1
  %i.at = sub nsw i64 0, %i.as
  %i.au = xor i64 %i.ar, %i.at
  %1 = load i32, ptr %i.p, align 8
  %i.av = add nsw i32 %1, %i.am
  store i32 %i.av, ptr %i.p, align 8
  %2 = load i64, ptr %i.o, align 8
  %i.aw = add nsw i64 %2, %i.au                   ; 3 uses
  store i64 %i.aw, ptr %i.o, align 8
  store i8 %i.aq, ptr %i.q, align 4
  store i8 %i.ap, ptr %i.r, align 1
  %3 = load i32, ptr %i.s, align 8
  switch i32 %3, label %.thread [
    i32 2, label %._crit_edge
    i32 0, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit
  %i.ax = trunc i64 %i.aw to i1
  %i.ay = xor i1 %i.ax, true
  br label %.thread

bb.j:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit
  %i.az = trunc i64 %i.aw to i1
  br label %.thread

.thread:                                          ; preds = %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit, %bb.i, %bb.j
  %.1 = phi i1 [ %i.ay, %bb.i ], [ %i.az, %bb.j ], [ false, %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit ]
  %i.ba = icmp eq i64 %indvars.iv.next.i.i.i, -1
  %i.bb = select i1 %i.ba, i1 true, i1 %.1
  br i1 %i.bb, label %._crit_edge, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, !llvm.loop !31

._crit_edge:                                      ; preds = %_ZN2v88internal12_GLOBAL__N_111DecodeEntryENS_4base6VectorIKhEEPiPNS0_18PositionTableEntryE.exit, %.thread, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27SourcePositionTableIteratorC2ENS0_6TaggedINS0_16TrustedByteArrayEEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 28), (32, 46), (48, 56)) %0, i64 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = ashr i64 %i.e, 32
  store ptr %i.c, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 -1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 1, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %3, ptr %i.o, align 4
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr %i.k, align 8
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %bb.c, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr %i.i, align 8
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27SourcePositionTableIteratorC2ENS0_6HandleINS0_16TrustedByteArrayEEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 28), (32, 46), (48, 56)) %0, ptr %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %3, ptr %i.h, align 4
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 8
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.b, align 8
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal27SourcePositionTableIteratorC2ENS_4base6VectorIKhEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 28), (32, 46), (48, 56)) %0, ptr %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 -1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %4, ptr %i.h, align 4
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 8
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.b, align 8
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  br label %_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit

_ZN2v88internal27SourcePositionTableIterator10InitializeEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = shl i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq i64 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.o, 7
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
end_hunk_0
