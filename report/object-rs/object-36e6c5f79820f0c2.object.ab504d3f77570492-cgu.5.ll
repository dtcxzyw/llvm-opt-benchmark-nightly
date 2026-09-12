Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.5?download=true
inline.NumInlined: 119
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup5parse:bb.a
  store i32 %.sroa.0.0.i72, ptr %.sroa.4229.0..sroa_idx, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.0.i71, ptr %.sroa.5230.0..sroa_idx, align 4
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.sroa.0.0.insert.insert.i77, ptr %.sroa.6231.0..sroa_idx, align 8
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.0.i70, ptr %.sroa.7232.0..sroa_idx, align 8
  br label %bb.bb

bb.x:                                             ; preds = %bb.a
  %i.au = and i64 %2, 4611686018427387904
  %.not.i94 = icmp eq i64 %i.au, 0
  %.not.i.i95 = icmp sgt i64 %2, -1               ; 2 uses
  br i1 %.not.i94, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  br i1 %.not.i.i95, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.av = and i64 %2, 8796093022207
  %i.aw = sub i64 %i.av, %3
  %i.ax = shl i64 %2, 13
  %i.ay = and i64 %i.ax, -72057594037927936
  %i.az = or i64 %i.aw, %i.ay
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128

bb.aa:                                            ; preds = %bb.y
  %i.ba = and i64 %2, 4294967295
  %i.bb = lshr i64 %2, 32
  %i.bc = trunc nuw i64 %i.bb to i32
  %sh.diff.i.i119 = lshr i64 %2, 24
  %tr.sh.diff.i.i120 = trunc i64 %sh.diff.i.i119 to i32
  %.sroa.5.0.insert.shift.i.i121 = and i32 %tr.sh.diff.i.i120, 16777216
  %sh.diff11.i.i122 = lshr i64 %2, 33
  %tr.sh.diff12.i.i123 = trunc nuw nsw i64 %sh.diff11.i.i122 to i32
  %.sroa.4.0.insert.shift.i.i124 = and i32 %tr.sh.diff12.i.i123, 196608
  %.sroa.4.0.insert.insert.i.i125 = or disjoint i32 %.sroa.5.0.insert.shift.i.i121, %.sroa.4.0.insert.shift.i.i124
  %.sroa.03.0.insert.ext.i.i126 = and i32 %i.bc, 65535
  %.sroa.03.0.insert.insert.i.i127 = or disjoint i32 %.sroa.4.0.insert.insert.i.i125, %.sroa.03.0.insert.ext.i.i126
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128: ; preds = %bb.aa, %bb.z
  %.sink.i.i129 = phi i64 [ %i.az, %bb.z ], [ %i.ba, %bb.aa ] ; 2 uses
  %.sroa.03.0.insert.insert.sink.i.i130 = phi i32 [ 33554432, %bb.z ], [ %.sroa.03.0.insert.insert.i.i127, %bb.aa ]
  %.sroa.4.sroa.0.0.extract.trunc.i131 = trunc i64 %.sink.i.i129 to i32
  %.sroa.4.sroa.3.0.extract.shift.i132 = lshr i64 %.sink.i.i129, 32
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup12parse_arm64e.exit133

bb.ab:                                            ; preds = %bb.x
  br i1 %.not.i.i95, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bd = lshr i64 %2, 19
  %i.be = trunc i64 %i.bd to i32
  %i.bf = ashr i32 %i.be, 13
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103

