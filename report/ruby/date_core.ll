inline.NumInlined: 1371
inline.NumDeleted: 154
begin_hunk_0_@date_s_valid_civil_p:bb.a
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !6  ; 2 uses
  %i.bv = icmp slt i32 %i.ah, 0
  %i.bw = add nsw i32 %i.ah, 1
  %i.bx = add i32 %i.bw, %i.bu
  %.018.i.i.i = select i1 %i.bv, i32 %i.bx, i32 %i.ah ; 2 uses
  %i.by = icmp slt i32 %.018.i.i.i, 1
  %i.bz = icmp sgt i32 %.018.i.i.i, %i.bu
end_hunk_0
begin_hunk_1_@date_initialize:bb.a
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !6  ; 2 uses
  %i.dk = icmp slt i32 %.239, 0
  %i.dl = add nsw i32 %.239, 1
  %i.dm = add i32 %i.dl, %i.dj
  %.018.i.i = select i1 %i.dk, i32 %i.dm, i32 %.239 ; 3 uses
  %i.dn = icmp slt i32 %.018.i.i, 1
  %i.do = icmp sgt i32 %.018.i.i, %i.dj
end_hunk_1
begin_hunk_2_@datetime_s_civil:bb.a
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !6  ; 2 uses
  %i.hx = icmp slt i32 %.282.i, 0
  %i.hy = add nsw i32 %.282.i, 1
  %i.hz = add i32 %i.hy, %i.hw
  %.018.i.i.i = select i1 %i.hx, i32 %i.hz, i32 %.282.i ; 3 uses
  %i.ia = icmp slt i32 %.018.i.i.i, 1
  %i.ib = icmp sgt i32 %.018.i.i.i, %i.hw
end_hunk_2
begin_hunk_3_@c_valid_ordinal_p:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.au = load i32, ptr %i.j, align 4, !tbaa !6
  %5 = add i32 %i.u, 2
  %6 = sub i32 %5, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  %.not21 = icmp eq i32 %0, %i.ar
end_hunk_3
begin_hunk_4_@c_valid_ordinal_p:bb.a
c_ordinal_to_jd.exit:                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %7 = add nsw i32 %.118, -1
  %8 = load i32, ptr %3, align 4, !tbaa !6
  %i.ax = add nsw i32 %7, %8                      ; 2 uses
  store i32 %i.ax, ptr %3, align 4, !tbaa !6
  %i.ay = sitofp i32 %i.ax to double
  %i.az = fcmp ule double %2, %i.ay
end_hunk_4
begin_hunk_5_@c_valid_ordinal_p:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !6
  %9 = add i32 %i.bb, 1
  %10 = sub i32 %9, %i.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.not22 = icmp eq i32 %0, %i.bx
end_hunk_5
begin_hunk_6_@valid_civil_p:bb.a
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !6  ; 2 uses
  %i.bl = icmp slt i32 %2, 0
  %i.bm = add nsw i32 %2, 1
  %i.bn = add i32 %i.bm, %i.bk
  %.018.i = select i1 %i.bl, i32 %i.bn, i32 %2    ; 3 uses
  %i.bo = icmp slt i32 %.018.i, 1
  %i.bp = icmp sgt i32 %.018.i, %i.bk
end_hunk_6
begin_hunk_7_@valid_civil_p:bb.a
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !6  ; 2 uses
  %i.cb = icmp slt i32 %2, 0
  %i.cc = add nsw i32 %2, 1
  %i.cd = add i32 %i.cc, %i.ca
  %.018.i53 = select i1 %i.cb, i32 %i.cd, i32 %2  ; 3 uses
  %i.ce = icmp slt i32 %.018.i53, 1
  %i.cf = icmp sgt i32 %.018.i53, %i.ca
end_hunk_7
begin_hunk_8_@c_valid_commercial_p:bb.a
c_find_fdoy.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.r = load i32, ptr %i.g, align 4, !tbaa !6    ; 3 uses
  %8 = add nsw i32 %i.r, 3                        ; 2 uses
  %i.s = icmp slt i32 %i.r, -3
  br i1 %i.s, label %bb.d, label %bb.e

end_hunk_8
begin_hunk_9_@c_valid_commercial_p:bb.a
  br label %c_commercial_to_jd.exit

bb.e:                                             ; preds = %c_find_fdoy.exit.i
  %i.w = urem i32 %8, 7
  br label %c_commercial_to_jd.exit

