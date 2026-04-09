inline.NumInlined: 36
inline.NumDeleted: 9
begin_hunk_0_@zipmapSet:bb.a
  %i.y = select i1 %i.x, i64 1, i64 5
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !13
  %6 = add i32 %.0.i46.us.i, 1
  %7 = zext i8 %i.aa to i32
  %i.ab = add i32 %6, %7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  br label %.split.us.i, !llvm.loop !14
end_hunk_0
begin_hunk_1_@zipmapSet:bb.a
  %i.aw = select i1 %i.av, i64 1, i64 5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %8 = add i32 %.0.i46.i, 1
  %9 = zext i8 %i.ay to i32
  %i.az = add i32 %8, %9
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  br label %.split.split.i, !llvm.loop !14
end_hunk_1
begin_hunk_2_@zipmapSet:bb.a
  %i.bc = ptrtoint ptr %.033.i to i64
  %i.bd = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32                  ; 2 uses
  %i.bg = add i32 %i.bf, 1                        ; 3 uses
  %i.bh = icmp eq ptr %.035.i, null
  br i1 %i.bh, label %bb.q, label %bb.s

end_hunk_2
begin_hunk_3_@zipmapSet:bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i32
  %i.co = add i32 %i.cb, 1
  %i.cp = add i32 %i.co, %.0.i.i4.i
  %i.cq = add i32 %i.cp, %i.cn
  %i.cr = add i32 %i.cq, %i.cj                    ; 5 uses
  %i.cs = icmp ult i32 %i.cr, %.1.i
  br i1 %i.cs, label %bb.z, label %bb.aa

end_hunk_3
begin_hunk_4_@zipmapSet:bb.a
  %i.ct = ptrtoint ptr %.035.i to i64
  %i.cu = sub i64 %i.ct, %i.bd                    ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = sub i32 %i.bg, %i.cr
  %i.cx = add i32 %i.cw, %.1.i                    ; 3 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %i.cy) #13 ; 3 uses
end_hunk_4
begin_hunk_5_@zipmapSet:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.e
  %i.dg = zext i32 %i.cr to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %10 = add i32 %i.cr, %i.cv
  %i.di = sub i32 %i.bf, %10
  %i.dj = zext i32 %i.di to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.df, ptr align 1 %i.dh, i64 %i.dj, i1 false)
  br label %bb.aa

end_hunk_5
begin_hunk_6_@zipmapDel:bb.a
  %i.t = select i1 %i.s, i64 1, i64 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %4 = add i32 %.0.i46.i, 1
  %5 = zext i8 %i.v to i32
  %i.w = add i32 %4, %5
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  br label %.split.split.i, !llvm.loop !14
end_hunk_6
begin_hunk_7_@zipmapDel:bb.a
zipmapLookupRaw.exit:                             ; preds = %.split.split.i
  %i.z = ptrtoint ptr %.033.i to i64
  %i.aa = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  %6 = add i32 %i.ac, 1                           ; 2 uses
  %.not = icmp eq ptr %.035.i, null
  br i1 %.not, label %zipmapLookupRaw.exit.thread, label %bb.j

end_hunk_7
begin_hunk_8_@zipmapDel:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !13
  %i.av = zext i8 %i.au to i32
  %i.aw = add i32 %i.aj, 1
  %i.ax = add i32 %i.aw, %.0.i.i4.i
  %i.ay = add i32 %i.ax, %i.av
  %i.az = add i32 %i.ay, %i.ar                    ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.035.i, i64 %i.ba
  %7 = zext i32 %6 to i64
  %i.bc = ptrtoint ptr %.035.i to i64
  %i.bd = sub i64 %i.bc, %i.aa
  %i.be = add nsw i64 %i.bd, %i.ba
  %.neg = xor i64 %i.be, -1
  %i.bf = add i64 %.neg, %7
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.035.i, ptr nonnull align 1 %i.bb, i64 %i.bf, i1 false)
  %i.bg = sub i32 %6, %i.az                       ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = tail call ptr @zrealloc(ptr noundef %0, i64 noundef %i.bh) #13 ; 5 uses
  %i.bj = add i32 %i.bg, -1
end_hunk_8
begin_hunk_9_@zipmapNext:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add i32 %.0.i.i28, 1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = add i32 %i.ak, %i.ae
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.am
  br label %bb.o
end_hunk_9
begin_hunk_10_@zipmapGet:bb.a
  %i.s = select i1 %i.r, i64 1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %5 = add i32 %.0.i46.us66.i, 1
  %6 = zext i8 %i.u to i32
  %i.v = add i32 %5, %6
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  br label %.split.split.us.i, !llvm.loop !14
end_hunk_10
begin_hunk_11_@zipmapExists:bb.a
  %i.s = select i1 %i.r, i64 1, i64 5
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.s ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %3 = add i32 %.0.i46.us66.i, 1
  %4 = zext i8 %i.u to i32
  %i.v = add i32 %3, %4
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  br label %.split.split.us.i, !llvm.loop !14
end_hunk_11
begin_hunk_12_@zipmapLen:bb.a

zipmapNext.exit:                                  ; preds = %bb.h, %bb.g
  %.0.i.i28.i = phi i32 [ %i.o, %bb.g ], [ %.0.copyload.i.i27.i, %bb.h ] ; 2 uses
  %1 = add i32 %.0.i.i28.i, 1
  %i.q = icmp ult i32 %.0.i.i28.i, 254
  %i.r = select i1 %i.q, i32 1, i32 5             ; 2 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %1, %i.v
  %i.x = add i32 %i.w, %i.r
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = add i32 %.08, 1
end_hunk_12
begin_hunk_13_@zipmapBlobLen:bb.a
  %i.o = select i1 %i.n, i64 1, i64 5
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %1 = add i32 %.0.i46.us.i, 1
  %2 = zext i8 %i.q to i32
  %i.r = add i32 %1, %2
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  br label %.split.us.i, !llvm.loop !14
end_hunk_13
begin_hunk_14_@zipmapValidateIntegrity:bb.a

zipmapDecodeLength.exit78:                        ; preds = %bb.j, %bb.k
  %.0.i77 = phi i32 [ %i.o, %bb.j ], [ %.0.copyload.i76, %bb.k ]
  %.add64 = add nuw nsw i64 %.add63, 1
  %i.q = load i8, ptr %.ptr67, align 1, !tbaa !13
  %i.r = zext i8 %i.q to i32
  %i.s = add i32 %.0.i77, %i.r
  %i.t = zext i32 %i.s to i64
  %.add65 = add nuw nsw i64 %.add64, %i.t         ; 2 uses
  %.ptr69 = getelementptr inbounds nuw i8, ptr %0, i64 %.add65
  %i.u = add i32 %.049, 1
  %i.v = icmp ugt ptr %.ptr69, %i.c
end_hunk_14
