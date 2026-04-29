inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@push:bb.a
  br i1 %or.cond, label %.lr.ph105.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph105.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.ct = shl i64 %n.vec, 2                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ch, i64 %i.ct
  %i.cv = getelementptr i8, ptr %1, i64 %i.ct     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ch, i64 %offset.idx ; 2 uses
  %next.gep144 = getelementptr i8, ptr %1, i64 %offset.idx ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4
  %wide.load145 = load <4 x float>, ptr %i.cw, align 4
end_hunk_0
begin_hunk_1_@_encodepart:bb.a
  br i1 %found.conflict, label %.lr.ph108.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.fr.i, 2147483640             ; 4 uses
  %i.ew = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ep, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.o, i64 %i.ew
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %offset.idx = shl i64 %index, 2                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ep, i64 %offset.idx ; 2 uses
  %next.gep16 = getelementptr i8, ptr %i.o, i64 %offset.idx ; 3 uses
  %i.fa = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !alias.scope !792
  %wide.load17.a = load <4 x float>, ptr %i.fa, align 4, !alias.scope !792
end_hunk_1
begin_hunk_2_@dradf4:bb.a
  br i1 %conflict.rdx344, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 2147483644               ; 6 uses
  %i.am = add nsw i64 %n.vec, %i.i
  %i.an = add nsw i64 %n.vec, %i.h
  %i.ao = add nuw nsw i64 %n.vec, %i.f
  %i.ap = trunc nuw nsw i64 %n.vec to i32
  %invariant.gep933 = getelementptr [4 x i8], ptr %2, i64 %i.f
  %invariant.gep935 = getelementptr [4 x i8], ptr %2, i64 %i.h
end_hunk_2
begin_hunk_3_@dradf4:bb.a
  %indvars.iv265.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph ], [ %i.am, %middle.block ]
  %indvars.iv263.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %vector.scevcheck ], [ %i.h, %.lr.ph ], [ %i.an, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.f, %vector.memcheck ], [ %i.f, %vector.scevcheck ], [ %i.f, %.lr.ph ], [ %i.ao, %middle.block ]
  %.0231240.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.ap, %middle.block ] ; 2 uses
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %scalar.ph ], [ %indvars.iv265.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %scalar.ph ], [ %indvars.iv263.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0224243 = phi i32 [ %i.cj, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ]
  %.0231240 = phi i32 [ %i.bu, %scalar.ph ], [ %.0231240.ph, %scalar.ph.preheader ] ; 3 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bf = load float, ptr %i.be, align 4
end_hunk_3
begin_hunk_4_@dradf4:bb.a
  %mul.result374.a = shl i64 %i.cs, 3
  %mul.result378.a = shl i64 %i.cs, 3
  %mul.result382 = shl i64 %i.cs, 3
  %n.vec769 = and i64 %i.fa, 9223372036854775804  ; 4 uses
  %i.fv = shl nuw i64 %n.vec769, 1
  %i.fw = shl nuw i64 %n.vec769, 1                ; 3 uses
  %i.fx = or disjoint i64 %i.fw, 2
  %cmp.n804 = icmp eq i64 %i.fa, %n.vec769
  br label %.lr.ph249.us
end_hunk_4
begin_hunk_5_@dradf4:bb.a
  br i1 %op.rdx932, label %scalar.ph765.preheader, label %vector.ph767

vector.ph767:                                     ; preds = %vector.memcheck384
  %i.jd = sub i64 %i.gd, %i.fv
  %i.je = add i64 %i.fw, %i.gc
  %i.jf = add i64 %indvars.iv274, %i.fw
  %invariant.op = add i64 %indvars.iv274, 2
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph767
  %index771 = phi i64 [ 0, %vector.ph767 ], [ %index.next802, %vector.body770 ] ; 3 uses
  %i.jg = shl i64 %index771, 1
  %offset.idx772 = sub i64 %i.gd, %i.jg           ; 2 uses
  %i.jh = shl i64 %index771, 1                    ; 5 uses
  %offset.idx773 = add i64 %i.jh, %i.gc           ; 2 uses
  %.reass = add i64 %i.jh, %invariant.op          ; 2 uses
  %i.ji = add nuw nsw i64 %.reass, %i.co          ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jh
  %wide.vec = load <8 x float>, ptr %i.jj, align 4, !alias.scope !933 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec776.a = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
end_hunk_5
begin_hunk_6_@dradf4:bb.a
  %i.jq = fmul <4 x float> %strided.vec778, %strided.vec776.a
  %i.jr = fsub <4 x float> %i.jp, %i.jq           ; 2 uses
  %i.js = add nuw nsw i64 %i.ji, %i.co            ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.jh
  %wide.vec780 = load <8 x float>, ptr %i.jt, align 4, !alias.scope !938 ; 2 uses
  %strided.vec781 = shufflevector <8 x float> %wide.vec780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec782.a = shufflevector <8 x float> %wide.vec780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
end_hunk_6
begin_hunk_7_@dradf4:bb.a
  %i.jz = fmul <4 x float> %strided.vec781, %strided.vec785.a
  %i.ka = fmul <4 x float> %strided.vec784, %strided.vec782.a
  %i.kb = fsub <4 x float> %i.jz, %i.ka           ; 2 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %6, i64 %i.jh
  %wide.vec786 = load <8 x float>, ptr %i.kc, align 4, !alias.scope !942 ; 2 uses
  %strided.vec787 = shufflevector <8 x float> %wide.vec786, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec788 = shufflevector <8 x float> %wide.vec786, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
end_hunk_7
begin_hunk_8_@dradfg:bb.a
  %i.bz = zext i32 %narrow to i64                 ; 2 uses
  %brmerge = or i1 %i.bq, %i.br
  %min.iters.check1239 = icmp ult i32 %i.bx, 6
  %n.vec1242 = and i64 %i.bz, 4294967292          ; 4 uses
  %i.ca = shl nuw nsw i64 %n.vec1242, 1           ; 2 uses
  %.cast = trunc nuw i64 %n.vec1242 to i32
  %i.cb = shl i32 %.cast, 1
  %i.cc = or disjoint i32 %i.cb, 2
end_hunk_8
begin_hunk_9_@dradfg:bb.a
  br i1 %conflict.rdx, label %scalar.ph1238.preheader, label %vector.ph1240

vector.ph1240:                                    ; preds = %vector.memcheck1223
  %i.ck = add nsw i64 %i.ca, %i.ch
  %invariant.op = add i64 %i.ch, 1
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %vector.ph1240
  %index1244 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1257, %vector.body1243 ] ; 2 uses
  %.idx = shl i64 %index1244, 1                   ; 2 uses
  %gep1613 = getelementptr [4 x i8], ptr %invariant.gep1633, i64 %.idx
  %i.cl = getelementptr i8, ptr %gep1613, i64 4   ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.cl, align 4, !alias.scope !970 ; 2 uses
  %.reass = add i64 %.idx, %invariant.op          ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass ; 2 uses
  %wide.vec1248 = load <8 x float>, ptr %i.cm, align 4, !alias.scope !973 ; 2 uses
  %i.cn = fmul <8 x float> %wide.vec, %wide.vec1248