bb.ad:                                            ; preds = %bb.ab
  %i.bg = lshr i64 %2, 32
  %sh.diff.i2.i96 = lshr i64 %2, 24
  %.sroa.5.0.insert.shift.i4.i97 = and i64 %sh.diff.i2.i96, 16777216
  %sh.diff11.i5.i98 = lshr i64 %2, 33
  %.sroa.4.0.insert.shift.i7.i99 = and i64 %sh.diff11.i5.i98, 196608
  %.sroa.4.0.insert.insert.i8.i100 = or disjoint i64 %.sroa.5.0.insert.shift.i4.i97, %.sroa.4.0.insert.shift.i7.i99
  %.sroa.03.0.insert.ext.i9.i101 = and i64 %i.bg, 65535
  %.sroa.03.0.insert.insert.i10.i102 = or disjoint i64 %.sroa.4.0.insert.insert.i8.i100, %.sroa.03.0.insert.ext.i9.i101
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103: ; preds = %bb.ad, %bb.ac
  %.sink.i11.i104 = phi i32 [ %i.bf, %bb.ac ], [ 0, %bb.ad ]
  %.sroa.03.0.insert.insert.sink.i12.i105 = phi i64 [ 33554432, %bb.ac ], [ %.sroa.03.0.insert.insert.i10.i102, %bb.ad ]
  %.sink13.in.i.i106 = trunc i64 %2 to i32
  %.sink13.i.i107 = and i32 %.sink13.in.i.i106, 65535
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup12parse_arm64e.exit133

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup12parse_arm64e.exit133: ; preds = %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103
  %.sroa.4.sroa.0.0.i108 = phi i32 [ %.sroa.4.sroa.0.0.extract.trunc.i131, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128 ], [ %.sink.i11.i104, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103 ]
  %.sroa.4.sroa.3.0.i109 = phi i64 [ %.sroa.4.sroa.3.0.extract.shift.i132, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128 ], [ %.sroa.03.0.insert.insert.sink.i12.i105, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103 ]
  %.sroa.7.0.i110 = phi i32 [ %.sroa.03.0.insert.insert.sink.i.i130, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128 ], [ undef, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103 ]
  %.sroa.3.0.i111 = phi i32 [ undef, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128 ], [ %.sink13.i.i107, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103 ]
  %.sroa.0.0.i112 = phi i32 [ 0, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i128 ], [ 1, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup17parse_arm64e_bind.exit.i103 ]
  %i.bh = lshr i64 %2, 49
  %i.bi = and i64 %i.bh, 8188
  %.sroa.4.sroa.3.0.insert.shift.i115 = shl nuw i64 %.sroa.4.sroa.3.0.i109, 32
  %.sroa.4.sroa.0.0.insert.ext.i116 = zext i32 %.sroa.4.sroa.0.0.i108 to i64
  %.sroa.4.sroa.0.0.insert.insert.i117 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i115, %.sroa.4.sroa.0.0.insert.ext.i116
  store i64 %i.bi, ptr %0, align 8
  %.sroa.4235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i112, ptr %.sroa.4235.0..sroa_idx, align 8
  %.sroa.5236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.0.i111, ptr %.sroa.5236.0..sroa_idx, align 4
  %.sroa.6237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.sroa.0.0.insert.insert.i117, ptr %.sroa.6237.0..sroa_idx, align 8
  %.sroa.7238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.0.i110, ptr %.sroa.7238.0..sroa_idx, align 8
  br label %bb.bb

bb.ae:                                            ; preds = %bb.a
  %i.bj = and i64 %2, 4611686018427387904
  %.not.i134 = icmp eq i64 %i.bj, 0
  %.not.i.i135 = icmp sgt i64 %2, -1              ; 2 uses
  br i1 %.not.i134, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  br i1 %.not.i.i135, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bk = and i64 %2, 8796093022207
  %i.bl = shl i64 %2, 13
  %i.bm = and i64 %i.bl, -72057594037927936
  %i.bn = or disjoint i64 %i.bm, %i.bk
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167

bb.ah:                                            ; preds = %bb.af
  %i.bo = and i64 %2, 4294967295
  %i.bp = lshr i64 %2, 32
  %i.bq = trunc nuw i64 %i.bp to i32
  %sh.diff.i.i158 = lshr i64 %2, 24
  %tr.sh.diff.i.i159 = trunc i64 %sh.diff.i.i158 to i32
  %.sroa.5.0.insert.shift.i.i160 = and i32 %tr.sh.diff.i.i159, 16777216
  %sh.diff11.i.i161 = lshr i64 %2, 33
  %tr.sh.diff12.i.i162 = trunc nuw nsw i64 %sh.diff11.i.i161 to i32
  %.sroa.4.0.insert.shift.i.i163 = and i32 %tr.sh.diff12.i.i162, 196608
  %.sroa.4.0.insert.insert.i.i164 = or disjoint i32 %.sroa.5.0.insert.shift.i.i160, %.sroa.4.0.insert.shift.i.i163
  %.sroa.03.0.insert.ext.i.i165 = and i32 %i.bq, 65535
  %.sroa.03.0.insert.insert.i.i166 = or disjoint i32 %.sroa.4.0.insert.insert.i.i164, %.sroa.03.0.insert.ext.i.i165
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167: ; preds = %bb.ah, %bb.ag
  %.sink.i.i168 = phi i64 [ %i.bn, %bb.ag ], [ %i.bo, %bb.ah ] ; 2 uses
  %.sroa.03.0.insert.insert.sink.i.i169 = phi i32 [ 33554432, %bb.ag ], [ %.sroa.03.0.insert.insert.i.i166, %bb.ah ]
  %.sroa.4.sroa.0.0.extract.trunc.i170 = trunc i64 %.sink.i.i168 to i32
  %.sroa.4.sroa.3.0.extract.shift.i171 = lshr i64 %.sink.i.i168, 32
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup16parse_userland24.exit

