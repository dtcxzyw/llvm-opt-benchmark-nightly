Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrLoweringX64?download=true
inline.NumInlined: 3349
inline.NumDeleted: 241
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4Luau7CodeGen3X6413IrLoweringX649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
  %i.dg = icmp eq i32 %i.df, 7
  br i1 %i.dg, label %bb.ap, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.ap:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5234
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02811.0.copyload = load i8, ptr %i.cr, align 2, !tbaa !72
  %i.dj = load i32, ptr %i.ct, align 8, !tbaa !73
  %.not.i5235.not = icmp eq i32 %i.dj, 0
  br i1 %.not.i5235.not, label %bb.aq, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5236, !prof !233

bb.aq:                                            ; preds = %bb.ap
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i32 noundef 1)
  %.pre14861 = load ptr, ptr %i.cs, align 8, !tbaa !74
  %.sroa.02809.0.copyload.pre = load i32, ptr %.pre14861, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5236

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5236:   ; preds = %bb.ap, %bb.aq
  %.sroa.02809.0.copyload = phi i32 [ %i.de, %bb.ap ], [ %.sroa.02809.0.copyload.pre, %bb.aq ]
  %i.dk = and i32 %.sroa.02809.0.copyload, -16
  %.sroa.7.0.insert.ext.i5237 = zext i32 %i.dk to i64
  %.sroa.7.0.insert.shift.i5238 = shl nuw i64 %.sroa.7.0.insert.ext.i5237, 32
  %.sroa.0.0.insert.insert.i5239 = or disjoint i64 %.sroa.7.0.insert.shift.i5238, 342130689
  %.sroa.313639.0.insert.ext = zext i8 %.sroa.02811.0.copyload to i64
  %.sroa.313639.0.insert.shift = shl nuw nsw i64 %.sroa.313639.0.insert.ext, 16
  %.sroa.213638.0.insert.insert = or disjoint i64 %.sroa.313639.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.di, i64 %.sroa.213638.0.insert.insert, i64 %.sroa.0.0.insert.insert.i5239)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.ar:                                            ; preds = %bb.a
  %i.dl = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 5, i32 noundef %2)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  store i8 %i.dl, ptr %i.dm, align 2, !tbaa !72
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !73
  %.not.i5240.not = icmp eq i32 %i.dp, 0
  br i1 %.not.i5240.not, label %bb.as, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5241, !prof !233

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5241

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5241:   ; preds = %bb.ar, %bb.as
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !74 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4            ; 3 uses
  %i.ds = and i32 %i.dr, 15
  %i.dt = icmp eq i32 %i.ds, 6
  br i1 %i.dt, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5241
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02807.0.copyload = load i8, ptr %i.dm, align 2, !tbaa !72
  %i.dw = load i32, ptr %i.do, align 8, !tbaa !73 ; 2 uses
  %.not.i5242.not = icmp eq i32 %i.dw, 0
  br i1 %.not.i5242.not, label %bb.au, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243, !prof !233

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 1)
  %.pre14855 = load ptr, ptr %i.dn, align 8, !tbaa !74 ; 2 uses
  %.sroa.02802.0.copyload.pre = load i32, ptr %.pre14855, align 4, !tbaa !72
  %.pre14857 = load i32, ptr %i.do, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243:   ; preds = %bb.at, %bb.au
  %i.dx = phi i32 [ %i.dw, %bb.at ], [ %.pre14857, %bb.au ]
  %.sroa.02802.0.copyload = phi i32 [ %i.dr, %bb.at ], [ %.sroa.02802.0.copyload.pre, %bb.au ]
  %i.dy = phi ptr [ %i.dq, %bb.at ], [ %.pre14855, %bb.au ]
  %i.dz = and i32 %.sroa.02802.0.copyload, -16
  %.not.i5247 = icmp ugt i32 %i.dx, 1
  br i1 %.not.i5247, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5248, label %bb.av, !prof !234

bb.av:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 2)
  %.pre14858 = load ptr, ptr %i.dn, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5248

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5248:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243, %bb.av
  %i.ea = phi ptr [ %i.dy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5243 ], [ %.pre14858, %bb.av ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.sroa.02801.0.copyload = load i32, ptr %i.eb, align 4, !tbaa !72
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = lshr i32 %.sroa.02801.0.copyload, 4
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !81
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eh, i64 %i.eg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !72
  %i.el = add nsw i32 %i.ek, %i.dz
  %.sroa.21.0.insert.ext.i = zext i32 %i.el to i64
  %.sroa.21.0.insert.shift.i5251 = shl nuw i64 %.sroa.21.0.insert.ext.i, 32
  %.sroa.013628.0.insert.insert = or disjoint i64 %.sroa.21.0.insert.shift.i5251, 326402049
  %.sroa.313634.0.insert.ext = zext i8 %.sroa.02807.0.copyload to i64
  %.sroa.313634.0.insert.shift = shl nuw nsw i64 %.sroa.313634.0.insert.ext, 16
  %.sroa.213633.0.insert.insert = or disjoint i64 %.sroa.313634.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovssENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.dv, i64 %.sroa.213633.0.insert.insert, i64 %.sroa.013628.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.aw:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5241
  %i.em = load i32, ptr %i.do, align 8, !tbaa !73
  %.not.i5254.not = icmp eq i32 %i.em, 0
  br i1 %.not.i5254.not, label %bb.ax, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5255, !prof !233

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 1)
  %.pre14849 = load ptr, ptr %i.dn, align 8, !tbaa !74 ; 2 uses
  %.pre14850 = load i32, ptr %.pre14849, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5255

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5255:   ; preds = %bb.aw, %bb.ax
  %i.en = phi i32 [ %i.dr, %bb.aw ], [ %.pre14850, %bb.ax ] ; 2 uses
  %i.eo = phi ptr [ %i.dq, %bb.aw ], [ %.pre14849, %bb.ax ]
  %i.ep = and i32 %i.en, 15
  %i.eq = icmp eq i32 %i.ep, 7
  br i1 %i.eq, label %bb.ay, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.ay:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5255
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02800.0.copyload = load i8, ptr %i.dm, align 2, !tbaa !72
  %i.et = load i32, ptr %i.do, align 8, !tbaa !73 ; 2 uses
  %.not.i5256.not = icmp eq i32 %i.et, 0
  br i1 %.not.i5256.not, label %bb.az, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257, !prof !233

bb.az:                                            ; preds = %bb.ay
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 1)
  %.pre14851 = load ptr, ptr %i.dn, align 8, !tbaa !74 ; 2 uses
  %.sroa.02795.0.copyload.pre = load i32, ptr %.pre14851, align 4, !tbaa !72
  %.pre14853 = load i32, ptr %i.do, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257:   ; preds = %bb.ay, %bb.az
  %i.eu = phi i32 [ %i.et, %bb.ay ], [ %.pre14853, %bb.az ]
  %.sroa.02795.0.copyload = phi i32 [ %i.en, %bb.ay ], [ %.sroa.02795.0.copyload.pre, %bb.az ]
  %i.ev = phi ptr [ %i.eo, %bb.ay ], [ %.pre14851, %bb.az ]
  %i.ew = and i32 %.sroa.02795.0.copyload, -16
  %.not.i5267 = icmp ugt i32 %i.eu, 1
  br i1 %.not.i5267, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5268, label %bb.ba, !prof !234

bb.ba:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i32 noundef 2)
  %.pre14854 = load ptr, ptr %i.dn, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5268

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5268:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257, %bb.ba
  %i.ex = phi ptr [ %i.ev, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5257 ], [ %.pre14854, %bb.ba ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.02794.0.copyload = load i32, ptr %i.ey, align 4, !tbaa !72
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  %i.fc = lshr i32 %.sroa.02794.0.copyload, 4
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !81
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.fd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !72
  %i.fi = add nsw i32 %i.fh, %i.ew
  %.sroa.21.0.insert.ext.i5271 = zext i32 %i.fi to i64
  %.sroa.21.0.insert.shift.i5272 = shl nuw i64 %.sroa.21.0.insert.ext.i5271, 32
  %.sroa.013619.0.insert.insert = or disjoint i64 %.sroa.21.0.insert.shift.i5272, 325353473
  %.sroa.313625.0.insert.ext = zext i8 %.sroa.02800.0.copyload to i64
  %.sroa.313625.0.insert.shift = shl nuw nsw i64 %.sroa.313625.0.insert.ext, 16
  %.sroa.213624.0.insert.insert = or disjoint i64 %.sroa.313625.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX646vmovssENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.es, i64 %.sroa.213624.0.insert.insert, i64 %.sroa.013619.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bb:                                            ; preds = %bb.a
  %i.fj = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 5, i32 noundef %2)
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 4 uses
  store i8 %i.fj, ptr %i.fk, align 2, !tbaa !72
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !73 ; 2 uses
  %i.fo = icmp ugt i32 %i.fn, 1
  br i1 %i.fo, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fp = load ptr, ptr %i.fl, align 8, !tbaa !74
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4            ; 2 uses
  %i.fs = and i32 %i.fr, 15
  %.not5171 = icmp eq i32 %i.fs, 0
  br i1 %.not5171, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5276

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5276:   ; preds = %bb.bc
  %.phi.trans.insert14835 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre14836 = load ptr, ptr %.phi.trans.insert14835, align 8, !tbaa !78
  %.phi.trans.insert14837 = getelementptr inbounds nuw i8, ptr %.pre14836, i64 48
  %.pre14838 = load ptr, ptr %.phi.trans.insert14837, align 8, !tbaa !81
  %i.ft = lshr i32 %i.fr, 4
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.pre14838, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !72
  %i.fy = zext i32 %i.fx to i64
  %i.fz = shl nuw i64 %i.fy, 32
  %i.ga = or disjoint i64 %i.fz, 352354305
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278

