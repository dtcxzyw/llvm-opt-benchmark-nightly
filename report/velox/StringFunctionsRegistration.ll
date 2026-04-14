inline.NumInlined: 89609
inline.NumDeleted: 14427
begin_hunk_0_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a

.split.us:                                        ; preds = %bb.b, %bb.e
  %.065.us = phi i64 [ %i.i, %bb.e ], [ 0, %bb.b ] ; 4 uses
  %.062.us = phi i64 [ %i.q, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %.not81.us = icmp slt i64 %.065.us, %1
  br i1 %.not81.us, label %bb.c, label %.split7.us

end_hunk_0
begin_hunk_1_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062.us
  %i.m = select i1 %.not82, ptr null, ptr %i.l
  %5 = icmp sgt i64 %3, %.062.us
  %i.n = sub nsw i64 %3, %.062.us
  %6 = select i1 %5, i64 %i.n, i64 0
  %i.o = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.j, ptr noundef %i.m, i64 noundef %6, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.e

end_hunk_1
begin_hunk_2_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a

.split.split.us:                                  ; preds = %.split, %bb.i
  %.065.us10 = phi i64 [ %i.u, %bb.i ], [ 0, %.split ] ; 2 uses
  %.062.us11 = phi i64 [ %i.ac, %bb.i ], [ 0, %.split ] ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 %.065.us10
  %i.t = call fastcc noundef i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef %i.s, i64 noundef -1, ptr noundef %i.a)
  %i.u = add nsw i64 %i.t, %.065.us10             ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a
  br i1 %i.y, label %.split7.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %7 = icmp sgt i64 %3, %.062.us11
  %i.z = sub nsw i64 %3, %.062.us11
  %8 = select i1 %7, i64 %i.z, i64 0
  %i.aa = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.v, ptr noundef null, i64 noundef %8, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.thread, label %bb.i

end_hunk_3
begin_hunk_4_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a

.split.split:                                     ; preds = %.split, %bb.m
  %.065 = phi i64 [ %i.ag, %bb.m ], [ 0, %.split ] ; 2 uses
  %.062 = phi i64 [ %i.ap, %bb.m ], [ 0, %.split ] ; 5 uses
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %.065
  %i.af = call fastcc noundef i64 @_ZL16utf8proc_iteratePKhlPi(ptr noundef %i.ae, i64 noundef -1, ptr noundef %i.a)
  %i.ag = add nsw i64 %i.af, %.065                ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL25utf8proc_decompose_customPKhlPilsPFiiPvES2_:bb.a

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.062
  %9 = icmp sgt i64 %3, %.062
  %i.am = sub nsw i64 %3, %.062
  %10 = select i1 %9, i64 %i.am, i64 0
  %i.an = call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %i.ah, ptr noundef nonnull %i.al, i64 noundef %10, i16 noundef signext %4, ptr noundef %i.b) ; 3 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %.thread, label %bb.m

end_hunk_5
begin_hunk_6_@_ZL30seqindex_write_char_decomposedtPilsS_:bb.a

.split.us:                                        ; preds = %bb.c, %bb.e
  %.12229.us = phi i32 [ %i.aa, %bb.e ], [ %.021, %bb.c ] ; 2 uses
  %.02328.us = phi i64 [ %i.x, %bb.e ], [ 0, %bb.c ] ; 3 uses
  %.127.us = phi ptr [ %i.z, %bb.e ], [ %.0, %bb.c ] ; 3 uses
  %i.j = load i16, ptr %.127.us, align 2, !tbaa !2493
  %i.k = zext i16 %i.j to i32                     ; 3 uses
end_hunk_6
begin_hunk_7_@_ZL30seqindex_write_char_decomposedtPilsS_:bb.a
_ZL21seqindex_decode_entryPPKt.exit.us:           ; preds = %bb.d, %.split.us
  %.226.us = phi ptr [ %i.n, %bb.d ], [ %.127.us, %.split.us ]
  %.0.i.us = phi i32 [ %i.u, %bb.d ], [ %i.k, %.split.us ]
  %5 = icmp sgt i64 %2, %.02328.us
  %i.v = sub nsw i64 %2, %.02328.us
  %6 = select i1 %5, i64 %i.v, i64 0
  %i.w = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i.us, ptr noundef null, i64 noundef %6, i16 noundef signext %3, ptr noundef %4)
  %i.x = add nsw i64 %i.w, %.02328.us             ; 3 uses
  %i.y = icmp sgt i64 %i.x, -1
  br i1 %i.y, label %bb.e, label %.split31.us
end_hunk_7
begin_hunk_8_@_ZL30seqindex_write_char_decomposedtPilsS_:bb.a

.split:                                           ; preds = %bb.c, %bb.g
  %.12229 = phi i32 [ %i.au, %bb.g ], [ %.021, %bb.c ] ; 2 uses
  %.02328 = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.c ] ; 4 uses
  %.127 = phi ptr [ %i.at, %bb.g ], [ %.0, %bb.c ] ; 3 uses
  %i.ac = load i16, ptr %.127, align 2, !tbaa !2493
  %i.ad = zext i16 %i.ac to i32                   ; 3 uses
end_hunk_8
begin_hunk_9_@_ZL30seqindex_write_char_decomposedtPilsS_:bb.a
  %.226 = phi ptr [ %i.ag, %bb.f ], [ %.127, %.split ]
  %.0.i = phi i32 [ %i.an, %bb.f ], [ %i.ad, %.split ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02328
  %7 = icmp sgt i64 %2, %.02328
  %i.ap = sub nsw i64 %2, %.02328
  %8 = select i1 %7, i64 %i.ap, i64 0
  %i.aq = tail call fastcc noundef i64 @_ZL23utf8proc_decompose_chariPilsS_(i32 noundef %.0.i, ptr noundef nonnull %i.ao, i64 noundef %8, i16 noundef signext %3, ptr noundef %4)
  %i.ar = add nsw i64 %i.aq, %.02328              ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  br i1 %i.as, label %bb.g, label %.split31.us
end_hunk_9
begin_hunk_10_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #48

end_hunk_10
begin_hunk_11_@llvm.smax.i64
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_11
