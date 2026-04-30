inline.NumInlined: 753
inline.NumDeleted: 356
begin_hunk_0_@_ZN2v88internal9SemiSpace13FixPagesFlagsEv:bb.a
  store atomic ptr %0, ptr %i.k seq_cst, align 8
  %i.l = load i32, ptr %i.j, align 8
  %i.m = icmp eq i32 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 328 ; 5 uses
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN2v88internal9SemiSpace13FixPagesFlagsEv:bb.a
bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8
  %i.q = or i64 %i.p, 8                           ; 2 uses
  store i64 %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, -262144
  %i.u = inttoptr i64 %i.t to ptr
  store i64 %i.q, ptr %i.u, align 262144
  %1 = load i64, ptr %i.n, align 8
  %i.v = and i64 %1, -17                          ; 2 uses
  store i64 %i.v, ptr %i.n, align 8
  br label %bb.e

end_hunk_1
begin_hunk_2_@_ZN2v88internal9SemiSpace4SwapEPS1_S2_:bb.a
  store atomic ptr %1, ptr %i.as seq_cst, align 8
  %i.at = load i32, ptr %i.ar, align 8
  %i.au = icmp eq i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i, i64 328 ; 4 uses
  br i1 %i.au, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN2v88internal9SemiSpace4SwapEPS1_S2_:bb.a
bb.d:                                             ; preds = %bb.b
  %i.ax = load i64, ptr %i.av, align 8
  %i.ay = or i64 %i.ax, 8                         ; 2 uses
  store i64 %i.ay, ptr %i.av, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i, i64 72 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, -262144
  %i.bc = inttoptr i64 %i.bb to ptr
  store i64 %i.ay, ptr %i.bc, align 262144
  %2 = load i64, ptr %i.av, align 8
  %i.bd = and i64 %2, -17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_3
begin_hunk_4_@_ZN2v88internal9SemiSpace4SwapEPS1_S2_:bb.a
  store atomic ptr %0, ptr %i.bq seq_cst, align 8
  %i.br = load i32, ptr %i.bp, align 8
  %i.bs = icmp eq i32 %i.br, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i19, i64 328 ; 4 uses
  br i1 %i.bs, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
end_hunk_4
begin_hunk_5_@_ZN2v88internal9SemiSpace4SwapEPS1_S2_:bb.a
bb.h:                                             ; preds = %bb.f
  %i.bv = load i64, ptr %i.bt, align 8
  %i.bw = or i64 %i.bv, 8                         ; 2 uses
  store i64 %i.bw, ptr %i.bt, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i19, i64 72 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, -262144
  %i.ca = inttoptr i64 %i.bz to ptr
  store i64 %i.bw, ptr %i.ca, align 262144
  %3 = load i64, ptr %i.bt, align 8
  %i.cb = and i64 %3, -17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_5
begin_hunk_6_@_ZN2v88internal9SemiSpace19MoveQuarantinedPageEPNS0_12PageMetadataE:bb.a
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = and i32 %i.ax, -65
  store i32 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, -9                       ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = and i64 %i.bd, -262144
  %i.bf = inttoptr i64 %i.be to ptr
  store i64 %i.bb, ptr %i.bf, align 262144
  %2 = load i64, ptr %i.az, align 8
  %i.bg = or i64 %2, 16                           ; 2 uses
  store i64 %i.bg, ptr %i.az, align 8
  %i.bh = load i64, ptr %i.bc, align 8
  %i.bi = and i64 %i.bh, -262144
end_hunk_6