bb.bd:                                            ; preds = %bb.bb
  %.not.i5277.not = icmp eq i32 %i.fn, 0
  br i1 %.not.i5277.not, label %bb.be, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278, !prof !235

bb.be:                                            ; preds = %bb.bd
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5276, %bb.bc, %bb.bd, %bb.be
  %.sroa.5.0.insert.ext.i529515162 = phi i64 [ 352354305, %bb.be ], [ 352354305, %bb.bd ], [ 352354305, %bb.bc ], [ %i.ga, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5276 ]
  %i.gb = load ptr, ptr %i.fl, align 8, !tbaa !74
  %i.gc = load i32, ptr %i.gb, align 4            ; 3 uses
  %i.gd = and i32 %i.gc, 15
  %i.ge = icmp eq i32 %i.gd, 6
  br i1 %i.ge, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02790.0.copyload = load i8, ptr %i.fk, align 2, !tbaa !72
  %i.gh = load i32, ptr %i.fm, align 8, !tbaa !73
  %.not.i5279.not = icmp eq i32 %i.gh, 0
  br i1 %.not.i5279.not, label %bb.bg, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5280, !prof !233

bb.bg:                                            ; preds = %bb.bf
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  %.pre14847 = load ptr, ptr %i.fl, align 8, !tbaa !74
  %.sroa.02788.0.copyload.pre = load i32, ptr %.pre14847, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5280

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5280:   ; preds = %bb.bf, %bb.bg
  %.sroa.02788.0.copyload = phi i32 [ %i.gc, %bb.bf ], [ %.sroa.02788.0.copyload.pre, %bb.bg ]
  %i.gi = and i32 %.sroa.02788.0.copyload, -16
  %.sroa.7.0.insert.ext.i5281 = zext i32 %i.gi to i64
  %.sroa.7.0.insert.shift.i5282 = shl nuw i64 %.sroa.7.0.insert.ext.i5281, 32
  %.sroa.0.0.insert.insert.i5283 = or disjoint i64 %.sroa.7.0.insert.shift.i5282, 359956481
  %.sroa.313616.0.insert.ext = zext i8 %.sroa.02790.0.copyload to i64
  %.sroa.313616.0.insert.shift = shl nuw nsw i64 %.sroa.313616.0.insert.ext, 16
  %.sroa.213615.0.insert.insert = or disjoint i64 %.sroa.313616.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gg, i64 %.sroa.213615.0.insert.insert, i64 %.sroa.0.0.insert.insert.i5283)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bh:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5278
  %i.gj = load i32, ptr %i.fm, align 8, !tbaa !73
  %.not.i5284.not = icmp eq i32 %i.gj, 0
  br i1 %.not.i5284.not, label %bb.bi, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5285, !prof !233

bb.bi:                                            ; preds = %bb.bh
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  %.pre14839 = load ptr, ptr %i.fl, align 8, !tbaa !74
  %.pre14840 = load i32, ptr %.pre14839, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5285

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5285:   ; preds = %bb.bh, %bb.bi
  %i.gk = phi i32 [ %i.gc, %bb.bh ], [ %.pre14840, %bb.bi ] ; 3 uses
  %i.gl = and i32 %i.gk, 15
  %i.gm = icmp eq i32 %i.gl, 7
  br i1 %i.gm, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5285
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02787.0.copyload = load i8, ptr %i.fk, align 2, !tbaa !72
  %i.gp = load i32, ptr %i.fm, align 8, !tbaa !73
  %.not.i5286.not = icmp eq i32 %i.gp, 0
  br i1 %.not.i5286.not, label %bb.bk, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5287, !prof !233

bb.bk:                                            ; preds = %bb.bj
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  %.pre14845 = load ptr, ptr %i.fl, align 8, !tbaa !74
  %.sroa.02785.0.copyload.pre = load i32, ptr %.pre14845, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5287

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5287:   ; preds = %bb.bj, %bb.bk
  %.sroa.02785.0.copyload = phi i32 [ %i.gk, %bb.bj ], [ %.sroa.02785.0.copyload.pre, %bb.bk ]
  %i.gq = and i32 %.sroa.02785.0.copyload, -16
  %.sroa.7.0.insert.ext.i5288 = zext i32 %i.gq to i64
  %.sroa.7.0.insert.shift.i5289 = shl nuw i64 %.sroa.7.0.insert.ext.i5288, 32
  %.sroa.0.0.insert.insert.i5290 = or disjoint i64 %.sroa.7.0.insert.shift.i5289, 358907905
  %.sroa.313611.0.insert.ext = zext i8 %.sroa.02787.0.copyload to i64
  %.sroa.313611.0.insert.shift = shl nuw nsw i64 %.sroa.313611.0.insert.ext, 16
  %.sroa.213610.0.insert.insert = or disjoint i64 %.sroa.313611.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.go, i64 %.sroa.213610.0.insert.insert, i64 %.sroa.0.0.insert.insert.i5290)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bl:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5285
  %i.gr = load i32, ptr %i.fm, align 8, !tbaa !73
  %.not.i5291.not = icmp eq i32 %i.gr, 0
  br i1 %.not.i5291.not, label %bb.bm, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5292, !prof !233

bb.bm:                                            ; preds = %bb.bl
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  %.pre14841 = load ptr, ptr %i.fl, align 8, !tbaa !74
  %.pre14842 = load i32, ptr %.pre14841, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5292

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5292:   ; preds = %bb.bl, %bb.bm
  %i.gs = phi i32 [ %i.gk, %bb.bl ], [ %.pre14842, %bb.bm ] ; 2 uses
  %i.gt = and i32 %i.gs, 15
  %i.gu = icmp eq i32 %i.gt, 4
  br i1 %i.gu, label %bb.bn, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bn:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5292
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02784.0.copyload = load i8, ptr %i.fk, align 2, !tbaa !72
  %i.gx = load i32, ptr %i.fm, align 8, !tbaa !73
  %.not.i5293.not = icmp eq i32 %i.gx, 0
  br i1 %.not.i5293.not, label %bb.bo, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5294, !prof !233

bb.bo:                                            ; preds = %bb.bn
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, i32 noundef 1)
  %.pre14843 = load ptr, ptr %i.fl, align 8, !tbaa !74
  %.sroa.02781.0.copyload.pre = load i32, ptr %.pre14843, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5294

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5294:   ; preds = %bb.bn, %bb.bo
  %.sroa.02781.0.copyload = phi i32 [ %i.gs, %bb.bn ], [ %.sroa.02781.0.copyload.pre, %bb.bo ]
  %i.gy = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02781.0.copyload)
  %.sroa.3.0.insert.ext.i5297.tr = zext i8 %i.gy to i64
  %i.gz = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5297.tr, 16
  %.sroa.013600.0.insert.insert = or i64 %.sroa.5.0.insert.ext.i529515162, %i.gz
  %.sroa.313606.0.insert.ext = zext i8 %.sroa.02784.0.copyload to i64
  %.sroa.313606.0.insert.shift = shl nuw nsw i64 %.sroa.313606.0.insert.ext, 16
  %.sroa.213605.0.insert.insert = or disjoint i64 %.sroa.313606.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.gw, i64 %.sroa.213605.0.insert.insert, i64 %.sroa.013600.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bp:                                            ; preds = %bb.a
  %i.ha = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4, i32 noundef %2) ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  store i8 %i.ha, ptr %i.hb, align 2, !tbaa !72
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.313597.0.insert.ext = zext i8 %i.ha to i64
  %.sroa.313597.0.insert.shift = shl nuw nsw i64 %.sroa.313597.0.insert.ext, 16
  %.sroa.213596.0.insert.insert = or disjoint i64 %.sroa.313597.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.hd, i64 %.sroa.213596.0.insert.insert, i64 206496366593)
  %i.he = load ptr, ptr %i.hc, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02777.0.copyload = load i8, ptr %i.hb, align 2, !tbaa !72
  %.sroa.3.0.insert.ext.i5302 = zext i8 %.sroa.02777.0.copyload to i64
  %.sroa.3.0.insert.shift.i5303 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5302, 16 ; 2 uses
  %.sroa.013586.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i5303, 69055053825
  %.sroa.213591.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i5303, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.he, i64 %.sroa.213591.0.insert.insert, i64 %.sroa.013586.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bq:                                            ; preds = %bb.a
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 20 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5307 = icmp ugt i32 %i.hh, 1
  br i1 %.not.i5307, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5308, label %bb.br, !prof !234

bb.br:                                            ; preds = %bb.bq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5308

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5308:   ; preds = %bb.bq, %bb.br
  %i.hi = load ptr, ptr %i.hf, align 8, !tbaa !74 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4            ; 3 uses
  %i.hl = and i32 %i.hk, 15
  %i.hm = icmp eq i32 %i.hl, 4
  br i1 %i.hm, label %bb.bs, label %bb.bz

bb.bs:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5308
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.hn = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5309 = icmp ugt i32 %i.hn, 1
  br i1 %.not.i5309, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5310, label %bb.bt, !prof !234

bb.bt:                                            ; preds = %bb.bs
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 2)
  %.pre14832 = load ptr, ptr %i.hf, align 8, !tbaa !74
  %.phi.trans.insert14833 = getelementptr inbounds nuw i8, ptr %.pre14832, i64 4
  %.pre14834 = load i32, ptr %.phi.trans.insert14833, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5310

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5310:   ; preds = %bb.bs, %bb.bt
  %i.ho = phi i32 [ %i.hk, %bb.bs ], [ %.pre14834, %bb.bt ]
  store i32 %i.ho, ptr %4, align 4, !tbaa !72
  %i.hp = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX6415allocRegOrReuseENS1_7SizeX64EjSt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4, i32 noundef %2, ptr nonnull %4, i64 1) ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 4 uses
  store i8 %i.hp, ptr %i.hq, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.hr = and i8 %i.hp, -8
  %i.hs = or disjoint i8 %i.hr, 3
  %i.ht = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5311 = icmp ugt i32 %i.ht, 1
  br i1 %.not.i5311, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5312, label %bb.bu, !prof !234

