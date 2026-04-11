inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ] ; 3 uses
  %i.co = load ptr, ptr %i.cd, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !66)
end_hunk_0
begin_hunk_1_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
          to label %.preheader unwind label %bb.ae

.preheader:                                       ; preds = %_ZN4glTF8LazyDictINS_9AnimationEE6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  br label %bb.af

end_hunk_1
begin_hunk_2_@_ZN6Assimp12glTFExporter16ExportAnimationsEv:bb.a
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit93: ; preds = %bb.aj, %bb.ai, %bb.ag
  %.pn50 = phi i64 [ 1040, %bb.ag ], [ 1056, %bb.ai ], [ 1028, %bb.aj ]
  %.046.in = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.pn50
  %.046 = load i32, ptr %.046.in, align 4
  %i.ib = icmp slt i32 %.046, 1
  br i1 %i.ib, label %bb.bz, label %bb.ak
end_hunk_2
begin_hunk_3_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.020.i = phi ptr [ %i.br, %bb.p ], [ %i.bp, %bb.o ] ; 7 uses
  %.0.i = phi i32 [ %i.bs, %bb.p ], [ %i.n, %bb.o ] ; 6 uses
  %i.bt = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.bt, label %bb.r, label %bb.s
end_hunk_3
begin_hunk_4_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  store i8 %i.cc, ptr %i.bx, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.cf = load i8, ptr %i.ce, align 1
  store i8 %i.cf, ptr %i.cd, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.s:                                             ; preds = %bb.q
  %i.cg = icmp samesign ugt i32 %.0.i, 9
end_hunk_4
begin_hunk_5_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  store i8 %i.ck, ptr %.020.i, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1
  %i.cn = load i8, ptr %i.cm, align 1
  store i8 %i.cn, ptr %i.cl, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.u:                                             ; preds = %bb.s
  %i.co = trunc nuw nsw i32 %.0.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  store i8 %i.cp, ptr %.020.i, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

_ZN9rapidjson8internal13WriteExponentEiPc.exit:   ; preds = %bb.r, %bb.t, %bb.u
  %.pn.i = phi i64 [ 3, %bb.r ], [ 2, %bb.t ], [ 1, %bb.u ]
  %.1.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 %.pn.i
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit.a

bb.v:                                             ; preds = %bb.n
end_hunk_5
begin_hunk_6_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.020.i109 = phi ptr [ %i.cz, %bb.w ], [ %i.cx, %bb.v ] ; 7 uses
  %.0.i110 = phi i32 [ %i.da, %bb.w ], [ %i.n, %bb.v ] ; 6 uses
  %i.db = icmp samesign ugt i32 %.0.i110, 99
  br i1 %i.db, label %bb.y, label %bb.z
end_hunk_6
begin_hunk_7_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  store i8 %i.dk, ptr %i.df, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dn = load i8, ptr %i.dm, align 1
  store i8 %i.dn, ptr %i.dl, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit113

bb.z:                                             ; preds = %bb.x
  %i.do = icmp samesign ugt i32 %.0.i110, 9
end_hunk_7
begin_hunk_8_@_ZN9rapidjson8internal8PrettifyEPciii:bb.a
  store i8 %i.ds, ptr %.020.i109, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dv = load i8, ptr %i.du, align 1
  store i8 %i.dv, ptr %i.dt, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit113

bb.ab:                                            ; preds = %bb.z
  %i.dw = trunc nuw nsw i32 %.0.i110 to i8
  %i.dx = or disjoint i8 %i.dw, 48
  store i8 %i.dx, ptr %.020.i109, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit113

_ZN9rapidjson8internal13WriteExponentEiPc.exit113: ; preds = %bb.y, %bb.aa, %bb.ab
  %.pn.i111 = phi i64 [ 3, %bb.y ], [ 2, %bb.aa ], [ 1, %bb.ab ]
  %.1.i112 = getelementptr inbounds nuw i8, ptr %.020.i109, i64 %.pn.i111
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit.a

_ZN9rapidjson8internal13WriteExponentEiPc.exit.a: ; preds = %.loopexit143, %.loopexit, %.thread, %bb.k, %_ZN9rapidjson8internal13WriteExponentEiPc.exit113, %_ZN9rapidjson8internal13WriteExponentEiPc.exit, %bb.m, %bb.f, %._crit_edge126, %._crit_edge129
  %.3 = phi ptr [ %i.m, %._crit_edge129 ], [ %i.af, %._crit_edge126 ], [ %i.ad, %.thread ], [ %i.ai, %bb.f ], [ %.1.i112, %_ZN9rapidjson8internal13WriteExponentEiPc.exit113 ], [ %i.bm, %bb.m ], [ %.1.i, %_ZN9rapidjson8internal13WriteExponentEiPc.exit ], [ %i.bh, %bb.k ], [ %i.be, %.loopexit143 ], [ %i.bd, %.loopexit ]
  ret ptr %.3
}

end_hunk_8
begin_hunk_9_@_ZN9rapidjson8internal6u32toaEjPc:bb.a
  store i8 %i.bw, ptr %1, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %i.bz = load i8, ptr %i.by, align 1
  store i8 %i.bz, ptr %i.bx, align 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ca = trunc nuw nsw i32 %i.bq to i8
  %i.cb = or disjoint i8 %i.ca, 48
  store i8 %i.cb, ptr %1, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi i64 [ 2, %bb.n ], [ 1, %bb.o ]
  %.6 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn ; 9 uses
  %i.cc = udiv i32 %i.br, 10000
  %i.cd = urem i32 %i.br, 10000
  %i.ce = udiv i32 %i.br, 1000000
end_hunk_9
begin_hunk_10_@_ZN9rapidjson8internal6u64toaEmPc:bb.a
bb.x:                                             ; preds = %bb.w
  %i.fi = trunc nuw i64 %i.ff to i8
  %i.fj = or disjoint i8 %i.fi, 48
  store i8 %i.fj, ptr %1, align 1
  br label %bb.ad

end_hunk_10
begin_hunk_11_@_ZN9rapidjson8internal6u64toaEmPc:bb.a
  store i8 %i.fn, ptr %1, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fq = load i8, ptr %i.fp, align 1
  store i8 %i.fq, ptr %i.fo, align 1
  br label %bb.ad

end_hunk_11
begin_hunk_12_@_ZN9rapidjson8internal6u64toaEmPc:bb.a
  store i8 %i.gb, ptr %i.fw, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.ge = load i8, ptr %i.gd, align 1
  store i8 %i.ge, ptr %i.gc, align 1
  br label %bb.ad

end_hunk_12
begin_hunk_13_@_ZN9rapidjson8internal6u64toaEmPc:bb.a
  store i8 %i.gq, ptr %i.gn, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gt = load i8, ptr %i.gs, align 1
  store i8 %i.gt, ptr %i.gr, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac, %bb.ab, %bb.x
  %.pn = phi i64 [ 1, %bb.x ], [ 2, %bb.z ], [ 3, %bb.ab ], [ 4, %bb.ac ]
  %.14 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn ; 17 uses
  %i.gu = udiv i64 %i.fg, 100000000
  %i.gv = trunc nuw nsw i64 %i.gu to i32          ; 3 uses
  %i.gw = urem i64 %i.fg, 100000000
end_hunk_13