end_hunk_9
begin_hunk_10_@dradfg:bb.a
  %narrow1593 = add nuw i32 %i.ft, 1
  %i.fu = zext i32 %narrow1593 to i64             ; 2 uses
  %min.iters.check1344 = icmp ult i32 %i.fs, 22
  %n.vec1347 = and i64 %i.fu, 4294967292          ; 4 uses
  %i.fv = shl nuw nsw i64 %n.vec1347, 1           ; 2 uses
  %.cast1348 = trunc nuw i64 %n.vec1347 to i32
  %i.fw = shl i32 %.cast1348, 1
  %i.fx = or disjoint i32 %i.fw, 2
end_hunk_10
begin_hunk_11_@dradfg:bb.a
  br i1 %brmerge1661, label %scalar.ph1343.preheader, label %vector.ph1345

vector.ph1345:                                    ; preds = %.preheader671.us.us.us
  %i.ge = add i64 %indvars.iv925, %i.fv
  %i.gf = add i64 %indvars.iv919, %i.fv
  %invariant.op1635 = add i64 %indvars.iv925, 1
  %invariant.op1637 = add i64 %indvars.iv919, 1
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1345
  %index1350 = phi i64 [ 0, %vector.ph1345 ], [ %index.next1367, %vector.body1349 ] ; 2 uses
  %i.gg = shl i64 %index1350, 1                   ; 2 uses
  %.reass1636 = add i64 %i.gg, %invariant.op1635  ; 2 uses
  %i.gh = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1636 ; 2 uses
  %wide.vec1353 = load <8 x float>, ptr %i.gh, align 4, !alias.scope !985 ; 2 uses
  %.reass1638 = add i64 %i.gg, %invariant.op1637  ; 2 uses