end_hunk_9
begin_hunk_10_@c_valid_commercial_p:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.y = mul nsw i32 %1, 7
  %i.z = add i32 %8, %i.y
  %i.aa = sub i32 %i.z, %i.x
  call fastcc void @c_jd_to_commercial(i32 noundef %i.aa, double noundef %3, ptr noundef %i.i, ptr noundef %i.j, ptr noundef %i.k)
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !6
  %.not = icmp eq i32 %i.ab, %0
  %i.ac = load i32, ptr %i.j, align 4
end_hunk_10
begin_hunk_11_@c_valid_commercial_p:bb.a
c_commercial_to_jd.exit41:                        ; preds = %bb.h, %bb.i
  %i.am = phi i32 [ %i.ak, %bb.h ], [ %i.al, %bb.i ]
  %i.an = mul i32 %.126, 7
  %i.ao = add nsw i32 %spec.select, -8
  %i.ap = add i32 %i.ao, %i.an
  %9 = add i32 %i.ap, %i.ag
  %10 = sub i32 %9, %i.am                         ; 2 uses
  store i32 %10, ptr %6, align 4, !tbaa !6
  %i.aq = sitofp i32 %10 to double
  %i.ar = fcmp ule double %3, %i.aq
  %i.as = zext i1 %i.ar to i32
  store i32 %i.as, ptr %7, align 4, !tbaa !6
end_hunk_11
begin_hunk_12_@c_jd_to_commercial:bb.a
c_find_fdoy.exit.i:                               ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !6   ; 3 uses
  %5 = add nsw i32 %i.ai, 3                       ; 2 uses
  %i.aj = icmp slt i32 %i.ai, -3
  br i1 %i.aj, label %bb.d, label %bb.e

end_hunk_12
begin_hunk_13_@c_jd_to_commercial:bb.a
  br label %c_commercial_to_jd.exit

bb.e:                                             ; preds = %c_find_fdoy.exit.i
  %i.an = urem i32 %5, 7
  br label %c_commercial_to_jd.exit

c_commercial_to_jd.exit:                          ; preds = %bb.d, %bb.e
  %i.ao = phi i32 [ %i.am, %bb.d ], [ %i.an, %bb.e ]
  %i.ap = sub i32 %5, %i.ao                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %.not = icmp slt i32 %0, %i.ap
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %c_commercial_to_jd.exit
end_hunk_13
begin_hunk_14_@c_jd_to_commercial:bb.a
c_find_fdoy.exit.i27:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.as = load i32, ptr %i.c, align 4, !tbaa !6   ; 3 uses
  %6 = add nsw i32 %i.as, 3                       ; 2 uses
  %i.at = icmp slt i32 %i.as, -3
  br i1 %i.at, label %bb.h, label %bb.i

end_hunk_14
begin_hunk_15_@c_jd_to_commercial:bb.a
  br label %c_commercial_to_jd.exit28

bb.i:                                             ; preds = %c_find_fdoy.exit.i27
  %i.ax = urem i32 %6, 7
  br label %c_commercial_to_jd.exit28

c_commercial_to_jd.exit28:                        ; preds = %bb.h, %bb.i
  %i.ay = phi i32 [ %i.aw, %bb.h ], [ %i.ax, %bb.i ]
  %i.az = sub i32 %6, %i.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.j

bb.j:                                             ; preds = %c_commercial_to_jd.exit, %c_commercial_to_jd.exit28
  %.0 = phi i32 [ %i.az, %c_commercial_to_jd.exit28 ], [ %i.ap, %c_commercial_to_jd.exit ]
  %storemerge = phi i32 [ %i.ae, %c_commercial_to_jd.exit28 ], [ %i.af, %c_commercial_to_jd.exit ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !6
  %i.ba = sub nsw i32 %0, %.0                     ; 3 uses
end_hunk_15
begin_hunk_16_@c_valid_weeknum_p:bb.a
c_weeknum_to_jd.exit46:                           ; preds = %bb.h, %bb.i
  %i.as = phi i32 [ %i.ap, %bb.h ], [ %i.ar, %bb.i ]
  %i.at = mul nsw i32 %.131, 7
  %i.au = add nsw i32 %spec.select, -7
  %i.av = add i32 %i.au, %i.at
  %9 = add i32 %i.av, %i.ak
  %10 = sub i32 %9, %i.as                         ; 2 uses
  store i32 %10, ptr %7, align 4, !tbaa !6
  %i.aw = sitofp i32 %10 to double
  %i.ax = fcmp ule double %4, %i.aw
end_hunk_16
begin_hunk_17_@m_yday:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.da = load i32, ptr %i.c, align 4, !tbaa !6
  %1 = add i32 %.0.i, 1
  %2 = sub i32 %1, %i.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.ad
end_hunk_17