bb.bu:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5310
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5312

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5312:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5310, %bb.bu
  %i.hu = load ptr, ptr %i.hf, align 8, !tbaa !74
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %.sroa.02769.0.copyload = load i32, ptr %i.hv, align 4, !tbaa !72
  %i.hw = call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02769.0.copyload)
  %.not13736 = icmp eq i8 %i.hs, %i.hw
  br i1 %.not13736, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5312
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02767.0.copyload = load i8, ptr %i.hq, align 2, !tbaa !72
  %i.hz = and i8 %.sroa.02767.0.copyload, -8
  %i.ia = or disjoint i8 %i.hz, 3
  %i.ib = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5313 = icmp ugt i32 %i.ib, 1
  br i1 %.not.i5313, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5314, label %bb.bw, !prof !234

bb.bw:                                            ; preds = %bb.bv
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5314

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5314:   ; preds = %bb.bv, %bb.bw
  %i.ic = load ptr, ptr %i.hf, align 8, !tbaa !74
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %.sroa.02765.0.copyload = load i32, ptr %i.id, align 4, !tbaa !72
  %i.ie = call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02765.0.copyload)
  %.sroa.313582.0.insert.ext = zext i8 %i.ia to i64
  %.sroa.313582.0.insert.shift = shl nuw nsw i64 %.sroa.313582.0.insert.ext, 16
  %.sroa.213581.0.insert.insert = or disjoint i64 %.sroa.313582.0.insert.shift, 268468224
  %.sroa.313577.0.insert.ext = zext i8 %i.ie to i64
  %.sroa.313577.0.insert.shift = shl nuw nsw i64 %.sroa.313577.0.insert.ext, 16
  %.sroa.213576.0.insert.insert = or disjoint i64 %.sroa.313577.0.insert.shift, 268468224
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.hy, i64 %.sroa.213581.0.insert.insert, i64 %.sroa.213576.0.insert.insert)
  br label %bb.bx

bb.bx:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5314, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5312
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02763.0.copyload = load i8, ptr %i.hq, align 2, !tbaa !72
  %i.ih = and i8 %.sroa.02763.0.copyload, -8
  %i.ii = or disjoint i8 %i.ih, 3
  %.sroa.313572.0.insert.ext = zext i8 %i.ii to i64
  %.sroa.313572.0.insert.shift = shl nuw nsw i64 %.sroa.313572.0.insert.ext, 16
  %.sroa.213571.0.insert.insert = or disjoint i64 %.sroa.313572.0.insert.shift, 268468224
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643shlENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ig, i64 %.sroa.213571.0.insert.insert, i64 17456726018)
  %i.ij = load ptr, ptr %i.if, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02762.0.copyload = load i8, ptr %i.hq, align 2, !tbaa !72
  %i.ik = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5315.not = icmp eq i32 %i.ik, 0
  br i1 %.not.i5315.not, label %bb.by, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5316, !prof !233

bb.by:                                            ; preds = %bb.bx
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5316

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5316:   ; preds = %bb.bx, %bb.by
  %i.il = load ptr, ptr %i.hf, align 8, !tbaa !74
  %.sroa.02759.0.copyload = load i32, ptr %i.il, align 4, !tbaa !72
  %i.im = call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02759.0.copyload)
  %.sroa.3.0.insert.ext.i5317 = zext i8 %i.im to i64
  %.sroa.3.0.insert.shift.i5318 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5317, 16
  %.sroa.013556.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i5318, 103414792193
  %.sroa.313562.0.insert.ext = zext i8 %.sroa.02762.0.copyload to i64
  %.sroa.313562.0.insert.shift = shl nuw nsw i64 %.sroa.313562.0.insert.ext, 16
  %.sroa.213561.0.insert.insert = or disjoint i64 %.sroa.313562.0.insert.shift, 268468224
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643addENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.ij, i64 %.sroa.213561.0.insert.insert, i64 %.sroa.013556.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.bz:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5308
  %i.in = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5322 = icmp ugt i32 %i.in, 1
  br i1 %.not.i5322, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5323, label %bb.ca, !prof !234

bb.ca:                                            ; preds = %bb.bz
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 2)
  %.pre14822 = load ptr, ptr %i.hf, align 8, !tbaa !74 ; 2 uses
  %.phi.trans.insert14823 = getelementptr inbounds nuw i8, ptr %.pre14822, i64 4
  %.pre14824 = load i32, ptr %.phi.trans.insert14823, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5323

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5323:   ; preds = %bb.bz, %bb.ca
  %i.io = phi i32 [ %i.hk, %bb.bz ], [ %.pre14824, %bb.ca ]
  %i.ip = phi ptr [ %i.hi, %bb.bz ], [ %.pre14822, %bb.ca ]
  %i.iq = and i32 %i.io, 15
  %i.ir = icmp eq i32 %i.iq, 2
  br i1 %i.ir, label %bb.cb, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.cb:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5323
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.is = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5324.not = icmp eq i32 %i.is, 0
  br i1 %.not.i5324.not, label %bb.cc, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5325, !prof !233

bb.cc:                                            ; preds = %bb.cb
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 1)
  %.pre14825 = load ptr, ptr %i.hf, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5325

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5325:   ; preds = %bb.cb, %bb.cc
  %i.it = phi ptr [ %i.ip, %bb.cb ], [ %.pre14825, %bb.cc ]
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !72
  store i32 %i.iu, ptr %5, align 4, !tbaa !72
  %i.iv = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX6415allocRegOrReuseENS1_7SizeX64EjSt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4, i32 noundef %2, ptr nonnull %5, i64 1) ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 2 uses
  store i8 %i.iv, ptr %i.iw, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.iz = load i32, ptr %i.hg, align 8, !tbaa !73
  %.not.i5326.not = icmp eq i32 %i.iz, 0
  br i1 %.not.i5326.not, label %bb.cd, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5327, !prof !233

bb.cd:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5325
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5327

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5327:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5325, %bb.cd
  %i.ja = load ptr, ptr %i.hf, align 8, !tbaa !74
  %.sroa.02752.0.copyload = load i32, ptr %i.ja, align 4, !tbaa !72
  %i.jb = call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02752.0.copyload)
  %.sroa.3.0.insert.ext.i5328 = zext i8 %i.jb to i64
  %.sroa.3.0.insert.shift.i5329 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5328, 16
  %.sroa.013547.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i5329, 103414792193
  %.sroa.313553.0.insert.ext = zext i8 %i.iv to i64
  %.sroa.313553.0.insert.shift = shl nuw nsw i64 %.sroa.313553.0.insert.ext, 16
end_hunk_0
begin_hunk_1_@_ZN4Luau7CodeGen3X6413IrLoweringX649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
  br i1 %i.wm, label %bb.gu, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.gu:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5493
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.wp = load i32, ptr %i.vd, align 8, !tbaa !73 ; 2 uses
  %.not.i5494.not = icmp eq i32 %i.wp, 0
  br i1 %.not.i5494.not, label %bb.gv, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495, !prof !233

bb.gv:                                            ; preds = %bb.gu
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, i32 noundef 1)
  %.pre14770 = load ptr, ptr %i.vc, align 8, !tbaa !74
  %.pre14771 = load i32, ptr %i.vd, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495:   ; preds = %bb.gu, %bb.gv
  %i.wq = phi i32 [ %i.wp, %bb.gu ], [ %.pre14771, %bb.gv ]
  %i.wr = phi ptr [ %i.wk, %bb.gu ], [ %.pre14770, %bb.gv ] ; 2 uses
  %.sroa.02644.0.copyload = load i32, ptr %i.wr, align 4, !tbaa !72
  %i.ws = and i32 %.sroa.02644.0.copyload, -16
  %.sroa.7.0.insert.ext.i5496 = zext i32 %i.ws to i64
  %.sroa.7.0.insert.shift.i5497 = shl nuw i64 %.sroa.7.0.insert.ext.i5496, 32
  %.sroa.0.0.insert.insert.i5498 = or disjoint i64 %.sroa.7.0.insert.shift.i5497, 343179265
  %.not.i5499 = icmp ugt i32 %i.wq, 1
  br i1 %.not.i5499, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5500, label %bb.gw, !prof !234

bb.gw:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.vc, i32 noundef 2)
  %.pre14772 = load ptr, ptr %i.vc, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5500

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5500:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495, %bb.gw
  %i.wt = phi ptr [ %i.wr, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5495 ], [ %.pre14772, %bb.gw ]
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 4
  %.sroa.02642.0.copyload = load i32, ptr %i.wu, align 4, !tbaa !72
  %i.wv = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02642.0.copyload)
  %.sroa.313356.0.insert.ext = zext i8 %i.wv to i64
  %.sroa.313356.0.insert.shift = shl nuw nsw i64 %.sroa.313356.0.insert.ext, 16
  %.sroa.213355.0.insert.insert = or disjoint i64 %.sroa.313356.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.wo, i64 %.sroa.0.0.insert.insert.i5498, i64 %.sroa.213355.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.gx:                                            ; preds = %bb.a
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !73 ; 2 uses
  %.not.i5501.not = icmp eq i32 %i.wy, 0
  br i1 %.not.i5501.not, label %bb.gy, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502, !prof !233

