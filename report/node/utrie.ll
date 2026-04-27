inline.NumInlined: 27
inline.NumDeleted: 9
begin_hunk_0_@utrie_serialize_78:bb.a
bb.be:                                            ; preds = %bb.bc, %bb.bd
  %i.ia = phi i32 [ %i.hz, %bb.bd ], [ %i.hw, %bb.bc ]
  %i.ib = icmp sgt i32 %i.ia, 262143
  br i1 %i.ib, label %bb.bf, label %6

bb.bf:                                            ; preds = %bb.be
  store i32 8, ptr %5, align 4
  br label %6

6:                                                ; preds = %bb.bf, %bb.be
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 139404 ; 6 uses
  %8 = load i32, ptr %7, align 4                  ; 2 uses
  br i1 %.not87, label %bb.bg, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %8
  %13 = shl i32 %12, 1
  %14 = add i32 %13, 16
  br label %15

bb.bg:                                            ; preds = %6
  %i.ic = shl nsw i32 %8, 1
  %i.id = add i32 %i.ic, 16
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.if = load i32, ptr %i.ie, align 4
  %i.ig = shl nsw i32 %i.if, 2
  %i.ih = add nsw i32 %i.id, %i.ig
  br label %15

15:                                               ; preds = %bb.bg, %9
  %.0 = phi i32 [ %14, %9 ], [ %i.ih, %bb.bg ]    ; 6 uses
  %16 = icmp sgt i32 %.0, %2
  br i1 %16, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %15
  %i.ii = getelementptr i8, ptr %1, i64 16        ; 13 uses
  store i32 1416784229, ptr %1, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
end_hunk_0
begin_hunk_1_@utrie_serialize_78:bb.a
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.in = load i32, ptr %7, align 4
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.in, ptr %i.io, align 4
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 139412 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4            ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.iq, ptr %i.ir, align 4
  %i.is = load i32, ptr %7, align 4               ; 13 uses
  %i.it = icmp sgt i32 %i.is, 0                   ; 2 uses
  br i1 %.not87, label %bb.bl, label %bb.bk

end_hunk_1
begin_hunk_2_@utrie_serialize_78:bb.a
  %i.ja = getelementptr i8, ptr %0, i64 %i.iz
  %scevgep129 = getelementptr i8, ptr %i.ja, i64 4
  %bound0 = icmp ult ptr %i.ii, %scevgep128
  %bound1 = icmp ult ptr %7, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0130 = icmp ult ptr %i.ii, %scevgep129
  %bound1131 = icmp ult ptr %0, %scevgep
end_hunk_2
begin_hunk_3_@utrie_serialize_78:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iu, 2147483640              ; 5 uses
  %i.jb = load i32, ptr %7, align 4, !alias.scope !23
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jb, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
end_hunk_3
begin_hunk_4_@utrie_serialize_78:bb.a
  %.07891 = phi ptr [ %i.jq, %.lr.ph ], [ %.07891.ph, %.lr.ph.preheader193 ] ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.07891, i64 4
  %i.jr = load i32, ptr %.07891, align 4
  %i.js = load i32, ptr %7, align 4
  %i.jt = add i32 %i.js, %i.jr
  %i.ju = lshr i32 %i.jt, 2
  %i.jv = trunc i32 %i.ju to i16
end_hunk_4
begin_hunk_5_@utrie_serialize_78:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.277.lcssa, ptr align 4 %i.mc, i64 %i.me, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph98, %middle.block159, %._crit_edge, %._crit_edge104, %15, %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit, %bb.a, %bb.b, %bb.e
  %.081 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit ], [ %.0, %15 ], [ 0, %bb.b ], [ %.0, %._crit_edge104 ], [ %.0, %._crit_edge ], [ %.0, %middle.block159 ], [ %.0, %.lr.ph98 ]
  ret i32 %.081
}

end_hunk_5
