begin_hunk_0
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.g
  %i.q = load i64, ptr %i.p, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc i64 %i.r to i8                     ; 5 uses
  %i.t = icmp samesign ult i8 %i.s, 16
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i64 0, ptr %2, align 8
  %.pre = and i8 %i.s, 7                          ; 3 uses
  switch i8 %i.s, label %bb.d [
    i8 4, label %bb.c
    i8 12, label %bb.c
    i8 5, label %bb.e
    i8 13, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %scevgep275 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.w = or disjoint i8 %.pre, 32
  store i8 %i.w, ptr %scevgep275, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.fca.1.load277 = phi ptr [ inttoptr (i64 2 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.x = lshr i8 %i.s, 3
  store i8 %.pre, ptr %i.v, align 2
  store i8 %i.x, ptr %i.u, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.y = or disjoint i8 %.pre, 64
  store i8 %i.y, ptr %i.v, align 2
  %i.z = lshr i8 %i.s, 3
  store i8 %i.z, ptr %i.u, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87

bb.f:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1
  %i.gj = getelementptr [8 x i8], ptr %i.gi, i64 %i.ga
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = lshr i64 %i.gk, 32
  %i.gm = trunc i64 %i.gl to i8                   ; 5 uses
  %i.gn = icmp samesign ult i8 %i.gm, 16
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i64 0, ptr %2, align 8
  %.pre283 = and i8 %i.gm, 7                      ; 3 uses
  switch i8 %i.gm, label %bb.w [
    i8 4, label %bb.v
    i8 12, label %bb.v
    i8 5, label %bb.x
    i8 13, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %scevgep271 = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.gq = or disjoint i8 %.pre283, 32
  store i8 %i.gq, ptr %scevgep271, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %.fca.1.load279 = phi ptr [ inttoptr (i64 2 to ptr), %bb.v ], [ inttoptr (i64 1 to ptr), %bb.u ]
  %i.gr = lshr i8 %i.gm, 3
  store i8 %.pre283, ptr %i.gp, align 2
  store i8 %i.gr, ptr %i.go, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87

bb.x:                                             ; preds = %bb.u, %bb.u
  %i.gs = or disjoint i8 %.pre283, 64
  store i8 %i.gs, ptr %i.gp, align 2
  %i.gt = lshr i8 %i.gm, 3
  store i8 %i.gt, ptr %i.go, align 1
  br label %_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87

bb.y:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2
  unreachable

_ZN2v88internal7OperandC2ENS0_8RegisterEi.exit87: ; preds = %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.t, %.thread266, %bb.r, %bb.o, %bb.n, %bb.l, %.thread, %bb.j, %bb.e, %bb.d, %_ZN2v88internal7OperandC2ENS0_8RegisterENS0_11ScaleFactorEi.exit, %_ZN2v88internal7OperandC2ENS0_8RegisterENS0_11ScaleFactorEi.exit129
  %.fca.1.load = phi ptr [ inttoptr (i64 5 to ptr), %bb.ab ], [ inttoptr (i64 2 to ptr), %bb.aa ], [ inttoptr (i64 2 to ptr), %bb.x ], [ %.fca.1.load279, %bb.w ], [ inttoptr (i64 6 to ptr), %bb.t ], [ inttoptr (i64 3 to ptr), %.thread266 ], [ inttoptr (i64 2 to ptr), %bb.r ], [ inttoptr (i64 3 to ptr), %bb.o ], [ inttoptr (i64 2 to ptr), %bb.n ], [ %i.ce, %bb.l ], [ %i.bw, %.thread ], [ %.fca.1.load278, %bb.j ], [ inttoptr (i64 2 to ptr), %bb.e ], [ %.fca.1.load277, %bb.d ], [ inttoptr (i64 6 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterENS0_11ScaleFactorEi.exit ], [ inttoptr (i64 6 to ptr), %_ZN2v88internal7OperandC2ENS0_8RegisterENS0_11ScaleFactorEi.exit129 ]
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
end_hunk_2