bb.gy:                                            ; preds = %bb.gx
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 1)
  %.pre14756 = load i32, ptr %i.wx, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502:   ; preds = %bb.gx, %bb.gy
  %i.wz = phi i32 [ %i.wy, %bb.gx ], [ %.pre14756, %bb.gy ]
  %i.xa = load ptr, ptr %i.ww, align 8, !tbaa !74 ; 2 uses
  %.sroa.02640.0.copyload = load i32, ptr %i.xa, align 4, !tbaa !72
  %i.xb = and i32 %.sroa.02640.0.copyload, -16
  %.sroa.21.0.insert.ext.i.i5503 = zext i32 %i.xb to i64
  %.sroa.21.0.insert.shift.i8.i = shl nuw i64 %.sroa.21.0.insert.ext.i.i5503, 32
  %.sroa.0.0.insert.insert.i5504 = or disjoint i64 %.sroa.21.0.insert.shift.i8.i, 326402049
  %.not.i5505 = icmp ugt i32 %i.wz, 1
  br i1 %.not.i5505, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506, label %bb.gz, !prof !234

bb.gz:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 2)
  %.pre14757 = load ptr, ptr %i.ww, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502, %bb.gz
  %i.xc = phi ptr [ %i.xa, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5502 ], [ %.pre14757, %bb.gz ]
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 4
  %.sroa.02639.0.copyload = load i32, ptr %i.xd, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6410storeFloatENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i64 %.sroa.0.0.insert.insert.i5504, i32 %.sroa.02639.0.copyload)
  %i.xe = load i32, ptr %i.wx, align 8, !tbaa !73 ; 2 uses
  %.not.i5507.not = icmp eq i32 %i.xe, 0
  br i1 %.not.i5507.not, label %bb.ha, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508, !prof !233

bb.ha:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 1)
  %.pre14758 = load i32, ptr %i.wx, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506, %bb.ha
  %i.xf = phi i32 [ %i.xe, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5506 ], [ %.pre14758, %bb.ha ]
  %i.xg = load ptr, ptr %i.ww, align 8, !tbaa !74 ; 2 uses
  %.sroa.02637.0.copyload = load i32, ptr %i.xg, align 4, !tbaa !72
  %i.xh = and i32 %.sroa.02637.0.copyload, -16
  %i.xi = or disjoint i32 %i.xh, 4
  %.sroa.21.0.insert.ext.i.i5509 = zext i32 %i.xi to i64
  %.sroa.21.0.insert.shift.i8.i5510 = shl nuw i64 %.sroa.21.0.insert.ext.i.i5509, 32
  %.sroa.0.0.insert.insert.i5511 = or disjoint i64 %.sroa.21.0.insert.shift.i8.i5510, 326402049
  %.not.i5512 = icmp ugt i32 %i.xf, 2
  br i1 %.not.i5512, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513, label %bb.hb, !prof !234

bb.hb:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 3)
  %.pre14759 = load ptr, ptr %i.ww, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508, %bb.hb
  %i.xj = phi ptr [ %i.xg, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5508 ], [ %.pre14759, %bb.hb ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %.sroa.02636.0.copyload = load i32, ptr %i.xk, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6410storeFloatENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i64 %.sroa.0.0.insert.insert.i5511, i32 %.sroa.02636.0.copyload)
  %i.xl = load i32, ptr %i.wx, align 8, !tbaa !73 ; 2 uses
  %.not.i5514.not = icmp eq i32 %i.xl, 0
  br i1 %.not.i5514.not, label %bb.hc, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515, !prof !233

bb.hc:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 1)
  %.pre14760 = load i32, ptr %i.wx, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513, %bb.hc
  %i.xm = phi i32 [ %i.xl, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5513 ], [ %.pre14760, %bb.hc ]
  %i.xn = load ptr, ptr %i.ww, align 8, !tbaa !74 ; 2 uses
  %.sroa.02634.0.copyload = load i32, ptr %i.xn, align 4, !tbaa !72
  %i.xo = and i32 %.sroa.02634.0.copyload, -16
  %i.xp = or disjoint i32 %i.xo, 8
  %.sroa.21.0.insert.ext.i.i5516 = zext i32 %i.xp to i64
  %.sroa.21.0.insert.shift.i8.i5517 = shl nuw i64 %.sroa.21.0.insert.ext.i.i5516, 32
  %.sroa.0.0.insert.insert.i5518 = or disjoint i64 %.sroa.21.0.insert.shift.i8.i5517, 326402049
  %.not.i5519 = icmp ugt i32 %i.xm, 3
  br i1 %.not.i5519, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5520, label %bb.hd, !prof !234

bb.hd:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ww, i32 noundef 4)
  %.pre14761 = load ptr, ptr %i.ww, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5520

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5520:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515, %bb.hd
  %i.xq = phi ptr [ %i.xn, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5515 ], [ %.pre14761, %bb.hd ]
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 12
  %.sroa.02633.0.copyload = load i32, ptr %i.xr, align 4, !tbaa !72
  tail call void @_ZN4Luau7CodeGen3X6413IrLoweringX6410storeFloatENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i64 %.sroa.0.0.insert.insert.i5518, i32 %.sroa.02633.0.copyload)
  %i.xs = load i32, ptr %i.wx, align 8, !tbaa !73
  %i.xt = icmp ugt i32 %i.xs, 4
  br i1 %i.xt, label %bb.he, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.he:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5520
  %i.xu = load ptr, ptr %i.ww, align 8, !tbaa !74 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  %i.xw = load i32, ptr %i.xv, align 4            ; 2 uses
  %i.xx = and i32 %i.xw, 15
  %.not5163 = icmp eq i32 %i.xx, 0
  br i1 %.not5163, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5527

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5527:   ; preds = %bb.he
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.02631.0.copyload.pre = load i32, ptr %i.xu, align 4, !tbaa !72
  %i.ya = and i32 %.sroa.02631.0.copyload.pre, -16
  %i.yb = or disjoint i32 %i.ya, 12
  %.sroa.21.0.insert.ext.i.i5523 = zext i32 %i.yb to i64
  %.sroa.21.0.insert.shift.i.i5524 = shl nuw i64 %.sroa.21.0.insert.ext.i.i5523, 32
  %.sroa.0.0.insert.insert.i5525 = or disjoint i64 %.sroa.21.0.insert.shift.i.i5524, 326402049
  %.phi.trans.insert14763 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre14764 = load ptr, ptr %.phi.trans.insert14763, align 8, !tbaa !78
  %.phi.trans.insert14765 = getelementptr inbounds nuw i8, ptr %.pre14764, i64 48
  %.pre14766 = load ptr, ptr %.phi.trans.insert14765, align 8, !tbaa !81
  %i.yc = lshr i32 %i.xw, 4
  %i.yd = zext nneg i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw [16 x i8], ptr %.pre14766, i64 %i.yd
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = load i8, ptr %i.yf, align 8, !tbaa !72
  %.sroa.513353.0.insert.ext = zext i8 %i.yg to i64
  %.sroa.513353.0.insert.shift = shl nuw nsw i64 %.sroa.513353.0.insert.ext, 32
  %.sroa.013349.0.insert.insert = or disjoint i64 %.sroa.513353.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.xz, i64 %.sroa.0.0.insert.insert.i5525, i64 %.sroa.013349.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.hf:                                            ; preds = %bb.a
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !73 ; 2 uses
  %i.yk = icmp ugt i32 %i.yj, 2
  br i1 %i.yk, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.yl = load ptr, ptr %i.yh, align 8, !tbaa !74
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yn = load i32, ptr %i.ym, align 4            ; 2 uses
  %i.yo = and i32 %i.yn, 15
  %.not5162 = icmp eq i32 %i.yo, 0
  br i1 %.not5162, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5529

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5529:   ; preds = %bb.hg
  %.phi.trans.insert14744 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre14745 = load ptr, ptr %.phi.trans.insert14744, align 8, !tbaa !78
  %.phi.trans.insert14746 = getelementptr inbounds nuw i8, ptr %.pre14745, i64 48
  %.pre14747 = load ptr, ptr %.phi.trans.insert14746, align 8, !tbaa !81
  %i.yp = lshr i32 %i.yn, 4
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %.pre14747, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !72
  %i.yu = zext i32 %i.yt to i64
  %i.yv = shl nuw i64 %i.yu, 32
  %i.yw = or disjoint i64 %i.yv, 352354305
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531

bb.hh:                                            ; preds = %bb.hf
  %.not.i5530.not = icmp eq i32 %i.yj, 0
  br i1 %.not.i5530.not, label %bb.hi, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531, !prof !235

bb.hi:                                            ; preds = %bb.hh
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5529, %bb.hg, %bb.hh, %bb.hi
  %.sroa.5.0.insert.ext.i554315167 = phi i64 [ 352354305, %bb.hi ], [ 352354305, %bb.hh ], [ 352354305, %bb.hg ], [ %i.yw, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5529 ]
  %i.yx = load ptr, ptr %i.yh, align 8, !tbaa !74 ; 2 uses
  %i.yy = load i32, ptr %i.yx, align 4            ; 3 uses
  %i.yz = and i32 %i.yy, 15
  %i.za = icmp eq i32 %i.yz, 6
  br i1 %i.za, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.zd = load i32, ptr %i.yi, align 8, !tbaa !73 ; 2 uses
  %.not.i5532.not = icmp eq i32 %i.zd, 0
  br i1 %.not.i5532.not, label %bb.hk, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533, !prof !233

