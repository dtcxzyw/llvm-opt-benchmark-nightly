inline.NumInlined: 107
inline.NumDeleted: 56
begin_hunk_0_@je_base_new:bb.a
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr i8, ptr %i.d, i64 32       ; 2 uses
  %.val.i = load i64, ptr %i.o, align 8, !tbaa !19
  %5 = sub i64 %.val.i, %i.k
  %6 = add i64 %5, -3968
  %i.p = load i64, ptr %i.f, align 8, !tbaa !20
  store ptr %i.n, ptr %i.g, align 8, !tbaa !16
  store i64 %6, ptr %i.o, align 8, !tbaa !19
  %i.q = and i64 %i.p, -268435456
  %i.r = or disjoint i64 %i.q, 246460415
  store i64 %i.r, ptr %i.f, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@base_block_alloc:bb.a
  %i.b = alloca i8, align 1                       ; 8 uses
  %i.c = add nuw i64 %6, 7
  %i.d = and i64 %i.c, -8                         ; 2 uses
  %i.e = add i64 %5, %i.d
  %i.f = add i64 %i.e, -1
  %i.g = sub i64 0, %i.d                          ; 2 uses
  %i.h = and i64 %i.f, %i.g
  %i.i = add i64 %6, 143
end_hunk_1
begin_hunk_2_@base_block_alloc:bb.a
  %i.cy = load i64, ptr %.03.i, align 8, !tbaa !21
  %i.cz = getelementptr i8, ptr %.03.i, i64 32
  %.val19.i = load i64, ptr %i.cz, align 8, !tbaa !19
  %7 = sub i64 %i.cy, %.val19.i
  %8 = add i64 %7, 2097151
  %i.da = lshr i64 %8, 21
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !36
  %i.dc = add i64 %i.da, %i.db
end_hunk_2
begin_hunk_3_@base_extent_bump_alloc_post:bb.a
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = add i64 %i.ae, 2097151
  %i.av = and i64 %i.au, -2097152
  %i.aw = sub i64 %i.ab, %i.av
  %5 = add i64 %i.aw, 2097151
  %i.ax = lshr i64 %5, 21
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3952 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36
  %i.ba = add i64 %i.az, %i.ax
end_hunk_3
begin_hunk_4_@base_alloc_impl
define internal fastcc noundef ptr @base_alloc_impl(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly captures(address_is_null) %4) unnamed_addr #1 {
bb.a:
  %i.a = add i64 %3, 7
  %i.b = and i64 %i.a, -8                         ; 5 uses
  %i.c = add i64 %i.b, %2
  %i.d = add i64 %i.c, -1
  %i.e = sub i64 0, %i.b                          ; 2 uses
  %i.f = and i64 %i.d, %i.e                       ; 5 uses
  %i.g = add i64 %i.f, %i.b                       ; 2 uses
end_hunk_4
begin_hunk_5_@base_alloc_impl:bb.a
  %i.cd = getelementptr i8, ptr %.2.ph, i64 8     ; 2 uses
  %.val18.i.i = load ptr, ptr %i.cd, align 8, !tbaa !16
  %i.ce = ptrtoint ptr %.val18.i.i to i64         ; 2 uses
  %5 = add i64 %i.b, %i.ce
  %i.cf = add i64 %5, -1
  %i.cg = and i64 %i.cf, %i.e                     ; 3 uses
  %i.ch = sub i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = inttoptr i64 %i.cg to ptr               ; 3 uses
end_hunk_5