bb.ai:                                            ; preds = %bb.ae
  br i1 %.not.i.i135, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.br = lshr i64 %2, 19
  %i.bs = trunc i64 %i.br to i32
  %i.bt = ashr i32 %i.bs, 13
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i

bb.ak:                                            ; preds = %bb.ai
  %i.bu = lshr i64 %2, 32
  %sh.diff.i2.i136 = lshr i64 %2, 24
  %.sroa.5.0.insert.shift.i4.i137 = and i64 %sh.diff.i2.i136, 16777216
  %sh.diff11.i5.i138 = lshr i64 %2, 33
  %.sroa.4.0.insert.shift.i7.i139 = and i64 %sh.diff11.i5.i138, 196608
  %.sroa.4.0.insert.insert.i8.i140 = or disjoint i64 %.sroa.5.0.insert.shift.i4.i137, %.sroa.4.0.insert.shift.i7.i139
  %.sroa.03.0.insert.ext.i9.i141 = and i64 %i.bu, 65535
  %.sroa.03.0.insert.insert.i10.i142 = or disjoint i64 %.sroa.4.0.insert.insert.i8.i140, %.sroa.03.0.insert.ext.i9.i141
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i: ; preds = %bb.ak, %bb.aj
  %.sink.i11.i143 = phi i32 [ %i.bt, %bb.aj ], [ 0, %bb.ak ]
  %.sroa.03.0.insert.insert.sink.i12.i144 = phi i64 [ 33554432, %bb.aj ], [ %.sroa.03.0.insert.insert.i10.i142, %bb.ak ]
  %.sink13.in.i.i145 = trunc i64 %2 to i32
  %.sink13.i.i146 = and i32 %.sink13.in.i.i145, 16777215
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup16parse_userland24.exit

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup16parse_userland24.exit: ; preds = %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i
  %.sroa.4.sroa.0.0.i147 = phi i32 [ %.sroa.4.sroa.0.0.extract.trunc.i170, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167 ], [ %.sink.i11.i143, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i ]
  %.sroa.4.sroa.3.0.i148 = phi i64 [ %.sroa.4.sroa.3.0.extract.shift.i171, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167 ], [ %.sroa.03.0.insert.insert.sink.i12.i144, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i ]
  %.sroa.7.0.i149 = phi i32 [ %.sroa.03.0.insert.insert.sink.i.i169, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167 ], [ undef, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i ]
  %.sroa.3.0.i150 = phi i32 [ undef, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167 ], [ %.sink13.i.i146, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i ]
  %.sroa.0.0.i151 = phi i32 [ 0, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_rebase.exit.i167 ], [ 1, %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup19parse_arm64e_bind24.exit.i ]
  %i.bv = lshr i64 %2, 48
  %i.bw = and i64 %i.bv, 16376
  %.sroa.4.sroa.3.0.insert.shift.i154 = shl nuw i64 %.sroa.4.sroa.3.0.i148, 32
  %.sroa.4.sroa.0.0.insert.ext.i155 = zext i32 %.sroa.4.sroa.0.0.i147 to i64
  %.sroa.4.sroa.0.0.insert.insert.i156 = or disjoint i64 %.sroa.4.sroa.3.0.insert.shift.i154, %.sroa.4.sroa.0.0.insert.ext.i155
  store i64 %i.bw, ptr %0, align 8
  %.sroa.4241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i151, ptr %.sroa.4241.0..sroa_idx, align 8
  %.sroa.5242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.0.i150, ptr %.sroa.5242.0..sroa_idx, align 4
  %.sroa.6243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.sroa.0.0.insert.insert.i156, ptr %.sroa.6243.0..sroa_idx, align 8
  %.sroa.7244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.7.0.i149, ptr %.sroa.7244.0..sroa_idx, align 8
  br label %bb.bb

