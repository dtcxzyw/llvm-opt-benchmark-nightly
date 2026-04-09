inline.NumInlined: 99
inline.NumDeleted: 11
begin_hunk_0_@kvobjCreate:bb.a

sdsReqSize.exit:                                  ; preds = %sdslen.exit.thread, %switch.lookup
  %.0.i.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %sdslen.exit.thread ]
  %i.z = add i64 %.0.i37, %.0.i.i
  %i.aa = add i64 %i.z, 1                         ; 2 uses
  %i.ab = zext nneg i16 %i.u to i64               ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = add i64 %i.ac, 17
  %i.ae = tail call noalias ptr @zmalloc(i64 noundef %i.ad) #16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab ; 9 uses
  %i.ag = and i32 %0, 15
end_hunk_0
begin_hunk_1_@kvobjSet:bb.a

sdslen.exit47:                                    ; preds = %sdslen.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i46 = phi i64 [ %i.ai, %bb.l ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ 0, %sdslen.exit ]
  %i.aj = add i64 %.0.i, %.0.i46
  %i.ak = add i64 %i.aj, 23
  %i.al = icmp ult i64 %i.ak, 65
  br i1 %i.al, label %bb.m, label %bb.v

end_hunk_1
begin_hunk_2_@kvobjSet:bb.a

sdsReqSize.exit.i:                                ; preds = %sdslen.exit.i, %switch.lookup
  %.0.i.i.i = phi i64 [ %switch.load, %switch.lookup ], [ 0, %sdslen.exit.i ]
  %i.bg = add i64 %.0.i.i.i, %.0.i.i              ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = zext nneg i16 %i.ao to i64              ; 3 uses
  %i.bj = add i64 %.0.i, %i.bi
  %i.bk = add i64 %i.bj, %i.bh
  %i.bl = add i64 %i.bk, 21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !18
  %i.bm = call ptr @zmalloc_usable(i64 noundef %i.bl, ptr noundef nonnull %i.a) #14
end_hunk_2
begin_hunk_3_@kvobjSet:bb.a
  %i.bv = call ptr @sdsnewplacement(ptr noundef nonnull %i.bu, i64 noundef %i.bh, i8 noundef signext %i.bc, ptr noundef nonnull %0, i64 noundef %.0.i.i) #14 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bh
  %i.bx = load i64, ptr %i.a, align 8, !tbaa !18
  %.neg41.i = xor i64 %i.bg, -1
  %reass.sub = sub i64 %.neg41.i, %i.bi
  %3 = add i64 %reass.sub, %i.bx
  %i.by = add i64 %3, -17
  %i.bz = call ptr @sdsnewplacement(ptr noundef nonnull %i.bw, i64 noundef %i.by, i8 noundef signext 1, ptr noundef nonnull %i.e, i64 noundef %.0.i) #14
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !20
end_hunk_3