end_hunk_11
begin_hunk_12_@dradb4:bb.a
  %op.rdx932 = or i1 %op.rdx928, %op.rdx929
  %invariant.op943 = or i1 %invariant.op942, %op.rdx932
  %invariant.op944 = or i1 %invariant.op943, %op.rdx930
  %n.vec774 = and i64 %i.ik, 9223372036854775804  ; 4 uses
  %i.jv = shl nuw i64 %n.vec774, 1                ; 4 uses
  %7 = mul i64 %n.vec774, -2                      ; 2 uses
  %i.jw = or disjoint i64 %i.jv, 2
  %invariant.op = add nuw nsw i64 2, %i.ek
  %cmp.n819 = icmp eq i64 %i.ik, %n.vec774
  br label %.lr.ph246.us
end_hunk_12
begin_hunk_13_@dradb4:bb.a
  br i1 %op.rdx934.reass, label %scalar.ph770.preheader, label %vector.ph772

vector.ph772:                                     ; preds = %vector.memcheck397
  %i.nd = add i64 %indvars.iv280, %i.jv
  %8 = add i64 %7, %i.kf
  %9 = add i64 %7, %i.ke
  %i.ne = add i64 %i.jv, %i.ke
  %i.nf = add i64 %i.jv, %i.kd
  %invariant.gep936 = getelementptr [4 x i8], ptr %2, i64 %i.kd
  %invariant.gep928 = getelementptr [4 x i8], ptr %2, i64 %i.kf
  %invariant.gep930 = getelementptr [4 x i8], ptr %2, i64 %i.ke
  %invariant.gep938 = getelementptr [4 x i8], ptr %2, i64 %i.ke
  br label %vector.body775

vector.body775:                                   ; preds = %vector.body775, %vector.ph772
  %index776 = phi i64 [ 0, %vector.ph772 ], [ %index.next817, %vector.body775 ] ; 3 uses
  %i.ng = shl i64 %index776, 1                    ; 6 uses
  %offset.idx777 = add i64 %indvars.iv280, %i.ng  ; 2 uses
  %10 = mul i64 %index776, -2                     ; 2 uses
  %gep927 = getelementptr [4 x i8], ptr %invariant.gep936, i64 %i.ng
  %i.nh = getelementptr i8, ptr %gep927, i64 4
  %wide.vec = load <8 x float>, ptr %i.nh, align 4, !alias.scope !1075 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec783.a = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ni = getelementptr [4 x i8], ptr %invariant.gep928, i64 %10
  %i.nj = getelementptr i8, ptr %i.ni, i64 -36
  %wide.vec784 = load <8 x float>, ptr %i.nj, align 4, !alias.scope !1078 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
  %reverse787.a = shufflevector <8 x float> %wide.vec784, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1> ; 2 uses
  %i.nk = fadd <4 x float> %strided.vec783.a, %reverse787.a ; 2 uses
  %i.nl = fsub <4 x float> %strided.vec783.a, %reverse787.a ; 2 uses
  %gep931 = getelementptr [4 x i8], ptr %invariant.gep930, i64 %i.ng
  %i.nm = getelementptr i8, ptr %gep931, i64 4
  %wide.vec788 = load <8 x float>, ptr %i.nm, align 4, !alias.scope !1080 ; 2 uses
  %strided.vec789 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec790 = shufflevector <8 x float> %wide.vec788, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nn = getelementptr [4 x i8], ptr %invariant.gep938, i64 %10
  %i.no = getelementptr i8, ptr %i.nn, i64 -36
  %wide.vec791 = load <8 x float>, ptr %i.no, align 4, !alias.scope !1082 ; 2 uses
  %reverse793 = shufflevector <8 x float> %wide.vec791, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0> ; 2 uses
end_hunk_13
begin_hunk_14_@dradb4:bb.a
  %i.oc = fadd <4 x float> %i.nq, %i.nr           ; 2 uses
  %i.od = fadd <4 x float> %i.nk, %i.nt           ; 2 uses
  %i.oe = fsub <4 x float> %i.nk, %i.nt           ; 2 uses
  %i.of = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ng ; 2 uses
  %wide.vec796 = load <8 x float>, ptr %i.of, align 4, !alias.scope !1084 ; 2 uses
  %strided.vec797 = shufflevector <8 x float> %wide.vec796, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec798.a = shufflevector <8 x float> %wide.vec796, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_14
