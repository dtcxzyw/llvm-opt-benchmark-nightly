inline.NumInlined: 38
inline.NumDeleted: 5
begin_hunk_0_@_ZN3Exp8toStringEj:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #16
  %i.h = add i64 %i.g, 1
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #14 ; 2 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %i.j = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %5) #17 ; 0 uses
  br label %common.ret132

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN3Exp8toStringEj:bb.a
bb.f:                                             ; preds = %bb.d
  %i.aq = zext i32 %i.y to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @type2str, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !35
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #16
  %i.au = add i64 %i.at, 3
  %i.av = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.au) #14 ; 2 uses
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds nuw [8 x i8], ptr @type2str, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %i.aw = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %11) #17 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZN3Exp8toStringEj:bb.a
  %i.ci = load ptr, ptr %0, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !15
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @op2str, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !35 ; 2 uses
  %i.co = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #16
end_hunk_2
begin_hunk_3_@_ZN3Exp8toStringEj:bb.a
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !15
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %i.cx
  %12 = load i32, ptr %i.cy, align 4, !tbaa !4
  %13 = load ptr, ptr %0, align 8, !tbaa !14
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.cz = load i32, ptr %14, align 4, !tbaa !15
  %15 = zext i32 %i.cz to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %15
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = icmp slt i32 %12, %i.db
  %i.dd = select i1 %i.dc, ptr @.str.4, ptr @.str.3
  %i.de = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull dereferenceable(1) %i.dd, ptr noundef nonnull %i.ch, ptr noundef nonnull %i.cn) #17 ; 0 uses
  %i.df = load ptr, ptr %i.cc, align 8, !tbaa !21
end_hunk_3
begin_hunk_4_@_ZN3Exp8toStringEj:bb.a
  %i.eb = load ptr, ptr %0, align 8, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !15
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @op2str, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !35 ; 2 uses
  %i.eh = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eg) #16
end_hunk_4
begin_hunk_5_@_ZN3Exp8toStringEj:bb.a
  %i.en = load i32, ptr %i.em, align 4, !tbaa !15
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %i.eo
  %16 = load i32, ptr %i.ep, align 4, !tbaa !4
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.eq = load i32, ptr %18, align 4, !tbaa !15
  %19 = zext i32 %i.eq to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %19
  %i.es = load i32, ptr %i.er, align 4, !tbaa !4  ; 2 uses
  %i.et = icmp slt i32 %16, %i.es
  %i.eu = select i1 %i.et, ptr @.str.1, ptr @.str.6
  %i.ev = load ptr, ptr %i.dt, align 8, !tbaa !28
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !14
end_hunk_5
begin_hunk_6_@_ZN3Exp8toStringEj:bb.a
  %i.gw = load ptr, ptr %0, align 8, !tbaa !14
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !15 ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @op2str, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !35
  %i.hc = sext i32 %i.gy to i64
end_hunk_6
begin_hunk_7_@_ZN3Exp8toStringEj:bb.a
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !15
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %i.hl
  %20 = load i32, ptr %i.hm, align 4, !tbaa !4
  %21 = load ptr, ptr %0, align 8, !tbaa !14
  %22 = getelementptr inbounds nuw i8, ptr %21, i64 12
  %i.hn = load i32, ptr %22, align 4, !tbaa !15
  %23 = zext i32 %i.hn to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr @op_prec, i64 %23
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !4  ; 3 uses
  %i.hq = icmp slt i32 %20, %i.hp
  %i.hr = select i1 %i.hq, ptr @.str.1, ptr @.str.6
  %i.hs = load ptr, ptr %i.gf, align 8, !tbaa !28
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !14
end_hunk_7