bb.al:                                            ; preds = %bb.a
  %.not.i172 = icmp sgt i64 %2, -1
  br i1 %.not.i172, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bx = and i64 %2, 68719476735
  %i.by = sub i64 %i.bx, %3                       ; 2 uses
  %i.bz = shl i64 %2, 20
  %i.ca = and i64 %i.bz, -72057594037927936
  %i.cb = or i64 %i.by, %i.ca
  %.sroa.03.0.extract.trunc.i = trunc i64 %i.by to i32
  %.sroa.03.4.extract.shift.i = lshr i64 %i.cb, 32
  %.sroa.03.4.extract.trunc.i = trunc nuw i64 %.sroa.03.4.extract.shift.i to i32
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit

bb.an:                                            ; preds = %bb.al
  %i.cc = trunc i64 %2 to i32
  %i.cd = and i32 %i.cc, 16777215
  %4 = lshr i64 %2, 24
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 255
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit: ; preds = %bb.am, %bb.an
  %.sroa.3.sroa.0.0.i = phi i32 [ %i.cd, %bb.an ], [ undef, %bb.am ]
  %.sroa.3.sroa.2.0.i = phi i32 [ %6, %bb.an ], [ %.sroa.03.0.extract.trunc.i, %bb.am ]
  %.sroa.3.sroa.4.0.i = phi i32 [ 33554432, %bb.an ], [ %.sroa.03.4.extract.trunc.i, %bb.am ]
  %.sroa.0.0.i173 = phi i32 [ 1, %bb.an ], [ 0, %bb.am ]
  %i.ce = lshr i64 %2, 49
  %i.cf = and i64 %i.ce, 16380
  store i64 %i.cf, ptr %0, align 8
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i173, ptr %.sroa.4247.0..sroa_idx, align 8
  %.sroa.5248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.sroa.0.0.i, ptr %.sroa.5248.0..sroa_idx, align 4
  %.sroa.6249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3.sroa.2.0.i, ptr %.sroa.6249.0..sroa_idx, align 8
  %.sroa.7250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.3.sroa.4.0.i, ptr %.sroa.7250.0..sroa_idx, align 4
  %.sroa.8251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 33554432, ptr %.sroa.8251.0..sroa_idx, align 8
  br label %bb.bb

bb.ao:                                            ; preds = %bb.a
  %.not.i175 = icmp sgt i64 %2, -1
  br i1 %.not.i175, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cg = and i64 %2, 64424509440
  %i.ch = shl i64 %2, 20
  %i.ci = and i64 %i.ch, -72057594037927936
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %.sroa.03.0.extract.trunc.i184 = trunc i64 %2 to i32
  %.sroa.03.4.extract.shift.i185 = lshr exact i64 %i.cj, 32
  %.sroa.03.4.extract.trunc.i186 = trunc nuw i64 %.sroa.03.4.extract.shift.i185 to i32
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit187

bb.aq:                                            ; preds = %bb.ao
  %i.ck = trunc i64 %2 to i32
  %i.cl = and i32 %i.ck, 16777215
  %7 = lshr i64 %2, 24
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 255
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit187

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_64.exit187: ; preds = %bb.ap, %bb.aq
  %.sroa.3.sroa.0.0.i176 = phi i32 [ %i.cl, %bb.aq ], [ undef, %bb.ap ]
  %.sroa.3.sroa.2.0.i177 = phi i32 [ %9, %bb.aq ], [ %.sroa.03.0.extract.trunc.i184, %bb.ap ]
  %.sroa.3.sroa.4.0.i178 = phi i32 [ 33554432, %bb.aq ], [ %.sroa.03.4.extract.trunc.i186, %bb.ap ]
  %.sroa.0.0.i179 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ap ]
  %i.cm = lshr i64 %2, 49
  %i.cn = and i64 %i.cm, 16380
  store i64 %i.cn, ptr %0, align 8
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i179, ptr %.sroa.4253.0..sroa_idx, align 8
  %.sroa.5254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.sroa.0.0.i176, ptr %.sroa.5254.0..sroa_idx, align 4
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3.sroa.2.0.i177, ptr %.sroa.6255.0..sroa_idx, align 8
  %.sroa.7256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.3.sroa.4.0.i178, ptr %.sroa.7256.0..sroa_idx, align 4
  %.sroa.8257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 33554432, ptr %.sroa.8257.0..sroa_idx, align 8
  br label %bb.bb

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup21parse_64_kernel_cache.exit: ; preds = %bb.a
  %.not.i188 = icmp sgt i64 %2, -1
  %.pre = lshr i64 %2, 49                         ; 2 uses
  %i.co = trunc i64 %.pre to i8
  %i.cp = and i8 %i.co, 3
  %i.cq = lshr i64 %2, 32
  %i.cr = trunc i64 %i.cq to i16
  %i.cs = lshr i64 %2, 48
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = and i8 %i.ct, 1
  %.sroa.2.0.i = select i1 %.not.i188, i8 2, i8 %i.cu
  %i.cv = and i64 %2, 1073741823
  %i.cw = lshr i64 %2, 30
  %i.cx = trunc i64 %i.cw to i8
  %i.cy = and i8 %i.cx, 3
  %i.cz = and i64 %.pre, 16380
  store i64 %i.cz, ptr %0, align 8
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %.sroa.4259.0..sroa_idx, align 8
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cv, ptr %.sroa.5261.0..sroa_idx, align 8
  %.sroa.6262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.cr, ptr %.sroa.6262.0..sroa_idx, align 8
  %.sroa.7263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.cp, ptr %.sroa.7263.0..sroa_idx, align 2
  %.sroa.8264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.2.0.i, ptr %.sroa.8264.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.cy, ptr %.sroa.9.0..sroa_idx, align 4
  br label %bb.bb