begin_hunk_15_@dradb4:bb.a
  %i.on = fadd <4 x float> %i.ol, %i.om
  %interleaved.vec802 = shufflevector <4 x float> %i.oi, <4 x float> %i.on, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec802, ptr %i.ok, align 4
  %i.oo = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ng ; 2 uses
  %wide.vec803 = load <8 x float>, ptr %i.oo, align 4, !alias.scope !1086 ; 2 uses
  %strided.vec804 = shufflevector <8 x float> %wide.vec803, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec805.a = shufflevector <8 x float> %wide.vec803, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_15
begin_hunk_16_@dradb4:bb.a
  %i.ox = fadd <4 x float> %i.ov, %i.ow
  %interleaved.vec809 = shufflevector <4 x float> %i.or, <4 x float> %i.ox, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec809, ptr %i.ou, align 4
  %i.oy = getelementptr inbounds [4 x i8], ptr %6, i64 %i.ng ; 2 uses
  %wide.vec810 = load <8 x float>, ptr %i.oy, align 4, !alias.scope !1088 ; 2 uses
  %strided.vec811 = shufflevector <8 x float> %wide.vec810, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec812 = shufflevector <8 x float> %wide.vec810, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_16
begin_hunk_17_@dradb4:bb.a

scalar.ph770.preheader:                           ; preds = %vector.memcheck397, %vector.scevcheck372, %.lr.ph246.us, %middle.block818
  %indvars.iv282.ph = phi i64 [ %indvars.iv280, %vector.memcheck397 ], [ %indvars.iv280, %vector.scevcheck372 ], [ %indvars.iv280, %.lr.ph246.us ], [ %i.nd, %middle.block818 ]
  %indvars.iv278.ph = phi i64 [ %i.kf, %vector.memcheck397 ], [ %i.kf, %vector.scevcheck372 ], [ %i.kf, %.lr.ph246.us ], [ %8, %middle.block818 ]
  %indvars.iv274.ph = phi i64 [ %i.ke, %vector.memcheck397 ], [ %i.ke, %vector.scevcheck372 ], [ %i.ke, %.lr.ph246.us ], [ %9, %middle.block818 ]
  %indvars.iv272.ph = phi i64 [ %i.ke, %vector.memcheck397 ], [ %i.ke, %vector.scevcheck372 ], [ %i.ke, %.lr.ph246.us ], [ %i.ne, %middle.block818 ]
  %indvars.iv268.ph = phi i64 [ %i.kd, %vector.memcheck397 ], [ %i.kd, %vector.scevcheck372 ], [ %i.kd, %.lr.ph246.us ], [ %i.nf, %middle.block818 ]
  %indvars.iv264.ph = phi i64 [ 2, %vector.memcheck397 ], [ 2, %vector.scevcheck372 ], [ 2, %.lr.ph246.us ], [ %i.jw, %middle.block818 ]
end_hunk_17
begin_hunk_18_@dradb2:bb.a
  br i1 %conflict.rdx189, label %.lr.ph.preheader375, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2147483644               ; 4 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32        ; 2 uses
  %i.u = shl nuw i32 %.cast, 1
  br label %vector.body

end_hunk_18
begin_hunk_19_@dradb2:bb.a

.lr.ph.preheader375:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0100115.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %.cast, %middle.block ]
  %.0105114.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

end_hunk_19
begin_hunk_20_@dradb2:bb.a
  %bound0258 = icmp ult ptr %scevgep200.a, %scevgep218
  %bound1259 = icmp ult ptr %4, %scevgep201.a
  %found.conflict260 = and i1 %bound0258, %bound1259
  %n.vec295 = and i64 %i.bk, 9223372036854775804  ; 4 uses
  %i.bl = shl nuw i64 %n.vec295, 1                ; 4 uses
  %i.bm = shl nuw i64 %n.vec295, 1
  %i.bn = or disjoint i64 %i.bl, 2
  %cmp.n327 = icmp eq i64 %i.bk, %n.vec295
  br label %.lr.ph122.us

end_hunk_20
begin_hunk_21_@dradb2:bb.a
  br i1 %conflict.rdx289, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %vector.memcheck197
  %i.bx = add i64 %indvars.iv151, %i.bl
  %i.by = add i64 %i.bl, %i.bq
  %i.bz = sub i64 %i.bp, %i.bm
  %i.ca = add i64 %i.bl, %i.bo
  %invariant.gep377 = getelementptr [4 x i8], ptr %2, i64 %i.bq
  %i.cb = getelementptr [4 x i8], ptr %3, i64 %indvars.iv151