bb.hk:                                            ; preds = %bb.hj
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 1)
  %.pre14752 = load ptr, ptr %i.yh, align 8, !tbaa !74 ; 2 uses
  %.sroa.02626.0.copyload.pre = load i32, ptr %.pre14752, align 4, !tbaa !72
  %.pre14754 = load i32, ptr %i.yi, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533:   ; preds = %bb.hj, %bb.hk
  %i.ze = phi i32 [ %i.zd, %bb.hj ], [ %.pre14754, %bb.hk ]
  %.sroa.02626.0.copyload = phi i32 [ %i.yy, %bb.hj ], [ %.sroa.02626.0.copyload.pre, %bb.hk ]
  %i.zf = phi ptr [ %i.yx, %bb.hj ], [ %.pre14752, %bb.hk ]
  %i.zg = and i32 %.sroa.02626.0.copyload, -16
  %.sroa.7.0.insert.ext.i5534 = zext i32 %i.zg to i64
  %.sroa.7.0.insert.shift.i5535 = shl nuw i64 %.sroa.7.0.insert.ext.i5534, 32
  %.sroa.0.0.insert.insert.i5536 = or disjoint i64 %.sroa.7.0.insert.shift.i5535, 359956481
  %.not.i5537 = icmp ugt i32 %i.ze, 1
  br i1 %.not.i5537, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5538, label %bb.hl, !prof !234

bb.hl:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 2)
  %.pre14755 = load ptr, ptr %i.yh, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5538

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5538:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533, %bb.hl
  %i.zh = phi ptr [ %i.zf, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5533 ], [ %.pre14755, %bb.hl ]
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 4
  %.sroa.02624.0.copyload = load i32, ptr %i.zi, align 4, !tbaa !72
  %i.zj = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02624.0.copyload)
  %.sroa.313346.0.insert.ext = zext i8 %i.zj to i64
  %.sroa.313346.0.insert.shift = shl nuw nsw i64 %.sroa.313346.0.insert.ext, 16
  %.sroa.213345.0.insert.insert = or disjoint i64 %.sroa.313346.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.zc, i64 %.sroa.0.0.insert.insert.i5536, i64 %.sroa.213345.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.hm:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5531
  %i.zk = load i32, ptr %i.yi, align 8, !tbaa !73
  %.not.i5539.not = icmp eq i32 %i.zk, 0
  br i1 %.not.i5539.not, label %bb.hn, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5540, !prof !233

bb.hn:                                            ; preds = %bb.hm
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 1)
  %.pre14748 = load ptr, ptr %i.yh, align 8, !tbaa !74
  %.pre14749 = load i32, ptr %.pre14748, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5540

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5540:   ; preds = %bb.hm, %bb.hn
  %i.zl = phi i32 [ %i.yy, %bb.hm ], [ %.pre14749, %bb.hn ] ; 2 uses
  %i.zm = and i32 %i.zl, 15
  %i.zn = icmp eq i32 %i.zm, 4
  br i1 %i.zn, label %bb.ho, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.ho:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5540
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.zq = load i32, ptr %i.yi, align 8, !tbaa !73
  %.not.i5541.not = icmp eq i32 %i.zq, 0
  br i1 %.not.i5541.not, label %bb.hp, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5542, !prof !233

bb.hp:                                            ; preds = %bb.ho
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 1)
  %.pre14750 = load ptr, ptr %i.yh, align 8, !tbaa !74
  %.sroa.02621.0.copyload.pre = load i32, ptr %.pre14750, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5542

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5542:   ; preds = %bb.ho, %bb.hp
  %.sroa.02621.0.copyload = phi i32 [ %i.zl, %bb.ho ], [ %.sroa.02621.0.copyload.pre, %bb.hp ]
  %i.zr = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02621.0.copyload)
  %.sroa.3.0.insert.ext.i5545.tr = zext i8 %i.zr to i64
  %i.zs = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5545.tr, 16
  %.sroa.013340.0.insert.insert = or i64 %.sroa.5.0.insert.ext.i554315167, %i.zs
  %i.zt = load i32, ptr %i.yi, align 8, !tbaa !73
  %.not.i5550 = icmp ugt i32 %i.zt, 1
  br i1 %.not.i5550, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5551, label %bb.hq, !prof !234

bb.hq:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5542
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.yh, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5551

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5551:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5542, %bb.hq
  %i.zu = load ptr, ptr %i.yh, align 8, !tbaa !74
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %.sroa.02619.0.copyload = load i32, ptr %i.zv, align 4, !tbaa !72
  %i.zw = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02619.0.copyload)
  %.sroa.313337.0.insert.ext = zext i8 %i.zw to i64
  %.sroa.313337.0.insert.shift = shl nuw nsw i64 %.sroa.313337.0.insert.ext, 16
  %.sroa.213336.0.insert.insert = or disjoint i64 %.sroa.313337.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX647vmovupsENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.zp, i64 %.sroa.013340.0.insert.insert, i64 %.sroa.213336.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.hr:                                            ; preds = %bb.a
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 61 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 21 uses
  %i.zz = load i32, ptr %i.zy, align 8, !tbaa !73 ; 2 uses
  %i.aaa = icmp ugt i32 %i.zz, 3
  br i1 %i.aaa, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aab = load ptr, ptr %i.zx, align 8, !tbaa !74
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 12
  %i.aad = load i32, ptr %i.aac, align 4          ; 2 uses
  %i.aae = and i32 %i.aad, 15
  %.not5159 = icmp eq i32 %i.aae, 0
  br i1 %.not5159, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5553

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5553:   ; preds = %bb.hs
  %.phi.trans.insert14684 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre14685 = load ptr, ptr %.phi.trans.insert14684, align 8, !tbaa !78
  %.phi.trans.insert14686 = getelementptr inbounds nuw i8, ptr %.pre14685, i64 48
  %.pre14687 = load ptr, ptr %.phi.trans.insert14686, align 8, !tbaa !81
  %i.aaf = lshr i32 %i.aad, 4
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw [16 x i8], ptr %.pre14687, i64 %i.aag
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555

bb.ht:                                            ; preds = %bb.hr
  %.not.i5554.not = icmp eq i32 %i.zz, 0
  br i1 %.not.i5554.not, label %bb.hu, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555, !prof !235

bb.hu:                                            ; preds = %bb.ht
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5553, %bb.hs, %bb.ht, %bb.hu
  %i.aak = phi i32 [ 0, %bb.hu ], [ 0, %bb.ht ], [ 0, %bb.hs ], [ %i.aaj, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5553 ] ; 5 uses
  %i.aal = load ptr, ptr %i.zx, align 8, !tbaa !74
  %i.aam = load i32, ptr %i.aal, align 4          ; 3 uses
  %i.aan = and i32 %i.aam, 15
  %i.aao = icmp eq i32 %i.aan, 4
  %i.aap = load i32, ptr %i.zy, align 8, !tbaa !73
  %.not.i5556.not = icmp eq i32 %i.aap, 0         ; 2 uses
  br i1 %i.aao, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555
  br i1 %.not.i5556.not, label %bb.hw, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5557, !prof !233

bb.hw:                                            ; preds = %bb.hv
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  %.pre14690 = load ptr, ptr %i.zx, align 8, !tbaa !74
  %.sroa.02609.0.copyload.pre = load i32, ptr %.pre14690, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5557

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5557:   ; preds = %bb.hv, %bb.hw
  %.sroa.02609.0.copyload = phi i32 [ %i.aam, %bb.hv ], [ %.sroa.02609.0.copyload.pre, %bb.hw ]
  %i.aaq = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02609.0.copyload)
  %.sroa.3.0.insert.ext.i5558 = zext i8 %i.aaq to i64
  %.sroa.3.0.insert.shift.i5559 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5558, 16
  %i.aar = add nsw i32 %i.aak, 12
  %.sroa.21.0.insert.ext.i5564 = zext i32 %i.aar to i64
  %.sroa.21.0.insert.shift.i5565 = shl nuw i64 %.sroa.21.0.insert.ext.i5564, 32
  %.sroa.0.0.insert.insert.i5561 = or disjoint i64 %.sroa.3.0.insert.shift.i5559, %.sroa.21.0.insert.shift.i5565
  %.sroa.013331.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.insert.i5561, 318799873
  br label %bb.hz

bb.hx:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5555
  br i1 %.not.i5556.not, label %bb.hy, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5569, !prof !233

bb.hy:                                            ; preds = %bb.hx
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  %.pre14688 = load ptr, ptr %i.zx, align 8, !tbaa !74
  %.sroa.02608.0.copyload.pre = load i32, ptr %.pre14688, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5569

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5569:   ; preds = %bb.hx, %bb.hy
  %.sroa.02608.0.copyload = phi i32 [ %i.aam, %bb.hx ], [ %.sroa.02608.0.copyload.pre, %bb.hy ]
  %i.aas = and i32 %.sroa.02608.0.copyload, -16
  %i.aat = or disjoint i32 %i.aas, 12
  %.sroa.21.0.insert.ext.i.i5570 = zext i32 %i.aat to i64
  %.sroa.21.0.insert.shift.i.i5571 = shl nuw i64 %.sroa.21.0.insert.ext.i.i5570, 32
  %.sroa.0.0.insert.insert.i5572 = or disjoint i64 %.sroa.21.0.insert.shift.i.i5571, 326402049
  br label %bb.hz

bb.hz:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5569, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5557
  %.sroa.02612.0 = phi i64 [ %.sroa.013331.0.insert.insert, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5557 ], [ %.sroa.0.0.insert.insert.i5572, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5569 ]
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.aaw = load i32, ptr %i.zy, align 8, !tbaa !73
  %.not.i5573 = icmp ugt i32 %i.aaw, 1
  br i1 %.not.i5573, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5574, label %bb.ia, !prof !234

