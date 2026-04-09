inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0_@unaspack212:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 10 uses
  store i32 65536, ptr %i.ab, align 4, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 788 ; 3 uses
  %i.ad = add i32 %4, 1806                        ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@unaspack212:bb.a
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  store i32 %.0139200, ptr %i.ae, align 4, !tbaa !4
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = add i32 %i.ad, %i.af
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
end_hunk_1
begin_hunk_2_@unaspack212:bb.a
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv.next
  store i32 %i.am, ptr %i.an, align 8, !tbaa !4
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ap = add i32 %i.ad, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !18
end_hunk_2
begin_hunk_3_@unaspack212:bb.a
.loopexit123.i.i:                                 ; preds = %bb.ab, %..loopexit123_crit_edge.i.i
  %i.fo = phi i32 [ %.pr.i99.i.i, %..loopexit123_crit_edge.i.i ], [ %i.fm, %bb.ab ] ; 2 uses
  %i.fp = phi i32 [ %.pre136.i.i, %..loopexit123_crit_edge.i.i ], [ %i.fk, %bb.ab ]
  %8 = add nsw i32 %i.ee, -3
  %i.fq = sub nuw nsw i32 8, %i.fo
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = and i32 %i.fr, 16777215
  %i.ft = sub nsw i32 27, %i.ee
  %i.fu = lshr i32 %i.fs, %i.ft
  %i.fv = shl nuw nsw i32 %i.fu, 3
  %i.fw = add nsw i32 %8, %i.fo
  store i32 %i.fw, ptr %7, align 8, !tbaa !23
  %i.fx = call fastcc i32 @getdec(ptr noundef nonnull %7, i8 noundef zeroext 2, ptr noundef %i.b)
  %i.fy = add i32 %i.fx, %i.ea
end_hunk_3
begin_hunk_4_@build_decrypt_dictionaries:bb.a

.loopexit110.loopexit134:                         ; preds = %pred.store.if221, %pred.store.continue220
  %i.fj = trunc nuw nsw i64 %umin to i32
  %i.fk = add nuw nsw i32 %i.fj, 1
  %i.fl = add nuw nsw i32 %i.fk, %.155132
  br label %.loopexit110

.loopexit110:                                     ; preds = %.loopexit110.loopexit134, %.loopexit110.loopexit, %bb.s
end_hunk_4