end_hunk_21
begin_hunk_22_@dradb2:bb.a
  br label %vector.body296

vector.body296:                                   ; preds = %vector.body296, %vector.ph293
  %index297 = phi i64 [ 0, %vector.ph293 ], [ %index.next325, %vector.body296 ] ; 3 uses
  %i.cc = shl i64 %index297, 1                    ; 4 uses
  %5 = shl i64 %index297, 1
  %6 = sub i64 %i.bp, %5
  %gep366 = getelementptr [4 x i8], ptr %invariant.gep377, i64 %i.cc
  %i.cd = getelementptr i8, ptr %gep366, i64 4    ; 2 uses
  %wide.vec303 = load <8 x float>, ptr %i.cd, align 4, !alias.scope !1104 ; 2 uses
  %strided.vec304 = shufflevector <8 x float> %wide.vec303, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec305.a = shufflevector <8 x float> %wide.vec303, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ce = getelementptr [4 x i8], ptr %2, i64 %6
  %i.cf = getelementptr i8, ptr %i.ce, i64 -36    ; 2 uses
  %wide.vec306 = load <8 x float>, ptr %i.cf, align 4, !alias.scope !1107 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec306, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse309.a = shufflevector <8 x float> %wide.vec306, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.cg = fadd <4 x float> %strided.vec304, %reverse
  %7 = getelementptr [4 x i8], ptr %i.cb, i64 %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 4
  %wide.vec310 = load <8 x float>, ptr %i.cd, align 4, !alias.scope !1104 ; 2 uses
  %strided.vec311 = shufflevector <8 x float> %wide.vec310, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec312 = shufflevector <8 x float> %wide.vec310, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_22
begin_hunk_23_@dradb2:bb.a
  %interleaved.vec = shufflevector <4 x float> %i.cg, <4 x float> %i.cj, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ch, align 4
  %i.ck = fadd <4 x float> %strided.vec312, %reverse317 ; 2 uses
  %8 = getelementptr [4 x i8], ptr %4, i64 %i.cc  ; 2 uses
  %wide.vec318 = load <8 x float>, ptr %8, align 4, !alias.scope !1109 ; 2 uses
  %strided.vec319 = shufflevector <8 x float> %wide.vec318, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec320 = shufflevector <8 x float> %wide.vec318, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cl = fmul <4 x float> %i.ci, %strided.vec319
  %i.cm = fmul <4 x float> %i.ck, %strided.vec320
  %i.cn = fsub <4 x float> %i.cl, %i.cm
  %gep368 = getelementptr [4 x i8], ptr %invariant.gep379, i64 %i.cc
  %i.co = getelementptr i8, ptr %gep368, i64 4
  %wide.vec321 = load <8 x float>, ptr %8, align 4, !alias.scope !1109 ; 2 uses
  %strided.vec322 = shufflevector <8 x float> %wide.vec321, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec323 = shufflevector <8 x float> %wide.vec321, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cp = fmul <4 x float> %i.ck, %strided.vec322
end_hunk_23
begin_hunk_24_@dradb3:bb.a
  br i1 %conflict.rdx249, label %.lr.ph.preheader569, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 2147483644               ; 5 uses
  %i.aj = mul nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 2
  %i.al = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.am = mul i64 %index, 3                       ; 8 uses
  %i.an = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = getelementptr [4 x i8], ptr %2, i64 %i.am ; 2 uses
end_hunk_24
begin_hunk_25_@dradb3:bb.a
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 2
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 3 ; 2 uses
  %i.bh = fadd <4 x float> %i.bg, %i.bg           ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.am
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bk = getelementptr i8, ptr %i.bj, i64 12
  %i.bl = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.bo = getelementptr i8, ptr %i.bn, i64 36
  %i.bp = load float, ptr %i.bi, align 4, !alias.scope !1115
  %i.bq = load float, ptr %i.bk, align 4, !alias.scope !1115
end_hunk_25
begin_hunk_26_@dradb3:bb.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader569

.lr.ph.preheader569:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv169.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.aj, %middle.block ]
  %indvars.iv167.ph = phi i64 [ %i.i, %vector.memcheck ], [ %i.i, %vector.scevcheck ], [ %i.i, %.lr.ph.preheader ], [ %i.ak, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0136152.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.al, %middle.block ]
