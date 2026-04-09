inline.NumInlined: 57
inline.NumDeleted: 31
begin_hunk_0_@_ZN5o3dgc7IUpdateEPll:bb.a
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = add i64 %i.n, %i.p
  %i.r = add i64 %i.q, 2
  %i.s = ashr i64 %i.r, 2
  %i.t = load i64, ptr %i.l, align 8
  %i.u = sub nsw i64 %i.t, %i.s
end_hunk_0
begin_hunk_1_@_ZN5o3dgc7IUpdateEPll:bb.a
  %i.w = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.p, %i.y
  %i.aa = add i64 %i.z, 2
  %i.ab = ashr i64 %i.aa, 2
  %i.ac = load i64, ptr %i.w, align 8
  %i.ad = sub nsw i64 %i.ac, %i.ab
end_hunk_1
begin_hunk_2_@_ZN5o3dgc7IUpdateEPll:bb.a
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ai, %i.ak
  %i.am = add i64 %i.al, 2
  %i.an = ashr i64 %i.am, 2
  %i.ao = load i64, ptr %i.ag, align 8
  %i.ap = sub nsw i64 %i.ao, %i.an
end_hunk_2
begin_hunk_3_@_ZN5o3dgc8IPredictEPll:bb.a
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = add i64 %i.i, %i.k
  %i.m = add i64 %i.l, 1
  %i.n = ashr i64 %i.m, 1
  %i.o = load i64, ptr %i.g, align 8
  %i.p = add nsw i64 %i.n, %i.o
end_hunk_3
begin_hunk_4_@_ZN5o3dgc8IPredictEPll:bb.a
  %i.r = getelementptr i8, ptr %i.q, i64 16       ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.k, %i.t
  %i.v = add i64 %i.u, 1
  %i.w = ashr i64 %i.v, 1
  %i.x = load i64, ptr %i.r, align 8
  %i.y = add nsw i64 %i.w, %i.x
end_hunk_4
begin_hunk_5_@_ZN5o3dgc8IPredictEPll:bb.a
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add i64 %i.ad, %i.af
  %i.ah = add i64 %i.ag, 1
  %i.ai = ashr i64 %i.ah, 1
  %i.aj = load i64, ptr %i.ab, align 8
  %i.ak = add nsw i64 %i.ai, %i.aj
end_hunk_5
begin_hunk_6_@_ZN5o3dgc10ITransformEPlm:bb.a
  br i1 %i.u, label %.preheader.i.preheader, label %_ZN5o3dgc5MergeEPll.exit

.preheader.i.preheader:                           ; preds = %bb.b
  %i.v = add i64 %i.r, %i.o
  %2 = add nsw i64 %i.r, %i.p
  %i.w = and i64 %i.v, 1
  %lcmp.mod.not.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not.not, label %.preheader.i.prol, label %.preheader.i.prol.loopexit

end_hunk_6
begin_hunk_7_@_ZN5o3dgc10ITransformEPlm:bb.a
.preheader.i.prol.loopexit:                       ; preds = %._crit_edge.i.prol, %.preheader.i.preheader
  %.01519.in.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %.01519.i.prol, %._crit_edge.i.prol ]
  %.01418.i.unr = phi i64 [ %i.t, %.preheader.i.preheader ], [ %i.ac, %._crit_edge.i.prol ]
  %i.ad = icmp eq i64 %2, 2
  br i1 %i.ad, label %_ZN5o3dgc5MergeEPll.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %._crit_edge.i.1
end_hunk_7
begin_hunk_8_@_ZN5o3dgc10ITransformEPlm:bb.a
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = add i64 %i.ay, %i.ba
  %i.bc = add i64 %i.bb, 2
  %i.bd = ashr i64 %i.bc, 2
  %i.be = load i64, ptr %i.aw, align 8
  %i.bf = sub nsw i64 %i.be, %i.bd
end_hunk_8
begin_hunk_9_@_ZN5o3dgc10ITransformEPlm:bb.a
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = add i64 %i.bs, %i.bu
  %i.bw = add i64 %i.bv, 1
  %i.bx = ashr i64 %i.bw, 1
  %i.by = load i64, ptr %i.bq, align 8
  %i.bz = add nsw i64 %i.bx, %i.by
end_hunk_9