bb.ar:                                            ; preds = %bb.a
  %.not.i189 = icmp sgt i64 %2, -1
  br i1 %.not.i189, label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup21parse_64_kernel_cache.exit198, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.da = lshr i64 %2, 49
  %i.db = trunc i64 %i.da to i8
  %i.dc = and i8 %i.db, 3
  %i.dd = lshr i64 %2, 32
  %i.de = trunc i64 %i.dd to i16
  %i.df = lshr i64 %2, 48
  %i.dg = trunc i64 %i.df to i8
  %i.dh = and i8 %i.dg, 1
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup21parse_64_kernel_cache.exit198

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup21parse_64_kernel_cache.exit198: ; preds = %bb.ar, %bb.as
  %.sroa.0.sroa.0.0.i190 = phi i16 [ %i.de, %bb.as ], [ undef, %bb.ar ]
  %.sroa.0.sroa.2.0.i191 = phi i8 [ %i.dc, %bb.as ], [ undef, %bb.ar ]
  %.sroa.2.0.i192 = phi i8 [ %i.dh, %bb.as ], [ 2, %bb.ar ]
  %i.di = and i64 %2, 1073741823
  %i.dj = lshr i64 %2, 30
  %i.dk = trunc i64 %i.dj to i8
  %i.dl = and i8 %i.dk, 3
  %i.dm = lshr i64 %2, 51
  %i.dn = and i64 %i.dm, 4095
  store i64 %i.dn, ptr %0, align 8
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2, ptr %.sroa.4266.0..sroa_idx, align 8
  %.sroa.5268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.di, ptr %.sroa.5268.0..sroa_idx, align 8
  %.sroa.6269.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %.sroa.0.sroa.0.0.i190, ptr %.sroa.6269.0..sroa_idx, align 8
  %.sroa.7270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %.sroa.0.sroa.2.0.i191, ptr %.sroa.7270.0..sroa_idx, align 2
  %.sroa.8271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.2.0.i192, ptr %.sroa.8271.0..sroa_idx, align 1
  %.sroa.9272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.dl, ptr %.sroa.9272.0..sroa_idx, align 4
  br label %bb.bb

bb.at:                                            ; preds = %bb.a
  %i.do = trunc i64 %2 to i32                     ; 3 uses
  %.not.i199 = icmp sgt i32 %i.do, -1
  br i1 %.not.i199, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dp = and i64 %2, 67108863
  %i.dq = sub i64 %i.dp, %3                       ; 2 uses
  %.sroa.03.0.extract.trunc.i208 = trunc i64 %i.dq to i32
  %.sroa.03.4.extract.shift.i209 = lshr i64 %i.dq, 32
  %.sroa.03.4.extract.trunc.i210 = trunc nuw i64 %.sroa.03.4.extract.shift.i209 to i32
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_32.exit