end_hunk_26
begin_hunk_27_@dradb3:bb.a
  %bound1367 = icmp ult ptr %5, %scevgep264.a
  %found.conflict368 = and i1 %bound0366, %bound1367
  %op.rdx537.a = or i1 %found.conflict364, %found.conflict368
  %n.vec479 = and i64 %i.ef, 9223372036854775804  ; 4 uses
  %i.el = shl nuw i64 %n.vec479, 1                ; 6 uses
  %i.em = shl nuw i64 %n.vec479, 1
  %i.en = or disjoint i64 %i.el, 2
  %cmp.n521 = icmp eq i64 %i.ef, %n.vec479
  br label %.lr.ph161.us

end_hunk_27
begin_hunk_28_@dradb3:bb.a
  br i1 %op.rdx568, label %scalar.ph475.preheader, label %vector.ph477

vector.ph477:                                     ; preds = %vector.memcheck259
  %i.fw = add i64 %indvars.iv196, %i.el
  %i.fx = add i64 %i.el, %i.ez
  %i.fy = add i64 %i.el, %i.ey
  %i.fz = add i64 %i.el, %i.ex
  %i.ga = sub i64 %i.ew, %i.em
  %i.gb = add i64 %i.el, %i.ew
  %invariant.gep570 = getelementptr [4 x i8], ptr %2, i64 %i.ew
  %invariant.gep572 = getelementptr [4 x i8], ptr %2, i64 %i.ex
end_hunk_28
begin_hunk_29_@dradb3:bb.a
  br label %vector.body480

vector.body480:                                   ; preds = %vector.body480, %vector.ph477
  %index481 = phi i64 [ 0, %vector.ph477 ], [ %index.next519, %vector.body480 ] ; 3 uses
  %i.gd = shl i64 %index481, 1                    ; 7 uses
  %i.ge = shl i64 %index481, 1
  %6 = sub i64 %i.ew, %i.ge
  %gep559 = getelementptr [4 x i8], ptr %invariant.gep570, i64 %i.gd
  %i.gf = getelementptr i8, ptr %gep559, i64 4    ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.gf, align 4, !alias.scope !1128 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec489 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gg = getelementptr [4 x i8], ptr %2, i64 %6
  %i.gh = getelementptr i8, ptr %i.gg, i64 -36    ; 2 uses
  %wide.vec490 = load <8 x float>, ptr %i.gh, align 4, !alias.scope !1131 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec490, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse493 = shufflevector <8 x float> %wide.vec490, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.gi = fadd <4 x float> %strided.vec, %reverse ; 2 uses
  %gep561 = getelementptr [4 x i8], ptr %invariant.gep572, i64 %i.gd
  %i.gj = getelementptr i8, ptr %gep561, i64 4
  %wide.vec494 = load <8 x float>, ptr %i.gj, align 4, !alias.scope !1133 ; 2 uses
  %strided.vec495 = shufflevector <8 x float> %wide.vec494, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec496 = shufflevector <8 x float> %wide.vec494, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gk = fmul <4 x float> %i.gi, splat (float 5.000000e-01)
  %i.gl = fsub <4 x float> %strided.vec495, %i.gk ; 2 uses
  %i.gm = fadd <4 x float> %strided.vec495, %i.gi
  %7 = getelementptr [4 x i8], ptr %i.gc, i64 %i.gd
  %i.gn = getelementptr i8, ptr %7, i64 4
  %i.go = fsub <4 x float> %strided.vec489, %reverse493 ; 2 uses
  %i.gp = fmul <4 x float> %i.go, splat (float 5.000000e-01)
  %i.gq = fsub <4 x float> %strided.vec496, %i.gp ; 2 uses
end_hunk_29
begin_hunk_30_@dradb3:bb.a
  %i.gx = fadd <4 x float> %i.gl, %i.gv           ; 2 uses
  %i.gy = fadd <4 x float> %i.gq, %i.gt           ; 2 uses
  %i.gz = fsub <4 x float> %i.gq, %i.gt           ; 2 uses
  %i.ha = getelementptr inbounds [4 x i8], ptr %4, i64 %i.gd ; 2 uses
  %wide.vec505 = load <8 x float>, ptr %i.ha, align 4, !alias.scope !1135 ; 2 uses
  %strided.vec506.a = shufflevector <8 x float> %wide.vec505, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec507 = shufflevector <8 x float> %wide.vec505, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hb = fmul <4 x float> %strided.vec506.a, %i.gw
  %i.hc = fmul <4 x float> %i.gy, %strided.vec507
  %i.hd = fsub <4 x float> %i.hb, %i.hc
  %gep563 = getelementptr [4 x i8], ptr %invariant.gep574, i64 %i.gd
  %i.he = getelementptr i8, ptr %gep563, i64 4
  %wide.vec508 = load <8 x float>, ptr %i.ha, align 4, !alias.scope !1135 ; 2 uses
  %strided.vec509.a = shufflevector <8 x float> %wide.vec508, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec510 = shufflevector <8 x float> %wide.vec508, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_30