bb.ia:                                            ; preds = %bb.hz
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5574

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5574:   ; preds = %bb.hz, %bb.ia
  %i.aax = load ptr, ptr %i.zx, align 8, !tbaa !74
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %.sroa.02606.0.copyload = load i32, ptr %i.aay, align 4, !tbaa !72
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abc = lshr i32 %.sroa.02606.0.copyload, 4
  %i.abd = zext nneg i32 %i.abc to i64
  %i.abe = load ptr, ptr %i.abb, align 8, !tbaa !81
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.abe, i64 %i.abd
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load i8, ptr %i.abg, align 8, !tbaa !72
  %.sroa.513330.0.insert.ext = zext i8 %i.abh to i64
  %.sroa.513330.0.insert.shift = shl nuw nsw i64 %.sroa.513330.0.insert.ext, 32
  %.sroa.013326.0.insert.insert = or disjoint i64 %.sroa.513330.0.insert.shift, 276856834
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.aav, i64 %.sroa.02612.0, i64 %.sroa.013326.0.insert.insert)
  %i.abi = load i32, ptr %i.zy, align 8, !tbaa !73
  %.not.i5575 = icmp ugt i32 %i.abi, 1
  br i1 %.not.i5575, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5576, label %bb.ib, !prof !234

bb.ib:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5574
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 2)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5576

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5576:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5574, %bb.ib
  %i.abj = load ptr, ptr %i.zx, align 8, !tbaa !74 ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 4
  %.sroa.02605.0.copyload = load i32, ptr %i.abk, align 4, !tbaa !72
  %i.abl = load ptr, ptr %i.aaz, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 48
  %i.abn = lshr i32 %.sroa.02605.0.copyload, 4
  %i.abo = zext nneg i32 %i.abn to i64            ; 2 uses
  %i.abp = load ptr, ptr %i.abm, align 8, !tbaa !81 ; 2 uses
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.abp, i64 %i.abo
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abs = load i8, ptr %i.abr, align 8, !tbaa !72
  %i.abt = icmp eq i8 %i.abs, 1
  %i.abu = load i32, ptr %i.zy, align 8, !tbaa !73 ; 2 uses
  br i1 %i.abt, label %bb.ic, label %bb.ip

bb.ic:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5576
  %.not.i5577.not = icmp eq i32 %i.abu, 0
  br i1 %.not.i5577.not, label %bb.id, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5578, !prof !233

bb.id:                                            ; preds = %bb.ic
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  %.pre14733 = load ptr, ptr %i.zx, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5578

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5578:   ; preds = %bb.ic, %bb.id
  %i.abv = phi ptr [ %i.abj, %bb.ic ], [ %.pre14733, %bb.id ]
  %i.abw = load i32, ptr %i.abv, align 4          ; 3 uses
  %i.abx = and i32 %i.abw, 15
  %i.aby = icmp eq i32 %i.abx, 4
  %i.abz = load i32, ptr %i.zy, align 8, !tbaa !73
  %.not.i5579.not = icmp eq i32 %i.abz, 0         ; 2 uses
  br i1 %i.aby, label %bb.ie, label %bb.ig

bb.ie:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5578
  br i1 %.not.i5579.not, label %bb.if, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5580, !prof !233

bb.if:                                            ; preds = %bb.ie
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  %.pre14736 = load ptr, ptr %i.zx, align 8, !tbaa !74
  %.sroa.02601.0.copyload.pre = load i32, ptr %.pre14736, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5580

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5580:   ; preds = %bb.ie, %bb.if
  %.sroa.02601.0.copyload = phi i32 [ %i.abw, %bb.ie ], [ %.sroa.02601.0.copyload.pre, %bb.if ]
  %i.aca = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.02601.0.copyload)
  %.sroa.3.0.insert.ext.i5581 = zext i8 %i.aca to i64
  %.sroa.3.0.insert.shift.i5582 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i5581, 16
  %.sroa.21.0.insert.ext.i5587 = zext i32 %i.aak to i64
  %.sroa.21.0.insert.shift.i5588 = shl nuw i64 %.sroa.21.0.insert.ext.i5587, 32
  %.sroa.0.0.insert.insert.i5584 = or disjoint i64 %.sroa.3.0.insert.shift.i5582, %.sroa.21.0.insert.shift.i5588
  %.sroa.013322.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.insert.i5584, 318799873
  br label %bb.ii

bb.ig:                                            ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5578
  br i1 %.not.i5579.not, label %bb.ih, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit5593, !prof !233

bb.ih:                                            ; preds = %bb.ig
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.zx, i32 noundef 1)
  %.pre14734 = load ptr, ptr %i.zx, align 8, !tbaa !74
end_hunk_1
begin_hunk_2_@_ZN4Luau7CodeGen3X6413IrLoweringX649lowerInstERNS0_6IrInstEjRKNS0_7IrBlockE:bb.a
  %i.iqm = load i8, ptr %i.iql, align 8, !tbaa !71
  %i.iqn = call noundef zeroext i8 @_ZN4Luau7CodeGen15getCmdValueKindENS0_5IrCmdE(i8 noundef zeroext %i.iqm)
  %i.iqo = icmp eq i8 %i.iqn, 3
  %.pre13946 = load i32, ptr %i.ipp, align 8, !tbaa !73
  %.not.i8003 = icmp ugt i32 %.pre13946, 2        ; 2 uses
  br i1 %i.iqo, label %bb.daf, label %._crit_edge13944

bb.daf:                                           ; preds = %._crit_edge13937
  br i1 %.not.i8003, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8004, label %bb.dag, !prof !243

bb.dag:                                           ; preds = %bb.daf
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ipo, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8004

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8004:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8000, %bb.daf, %bb.dag
  %i.iqp = load ptr, ptr %i.ipo, align 8, !tbaa !74
  %i.iqq = getelementptr inbounds nuw i8, ptr %i.iqp, i64 8
  %.sroa.0480.0.copyload = load i32, ptr %i.iqq, align 4, !tbaa !72
  %i.iqr = call i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6412memRegUintOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0480.0.copyload)
  %i.iqs = load i32, ptr %i.ipp, align 8, !tbaa !73
  %.not.i8005 = icmp ugt i32 %i.iqs, 2
  br i1 %.not.i8005, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8006, label %bb.dah, !prof !234

bb.dah:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8004
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ipo, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8006

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8006:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8004, %bb.dah
  %i.iqt = load ptr, ptr %i.ipo, align 8, !tbaa !74
  %i.iqu = getelementptr inbounds nuw i8, ptr %i.iqt, i64 8
  %.sroa.0479.0.copyload = load i32, ptr %i.iqu, align 4, !tbaa !72
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %284, i8 noundef zeroext 3, i64 %i.iqr, i32 %.sroa.0479.0.copyload)
  br label %thread-pre-split

._crit_edge13944:                                 ; preds = %._crit_edge13937
  br i1 %.not.i8003, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8008, label %bb.dai, !prof !244

bb.dai:                                           ; preds = %._crit_edge13944
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ipo, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8008

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8008:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8000, %._crit_edge13944, %bb.dai
  %i.iqv = load ptr, ptr %i.ipo, align 8, !tbaa !74
  %i.iqw = getelementptr inbounds nuw i8, ptr %i.iqv, i64 8
  %.sroa.0477.0.copyload = load i32, ptr %i.iqw, align 4, !tbaa !72
  %i.iqx = call i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6414memRegDoubleOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0477.0.copyload)
  %i.iqy = load i32, ptr %i.ipp, align 8, !tbaa !73
  %.not.i8009 = icmp ugt i32 %i.iqy, 2
  br i1 %.not.i8009, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8010, label %bb.daj, !prof !234

bb.daj:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8008
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ipo, i32 noundef 3)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8010

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8010:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8008, %bb.daj
  %i.iqz = load ptr, ptr %i.ipo, align 8, !tbaa !74
  %i.ira = getelementptr inbounds nuw i8, ptr %i.iqz, i64 8
  %.sroa.0476.0.copyload = load i32, ptr %i.ira, align 4, !tbaa !72
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %284, i8 noundef zeroext 5, i64 %i.iqx, i32 %.sroa.0476.0.copyload)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.dae, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8010, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8006
  %.pr = load i32, ptr %i.ipp, align 8, !tbaa !73
  br label %bb.dak

bb.dak:                                           ; preds = %thread-pre-split, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7996
  %i.irb = phi i32 [ %.pr, %thread-pre-split ], [ %i.ipx, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit7996 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #15
  %.not.i8011.not = icmp eq i32 %i.irb, 0
  br i1 %.not.i8011.not, label %bb.dal, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8012, !prof !233

bb.dal:                                           ; preds = %bb.dak
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ipo, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8012

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8012:   ; preds = %bb.dak, %bb.dal
  %i.irc = load ptr, ptr %i.ipo, align 8, !tbaa !74
  %.sroa.0474.0.copyload = load i32, ptr %i.irc, align 4, !tbaa !72
  %i.ird = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ire = load ptr, ptr %i.ird, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.irf = getelementptr inbounds nuw i8, ptr %i.ire, i64 48
  %i.irg = lshr i32 %.sroa.0474.0.copyload, 4
  %i.irh = zext nneg i32 %i.irg to i64
  %i.iri = load ptr, ptr %i.irf, align 8, !tbaa !81
  %i.irj = getelementptr inbounds nuw [16 x i8], ptr %i.iri, i64 %i.irh
  %i.irk = getelementptr inbounds nuw i8, ptr %i.irj, i64 8
  %i.irl = load i32, ptr %i.irk, align 8, !tbaa !72
  %i.irm = call noundef i32 @_ZN4Luau7CodeGen22getNativeContextOffsetEi(i32 noundef %i.irl)
  %.sroa.79401.0.insert.ext = zext i32 %i.irm to i64
  %.sroa.79401.0.insert.shift = shl nuw i64 %.sroa.79401.0.insert.ext, 32
  %.sroa.09398.0.insert.insert = or disjoint i64 %.sroa.79401.0.insert.shift, 342654977
  store i64 %.sroa.09398.0.insert.insert, ptr %285, align 8
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248) %284, ptr noundef nonnull align 4 dereferenceable(8) %285)
  call void @llvm.lifetime.end.p0(ptr nonnull %285) #15
  %i.irn = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 5, i32 noundef %2)
  %i.iro = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.irn, ptr %i.iro, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %284) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dam:                                           ; preds = %bb.a
  %i.irp = tail call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX648allocRegENS1_7SizeX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 4, i32 noundef %2) ; 2 uses
  %i.irq = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  store i8 %i.irp, ptr %i.irq, align 2, !tbaa !72
  %i.irr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.irs = load ptr, ptr %i.irr, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.39395.0.insert.ext = zext i8 %i.irp to i64
  %.sroa.39395.0.insert.shift = shl nuw nsw i64 %.sroa.39395.0.insert.ext, 16
  %.sroa.29394.0.insert.insert = or disjoint i64 %.sroa.39395.0.insert.shift, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.irs, i64 %.sroa.29394.0.insert.insert, i64 103422918657)
  %i.irt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.iru = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.irv = load i32, ptr %i.iru, align 8, !tbaa !73
  %.not.i8019.not = icmp eq i32 %i.irv, 0
  br i1 %.not.i8019.not, label %bb.dan, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8020, !prof !233

