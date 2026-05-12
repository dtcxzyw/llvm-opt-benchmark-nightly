inline.NumInlined: 41
inline.NumDeleted: 4
begin_hunk_0_@deflate:bb.a
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !62
  %.not393 = icmp eq i32 %i.cj, 0
  %i.ck = or disjoint i32 %i.ch, 32
  %spec.select = select i1 %.not393, i32 %i.ch, i32 %i.ck ; 3 uses
  %i.cl = urem i32 %spec.select, 31
  %2 = or disjoint i32 %i.cl, %spec.select
  %i.cm = lshr i32 %spec.select, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !43
end_hunk_0
begin_hunk_1_@deflate:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bq
  store i8 %i.cn, ptr %i.cr, align 1, !tbaa !8
  %i.cs = trunc i32 %2 to i8
  %3 = xor i8 %i.cs, 31
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !43
  %i.cu = load i64, ptr %i.ag, align 8, !tbaa !86 ; 2 uses
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ag, align 8, !tbaa !86
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 %3, ptr %i.cw, align 1, !tbaa !8
  %i.cx = load i32, ptr %i.ci, align 4, !tbaa !62
  %.not394 = icmp eq i32 %i.cx, 0
  br i1 %.not394, label %bb.ae, label %bb.ad
end_hunk_1