begin_hunk_31_@dradb3:bb.a
  %i.hh = fadd <4 x float> %i.hf, %i.hg
  %interleaved.vec511 = shufflevector <4 x float> %i.hd, <4 x float> %i.hh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec511, ptr %i.he, align 4
  %i.hi = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gd ; 2 uses
  %wide.vec512 = load <8 x float>, ptr %i.hi, align 4, !alias.scope !1137 ; 2 uses
  %strided.vec513 = shufflevector <8 x float> %wide.vec512, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec514 = shufflevector <8 x float> %wide.vec512, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hj = fmul <4 x float> %i.gx, %strided.vec513
  %i.hk = fmul <4 x float> %i.gz, %strided.vec514
  %i.hl = fsub <4 x float> %i.hj, %i.hk
  %gep565 = getelementptr [4 x i8], ptr %invariant.gep576, i64 %i.gd
  %i.hm = getelementptr i8, ptr %gep565, i64 4
  %wide.vec515 = load <8 x float>, ptr %i.hi, align 4, !alias.scope !1137 ; 2 uses
  %strided.vec516 = shufflevector <8 x float> %wide.vec515, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec517 = shufflevector <8 x float> %wide.vec515, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
end_hunk_31
begin_hunk_32_@dradbg:bb.a
  %mul1308.neg = mul nsw i64 %i.ki, -8
  %stride.check1350 = icmp slt i32 %i.e, 0
  %stride.check1387 = icmp slt i32 %i.e, 0
  %n.vec1403 = and i64 %i.ke, 4294967292          ; 5 uses
  %i.kj = shl nuw nsw i64 %n.vec1403, 1           ; 3 uses
  %i.kk = shl nuw nsw i64 %n.vec1403, 1
  %.cast = trunc nuw i64 %n.vec1403 to i32
  %i.kl = shl i32 %.cast, 1
end_hunk_32
begin_hunk_33_@dradbg:bb.a
  br i1 %conflict.rdx1398, label %scalar.ph1399.preheader, label %vector.ph1401

vector.ph1401:                                    ; preds = %vector.memcheck1311
  %i.mj = add i64 %indvars.iv933, %i.kj
  %i.mk = add i64 %indvars.iv927, %i.kj
  %i.ml = add i64 %indvars.iv919, %i.kj
  %i.mm = sub i64 %indvars.iv919, %i.kk
  %i.mn = getelementptr [4 x i8], ptr %4, i64 %indvars.iv919
end_hunk_33
begin_hunk_34_@dradbg:bb.a
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1401
  %index1405 = phi i64 [ 0, %vector.ph1401 ], [ %index.next1424, %vector.body1404 ] ; 3 uses
  %i.mq = shl i64 %index1405, 1                   ; 3 uses
  %10 = shl i64 %index1405, 1
  %11 = sub i64 %indvars.iv919, %10
  %12 = getelementptr [4 x i8], ptr %i.mn, i64 %i.mq
  %i.mr = getelementptr i8, ptr %12, i64 4        ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.mr, align 4, !alias.scope !1174 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1410 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ms = getelementptr [4 x i8], ptr %4, i64 %11
  %i.mt = getelementptr i8, ptr %i.ms, i64 -36    ; 2 uses
  %wide.vec1411 = load <8 x float>, ptr %i.mt, align 4, !alias.scope !1177 ; 2 uses
  %reverse = shufflevector <8 x float> %wide.vec1411, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1414 = shufflevector <8 x float> %wide.vec1411, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mu = fadd <4 x float> %strided.vec, %reverse
  %13 = getelementptr [4 x i8], ptr %i.mo, i64 %i.mq
  %i.mv = getelementptr i8, ptr %13, i64 4
  %wide.vec1415 = load <8 x float>, ptr %i.mr, align 4, !alias.scope !1174 ; 2 uses
  %strided.vec1416 = shufflevector <8 x float> %wide.vec1415, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_34