bb.dan:                                           ; preds = %bb.dam
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.irt, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8020

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8020:   ; preds = %bb.dam, %bb.dan
  %i.irw = load ptr, ptr %i.irt, align 8, !tbaa !74
  %i.irx = load i32, ptr %i.irw, align 4          ; 3 uses
  %i.iry = and i32 %i.irx, 15
  %i.irz = icmp eq i32 %i.iry, 4
  br i1 %i.irz, label %bb.dao, label %bb.daq

bb.dao:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8020
  %i.isa = load ptr, ptr %i.irr, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0467.0.copyload = load i8, ptr %i.irq, align 2, !tbaa !72
  %i.isb = load i32, ptr %i.iru, align 8, !tbaa !73
  %.not.i8021.not = icmp eq i32 %i.isb, 0
  br i1 %.not.i8021.not, label %bb.dap, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8022, !prof !233

bb.dap:                                           ; preds = %bb.dao
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.irt, i32 noundef 1)
  %.pre13935 = load ptr, ptr %i.irt, align 8, !tbaa !74
  %.sroa.0460.0.copyload.pre = load i32, ptr %.pre13935, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8022

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8022:   ; preds = %bb.dao, %bb.dap
  %.sroa.0460.0.copyload = phi i32 [ %i.irx, %bb.dao ], [ %.sroa.0460.0.copyload.pre, %bb.dap ]
  %i.isc = tail call i8 @_ZN4Luau7CodeGen3X6413IrLoweringX645regOpENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0460.0.copyload)
  %i.isd = and i8 %i.isc, -8
  %i.ise = or disjoint i8 %i.isd, 4
  %i.isf = zext i8 %i.ise to i64
  %.sroa.0.2.insert.ext.i = zext i8 %.sroa.0467.0.copyload to i64
  %.sroa.0.2.insert.shift.i = shl nuw nsw i64 %.sroa.0.2.insert.ext.i, 16 ; 2 uses
  %i.isg = shl nuw nsw i64 %i.isf, 8
  %.sroa.59381.0.insert.shift = or disjoint i64 %i.isg, %.sroa.0.2.insert.shift.i
  %.sroa.09380.0.insert.insert = or disjoint i64 %.sroa.59381.0.insert.shift, 3953584504833
  %.sroa.29385.0.insert.insert = or disjoint i64 %.sroa.0.2.insert.shift.i, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.isa, i64 %.sroa.29385.0.insert.insert, i64 %.sroa.09380.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.daq:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8020
  %i.ish = load i32, ptr %i.iru, align 8, !tbaa !73
  %.not.i8033.not = icmp eq i32 %i.ish, 0
  br i1 %.not.i8033.not, label %bb.dar, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8034, !prof !233

bb.dar:                                           ; preds = %bb.daq
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.irt, i32 noundef 1)
  %.pre13931 = load ptr, ptr %i.irt, align 8, !tbaa !74
  %.pre13932 = load i32, ptr %.pre13931, align 4
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8034

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8034:   ; preds = %bb.daq, %bb.dar
  %i.isi = phi i32 [ %i.irx, %bb.daq ], [ %.pre13932, %bb.dar ] ; 2 uses
  %i.isj = and i32 %i.isi, 15
  %i.isk = icmp eq i32 %i.isj, 2
  br i1 %i.isk, label %bb.das, label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.das:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8034
  %i.isl = load ptr, ptr %i.irr, align 8, !tbaa !75, !nonnull !76, !align !77
  %.sroa.0459.0.copyload = load i8, ptr %i.irq, align 2, !tbaa !72
  %i.ism = load i32, ptr %i.iru, align 8, !tbaa !73
  %.not.i8035.not = icmp eq i32 %i.ism, 0
  br i1 %.not.i8035.not, label %bb.dat, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8036, !prof !233

bb.dat:                                           ; preds = %bb.das
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.irt, i32 noundef 1)
  %.pre13933 = load ptr, ptr %i.irt, align 8, !tbaa !74
  %.sroa.0455.0.copyload.pre = load i32, ptr %.pre13933, align 4, !tbaa !72
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8036

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8036:   ; preds = %bb.das, %bb.dat
  %.sroa.0455.0.copyload = phi i32 [ %i.isi, %bb.das ], [ %.sroa.0455.0.copyload.pre, %bb.dat ]
  %i.isn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iso = load ptr, ptr %i.isn, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.isp = getelementptr inbounds nuw i8, ptr %i.iso, i64 48
  %i.isq = lshr i32 %.sroa.0455.0.copyload, 4
  %i.isr = zext nneg i32 %i.isq to i64
  %i.iss = load ptr, ptr %i.isp, align 8, !tbaa !81
  %i.ist = getelementptr inbounds nuw [16 x i8], ptr %i.iss, i64 %i.isr
  %i.isu = getelementptr inbounds nuw i8, ptr %i.ist, i64 8
  %i.isv = load i8, ptr %i.isu, align 8, !tbaa !72
  %.sroa.3.0.insert.ext.i8039 = zext i8 %.sroa.0459.0.copyload to i64
  %.sroa.3.0.insert.shift.i8040 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i8039, 16 ; 2 uses
  %.tr = zext i8 %i.isv to i64
  %.sroa.2.0.extract.trunc.i8044 = shl nuw nsw i64 %.tr, 35
  %op.rdx = add nuw nsw i64 %.sroa.2.0.extract.trunc.i8044, 3951705456640
  %.sroa.59372.0.extract.trunc = or disjoint i64 %op.rdx, %.sroa.3.0.insert.shift.i8040
  %op.rdx15258 = or disjoint i64 %.sroa.59372.0.extract.trunc, 32769
  %.sroa.29376.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift.i8040, 268468224
  tail call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX643movENS1_10OperandX64ES3_(ptr noundef nonnull align 8 dereferenceable(268) %i.isl, i64 %.sroa.29376.0.insert.insert, i64 %op.rdx15258)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dau:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %286) #15
  %i.isw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.isx = load ptr, ptr %i.isw, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX64C1ERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Ej(ptr noundef nonnull align 8 dereferenceable(248) %286, ptr noundef nonnull align 8 dereferenceable(332) %i.a, ptr noundef nonnull align 8 dereferenceable(268) %i.isx, i32 noundef -1)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %286, i8 noundef zeroext 4, i64 276594688, i32 0)
  %i.isy = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.isz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ita = load i32, ptr %i.isz, align 8, !tbaa !73
  %.not.i8050.not = icmp eq i32 %i.ita, 0
  br i1 %.not.i8050.not, label %bb.dav, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8051, !prof !233

bb.dav:                                           ; preds = %bb.dau
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.isy, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8051

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8051:   ; preds = %bb.dau, %bb.dav
  %i.itb = load ptr, ptr %i.isy, align 8, !tbaa !74
  %.sroa.0452.0.copyload = load i32, ptr %i.itb, align 4, !tbaa !72
  %i.itc = and i32 %.sroa.0452.0.copyload, -16
  %.sroa.7.0.insert.ext.i8052 = zext i32 %i.itc to i64
  %.sroa.7.0.insert.shift.i8053 = shl nuw i64 %.sroa.7.0.insert.ext.i8052, 32
  %.sroa.0.0.insert.insert.i8054 = or disjoint i64 %.sroa.7.0.insert.shift.i8053, 276070401
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %286, i8 noundef zeroext 4, i64 %.sroa.0.0.insert.insert.i8054, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %287) #15
  store i64 1031134806017, ptr %287, align 8
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248) %286, ptr noundef nonnull align 4 dereferenceable(8) %287)
  call void @llvm.lifetime.end.p0(ptr nonnull %287) #15
  %i.itd = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 4, i32 noundef %2)
  %i.ite = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.itd, ptr %i.ite, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %286) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.daw:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %288) #15
  %i.itf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.itg = load ptr, ptr %i.itf, align 8, !tbaa !75, !nonnull !76, !align !77
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX64C1ERNS1_13IrRegAllocX64ERNS1_18AssemblyBuilderX64Ej(ptr noundef nonnull align 8 dereferenceable(248) %288, ptr noundef nonnull align 8 dereferenceable(332) %i.a, ptr noundef nonnull align 8 dereferenceable(268) %i.itg, i32 noundef -1)
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %288, i8 noundef zeroext 4, i64 276594688, i32 0)
  %i.ith = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.iti = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.itj = load i32, ptr %i.iti, align 8, !tbaa !73
  %.not.i8056.not = icmp eq i32 %i.itj, 0
  br i1 %.not.i8056.not, label %bb.dax, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8057, !prof !233

