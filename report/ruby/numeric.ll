inline.NumInlined: 1036
inline.NumDeleted: 137
begin_hunk_0_@rb_int_ceil:bb.a
  %i.k = ashr i64 %i.g, 1                         ; 2 uses
  %i.l = icmp slt i64 %i.j, 0                     ; 2 uses
  %i.m = sub nsw i64 0, %i.j
  %i.n = add nsw i64 %i.j, %i.k
  %i.o = add i64 %i.n, -1
  %.029 = select i1 %i.l, i64 %i.m, i64 %i.o
  %.029.fr = freeze i64 %.029                     ; 2 uses
  %i.p = srem i64 %.029.fr, %i.k
end_hunk_0
begin_hunk_1_@flo_to_s:bb.a
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !7
  %i.bd = sext i32 %i.bc to i64
  %reass.sub = sub i64 %i.bb, %i.ah
  %i.be = add i64 %reass.sub, %i.bd
  %i.bf = add i64 %i.be, 2
  %i.bg = call i64 @rb_str_resize(i64 noundef %i.ab, i64 noundef %i.bf) #26 ; 0 uses
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !13
  %i.bi = and i64 %i.bh, 8192
end_hunk_1
begin_hunk_2_@rb_int_round:bb.a
  %i.aa = ashr i64 %0, 1                          ; 2 uses
  %i.ab = ashr i64 %i.y, 1                        ; 7 uses
  %i.ac = icmp slt i64 %i.aa, 0
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.aa, i1 true) ; 2 uses
  %i.ad = sdiv i64 %i.ab, 2
  %3 = add nsw i64 %spec.select, %i.ad            ; 4 uses
  switch i32 %2, label %bb.j [
    i32 1, label %bb.h
    i32 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ae = sdiv i64 %3, %i.ab                      ; 3 uses
  %i.af = mul i64 %i.ae, %i.ab
  %i.ag = sub i64 %i.af, %spec.select
end_hunk_2
begin_hunk_3_@rb_int_round:bb.a
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = srem i64 %3, %i.ab
  %i.am = sub nsw i64 %3, %i.al
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.an = add nsw i64 %3, -1                      ; 2 uses
  %i.ao = srem i64 %i.an, %i.ab
  %i.ap = sub nsw i64 %i.an, %i.ao
  br label %bb.k
end_hunk_3