bb.av:                                            ; preds = %bb.at
  %i.dr = and i32 %i.do, 1048575
  %i.ds = lshr i32 %i.do, 20
  %i.dt = and i32 %i.ds, 63
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_32.exit

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup8parse_32.exit: ; preds = %bb.au, %bb.av
  %.sroa.3.sroa.0.0.i200 = phi i32 [ %i.dr, %bb.av ], [ undef, %bb.au ]
  %.sroa.3.sroa.2.0.i201 = phi i32 [ %i.dt, %bb.av ], [ %.sroa.03.0.extract.trunc.i208, %bb.au ]
  %.sroa.3.sroa.4.0.i202 = phi i32 [ 33554432, %bb.av ], [ %.sroa.03.4.extract.trunc.i210, %bb.au ]
  %.sroa.0.0.i203 = phi i32 [ 1, %bb.av ], [ 0, %bb.au ]
  %i.du = lshr i64 %2, 24
  %i.dv = and i64 %i.du, 124
  store i64 %i.dv, ptr %0, align 8
  %.sroa.4275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.i203, ptr %.sroa.4275.0..sroa_idx, align 8
  %.sroa.5276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.3.sroa.0.0.i200, ptr %.sroa.5276.0..sroa_idx, align 4
  %.sroa.6277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.3.sroa.2.0.i201, ptr %.sroa.6277.0..sroa_idx, align 8
  %.sroa.7278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.3.sroa.4.0.i202, ptr %.sroa.7278.0..sroa_idx, align 4
  %.sroa.8279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 33554432, ptr %.sroa.8279.0..sroa_idx, align 8
  br label %bb.bb

bb.aw:                                            ; preds = %bb.a
  %i.dw = and i64 %2, 1073741823
  %i.dx = lshr i64 %2, 28
  %i.dy = and i64 %i.dx, 12
  store i64 %i.dy, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dw, ptr %.sroa.4.sroa.4.sroa.4.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 33554432, ptr %.sroa.4.sroa.4.sroa.5.0..sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.bb

bb.ax:                                            ; preds = %bb.a
  %i.dz = and i64 %2, 67108863
  %i.ea = lshr i64 %2, 24
  %i.eb = and i64 %i.ea, 252
  store i64 %i.eb, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.42.sroa.4.sroa.4.0..sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dz, ptr %.sroa.42.sroa.4.sroa.4.0..sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.42.sroa.4.sroa.5.0..sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 33554432, ptr %.sroa.42.sroa.4.sroa.5.0..sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.sroa_idx, align 8
  br label %bb.bb

_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup22parse_arm64e_segmented.exit: ; preds = %bb.a
  %.not.i211 = icmp sgt i64 %2, -1
  %.pre.i = lshr i64 %2, 49                       ; 2 uses
  %i.ec = trunc i64 %.pre.i to i8
  %i.ed = and i8 %i.ec, 3
  %i.ee = lshr i64 %2, 32
  %i.ef = trunc i64 %i.ee to i16
  %i.eg = lshr i64 %2, 48
  %i.eh = trunc i64 %i.eg to i8
  %i.ei = and i8 %i.eh, 1
  %.sroa.2.0.i214 = select i1 %.not.i211, i8 2, i8 %i.ei
  %i.ej = lshr i64 %2, 28
  %i.ek = trunc i64 %i.ej to i8
  %i.el = and i8 %i.ek, 15
  %i.em = and i64 %2, 268435455
  %i.en = and i64 %.pre.i, 16380
  store i64 %i.en, ptr %0, align 8
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 3, ptr %.sroa.4281.0..sroa_idx, align 8
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.em, ptr %.sroa.5283.0..sroa_idx, align 8
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ef, ptr %.sroa.6284.0..sroa_idx, align 8
  %.sroa.7285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.ed, ptr %.sroa.7285.0..sroa_idx, align 2
  %.sroa.8286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %.sroa.2.0.i214, ptr %.sroa.8286.0..sroa_idx, align 1
  %.sroa.9287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.el, ptr %.sroa.9287.0..sroa_idx, align 4
  br label %bb.bb

bb.ay:                                            ; preds = %bb.a
  %.not.i220 = icmp sgt i64 %2, -1
  br i1 %.not.i220, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eo = and i64 %2, 17179869183
  %i.ep = shl i64 %2, 22
  %i.eq = and i64 %i.ep, -72057594037927936
  %i.er = or disjoint i64 %i.eq, %i.eo
  br label %_RNvMs8_NtNtNtCseHTIzroA4w0_6object4read5macho5fixupNtB5_5Fixup25parse_arm64e_shared_cache.exit

bb.ba:                                            ; preds = %bb.ay
  %i.es = lshr i64 %2, 34
  %i.et = trunc nuw nsw i64 %i.es to i32
  %sh.diff.i = lshr i64 %2, 26
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
end_hunk_0