bb.dax:                                           ; preds = %bb.daw
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ith, i32 noundef 1)
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8057

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8057:   ; preds = %bb.daw, %bb.dax
  %i.itk = load ptr, ptr %i.ith, align 8, !tbaa !74
  %.sroa.0446.0.copyload = load i32, ptr %i.itk, align 4, !tbaa !72
  %i.itl = and i32 %.sroa.0446.0.copyload, -16
  %.sroa.7.0.insert.ext.i8058 = zext i32 %i.itl to i64
  %.sroa.7.0.insert.shift.i8059 = shl nuw i64 %.sroa.7.0.insert.ext.i8058, 32
  %.sroa.0.0.insert.insert.i8060 = or disjoint i64 %.sroa.7.0.insert.shift.i8059, 276070401
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX6411addArgumentENS1_7SizeX64ENS1_10OperandX64ENS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(248) %288, i8 noundef zeroext 4, i64 %.sroa.0.0.insert.insert.i8060, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %289) #15
  store i64 928055590913, ptr %289, align 8
  call void @_ZN4Luau7CodeGen3X6416IrCallWrapperX644callERKNS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(248) %288, ptr noundef nonnull align 4 dereferenceable(8) %289)
  call void @llvm.lifetime.end.p0(ptr nonnull %289) #15
  %i.itm = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX647takeRegENS1_11RegisterX64Ej(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 4, i32 noundef %2)
  %i.itn = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.itm, ptr %i.itn, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %288) #15
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.day:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %290) #15
  %i.ito = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.itp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.itq = load i32, ptr %i.itp, align 8, !tbaa !73 ; 2 uses
  %.not.i8062.not = icmp eq i32 %i.itq, 0
  br i1 %.not.i8062.not, label %bb.daz, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063, !prof !233

bb.daz:                                           ; preds = %bb.day
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ito, i32 noundef 1)
  %.pre13925 = load i32, ptr %i.itp, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063:   ; preds = %bb.day, %bb.daz
  %i.itr = phi i32 [ %i.itq, %bb.day ], [ %.pre13925, %bb.daz ]
  %i.its = load ptr, ptr %i.ito, align 8, !tbaa !74 ; 2 uses
  %i.itt = load i32, ptr %i.its, align 4, !tbaa !72
  store i32 %i.itt, ptr %290, align 4, !tbaa !72
  %i.itu = getelementptr inbounds nuw i8, ptr %290, i64 4
  %.not.i8064 = icmp ugt i32 %i.itr, 1
  br i1 %.not.i8064, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065, label %bb.dba, !prof !234

bb.dba:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ito, i32 noundef 2)
  %.pre13926 = load ptr, ptr %i.ito, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063, %bb.dba
  %i.itv = phi ptr [ %i.its, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8063 ], [ %.pre13926, %bb.dba ]
  %i.itw = getelementptr inbounds nuw i8, ptr %i.itv, i64 4
  %i.itx = load i32, ptr %i.itw, align 4, !tbaa !72
  store i32 %i.itx, ptr %i.itu, align 4, !tbaa !72
  %i.ity = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX6415allocRegOrReuseENS1_7SizeX64EjSt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 3, i32 noundef %2, ptr nonnull %290, i64 2) ; 2 uses
  %i.itz = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.ity, ptr %i.itz, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %290) #15
  %i.iua = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.iub = load ptr, ptr %i.iua, align 8, !tbaa !75, !nonnull !76, !align !77
  %i.iuc = load i32, ptr %i.itp, align 8, !tbaa !73 ; 2 uses
  %.not.i8066.not = icmp eq i32 %i.iuc, 0
  br i1 %.not.i8066.not, label %bb.dbb, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067, !prof !233

bb.dbb:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ito, i32 noundef 1)
  %.pre13927 = load i32, ptr %i.itp, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065, %bb.dbb
  %i.iud = phi i32 [ %i.iuc, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8065 ], [ %.pre13927, %bb.dbb ] ; 2 uses
  %i.iue = load ptr, ptr %i.ito, align 8, !tbaa !74 ; 2 uses
  %.sroa.0437.0.copyload = load i32, ptr %i.iue, align 4, !tbaa !72
  %.not.i8068 = icmp ugt i32 %i.iud, 1
  br i1 %.not.i8068, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069, label %bb.dbc, !prof !234

bb.dbc:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ito, i32 noundef 2)
  %.pre13928 = load ptr, ptr %i.ito, align 8, !tbaa !74
  %.pre13929 = load i32, ptr %i.itp, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067, %bb.dbc
  %i.iuf = phi i32 [ %i.iud, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067 ], [ %.pre13929, %bb.dbc ]
  %i.iug = phi ptr [ %i.iue, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8067 ], [ %.pre13928, %bb.dbc ] ; 2 uses
  %i.iuh = getelementptr inbounds nuw i8, ptr %i.iug, i64 4
  %.sroa.0436.0.copyload = load i32, ptr %i.iuh, align 4, !tbaa !72
  %.not.i8070 = icmp ugt i32 %i.iuf, 2
  br i1 %.not.i8070, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8071, label %bb.dbd, !prof !234

bb.dbd:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069
  call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.ito, i32 noundef 3)
  %.pre13930 = load ptr, ptr %i.ito, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8071

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8071:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069, %bb.dbd
  %i.iui = phi ptr [ %i.iug, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8069 ], [ %.pre13930, %bb.dbd ]
  %i.iuj = getelementptr inbounds nuw i8, ptr %i.iui, i64 8
  %.sroa.0435.0.copyload = load i32, ptr %i.iuj, align 4, !tbaa !72
  %i.iuk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.iul = load ptr, ptr %i.iuk, align 8, !tbaa !78, !nonnull !76, !align !77
  %i.ium = getelementptr inbounds nuw i8, ptr %i.iul, i64 48
  %i.iun = lshr i32 %.sroa.0435.0.copyload, 4
  %i.iuo = zext nneg i32 %i.iun to i64
  %i.iup = load ptr, ptr %i.ium, align 8, !tbaa !81
  %i.iuq = getelementptr inbounds nuw [16 x i8], ptr %i.iup, i64 %i.iuo
  %i.iur = getelementptr inbounds nuw i8, ptr %i.iuq, i64 8
  %i.ius = load i8, ptr %i.iur, align 8, !tbaa !72
  %i.iut = call i64 @_ZN4Luau7CodeGen3X6413IrLoweringX6412bufferAddrOpENS0_4IrOpES3_h(ptr noundef nonnull align 8 dereferenceable(2568) %0, i32 %.sroa.0437.0.copyload, i32 %.sroa.0436.0.copyload, i8 noundef zeroext %i.ius)
  %.sroa.59347.0.insert.insert = and i64 %i.iut, -251658496
  %.sroa.09345.0.insert.insert = or disjoint i64 %.sroa.59347.0.insert.insert, 16777217
  call void @_ZN4Luau7CodeGen3X6418AssemblyBuilderX645movsxENS1_11RegisterX64ENS1_10OperandX64E(ptr noundef nonnull align 8 dereferenceable(268) %i.iub, i8 %i.ity, i64 %.sroa.09345.0.insert.insert)
  br label %_ZN4Luau7CodeGen3X6413IrLoweringX6417jumpOrFallthroughERNS0_7IrBlockERKS3_.exit

bb.dbe:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %291) #15
  %i.iuu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.iuv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.iuw = load i32, ptr %i.iuv, align 8, !tbaa !73 ; 2 uses
  %.not.i8073.not = icmp eq i32 %i.iuw, 0
  br i1 %.not.i8073.not, label %bb.dbf, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074, !prof !233

bb.dbf:                                           ; preds = %bb.dbe
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.iuu, i32 noundef 1)
  %.pre13919 = load i32, ptr %i.iuv, align 8, !tbaa !73
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074:   ; preds = %bb.dbe, %bb.dbf
  %i.iux = phi i32 [ %i.iuw, %bb.dbe ], [ %.pre13919, %bb.dbf ]
  %i.iuy = load ptr, ptr %i.iuu, align 8, !tbaa !74 ; 2 uses
  %i.iuz = load i32, ptr %i.iuy, align 4, !tbaa !72
  store i32 %i.iuz, ptr %291, align 4, !tbaa !72
  %i.iva = getelementptr inbounds nuw i8, ptr %291, i64 4
  %.not.i8075 = icmp ugt i32 %i.iux, 1
  br i1 %.not.i8075, label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8076, label %bb.dbg, !prof !234

bb.dbg:                                           ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074
  tail call void @_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj(ptr noundef nonnull align 8 dereferenceable(40) %i.iuu, i32 noundef 2)
  %.pre13920 = load ptr, ptr %i.iuu, align 8, !tbaa !74
  br label %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8076

_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8076:   ; preds = %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074, %bb.dbg
  %i.ivb = phi ptr [ %i.iuy, %_ZN4Luau7CodeGen5getOpERNS0_6IrInstEj.exit8074 ], [ %.pre13920, %bb.dbg ]
  %i.ivc = getelementptr inbounds nuw i8, ptr %i.ivb, i64 4
  %i.ivd = load i32, ptr %i.ivc, align 4, !tbaa !72
  store i32 %i.ivd, ptr %i.iva, align 4, !tbaa !72
  %i.ive = call i8 @_ZN4Luau7CodeGen3X6413IrRegAllocX6415allocRegOrReuseENS1_7SizeX64EjSt16initializer_listINS0_4IrOpEE(ptr noundef nonnull align 8 dereferenceable(332) %i.a, i8 noundef zeroext 3, i32 noundef %2, ptr nonnull %291, i64 2) ; 2 uses
  %i.ivf = getelementptr inbounds nuw i8, ptr %1, i64 54
  store i8 %i.ive, ptr %i.ivf, align 2, !tbaa !72
  call void @llvm.lifetime.end.p0(ptr nonnull %291) #15
end_hunk_2