begin_hunk_35_@dradbg:bb.a
  %reverse1420 = shufflevector <8 x float> %wide.vec1418, <8 x float> poison, <4 x i32> <i32 6, i32 4, i32 2, i32 0>
  %reverse1422 = shufflevector <8 x float> %wide.vec1418, <8 x float> poison, <4 x i32> <i32 7, i32 5, i32 3, i32 1>
  %i.mw = fsub <4 x float> %strided.vec1416, %reverse1420
  %14 = getelementptr [4 x i8], ptr %i.mp, i64 %i.mq
  %i.mx = getelementptr i8, ptr %14, i64 4
  %i.my = fsub <4 x float> %strided.vec1410, %reverse1414
  %interleaved.vec = shufflevector <4 x float> %i.mu, <4 x float> %i.my, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
end_hunk_35
begin_hunk_36_@dradbg:bb.a
  %i.wz = zext i32 %narrow1806 to i64             ; 2 uses
  %brmerge1191 = or i1 %i.wi, %i.wj
  %min.iters.check1683 = icmp ult i32 %i.wx, 22
  %n.vec1686 = and i64 %i.wz, 4294967292          ; 4 uses
  %i.xa = shl nuw nsw i64 %n.vec1686, 1           ; 2 uses
  %.cast1687 = trunc nuw i64 %n.vec1686 to i32
  %i.xb = shl i32 %.cast1687, 1
  %i.xc = or disjoint i32 %i.xb, 2
end_hunk_36
begin_hunk_37_@dradbg:bb.a
  br i1 %brmerge1888, label %scalar.ph1682.preheader, label %vector.ph1684

vector.ph1684:                                    ; preds = %.preheader655.us
  %i.xp = add i64 %indvars.iv1066, %i.xa
  %i.xq = add i64 %indvars.iv1060, %i.xa
  %invariant.op1881 = add i64 %indvars.iv1066, 1
  br label %vector.body1688

vector.body1688:                                  ; preds = %vector.body1688, %vector.ph1684
  %index1689 = phi i64 [ 0, %vector.ph1684 ], [ %index.next1706, %vector.body1688 ] ; 2 uses
  %i.xr = shl i64 %index1689, 1                   ; 2 uses
  %offset.idx1691 = add i64 %indvars.iv1060, %i.xr ; 2 uses
  %.reass1882 = add i64 %i.xr, %invariant.op1881  ; 2 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %5, i64 %.reass1882 ; 2 uses
  %wide.vec1692 = load <8 x float>, ptr %i.xs, align 4, !alias.scope !1220 ; 2 uses
  %strided.vec1693 = shufflevector <8 x float> %wide.vec1692, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_37
begin_hunk_38_@dradbg:bb.a
  %i.aej = zext i32 %narrow1807 to i64            ; 2 uses
  %brmerge1200 = or i1 %i.adt, %i.adu
  %min.iters.check1768 = icmp ult i32 %i.aeh, 6
  %n.vec1771 = and i64 %i.aej, 4294967292         ; 4 uses
  %i.aek = shl nuw nsw i64 %n.vec1771, 1          ; 2 uses
  %.cast1772 = trunc nuw i64 %n.vec1771 to i32
  %i.ael = shl i32 %.cast1772, 1
  %i.aem = or disjoint i32 %i.ael, 2
end_hunk_38
begin_hunk_39_@dradbg:bb.a
  br i1 %brmerge1889, label %scalar.ph1767.preheader, label %vector.ph1769

vector.ph1769:                                    ; preds = %.preheader.us
  %i.aeu = add i64 %indvars.iv1127, %i.aek
  %invariant.op1885 = add i64 %indvars.iv1127, 1
  br label %vector.body1773

vector.body1773:                                  ; preds = %vector.body1773, %vector.ph1769
  %index1774 = phi i64 [ 0, %vector.ph1769 ], [ %index.next1790, %vector.body1773 ] ; 2 uses
  %.idx1808 = shl i64 %index1774, 1               ; 2 uses
  %gep1849 = getelementptr [4 x i8], ptr %invariant.gep1883, i64 %.idx1808
  %i.aev = getelementptr i8, ptr %gep1849, i64 4  ; 2 uses
  %wide.vec1777 = load <8 x float>, ptr %i.aev, align 4, !alias.scope !1242 ; 2 uses
  %.reass1886 = add i64 %.idx1808, %invariant.op1885 ; 2 uses
  %i.aew = getelementptr inbounds [4 x i8], ptr %7, i64 %.reass1886 ; 2 uses
  %wide.vec1780 = load <8 x float>, ptr %i.aew, align 4, !alias.scope !1245 ; 2 uses
  %i.aex = fmul <8 x float> %wide.vec1777, %wide.vec1780
end_hunk_39
